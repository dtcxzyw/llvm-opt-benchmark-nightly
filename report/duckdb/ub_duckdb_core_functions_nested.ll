inline.NumInlined: 12414
inline.NumDeleted: 4971
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIbSt3mapIbmSt4lessIbESaISt4pairIKbmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %.020.i16.i.i = load ptr, ptr %.in.i15.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %.020.i16.i.i, null
  br i1 %.not.i17.i.i, label %._crit_edge.i18.i.i, label %.lr.ph.i12.i.i, !llvm.loop !1155

._crit_edge.i18.i.i:                              ; preds = %.lr.ph.i12.i.i
  br i1 %.not84.i.i, label %.thread11.i, label %._crit_edge.thread.i27.i.i

._crit_edge.thread.i27.i.i:                       ; preds = %._crit_edge.i18.i.i, %bb.m
  %.019.lcssa29.i28.i.i = phi ptr [ %.02024.i13.i.i, %._crit_edge.i18.i.i ], [ %i.z, %bb.m ] ; 3 uses
  %i.bj = icmp eq ptr %.019.lcssa29.i28.i.i, %i.bf
  br i1 %i.bj, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i27.i.i
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28.i.i) #30
  br label %.thread11.i

bb.o:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i8 %i.bc, %.pre.i9.i
  br i1 %i.bl, label %bb.p, label %.thread11.i

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1152 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %.08.lcssa.i.i.i14.i.i
  br i1 %i.bo, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.02022.i30.i.i = load ptr, ptr %i.x, align 8, !tbaa !1152 ; 2 uses
  %.not23.i31.i.i = icmp eq ptr %.02022.i30.i.i, null
  br i1 %.not23.i31.i.i, label %._crit_edge.thread.i47.i.i, label %.lr.ph.i32.i.i

.lr.ph.i32.i.i:                                   ; preds = %bb.q, %.lr.ph.i32.i.i
  %.02024.i33.i.i = phi ptr [ %.020.i36.i.i, %.lr.ph.i32.i.i ], [ %.02022.i30.i.i, %bb.q ] ; 3 uses
  %.in.i35.i.i = getelementptr inbounds nuw i8, ptr %.02024.i33.i.i, i64 24
  %.020.i36.i.i = load ptr, ptr %.in.i35.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i37.i.i = icmp eq ptr %.020.i36.i.i, null
  br i1 %.not.i37.i.i, label %._crit_edge.i38.i.i, label %.lr.ph.i32.i.i, !llvm.loop !1155

._crit_edge.thread.i47.i.i:                       ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1141
  %i.br = icmp eq ptr %i.z, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i47.i.i
  %i.bs = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.z) #30
  br label %._crit_edge.i38.i.i

._crit_edge.i38.i.i:                              ; preds = %.lr.ph.i32.i.i, %bb.r
  %.019.lcssa28.i39.i.i = phi ptr [ %i.z, %bb.r ], [ %.02024.i33.i.i, %.lr.ph.i32.i.i ]
  %.sroa.05.0.i40.i.i = phi ptr [ %i.bs, %bb.r ], [ %.02024.i33.i.i, %.lr.ph.i32.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i40.i.i, i64 32
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !563, !range !565, !noundef !130
  %.not83.not.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not83.not.i.i, label %.thread.i, label %.thread11.i

bb.s:                                             ; preds = %bb.p, %bb.l
  %.sroa.070.2.i.i = phi ptr [ %i.bf, %bb.l ], [ null, %bb.p ] ; 2 uses
  %.sroa.12.2.i.i = phi ptr [ %i.bf, %bb.l ], [ %i.bn, %bb.p ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.12.2.i.i, null
  br i1 %.not.i.i.i, label %.thread11.i, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %._crit_edge.i38.i.i, %._crit_edge.thread.i27.i.i, %bb.j, %._crit_edge.thread.i.i.i, %bb.g
  %.sroa.12.2.i8.i = phi ptr [ %.sroa.12.2.i.i, %bb.s ], [ %.019.lcssa28.i.i.i, %bb.j ], [ %i.ao, %bb.g ], [ %.019.lcssa28.i39.i.i, %._crit_edge.i38.i.i ], [ %.019.lcssa29.i28.i.i, %._crit_edge.thread.i27.i.i ], [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ] ; 4 uses
  %.sroa.070.2.i7.i = phi ptr [ %.sroa.070.2.i.i, %bb.s ], [ null, %bb.j ], [ null, %bb.g ], [ null, %._crit_edge.i38.i.i ], [ null, %._crit_edge.thread.i27.i.i ], [ null, %._crit_edge.thread.i.i.i ]
  %.not.i.i.i4.i.i = icmp ne ptr %.sroa.070.2.i7.i, null
  %i.bv = icmp eq ptr %.sroa.12.2.i8.i, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.bv
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i, i64 32
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !563, !range !565, !noundef !130
  %i.by = icmp samesign ult i8 %.pre.i9.i, %i.bx
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.t, %.thread.i, %._crit_edge.thread.i47.i.i
  %.sroa.12.2.i822.i = phi ptr [ %.sroa.12.2.i8.i, %bb.t ], [ %.sroa.12.2.i8.i, %.thread.i ], [ %i.z, %._crit_edge.thread.i47.i.i ]
  %i.bz = phi i1 [ %i.by, %bb.t ], [ true, %.thread.i ], [ true, %._crit_edge.thread.i47.i.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bz, ptr noundef nonnull %i.ah, ptr noundef nonnull %.sroa.12.2.i822.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1147
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !1147
  br label %_ZNSt3mapIbmSt4lessIbESaISt4pairIKbmEEEixERS3_.exit.i

.thread11.i:                                      ; preds = %bb.s, %._crit_edge.i38.i.i, %bb.o, %bb.n, %._crit_edge.i18.i.i, %bb.j
  %.sroa.070.2.i17.i = phi ptr [ %.sroa.070.2.i.i, %bb.s ], [ %.sroa.05.0.i.i.i, %bb.j ], [ %i.bk, %bb.n ], [ %.08.lcssa.i.i.i14.i.i, %bb.o ], [ %.sroa.05.0.i40.i.i, %._crit_edge.i38.i.i ], [ %.02024.i13.i.i, %._crit_edge.i18.i.i ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIbmSt4lessIbESaISt4pairIKbmEEEixERS3_.exit.i

_ZNSt3mapIbmSt4lessIbESaISt4pairIKbmEEEixERS3_.exit.i: ; preds = %.thread11.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %.sroa.070.2.i17.i, %.thread11.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !47
  %i.cf = add i64 %i.ce, %i.v
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !47
  %i.cg = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.cg, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIbmSt4lessIbESaISt4pairIKbmEEEEEE7CombineINS_17HistogramAggStateIbSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIbmSt4lessIbESaISt4pairIKbmEEEEEE7CombineINS_17HistogramAggStateIbSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIbmSt4lessIbESaISt4pairIKbmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.ch = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ch, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIbSt3mapIbmSt4lessIbESaISt4pairIKbmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1156

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIbSt3mapIbmSt4lessIbESaISt4pairIKbmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIbmSt4lessIbESaISt4pairIKbmEEEEEE7CombineINS_17HistogramAggStateIbSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEbNS0_14DefaultMapTypeISt3mapIbmSt4lessIbESaISt4pairIKbmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIbSt3mapIbmSt4lessIbESaISt4pairIKbmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1139
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1136 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1139
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1136 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1157

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1139
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1136 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1139
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1136 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1139
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1136 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1139
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1136 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1157

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1139
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1136 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !1154, !range !565, !noundef !130
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %.168100
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !563
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1149
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 1, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIhSt3mapIhmSt4lessIhESaISt4pairIKhmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIhmSt4lessIhESaISt4pairIKhmEEEEEE7CombineINS_17HistogramAggStateIhSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1169
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1163 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i8, ptr %i.t, align 8, !tbaa !14 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = icmp ult i8 %i.ab, %.pre.i9.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1171

_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp ult i8 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i8 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1169
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIhSt4pairIKhmESt10_Select1stIS2_ESt4lessIhESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIhSt4pairIKhmESt10_Select1stIS2_ESt4lessIhESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i8, ptr %i.ai, align 8, !tbaa !14
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.ar = icmp ult i8 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEEixERS3_.exit.i

_ZNSt8_Rb_treeIhSt4pairIKhmESt10_Select1stIS2_ESt4lessIhESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEEixERS3_.exit.i

_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIhmSt4lessIhESaISt4pairIKhmEEEEEE7CombineINS_17HistogramAggStateIhSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIhmSt4lessIhESaISt4pairIKhmEEEEEE7CombineINS_17HistogramAggStateIhSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIhmSt4lessIhESaISt4pairIKhmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIhSt3mapIhmSt4lessIhESaISt4pairIKhmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1173

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIhSt3mapIhmSt4lessIhESaISt4pairIKhmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIhmSt4lessIhESaISt4pairIKhmEEEEEE7CombineINS_17HistogramAggStateIhSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEhNS0_14DefaultMapTypeISt3mapIhmSt4lessIhESaISt4pairIKhmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIhSt3mapIhmSt4lessIhESaISt4pairIKhmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter135 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter139 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter140 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter140.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1166
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1163 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1166
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1163 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2         ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139
  br i1 %niter140.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1174

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod138)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1166
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1163 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit132.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit132.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit132.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit132.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod134)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1166
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1163 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit132.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit132.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1166
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1163 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1166
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1163 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit132.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1174

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.dv, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1166
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1163 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

._crit_edge103.loopexit:                          ; preds = %bb.al
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.cz = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dt, %._crit_edge103.loopexit ] ; 2 uses
  %i.da = sub i64 %.168.lcssa, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !162
  br label %bb.am

.lr.ph102:                                        ; preds = %bb.ae, %bb.al
  %.168100 = phi i64 [ %i.dt, %bb.al ], [ %.067105, %bb.ae ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.du, %bb.al ], [ %i.cx, %bb.ae ] ; 3 uses
  %i.dc = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.dd = add i8 %i.dc, -1
  %i.de = icmp ult i8 %i.dd, 2
  br i1 %i.de, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.lr.ph102
  %i.df = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 2, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dg = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dg, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ak unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dj = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.dj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.df) #25
  br label %.body

bb.ak:                                            ; preds = %bb.ah
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateItSt3mapItmSt4lessItESaISt4pairIKtmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapItmSt4lessItESaISt4pairIKtmEEEEEE7CombineINS_17HistogramAggStateItSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1185
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1179 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i16, ptr %i.t, align 8, !tbaa !657 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !657
  %i.ac = icmp ult i16 %i.ab, %.pre.i9.i          ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1187

_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !657
  %i.ag = icmp ult i16 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i16 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1188
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1185
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeItSt4pairIKtmESt10_Select1stIS2_ESt4lessItESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeItSt4pairIKtmESt10_Select1stIS2_ESt4lessItESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i16, ptr %i.ai, align 8, !tbaa !657
  %i.aq = load i16, ptr %i.ao, align 2, !tbaa !657
  %i.ar = icmp ult i16 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEEixERS3_.exit.i

_ZNSt8_Rb_treeItSt4pairIKtmESt10_Select1stIS2_ESt4lessItESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEEixERS3_.exit.i

_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapItmSt4lessItESaISt4pairIKtmEEEEEE7CombineINS_17HistogramAggStateItSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapItmSt4lessItESaISt4pairIKtmEEEEEE7CombineINS_17HistogramAggStateItSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapItmSt4lessItESaISt4pairIKtmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateItSt3mapItmSt4lessItESaISt4pairIKtmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1189

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateItSt3mapItmSt4lessItESaISt4pairIKtmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapItmSt4lessItESaISt4pairIKtmEEEEEE7CombineINS_17HistogramAggStateItSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEtNS0_14DefaultMapTypeISt3mapItmSt4lessItESaISt4pairIKtmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateItSt3mapItmSt4lessItESaISt4pairIKtmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1182
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1179 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1182
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1179 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1190

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1182
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1179 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1182
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1179 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1182
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1179 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1182
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1179 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1190

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1182
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1179 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 4
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !1188
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %.168100
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !657
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1185
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 4, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_2
begin_hunk_3_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIjSt3mapIjmSt4lessIjESaISt4pairIKjmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIjmSt4lessIjESaISt4pairIKjmEEEEEE7CombineINS_17HistogramAggStateIjSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1201
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1195 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i32, ptr %i.t, align 8, !tbaa !3 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = icmp ult i32 %i.ab, %.pre.i9.i          ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1203

_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = icmp ult i32 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i32 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1204
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1201
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjmESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIjSt4pairIKjmESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !3
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.ar = icmp ult i32 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_.exit.i

_ZNSt8_Rb_treeIjSt4pairIKjmESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_.exit.i

_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIjmSt4lessIjESaISt4pairIKjmEEEEEE7CombineINS_17HistogramAggStateIjSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIjmSt4lessIjESaISt4pairIKjmEEEEEE7CombineINS_17HistogramAggStateIjSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIjmSt4lessIjESaISt4pairIKjmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIjSt3mapIjmSt4lessIjESaISt4pairIKjmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1205

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIjSt3mapIjmSt4lessIjESaISt4pairIKjmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIjmSt4lessIjESaISt4pairIKjmEEEEEE7CombineINS_17HistogramAggStateIjSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEjNS0_14DefaultMapTypeISt3mapIjmSt4lessIjESaISt4pairIKjmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIjSt3mapIjmSt4lessIjESaISt4pairIKjmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1198
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1195 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1198
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1195 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1206

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1198
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1195 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1198
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1195 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1198
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1195 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1198
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1195 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1206

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1198
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1195 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 6
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !1204
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.168100
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1201
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 6, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_3
begin_hunk_4_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateImSt3mapImmSt4lessImESaISt4pairIKmmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapImmSt4lessImESaISt4pairIKmmEEEEEE7CombineINS_17HistogramAggStateImSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1217
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1211 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i64, ptr %i.t, align 8, !tbaa !47 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.ac = icmp ult i64 %i.ab, %.pre.i9.i          ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1219

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ag = icmp ult i64 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i64 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1220
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1217
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit.i

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit.i

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapImmSt4lessImESaISt4pairIKmmEEEEEE7CombineINS_17HistogramAggStateImSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapImmSt4lessImESaISt4pairIKmmEEEEEE7CombineINS_17HistogramAggStateImSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateImSt3mapImmSt4lessImESaISt4pairIKmmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1221

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateImSt3mapImmSt4lessImESaISt4pairIKmmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapImmSt4lessImESaISt4pairIKmmEEEEEE7CombineINS_17HistogramAggStateImSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEmNS0_14DefaultMapTypeISt3mapImmSt4lessImESaISt4pairIKmmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateImSt3mapImmSt4lessImESaISt4pairIKmmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1214
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1211 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1214
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1211 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1222

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1214
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1211 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1214
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1211 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1214
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1211 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1214
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1211 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1222

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1214
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1211 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 8
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !1220
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.168100
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1217
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_4
begin_hunk_5_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIaSt3mapIamSt4lessIaESaISt4pairIKamEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIamSt4lessIaESaISt4pairIKamEEEEEE7CombineINS_17HistogramAggStateIaSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1233
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1227 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i8, ptr %i.t, align 8, !tbaa !14 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = icmp slt i8 %i.ab, %.pre.i9.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1235

_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp slt i8 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i8 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1236
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1233
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIaSt4pairIKamESt10_Select1stIS2_ESt4lessIaESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIaSt4pairIKamESt10_Select1stIS2_ESt4lessIaESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i8, ptr %i.ai, align 8, !tbaa !14
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.ar = icmp slt i8 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEEixERS3_.exit.i

_ZNSt8_Rb_treeIaSt4pairIKamESt10_Select1stIS2_ESt4lessIaESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEEixERS3_.exit.i

_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIamSt4lessIaESaISt4pairIKamEEEEEE7CombineINS_17HistogramAggStateIaSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIamSt4lessIaESaISt4pairIKamEEEEEE7CombineINS_17HistogramAggStateIaSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIamSt4lessIaESaISt4pairIKamEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIaSt3mapIamSt4lessIaESaISt4pairIKamEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1237

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIaSt3mapIamSt4lessIaESaISt4pairIKamEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIamSt4lessIaESaISt4pairIKamEEEEEE7CombineINS_17HistogramAggStateIaSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEaNS0_14DefaultMapTypeISt3mapIamSt4lessIaESaISt4pairIKamEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIaSt3mapIamSt4lessIaESaISt4pairIKamEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter135 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter139 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter140 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter140.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1230
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1227 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1230
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1227 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2         ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139
  br i1 %niter140.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1238

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod138)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1230
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1227 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit132.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit132.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit132.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit132.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod134)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1230
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1227 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit132.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit132.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1230
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1227 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1230
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1227 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit132.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1238

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.dv, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1230
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1227 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

._crit_edge103.loopexit:                          ; preds = %bb.al
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.cz = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dt, %._crit_edge103.loopexit ] ; 2 uses
  %i.da = sub i64 %.168.lcssa, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !162
  br label %bb.am

.lr.ph102:                                        ; preds = %bb.ae, %bb.al
  %.168100 = phi i64 [ %i.dt, %bb.al ], [ %.067105, %bb.ae ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.du, %bb.al ], [ %i.cx, %bb.ae ] ; 3 uses
  %i.dc = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.dd = and i8 %i.dc, -3
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.lr.ph102
  %i.df = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 3, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dg = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dg, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ak unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dj = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.dj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.df) #25
  br label %.body

bb.ak:                                            ; preds = %bb.ah
end_hunk_5
begin_hunk_6_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIsSt3mapIsmSt4lessIsESaISt4pairIKsmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIsmSt4lessIsESaISt4pairIKsmEEEEEE7CombineINS_17HistogramAggStateIsSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1249
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1243 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i16, ptr %i.t, align 8, !tbaa !657 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !657
  %i.ac = icmp slt i16 %i.ab, %.pre.i9.i          ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1251

_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !657
  %i.ag = icmp slt i16 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i16 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1252
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1249
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIsSt4pairIKsmESt10_Select1stIS2_ESt4lessIsESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 2 dereferenceable(2) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIsSt4pairIKsmESt10_Select1stIS2_ESt4lessIsESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i16, ptr %i.ai, align 8, !tbaa !657
  %i.aq = load i16, ptr %i.ao, align 2, !tbaa !657
  %i.ar = icmp slt i16 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEEixERS3_.exit.i

_ZNSt8_Rb_treeIsSt4pairIKsmESt10_Select1stIS2_ESt4lessIsESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEEixERS3_.exit.i

_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIsmSt4lessIsESaISt4pairIKsmEEEEEE7CombineINS_17HistogramAggStateIsSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIsmSt4lessIsESaISt4pairIKsmEEEEEE7CombineINS_17HistogramAggStateIsSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIsmSt4lessIsESaISt4pairIKsmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIsSt3mapIsmSt4lessIsESaISt4pairIKsmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1253

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIsSt3mapIsmSt4lessIsESaISt4pairIKsmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIsmSt4lessIsESaISt4pairIKsmEEEEEE7CombineINS_17HistogramAggStateIsSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEsNS0_14DefaultMapTypeISt3mapIsmSt4lessIsESaISt4pairIKsmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIsSt3mapIsmSt4lessIsESaISt4pairIKsmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1246
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1243 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1246
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1243 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1254

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1246
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1243 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1246
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1243 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1246
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1243 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1246
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1243 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1254

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1246
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1243 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 5
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load i16, ptr %i.df, align 8, !tbaa !1252
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %.168100
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !657
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1249
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 5, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_6
begin_hunk_7_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIiSt3mapIimSt4lessIiESaISt4pairIKimEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIimSt4lessIiESaISt4pairIKimEEEEEE7CombineINS_17HistogramAggStateIiSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1265
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1259 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i32, ptr %i.t, align 8, !tbaa !3 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = icmp slt i32 %i.ab, %.pre.i9.i          ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1267

_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = icmp slt i32 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i32 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1268
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1265
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i32, ptr %i.ai, align 8, !tbaa !3
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_.exit.i

_ZNSt8_Rb_treeIiSt4pairIKimESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_.exit.i

_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIimSt4lessIiESaISt4pairIKimEEEEEE7CombineINS_17HistogramAggStateIiSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIimSt4lessIiESaISt4pairIKimEEEEEE7CombineINS_17HistogramAggStateIiSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIiSt3mapIimSt4lessIiESaISt4pairIKimEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1269

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIiSt3mapIimSt4lessIiESaISt4pairIKimEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIimSt4lessIiESaISt4pairIKimEEEEEE7CombineINS_17HistogramAggStateIiSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEiNS0_14DefaultMapTypeISt3mapIimSt4lessIiESaISt4pairIKimEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIiSt3mapIimSt4lessIiESaISt4pairIKimEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1262
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1259 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1262
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1259 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1270

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1262
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1259 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1262
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1259 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1262
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1259 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1262
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1259 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1270

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1262
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1259 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 7
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !1268
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.168100
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1265
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 7, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_7
begin_hunk_8_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIlSt3mapIlmSt4lessIlESaISt4pairIKlmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIlmSt4lessIlESaISt4pairIKlmEEEEEE7CombineINS_17HistogramAggStateIlSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1281
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1275 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load i64, ptr %i.t, align 8, !tbaa !47 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !47
  %i.ac = icmp slt i64 %i.ab, %.pre.i9.i          ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1283

_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ag = icmp slt i64 %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store i64 %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1284
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1281
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKlmESt10_Select1stIS2_ESt4lessIlESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIlSt4pairIKlmESt10_Select1stIS2_ESt4lessIlESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEEixERS3_.exit.i

_ZNSt8_Rb_treeIlSt4pairIKlmESt10_Select1stIS2_ESt4lessIlESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEEixERS3_.exit.i

_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIlmSt4lessIlESaISt4pairIKlmEEEEEE7CombineINS_17HistogramAggStateIlSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIlmSt4lessIlESaISt4pairIKlmEEEEEE7CombineINS_17HistogramAggStateIlSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIlmSt4lessIlESaISt4pairIKlmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIlSt3mapIlmSt4lessIlESaISt4pairIKlmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1285

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIlSt3mapIlmSt4lessIlESaISt4pairIKlmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIlmSt4lessIlESaISt4pairIKlmEEEEEE7CombineINS_17HistogramAggStateIlSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorElNS0_14DefaultMapTypeISt3mapIlmSt4lessIlESaISt4pairIKlmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIlSt3mapIlmSt4lessIlESaISt4pairIKlmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1278
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1275 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1278
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1275 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1286

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1278
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1275 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1278
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1275 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1278
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1275 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1278
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1275 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1286

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1278
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1275 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 9
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !1284
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.168100
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1281
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 9, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_8
begin_hunk_9_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIfSt3mapIfmSt4lessIfESaISt4pairIKfmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEE7CombineINS_17HistogramAggStateIfSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1297
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1291 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load float, ptr %i.t, align 8, !tbaa !928 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !928
  %i.ac = fcmp olt float %i.ab, %.pre.i9.i        ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1299

_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load float, ptr %i.ae, align 4, !tbaa !928
  %i.ag = fcmp olt float %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store float %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1300
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1297
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load float, ptr %i.ai, align 8, !tbaa !928
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !928
  %i.ar = fcmp olt float %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_.exit.i

_ZNSt8_Rb_treeIfSt4pairIKfmESt10_Select1stIS2_ESt4lessIfESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_.exit.i

_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEE7CombineINS_17HistogramAggStateIfSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEE7CombineINS_17HistogramAggStateIfSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIfmSt4lessIfESaISt4pairIKfmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIfSt3mapIfmSt4lessIfESaISt4pairIKfmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1301

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIfSt3mapIfmSt4lessIfESaISt4pairIKfmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEE7CombineINS_17HistogramAggStateIfSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEfNS0_14DefaultMapTypeISt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIfSt3mapIfmSt4lessIfESaISt4pairIKfmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1294
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1291 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1294
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1291 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1302

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1294
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1291 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1294
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1291 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1294
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1291 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1294
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1291 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1302

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1294
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1291 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 11
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load float, ptr %i.df, align 8, !tbaa !1300
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.168100
  store float %i.dg, ptr %i.dh, align 4, !tbaa !928
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1297
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 11, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_9
begin_hunk_10_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm:bb.a
  %i.p = phi ptr [ %.pre.i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1141 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.not45.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not45.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEE7CombineINS_17HistogramAggStateIdSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_.exit.i
  %.sroa.01.06.i.i = phi ptr [ %i.ba, %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_.exit.i ], [ %i.r, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1313
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1307 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1151 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.y, null
  %.pre.i9.i = load double, ptr %i.t, align 8, !tbaa !972 ; 3 uses
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !972
  %i.ac = fcmp olt double %i.ab, %.pre.i9.i       ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !1152 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1315

_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i.i, %i.z
  br i1 %i.ad, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.af = load double, ptr %i.ae, align 8, !tbaa !972
  %i.ag = fcmp olt double %.pre.i9.i, %i.af
  br i1 %i.ag, label %.critedge.i.i, label %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit.i.i, %.lr.ph.i.i
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %.19.i.i.i.i.i, %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEE11lower_boundERS3_.exit.i.i ], [ %i.z, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  store double %.pre.i9.i, ptr %i.ai, align 8, !tbaa !1316
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i64 0, ptr %i.aj, align 8, !tbaa !1313
  %i.ak = invoke { ptr, ptr } @_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.f unwind label %_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i ; 2 uses

bb.f:                                             ; preds = %.critedge.i.i
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i4.i.i = icmp ne ptr %i.al, null
  %i.an = icmp eq ptr %i.am, %i.z
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i4.i.i, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load double, ptr %i.ai, align 8, !tbaa !972
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !972
  %i.ar = fcmp olt double %i.ap, %i.aq
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.as = phi i1 [ %i.ar, %bb.h ], [ true, %bb.g ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.as, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #25
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1147
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !1147
  br label %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_.exit.i

_ZNSt8_Rb_treeIdSt4pairIKdmESt10_Select1stIS2_ESt4lessIdESaIS2_EE10_Auto_nodeD2Ev.exit.i.i.i: ; preds = %.critedge.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  resume { ptr, i32 } %i.aw

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #29
  br label %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_.exit.i

_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_.exit.i: ; preds = %bb.i, %.thread.i.i.i, %bb.e
  %.sroa.09.0.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.e ], [ %i.ah, %.thread.i.i.i ], [ %i.al, %bb.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 40 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !47
  %i.az = add i64 %i.ay, %i.v
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ba, %i.s
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEE7CombineINS_17HistogramAggStateIdSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEE7CombineINS_17HistogramAggStateIdSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt3mapIdmSt4lessIdESaISt4pairIKdmEEEixERS3_.exit.i, %bb.d, %.lr.ph.i
  %i.bb = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1317

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSC_14DefaultMapTypeISA_EEEEEEvRNS_6VectorESI_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEE7CombineINS_17HistogramAggStateIdSA_EESC_EEvRKT_RSG_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEdNS0_14DefaultMapTypeISt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESE_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIdSt3mapIdmSt4lessIdESaISt4pairIKdmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1310
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1307 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1147
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1310
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1307 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1147
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1318

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1310
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1307 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1147
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1310
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1307 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1147
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1310
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1307 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1147
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1310
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1307 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1147
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1318

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph107, %bb.am
  %.066106 = phi i64 [ 0, %.lr.ph107 ], [ %i.du, %bb.am ] ; 4 uses
  %.067105 = phi i64 [ %i.f, %.lr.ph107 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066106, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066106
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066106, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1310
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1307 ; 3 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067105, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1141 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %.not9298 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ae
  %i.cz = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.da = icmp eq i8 %i.cz, 12
  br i1 %i.da, label %.lr.ph102.split, label %bb.ag

.lr.ph102.split:                                  ; preds = %.lr.ph102
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge103.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.dc = phi i64 [ %.067105, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.168.lcssa = phi i64 [ %.067105, %bb.ae ], [ %i.dl, %._crit_edge103.loopexit ] ; 2 uses
  %i.dd = sub i64 %.168.lcssa, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph102.split, %bb.af
  %.168100 = phi i64 [ %.067105, %.lr.ph102.split ], [ %i.dl, %bb.af ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.cx, %.lr.ph102.split ], [ %i.dm, %bb.af ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %i.dg = load double, ptr %i.df, align 8, !tbaa !1316
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.168100
  store double %i.dg, ptr %i.dh, align 8, !tbaa !972
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1313
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !47
  %i.dl = add i64 %.168100, 1                     ; 2 uses
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.dm, %i.cy
  br i1 %.not92, label %._crit_edge103.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph102
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 12, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.do, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dr = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_10
begin_hunk_11_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm:bb.a

bb.ab:                                            ; preds = %._crit_edge.thread.i.i
  %i.ft = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.025.lcssa42.i.i) #30 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  %.0.copyload.i11.i.i.i.i6.i.pre.i = load i32, ptr %.phi.trans.insert.i, align 1
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i, %bb.ab
  %.0.copyload.i11.i.i.i.i6.i.i = phi i32 [ %.0.copyload.i11.i.i.i.i6.i.pre.i, %bb.ab ], [ %.0.copyload.i.i.i.i.i.i21.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.025.lcssa41.i.i = phi ptr [ %.025.lcssa42.i.i, %bb.ab ], [ %.02637.i.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i ] ; 2 uses
  %.sroa.011.0.i.i = phi ptr [ %i.ft, %bb.ab ], [ %.02637.i.i, %_ZNKSt4lessIN6duckdb8string_tEEclERKS1_S4_.exit.thread.i.thread.i ] ; 4 uses
  %.not.i.i.i.i7.i.i = icmp eq i32 %.0.copyload.i11.i.i.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i6.i.i
  br i1 %.not.i.i.i.i7.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.thread.i
  %i.fu = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i.i.i)
  %i.fv = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i6.i.i)
  %i.fw = icmp ugt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.ae, label %bb.aj

bb.ad:                                            ; preds = %._crit_edge.i.thread.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 36
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !14 ; 3 uses
  %i.ga = icmp ult i32 %i.fz, %i.el
  %.sroa.speculated.i.i.i.i9.i.i = tail call i32 @llvm.umin.i32(i32 %i.fz, i32 %i.el)
  %i.gb = select i1 %i.ep, ptr %.sroa.4.0..sroa_idx.i, ptr %i.et
  %i.gc = icmp ult i32 %i.fz, 13
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = select i1 %i.gc, ptr %i.fx, ptr %i.ge
  %i.gg = zext i32 %.sroa.speculated.i.i.i.i9.i.i to i64
  %i.gh = tail call i32 @memcmp(ptr noundef %i.gb, ptr noundef %i.gf, i64 noundef %i.gg) #30 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  %i.gj = icmp eq i32 %i.gh, 0
  %i.gk = and i1 %i.ga, %i.gj
  %or.cond34.i.i = or i1 %i.gi, %i.gk
  br i1 %or.cond34.i.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.025.lcssa41.i.i, %bb.ad ], [ %.025.lcssa41.i.i, %bb.ac ], [ %.025.lcssa42.i.i, %._crit_edge.thread.i.i ] ; 5 uses
  %i.gl = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ai
  br i1 %i.gl, label %.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !14 ; 3 uses
  %i.go = icmp ugt i32 %i.gn, %i.el
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.gp, align 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.0.copyload.i.i.i.i.i.i.i.i.i, %.0.copyload.i11.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i.i.i)
  %i.gr = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i11.i.i.i.i.i.i.i.i)
  %i.gs = icmp ugt i32 %i.gq, %i.gr
  br label %.thread.i.i

bb.ah:                                            ; preds = %bb.af
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.el, i32 %i.gn)
  %i.gt = icmp ult i32 %i.gn, 13
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = select i1 %i.gt, ptr %i.gp, ptr %i.gv
  %i.gx = select i1 %i.ep, ptr %.sroa.4.0..sroa_idx.i, ptr %i.et
  %i.gy = zext i32 %.sroa.speculated.i.i.i.i.i.i.i.i to i64
  %i.gz = tail call i32 @memcmp(ptr noundef %i.gw, ptr noundef %i.gx, i64 noundef %i.gy) #30 ; 2 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hb = icmp eq i32 %i.gz, 0
  %i.hc = select i1 %i.hb, i1 %i.go, i1 false
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %i.hd = phi i1 [ %i.hc, %bb.ai ], [ true, %bb.ae ], [ %i.gs, %bb.ag ], [ true, %bb.ah ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hd, ptr noundef nonnull %i.eu, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #25
  %i.he = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !1147
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !1147
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  tail call void @_ZdlPv(ptr noundef nonnull %i.eu) #29
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i: ; preds = %bb.aj, %.thread.i.i, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, %bb.q, %bb.p
  %.sroa.09.0.i.pn.i = phi ptr [ %.sroa.011.0.i42.i, %bb.q ], [ %i.eg, %_ZNSt8_Rb_treeIN6duckdb8string_tESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i ], [ %.sroa.011.0.i.i, %bb.aj ], [ %.sroa.011.0.i42.i, %bb.p ], [ %i.eu, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i: ; preds = %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i, %bb.l, %bb.k
  %.pn9.i.i = phi ptr [ %.sroa.09.0.i.pn.i, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i ], [ %.19.i.i.i, %bb.l ], [ %.19.i.i.i, %bb.k ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn9.i.i, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.hh = load i64, ptr %.0.i.i, align 8, !tbaa !47
  %i.hi = add i64 %i.hh, %i.ae
  store i64 %i.hi, ptr %.0.i.i, align 8, !tbaa !47
  %i.hj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.01.06.i.i) #30 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.hj, %i.ab
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i, %bb.e, %bb.b
  %i.hk = add nuw i64 %.097.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hk, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm.exit, label %bb.b, !llvm.loop !1345

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS5_ESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_22HistogramStringFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESH_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.d = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr %5, align 8, !tbaa !122
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter135 = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter139 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06398.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06597.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.v, %bb.g ] ; 3 uses
  %niter140 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter140.next.1, %bb.g ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06597.us
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1326
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1323 ; 2 uses
  %.not84.us = icmp eq ptr %i.k, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1147
  %i.n = add i64 %i.m, %.06398.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.n, %bb.e ], [ %.06398.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06597.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1326
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1323 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.r, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1147
  %i.u = add i64 %i.t, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.u, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.v = add nuw i64 %.06597.us, 2                ; 2 uses
  %niter140.next.1 = add i64 %niter140, 2         ; 2 uses
  %niter140.ncmp.1 = icmp eq i64 %niter140.next.1, %unroll_iter139
  br i1 %niter140.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1346

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06398.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06597.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod138)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06597.us.epil.init
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1326
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1323 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.y, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1147
  %i.ab = add i64 %i.aa, %.06398.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit132.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit132.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06398.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit132.unr-lcssa ] ; 2 uses
  %.06597.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bj, %._crit_edge.loopexit132.unr-lcssa ]
  %lcmp.mod134 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod134)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06597.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1326
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1323 ; 2 uses
  %.not84.epil = icmp eq ptr %i.ah, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1147
  %i.ak = add i64 %i.aj, %.06398.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit132.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06398.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %bb.h ], [ %.164.1, %._crit_edge.loopexit132.unr-lcssa ], [ %i.ak, %bb.i ], [ %.06398.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.al = add i64 %.063.lcssa, %i.d
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.al)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.k:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.l:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.m:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06398 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06597 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bj, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06597
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1326
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1323 ; 2 uses
  %.not84 = icmp eq ptr %i.av, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1147
  %i.ay = add i64 %i.ax, %.06398
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ay, %bb.n ], [ %.06398, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06597
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1326
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1323 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bf, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1147
  %i.bi = add i64 %i.bh, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bi, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bj = add nuw i64 %.06597, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit132.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1346

bb.q:                                             ; preds = %._crit_edge
  %i.bk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.bl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bl)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.ah, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.066.lcssa = phi i64 [ %i.d, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.268, %bb.ah ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.ai unwind label %bb.aw

bb.u:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.v:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.w:                                             ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.x:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.y:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.z:                                             ; preds = %.lr.ph108, %bb.ah
  %.066107 = phi i64 [ %i.d, %.lr.ph108 ], [ %.268, %bb.ah ] ; 5 uses
  %.069106 = phi i64 [ 0, %.lr.ph108 ], [ %i.dl, %bb.ah ] ; 4 uses
  %i.bx = add i64 %.069106, %4                    ; 3 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !122
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.bz, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.069106
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cd = phi i64 [ %i.cc, %bb.aa ], [ %.069106, %bb.z ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1326
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1323 ; 3 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ch, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i64, ptr %i.br, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ci)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cj = phi ptr [ %.pre.i, %.noexc ], [ %i.ch, %bb.ab ]
  %i.ck = lshr i64 %i.bx, 6
  %i.cl = and i64 %i.bx, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !47
  %i.cq = and i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !47
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bx ; 3 uses
  store i64 %.066107, ptr %i.cs, align 8, !tbaa !158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1141 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %.not9399 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not9399, label %._crit_edge104, label %.lr.ph103

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cs, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.cw = phi i64 [ %.066107, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.167.lcssa = phi i64 [ %.066107, %bb.ae ], [ %i.di, %._crit_edge104.loopexit ] ; 2 uses
  %i.cx = sub i64 %.167.lcssa, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !162
  br label %bb.ah

.lr.ph103:                                        ; preds = %bb.ae, %bb.af
  %.167101 = phi i64 [ %i.di, %bb.af ], [ %.066107, %bb.ae ] ; 3 uses
  %.sroa.090.0100 = phi ptr [ %i.dj, %bb.af ], [ %i.cu, %bb.ae ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.090.0100, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.cz, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.090.0100, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  %i.da = invoke { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %.noexc88 unwind label %bb.ag  ; 2 uses

.noexc88:                                         ; preds = %.lr.ph103
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bk)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc88
  %i.db = extractvalue { i64, ptr } %i.da, 1
  %i.dc = extractvalue { i64, ptr } %i.da, 0
  %i.dd = load ptr, ptr %i.bq, align 8, !tbaa !135
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %.167101 ; 2 uses
  store i64 %i.dc, ptr %i.de, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.db, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.090.0100, i64 48
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !1339
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.167101
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !47
  %i.di = add i64 %.167101, 1                     ; 2 uses
  %i.dj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.090.0100) #30 ; 2 uses
  %.not93 = icmp eq ptr %i.dj, %i.cv
  br i1 %.not93, label %._crit_edge104.loopexit, label %.lr.ph103

bb.ag:                                            ; preds = %.noexc88, %.lr.ph103
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %._crit_edge104
  %.268 = phi i64 [ %.167.lcssa, %._crit_edge104 ], [ %.066107, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.dl = add nuw i64 %.069106, 1                 ; 2 uses
  %exitcond115.not = icmp eq i64 %i.dl, %3
  br i1 %exitcond115.not, label %._crit_edge109, label %bb.z, !llvm.loop !1347

bb.ai:                                            ; preds = %._crit_edge109
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.do, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !40
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !35
end_hunk_11
begin_hunk_12_@_ZN6duckdb12_GLOBAL__N_123HistogramUpdateFunctionINS_23HistogramGenericFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRSG_m:bb.a
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.am, %bb.al
  %i.ci = phi i64 [ %i.ch, %bb.am ], [ %.02957, %bb.al ] ; 3 uses
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !160 ; 2 uses
  %.not.i50 = icmp eq ptr %i.cj, null
  br i1 %.not.i50, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ck = lshr i64 %i.ci, 6
  %i.cl = and i64 %i.ci, 63
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !47
  %i.co = shl nuw i64 1, %i.cl
  %i.cp = and i64 %i.cn, %i.co
  %.not56 = icmp eq i64 %i.cp, 0
  br i1 %.not56, label %bb.as, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cq = load ptr, ptr %6, align 8, !tbaa !122
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !123 ; 2 uses
  %.not.i51 = icmp eq ptr %i.cr, null
  br i1 %.not.i51, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit52, label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.02957
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit52

_ZNK6duckdb15SelectionVector9get_indexEm.exit52:  ; preds = %bb.an, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cv = phi i64 [ %i.cu, %bb.an ], [ %.02957, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1326 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1323 ; 2 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit52
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !126, !nonnull !130, !align !131
  %i.da = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.ap unwind label %bb.aq     ; 9 uses

bb.ap:                                            ; preds = %bb.ao
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store ptr %i.db, ptr %i.da, align 8, !tbaa !1328
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  store i32 0, ptr %i.dc, align 8, !tbaa !1329
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr null, ptr %i.dd, align 8, !tbaa !1151
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !1141
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !1146
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store i64 0, ptr %i.dg, align 8, !tbaa !1147
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  store i32 1, ptr %i.dh, align 8, !tbaa !1330
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !1323
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit52
  %i.dj = phi ptr [ %i.da, %bb.ap ], [ %i.cy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit52 ]
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.dk, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEE11GetOrCreateES2_(ptr noundef nonnull align 8 dereferenceable(60) %i.dj, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEEixERS6_.exit unwind label %bb.at ; 2 uses

_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEEixERS6_.exit: ; preds = %bb.ar
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !47
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !47
  br label %bb.as

bb.as:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZN6duckdb15OwningStringMapImSt3mapINS_8string_tEmSt4lessIS2_ESaISt4pairIKS2_mEEEEixERS6_.exit
  %i.do = add nuw i64 %.02957, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.do, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.al, !llvm.loop !1357

bb.at:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %bb.aj, %bb.at, %bb.aq, %bb.ak, %bb.ai
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.ai ], [ %i.cb, %bb.aj ], [ %i.cc, %bb.ak ], [ %i.di, %bb.aq ], [ %i.dp, %bb.at ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ah
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.au ], [ %i.bz, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #25
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.c, %bb.av
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.av ], [ %i.by, %bb.ag ], [ %i.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

bb.aw:                                            ; preds = %.body, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.bx, %bb.af ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_23HistogramGenericFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESH_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt3mapIS3_mSt4lessIS3_ESaISt4pairIKS3_mEEEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.d = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not110 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr %5, align 8, !tbaa !122
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter134 = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter138 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.v, %bb.g ] ; 3 uses
  %niter139 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter139.next.1, %bb.g ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06596.us
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1326
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1323 ; 2 uses
  %.not84.us = icmp eq ptr %i.k, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1147
  %i.n = add i64 %i.m, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.n, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06596.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1326
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1323 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.r, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1147
  %i.u = add i64 %i.t, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.u, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.v = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1358

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06596.us.epil.init
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1326
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1323 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.y, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1147
  %i.ab = add i64 %i.aa, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit131.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit131.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bj, %._crit_edge.loopexit131.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod133)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06596.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1326
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1323 ; 2 uses
  %.not84.epil = icmp eq ptr %i.ah, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1147
  %i.ak = add i64 %i.aj, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit131.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %bb.h ], [ %.164.1, %._crit_edge.loopexit131.unr-lcssa ], [ %i.ak, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.al = add i64 %.063.lcssa, %i.d
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.al)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.k:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.l:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.m:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bj, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06596
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1326
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1323 ; 2 uses
  %.not84 = icmp eq ptr %i.av, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1147
  %i.ay = add i64 %i.ax, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ay, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06596
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1326
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1323 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bf, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1147
  %i.bi = add i64 %i.bh, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bi, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bj = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit131.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1358

bb.q:                                             ; preds = %._crit_edge
  %i.bk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bl)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  br i1 %.not110, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge108:                                   ; preds = %bb.ag, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.066.lcssa = phi i64 [ %i.d, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.268, %bb.ag ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.ah unwind label %bb.av

bb.u:                                             ; preds = %._crit_edge
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.v:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.w:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.x:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.z:                                             ; preds = %.lr.ph107, %bb.ag
  %.066106 = phi i64 [ %i.d, %.lr.ph107 ], [ %.268, %bb.ag ] ; 5 uses
  %.069105 = phi i64 [ 0, %.lr.ph107 ], [ %i.dg, %bb.ag ] ; 4 uses
  %i.bw = add i64 %.069105, %4                    ; 3 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !122
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.by, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.069105
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cc = phi i64 [ %i.cb, %bb.aa ], [ %.069105, %bb.z ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1326
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1323 ; 3 uses
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.cg, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ch)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.ci = phi ptr [ %.pre.i, %.noexc ], [ %i.cg, %bb.ab ]
  %i.cj = lshr i64 %i.bw, 6
  %i.ck = and i64 %i.bw, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = xor i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !47
  %i.cp = and i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !47
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bw ; 3 uses
  store i64 %.066106, ptr %i.cr, align 8, !tbaa !158
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1141 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %.not9298 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not9298, label %._crit_edge103, label %.lr.ph102

._crit_edge103.loopexit:                          ; preds = %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit
  %.pre = load i64, ptr %i.cr, align 8, !tbaa !158
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %bb.ae
  %i.cv = phi i64 [ %.066106, %bb.ae ], [ %.pre, %._crit_edge103.loopexit ]
  %.167.lcssa = phi i64 [ %.066106, %bb.ae ], [ %i.dd, %._crit_edge103.loopexit ] ; 2 uses
  %i.cw = sub i64 %.167.lcssa, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !162
  br label %bb.ag

.lr.ph102:                                        ; preds = %bb.ae, %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit
  %.167100 = phi i64 [ %i.dd, %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit ], [ %.066106, %bb.ae ] ; 3 uses
  %.sroa.089.099 = phi ptr [ %i.de, %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit ], [ %i.ct, %bb.ae ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.cy, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 40
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  %i.cz = invoke noundef i64 @_ZN6duckdb20CreateSortKeyHelpers13DecodeSortKeyENS_8string_tERNS_6VectorEmNS_14OrderModifiersE(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i64 noundef %.167100, i16 770)
          to label %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit unwind label %bb.af ; 0 uses

_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit: ; preds = %.lr.ph102
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.089.099, i64 48
  %i.db = load i64, ptr %i.da, align 8, !tbaa !1339
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.167100
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !47
  %i.dd = add i64 %.167100, 1                     ; 2 uses
  %i.de = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.089.099) #30 ; 2 uses
  %.not92 = icmp eq ptr %i.de, %i.cu
  br i1 %.not92, label %._crit_edge103.loopexit, label %.lr.ph102

bb.af:                                            ; preds = %.lr.ph102
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ag:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %._crit_edge103
  %.268 = phi i64 [ %.167.lcssa, %._crit_edge103 ], [ %.066106, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.dg = add nuw i64 %.069105, 1                 ; 2 uses
  %exitcond114.not = icmp eq i64 %i.dg, %3
  br i1 %exitcond114.not, label %._crit_edge108, label %bb.z, !llvm.loop !1359

bb.ah:                                            ; preds = %._crit_edge108
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
          to label %bb.ai unwind label %bb.av

bb.ai:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 4294967297
  %i.dm = trunc i64 %i.dk to i32                  ; 2 uses
  br i1 %i.dl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dj, align 8, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i32 0, ptr %i.dn, align 4, !tbaa !40
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #25, !inline_history !120
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !35
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %i.di) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.du, 0
end_hunk_12
begin_hunk_13_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIbSt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  store i64 %i.at, ptr %i.by, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !1374
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1381
  %i.ce = urem i64 %i.x, %i.ba
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cf = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ce, %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.aa, %.noexc._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1384
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !1384
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1383
  store ptr %i.ao, ptr %i.cj, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1390
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !1384
  store ptr %i.ao, ptr %i.ck, align 8, !tbaa !1390
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.y, align 8, !tbaa !1374
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !563, !range !565, !noundef !130
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  store ptr %i.ao, ptr %i.cs, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !1388
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.av, align 8, !tbaa !1388
  br label %_ZNSt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEixERS5_.exit.i.i

_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.cb, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10_HashtableIbSt4pairIKbmESaIS2_ENSt8__detail10_Select1stESt8equal_toIbESt4hashIbENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cw = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, %i.u
  store i64 %i.cx, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEEE7CombineINS_17HistogramAggStateIbSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEEE7CombineINS_17HistogramAggStateIbSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cy = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIbSt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1392

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIbSt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEEE7CombineINS_17HistogramAggStateIbSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEbNS0_14DefaultMapTypeISt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIbSt13unordered_mapIbmSt4hashIbESt8equal_toIbESaISt4pairIKbmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1372
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1369 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1388
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1372
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1369 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1388
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1393

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1372
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1369 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1388
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1372
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1369 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1388
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1372
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1369 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1388
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1372
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1369 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1388
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1393

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1372
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1369 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !1154, !range !565, !noundef !130
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.168100
  store i8 %i.de, ptr %i.df, align 1, !tbaa !563
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1149
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 1, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_13
begin_hunk_14_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIhSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  store i64 %i.at, ptr %i.by, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !1402
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1404
  %i.ce = urem i64 %i.x, %i.ba
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cf = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ce, %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.aa, %.noexc._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1384
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !1384
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1383
  store ptr %i.ao, ptr %i.cj, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1409
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !1384
  store ptr %i.ao, ptr %i.ck, align 8, !tbaa !1409
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.y, align 8, !tbaa !1402
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !14
  %i.cq = zext i8 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  store ptr %i.ao, ptr %i.cs, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !1407
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.av, align 8, !tbaa !1407
  br label %_ZNSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEixERS5_.exit.i.i

_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.cb, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10_HashtableIhSt4pairIKhmESaIS2_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cw = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, %i.u
  store i64 %i.cx, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEEE7CombineINS_17HistogramAggStateIhSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEEE7CombineINS_17HistogramAggStateIhSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cy = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIhSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1411

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIhSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEEE7CombineINS_17HistogramAggStateIhSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEhNS0_14DefaultMapTypeISt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIhSt13unordered_mapIhmSt4hashIhESt8equal_toIhESaISt4pairIKhmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1400
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1397 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1407
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1400
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1397 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1407
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1412

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1400
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1397 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1407
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1400
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1397 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1407
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1400
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1397 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1407
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1400
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1397 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1407
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1412

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.ds, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1400
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1397 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

._crit_edge104.loopexit:                          ; preds = %bb.al
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.cx = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dr, %._crit_edge104.loopexit ] ; 2 uses
  %i.cy = sub i64 %.168.lcssa, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !162
  br label %bb.am

.lr.ph103:                                        ; preds = %bb.ae, %bb.al
  %.sroa.089.0101 = phi ptr [ %.sroa.089.0, %bb.al ], [ %.sroa.089.098, %bb.ae ] ; 3 uses
  %.168100 = phi i64 [ %i.dr, %bb.al ], [ %.067106, %bb.ae ] ; 3 uses
  %i.da = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.db = add i8 %i.da, -1
  %i.dc = icmp ult i8 %i.db, 2
  br i1 %i.dc, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.lr.ph103
  %i.dd = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 2, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.de = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.de, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ak unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dh = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.dh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dd) #25
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  unreachable
end_hunk_14
begin_hunk_15_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateItSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  store i64 %i.at, ptr %i.by, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !1421
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1423
  %i.ce = urem i64 %i.x, %i.ba
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cf = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ce, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.aa, %.noexc._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1384
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !1384
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1383
  store ptr %i.ao, ptr %i.cj, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1428
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !1384
  store ptr %i.ao, ptr %i.ck, align 8, !tbaa !1428
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.y, align 8, !tbaa !1421
  %i.cp = load i16, ptr %i.cn, align 2, !tbaa !657
  %i.cq = zext i16 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  store ptr %i.ao, ptr %i.cs, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !1426
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.av, align 8, !tbaa !1426
  br label %_ZNSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEixERS5_.exit.i.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.cb, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cw = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, %i.u
  store i64 %i.cx, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEEE7CombineINS_17HistogramAggStateItSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEEE7CombineINS_17HistogramAggStateItSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cy = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateItSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1430

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateItSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEEE7CombineINS_17HistogramAggStateItSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEtNS0_14DefaultMapTypeISt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateItSt13unordered_mapItmSt4hashItESt8equal_toItESaISt4pairIKtmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1419
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1416 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1426
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1419
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1416 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1426
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1431

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1419
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1416 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1426
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1419
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1416 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1426
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1419
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1416 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1426
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1419
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1416 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1426
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1431

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1419
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1416 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 4
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !1188
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %.168100
  store i16 %i.de, ptr %i.df, align 2, !tbaa !657
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1185
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 4, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_15
begin_hunk_16_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIjSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  store i64 %i.at, ptr %i.by, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !1440
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1442
  %i.ce = urem i64 %i.x, %i.ba
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cf = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ce, %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.aa, %.noexc._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1384
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !1384
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1383
  store ptr %i.ao, ptr %i.cj, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1447
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !1384
  store ptr %i.ao, ptr %i.ck, align 8, !tbaa !1447
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.y, align 8, !tbaa !1440
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  store ptr %i.ao, ptr %i.cs, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !1445
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.av, align 8, !tbaa !1445
  br label %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEixERS5_.exit.i.i

_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.cb, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cw = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, %i.u
  store i64 %i.cx, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEEE7CombineINS_17HistogramAggStateIjSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEEE7CombineINS_17HistogramAggStateIjSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cy = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIjSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1449

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIjSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEEE7CombineINS_17HistogramAggStateIjSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEjNS0_14DefaultMapTypeISt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIjSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1438
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1435 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1445
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1438
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1435 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1445
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1450

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1438
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1435 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1445
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1438
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1435 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1445
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1438
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1435 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1445
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1438
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1435 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1445
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1450

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1438
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1435 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 6
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !1204
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.168100
  store i32 %i.de, ptr %i.df, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1201
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 6, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_16
begin_hunk_17_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateImSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bw = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.bx = tail call ptr @__cxa_begin_catch(ptr %i.bw) #25 ; 0 uses
  store i64 %i.ar, ptr %i.bv, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ay, ptr %i.x, align 8, !tbaa !1459
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1461
  %i.cb = urem i64 %i.w, %i.ay
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i, %.noexc._crit_edge.i
  %i.cc = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.cb, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit.i.i ], [ %i.z, %.noexc._crit_edge.i ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.0.i.i ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1384
  store ptr %i.cf, ptr %i.am, align 8, !tbaa !1384
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !1383
  store ptr %i.am, ptr %i.cg, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1466
  store ptr %i.ci, ptr %i.am, align 8, !tbaa !1384
  store ptr %i.am, ptr %i.ch, align 8, !tbaa !1466
  %i.cj = load ptr, ptr %i.am, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.x, align 8, !tbaa !1459
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !47
  %i.cn = urem i64 %i.cm, %i.cl
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cn
  store ptr %i.am, ptr %i.co, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !1464
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.at, align 8, !tbaa !1464
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cr, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.by, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.am, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ad, %bb.e ], [ %i.ai, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cs = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.ct = add i64 %i.cs, %i.u
  store i64 %i.ct, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEEE7CombineINS_17HistogramAggStateImSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEEE7CombineINS_17HistogramAggStateImSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cu = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cu, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateImSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1468

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateImSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEEE7CombineINS_17HistogramAggStateImSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEmNS0_14DefaultMapTypeISt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateImSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1457
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1454 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1464
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1457
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1454 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1464
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1469

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1457
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1454 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1464
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1457
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1454 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1464
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1457
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1454 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1464
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1457
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1454 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1464
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1469

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1457
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1454 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 8
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1220
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.168100
  store i64 %i.de, ptr %i.df, align 8, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1217
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 8, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_17
begin_hunk_18_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIaSt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  store i64 %i.at, ptr %i.by, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !1478
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1480
  %i.ce = urem i64 %i.x, %i.ba
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cf = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ce, %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.aa, %.noexc._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1384
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !1384
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1383
  store ptr %i.ao, ptr %i.cj, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1485
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !1384
  store ptr %i.ao, ptr %i.ck, align 8, !tbaa !1485
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.y, align 8, !tbaa !1478
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !14
  %i.cq = sext i8 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  store ptr %i.ao, ptr %i.cs, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !1483
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.av, align 8, !tbaa !1483
  br label %_ZNSt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEixERS5_.exit.i.i

_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.cb, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10_HashtableIaSt4pairIKamESaIS2_ENSt8__detail10_Select1stESt8equal_toIaESt4hashIaENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cw = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, %i.u
  store i64 %i.cx, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEEE7CombineINS_17HistogramAggStateIaSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEEE7CombineINS_17HistogramAggStateIaSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cy = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIaSt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1487

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIaSt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEEE7CombineINS_17HistogramAggStateIaSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEaNS0_14DefaultMapTypeISt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIaSt13unordered_mapIamSt4hashIaESt8equal_toIaESaISt4pairIKamEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1476
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1473 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1483
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1476
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1473 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1483
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1488

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1476
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1473 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1483
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1476
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1473 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1483
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1476
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1473 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1483
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1476
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1473 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1483
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1488

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.ds, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1476
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1473 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

._crit_edge104.loopexit:                          ; preds = %bb.al
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.cx = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dr, %._crit_edge104.loopexit ] ; 2 uses
  %i.cy = sub i64 %.168.lcssa, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !162
  br label %bb.am

.lr.ph103:                                        ; preds = %bb.ae, %bb.al
  %.sroa.089.0101 = phi ptr [ %.sroa.089.0, %bb.al ], [ %.sroa.089.098, %bb.ae ] ; 3 uses
  %.168100 = phi i64 [ %i.dr, %bb.al ], [ %.067106, %bb.ae ] ; 3 uses
  %i.da = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.db = and i8 %i.da, -3
  %i.dc = icmp eq i8 %i.db, 1
  br i1 %i.dc, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.lr.ph103
  %i.dd = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 3, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.de = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.de, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ak unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.dh = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.dh) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.aj, label %.body

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dd) #25
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  unreachable
end_hunk_18
begin_hunk_19_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIsSt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  store i64 %i.at, ptr %i.by, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !1497
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1499
  %i.ce = urem i64 %i.x, %i.ba
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cf = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ce, %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.aa, %.noexc._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1384
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !1384
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1383
  store ptr %i.ao, ptr %i.cj, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1504
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !1384
  store ptr %i.ao, ptr %i.ck, align 8, !tbaa !1504
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.y, align 8, !tbaa !1497
  %i.cp = load i16, ptr %i.cn, align 2, !tbaa !657
  %i.cq = sext i16 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  store ptr %i.ao, ptr %i.cs, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !1502
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.av, align 8, !tbaa !1502
  br label %_ZNSt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEixERS5_.exit.i.i

_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.cb, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10_HashtableIsSt4pairIKsmESaIS2_ENSt8__detail10_Select1stESt8equal_toIsESt4hashIsENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cw = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, %i.u
  store i64 %i.cx, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEEE7CombineINS_17HistogramAggStateIsSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEEE7CombineINS_17HistogramAggStateIsSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cy = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIsSt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1506

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIsSt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEEE7CombineINS_17HistogramAggStateIsSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEsNS0_14DefaultMapTypeISt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIsSt13unordered_mapIsmSt4hashIsESt8equal_toIsESaISt4pairIKsmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1495
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1492 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1502
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1495
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1492 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1502
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1507

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1495
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1492 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1502
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1495
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1492 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1502
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1495
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1492 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1502
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1495
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1492 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1502
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1507

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1495
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1492 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 5
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !1252
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %.168100
  store i16 %i.de, ptr %i.df, align 2, !tbaa !657
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1249
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 5, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_19
begin_hunk_20_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIiSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bz = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #25 ; 0 uses
  store i64 %i.at, ptr %i.by, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !1516
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1518
  %i.ce = urem i64 %i.x, %i.ba
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cf = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ce, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.aa, %.noexc._crit_edge.i ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0.i.i ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1384
  store ptr %i.ci, ptr %i.ao, align 8, !tbaa !1384
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1383
  store ptr %i.ao, ptr %i.cj, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1523
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !1384
  store ptr %i.ao, ptr %i.ck, align 8, !tbaa !1523
  %i.cm = load ptr, ptr %i.ao, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.y, align 8, !tbaa !1516
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = urem i64 %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cr
  store ptr %i.ao, ptr %i.cs, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !1521
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.av, align 8, !tbaa !1521
  br label %_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEixERS5_.exit.i.i

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.cb, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.ao, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cw = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, %i.u
  store i64 %i.cx, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEEE7CombineINS_17HistogramAggStateIiSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEEE7CombineINS_17HistogramAggStateIiSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cy = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIiSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1525

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIiSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEEE7CombineINS_17HistogramAggStateIiSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEiNS0_14DefaultMapTypeISt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIiSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1514
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1511 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1521
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1514
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1511 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1521
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1526

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1514
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1511 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1521
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1514
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1511 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1521
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1514
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1511 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1521
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1514
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1511 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1521
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1526

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1514
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1511 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 7
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !1268
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.168100
  store i32 %i.de, ptr %i.df, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1265
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 7, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_20
begin_hunk_21_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIlSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %.noexc7.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bw = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.bx = tail call ptr @__cxa_begin_catch(ptr %i.bw) #25 ; 0 uses
  store i64 %i.ar, ptr %i.bv, align 8, !tbaa !1387
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  unreachable

_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i
  store i64 %i.ay, ptr %i.x, align 8, !tbaa !1535
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !1537
  %i.cb = urem i64 %i.w, %i.ay
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cc = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 2 uses
  %.0.i.i = phi i64 [ %i.cb, %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.z, %.noexc._crit_edge.i ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.0.i.i ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1384
  store ptr %i.cf, ptr %i.am, align 8, !tbaa !1384
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !1383
  store ptr %i.am, ptr %i.cg, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1542
  store ptr %i.ci, ptr %i.am, align 8, !tbaa !1384
  store ptr %i.am, ptr %i.ch, align 8, !tbaa !1542
  %i.cj = load ptr, ptr %i.am, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not11.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.x, align 8, !tbaa !1535
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !47
  %i.cn = urem i64 %i.cm, %i.cl
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cn
  store ptr %i.am, ptr %i.co, align 8, !tbaa !1383
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.y, %bb.v
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !1540
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.at, align 8, !tbaa !1540
  br label %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEixERS5_.exit.i.i

_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i

_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.body.i: ; preds = %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cr, %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i.i.i ], [ %i.by, %bb.r ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEixERS5_.exit.i.i: ; preds = %bb.f, %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i, %bb.e
  %.pn.i.i.i.i = phi ptr [ %i.am, %_ZNSt10_HashtableIlSt4pairIKlmESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %i.ad, %bb.e ], [ %i.ai, %bb.f ]
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 16 ; 2 uses
  %i.cs = load i64, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %i.ct = add i64 %i.cs, %i.u
  store i64 %i.ct, ptr %.1.i.i.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.09.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEEE7CombineINS_17HistogramAggStateIlSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEEE7CombineINS_17HistogramAggStateIlSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEixERS5_.exit.i.i, %bb.d, %.lr.ph.i
  %i.cu = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cu, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIlSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1544

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIlSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEEE7CombineINS_17HistogramAggStateIlSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorElNS0_14DefaultMapTypeISt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIlSt13unordered_mapIlmSt4hashIlESt8equal_toIlESaISt4pairIKlmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1533
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1530 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1540
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1533
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1530 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1540
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1545

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1533
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1530 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1540
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1533
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1530 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1540
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1533
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1530 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1540
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1533
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1530 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1540
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1545

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1533
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1530 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 9
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1284
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.168100
  store i64 %i.de, ptr %i.df, align 8, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1281
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 9, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_21
begin_hunk_22_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIfSt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a
  call void @__clang_call_terminate(ptr %i.cu) #28
  unreachable

bb.y:                                             ; preds = %bb.v
  unreachable

_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.u, %._crit_edge.i.i
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !1556
  store ptr %.0.i.i.i, ptr %i.z, align 8, !tbaa !1554
  %i.cv = urem i64 %i.af, %i.bn
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cw = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 4 uses
  %.0.i.i = phi i64 [ %i.cv, %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.ai, %.noexc._crit_edge.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0.i.i ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1384
  store ptr %i.cz, ptr %i.ba, align 8, !tbaa !1384
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !1383
  store ptr %i.ba, ptr %i.da, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1561
  store ptr %i.dc, ptr %i.ba, align 8, !tbaa !1384
  store ptr %i.ba, ptr %i.db, align 8, !tbaa !1561
  %i.dd = load ptr, ptr %i.ba, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not11.i.i.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.ag, align 8, !tbaa !1556
  %i.dg = load float, ptr %i.de, align 4, !tbaa !928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %i.dg, ptr %i.b, align 4, !tbaa !928
  %i.dh = fcmp une float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.ad, label %_ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 3339675911)
          to label %._ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i unwind label %bb.ae

._ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i: ; preds = %bb.ad
  %.pre.pre.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !1554
  br label %_ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #28
  unreachable

_ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i: ; preds = %._ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i, %bb.ac
  %.pre.i.i.i = phi ptr [ %i.cw, %bb.ac ], [ %.pre.pre.i.i.i, %._ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i ]
  %i.dl = phi i64 [ 0, %bb.ac ], [ %i.di, %._ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dm = urem i64 %i.dl, %i.df
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dm
  store ptr %i.ba, ptr %i.dn, align 8, !tbaa !1383
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i, %bb.ab
  %i.do = phi ptr [ %.pre.i.i.i, %_ZNKSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i ], [ %i.cw, %bb.ab ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i.i
  store ptr %i.db, ptr %i.dp, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.af, %bb.aa
  %i.dq = load i64, ptr %i.bi, align 8, !tbaa !1559
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.bi, align 8, !tbaa !1559
  br label %_ZNSt8__detail9_Map_baseIfSt4pairIKfmESaIS3_ENS_10_Select1stESt8equal_toIfESt4hashIfENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit.i

_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.body.i

_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.body.i: ; preds = %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ds, %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.cs, %bb.w ]
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt8__detail9_Map_baseIfSt4pairIKfmESaIS3_ENS_10_Select1stESt8equal_toIfESt4hashIfENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit.i: ; preds = %.preheader.i.i.i.i, %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i
  %.pn.i.i = phi ptr [ %i.ba, %_ZNSt10_HashtableIfSt4pairIKfmESaIS2_ENSt8__detail10_Select1stESt8equal_toIfESt4hashIfENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.dt = load i64, ptr %.1.i.i, align 8, !tbaa !47
  %i.du = add i64 %i.dt, %i.y
  store i64 %i.du, ptr %.1.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.07.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEEE7CombineINS_17HistogramAggStateIfSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEEE7CombineINS_17HistogramAggStateIfSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt8__detail9_Map_baseIfSt4pairIKfmESaIS3_ENS_10_Select1stESt8equal_toIfESt4hashIfENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit.i, %bb.d, %.lr.ph.i
  %i.dv = add nuw i64 %.022.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dv, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIfSt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1563

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIfSt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEEE7CombineINS_17HistogramAggStateIfSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEfNS0_14DefaultMapTypeISt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIfSt13unordered_mapIfmSt4hashIfESt8equal_toIfESaISt4pairIKfmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1552
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1549 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1559
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1552
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1549 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1559
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1564

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1552
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1549 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1559
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1552
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1549 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1559
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1552
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1549 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1559
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1552
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1549 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1559
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1564

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1552
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1549 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 11
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load float, ptr %i.dd, align 8, !tbaa !1300
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.168100
  store float %i.de, ptr %i.df, align 4, !tbaa !928
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1297
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 11, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_22
begin_hunk_23_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateIdSt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm:bb.a
  call void @__clang_call_terminate(ptr %i.cu) #28
  unreachable

bb.y:                                             ; preds = %bb.v
  unreachable

_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i: ; preds = %bb.u, %._crit_edge.i.i
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !1575
  store ptr %.0.i.i.i, ptr %i.z, align 8, !tbaa !1573
  %i.cv = urem i64 %i.af, %i.bn
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i, %.noexc._crit_edge.i
  %i.cw = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %.pre.i, %.noexc._crit_edge.i ] ; 4 uses
  %.0.i.i = phi i64 [ %i.cv, %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i ], [ %i.ai, %.noexc._crit_edge.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0.i.i ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1384
  store ptr %i.cz, ptr %i.ba, align 8, !tbaa !1384
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !1383
  store ptr %i.ba, ptr %i.da, align 8, !tbaa !1384
  br label %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1580
  store ptr %i.dc, ptr %i.ba, align 8, !tbaa !1384
  store ptr %i.ba, ptr %i.db, align 8, !tbaa !1580
  %i.dd = load ptr, ptr %i.ba, align 8, !tbaa !1384 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not11.i.i.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.ag, align 8, !tbaa !1575
  %i.dg = load double, ptr %i.de, align 8, !tbaa !972 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.dg, ptr %i.b, align 8, !tbaa !972
  %i.dh = fcmp une double %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.ad, label %_ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8, i64 noundef 3339675911)
          to label %._ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i unwind label %bb.ae

._ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i: ; preds = %bb.ad
  %.pre.pre.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !1573
  br label %_ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #28
  unreachable

_ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i: ; preds = %._ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i, %bb.ac
  %.pre.i.i.i = phi ptr [ %i.cw, %bb.ac ], [ %.pre.pre.i.i.i, %._ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i ]
  %i.dl = phi i64 [ 0, %bb.ac ], [ %i.di, %._ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit_crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dm = urem i64 %i.dl, %i.df
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dm
  store ptr %i.ba, ptr %i.dn, align 8, !tbaa !1383
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i, %bb.ab
  %i.do = phi ptr [ %.pre.i.i.i, %_ZNKSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_bucket_indexERKNS4_16_Hash_node_valueIS2_Lb0EEE.exit.i.i.i ], [ %i.cw, %bb.ab ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0.i.i
  store ptr %i.db, ptr %i.dp, align 8, !tbaa !1383
  br label %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i

_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i: ; preds = %bb.af, %bb.aa
  %i.dq = load i64, ptr %i.bi, align 8, !tbaa !1578
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.bi, align 8, !tbaa !1578
  br label %_ZNSt8__detail9_Map_baseIdSt4pairIKdmESaIS3_ENS_10_Select1stESt8equal_toIdESt4hashIdENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit.i

_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.body.i

_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.body.i: ; preds = %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ds, %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %i.cs, %bb.w ]
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #29
  resume { ptr, i32 } %eh.lpad-body.i

_ZNSt8__detail9_Map_baseIdSt4pairIKdmESaIS3_ENS_10_Select1stESt8equal_toIdESt4hashIdENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit.i: ; preds = %.preheader.i.i.i.i, %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i
  %.pn.i.i = phi ptr [ %i.ba, %_ZNSt10_HashtableIdSt4pairIKdmESaIS2_ENSt8__detail10_Select1stESt8equal_toIdESt4hashIdENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm.exit.i ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.dt = load i64, ptr %.1.i.i, align 8, !tbaa !47
  %i.du = add i64 %i.dt, %i.y
  store i64 %i.du, ptr %.1.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.07.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEEE7CombineINS_17HistogramAggStateIdSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEEE7CombineINS_17HistogramAggStateIdSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZNSt8__detail9_Map_baseIdSt4pairIKdmESaIS3_ENS_10_Select1stESt8equal_toIdESt4hashIdENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_.exit.i, %bb.d, %.lr.ph.i
  %i.dv = add nuw i64 %.022.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dv, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIdSt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1582

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateIdSt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEENS_12_GLOBAL__N_117HistogramFunctionINSE_14DefaultMapTypeISC_EEEEEEvRNS_6VectorESK_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_14DefaultMapTypeISt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEEE7CombineINS_17HistogramAggStateIdSC_EESE_EEvRKT_RSI_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_16HistogramFunctorEdNS0_14DefaultMapTypeISt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESG_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateIdSt13unordered_mapIdmSt4hashIdESt8equal_toIdESaISt4pairIKdmEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %7, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.x, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1571
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1568 ; 2 uses
  %.not84.us = icmp eq ptr %i.m, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1578
  %i.p = add i64 %i.o, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.p, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1571
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1568 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.t, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !1578
  %i.w = add i64 %i.v, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.w, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.x = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1583

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.06596.us.epil.init
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1571
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1568 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.aa, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1578
  %i.ad = add i64 %i.ac, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bl, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596.epil.init
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1571
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1568 ; 2 uses
  %.not84.epil = icmp eq ptr %i.aj, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1578
  %i.am = add i64 %i.al, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.am, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.an = add i64 %.063.lcssa, %i.f
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.an)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bl, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1571
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1568 ; 2 uses
  %.not84 = icmp eq ptr %i.ax, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !1578
  %i.ba = add i64 %i.az, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ba, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.06596
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1571
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1568 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bh, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1578
  %i.bk = add i64 %i.bj, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bk, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bl = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1583

bb.q:                                             ; preds = %._crit_edge
  %i.bm = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bn)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.am, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.067.lcssa = phi i64 [ %i.f, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.269, %bb.am ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.067.lcssa)
          to label %bb.an unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph108, %bb.am
  %.066107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dr, %bb.am ] ; 4 uses
  %.067106 = phi i64 [ %i.f, %.lr.ph108 ], [ %.269, %bb.am ] ; 5 uses
  %i.ca = add i64 %.066107, %4                    ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !122
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.cc, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.066107
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = zext i32 %i.ce to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cg = phi i64 [ %i.cf, %bb.aa ], [ %.066107, %bb.z ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1571
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1568 ; 2 uses
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ck, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i64, ptr %i.bu, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef %i.cl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cm = phi ptr [ %.pre.i, %.noexc ], [ %i.ck, %bb.ab ]
  %i.cn = lshr i64 %i.ca, 6
  %i.co = and i64 %i.ca, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = xor i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !47
  %i.ct = and i64 %i.cs, %i.cq
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !47
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ca ; 3 uses
  store i64 %.067106, ptr %i.cv, align 8, !tbaa !158
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.089.098 = load ptr, ptr %i.cw, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.ae
  %i.cx = load i8, ptr %i.bs, align 1, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 12
  br i1 %i.cy, label %.lr.ph103.split, label %bb.ag

.lr.ph103.split:                                  ; preds = %.lr.ph103
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !135
  br label %bb.af

._crit_edge104.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.da = phi i64 [ %.067106, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.168.lcssa = phi i64 [ %.067106, %bb.ae ], [ %i.dj, %._crit_edge104.loopexit ] ; 2 uses
  %i.db = sub i64 %.168.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !162
  br label %bb.am

bb.af:                                            ; preds = %.lr.ph103.split, %bb.af
  %.sroa.089.0101 = phi ptr [ %.sroa.089.098, %.lr.ph103.split ], [ %.sroa.089.0, %bb.af ] ; 3 uses
  %.168100 = phi i64 [ %.067106, %.lr.ph103.split ], [ %i.dj, %bb.af ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %i.de = load double, ptr %i.dd, align 8, !tbaa !1316
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.168100
  store double %i.de, ptr %i.df, align 8, !tbaa !972
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1313
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.168100
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = add i64 %.168100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %bb.af

bb.ag:                                            ; preds = %.lr.ph103
  %i.dk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 12, ptr %i.a, align 1, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.dl = load i8, ptr %i.bs, align 1, !tbaa !134
  store i8 %i.dl, ptr %i.b, align 1, !tbaa !116
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.al unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
end_hunk_23
begin_hunk_24_@_ZN6duckdb17AggregateFunction12StateCombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm:bb.a

bb.l:                                             ; preds = %.split.us.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i, i64 8
  %.0.copyload.i12.i.i.i.i.i.i.us.i.i.i.i = load i64, ptr %i.bf, align 1
  %.not.i.i.i.i.i.i.us.i.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i.i.i, %.0.copyload.i12.i.i.i.i.i.i.us.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.us.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i, i64 16
  %.0.copyload.i14.i.i.i.i.i.i.us.i.i.i.i = load i64, ptr %i.bg, align 1
  %i.bh = icmp eq i64 %.0.copyload.i14.i.i.i.i.i.i.us.i.i.i.i, %i.ba
  br i1 %i.bh, label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.split.us.i.i.i.i
  %i.bi = load ptr, ptr %.0.us.i.i.i.i, align 8, !tbaa !1384 ; 3 uses
  %.not18.us.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.us.i.i.i.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !1601 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.at
  %.not19.us.i.i.i.i = icmp eq i64 %i.bl, %i.au
  br i1 %.not19.us.i.i.i.i, label %.split.us.i.i.i.i, label %.loopexit.i, !llvm.loop !1603

.split.i.i.i.i:                                   ; preds = %bb.k, %bb.t
  %i.bm = phi i64 [ %i.bv, %bb.t ], [ %.pre26.i.i.i.i, %bb.k ]
  %.0.i.i.i.i = phi ptr [ %i.bt, %bb.t ], [ %i.ay, %bb.k ] ; 5 uses
  %i.bn = icmp eq i64 %i.ar, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.split.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %.0.copyload.i12.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i.i.i, %.0.copyload.i12.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %.0.copyload.i14.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bp, align 1 ; 2 uses
  %i.bq = icmp eq i64 %.0.copyload.i14.i.i.i.i.i.i.i.i.i.i, %i.ba
  br i1 %i.bq, label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = inttoptr i64 %.0.copyload.i14.i.i.i.i.i.i.i.i.i.i to ptr
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i, ptr %i.br, i64 %i.bc)
  %i.bs = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %.split.i.i.i.i
  %i.bt = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !1384 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !1601 ; 2 uses
  %i.bw = urem i64 %i.bv, %i.at
  %.not19.i.i.i.i = icmp eq i64 %i.bw, %i.au
  br i1 %.not19.i.i.i.i, label %.split.i.i.i.i, label %.loopexit.i, !llvm.loop !1603

.loopexit.i:                                      ; preds = %bb.t, %bb.s, %bb.o, %bb.n, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb8string_tESt4pairIKS2_mENS_10_Select1stENS1_14StringEqualityENS1_10StringHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit.us.i.i, %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i.i.i, ptr %5, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8
  store i64 0, ptr %.sroa.2.0..sroa_idx3.i.i, align 8
  %i.bx = trunc i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i.i.i to i32 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 13
  br i1 %i.by, label %bb.u, label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i

bb.u:                                             ; preds = %.loopexit.i
  %i.bz = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS4_EEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i: ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !1604, !nonnull !130, !align !131
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i.fr.i.i.i.i, 4294967295 ; 2 uses
  %i.cc = call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 noundef %i.cb) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %.sroa.2.0.copyload.i.i.i, i64 %i.cb, i1 false)
  %i.cd = load i32, ptr %i.cc, align 1
  store i32 %i.bx, ptr %4, align 8
  store i32 %i.cd, ptr %.sroa_idx.i.i.i, align 4
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !14
  store i64 0, ptr %i.f, align 8, !tbaa !1349, !alias.scope !1605
  %i.ce = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb8string_tESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_14StringEqualityENS0_10StringHashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_mEEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i

_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i: ; preds = %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i, %bb.u
  %.pn.i.i.i = phi { ptr, i8 } [ %i.bz, %bb.u ], [ %i.ce, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE10CopyStringES2_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %.pn.i.i.i, 0
  br label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i

_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i: ; preds = %bb.r, %bb.q, %bb.m, %bb.i, %bb.h, %bb.g, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i
  %.pn9.i.i = phi ptr [ %.fca.0.extract.i.i, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE6insertES7_.exit.i.i ], [ %.sroa.06.017.us.i.i, %bb.g ], [ %.0.us.i.i.i.i, %bb.m ], [ %.sroa.06.017.i.i, %bb.i ], [ %.sroa.06.017.i.i, %bb.h ], [ %.0.i.i.i.i, %bb.q ], [ %.0.i.i.i.i, %bb.r ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.pn9.i.i, i64 24 ; 2 uses
  %i.cf = load i64, ptr %.0.i.i, align 8, !tbaa !47
  %i.cg = add i64 %i.cf, %i.z
  store i64 %i.cg, ptr %.0.i.i, align 8, !tbaa !47
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.07.i.i, align 8, !tbaa !1384 ; 2 uses
  %.not4.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not4.i.i, label %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i, label %.lr.ph.i.i

_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_.exit.i, %bb.e, %bb.b
  %i.ch = add nuw i64 %.025.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ch, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm.exit, label %bb.b, !llvm.loop !1608

_ZN6duckdb17AggregateExecutor7CombineINS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEENS_12_GLOBAL__N_117HistogramFunctionINSF_13StringMapTypeISD_EEEEEEvRNS_6VectorESL_RNS_18AggregateInputDataEm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_117HistogramFunctionINS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS5_mEEEEEEEE7CombineINS_17HistogramAggStateIS5_SD_EESF_EEvRKT_RSJ_RNS_18AggregateInputDataE.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_22HistogramStringFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESH_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.d = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not112 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr %5, align 8, !tbaa !122
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter133 = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter137 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06398.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06597.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.v, %bb.g ] ; 3 uses
  %niter138 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter138.next.1, %bb.g ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06597.us
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1590
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1587 ; 2 uses
  %.not84.us = icmp eq ptr %i.k, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1599
  %i.n = add i64 %i.m, %.06398.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.n, %bb.e ], [ %.06398.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06597.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1590
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1587 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.r, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1599
  %i.u = add i64 %i.t, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.u, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.v = add nuw i64 %.06597.us, 2                ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1609

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06398.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06597.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06597.us.epil.init
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1590
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1587 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.y, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1599
  %i.ab = add i64 %i.aa, %.06398.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit130.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit130.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06398.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ] ; 2 uses
  %.06597.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bj, %._crit_edge.loopexit130.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod132)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06597.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1590
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1587 ; 2 uses
  %.not84.epil = icmp eq ptr %i.ah, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1599
  %i.ak = add i64 %i.aj, %.06398.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit130.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06398.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %bb.h ], [ %.164.1, %._crit_edge.loopexit130.unr-lcssa ], [ %i.ak, %bb.i ], [ %.06398.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.al = add i64 %.063.lcssa, %i.d
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.al)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.k:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.l:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.m:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06398 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06597 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bj, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06597
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1590
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1587 ; 2 uses
  %.not84 = icmp eq ptr %i.av, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1599
  %i.ay = add i64 %i.ax, %.06398
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ay, %bb.n ], [ %.06398, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06597
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1590
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1587 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bf, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1599
  %i.bi = add i64 %i.bh, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bi, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bj = add nuw i64 %.06597, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit130.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1609

bb.q:                                             ; preds = %._crit_edge
  %i.bk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v       ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.bl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bl)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  br i1 %.not112, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge110:                                   ; preds = %bb.ah, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.066.lcssa = phi i64 [ %i.d, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.268, %bb.ah ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.ai unwind label %bb.aw

bb.u:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.v:                                             ; preds = %bb.q
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.w:                                             ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.x:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.y:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.z:                                             ; preds = %.lr.ph109, %bb.ah
  %.066108 = phi i64 [ %i.d, %.lr.ph109 ], [ %.268, %bb.ah ] ; 5 uses
  %.069107 = phi i64 [ 0, %.lr.ph109 ], [ %i.di, %bb.ah ] ; 4 uses
  %i.bx = add i64 %.069107, %4                    ; 3 uses
  %i.by = load ptr, ptr %5, align 8, !tbaa !122
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.bz, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.069107
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cd = phi i64 [ %i.cc, %bb.aa ], [ %.069107, %bb.z ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1590
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1587 ; 2 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.ch, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = load i64, ptr %i.br, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ci)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.cj = phi ptr [ %.pre.i, %.noexc ], [ %i.ch, %bb.ab ]
  %i.ck = lshr i64 %i.bx, 6
  %i.cl = and i64 %i.bx, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !47
  %i.cq = and i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !47
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bx ; 3 uses
  store i64 %.066108, ptr %i.cs, align 8, !tbaa !158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.090.099 = load ptr, ptr %i.ct, align 8, !tbaa !1384 ; 2 uses
  %.not93100 = icmp eq ptr %.sroa.090.099, null
  br i1 %.not93100, label %._crit_edge105, label %.lr.ph104

._crit_edge105.loopexit:                          ; preds = %bb.af
  %.pre = load i64, ptr %i.cs, align 8, !tbaa !158
  br label %._crit_edge105

._crit_edge105:                                   ; preds = %._crit_edge105.loopexit, %bb.ae
  %i.cu = phi i64 [ %.066108, %bb.ae ], [ %.pre, %._crit_edge105.loopexit ]
  %.167.lcssa = phi i64 [ %.066108, %bb.ae ], [ %i.dg, %._crit_edge105.loopexit ] ; 2 uses
  %i.cv = sub i64 %.167.lcssa, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !162
  br label %bb.ah

.lr.ph104:                                        ; preds = %bb.ae, %bb.af
  %.sroa.090.0102 = phi ptr [ %.sroa.090.0, %bb.af ], [ %.sroa.090.099, %bb.ae ] ; 4 uses
  %.167101 = phi i64 [ %i.dg, %bb.af ], [ %.066108, %bb.ae ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.090.0102, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.cx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.090.0102, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  %i.cy = invoke { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %.noexc88 unwind label %bb.ag  ; 2 uses

.noexc88:                                         ; preds = %.lr.ph104
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bk)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc88
  %i.cz = extractvalue { i64, ptr } %i.cy, 1
  %i.da = extractvalue { i64, ptr } %i.cy, 0
  %i.db = load ptr, ptr %i.bq, align 8, !tbaa !135
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.167101 ; 2 uses
  store i64 %i.da, ptr %i.dc, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.090.0102, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1339
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.167101
  store i64 %i.de, ptr %i.df, align 8, !tbaa !47
  %i.dg = add i64 %.167101, 1                     ; 2 uses
  %.sroa.090.0 = load ptr, ptr %.sroa.090.0102, align 8, !tbaa !1384 ; 2 uses
  %.not93 = icmp eq ptr %.sroa.090.0, null
  br i1 %.not93, label %._crit_edge105.loopexit, label %.lr.ph104

bb.ag:                                            ; preds = %.noexc88, %.lr.ph104
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %._crit_edge105
  %.268 = phi i64 [ %.167.lcssa, %._crit_edge105 ], [ %.066108, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.di = add nuw i64 %.069107, 1                 ; 2 uses
  %exitcond116.not = icmp eq i64 %i.di, %3
  br i1 %exitcond116.not, label %._crit_edge110, label %bb.z, !llvm.loop !1610

bb.ai:                                            ; preds = %._crit_edge110
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dl, align 8, !tbaa !38
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !40
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
end_hunk_24
begin_hunk_25_@_ZN6duckdb12_GLOBAL__N_123HistogramUpdateFunctionINS_23HistogramGenericFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRSG_m:bb.a

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.am, %bb.al
  %i.ci = phi i64 [ %i.ch, %bb.am ], [ %.02957, %bb.al ] ; 3 uses
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !160 ; 2 uses
  %.not.i50 = icmp eq ptr %i.cj, null
  br i1 %.not.i50, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ck = lshr i64 %i.ci, 6
  %i.cl = and i64 %i.ci, 63
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !47
  %i.co = shl nuw i64 1, %i.cl
  %i.cp = and i64 %i.cn, %i.co
  %.not56 = icmp eq i64 %i.cp, 0
  br i1 %.not56, label %bb.as, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cq = load ptr, ptr %6, align 8, !tbaa !122
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !123 ; 2 uses
  %.not.i51 = icmp eq ptr %i.cr, null
  br i1 %.not.i51, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit52, label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.02957
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit52

_ZNK6duckdb15SelectionVector9get_indexEm.exit52:  ; preds = %bb.an, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cv = phi i64 [ %i.cu, %bb.an ], [ %.02957, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1590 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1587 ; 2 uses
  %.not = icmp eq ptr %i.cy, null
  br i1 %.not, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit52
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !126, !nonnull !130, !align !131
  %i.da = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26
          to label %bb.ap unwind label %bb.aq     ; 10 uses

bb.ap:                                            ; preds = %bb.ao
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store ptr %i.db, ptr %i.da, align 8, !tbaa !1328
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !1592
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 1, ptr %i.de, align 8, !tbaa !1594
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dg, align 8, !tbaa !1382
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  store i32 1, ptr %i.di, align 8, !tbaa !1595
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !1587
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit52
  %i.dk = phi ptr [ %i.da, %bb.ap ], [ %i.cy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit52 ]
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.dl, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEE11GetOrCreateES2_(ptr noundef nonnull align 8 dereferenceable(68) %i.dk, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEEixERS6_.exit unwind label %bb.at ; 2 uses

_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEEixERS6_.exit: ; preds = %bb.ar
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !47
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !47
  br label %bb.as

bb.as:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZN6duckdb15OwningStringMapImSt13unordered_mapINS_8string_tEmNS_10StringHashENS_14StringEqualityESaISt4pairIKS2_mEEEEixERS6_.exit
  %i.dp = add nuw i64 %.02957, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.al, !llvm.loop !1622

bb.at:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %bb.aj, %bb.at, %bb.aq, %bb.ak, %bb.ai
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.ai ], [ %i.cb, %bb.aj ], [ %i.cc, %bb.ak ], [ %i.dj, %bb.aq ], [ %i.dq, %bb.at ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ah
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.au ], [ %i.bz, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #25
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.c, %bb.av
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.av ], [ %i.by, %bb.ag ], [ %i.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

bb.aw:                                            ; preds = %.body, %bb.af
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.bx, %bb.af ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_125HistogramFinalizeFunctionINS_23HistogramGenericFunctorENS_8string_tENS0_13StringMapTypeINS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvRNS_6VectorERNS_18AggregateInputDataESH_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIPNS_17HistogramAggStateINS_8string_tENS_15OwningStringMapImSt13unordered_mapIS3_mNS_10StringHashENS_14StringEqualityESaISt4pairIKS3_mEEEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 7 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.d = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.preheader unwind label %bb.m ; 3 uses

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = load ptr, ptr %5, align 8, !tbaa !122
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter132 = and i64 %3, 1
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter136 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %.06397.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %.164.us.1, %bb.g ] ; 2 uses
  %.06596.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.v, %bb.g ] ; 3 uses
  %niter137 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter137.next.1, %bb.g ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06596.us
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1590
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1587 ; 2 uses
  %.not84.us = icmp eq ptr %i.k, null
  br i1 %.not84.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1599
  %i.n = add i64 %i.m, %.06397.us
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.164.us = phi i64 [ %i.n, %bb.e ], [ %.06397.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06596.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1590
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1587 ; 2 uses
  %.not84.us.1 = icmp eq ptr %i.r, null
  br i1 %.not84.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1599
  %i.u = add i64 %i.t, %.164.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.164.us.1 = phi i64 [ %i.u, %bb.f ], [ %.164.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.v = add nuw i64 %.06596.us, 2                ; 2 uses
  %niter137.next.1 = add i64 %niter137, 2         ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1623

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.06397.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06596.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod135 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod135)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.06596.us.epil.init
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1590
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1587 ; 2 uses
  %.not84.us.epil = icmp eq ptr %i.y, null
  br i1 %.not84.us.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1599
  %i.ab = add i64 %i.aa, %.06397.us.epil.init
  br label %._crit_edge

._crit_edge.loopexit129.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit129.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.06397.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.164.1, %._crit_edge.loopexit129.unr-lcssa ] ; 2 uses
  %.06596.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bj, %._crit_edge.loopexit129.unr-lcssa ]
  %lcmp.mod131 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod131)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06596.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1590
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1587 ; 2 uses
  %.not84.epil = icmp eq ptr %i.ah, null
  br i1 %.not84.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1599
  %i.ak = add i64 %i.aj, %.06397.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit129.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %.preheader
  %.063.lcssa = phi i64 [ 0, %.preheader ], [ %.06397.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.164.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ab, %bb.h ], [ %.164.1, %._crit_edge.loopexit129.unr-lcssa ], [ %i.ak, %bb.i ], [ %.06397.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.al = add i64 %.063.lcssa, %i.d
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.al)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.k:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.l:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.m:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.06397 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.164.1, %bb.p ] ; 2 uses
  %.06596 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bj, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06596
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1590
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1587 ; 2 uses
  %.not84 = icmp eq ptr %i.av, null
  br i1 %.not84, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !1599
  %i.ay = add i64 %i.ax, %.06397
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.n
  %.164 = phi i64 [ %i.ay, %bb.n ], [ %.06397, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.06596
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1590
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1587 ; 2 uses
  %.not84.1 = icmp eq ptr %i.bf, null
  br i1 %.not84.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1599
  %i.bi = add i64 %i.bh, %.164
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.164.1 = phi i64 [ %i.bi, %bb.o ], [ %.164, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bj = add nuw i64 %.06596, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit129.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1623

bb.q:                                             ; preds = %._crit_edge
  %i.bk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !135
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.bl)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit unwind label %bb.y

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135
  br i1 %.not111, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.z

._crit_edge109:                                   ; preds = %bb.ag, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %.066.lcssa = phi i64 [ %i.d, %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit ], [ %.268, %bb.ag ]
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.066.lcssa)
          to label %bb.ah unwind label %bb.av

bb.u:                                             ; preds = %._crit_edge
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.v:                                             ; preds = %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.w:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.x:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.z:                                             ; preds = %.lr.ph108, %bb.ag
  %.066107 = phi i64 [ %i.d, %.lr.ph108 ], [ %.268, %bb.ag ] ; 5 uses
  %.069106 = phi i64 [ 0, %.lr.ph108 ], [ %i.dd, %bb.ag ] ; 4 uses
  %i.bw = add i64 %.069106, %4                    ; 3 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !122
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !123 ; 2 uses
  %.not.i85 = icmp eq ptr %i.by, null
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.069106
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86

_ZNK6duckdb15SelectionVector9get_indexEm.exit86:  ; preds = %bb.aa, %bb.z
  %i.cc = phi i64 [ %i.cb, %bb.aa ], [ %.069106, %bb.z ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1590
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1587 ; 2 uses
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %.not.i87 = icmp eq ptr %i.cg, null
  br i1 %.not.i87, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !161
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ch)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !160
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc
  %i.ci = phi ptr [ %.pre.i, %.noexc ], [ %i.cg, %bb.ab ]
  %i.cj = lshr i64 %i.bw, 6
  %i.ck = and i64 %i.bw, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = xor i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !47
  %i.cp = and i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !47
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ae:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bw ; 3 uses
  store i64 %.066107, ptr %i.cr, align 8, !tbaa !158
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.089.098 = load ptr, ptr %i.cs, align 8, !tbaa !1384 ; 2 uses
  %.not9299 = icmp eq ptr %.sroa.089.098, null
  br i1 %.not9299, label %._crit_edge104, label %.lr.ph103

._crit_edge104.loopexit:                          ; preds = %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit
  %.pre = load i64, ptr %i.cr, align 8, !tbaa !158
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %bb.ae
  %i.ct = phi i64 [ %.066107, %bb.ae ], [ %.pre, %._crit_edge104.loopexit ]
  %.167.lcssa = phi i64 [ %.066107, %bb.ae ], [ %i.db, %._crit_edge104.loopexit ] ; 2 uses
  %i.cu = sub i64 %.167.lcssa, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !162
  br label %bb.ag

.lr.ph103:                                        ; preds = %bb.ae, %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit
  %.sroa.089.0101 = phi ptr [ %.sroa.089.0, %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit ], [ %.sroa.089.098, %bb.ae ] ; 4 uses
  %.167100 = phi i64 [ %i.db, %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit ], [ %.066107, %bb.ae ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.cw, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  %i.cx = invoke noundef i64 @_ZN6duckdb20CreateSortKeyHelpers13DecodeSortKeyENS_8string_tERNS_6VectorEmNS_14OrderModifiersE(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i64 noundef %.167100, i16 770)
          to label %_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit unwind label %bb.af ; 0 uses

_ZN6duckdb23HistogramGenericFunctor17HistogramFinalizeINS_8string_tEEEvT_RNS_6VectorEm.exit: ; preds = %.lr.ph103
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.089.0101, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !1339
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.167100
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !47
  %i.db = add i64 %.167100, 1                     ; 2 uses
  %.sroa.089.0 = load ptr, ptr %.sroa.089.0101, align 8, !tbaa !1384 ; 2 uses
  %.not92 = icmp eq ptr %.sroa.089.0, null
  br i1 %.not92, label %._crit_edge104.loopexit, label %.lr.ph103

bb.af:                                            ; preds = %.lr.ph103
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ag:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %._crit_edge104
  %.268 = phi i64 [ %.167.lcssa, %._crit_edge104 ], [ %.066107, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ] ; 2 uses
  %i.dd = add nuw i64 %.069106, 1                 ; 2 uses
  %exitcond115.not = icmp eq i64 %i.dd, %3
  br i1 %exitcond115.not, label %._crit_edge109, label %bb.z, !llvm.loop !1624

bb.ah:                                            ; preds = %._crit_edge109
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3)
          to label %bb.ai unwind label %bb.av

bb.ai:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dg, align 8, !tbaa !38
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !40
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !35
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25, !inline_history !120
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25, !inline_history !120
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.an, label %bb.am
end_hunk_25
