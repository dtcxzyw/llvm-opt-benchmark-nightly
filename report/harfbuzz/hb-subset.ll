Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset?download=true
inline.NumInlined: 7658
inline.NumDeleted: 3375
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE:bb.a
_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i: ; preds = %bb.s, %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i
  %i.dc = load i32, ptr %i.be, align 8, !tbaa !257 ; 2 uses
  %.not.i55 = icmp eq i32 %i.dc, -1
  br i1 %.not.i55, label %.loopexit, label %bb.h

bb.t:                                             ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i, %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS9_KFbvERK4$_22LPv0EEMS9_FRjvEL24hb_function_sortedness_t0ELSG_0EERK4$_32LSL_0ELSG_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSG_0EEERKSS_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !330 ; 4 uses
  %.not233.i = icmp eq i32 %i.de, 0
  br i1 %.not233.i, label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit
  %i.df = icmp ugt i32 %i.de, 178956970
  br i1 %i.df, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !149

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.dg = zext nneg i32 %i.de to i64
  %i.dh = mul nuw nsw i64 %i.dg, 24
  %i.di = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dh) #16 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.di, null
  %spec.select232.i = select i1 %.not22.i.i, i32 -1, i32 %i.de, !prof !215
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, %.thread.i.i
  %.sroa.21.1.i = phi ptr [ null, %.thread.i.i ], [ %i.di, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.sink.i.i = phi i32 [ -1, %.thread.i.i ], [ %spec.select232.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.val.i56 = load i32, ptr %i.ab, align 4, !tbaa !325
  %i.dj = add i32 %.val.i56, 1                    ; 2 uses
  %.not15.i.i.i.i.i.i.i57 = icmp ult i32 %i.dj, 2
  br i1 %.not15.i.i.i.i.i.i.i57, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i
  %.val85.i = load ptr, ptr %i.ac, align 8, !tbaa !326
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i
  %.sroa.5.sroa.0.0.i.i.i59 = phi i32 [ %i.dn, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ], [ %i.dj, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.02.0.i.i.i60 = phi ptr [ %i.do, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ], [ %.val85.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i60, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !817
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58
  %i.dn = add i32 %.sroa.5.sroa.0.0.i.i.i59, -1   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i60, i64 16
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58, !llvm.loop !780

"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58
  %i.dq = zext i32 %.sroa.5.sroa.0.0.i.i.i59 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i60, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.z

._crit_edge.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i"
  %.not.i.i.i.i91.i = icmp eq i32 %.sroa.11184.1.i, 0
  br i1 %.not.i.i.i.i91.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %bb.u, !prof !179

bb.u:                                             ; preds = %._crit_edge.i
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.sroa.11184.1.i to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopI13lookup_size_tZN10hb_array_tIS0_E6_qsortIS0_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS0_E11hb_priorityILj1EEEUlRKS0_SF_E_EvPS5_mT0_(ptr noundef %.sroa.21.4.i, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i.i)
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.21.4.i, i64 %.idx.i.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i32 %.sroa.11184.1.i, 1
  br i1 %.not1.i.i.i.i.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.u
  %.01519.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.4.i, i64 24
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.critedge.i.loopexit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.01520.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.loopexit.i.i.i.i.i ], [ %.01519.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %.preheader.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi ptr [ %i.ef, %bb.w ], [ %.01520.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 8 uses
  %i.ef = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -24 ; 5 uses
  %i.eg = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !332
  %i.ei = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !333
  %i.ek = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !332
  %i.em = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !333
  %i.eo = uitofp i32 %i.el to double
  %i.ep = uitofp i32 %i.eh to double
  %i.eq = insertelement <2 x i64> poison, i64 %i.ej, i64 0
  %i.er = insertelement <2 x i64> %i.eq, i64 %i.en, i64 1
  %i.es = uitofp <2 x i64> %i.er to <2 x double>
  %i.et = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.eo, i64 1
  %i.ev = fdiv <2 x double> %i.eu, %i.es          ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0 ; 2 uses
  %i.ex = extractelement <2 x double> %i.ev, i64 1 ; 2 uses
  %i.ey = fcmp oeq double %i.ew, %i.ex
  br i1 %i.ey, label %.split.i.i.i.i.i.i, label %bb.v

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ez = load i32, ptr %.017.i.i.i.i.i.i, align 8, !tbaa !334
  %i.fa = load i32, ptr %i.ef, align 8, !tbaa !334
  %i.fb = sub i32 %i.ez, %i.fa
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.w, label %.critedge.i.loopexit.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fd = fcmp ule double %i.ex, %i.ew
  br i1 %i.fd, label %.critedge.i.loopexit.i.i.i.i.i, label %bb.w

.critedge.i.loopexit.i.i.i.i.i:                   ; preds = %bb.w, %bb.v, %.split.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01520.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.fe = icmp ult ptr %.015.i.i.i.i.i.i, %i.ee
  br i1 %i.fe, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, !llvm.loop !794

bb.w:                                             ; preds = %bb.v, %.split.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !tbaa.struct !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %.017.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !335
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ff = icmp ugt ptr %i.ef, %.sroa.21.4.i
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.loopexit.i.i.i.i.i, !llvm.loop !795

_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61, %.critedge.i.loopexit.i.i.i.i.i, %bb.u, %._crit_edge.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i
  %.not.i.i.i.i91324.i = phi i1 [ true, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ false, %bb.u ], [ true, %._crit_edge.i ], [ false, %.critedge.i.loopexit.i.i.i.i.i ], [ true, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ]
  %.069.lcssa323.shrunk.i = phi i32 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %i.gq, %bb.u ], [ %i.gq, %._crit_edge.i ], [ %i.gq, %.critedge.i.loopexit.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ]
  %.sroa.21.0.lcssa322.i = phi ptr [ %.sroa.21.1.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %.sroa.21.4.i, %bb.u ], [ %.sroa.21.4.i, %._crit_edge.i ], [ %.sroa.21.4.i, %.critedge.i.loopexit.i.i.i.i.i ], [ %.sroa.21.1.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 6 uses
  %.sroa.11184.0.lcssa321.i = phi i64 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ 24, %bb.u ], [ 0, %._crit_edge.i ], [ %.idx.i.i.i.i.i.i, %.critedge.i.loopexit.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 2 uses
  %.sroa.0178.0.lcssa320.i = phi i32 [ %.sink.i.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %.sroa.0178.3.i, %bb.u ], [ %.sroa.0178.3.i, %._crit_edge.i ], [ %.sroa.0178.3.i, %.critedge.i.loopexit.i.i.i.i.i ], [ %.sink.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 2 uses
  %.069.lcssa323.i = zext i32 %.069.lcssa323.shrunk.i to i64 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !338, !nonnull !127, !align !339 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !818 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !316
  %.not.i.i62 = icmp ult i32 %i.fj, %i.fl
  br i1 %.not.i.i62, label %bb.y, label %bb.x, !prof !131

bb.x:                                             ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.y:                                             ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !322
  %i.fo = zext i32 %i.fj to i64
  %i.fp = getelementptr inbounds nuw [216 x i8], ptr %i.fn, i64 %i.fo
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i63 = phi ptr [ @_hb_CrapPool, %bb.x ], [ %i.fp, %bb.y ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !340
  %i.fs = load ptr, ptr %.0.i.i63, align 8, !tbaa !341
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = add i64 %i.ft, %.069.lcssa323.i
  %i.fw = sub i64 %i.fv, %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.21.0.lcssa322.i, i64 %.sroa.11184.0.lcssa321.i
  br i1 %.not.i.i.i.i91324.i, label %.critedge.i, label %.lr.ph262.i.preheader

.lr.ph262.i.preheader:                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.fy = add nsw i64 %.sroa.11184.0.lcssa321.i, -24 ; 2 uses
  %i.fz = udiv i64 %i.fy, 24
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %xtraiter = and i64 %i.ga, 3                    ; 3 uses
  %i.gb = icmp ult i64 %i.fy, 72
  br i1 %i.gb, label %.lr.ph262.i.epil.preheader, label %.lr.ph262.i.preheader.new

.lr.ph262.i.preheader.new:                        ; preds = %.lr.ph262.i.preheader
  %unroll_iter = and i64 %i.ga, 2305843009213693948
  br label %.lr.ph262.i

bb.z:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i", %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i"
  %.069254.i = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %i.gq, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i" ]
  %.sroa.0162.0253.i = phi ptr [ %.sroa.02.0.i.i.i60, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.0162.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i" ] ; 4 uses
  %.sroa.7163.0252.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i59, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.7163.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i" ] ; 5 uses
  %.sroa.21.0250.i = phi ptr [ %.sroa.21.1.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.21.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i" ] ; 6 uses
  %.sroa.11184.0248.i = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.11184.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i" ] ; 6 uses
  %.sroa.0178.0247.i = phi i32 [ %.sink.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.0178.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i" ] ; 10 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.7163.0252.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.aa, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEdeEv.exit.i", !prof !149

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEdeEv.exit.i": ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %.sroa.0162.0253.i, %bb.z ]
  %.val1.i.i.i = load i32, ptr %.0.i.i.i.i.i.i.i.i.i, align 4, !tbaa !128 ; 7 uses
  %i.gc = load ptr, ptr %i.dt, align 8, !tbaa !338, !nonnull !127, !align !339 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !316
  %.not.i92.i = icmp ult i32 %.val1.i.i.i, %i.ge
  br i1 %.not.i92.i, label %bb.ac, label %bb.ab, !prof !131

bb.ab:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEdeEv.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i

bb.ac:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEdeEv.exit.i"
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !322
  %i.gh = zext i32 %.val1.i.i.i to i64
  %i.gi = getelementptr inbounds nuw [216 x i8], ptr %i.gg, i64 %i.gh
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i: ; preds = %bb.ac, %bb.ab
  %.0.i93.i = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %i.gi, %bb.ac ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i93.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !340
  %i.gl = load ptr, ptr %.0.i93.i, align 8, !tbaa !341
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = add i32 %.069254.i, %i.gp               ; 4 uses
  %i.gr = load ptr, ptr %i.ac, align 8, !tbaa !326 ; 4 uses
  %.not.i95.i = icmp eq ptr %i.gr, null
  br i1 %.not.i95.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74, label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i
  %i.gs = mul i32 %.val1.i.i.i, 506952113
  %i.gt = and i32 %i.gs, 1073741823
  %i.gu = load i32, ptr %i.du, align 8, !tbaa !327
  %i.gv = urem i32 %i.gt, %i.gu                   ; 2 uses
  %i.gw = zext nneg i32 %i.gv to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4            ; 2 uses
  %i.ha = and i32 %i.gz, 2
  %.not15.i.i.i.i66 = icmp eq i32 %i.ha, 0
  br i1 %.not15.i.i.i.i66, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74, label %.lr.ph.i.i.i.i67

.lr.ph.i.i.i.i67:                                 ; preds = %bb.ad
  %i.hb = load i32, ptr %i.ab, align 4
  %i.hc = load i32, ptr %i.gx, align 4, !tbaa !128
  %i.hd = icmp eq i32 %i.hc, %.val1.i.i.i
  br i1 %i.hd, label %._crit_edge.i.i.i71, label %.lr.ph.i.i.i68

bb.ae:                                            ; preds = %.lr.ph.i.i.i68
  %i.he = load i32, ptr %i.ho, align 4, !tbaa !128
  %i.hf = icmp eq i32 %i.he, %.val1.i.i.i
  br i1 %i.hf, label %._crit_edge.i.i.i71, label %.lr.ph.i.i.i68, !llvm.loop !783

._crit_edge.i.i.i71:                              ; preds = %bb.ae, %.lr.ph.i.i.i.i67
  %.lcssa10.i.i.i72 = phi i32 [ %i.gz, %.lr.ph.i.i.i.i67 ], [ %i.hq, %bb.ae ]
  %i.hg = phi i64 [ %i.gw, %.lr.ph.i.i.i.i67 ], [ %i.hn, %bb.ae ]
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.hg
  %i.hi = trunc i32 %.lcssa10.i.i.i72 to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %spec.select.i.i.i73 = select i1 %i.hi, ptr %i.hj, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74

.lr.ph.i.i.i68:                                   ; preds = %.lr.ph.i.i.i.i67, %bb.ae
  %.01016.i13.i.i.i69 = phi i32 [ %i.hm, %bb.ae ], [ %i.gv, %.lr.ph.i.i.i.i67 ]
  %.017.i12.i.i.i70 = phi i32 [ %i.hk, %bb.ae ], [ 0, %.lr.ph.i.i.i.i67 ]
  %i.hk = add i32 %.017.i12.i.i.i70, 1            ; 2 uses
  %i.hl = add i32 %i.hk, %.01016.i13.i.i.i69
  %i.hm = and i32 %i.hl, %i.hb                    ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4            ; 2 uses
  %i.hr = and i32 %i.hq, 2
  %.not.i.i.i96.i = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i.i96.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74, label %bb.ae, !llvm.loop !783

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74: ; preds = %.lr.ph.i.i.i68, %._crit_edge.i.i.i71, %bb.ad, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i
  %.0.i97.i = phi ptr [ @_hb_NullPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i ], [ %spec.select.i.i.i73, %._crit_edge.i.i.i71 ], [ @_hb_NullPool, %bb.ad ], [ @_hb_NullPool, %.lr.ph.i.i.i68 ]
  %i.hs = load ptr, ptr %.0.i97.i, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store atomic i32 1, ptr %9 monotonic, align 8
  store atomic i8 1, ptr %i.dv monotonic, align 4
  store atomic ptr null, ptr %i.dw monotonic, align 8
  store i8 1, ptr %i.dx, align 8, !tbaa !167
  store i32 0, ptr %i.dy, align 4, !tbaa !168
  store atomic i32 0, ptr %i.dz monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ea, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 -1, ptr %i.i, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i64 0, ptr %i.j, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %9, ptr %7, align 8, !tbaa !343
  store ptr %i.gc, ptr %i.eb, align 8, !tbaa !346
  store ptr %i.j, ptr %i.ec, align 8, !tbaa !347
  store ptr %i.i, ptr %i.ed, align 8, !tbaa !348
  call void @_ZN5graph7graph_t21traverse_directed_bfsIZNS0_18find_subgraph_sizeEjR8hb_set_tjEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_EEvjOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.gc, i32 noundef %.val1.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ht = load i64, ptr %i.j, align 8, !tbaa !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load i16, ptr %i.hu, align 1, !tbaa !130
  %i.hw = call noundef i16 @llvm.bswap.i16(i16 %i.hv)
  %i.hx = zext i16 %i.hw to i32
  %.not.i98.i = icmp slt i32 %.sroa.11184.0248.i, %.sroa.0178.0247.i
  %.pre289.i = add i32 %.sroa.11184.0248.i, 1     ; 3 uses
  br i1 %.not.i98.i, label %.critedge.i100.i, label %bb.af

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %i.hy = icmp slt i32 %.sroa.0178.0247.i, 0
  br i1 %i.hy, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i, label %bb.ag, !prof !149

bb.ag:                                            ; preds = %bb.af
  %.not.i131.i = icmp ugt i32 %.pre289.i, %.sroa.0178.0247.i
  br i1 %.not.i131.i, label %.preheader.i.i, label %.critedge.i100.i, !prof !149

.preheader.i.i:                                   ; preds = %bb.ag, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.ib, %.preheader.i.i ], [ %.sroa.0178.0247.i, %bb.ag ] ; 2 uses
  %i.hz = lshr i32 %.043.i.i, 1
  %i.ia = add i32 %.043.i.i, 8
  %i.ib = add i32 %i.ia, %i.hz                    ; 8 uses
  %i.ic = icmp ugt i32 %.pre289.i, %i.ib
  br i1 %i.ic, label %.preheader.i.i, label %.thread.i133.i, !llvm.loop !796

.thread.i133.i:                                   ; preds = %.preheader.i.i
  %i.id = icmp ugt i32 %i.ib, 178956970
  br i1 %i.id, label %.critedge.i148.i, label %bb.ah, !prof !149

.critedge.i148.i:                                 ; preds = %.thread.i133.i
  %i.ie = xor i32 %.sroa.0178.0247.i, -1
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i

bb.ah:                                            ; preds = %.thread.i133.i
  %.not49.i135.i = icmp eq i32 %.sroa.0178.0247.i, 0
  br i1 %.not49.i135.i, label %bb.ai, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i

bb.ai:                                            ; preds = %bb.ah
  %.not9.i.i.i145.i = icmp eq ptr %.sroa.21.0250.i, null
  br i1 %.not9.i.i.i145.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = zext nneg i32 %i.ib to i64
  %i.ig = mul nuw nsw i64 %i.if, 24
  %i.ih = call ptr @hb_malloc(i64 noundef %i.ig) #16 ; 4 uses
  %.not10.i.i.i146.i = icmp eq ptr %i.ih, null
  br i1 %.not10.i.i.i146.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %18, !prof !149

18:                                               ; preds = %bb.aj
  %.not.i.i.i.i147.i = icmp eq i32 %.sroa.11184.0248.i, 0
  br i1 %.not.i.i.i.i147.i, label %.critedge.i100.i, label %bb.ak, !prof !149

bb.ak:                                            ; preds = %18
  %i.ii = zext i32 %.sroa.11184.0248.i to i64
  %i.ij = mul nuw nsw i64 %i.ii, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 1 %.sroa.21.0250.i, i64 %i.ij, i1 false), !alias.scope !819
  br label %.critedge.i100.i

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i: ; preds = %bb.ai, %bb.ah
  %i.ik = phi ptr [ null, %bb.ai ], [ %.sroa.21.0250.i, %bb.ah ]
  %i.il = zext nneg i32 %i.ib to i64
  %i.im = mul nuw nsw i64 %i.il, 24
  %i.in = call ptr @hb_realloc(ptr noundef %i.ik, i64 noundef %i.im) #16 ; 2 uses
  %.not22.i137.i = icmp eq ptr %i.in, null
  br i1 %.not22.i137.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %.critedge.i100.i, !prof !215

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.aj
  %i.io = xor i32 %.sroa.0178.0247.i, -1
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i

_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, %.critedge.i148.i, %bb.af
  %.sroa.0178.4.i = phi i32 [ %.sroa.0178.0247.i, %bb.af ], [ %i.io, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i ], [ %i.ie, %.critedge.i148.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

.critedge.i100.i:                                 ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.ak, %18, %bb.ag, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %.sroa.0178.2.i = phi i32 [ %.sroa.0178.0247.i, %bb.ag ], [ %i.ib, %18 ], [ %i.ib, %bb.ak ], [ %i.ib, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.0178.0247.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ]
  %.sroa.21.3.i = phi ptr [ %.sroa.21.0250.i, %bb.ag ], [ %i.ih, %18 ], [ %i.ih, %bb.ak ], [ %i.in, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.21.0250.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ] ; 2 uses
  %i.ip = zext i32 %.sroa.11184.0248.i to i64
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.21.3.i, i64 %i.ip ; 3 uses
  store i32 %.val1.i.i.i, ptr %i.iq, align 8, !tbaa !128
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i64 %i.ht, ptr %.sroa.4154.0..sroa_idx.i, align 8, !tbaa !309
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i32 %i.hx, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !128
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %.critedge.i100.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i
  %.sroa.0178.3.i = phi i32 [ %.sroa.0178.2.i, %.critedge.i100.i ], [ %.sroa.0178.4.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.11184.1.i = phi i32 [ %.pre289.i, %.critedge.i100.i ], [ %.sroa.11184.0248.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.21.4.i = phi ptr [ %.sroa.21.3.i, %.critedge.i100.i ], [ %.sroa.21.0250.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 8 uses
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.ir = zext i32 %.sroa.7163.0252.i to i64
  %i.is = shl nuw nsw i64 %i.ir, 4
  %scevgep.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 %i.is
  %scevgep378.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 16
  %i.it = add i32 %.sroa.7163.0252.i, -1
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 4
  %scevgep379.i = getelementptr i8, ptr %scevgep378.i, i64 %i.iv
  %.not.i.i.i.i.i.i.i.i101.i439 = icmp eq i32 %.sroa.7163.0252.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i101.i439, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !prof !244

bb.al:                                            ; preds = %"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !781

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.al
  %.sroa.0162.1.i441 = phi ptr [ %i.ix, %bb.al ], [ %.sroa.0162.0253.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ] ; 2 uses
  %.sroa.7163.1.i440 = phi i32 [ %i.iw, %bb.al ], [ %.sroa.7163.0252.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ]
  %i.iw = add i32 %.sroa.7163.1.i440, -1          ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i", label %"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"

"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i441, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i441, i64 20
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = trunc i32 %i.iz to i1
  br i1 %i.ja, label %"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", label %bb.al, !llvm.loop !781

"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i", !llvm.loop !781

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, %"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  %.sroa.7163.2.i = phi i32 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.iw, %"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0162.2.i = phi ptr [ %scevgep.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.ix, %"_ZNK4$_26clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_22LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_32LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ %scevgep379.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i90.i = icmp ne ptr %.sroa.0162.2.i, %i.ds
  %i.jb = icmp ne i32 %.sroa.7163.2.i, 0
  %i.jc = or i1 %i.jb, %.not.i.i.i.i90.i
  br i1 %i.jc, label %bb.z, label %._crit_edge.i

.lr.ph271.i.unr-lcssa:                            ; preds = %.lr.ph262.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph271.i, label %.lr.ph262.i.epil.preheader

.lr.ph262.i.epil.preheader:                       ; preds = %.lr.ph271.i.unr-lcssa, %.lr.ph262.i.preheader
  %.070261.i.epil.init = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph262.i.preheader ], [ %i.kj, %.lr.ph271.i.unr-lcssa ]
  %.071260.i.epil.init = phi i64 [ 0, %.lr.ph262.i.preheader ], [ %i.ki, %.lr.ph271.i.unr-lcssa ]
  %.075259.i.epil.init = phi i64 [ %.069.lcssa323.i, %.lr.ph262.i.preheader ], [ %i.kh, %.lr.ph271.i.unr-lcssa ]
  %lcmp.mod512 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod512)
  br label %.lr.ph262.i.epil

.lr.ph262.i.epil:                                 ; preds = %.lr.ph262.i.epil, %.lr.ph262.i.epil.preheader
  %.070261.i.epil = phi ptr [ %i.jh, %.lr.ph262.i.epil ], [ %.070261.i.epil.init, %.lr.ph262.i.epil.preheader ] ; 2 uses
  %.071260.i.epil = phi i64 [ %i.jg, %.lr.ph262.i.epil ], [ %.071260.i.epil.init, %.lr.ph262.i.epil.preheader ]
  %.075259.i.epil = phi i64 [ %i.jf, %.lr.ph262.i.epil ], [ %.075259.i.epil.init, %.lr.ph262.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph262.i.epil ], [ 0, %.lr.ph262.i.epil.preheader ]
  %.sroa.3.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.070261.i.epil, i64 16
  %.sroa.3.0.copyload.i.epil = load i32, ptr %.sroa.3.0..sroa_idx.i.epil, align 8, !tbaa !128
  %i.jd = shl i32 %.sroa.3.0.copyload.i.epil, 3
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = add i64 %.075259.i.epil, %i.je          ; 2 uses
  %i.jg = add i64 %.071260.i.epil, %i.je          ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.070261.i.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph271.i, label %.lr.ph262.i.epil, !llvm.loop !800

.lr.ph271.i:                                      ; preds = %.lr.ph262.i.epil, %.lr.ph271.i.unr-lcssa
  %.lcssa488 = phi i64 [ %i.kh, %.lr.ph271.i.unr-lcssa ], [ %i.jf, %.lr.ph262.i.epil ]
  %.lcssa487 = phi i64 [ %i.ki, %.lr.ph271.i.unr-lcssa ], [ %i.jg, %.lr.ph262.i.epil ]
  %i.ji = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.js = icmp ugt i64 %i.fw, 65535
  br label %bb.am

.lr.ph262.i:                                      ; preds = %.lr.ph262.i, %.lr.ph262.i.preheader.new
  %.070261.i = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph262.i.preheader.new ], [ %i.kj, %.lr.ph262.i ] ; 5 uses
  %.071260.i = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %i.ki, %.lr.ph262.i ]
  %.075259.i = phi i64 [ %.069.lcssa323.i, %.lr.ph262.i.preheader.new ], [ %i.kh, %.lr.ph262.i ]
  %niter = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %niter.next.3, %.lr.ph262.i ]
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.070261.i, i64 16
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !128
  %i.jt = shl i32 %.sroa.3.0.copyload.i, 3
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = add i64 %.075259.i, %i.ju
  %i.jw = add i64 %.071260.i, %i.ju
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 40
  %.sroa.3.0.copyload.i.1 = load i32, ptr %.sroa.3.0..sroa_idx.i.1, align 8, !tbaa !128
  %i.jx = shl i32 %.sroa.3.0.copyload.i.1, 3
  %i.jy = zext i32 %i.jx to i64                   ; 2 uses
  %i.jz = add i64 %i.jv, %i.jy
  %i.ka = add i64 %i.jw, %i.jy
  %.sroa.3.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 64
  %.sroa.3.0.copyload.i.2 = load i32, ptr %.sroa.3.0..sroa_idx.i.2, align 8, !tbaa !128
  %i.kb = shl i32 %.sroa.3.0.copyload.i.2, 3
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = add i64 %i.jz, %i.kc
  %i.ke = add i64 %i.ka, %i.kc
  %.sroa.3.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 88
  %.sroa.3.0.copyload.i.3 = load i32, ptr %.sroa.3.0..sroa_idx.i.3, align 8, !tbaa !128
  %i.kf = shl i32 %.sroa.3.0.copyload.i.3, 3
  %i.kg = zext i32 %i.kf to i64                   ; 2 uses
  %i.kh = add i64 %i.kd, %i.kg                    ; 3 uses
  %i.ki = add i64 %i.ke, %i.kg                    ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.070261.i, i64 96 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph271.i.unr-lcssa, label %.lr.ph262.i

bb.am:                                            ; preds = %.thread.i, %.lr.ph271.i
  %.061269.i = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph271.i ], [ %i.nr, %.thread.i ] ; 4 uses
  %.062268.i = phi i1 [ false, %.lr.ph271.i ], [ %.3226.i, %.thread.i ] ; 2 uses
  %.172267.i = phi i64 [ %.lcssa487, %.lr.ph271.i ], [ %.374225.i, %.thread.i ] ; 3 uses
  %.176266.i = phi i64 [ %.lcssa488, %.lr.ph271.i ], [ %.378224.i, %.thread.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.061269.i, align 8, !tbaa !128 ; 10 uses
  %.sroa.8152.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 8
  %.sroa.8152.0.copyload.i = load i64, ptr %.sroa.8152.0..061.sroa_idx.i, align 8, !tbaa !309
  %.sroa.9.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 16
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..061.sroa_idx.i, align 8, !tbaa !128
  %i.kk = load ptr, ptr %i.ac, align 8, !tbaa !326 ; 5 uses
  %.not.i102.i = icmp eq ptr %i.kk, null
  br i1 %.not.i102.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kl = mul i32 %.sroa.0.0.copyload.i, 506952113
  %i.km = and i32 %i.kl, 1073741823
  %i.kn = load i32, ptr %i.ji, align 8, !tbaa !327
  %i.ko = urem i32 %i.km, %i.kn                   ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i64              ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ks = load i32, ptr %i.kr, align 4            ; 2 uses
  %i.kt = and i32 %i.ks, 2
  %.not15.i.i.i104.i = icmp eq i32 %i.kt, 0
  br i1 %.not15.i.i.i104.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %.lr.ph.i.i.i105.i

.lr.ph.i.i.i105.i:                                ; preds = %bb.an
  %i.ku = load i32, ptr %i.ab, align 4
  %i.kv = load i32, ptr %i.kq, align 4, !tbaa !128
  %i.kw = icmp eq i32 %i.kv, %.sroa.0.0.copyload.i
  br i1 %i.kw, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i

bb.ao:                                            ; preds = %.lr.ph.i.i106.i
  %i.kx = load i32, ptr %i.lh, align 4, !tbaa !128
  %i.ky = icmp eq i32 %i.kx, %.sroa.0.0.copyload.i
  br i1 %i.ky, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i, !llvm.loop !783

._crit_edge.i.i110.i:                             ; preds = %bb.ao, %.lr.ph.i.i.i105.i
  %.lcssa10.i.i111.i = phi i32 [ %i.ks, %.lr.ph.i.i.i105.i ], [ %i.lj, %bb.ao ]
  %i.kz = phi i64 [ %i.kp, %.lr.ph.i.i.i105.i ], [ %i.lg, %bb.ao ]
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kz
  %i.lb = trunc i32 %.lcssa10.i.i111.i to i1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %spec.select.i.i112.i = select i1 %i.lb, ptr %i.lc, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i

.lr.ph.i.i106.i:                                  ; preds = %.lr.ph.i.i.i105.i, %bb.ao
  %.01016.i13.i.i107.i = phi i32 [ %i.lf, %bb.ao ], [ %i.ko, %.lr.ph.i.i.i105.i ]
  %.017.i12.i.i108.i = phi i32 [ %i.ld, %bb.ao ], [ 0, %.lr.ph.i.i.i105.i ]
  %i.ld = add i32 %.017.i12.i.i108.i, 1           ; 2 uses
  %i.le = add i32 %i.ld, %.01016.i13.i.i107.i
  %i.lf = and i32 %i.le, %i.ku                    ; 2 uses
  %i.lg = zext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %i.lk = and i32 %i.lj, 2
  %.not.i.i.i109.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i109.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ao, !llvm.loop !783

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i: ; preds = %.lr.ph.i.i106.i, %._crit_edge.i.i110.i, %bb.an, %bb.am
  %.0.i113.i = phi ptr [ @_hb_NullPool, %bb.am ], [ %spec.select.i.i112.i, %._crit_edge.i.i110.i ], [ @_hb_NullPool, %bb.an ], [ @_hb_NullPool, %.lr.ph.i.i106.i ]
  %i.ll = load ptr, ptr %.0.i113.i, align 8, !tbaa !329
  %i.lm = load i32, ptr %15, align 8, !tbaa !349  ; 2 uses
  %i.ln = load i16, ptr %i.ll, align 1, !tbaa !130
  %i.lo = call noundef i16 @llvm.bswap.i16(i16 %i.ln)
  %i.lp = zext i16 %i.lo to i32
end_hunk_0
begin_hunk_1_@_ZN5graph7graph_t22sort_shortest_distanceEv:bb.a
  %i.cl = icmp ugt i32 %i.ce, %i.ck
  br i1 %i.cl, label %.preheader.i132, label %.thread.i134, !llvm.loop !20

.thread.i134:                                     ; preds = %.preheader.i132
  %i.cm = icmp ugt i32 %i.ck, 268435455
  br i1 %i.cm, label %.critedge.i149, label %bb.p, !prof !149

.critedge.i149:                                   ; preds = %.thread.i134
  %i.cn = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

bb.p:                                             ; preds = %.thread.i134
  %.not49.i136 = icmp eq i32 %.sroa.0208.0434, 0
  %i.co = shl nuw i32 %i.ck, 4
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  br i1 %.not49.i136, label %bb.q, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137

bb.q:                                             ; preds = %bb.p
  %i.cq = tail call ptr @hb_malloc(i64 noundef %i.cp) #16 ; 3 uses
  %.not10.i.i.i147 = icmp eq ptr %i.cq, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %bb.r, !prof !149

bb.r:                                             ; preds = %bb.q
  %i.cr = zext i32 %.sroa.22.0435 to i64
  %i.cs = shl nuw nsw i64 %i.cr, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull readonly align 8 %.sroa.42.0436, i64 %i.cs, i1 false), !alias.scope !891
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137: ; preds = %bb.p
  %i.ct = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.42.0436, i64 noundef %i.cp) #16 ; 2 uses
  %.not22.i138 = icmp eq ptr %i.ct, null
  br i1 %.not22.i138, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !215

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144: ; preds = %bb.q, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137
  %i.cu = xor i32 %.sroa.0208.0434, -1
  br label %.lr.ph428.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.r, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, %bb.o
  %.sroa.0208.13.ph = phi i32 [ %i.ck, %bb.r ], [ %i.ck, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.0208.0434, %bb.o ] ; 2 uses
  %.sroa.42.16.ph = phi ptr [ %i.cq, %bb.r ], [ %i.ct, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.42.0436, %bb.o ] ; 2 uses
  %switch = icmp ult i32 %.sroa.22.0435, 3
  br i1 %switch, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, %.critedge.i149, %bb.n
  %.sroa.0208.8364521 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.cu, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %i.cn, %.critedge.i149 ], [ %.sroa.0208.0434, %bb.n ] ; 3 uses
  %.sroa.22.5366520 = phi i32 [ %i.ce, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.0435, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.22.0435, %.critedge.i149 ], [ %.sroa.22.0435, %bb.n ] ; 5 uses
  %.sroa.42.8368519 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.0436, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %.sroa.42.0436, %.critedge.i149 ], [ %.sroa.42.0436, %bb.n ] ; 10 uses
  %.pre460 = load i64, ptr %.sroa.42.8368519, align 8, !tbaa !391 ; 3 uses
  br label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.preheader, %bb.v
  %i.cv = phi i32 [ %i.dq, %bb.v ], [ 2, %.lr.ph428.preheader ] ; 4 uses
  %i.cw = phi i32 [ %i.dp, %bb.v ], [ 1, %.lr.ph428.preheader ] ; 3 uses
  %.020.i427 = phi i32 [ %.0.i33, %bb.v ], [ 0, %.lr.ph428.preheader ]
  %i.cx = icmp ult i32 %i.cv, %.sroa.22.5366520   ; 2 uses
  %i.cy = zext i32 %.020.i427 to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368519, i64 %i.cy ; 2 uses
  %i.da = zext i32 %i.cw to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368519, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !391 ; 3 uses
  %.not.i32 = icmp sgt i64 %.pre460, %i.dc
  br i1 %.not.i32, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph428
  br i1 %i.cx, label %bb.t, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.t:                                             ; preds = %bb.s
  %i.dd = zext i32 %i.cv to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368519, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !391 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre460, %i.df
  br i1 %.not27.i, label %.thread370, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.u:                                             ; preds = %.lr.ph428
  br i1 %i.cx, label %..thread370_crit_edge, label %bb.v

..thread370_crit_edge:                            ; preds = %bb.u
  %.phi.trans.insert = zext i32 %i.cv to i64
  %.phi.trans.insert461 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368519, i64 %.phi.trans.insert
  %.pre462 = load i64, ptr %.phi.trans.insert461, align 8, !tbaa !391
  br label %.thread370

.thread370:                                       ; preds = %..thread370_crit_edge, %bb.t
  %i.dg = phi i64 [ %.pre462, %..thread370_crit_edge ], [ %i.df, %bb.t ]
  %i.dh = icmp slt i64 %i.dc, %i.dg
  %spec.select.i = select i1 %i.dh, i32 %i.cw, i32 %i.cv ; 2 uses
  %.pre463 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert464 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368519, i64 %.pre463
  %.pre465 = load i64, ptr %.phi.trans.insert464, align 8, !tbaa !309
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread370
  %i.di = phi i64 [ %i.dc, %bb.u ], [ %.pre465, %.thread370 ]
  %.pre-phi = phi i64 [ %i.da, %bb.u ], [ %.pre463, %.thread370 ]
  %.0.i33 = phi i32 [ %i.cw, %bb.u ], [ %spec.select.i, %.thread370 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.8368519, i64 %.pre-phi ; 2 uses
  store i64 %i.di, ptr %i.cz, align 8, !tbaa !309
  store i64 %.pre460, ptr %i.dj, align 8, !tbaa !309
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !128
  %i.dn = load i32, ptr %i.dl, align 8, !tbaa !128
  store i32 %i.dn, ptr %i.dk, align 8, !tbaa !128
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !128
  %i.do = shl i32 %.0.i33, 1                      ; 2 uses
  %i.dp = or disjoint i32 %i.do, 1                ; 2 uses
  %i.dq = add nuw i32 %i.do, 2
  %i.dr = icmp ult i32 %i.dp, %.sroa.22.5366520
  br i1 %i.dr, label %.lr.ph428, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.v, %bb.t, %bb.s, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.42.8369 = phi ptr [ %.sroa.42.16.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.42.8368519, %bb.s ], [ %.sroa.42.8368519, %bb.t ], [ %.sroa.42.8368519, %bb.v ] ; 3 uses
  %.sroa.22.5367 = phi i32 [ %i.ce, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.22.5366520, %bb.s ], [ %.sroa.22.5366520, %bb.t ], [ %.sroa.22.5366520, %bb.v ]
  %.sroa.0208.8365 = phi i32 [ %.sroa.0208.13.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0208.8364521, %bb.s ], [ %.sroa.0208.8364521, %bb.t ], [ %.sroa.0208.8364521, %bb.v ] ; 3 uses
  %i.ds = load i32, ptr %i.r, align 4, !tbaa !182 ; 2 uses
  %i.dt = icmp uge i32 %.023437, %i.ds
  %i.du = load i8, ptr %i.ab, align 1, !tbaa !315, !range !126, !noundef !127
  %i.dv = trunc nuw i8 %i.du to i1                ; 2 uses
  %brmerge.i49.not = and i1 %i.dt, %i.dv
  br i1 %brmerge.i49.not, label %.thread396.sink.split, label %_ZN5graph7graph_t13check_successEb.exit50, !prof !252

_ZN5graph7graph_t13check_successEb.exit50:        ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  br i1 %i.dv, label %bb.w, label %.thread396, !prof !165

bb.w:                                             ; preds = %_ZN5graph7graph_t13check_successEb.exit50
  %i.dw = add i32 %.023437, 1                     ; 2 uses
  %.not.i51 = icmp ult i32 %.023437, %i.ds
  br i1 %.not.i51, label %bb.y, label %bb.x, !prof !131

bb.x:                                             ; preds = %bb.w
  store i32 %i.ca, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.y:                                             ; preds = %bb.w
  %i.dx = load ptr, ptr %i.cb, align 8, !tbaa !183
  %i.dy = zext i32 %.023437 to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.x, %bb.y
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.x ], [ %i.dz, %bb.y ]
  store i32 %.sroa.2.0.copyload.i, ptr %.0.i52, align 4, !tbaa !128
  %i.ea = load i32, ptr %i.b, align 4, !tbaa !316
  %.not.i53 = icmp ult i32 %.sroa.2.0.copyload.i, %i.ea
  br i1 %.not.i53, label %bb.aa, label %bb.z, !prof !131

bb.z:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.aa:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.eb = load ptr, ptr %i.bb, align 8, !tbaa !322
  %i.ec = zext i32 %.sroa.2.0.copyload.i to i64
  %i.ed = getelementptr inbounds nuw [216 x i8], ptr %i.eb, i64 %i.ec
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.z, %bb.aa
  %.0.i54 = phi ptr [ @_hb_CrapPool, %bb.z ], [ %i.ed, %bb.aa ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i54, i64 20
  %.val.i = load i32, ptr %i.ee, align 4, !tbaa !287, !noalias !892 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i54, i64 24
  %.val1.i = load ptr, ptr %i.ef, align 8, !tbaa !288, !noalias !892 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i54, i64 36
  %.val2.i = load i32, ptr %i.eg, align 4, !tbaa !287, !noalias !892 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i54, i64 40
  %.val3.i = load ptr, ptr %i.eh, align 8, !tbaa !288, !noalias !892 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.au
  %.sroa.0208.1.ph.ph = phi i32 [ %.sroa.0208.8365, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0208.2, %bb.au ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5367, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.au ]
  %.sroa.42.1.ph.ph = phi ptr [ %.sroa.42.8369, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.42.2, %bb.au ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.hn, %bb.au ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.ho, %bb.au ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.au ]
  %.sroa.0172.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0172.0, %bb.au ]
  %.1.ph.ph = phi i32 [ %.022438, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.2, %bb.au ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.ej
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.at
  %.sroa.0208.1.ph = phi i32 [ %.sroa.0208.2, %bb.at ], [ %.sroa.0208.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.at ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.42.1.ph = phi ptr [ %.sroa.42.2, %bb.at ], [ %.sroa.42.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.at ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.at ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0172.0.ph = phi ptr [ %.sroa.0172.0, %bb.at ], [ %.sroa.0172.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.1.ph = phi i32 [ %.2, %bb.at ], [ %.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.ek = icmp ne i32 %.sroa.17.0.ph, 0
  %i.el = select i1 %.not.i3.i, i1 true, i1 %i.ek
  %.not.i.i.i.i58 = icmp eq i32 %.sroa.17.0.ph, 0 ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i58, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !149
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0208.1 = phi i32 [ %.sroa.0208.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0208.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 16 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.42.1 = phi ptr [ %.sroa.42.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.42.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.hl, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0172.0 = phi ptr [ %i.hm, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0172.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.1 = phi i32 [ %.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 4 uses
  %.not.i.i55 = icmp ne ptr %.sroa.0172.0, %i.ei
  %i.em = icmp ne i32 %.sroa.7.0, 0
  %i.en = select i1 %.not.i.i55, i1 true, i1 %i.em
  %brmerge = select i1 %i.en, i1 true, i1 %i.el
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i56 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i57 = select i1 %.not.i.i56, ptr %spec.select.i.i.i.i, ptr %.sroa.0172.0
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 8 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !299 ; 2 uses
  %.not.i59 = icmp ult i32 %i.ep, %i.ah
  br i1 %.not.i59, label %bb.ac, label %bb.ab, !prof !131

bb.ab:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  store i32 %i.ca, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

bb.ac:                                            ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph509, i64 %i.eq ; 2 uses
  %.pre466 = load i32, ptr %i.er, align 4, !tbaa !128
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit61

_ZN11hb_vector_tIjLb0EEixEi.exit61:               ; preds = %bb.ab, %bb.ac
  %i.es = phi i32 [ %i.ca, %bb.ab ], [ %.pre466, %bb.ac ]
  %.0.i60 = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %i.er, %bb.ac ]
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %.0.i60, align 4, !tbaa !128
  %i.eu = load i32, ptr %i.eo, align 4, !tbaa !299 ; 3 uses
  %i.ev = load i32, ptr %i.b, align 4, !tbaa !316
  %.not.i62 = icmp ult i32 %i.eu, %i.ev
  br i1 %.not.i62, label %bb.ae, label %bb.ad, !prof !131

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre467 = load i32, ptr %i.eo, align 4, !tbaa !299
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64

bb.ae:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit61
  %i.ew = load ptr, ptr %i.bb, align 8, !tbaa !322
  %i.ex = zext i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw [216 x i8], ptr %i.ew, i64 %i.ex
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64: ; preds = %bb.ad, %bb.ae
  %i.ez = phi i32 [ %.pre467, %bb.ad ], [ %i.eu, %bb.ae ] ; 4 uses
  %.0.i63 = phi ptr [ @_hb_CrapPool, %bb.ad ], [ %i.ey, %bb.ae ] ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i63, i64 80
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !320
  %.not.i65 = icmp ult i32 %i.ez, %i.ah
  br i1 %.not.i65, label %bb.ag, label %bb.af, !prof !131

bb.af:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64
  store i32 %i.ca, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit67

bb.ag:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit64
  %i.fc = zext nneg i32 %i.ez to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13196.0.ph509, i64 %i.fc
  %.pre468 = load i32, ptr %i.fd, align 4, !tbaa !128
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit67

_ZN11hb_vector_tIjLb0EEixEi.exit67:               ; preds = %bb.af, %bb.ag
  %i.fe = phi i32 [ %i.ca, %bb.af ], [ %.pre468, %bb.ag ]
  %.not = icmp eq i32 %i.fb, %i.fe
  br i1 %.not, label %bb.ah, label %_ZN19hb_priority_queue_tIlE6insertElj.exit

bb.ah:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit67
  %i.ff = add i32 %.1, 1                          ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i63, i64 56
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !388
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i63, i64 76
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !362 ; 3 uses
  %.not.i.i68 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i68, label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !340
  %i.fm = load ptr, ptr %.0.i63, align 8, !tbaa !341
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = icmp eq i32 %i.fj, 1
  br i1 %i.fq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fr = sdiv i64 %i.fp, -2
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71

bb.ak:                                            ; preds = %bb.ai
  %i.fs = sub nsw i64 0, %i.fp
  br label %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71

_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71: ; preds = %bb.ah, %bb.aj, %bb.ak
  %.1.i.i69 = phi i64 [ 0, %bb.ah ], [ %i.fr, %bb.aj ], [ %i.fs, %bb.ak ]
  %i.ft = add nsw i64 %.1.i.i69, %i.fh
  %.sroa.speculate.load.false.sroa.speculated.i70 = tail call i64 @llvm.smax.i64(i64 %i.ft, i64 0)
  %i.fu = tail call i64 @llvm.umin.i64(i64 %.sroa.speculate.load.false.sroa.speculated.i70, i64 8796093022207)
  %i.fv = icmp ugt i32 %i.fj, 2
  %i.fw = shl nuw nsw i64 %i.fu, 18
  %i.fx = select i1 %i.fv, i64 0, i64 %i.fw
  %i.fy = and i32 %.1, 262143
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = or disjoint i64 %i.fx, %i.fz            ; 4 uses
  %.not.i72 = icmp slt i32 %.sroa.22.1, %.sroa.0208.1
  %i.gb = add i32 %.sroa.22.1, 1                  ; 5 uses
  br i1 %.not.i72, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77, label %bb.al

bb.al:                                            ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71
  %i.gc = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.gc, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread, label %bb.am, !prof !149

bb.am:                                            ; preds = %bb.al
  %.not.i151 = icmp ugt i32 %i.gb, %.sroa.0208.1
  br i1 %.not.i151, label %.preheader.i153, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, !prof !149

.preheader.i153:                                  ; preds = %bb.am, %.preheader.i153
  %.043.i154 = phi i32 [ %i.gf, %.preheader.i153 ], [ %.sroa.0208.1, %bb.am ] ; 2 uses
  %i.gd = lshr i32 %.043.i154, 1
  %i.ge = add i32 %.043.i154, 8
  %i.gf = add i32 %i.ge, %i.gd                    ; 8 uses
  %i.gg = icmp ugt i32 %i.gb, %i.gf
  br i1 %i.gg, label %.preheader.i153, label %.thread.i155, !llvm.loop !20

.thread.i155:                                     ; preds = %.preheader.i153
  %i.gh = icmp ugt i32 %i.gf, 268435455
  br i1 %i.gh, label %.critedge.i170, label %bb.an, !prof !149

.critedge.i170:                                   ; preds = %.thread.i155
  %i.gi = xor i32 %.sroa.0208.1, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread

bb.an:                                            ; preds = %.thread.i155
  %.not49.i157 = icmp eq i32 %.sroa.0208.1, 0
  br i1 %.not49.i157, label %bb.ao, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158

bb.ao:                                            ; preds = %bb.an
  %.not9.i.i.i167 = icmp eq ptr %.sroa.42.1, null
  br i1 %.not9.i.i.i167, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gj = shl nuw i32 %i.gf, 4
  %i.gk = zext i32 %i.gj to i64
  %i.gl = tail call ptr @hb_malloc(i64 noundef %i.gk) #16 ; 4 uses
  %.not10.i.i.i168 = icmp eq ptr %i.gl, null
  br i1 %.not10.i.i.i168, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165, label %1, !prof !149

1:                                                ; preds = %bb.ap
  %.not.i.i.i.i169 = icmp eq i32 %.sroa.22.1, 0
  br i1 %.not.i.i.i.i169, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, label %bb.aq, !prof !149

bb.aq:                                            ; preds = %1
  %i.gm = zext i32 %.sroa.22.1 to i64
  %i.gn = shl nuw nsw i64 %i.gm, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gl, ptr nonnull readonly align 1 %.sroa.42.1, i64 %i.gn, i1 false), !alias.scope !893
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158: ; preds = %bb.ao, %bb.an
  %i.go = phi ptr [ null, %bb.ao ], [ %.sroa.42.1, %bb.an ]
  %i.gp = shl nuw i32 %i.gf, 4
  %i.gq = zext i32 %i.gp to i64
  %i.gr = tail call ptr @hb_realloc(ptr noundef %i.go, i64 noundef %i.gq) #16 ; 2 uses
  %.not22.i159 = icmp eq ptr %i.gr, null
  br i1 %.not22.i159, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, !prof !215

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158, %bb.ap
  %i.gs = xor i32 %.sroa.0208.1, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread: ; preds = %.critedge.i170, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165, %bb.al
  %.sroa.0208.14 = phi i32 [ %.sroa.0208.1, %bb.al ], [ %i.gs, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i165 ], [ %i.gi, %.critedge.i170 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385: ; preds = %1, %bb.aq, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158, %bb.am
  %.sroa.0208.9.ph = phi i32 [ %.sroa.0208.1, %bb.am ], [ %i.gf, %1 ], [ %i.gf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158 ], [ %i.gf, %bb.aq ]
  %.sroa.42.9.ph = phi ptr [ %.sroa.42.1, %bb.am ], [ %i.gl, %1 ], [ %i.gr, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i158 ], [ %i.gl, %bb.aq ] ; 2 uses
  %i.gt = zext i32 %.sroa.22.1 to i64
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.9.ph, i64 %i.gt ; 2 uses
  store i64 %i.ga, ptr %i.gu, align 8, !tbaa !309
  %.sroa.4289.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i32 %i.ez, ptr %.sroa.4289.0..sroa_idx388, align 8, !tbaa !128
  br label %bb.ar

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77: ; preds = %_ZNK5graph7graph_t8vertex_t17modified_distanceEj.exit71
  %i.gv = zext i32 %.sroa.22.1 to i64
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.1, i64 %i.gv ; 2 uses
  store i64 %i.ga, ptr %i.gw, align 8, !tbaa !309
  %.sroa.4289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.ez, ptr %.sroa.4289.0..sroa_idx, align 8, !tbaa !128
  %i.gx = icmp slt i32 %.sroa.0208.1, 0
  br i1 %i.gx, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %bb.ar, !prof !392

bb.ar:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77
  %.sroa.42.9391 = phi ptr [ %.sroa.42.9.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385 ], [ %.sroa.42.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ] ; 5 uses
  %.sroa.0208.9390 = phi i32 [ %.sroa.0208.9.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread385 ], [ %.sroa.0208.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ] ; 3 uses
  %i.gy = icmp eq i32 %.sroa.22.1, 0
  br i1 %i.gy, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %.lr.ph432

.lr.ph432:                                        ; preds = %bb.ar, %bb.as
  %.08.i26431 = phi i32 [ %i.ha, %bb.as ], [ %.sroa.22.1, %bb.ar ] ; 2 uses
  %i.gz = add i32 %.08.i26431, -1
  %i.ha = lshr i32 %i.gz, 1                       ; 3 uses
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.9391, i64 %i.hb ; 3 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !391 ; 2 uses
  %.not.i27 = icmp sgt i64 %i.hd, %i.ga
  br i1 %.not.i27, label %bb.as, label %_ZN19hb_priority_queue_tIlE6insertElj.exit

bb.as:                                            ; preds = %.lr.ph432
  %i.he = zext i32 %.08.i26431 to i64
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.42.9391, i64 %i.he ; 2 uses
  store i64 %i.hd, ptr %i.hf, align 8, !tbaa !309
  store i64 %i.ga, ptr %i.hc, align 8, !tbaa !309
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hg, align 8, !tbaa !128
  %i.hj = load i32, ptr %i.hh, align 8, !tbaa !128
  store i32 %i.hj, ptr %i.hg, align 8, !tbaa !128
  store i32 %i.hi, ptr %i.hh, align 8, !tbaa !128
  %i.hk = icmp eq i32 %i.ha, 0
  br i1 %i.hk, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %.lr.ph432

_ZN19hb_priority_queue_tIlE6insertElj.exit:       ; preds = %bb.as, %.lr.ph432, %bb.ar, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread, %_ZN11hb_vector_tIjLb0EEixEi.exit67
  %.sroa.0208.2 = phi i32 [ %.sroa.0208.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %.sroa.0208.14, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %.sroa.0208.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ %.sroa.0208.9390, %bb.ar ], [ %.sroa.0208.9390, %.lr.ph432 ], [ %.sroa.0208.9390, %bb.as ] ; 3 uses
  %.sroa.22.2 = phi i32 [ %.sroa.22.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %.sroa.22.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %i.gb, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ 1, %bb.ar ], [ %i.gb, %.lr.ph432 ], [ %i.gb, %bb.as ] ; 3 uses
  %.sroa.42.2 = phi ptr [ %.sroa.42.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %.sroa.42.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %.sroa.42.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ %.sroa.42.9391, %bb.ar ], [ %.sroa.42.9391, %.lr.ph432 ], [ %.sroa.42.9391, %bb.as ] ; 3 uses
  %.2 = phi i32 [ %.1, %_ZN11hb_vector_tIjLb0EEixEi.exit67 ], [ %i.ff, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77.thread ], [ %i.ff, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit77 ], [ %i.ff, %bb.ar ], [ %i.ff, %.lr.ph432 ], [ %i.ff, %bb.as ] ; 3 uses
  br i1 %.not.i.i56, label %bb.at, label %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i: ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit
  %i.hl = add i32 %.sroa.7.0, -1
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0172.0, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

bb.at:                                            ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit
  br i1 %.not.i.i.i.i58, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, label %bb.au, !prof !149

bb.au:                                            ; preds = %bb.at
  %i.hn = add i32 %.sroa.17.0.ph, -1
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

.critedge:                                        ; preds = %.loopexit, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread
  %.sroa.0208.0.lcssa = phi i32 [ -1, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread ], [ %.sroa.0208.1, %.loopexit ]
  %.sroa.42.0.lcssa = phi ptr [ %.sroa.42.14, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread ], [ %.sroa.42.1, %.loopexit ]
  %.023.lcssa = phi i32 [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit25.thread ], [ %i.dw, %.loopexit ]
  %i.hp = load i8, ptr %i.ab, align 1, !tbaa !315, !range !126, !noundef !127
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.av, label %_ZN5graph7graph_t13check_successEb.exit81.thread

bb.av:                                            ; preds = %.critedge
  store i8 0, ptr %i.ab, align 1, !tbaa !315
  br label %_ZN5graph7graph_t13check_successEb.exit81.thread

_ZN5graph7graph_t13check_successEb.exit81.thread: ; preds = %bb.av, %.critedge
  %i.hr = load i32, ptr %i.p, align 8, !tbaa !181
  br label %_ZN5graph7graph_t13check_successEb.exit84

_ZN5graph7graph_t13check_successEb.exit81:        ; preds = %bb.m
  %.pre472 = load i8, ptr %i.ab, align 1, !tbaa !315, !range !126 ; 2 uses
  %i.hs = load i32, ptr %i.p, align 8, !tbaa !181 ; 3 uses
  %i.ht = icmp slt i32 %i.hs, 0
  %i.hu = trunc nuw i8 %.pre472 to i1
  %brmerge.i83.not = and i1 %i.ht, %i.hu
  br i1 %brmerge.i83.not, label %bb.aw, label %_ZN5graph7graph_t13check_successEb.exit84

bb.aw:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit81
  store i8 0, ptr %i.ab, align 1, !tbaa !315
  br label %_ZN5graph7graph_t13check_successEb.exit84

_ZN5graph7graph_t13check_successEb.exit84:        ; preds = %_ZN5graph7graph_t13check_successEb.exit81.thread, %_ZN5graph7graph_t13check_successEb.exit81, %bb.aw
  %i.hv = phi i32 [ %i.hs, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %i.hs, %bb.aw ], [ %i.hr, %_ZN5graph7graph_t13check_successEb.exit81.thread ]
  %.023412528 = phi i32 [ %.023437, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %.023437, %bb.aw ], [ %.023.lcssa, %_ZN5graph7graph_t13check_successEb.exit81.thread ]
  %.sroa.42.0416527 = phi ptr [ %.sroa.42.0436, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %.sroa.42.0436, %bb.aw ], [ %.sroa.42.0.lcssa, %_ZN5graph7graph_t13check_successEb.exit81.thread ] ; 2 uses
  %.sroa.0208.0420526 = phi i32 [ %.sroa.0208.0434, %_ZN5graph7graph_t13check_successEb.exit81 ], [ %.sroa.0208.0434, %bb.aw ], [ %.sroa.0208.0.lcssa, %_ZN5graph7graph_t13check_successEb.exit81.thread ] ; 2 uses
  %i.hw = phi i8 [ %.pre472, %_ZN5graph7graph_t13check_successEb.exit81 ], [ 0, %bb.aw ], [ 0, %_ZN5graph7graph_t13check_successEb.exit81.thread ]
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hy = load i32, ptr %i.r, align 4, !tbaa !128
  %i.hz = load <2 x i32>, ptr %i.hx, align 8, !tbaa !128
  store i32 %i.hv, ptr %i.hx, align 8, !tbaa !128
  store i32 %i.hy, ptr %i.av, align 4, !tbaa !128
  store <2 x i32> %i.hz, ptr %i.p, align 8, !tbaa !128
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ib = load ptr, ptr %i.ax, align 8, !tbaa !348
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !348
  store ptr %i.ic, ptr %i.ax, align 8, !tbaa !348
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !348
  %i.id = load i32, ptr %i.b, align 4, !tbaa !368
  %i.ie = icmp ne i32 %.023412528, %i.id
  %i.if = trunc nuw i8 %i.hw to i1
  %brmerge.i86.not = and i1 %i.ie, %i.if
  br i1 %brmerge.i86.not, label %.thread396.sink.split, label %.thread396

.thread396.sink.split:                            ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, %_ZN5graph7graph_t13check_successEb.exit84, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, %bb.f, %.thread.i96
  %.sroa.0189.0331338.ph = phi i32 [ 0, %bb.f ], [ %.sroa.0189.0.ph508, %_ZN5graph7graph_t13check_successEb.exit84 ], [ -1, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ -1, %.thread.i96 ], [ %.sroa.0189.0.ph508, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  %.sroa.13196.0333337.ph = phi ptr [ null, %bb.f ], [ %.sroa.13196.0.ph509, %_ZN5graph7graph_t13check_successEb.exit84 ], [ null, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ null, %.thread.i96 ], [ %.sroa.13196.0.ph509, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  %.sroa.0208.4.ph = phi i32 [ %.sroa.0208.11296, %bb.f ], [ %.sroa.0208.0420526, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ %.sroa.0208.11296, %.thread.i96 ], [ %.sroa.0208.8365, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  %.sroa.42.4.ph = phi ptr [ %.sroa.42.12298, %bb.f ], [ %.sroa.42.0416527, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ], [ %.sroa.42.12298, %.thread.i96 ], [ %.sroa.42.8369, %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit ]
  store i8 0, ptr %i.ab, align 1, !tbaa !315
  br label %.thread396

.thread396:                                       ; preds = %_ZN5graph7graph_t13check_successEb.exit50, %.thread396.sink.split, %_ZN5graph7graph_t13check_successEb.exit84, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread
  %.sroa.0189.0331338 = phi i32 [ %.sroa.0189.0331338.ph, %.thread396.sink.split ], [ %i.al, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.0189.0.ph508, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.0189.0.ph508, %_ZN5graph7graph_t13check_successEb.exit50 ]
  %.sroa.13196.0333337 = phi ptr [ %.sroa.13196.0333337.ph, %.thread396.sink.split ], [ %i.aq, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.13196.0.ph509, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.13196.0.ph509, %_ZN5graph7graph_t13check_successEb.exit50 ]
  %.sroa.0208.4 = phi i32 [ %.sroa.0208.4.ph, %.thread396.sink.split ], [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.0208.0420526, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.0208.8365, %_ZN5graph7graph_t13check_successEb.exit50 ] ; 2 uses
  %.sroa.42.4 = phi ptr [ %.sroa.42.4.ph, %.thread396.sink.split ], [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38.thread ], [ %.sroa.42.0416527, %_ZN5graph7graph_t13check_successEb.exit84 ], [ %.sroa.42.8369, %_ZN5graph7graph_t13check_successEb.exit50 ] ; 2 uses
  %i.ig = add nsw i32 %.sroa.0189.0331338, -1
  %spec.select.i.i.i = icmp ult i32 %i.ig, -2
  br i1 %spec.select.i.i.i, label %bb.ax, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.ax:                                            ; preds = %.thread396
  tail call void @hb_free(ptr noundef %.sroa.13196.0333337) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, %bb.ax, %.thread396, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread, %_ZN5graph7graph_t13check_successEb.exit.thread
  %.sroa.0208.5 = phi i32 [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread ], [ %.sroa.0208.4, %bb.ax ], [ %.sroa.0208.11297, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.0208.4, %.thread396 ], [ %.sroa.0208.11297, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit ], [ %.sroa.0208.11296, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ]
  %.sroa.42.5 = phi ptr [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit.thread ], [ %.sroa.42.4, %bb.ax ], [ %.sroa.42.12299, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.42.4, %.thread396 ], [ %.sroa.42.12299, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit ], [ %.sroa.42.12298, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit38 ]
  %i.ih = add i32 %.sroa.0208.5, -1
  %spec.select.i.i.i.i88 = icmp ult i32 %i.ih, -2
  br i1 %spec.select.i.i.i.i88, label %bb.ay, label %_ZN19hb_priority_queue_tIlED2Ev.exit

bb.ay:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit
  tail call void @hb_free(ptr noundef %.sroa.42.5) #16
  br label %_ZN19hb_priority_queue_tIlED2Ev.exit

_ZN19hb_priority_queue_tIlED2Ev.exit:             ; preds = %bb.ay, %_ZN11hb_vector_tIjLb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph13will_overflowERNS_7graph_tEP11hb_vector_tINS_17overflow_record_tELb0EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #7 comdat {
bb.a:
  %2 = alloca %struct.hb_hashmap_t.296, align 8   ; 12 uses
  %3 = alloca %"struct.graph::overflow_record_t", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !353
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !350, !range !126, !noundef !127
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN5graph7graph_t16update_positionsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !182  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %.not15.i = icmp eq i32 %i.j, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

._crit_edge.i:                                    ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %bb.d
  store i8 0, ptr %i.d, align 2, !tbaa !350
  br label %_ZN5graph7graph_t16update_positionsEv.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %.lr.ph.i
  %.017.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ab, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ] ; 2 uses
  %.01416.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ad, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ] ; 2 uses
  %i.o = load i32, ptr %.01416.i, align 4, !tbaa !128 ; 2 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !316
  %.not.i.i = icmp ult i32 %i.o, %i.p
end_hunk_1
begin_hunk_2_@_ZN5graph7graph_t16update_distancesEv:bb.a
  br label %.lr.ph353.preheader

bb.i:                                             ; preds = %.thread.i103
  %.not49.i105 = icmp eq i32 %.sroa.0178.0360, 0
  %i.bz = shl nuw i32 %i.bv, 4
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  br i1 %.not49.i105, label %bb.j, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106

bb.j:                                             ; preds = %bb.i
  %i.cb = tail call ptr @hb_malloc(i64 noundef %i.ca) #16 ; 3 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i116, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %bb.k, !prof !149

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i32 %.sroa.22.0361 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 8 %.sroa.43.0362, i64 %i.cd, i1 false), !alias.scope !910
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106: ; preds = %bb.i
  %i.ce = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.43.0362, i64 noundef %i.ca) #16 ; 2 uses
  %.not22.i107 = icmp eq ptr %i.ce, null
  br i1 %.not22.i107, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, !prof !215

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113: ; preds = %bb.j, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106
  %i.cf = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit: ; preds = %bb.h
  %i.cg = icmp eq i32 %i.bp, 0
  br i1 %i.cg, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106, %bb.k, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6305 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.ce, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.0178.6301 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %i.bv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106 ], [ %i.bv, %bb.k ] ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.bp, 1
  br i1 %i.ch, label %.lr.ph353.preheader, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

.lr.ph353.preheader:                              ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, %.critedge.i118, %bb.g, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread
  %.sroa.0178.6301419 = phi i32 [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %i.cf, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %i.by, %.critedge.i118 ], [ %.sroa.0178.0360, %bb.g ] ; 3 uses
  %.sroa.22.5303418 = phi i32 [ %i.bp, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.0361, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.22.0361, %.critedge.i118 ], [ %.sroa.22.0361, %bb.g ] ; 5 uses
  %.sroa.43.6305417 = phi ptr [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113 ], [ %.sroa.43.0362, %.critedge.i118 ], [ %.sroa.43.0362, %bb.g ] ; 10 uses
  %.pre = load i64, ptr %.sroa.43.6305417, align 8, !tbaa !391 ; 3 uses
  br label %.lr.ph353

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %bb.o
  %i.ci = phi i32 [ %i.dd, %bb.o ], [ 2, %.lr.ph353.preheader ] ; 4 uses
  %i.cj = phi i32 [ %i.dc, %bb.o ], [ 1, %.lr.ph353.preheader ] ; 3 uses
  %.020.i352 = phi i32 [ %.0.i41, %bb.o ], [ 0, %.lr.ph353.preheader ]
  %i.ck = icmp ult i32 %i.ci, %.sroa.22.5303418   ; 2 uses
  %i.cl = zext i32 %.020.i352 to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cl ; 2 uses
  %i.cn = zext i32 %i.cj to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !391 ; 3 uses
  %.not.i40 = icmp sgt i64 %.pre, %i.cp
  br i1 %.not.i40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %bb.m, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !391 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.cs
  br i1 %.not27.i, label %.thread307, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.n:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %..thread307_crit_edge, label %bb.o

..thread307_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = zext i32 %i.ci to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.phi.trans.insert
  %.pre374 = load i64, ptr %.phi.trans.insert373, align 8, !tbaa !391
  br label %.thread307

.thread307:                                       ; preds = %..thread307_crit_edge, %bb.m
  %i.ct = phi i64 [ %.pre374, %..thread307_crit_edge ], [ %i.cs, %bb.m ]
  %i.cu = icmp slt i64 %i.cp, %i.ct
  %spec.select.i = select i1 %i.cu, i32 %i.cj, i32 %i.ci ; 2 uses
  %.pre375 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert376 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre375
  %.pre377 = load i64, ptr %.phi.trans.insert376, align 8, !tbaa !309
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread307
  %i.cv = phi i64 [ %i.cp, %bb.n ], [ %.pre377, %.thread307 ]
  %.pre-phi = phi i64 [ %i.cn, %bb.n ], [ %.pre375, %.thread307 ]
  %.0.i41 = phi i32 [ %i.cj, %bb.n ], [ %spec.select.i, %.thread307 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre-phi ; 2 uses
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !309
  store i64 %.pre, ptr %i.cw, align 8, !tbaa !309
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !128
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !128
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !128
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !128
  %i.db = shl i32 %.0.i41, 1                      ; 2 uses
  %i.dc = or disjoint i32 %i.db, 1                ; 2 uses
  %i.dd = add nuw i32 %i.db, 2
  %i.de = icmp ult i32 %i.dc, %.sroa.22.5303418
  br i1 %i.de, label %.lr.ph353, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit:  ; preds = %bb.o, %bb.m, %bb.l, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit
  %.sroa.43.6306 = phi ptr [ %.sroa.43.0362, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.43.6305, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.43.6305417, %bb.l ], [ %.sroa.43.6305417, %bb.m ], [ %.sroa.43.6305417, %bb.o ] ; 2 uses
  %.sroa.22.5304 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ 1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.22.5303418, %bb.l ], [ %.sroa.22.5303418, %bb.m ], [ %.sroa.22.5303418, %bb.o ] ; 2 uses
  %.sroa.0178.6302 = phi i32 [ %.sroa.0178.0360, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit ], [ %.sroa.0178.6301, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread ], [ %.sroa.0178.6301419, %bb.l ], [ %.sroa.0178.6301419, %bb.m ], [ %.sroa.0178.6301419, %bb.o ] ; 2 uses
  %.not.i49 = icmp ult i32 %.sroa.2.0.copyload.i, %.sroa.8161.0 ; 2 uses
  br i1 %.not.i49, label %bb.q, label %bb.p, !prof !131

bb.p:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  %i.df = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.df
  %.pre378 = load i8, ptr %i.dg, align 1, !tbaa !225, !range !126
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %i.dh = phi i8 [ %i.at, %bb.p ], [ %.pre378, %bb.q ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.loopexit, label %bb.r, !llvm.loop !903

bb.r:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !316
  %.not.i51 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dj
  br i1 %.not.i51, label %bb.t, label %bb.s, !prof !131

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

bb.t:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !322
  %i.dl = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [216 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53: ; preds = %bb.s, %bb.t
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.dm, %bb.t ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !388
  br i1 %.not.i49, label %bb.v, label %bb.u, !prof !131

bb.u:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  %i.dp = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.dp
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit: ; preds = %bb.u, %bb.v
  %.0.i55 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.dq, %bb.v ]
  store i8 1, ptr %.0.i55, align 1, !tbaa !225
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i52, i64 20
  %.val.i = load i32, ptr %i.dr, align 4, !tbaa !287, !noalias !911 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i52, i64 24
  %.val1.i = load ptr, ptr %i.ds, align 8, !tbaa !288, !noalias !911 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i52, i64 36
  %.val2.i = load i32, ptr %i.dt, align 4, !tbaa !287, !noalias !911 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i52, i64 40
  %.val3.i = load ptr, ptr %i.du, align 8, !tbaa !288, !noalias !911 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.i to i64
  %.sroa.2.8.insert.ext.i.i.i.i6.i.i = zext i32 %.val2.i to i64
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %.val1.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %.val3.i, i64 %.sroa.2.8.insert.ext.i.i.i.i6.i.i
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit, %bb.aj
  %.sroa.0178.1.ph.ph = phi i32 [ %.sroa.0178.6302, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0178.2, %bb.aj ]
  %.sroa.22.1.ph.ph = phi i32 [ %.sroa.22.5304, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.22.2, %bb.aj ]
  %.sroa.43.1.ph.ph = phi ptr [ %.sroa.43.6306, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.43.2, %bb.aj ]
  %.sroa.17.0.ph.ph = phi i32 [ %.val2.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gq, %bb.aj ]
  %.sroa.13.0.ph.ph = phi ptr [ %.val3.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %i.gr, %bb.aj ] ; 3 uses
  %.sroa.7.0.ph.ph = phi i32 [ %.val.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ 0, %bb.aj ]
  %.sroa.0141.0.ph.ph = phi ptr [ %.val1.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit ], [ %.sroa.0141.0, %bb.aj ]
  %.not.i3.i = icmp ne ptr %.sroa.13.0.ph.ph, %i.dw
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer, %bb.ai
  %.sroa.0178.1.ph = phi i32 [ %.sroa.0178.2, %bb.ai ], [ %.sroa.0178.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.22.1.ph = phi i32 [ %.sroa.22.2, %bb.ai ], [ %.sroa.22.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.43.1.ph = phi ptr [ %.sroa.43.2, %bb.ai ], [ %.sroa.43.1.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.17.0.ph = phi i32 [ 0, %bb.ai ], [ %.sroa.17.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ] ; 3 uses
  %.sroa.7.0.ph = phi i32 [ 0, %bb.ai ], [ %.sroa.7.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %.sroa.0141.0.ph = phi ptr [ %.sroa.0141.0, %bb.ai ], [ %.sroa.0141.0.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer ]
  %i.dx = icmp ne i32 %.sroa.17.0.ph, 0
  %i.dy = select i1 %.not.i3.i, i1 true, i1 %i.dx
  %.not.i.i.i.i = icmp eq i32 %.sroa.17.0.ph, 0   ; 2 uses
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %.sroa.13.0.ph.ph, !prof !149
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i
  %.sroa.0178.1 = phi i32 [ %.sroa.0178.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0178.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 15 uses
  %.sroa.22.1 = phi i32 [ %.sroa.22.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.22.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 12 uses
  %.sroa.43.1 = phi ptr [ %.sroa.43.2, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.43.1.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 11 uses
  %.sroa.7.0 = phi i32 [ %i.go, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.7.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 3 uses
  %.sroa.0141.0 = phi ptr [ %i.gp, %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i ], [ %.sroa.0141.0.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer ] ; 5 uses
  %.not.i.i57 = icmp ne ptr %.sroa.0141.0, %i.dv
  %i.dz = icmp ne i32 %.sroa.7.0, 0
  %i.ea = select i1 %.not.i.i57, i1 true, i1 %i.dz
  %brmerge = select i1 %i.ea, i1 true, i1 %i.dy
  br i1 %brmerge, label %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread, label %.loopexit

_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit
  %.not.i.i58 = icmp eq i32 %.sroa.7.0, 0         ; 2 uses
  %.0.i.i59 = select i1 %.not.i.i58, ptr %spec.select.i.i.i.i, ptr %.sroa.0141.0 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !299 ; 5 uses
  %.not.i60 = icmp ult i32 %i.ec, %.sroa.8161.0
  br i1 %.not.i60, label %bb.x, label %bb.w, !prof !131

bb.w:                                             ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit62

bb.x:                                             ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES5_EneERKS6_.exit.thread
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.ed
  %.pre379 = load i8, ptr %i.ee, align 1, !tbaa !225, !range !126
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit62

_ZN11hb_vector_tIbLb0EEixEi.exit62:               ; preds = %bb.w, %bb.x
  %i.ef = phi i8 [ %i.at, %bb.w ], [ %.pre379, %bb.x ]
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %bb.y

bb.y:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit62
  %i.eh = load ptr, ptr %i.au, align 8, !tbaa !369
  %i.ei = zext i32 %i.ec to i64
  %i.ej = getelementptr inbounds nuw [216 x i8], ptr %i.eh, i64 %i.ei ; 4 uses
  %i.ek = load i32, ptr %.0.i.i59, align 4
  %i.el = and i32 %i.ek, 7                        ; 2 uses
  %.not = icmp eq i32 %i.el, 0
  %i.em = shl nuw nsw i32 %i.el, 3
  %narrow = select i1 %.not, i32 32, i32 %i.em
  %i.en = zext nneg i32 %narrow to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !294
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !295
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !356
  %i.ev = add i32 %i.eu, 1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, %i.en
  %i.ey = add i64 %i.do, %i.er
  %i.ez = sub i64 %i.ey, %i.es
  %i.fa = add i64 %i.ez, %i.ex                    ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 56 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !388
  %i.fd = icmp slt i64 %i.fa, %i.fc
  br i1 %i.fd, label %bb.z, label %_ZN19hb_priority_queue_tIlE6insertElj.exit

bb.z:                                             ; preds = %bb.y
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !388
  %.not.i63 = icmp slt i32 %.sroa.22.1, %.sroa.0178.1
  %i.fe = add i32 %.sroa.22.1, 1                  ; 5 uses
  br i1 %.not.i63, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = icmp slt i32 %.sroa.0178.1, 0
  br i1 %i.ff, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread, label %bb.ab, !prof !149

bb.ab:                                            ; preds = %bb.aa
  %.not.i120 = icmp ugt i32 %i.fe, %.sroa.0178.1
  br i1 %.not.i120, label %.preheader.i122, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322, !prof !149

.preheader.i122:                                  ; preds = %bb.ab, %.preheader.i122
  %.043.i123 = phi i32 [ %i.fi, %.preheader.i122 ], [ %.sroa.0178.1, %bb.ab ] ; 2 uses
  %i.fg = lshr i32 %.043.i123, 1
  %i.fh = add i32 %.043.i123, 8
  %i.fi = add i32 %i.fh, %i.fg                    ; 8 uses
  %i.fj = icmp ugt i32 %i.fe, %i.fi
  br i1 %i.fj, label %.preheader.i122, label %.thread.i124, !llvm.loop !20

.thread.i124:                                     ; preds = %.preheader.i122
  %i.fk = icmp ugt i32 %i.fi, 268435455
  br i1 %i.fk, label %.critedge.i139, label %bb.ac, !prof !149

.critedge.i139:                                   ; preds = %.thread.i124
  %i.fl = xor i32 %.sroa.0178.1, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread

bb.ac:                                            ; preds = %.thread.i124
  %.not49.i126 = icmp eq i32 %.sroa.0178.1, 0
  br i1 %.not49.i126, label %bb.ad, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i127

bb.ad:                                            ; preds = %bb.ac
  %.not9.i.i.i136 = icmp eq ptr %.sroa.43.1, null
  br i1 %.not9.i.i.i136, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i127, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fm = shl nuw i32 %i.fi, 4
  %i.fn = zext i32 %i.fm to i64
  %i.fo = tail call ptr @hb_malloc(i64 noundef %i.fn) #16 ; 4 uses
  %.not10.i.i.i137 = icmp eq ptr %i.fo, null
  br i1 %.not10.i.i.i137, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i134, label %1, !prof !149

1:                                                ; preds = %bb.ae
  %.not.i.i.i.i138 = icmp eq i32 %.sroa.22.1, 0
  br i1 %.not.i.i.i.i138, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322, label %bb.af, !prof !149

bb.af:                                            ; preds = %1
  %i.fp = zext i32 %.sroa.22.1 to i64
  %i.fq = shl nuw nsw i64 %i.fp, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fo, ptr nonnull readonly align 1 %.sroa.43.1, i64 %i.fq, i1 false), !alias.scope !912
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i127: ; preds = %bb.ad, %bb.ac
  %i.fr = phi ptr [ null, %bb.ad ], [ %.sroa.43.1, %bb.ac ]
  %i.fs = shl nuw i32 %i.fi, 4
  %i.ft = zext i32 %i.fs to i64
  %i.fu = tail call ptr @hb_realloc(ptr noundef %i.fr, i64 noundef %i.ft) #16 ; 2 uses
  %.not22.i128 = icmp eq ptr %i.fu, null
  br i1 %.not22.i128, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i134, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322, !prof !215

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i134: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i127, %bb.ae
  %i.fv = xor i32 %.sroa.0178.1, -1
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread: ; preds = %.critedge.i139, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i134, %bb.aa
  %.sroa.0178.12 = phi i32 [ %.sroa.0178.1, %bb.aa ], [ %i.fv, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i134 ], [ %i.fl, %.critedge.i139 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322: ; preds = %1, %bb.af, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i127, %bb.ab
  %.sroa.0178.7.ph = phi i32 [ %.sroa.0178.1, %bb.ab ], [ %i.fi, %1 ], [ %i.fi, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i127 ], [ %i.fi, %bb.af ]
  %.sroa.43.7.ph = phi ptr [ %.sroa.43.1, %bb.ab ], [ %i.fo, %1 ], [ %i.fu, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i127 ], [ %i.fo, %bb.af ] ; 2 uses
  %i.fw = zext i32 %.sroa.22.1 to i64
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.7.ph, i64 %i.fw ; 2 uses
  store i64 %i.fa, ptr %i.fx, align 8, !tbaa !309
  %.sroa.4261.0..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i32 %i.ec, ptr %.sroa.4261.0..sroa_idx325, align 8, !tbaa !128
  br label %bb.ag

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68: ; preds = %bb.z
  %i.fy = zext i32 %.sroa.22.1 to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.1, i64 %i.fy ; 2 uses
  store i64 %i.fa, ptr %i.fz, align 8, !tbaa !309
  %.sroa.4261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i32 %i.ec, ptr %.sroa.4261.0..sroa_idx, align 8, !tbaa !128
  %i.ga = icmp slt i32 %.sroa.0178.1, 0
  br i1 %i.ga, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %bb.ag, !prof !392

bb.ag:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68
  %.sroa.43.7328 = phi ptr [ %.sroa.43.7.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322 ], [ %.sroa.43.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68 ] ; 5 uses
  %.sroa.0178.7327 = phi i32 [ %.sroa.0178.7.ph, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread322 ], [ %.sroa.0178.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68 ] ; 3 uses
  %i.gb = icmp eq i32 %.sroa.22.1, 0
  br i1 %i.gb, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %.lr.ph358

.lr.ph358:                                        ; preds = %bb.ag, %bb.ah
  %.08.i34356 = phi i32 [ %i.gd, %bb.ah ], [ %.sroa.22.1, %bb.ag ] ; 2 uses
  %i.gc = add i32 %.08.i34356, -1
  %i.gd = lshr i32 %i.gc, 1                       ; 3 uses
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.7328, i64 %i.ge ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !391 ; 2 uses
  %.not.i35 = icmp sgt i64 %i.gg, %i.fa
  br i1 %.not.i35, label %bb.ah, label %_ZN19hb_priority_queue_tIlE6insertElj.exit

bb.ah:                                            ; preds = %.lr.ph358
  %i.gh = zext i32 %.08.i34356 to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.7328, i64 %i.gh ; 2 uses
  store i64 %i.gg, ptr %i.gi, align 8, !tbaa !309
  store i64 %i.fa, ptr %i.gf, align 8, !tbaa !309
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gl = load i32, ptr %i.gj, align 8, !tbaa !128
  %i.gm = load i32, ptr %i.gk, align 8, !tbaa !128
  store i32 %i.gm, ptr %i.gj, align 8, !tbaa !128
  store i32 %i.gl, ptr %i.gk, align 8, !tbaa !128
  %i.gn = icmp eq i32 %i.gd, 0
  br i1 %i.gn, label %_ZN19hb_priority_queue_tIlE6insertElj.exit, label %.lr.ph358

_ZN19hb_priority_queue_tIlE6insertElj.exit:       ; preds = %bb.ah, %.lr.ph358, %bb.ag, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread, %bb.y, %_ZN11hb_vector_tIbLb0EEixEi.exit62
  %.sroa.0178.2 = phi i32 [ %.sroa.0178.1, %_ZN11hb_vector_tIbLb0EEixEi.exit62 ], [ %.sroa.0178.1, %bb.y ], [ %.sroa.0178.12, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread ], [ %.sroa.0178.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68 ], [ %.sroa.0178.7327, %bb.ag ], [ %.sroa.0178.7327, %.lr.ph358 ], [ %.sroa.0178.7327, %bb.ah ] ; 3 uses
  %.sroa.22.2 = phi i32 [ %.sroa.22.1, %_ZN11hb_vector_tIbLb0EEixEi.exit62 ], [ %.sroa.22.1, %bb.y ], [ %.sroa.22.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread ], [ %i.fe, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68 ], [ 1, %bb.ag ], [ %i.fe, %.lr.ph358 ], [ %i.fe, %bb.ah ] ; 3 uses
  %.sroa.43.2 = phi ptr [ %.sroa.43.1, %_ZN11hb_vector_tIbLb0EEixEi.exit62 ], [ %.sroa.43.1, %bb.y ], [ %.sroa.43.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68.thread ], [ %.sroa.43.1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit68 ], [ %.sroa.43.7328, %bb.ag ], [ %.sroa.43.7328, %.lr.ph358 ], [ %.sroa.43.7328, %bb.ah ] ; 3 uses
  br i1 %.not.i.i58, label %bb.ai, label %_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEERS4_EppEv.exit.i.i: ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit
  %i.go = add i32 %.sroa.7.0, -1
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0141.0, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit

bb.ai:                                            ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit
  br i1 %.not.i.i.i.i, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer, label %bb.aj, !prof !149

bb.aj:                                            ; preds = %bb.ai
  %i.gq = add i32 %.sroa.17.0.ph, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.13.0.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit.outer.outer

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit, %_ZN11hb_vector_tIbLb0EEixEi.exit
  %.sroa.0178.3 = phi i32 [ %.sroa.0178.6302, %_ZN11hb_vector_tIbLb0EEixEi.exit ], [ %.sroa.0178.1, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit ] ; 3 uses
  %.sroa.22.3 = phi i32 [ %.sroa.22.5304, %_ZN11hb_vector_tIbLb0EEixEi.exit ], [ %.sroa.22.1, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit ]
  %.sroa.43.3 = phi ptr [ %.sroa.43.6306, %_ZN11hb_vector_tIbLb0EEixEi.exit ], [ %.sroa.43.1, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_EppEv.exit ] ; 2 uses
  %i.gs = icmp slt i32 %.sroa.0178.3, 0
  br i1 %i.gs, label %.critedge, label %bb.f

.critedge:                                        ; preds = %.loopexit, %_ZN11hb_vector_tIbLb0EE6resizeEi.exit
  %.sroa.0178.0.lcssa = phi i32 [ -1, %_ZN11hb_vector_tIbLb0EE6resizeEi.exit ], [ %.sroa.0178.3, %.loopexit ] ; 2 uses
  %.sroa.43.0.lcssa = phi ptr [ %.sroa.43.5284, %_ZN11hb_vector_tIbLb0EE6resizeEi.exit ], [ %.sroa.43.3, %.loopexit ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !315, !range !126, !noundef !127
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.ak, label %_ZN5graph7graph_t13check_successEb.exit73

bb.ak:                                            ; preds = %.critedge
  store i8 0, ptr %i.gt, align 1, !tbaa !315
  br label %_ZN5graph7graph_t13check_successEb.exit73

bb.al:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit.thread
  store i8 0, ptr %i.a, align 1, !tbaa !403
  br label %_ZN5graph7graph_t13check_successEb.exit73

_ZN5graph7graph_t13check_successEb.exit73:        ; preds = %.critedge, %bb.ak, %_ZN5graph7graph_t13check_successEb.exit.thread, %bb.al
  %.sroa.0178.0343 = phi i32 [ %.sroa.0178.0360, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.0178.0360, %bb.al ], [ %.sroa.0178.0.lcssa, %bb.ak ], [ %.sroa.0178.0.lcssa, %.critedge ]
  %.sroa.43.0339 = phi ptr [ %.sroa.43.0362, %_ZN5graph7graph_t13check_successEb.exit.thread ], [ %.sroa.43.0362, %bb.al ], [ %.sroa.43.0.lcssa, %bb.ak ], [ %.sroa.43.0.lcssa, %.critedge ]
  br i1 %.sroa.0158.1, label %bb.am, label %_ZN11hb_vector_tIbLb0EED2Ev.exit

bb.am:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit73
  tail call void @hb_free(ptr noundef %.sroa.15.1) #16
  br label %_ZN11hb_vector_tIbLb0EED2Ev.exit

_ZN11hb_vector_tIbLb0EED2Ev.exit:                 ; preds = %_ZN5graph7graph_t13check_successEb.exit73, %bb.am
  %i.gw = add i32 %.sroa.0178.0343, -1
  %spec.select.i.i.i.i74 = icmp ult i32 %i.gw, -2
  br i1 %spec.select.i.i.i.i74, label %bb.an, label %_ZN19hb_priority_queue_tIlED2Ev.exit

bb.an:                                            ; preds = %_ZN11hb_vector_tIbLb0EED2Ev.exit
  tail call void @hb_free(ptr noundef %.sroa.43.0339) #16
  br label %_ZN19hb_priority_queue_tIlED2Ev.exit

_ZN19hb_priority_queue_tIlED2Ev.exit:             ; preds = %bb.an, %_ZN11hb_vector_tIbLb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !366    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !149

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !128
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !149

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !913

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !149

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !367
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !367  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !149

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !353  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !149

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !367
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !917
  br label %_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN5graph17overflow_record_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
end_hunk_2
begin_hunk_3_@_ZNK5graph20LigatureSubstFormat120compute_split_pointsERNS_24gsubgpos_graph_context_tEj:bb.a

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge, label %bb.d, !llvm.loop !21

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !300, !noalias !1864
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  %.not23.not.i.i = icmp eq ptr %i.i, %i.aa
  br i1 %.not23.not.i.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i, label %bb.c

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !299, !noalias !1864 ; 2 uses
  %.not.i2.i = icmp ult i32 %i.ac, %i.k
  br i1 %.not.i2.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, label %.critedge

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i: ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.m, i64 %i.ad ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !341, !noalias !1865 ; 5 uses
  %.not4.i.i = icmp eq ptr %i.af, null
  br i1 %.not4.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !340, !noalias !1865
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %.critedge, label %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i

_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !noalias !1865, !srcloc !132
  %i.am = load i16, ptr %i.af, align 1, !tbaa !130, !noalias !1865 ; 2 uses
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am) ; 3 uses
  %i.ao = zext i16 %i.an to i64                   ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = add nuw nsw i64 %i.ap, 2
  %.not7.i.i = icmp ult i64 %i.ak, %i.aq
  br i1 %.not7.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i
  %i.ar = zext i16 %i.an to i32                   ; 5 uses
  %.not19.i.not = icmp eq i16 %i.am, 0            ; 2 uses
  br i1 %.not19.i.not, label %._crit_edge.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.f
  %i.as = shl nuw nsw i32 %i.ar, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.at) #16 ; 4 uses
  %.not22.i = icmp eq ptr %i.au, null
  br i1 %.not22.i, label %.critedge, label %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph.i, !prof !215

_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph.i:         ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.av = shl nuw nsw i32 %i.ar, 2
  %i.aw = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.aw, i1 false)
  %i.ax = shl nuw nsw i64 %i.ao, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 -1, i64 %i.ax, i1 false), !tbaa !128
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph.i
  %.sroa.18.1.ph245 = phi ptr [ %i.au, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph.i ], [ null, %bb.f ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !288 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !287 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.idx.i = mul nuw nsw i64 %i.bc, 12             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i
  %.not21.i = icmp eq i32 %i.bb, 0
  br i1 %.not21.i, label %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge.i
  %i.be = add nsw i64 %.idx.i, -12                ; 2 uses
  %i.bf = udiv i64 %i.be, 12
  %i.bg = and i64 %i.bf, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !300 ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 2
  br i1 %i.bj, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.prol
  %i.bk = add i32 %i.bi, -2
  %i.bl = lshr i32 %i.bk, 1                       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !299
  %.not.i17.i.prol = icmp samesign ult i32 %i.bl, %i.ar
  br i1 %.not.i17.i.prol, label %bb.i, label %bb.h, !prof !131

bb.h:                                             ; preds = %bb.g
  store i32 %i.f, ptr @_hb_CrapPool, align 16, !noalias !1866
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit19.i.prol

bb.i:                                             ; preds = %bb.g
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.1.ph245, i64 %i.bo
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit19.i.prol

_ZN11hb_vector_tIjLb0EEixEi.exit19.i.prol:        ; preds = %bb.i, %bb.h
  %.0.i18.i.prol = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.bp, %bb.i ]
  store i32 %i.bn, ptr %.0.i18.i.prol, align 4, !tbaa !128
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit19.i.prol, %.lr.ph.i.prol
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01522.i.unr = phi ptr [ %i.az, %.lr.ph.i.preheader ], [ %i.bq, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.br = icmp ult i64 %i.be, 12
  br i1 %i.br, label %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.p
  %.01522.i = phi ptr [ %i.ck, %bb.p ], [ %.01522.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01522.i, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !300 ; 2 uses
  %i.bu = icmp ult i32 %i.bt, 2
  br i1 %i.bu, label %.lr.ph.i.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bv = add i32 %i.bt, -2
  %i.bw = lshr i32 %i.bv, 1                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01522.i, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !299
  %.not.i17.i = icmp samesign ult i32 %i.bw, %i.ar
  br i1 %.not.i17.i, label %bb.l, label %bb.k, !prof !131

bb.k:                                             ; preds = %bb.j
  store i32 %i.f, ptr @_hb_CrapPool, align 16, !noalias !1866
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit19.i

bb.l:                                             ; preds = %bb.j
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.1.ph245, i64 %i.bz
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit19.i

_ZN11hb_vector_tIjLb0EEixEi.exit19.i:             ; preds = %bb.l, %bb.k
  %.0.i18.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.ca, %bb.l ]
  store i32 %i.by, ptr %.0.i18.i, align 4, !tbaa !128
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit19.i, %.lr.ph.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.01522.i, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !300 ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 2
  br i1 %i.cd, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.1
  %i.ce = add i32 %i.cc, -2
  %i.cf = lshr i32 %i.ce, 1                       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01522.i, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !299
  %.not.i17.i.1 = icmp samesign ult i32 %i.cf, %i.ar
  br i1 %.not.i17.i.1, label %bb.o, label %bb.n, !prof !131

bb.n:                                             ; preds = %bb.m
  store i32 %i.f, ptr @_hb_CrapPool, align 16, !noalias !1866
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit19.i.1

bb.o:                                             ; preds = %bb.m
  %i.ci = zext nneg i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.1.ph245, i64 %i.ci
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit19.i.1

_ZN11hb_vector_tIjLb0EEixEi.exit19.i.1:           ; preds = %bb.o, %bb.n
  %.0.i18.i.1 = phi ptr [ @_hb_CrapPool, %bb.n ], [ %i.cj, %bb.o ]
  store i32 %i.ch, ptr %.0.i18.i.1, align 4, !tbaa !128
  br label %bb.p

bb.p:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit19.i.1, %.lr.ph.i.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %.not.i31.1 = icmp eq ptr %i.ck, %i.bd
  br i1 %.not.i31.1, label %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit, label %.lr.ph.i

_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.p, %._crit_edge.i
  %i.cl = load i16, ptr %i.af, align 1, !tbaa !130
  %.not211 = icmp eq i16 %i.cl, 0
  br i1 %.not211, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit
  %i.cm = zext i16 %i.an to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ad ] ; 3 uses
  %.124195 = phi i32 [ %i.g, %.lr.ph.preheader ], [ %.3, %bb.ad ] ; 2 uses
  %.1194 = phi i32 [ %.0113205, %.lr.ph.preheader ], [ %.2, %bb.ad ] ; 3 uses
  %.sroa.16.1193 = phi ptr [ %.sroa.16.0204, %.lr.ph.preheader ], [ %.sroa.16.3, %bb.ad ] ; 8 uses
  %.sroa.10.1191 = phi i32 [ %.sroa.10.0203, %.lr.ph.preheader ], [ %.sroa.10.3, %bb.ad ] ; 8 uses
  %.sroa.093.1190 = phi i32 [ %.sroa.093.0202, %.lr.ph.preheader ], [ %.sroa.093.3, %bb.ad ] ; 12 uses
  %.not.i32 = icmp samesign ult i64 %indvars.iv, %i.cm
  br i1 %.not.i32, label %bb.r, label %bb.q, !prof !131

bb.q:                                             ; preds = %.lr.ph
  store i32 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.1.ph245, i64 %indvars.iv
  %.pr = load i32, ptr %i.cn, align 4, !tbaa !128
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.q, %bb.r
  %i.co = phi i32 [ %i.f, %bb.q ], [ %.pr, %bb.r ] ; 3 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !338, !nonnull !127, !align !339 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !316
  %.not.i34 = icmp ult i32 %i.co, %i.cs
  br i1 %.not.i34, label %bb.u, label %bb.t, !prof !131

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

bb.u:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !322
  %i.cv = zext i32 %i.co to i64
  %i.cw = getelementptr inbounds nuw [216 x i8], ptr %i.cu, i64 %i.cv
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.t, %bb.u
  %.0.i35 = phi ptr [ @_hb_CrapPool, %bb.t ], [ %i.cw, %bb.u ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i35, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !340
  %i.cz = load ptr, ptr %.0.i35, align 8, !tbaa !341
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %i.de = add i32 %.124195, 2
  %i.df = add i32 %i.de, %i.dd                    ; 2 uses
  %i.dg = icmp ugt i32 %i.df, 65535
  br i1 %i.dg, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %.not.i36 = icmp slt i32 %.sroa.10.1191, %.sroa.093.1190
  %.pre = add i32 %.sroa.10.1191, 1               ; 6 uses
  br i1 %.not.i36, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = icmp slt i32 %.sroa.093.1190, 0
  br i1 %i.dh, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit61, label %bb.x, !prof !149

bb.x:                                             ; preds = %bb.w
  %.not.i42 = icmp ugt i32 %.pre, %.sroa.093.1190
  br i1 %.not.i42, label %.preheader.i44, label %.critedge.i, !prof !149

.preheader.i44:                                   ; preds = %bb.x, %.preheader.i44
  %.043.i = phi i32 [ %i.dk, %.preheader.i44 ], [ %.sroa.093.1190, %bb.x ] ; 2 uses
  %i.di = lshr i32 %.043.i, 1
  %i.dj = add i32 %.043.i, 8
  %i.dk = add i32 %i.dj, %i.di                    ; 8 uses
  %i.dl = icmp ugt i32 %.pre, %i.dk
  br i1 %i.dl, label %.preheader.i44, label %.thread.i45, !llvm.loop !12

.thread.i45:                                      ; preds = %.preheader.i44
  %i.dm = icmp ugt i32 %i.dk, 1073741823
  br i1 %i.dm, label %.critedge.i60, label %bb.y, !prof !149

.critedge.i60:                                    ; preds = %.thread.i45
  %i.dn = xor i32 %.sroa.093.1190, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit61

bb.y:                                             ; preds = %.thread.i45
  %.not49.i47 = icmp eq i32 %.sroa.093.1190, 0
  br i1 %.not49.i47, label %bb.z, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48

bb.z:                                             ; preds = %bb.y
  %.not9.i.i.i57 = icmp eq ptr %.sroa.16.1193, null
  br i1 %.not9.i.i.i57, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = shl nuw i32 %i.dk, 2
  %i.dp = zext i32 %i.do to i64
  %i.dq = tail call ptr @hb_malloc(i64 noundef %i.dp) #16 ; 4 uses
  %.not10.i.i.i58 = icmp eq ptr %i.dq, null
  br i1 %.not10.i.i.i58, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i55, label %4, !prof !149

4:                                                ; preds = %bb.aa
  %.not.i.i.i.i59 = icmp eq i32 %.sroa.10.1191, 0
  br i1 %.not.i.i.i.i59, label %.critedge.i, label %bb.ab, !prof !149

bb.ab:                                            ; preds = %4
  %i.dr = zext i32 %.sroa.10.1191 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull readonly align 1 %.sroa.16.1193, i64 %i.ds, i1 false), !alias.scope !1867
  br label %.critedge.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48: ; preds = %bb.z, %bb.y
  %i.dt = phi ptr [ null, %bb.z ], [ %.sroa.16.1193, %bb.y ]
  %i.du = shl nuw i32 %i.dk, 2
  %i.dv = zext i32 %i.du to i64
  %i.dw = tail call ptr @hb_realloc(ptr noundef %i.dt, i64 noundef %i.dv) #16 ; 2 uses
  %.not22.i49 = icmp eq ptr %i.dw, null
  br i1 %.not22.i49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i55, label %.critedge.i, !prof !215

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i55: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48, %bb.aa
  %i.dx = xor i32 %.sroa.093.1190, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit61

_ZN11hb_vector_tIjLb0EE5allocEjb.exit61:          ; preds = %bb.w, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i55, %.critedge.i60
  %.sroa.093.10 = phi i32 [ %.sroa.093.1190, %bb.w ], [ %i.dx, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i55 ], [ %i.dn, %.critedge.i60 ]
  store i32 %i.f, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %bb.v, %4, %bb.ab, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48, %bb.x
  %.pre-phi = phi i32 [ %.pre, %bb.x ], [ 1, %4 ], [ %.pre, %bb.ab ], [ %.pre, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48 ], [ %.pre, %bb.v ]
  %.sroa.093.8 = phi i32 [ %.sroa.093.1190, %bb.x ], [ %i.dk, %4 ], [ %i.dk, %bb.ab ], [ %i.dk, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48 ], [ %.sroa.093.1190, %bb.v ]
  %.sroa.16.8 = phi ptr [ %.sroa.16.1193, %bb.x ], [ %i.dq, %4 ], [ %i.dq, %bb.ab ], [ %i.dw, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i48 ], [ %.sroa.16.1193, %bb.v ] ; 2 uses
  %i.dy = zext i32 %.sroa.10.1191 to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.16.8, i64 %i.dy
  store i32 %.1194, ptr %i.dz, align 4, !tbaa !128
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit61, %.critedge.i
  %.sroa.093.9 = phi i32 [ %.sroa.093.8, %.critedge.i ], [ %.sroa.093.10, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit61 ]
  %.sroa.10.7 = phi i32 [ %.pre-phi, %.critedge.i ], [ %.sroa.10.1191, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit61 ]
  %.sroa.16.9 = phi ptr [ %.sroa.16.8, %.critedge.i ], [ %.sroa.16.1193, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit61 ]
  %i.ea = add i32 %i.dd, 12
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %.sroa.093.2 = phi i32 [ %.sroa.093.9, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ], [ %.sroa.093.1190, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %.sroa.10.2 = phi i32 [ %.sroa.10.7, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ], [ %.sroa.10.1191, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %.sroa.16.2 = phi ptr [ %.sroa.16.9, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ], [ %.sroa.16.1193, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %.225 = phi i32 [ %i.ea, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ], [ %i.df, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %i.eb = add i32 %.1194, 1
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit, %bb.ac
  %.sroa.093.3 = phi i32 [ %.sroa.093.1190, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.sroa.093.2, %bb.ac ] ; 2 uses
  %.sroa.10.3 = phi i32 [ %.sroa.10.1191, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.sroa.10.2, %bb.ac ] ; 2 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.1193, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.sroa.16.2, %bb.ac ] ; 2 uses
  %.2 = phi i32 [ %.1194, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %i.eb, %bb.ac ] ; 2 uses
  %.3 = phi i32 [ %.124195, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.225, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = load i16, ptr %i.af, align 1, !tbaa !130
  %i.ed = tail call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ee = zext i16 %i.ed to i64
  %i.ef = icmp samesign ult i64 %indvars.iv.next, %i.ee
  br i1 %i.ef, label %.lr.ph, label %._crit_edge, !llvm.loop !1862

._crit_edge:                                      ; preds = %bb.ad, %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit
  %.sroa.093.1.lcssa = phi i32 [ %.sroa.093.0202, %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit ], [ %.sroa.093.3, %bb.ad ] ; 2 uses
  %.sroa.10.1.lcssa = phi i32 [ %.sroa.10.0203, %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit ], [ %.sroa.10.3, %bb.ad ] ; 2 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0204, %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit ], [ %.sroa.16.3, %bb.ad ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0113205, %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit ], [ %.2, %bb.ad ]
  %.124.lcssa = phi i32 [ %i.g, %_ZNK5graph20LigatureSubstFormat127ligature_index_to_object_idILNS_7graph_t19vertex_mutability_tE0EEE11hb_vector_tIjLb0EERKNS2_18vertex_and_table_tINS_11LigatureSetEXT_EEE.exit ], [ %.3, %bb.ad ]
  br i1 %.not19.i.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  tail call void @hb_free(ptr noundef %.sroa.18.1.ph245) #16
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge, %bb.ae
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.eg = load i16, ptr %i.a, align 1, !tbaa !130
  %i.eh = tail call noundef i16 @llvm.bswap.i16(i16 %i.eg)
  %i.ei = zext i16 %i.eh to i64
  %.not28 = icmp samesign ult i64 %indvars.iv.next227, %i.ei
  br i1 %.not28, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, label %.thread170, !llvm.loop !1863

.thread170:                                       ; preds = %bb.af, %bb.a
  %.sroa.093.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.093.1.lcssa, %bb.af ]
  %.sroa.10.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.10.1.lcssa, %bb.af ]
  %.sroa.16.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.16.1.lcssa, %bb.af ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.093.0.lcssa, ptr %0, align 8, !tbaa !181
  store i32 %.sroa.10.0.lcssa, ptr %i.ej, align 4, !tbaa !182
  store ptr %.sroa.16.0.lcssa, ptr %i.ek, align 8, !tbaa !183
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit39

.critedge:                                        ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.b, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i, %bb.e, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.el = add i32 %.sroa.093.0202, -1
  %spec.select.i.i.i38 = icmp ult i32 %i.el, -2
  br i1 %spec.select.i.i.i38, label %bb.ag, label %_ZN11hb_vector_tIjLb0EED2Ev.exit39

bb.ag:                                            ; preds = %.critedge
  tail call void @hb_free(ptr noundef %.sroa.16.0204) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit39

_ZN11hb_vector_tIjLb0EED2Ev.exit39:               ; preds = %.thread170, %.critedge, %bb.ag
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5graph20LigatureSubstFormat111liga_countsERNS_24gsubgpos_graph_context_tEj(ptr dead_on_unwind noalias writable sret(%struct.hb_vector_t.21) align 8 %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !130
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %._crit_edge, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.lr.ph

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.e = zext i32 %3 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr @_hb_NullPool, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.lr.ph, %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit
  %indvars.iv = phi i64 [ 0, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !338, !nonnull !127, !align !339 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !132
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !316, !noalias !1873 ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %3, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1873 ; 2 uses
  %i.o = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %i.e
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.o, ptr @_hb_NullPool, !prof !131 ; 4 uses
  %i.p = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !295, !noalias !1873 ; 2 uses
  %i.q = icmp uge ptr %i.j, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1873
  %.not.i.i = icmp ult ptr %i.j, %i.s
  %or.cond.i.i = select i1 %i.q, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread

bb.b:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !305, !noalias !1873 ; 2 uses
  %.not2427.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not2427.not.i.i, label %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !411, !noalias !1873
  %wide.trip.count.i.i = zext i32 %i.u to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread, label %bb.d, !llvm.loop !21

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !300, !noalias !1873
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  %.not23.not.i.i = icmp eq ptr %i.j, %i.ab
  br i1 %.not23.not.i.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i, label %bb.c

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !299, !noalias !1873 ; 2 uses
  %.not.i2.i = icmp ult i32 %i.ad, %i.l
  br i1 %.not.i2.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, label %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i: ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !341, !noalias !1874 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.ag, null
  br i1 %.not4.i.i, label %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !340, !noalias !1874
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread, label %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i

_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !noalias !1874, !srcloc !132
  %i.an = load i16, ptr %i.ag, align 1, !tbaa !130, !noalias !1874
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an) ; 2 uses
  %i.ap = zext i16 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = add nuw nsw i64 %i.aq, 2
  %.not7.i.i = icmp ult i64 %i.al, %i.ar
  %i.as = zext i16 %i.ao to i32
  %spec.select = select i1 %.not7.i.i, i32 0, i32 %i.as
  br label %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread

_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread: ; preds = %bb.c, %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i, %bb.b, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, %bb.e, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i
  %i.at = phi i32 [ 0, %bb.b ], [ 0, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i ], [ 0, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i ], [ 0, %bb.e ], [ %spec.select, %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i ], [ 0, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ 0, %bb.c ]
  %i.au = load i32, ptr %i.f, align 4, !tbaa !182 ; 3 uses
  %i.av = load i32, ptr %0, align 8, !tbaa !181
  %.not.i7 = icmp slt i32 %i.au, %i.av
  br i1 %.not.i7, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread
  %i.aw = add i32 %i.au, 1
  %i.ax = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.aw, i1 noundef zeroext false)
  br i1 %i.ax, label %..critedge_crit_edge.i, label %bb.g, !prof !131

..critedge_crit_edge.i:                           ; preds = %bb.f
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !182
  br label %.critedge.i

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread
  %i.ay = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.au, %_ZN5graph7graph_t8as_tableINS_11LigatureSetEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread ] ; 2 uses
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.ba = add i32 %i.ay, 1
  store i32 %i.ba, ptr %i.f, align 4, !tbaa !182
  %i.bb = zext i32 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  store i32 %i.at, ptr %i.bc, align 4, !tbaa !128
  br label %_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJiEEEPjDpOT_.exit:   ; preds = %bb.g, %.critedge.i
end_hunk_3
begin_hunk_4_@_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_:bb.a

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i21, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !288
  %i.at = zext nneg i32 %i.an to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.as, i64 %i.at
  %i.av = zext i32 %i.aq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 0, i64 %i.av, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !287
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i21, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !288
  %i.ay = zext i32 %i.ai to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.ay
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit: ; preds = %bb.m, %bb.n
  %.0.i24 = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.az, %bb.n ] ; 4 uses
  %i.ba = load i32, ptr %.0.i24, align 4
  %i.bb = and i32 %i.ba, -8
  %i.bc = or disjoint i32 %i.bb, 2
  store i32 %i.bc, ptr %.0.i24, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i24, i64 8
  store i32 %.4.i, ptr %i.bd, align 4, !tbaa !299
  %i.be = load ptr, ptr %.0.i21, align 8, !tbaa !341
  %i.bf = ptrtoint ptr %4 to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i24, i64 4
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !300
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !316
  %.not.i25 = icmp ult i32 %.4.i, %i.bk
  br i1 %.not.i25, label %bb.p, label %bb.o, !prof !131

bb.o:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit27

bb.p:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !322
  %i.bm = zext i32 %.4.i to i64
  %i.bn = getelementptr inbounds nuw [216 x i8], ptr %i.bl, i64 %i.bm
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit27

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit27: ; preds = %bb.o, %bb.p
  %.0.i26 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.bn, %bb.p ] ; 2 uses
  tail call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i26, i32 noundef %3, i1 noundef zeroext false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !363 ; 3 uses
  %.not16.i = icmp eq i32 %i.bp, 0
  br i1 %.not16.i, label %_ZN5graph7graph_t8vertex_t16remove_real_linkEjPKv.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit27
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !448 ; 2 uses
  %i.bs = load ptr, ptr %.0.i, align 8
  %wide.trip.count.i29 = zext i32 %i.bp to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i28
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next.i32, %bb.u ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %indvars.iv.i30 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !299
  %.not.i31 = icmp eq i32 %i.bv, %.4.i
  br i1 %.not.i31, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !300
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by
  %.not13.i = icmp eq ptr %i.bz, %2
  br i1 %.not13.i, label %.critedge.i, label %bb.u

.critedge.i:                                      ; preds = %bb.r
  %i.ca = trunc nuw i64 %indvars.iv.i30 to i32    ; 2 uses
  %i.cb = add i32 %i.bp, -1                       ; 2 uses
  %.not5.i.i = icmp eq i32 %i.cb, %i.ca
  br i1 %.not5.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !tbaa.struct !297
  %.pre.i.i = load i32, ptr %i.bo, align 4, !tbaa !287
  %.pre6.i.i = add i32 %.pre.i.i, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i
  %.pre-phi.i.i = phi i32 [ %.pre6.i.i, %bb.s ], [ %i.ca, %.critedge.i ]
  store i32 %.pre-phi.i.i, ptr %i.bo, align 4, !tbaa !287
  br label %_ZN5graph7graph_t8vertex_t16remove_real_linkEjPKv.exit

bb.u:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i29
  br i1 %exitcond.not.i33, label %_ZN5graph7graph_t8vertex_t16remove_real_linkEjPKv.exit, label %bb.q, !llvm.loop !25

_ZN5graph7graph_t8vertex_t16remove_real_linkEjPKv.exit: ; preds = %bb.u, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit27, %bb.t
  tail call void @_ZN5graph7graph_t8vertex_t13remove_parentEj(ptr noundef nonnull align 8 dereferenceable(216) %.0.i26, i32 noundef %1)
  ret i32 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.a, align 1, !tbaa !403
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 1, ptr %i.b, align 2, !tbaa !350
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !316  ; 2 uses
  %.not.i = icmp ult i32 %1, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !131

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !316
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !322
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %i.g
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.d, %bb.c ]
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.not.i33 = icmp ult i32 %4, %i.i
  br i1 %.not.i33, label %bb.e, label %bb.d, !prof !131

bb.d:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35

bb.e:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !322
  %i.l = zext i32 %4 to i64
  %i.m = getelementptr inbounds nuw [216 x i8], ptr %i.k, i64 %i.l
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35: ; preds = %bb.d, %bb.e
  %.0.i34 = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.m, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !288  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !287  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx = mul nuw nsw i64 %i.s, 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.not67 = icmp eq i32 %i.r, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i34, i64 20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i34, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i34, i64 24 ; 2 uses
  %i.x = sub i32 %5, %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit
  %.pre76 = load ptr, ptr %i.o, align 8, !tbaa !376
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35
  %i.z = phi ptr [ %i.p, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35 ], [ %.pre76, %._crit_edge.loopexit ]
  %.sroa.0.0.lcssa = phi i32 [ 0, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35 ], [ %.sroa.0.1, %._crit_edge.loopexit ]
  %.sroa.10.0.lcssa = phi i32 [ 0, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35 ], [ %.sroa.10.1, %._crit_edge.loopexit ]
  %.sroa.17.0.lcssa = phi ptr [ null, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit35 ], [ %.sroa.17.1, %._crit_edge.loopexit ]
  %i.aa = load i32, ptr %i.n, align 8, !tbaa !128
  store i32 %.sroa.0.0.lcssa, ptr %i.n, align 8, !tbaa !128
  store i32 %.sroa.10.0.lcssa, ptr %i.q, align 4, !tbaa !128
  store ptr %.sroa.17.0.lcssa, ptr %i.o, align 8, !tbaa !376
  %i.ab = add i32 %i.aa, -1
  %spec.select.i.i.i = icmp ult i32 %i.ab, -2
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  tail call void @hb_free(ptr noundef %i.z) #16
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit
  %.071 = phi ptr [ %i.p, %.lr.ph ], [ %i.bz, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit ] ; 4 uses
  %.sroa.17.070 = phi ptr [ null, %.lr.ph ], [ %.sroa.17.1, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit ] ; 7 uses
  %.sroa.10.069 = phi i32 [ 0, %.lr.ph ], [ %.sroa.10.1, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit ] ; 7 uses
  %.sroa.0.068 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit ] ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.071, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !300 ; 3 uses
  %i.ae = icmp uge i32 %i.ad, %2
  %.not32 = icmp ult i32 %i.ad, %3
  %or.cond = and i1 %i.ae, %.not32
  br i1 %or.cond, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i36 = icmp slt i32 %.sroa.10.069, %.sroa.0.068
  %.pre77 = add i32 %.sroa.10.069, 1              ; 6 uses
  br i1 %.not.i36, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp slt i32 %.sroa.0.068, 0
  br i1 %i.af, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, label %bb.j, !prof !149

bb.j:                                             ; preds = %bb.i
  %.not.i42 = icmp ugt i32 %.pre77, %.sroa.0.068
  br i1 %.not.i42, label %.preheader.i, label %.critedge.i, !prof !149

.preheader.i:                                     ; preds = %bb.j, %.preheader.i
  %.043.i = phi i32 [ %i.ai, %.preheader.i ], [ %.sroa.0.068, %bb.j ] ; 2 uses
  %i.ag = lshr i32 %.043.i, 1
  %i.ah = add i32 %.043.i, 8
  %i.ai = add i32 %i.ah, %i.ag                    ; 8 uses
  %i.aj = icmp ugt i32 %.pre77, %i.ai
  br i1 %i.aj, label %.preheader.i, label %.thread.i, !llvm.loop !14

.thread.i:                                        ; preds = %.preheader.i
  %i.ak = icmp ugt i32 %i.ai, 357913941
  br i1 %i.ak, label %.critedge.i43, label %bb.k, !prof !149

.critedge.i43:                                    ; preds = %.thread.i
  %i.al = xor i32 %.sroa.0.068, -1
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit

bb.k:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.068, 0
  br i1 %.not49.i, label %bb.l, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.l:                                             ; preds = %bb.k
  %.not9.i.i.i = icmp eq ptr %.sroa.17.070, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = zext nneg i32 %i.ai to i64
  %i.an = mul nuw nsw i64 %i.am, 12
  %i.ao = tail call ptr @hb_malloc(i64 noundef %i.an) #16 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %6, !prof !149

6:                                                ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i32 %.sroa.10.069, 0
  br i1 %.not.i.i.i.i, label %.critedge.i, label %bb.n, !prof !149

bb.n:                                             ; preds = %6
  %i.ap = zext i32 %.sroa.10.069 to i64
  %i.aq = mul nuw nsw i64 %i.ap, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull readonly align 1 %.sroa.17.070, i64 %i.aq, i1 false), !alias.scope !1899
  br label %.critedge.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.l, %bb.k
  %i.ar = phi ptr [ null, %bb.l ], [ %.sroa.17.070, %bb.k ]
  %i.as = zext nneg i32 %i.ai to i64
  %i.at = mul nuw nsw i64 %i.as, 12
  %i.au = tail call ptr @hb_realloc(ptr noundef %i.ar, i64 noundef %i.at) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.au, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !215

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.m
  %i.av = xor i32 %.sroa.0.068, -1
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit: ; preds = %bb.i, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.critedge.i43
  %.sroa.0.4 = phi i32 [ %.sroa.0.068, %bb.i ], [ %i.av, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ], [ %i.al, %.critedge.i43 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit

.critedge.i:                                      ; preds = %bb.h, %6, %bb.n, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.j
  %.pre-phi = phi i32 [ %.pre77, %bb.j ], [ 1, %6 ], [ %.pre77, %bb.n ], [ %.pre77, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.pre77, %bb.h ]
  %.sroa.0.2 = phi i32 [ %.sroa.0.068, %bb.j ], [ %i.ai, %6 ], [ %i.ai, %bb.n ], [ %i.ai, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.sroa.0.068, %bb.h ]
  %.sroa.17.2 = phi ptr [ %.sroa.17.070, %bb.j ], [ %i.ao, %6 ], [ %i.ao, %bb.n ], [ %i.au, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.sroa.17.070, %bb.h ] ; 2 uses
  %i.aw = zext i32 %.sroa.10.069 to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %.sroa.17.2, i64 %i.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %.071, i64 12, i1 false), !tbaa.struct !297
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit

bb.o:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.071, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !299 ; 3 uses
  %i.ba = load i32, ptr %i.u, align 4, !tbaa !287 ; 2 uses
  %i.bb = add i32 %i.ba, 1                        ; 5 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.t, label %bb.p, !prof !149

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef %i.bb, i1 noundef zeroext false)
  br i1 %i.bd, label %bb.q, label %bb.t, !prof !291

bb.q:                                             ; preds = %bb.p
  %i.be = load i32, ptr %i.u, align 4, !tbaa !287 ; 3 uses
  %i.bf = icmp ugt i32 %i.bb, %i.be
  br i1 %i.bf, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bg = sub nuw nsw i32 %i.bb, %i.be
  %i.bh = mul i32 %i.bg, 12                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.s, !prof !149

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !288
  %i.bj = zext nneg i32 %i.be to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = zext i32 %i.bh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bk, i8 0, i64 %i.bl, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.p, %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q
  store i32 %i.bb, ptr %i.u, align 4, !tbaa !287
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !288
  %i.bn = zext i32 %i.ba to i64
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bn
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit: ; preds = %bb.t, %bb.u
  %.0.i38 = phi ptr [ @_hb_CrapPool, %bb.t ], [ %i.bo, %bb.u ] ; 4 uses
  %i.bp = load i32, ptr %.0.i38, align 4
  %i.bq = and i32 %i.bp, -8
  %i.br = or disjoint i32 %i.bq, 2
  store i32 %i.br, ptr %.0.i38, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i38, i64 8
  store i32 %i.az, ptr %i.bs, align 4, !tbaa !299
  %i.bt = add i32 %i.x, %i.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i38, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !300
  %i.bv = load i32, ptr %i.c, align 4, !tbaa !316
  %.not.i39 = icmp ult i32 %i.az, %i.bv
  br i1 %.not.i39, label %bb.w, label %bb.v, !prof !131

bb.v:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit41

bb.w:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  %i.bw = load ptr, ptr %i.y, align 8, !tbaa !322
  %i.bx = zext i32 %i.az to i64
  %i.by = getelementptr inbounds nuw [216 x i8], ptr %i.bw, i64 %i.bx
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit41

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit41: ; preds = %bb.v, %bb.w
  %.0.i40 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.by, %bb.w ] ; 2 uses
  tail call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i40, i32 noundef %4, i1 noundef zeroext false)
  tail call void @_ZN5graph7graph_t8vertex_t13remove_parentEj(ptr noundef nonnull align 8 dereferenceable(216) %.0.i40, i32 noundef %1)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit: ; preds = %.critedge.i, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit41
  %.sroa.0.1 = phi i32 [ %.sroa.0.068, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit41 ], [ %.sroa.0.2, %.critedge.i ], [ %.sroa.0.4, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.069, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit41 ], [ %.pre-phi, %.critedge.i ], [ %.sroa.10.069, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.070, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit41 ], [ %.sroa.17.2, %.critedge.i ], [ %.sroa.17.070, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.071, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %bb.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph8Coverage15filter_coverageERNS_24gsubgpos_graph_context_tEjjj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %5 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %6 = alloca %struct.hb_map_iter_t.538, align 8  ; 16 uses
  %7 = alloca %struct.hb_map_iter_t.538, align 8  ; 14 uses
  %8 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %9 = alloca %struct.hb_map_iter_t.538, align 8  ; 22 uses
  %10 = alloca %struct.hb_serialize_context_t, align 8 ; 28 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !128
  store i32 %3, ptr %i.b, align 4, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !338, !nonnull !127, !align !339 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !316
  %.not.i = icmp ult i32 %1, %i.f
  br i1 %.not.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, !prof !131

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !322
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw [216 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !340
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !341
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.b

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !338 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre139 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !316
  %i.q = icmp ult i32 %1, %.pre139
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 8), align 8, !tbaa !340
  %i.s = load ptr, ptr @_hb_CrapPool, align 16, !tbaa !341
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19, !prof !179

bb.b:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %i.w = phi i64 [ %i.p, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread ], [ %i.v, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %i.x = phi ptr [ %i.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread ], [ %.pre, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !322
  %i.aa = zext i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [216 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, %bb.b
  %i.ac = phi i64 [ %i.w, %bb.b ], [ %i.v, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %.0.i18 = phi ptr [ %i.ab, %bb.b ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ] ; 4 uses
  %i.ad = load ptr, ptr %.0.i18, align 8, !tbaa !341 ; 11 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i18, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !340
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !132
  %i.ak = load i16, ptr %i.ad, align 1, !tbaa !130
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  switch i16 %i.al, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread [
    i16 1, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %.0.i18, align 8, !tbaa !341
  %.val6.i = load ptr, ptr %i.ae, align 8, !tbaa !340
  %i.am = ptrtoint ptr %.val6.i to i64
  %i.an = ptrtoint ptr %.val.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit

bb.f:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %.0.i18, align 8, !tbaa !341
  %.val8.i = load ptr, ptr %i.ae, align 8, !tbaa !340
  %i.aq = ptrtoint ptr %.val8.i to i64
  %i.ar = ptrtoint ptr %.val7.i to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %.split

.split:                                           ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !132
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !130
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 6
  %i.az = add nuw nsw i64 %i.ay, 4
  %.not109 = icmp ult i64 %i.as, %i.az
  br i1 %.not109, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.g

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !132
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !130
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, 4
  %.not110 = icmp ult i64 %i.ao, %i.bf
  br i1 %.not110, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.g

bb.g:                                             ; preds = %.split, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit
  %i.bg = load i16, ptr %i.ad, align 1, !tbaa !130, !noalias !1955 ; 2 uses
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 3 uses
  %i.bi = zext i16 %i.bh to i32
  switch i16 %i.bh, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !noalias !1955, !srcloc !132
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !noalias !1955, !srcloc !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !130, !noalias !1955
  %.not.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %bb.j, !prof !252

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !noalias !1955, !srcloc !132
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !130, !noalias !1955
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bo = zext i16 %i.bn to i32                   ; 3 uses
  %.pre8.i.i.i = load i16, ptr %i.bj, align 1, !tbaa !130, !noalias !1955
  %i.bp = icmp eq i16 %.pre8.i.i.i, 0
  br i1 %i.bp, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, !prof !179

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.i, %bb.j
  %.sroa.11.0 = phi i32 [ %i.bo, %bb.j ], [ 0, %bb.i ]
  %i.bq = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !130, !noalias !1955
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !noalias !1955, !srcloc !132
  %.pre11.i.i.i = load i16, ptr %i.bj, align 1, !tbaa !130, !noalias !1955
  %i.bs = icmp eq i16 %.pre11.i.i.i, 0
  %i.bt = load i16, ptr %i.bl, align 1, !tbaa !130, !noalias !1955
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  br i1 %i.bs, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.k, !prof !179

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !noalias !1955, !srcloc !132
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.k, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bo, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bo, %bb.k ]
  %i.bv = phi i16 [ %i.br, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bu, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bu, %bb.k ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bl, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !130, !noalias !1955
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = icmp ugt i16 %i.bv, %i.by
  br i1 %i.bz, label %bb.l, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit, !prof !149

bb.l:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.ca = load i16, ptr %i.bj, align 1, !tbaa !130, !noalias !1955
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = zext i16 %i.cb to i32
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

_ZNK2OT6Layout6Common8Coverage4iterEv.exit:       ; preds = %bb.g, %bb.h, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, %bb.l
  %.sroa.11.2 = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.l ], [ %.sroa.11.1, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 2 uses
  %.sroa.535.0 = phi ptr [ null, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %bb.l ], [ %i.ad, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 4 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.cc, %bb.l ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.535.0, i64 2 ; 4 uses
  %i.ce = icmp eq i16 %i.bg, 256
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.535.0, i64 4 ; 2 uses
  br label %bb.m

end_hunk_4
