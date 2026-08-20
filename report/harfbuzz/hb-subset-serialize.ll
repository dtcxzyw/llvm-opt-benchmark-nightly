inline.NumInlined: 5839
inline.NumDeleted: 2553
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE:bb.a
  %.pre289.i = add i32 %.sroa.11184.0248.i, 1     ; 3 uses
  br i1 %.not.i98.i, label %.critedge.i100.i, label %bb.af

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %i.hz = icmp slt i32 %.sroa.0178.0247.i, 0
  br i1 %i.hz, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i, label %bb.ag, !prof !11

bb.ag:                                            ; preds = %bb.af
  %.not.i131.i = icmp ugt i32 %.pre289.i, %.sroa.0178.0247.i
  br i1 %.not.i131.i, label %.preheader.i.i, label %.critedge.i100.i, !prof !11

.preheader.i.i:                                   ; preds = %bb.ag, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.ic, %.preheader.i.i ], [ %.sroa.0178.0247.i, %bb.ag ] ; 2 uses
  %i.ia = lshr i32 %.043.i.i, 1
  %i.ib = add i32 %.043.i.i, 8
  %i.ic = add i32 %i.ib, %i.ia                    ; 8 uses
  %i.id = icmp ugt i32 %.pre289.i, %i.ic
  br i1 %i.id, label %.preheader.i.i, label %.thread.i133.i, !llvm.loop !154

.thread.i133.i:                                   ; preds = %.preheader.i.i
  %i.ie = icmp ugt i32 %i.ic, 178956970
  br i1 %i.ie, label %.critedge.i148.i, label %bb.ah, !prof !11

.critedge.i148.i:                                 ; preds = %.thread.i133.i
  %i.if = xor i32 %.sroa.0178.0247.i, -1
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i

bb.ah:                                            ; preds = %.thread.i133.i
  %.not49.i135.i = icmp eq i32 %.sroa.0178.0247.i, 0
  br i1 %.not49.i135.i, label %bb.ai, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i

bb.ai:                                            ; preds = %bb.ah
  %.not9.i.i.i145.i = icmp eq ptr %.sroa.21.0250.i, null
  br i1 %.not9.i.i.i145.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ig = zext nneg i32 %i.ic to i64
  %i.ih = mul nuw nsw i64 %i.ig, 24
  %i.ii = call ptr @hb_malloc(i64 noundef %i.ih) #15 ; 4 uses
  %.not10.i.i.i146.i = icmp eq ptr %i.ii, null
  br i1 %.not10.i.i.i146.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %bb.ak, !prof !11

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i147.i = icmp eq i32 %.sroa.11184.0248.i, 0
  br i1 %.not.i.i.i.i147.i, label %.critedge.i100.i, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.ij = zext i32 %.sroa.11184.0248.i to i64
  %i.ik = mul nuw nsw i64 %i.ij, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 1 %.sroa.21.0250.i, i64 %i.ik, i1 false), !alias.scope !155
  br label %.critedge.i100.i

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i: ; preds = %bb.ai, %bb.ah
  %i.il = phi ptr [ null, %bb.ai ], [ %.sroa.21.0250.i, %bb.ah ]
  %i.im = zext nneg i32 %i.ic to i64
  %i.in = mul nuw nsw i64 %i.im, 24
  %i.io = call ptr @hb_realloc(ptr noundef %i.il, i64 noundef %i.in) #15 ; 2 uses
  %.not22.i137.i = icmp eq ptr %i.io, null
  br i1 %.not22.i137.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %.critedge.i100.i, !prof !12

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.aj
  %i.ip = xor i32 %.sroa.0178.0247.i, -1
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i

_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, %.critedge.i148.i, %bb.af
  %.sroa.0178.4.i = phi i32 [ %.sroa.0178.0247.i, %bb.af ], [ %i.ip, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i ], [ %i.if, %.critedge.i148.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

.critedge.i100.i:                                 ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.al, %bb.ak, %bb.ag, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %.sroa.0178.2.i = phi i32 [ %.sroa.0178.0247.i, %bb.ag ], [ %i.ic, %bb.ak ], [ %i.ic, %bb.al ], [ %i.ic, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.0178.0247.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ]
  %.sroa.21.3.i = phi ptr [ %.sroa.21.0250.i, %bb.ag ], [ %i.ii, %bb.ak ], [ %i.ii, %bb.al ], [ %i.io, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.21.0250.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ] ; 2 uses
  %i.iq = zext i32 %.sroa.11184.0248.i to i64
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %.sroa.21.3.i, i64 %i.iq ; 3 uses
  store i32 %.val1.i.i.i, ptr %i.ir, align 8, !tbaa !40
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 %i.hu, ptr %.sroa.4154.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 %i.hy, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !40
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %.critedge.i100.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i
  %.sroa.0178.3.i = phi i32 [ %.sroa.0178.2.i, %.critedge.i100.i ], [ %.sroa.0178.4.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.11184.1.i = phi i32 [ %.pre289.i, %.critedge.i100.i ], [ %.sroa.11184.0248.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.21.4.i = phi ptr [ %.sroa.21.3.i, %.critedge.i100.i ], [ %.sroa.21.0250.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 9 uses
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.is = zext i32 %.sroa.7163.0252.i to i64
  %i.it = shl nuw nsw i64 %i.is, 4
  %scevgep.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 %i.it
  %scevgep378.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 16
  %i.iu = add i32 %.sroa.7163.0252.i, -1
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 4
  %scevgep379.i = getelementptr i8, ptr %scevgep378.i, i64 %i.iw
  %.not.i.i.i.i.i.i.i.i101.i439 = icmp eq i32 %.sroa.7163.0252.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i101.i439, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !prof !159

bb.am:                                            ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !103

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.am
  %.sroa.0162.1.i441 = phi ptr [ %i.iy, %bb.am ], [ %.sroa.0162.0253.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ] ; 2 uses
  %.sroa.7163.1.i440 = phi i32 [ %i.ix, %bb.am ], [ %.sroa.7163.0252.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ]
  %i.ix = add i32 %.sroa.7163.1.i440, -1          ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ix, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i441, i64 16 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i441, i64 20
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = trunc i32 %i.ja to i1
  br i1 %i.jb, label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", label %bb.am, !llvm.loop !103

"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", !llvm.loop !103

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  %.sroa.7163.2.i = phi i32 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.ix, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0162.2.i = phi ptr [ %scevgep.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.iy, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ %scevgep379.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i90.i = icmp ne ptr %.sroa.0162.2.i, %i.ds
  %i.jc = icmp ne i32 %.sroa.7163.2.i, 0
  %i.jd = or i1 %i.jc, %.not.i.i.i.i90.i
  br i1 %i.jd, label %bb.z, label %._crit_edge.i

.lr.ph271.i.unr-lcssa:                            ; preds = %.lr.ph262.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph271.i, label %.lr.ph262.i.epil.preheader

.lr.ph262.i.epil.preheader:                       ; preds = %.lr.ph271.i.unr-lcssa, %.lr.ph262.i.preheader
  %.070261.i.epil.init = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph262.i.preheader ], [ %i.kk, %.lr.ph271.i.unr-lcssa ]
  %.071260.i.epil.init = phi i64 [ 0, %.lr.ph262.i.preheader ], [ %i.kj, %.lr.ph271.i.unr-lcssa ]
  %.075259.i.epil.init = phi i64 [ %.069.lcssa323.i, %.lr.ph262.i.preheader ], [ %i.ki, %.lr.ph271.i.unr-lcssa ]
  %lcmp.mod512 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod512)
  br label %.lr.ph262.i.epil

.lr.ph262.i.epil:                                 ; preds = %.lr.ph262.i.epil, %.lr.ph262.i.epil.preheader
  %.070261.i.epil = phi ptr [ %i.ji, %.lr.ph262.i.epil ], [ %.070261.i.epil.init, %.lr.ph262.i.epil.preheader ] ; 2 uses
  %.071260.i.epil = phi i64 [ %i.jh, %.lr.ph262.i.epil ], [ %.071260.i.epil.init, %.lr.ph262.i.epil.preheader ]
  %.075259.i.epil = phi i64 [ %i.jg, %.lr.ph262.i.epil ], [ %.075259.i.epil.init, %.lr.ph262.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph262.i.epil ], [ 0, %.lr.ph262.i.epil.preheader ]
  %.sroa.3.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.070261.i.epil, i64 16
  %.sroa.3.0.copyload.i.epil = load i32, ptr %.sroa.3.0..sroa_idx.i.epil, align 8, !tbaa !40
  %i.je = shl i32 %.sroa.3.0.copyload.i.epil, 3
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  %i.jg = add i64 %.075259.i.epil, %i.jf          ; 2 uses
  %i.jh = add i64 %.071260.i.epil, %i.jf          ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.070261.i.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph271.i, label %.lr.ph262.i.epil, !llvm.loop !160

.lr.ph271.i:                                      ; preds = %.lr.ph262.i.epil, %.lr.ph271.i.unr-lcssa
  %.lcssa488 = phi i64 [ %i.ki, %.lr.ph271.i.unr-lcssa ], [ %i.jg, %.lr.ph262.i.epil ]
  %.lcssa487 = phi i64 [ %i.kj, %.lr.ph271.i.unr-lcssa ], [ %i.jh, %.lr.ph262.i.epil ]
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.jo = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.jt = icmp ugt i64 %i.fx, 65535
  br label %bb.an

.lr.ph262.i:                                      ; preds = %.lr.ph262.i, %.lr.ph262.i.preheader.new
  %.070261.i = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph262.i.preheader.new ], [ %i.kk, %.lr.ph262.i ] ; 5 uses
  %.071260.i = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %i.kj, %.lr.ph262.i ]
  %.075259.i = phi i64 [ %.069.lcssa323.i, %.lr.ph262.i.preheader.new ], [ %i.ki, %.lr.ph262.i ]
  %niter = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %niter.next.3, %.lr.ph262.i ]
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.070261.i, i64 16
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !40
  %i.ju = shl i32 %.sroa.3.0.copyload.i, 3
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %i.jw = add i64 %.075259.i, %i.jv
  %i.jx = add i64 %.071260.i, %i.jv
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 40
  %.sroa.3.0.copyload.i.1 = load i32, ptr %.sroa.3.0..sroa_idx.i.1, align 8, !tbaa !40
  %i.jy = shl i32 %.sroa.3.0.copyload.i.1, 3
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  %i.ka = add i64 %i.jw, %i.jz
  %i.kb = add i64 %i.jx, %i.jz
  %.sroa.3.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 64
  %.sroa.3.0.copyload.i.2 = load i32, ptr %.sroa.3.0..sroa_idx.i.2, align 8, !tbaa !40
  %i.kc = shl i32 %.sroa.3.0.copyload.i.2, 3
  %i.kd = zext i32 %i.kc to i64                   ; 2 uses
  %i.ke = add i64 %i.ka, %i.kd
  %i.kf = add i64 %i.kb, %i.kd
  %.sroa.3.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 88
  %.sroa.3.0.copyload.i.3 = load i32, ptr %.sroa.3.0..sroa_idx.i.3, align 8, !tbaa !40
  %i.kg = shl i32 %.sroa.3.0.copyload.i.3, 3
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %i.ki = add i64 %i.ke, %i.kh                    ; 3 uses
  %i.kj = add i64 %i.kf, %i.kh                    ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.070261.i, i64 96 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph271.i.unr-lcssa, label %.lr.ph262.i

bb.an:                                            ; preds = %.thread.i, %.lr.ph271.i
  %.061269.i = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph271.i ], [ %i.ns, %.thread.i ] ; 4 uses
  %.062268.i = phi i1 [ false, %.lr.ph271.i ], [ %.3226.i, %.thread.i ] ; 2 uses
  %.172267.i = phi i64 [ %.lcssa487, %.lr.ph271.i ], [ %.374225.i, %.thread.i ] ; 3 uses
  %.176266.i = phi i64 [ %.lcssa488, %.lr.ph271.i ], [ %.378224.i, %.thread.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.061269.i, align 8, !tbaa !40 ; 10 uses
  %.sroa.8152.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 8
  %.sroa.8152.0.copyload.i = load i64, ptr %.sroa.8152.0..061.sroa_idx.i, align 8, !tbaa !134
  %.sroa.9.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 16
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..061.sroa_idx.i, align 8, !tbaa !40
  %i.kl = load ptr, ptr %i.ac, align 8, !tbaa !88 ; 5 uses
  %.not.i102.i = icmp eq ptr %i.kl, null
  br i1 %.not.i102.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.km = mul i32 %.sroa.0.0.copyload.i, 506952113
  %i.kn = and i32 %i.km, 1073741823
  %i.ko = load i32, ptr %i.jj, align 8, !tbaa !106
  %i.kp = urem i32 %i.kn, %i.ko                   ; 2 uses
  %i.kq = zext nneg i32 %i.kp to i64              ; 2 uses
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kt = load i32, ptr %i.ks, align 4            ; 2 uses
  %i.ku = and i32 %i.kt, 2
  %.not15.i.i.i104.i = icmp eq i32 %i.ku, 0
  br i1 %.not15.i.i.i104.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %.lr.ph.i.i.i105.i

.lr.ph.i.i.i105.i:                                ; preds = %bb.ao
  %i.kv = load i32, ptr %i.ab, align 4
  %i.kw = load i32, ptr %i.kr, align 4, !tbaa !40
  %i.kx = icmp eq i32 %i.kw, %.sroa.0.0.copyload.i
  br i1 %i.kx, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i

bb.ap:                                            ; preds = %.lr.ph.i.i106.i
  %i.ky = load i32, ptr %i.li, align 4, !tbaa !40
  %i.kz = icmp eq i32 %i.ky, %.sroa.0.0.copyload.i
  br i1 %i.kz, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i, !llvm.loop !107

._crit_edge.i.i110.i:                             ; preds = %bb.ap, %.lr.ph.i.i.i105.i
  %.lcssa10.i.i111.i = phi i32 [ %i.kt, %.lr.ph.i.i.i105.i ], [ %i.lk, %bb.ap ]
  %i.la = phi i64 [ %i.kq, %.lr.ph.i.i.i105.i ], [ %i.lh, %bb.ap ]
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.la
  %i.lc = trunc i32 %.lcssa10.i.i111.i to i1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %spec.select.i.i112.i = select i1 %i.lc, ptr %i.ld, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i

.lr.ph.i.i106.i:                                  ; preds = %.lr.ph.i.i.i105.i, %bb.ap
  %.01016.i13.i.i107.i = phi i32 [ %i.lg, %bb.ap ], [ %i.kp, %.lr.ph.i.i.i105.i ]
  %.017.i12.i.i108.i = phi i32 [ %i.le, %bb.ap ], [ 0, %.lr.ph.i.i.i105.i ]
  %i.le = add i32 %.017.i12.i.i108.i, 1           ; 2 uses
  %i.lf = add i32 %i.le, %.01016.i13.i.i107.i
  %i.lg = and i32 %i.lf, %i.kv                    ; 2 uses
  %i.lh = zext i32 %i.lg to i64                   ; 2 uses
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lk = load i32, ptr %i.lj, align 4            ; 2 uses
  %i.ll = and i32 %i.lk, 2
  %.not.i.i.i109.i = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i.i109.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ap, !llvm.loop !107

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i: ; preds = %.lr.ph.i.i106.i, %._crit_edge.i.i110.i, %bb.ao, %bb.an
  %.0.i113.i = phi ptr [ @_hb_NullPool, %bb.an ], [ %spec.select.i.i112.i, %._crit_edge.i.i110.i ], [ @_hb_NullPool, %bb.ao ], [ @_hb_NullPool, %.lr.ph.i.i106.i ]
  %i.lm = load ptr, ptr %.0.i113.i, align 8, !tbaa !108
  %i.ln = load i32, ptr %15, align 8, !tbaa !162  ; 2 uses
  %i.lo = load i16, ptr %i.lm, align 1, !tbaa !152
  %i.lp = call noundef i16 @llvm.bswap.i16(i16 %i.lo)
  %i.lq = zext i16 %i.lp to i32
  %switch.selectcmp.i.i.i = icmp eq i32 %i.ln, 1196643650
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 7, i32 0
  %switch.selectcmp2.i.i.i = icmp eq i32 %i.ln, 1196445523
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 9, i32 %switch.select.i.i.i
  %i.lr = icmp eq i32 %switch.select3.i.i.i, %i.lq
  br i1 %i.lr, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i
  br i1 %.062268.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ls = load ptr, ptr %i.fh, align 8, !tbaa !136 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !41
  %.not.i115.i = icmp ult i32 %.sroa.0.0.copyload.i, %i.lu
  br i1 %.not.i115.i, label %bb.at, label %bb.as, !prof !8

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i

bb.at:                                            ; preds = %bb.ar
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !72
  %i.lx = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ly = getelementptr inbounds nuw [216 x i8], ptr %i.lw, i64 %i.lx
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i: ; preds = %bb.at, %bb.as
  %.0.i116.i = phi ptr [ @_hb_CrapPool, %bb.as ], [ %i.ly, %bb.at ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i116.i, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !143
  %i.mb = load ptr, ptr %.0.i116.i, align 8, !tbaa !144
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store atomic i32 1, ptr %10 monotonic, align 8
  store atomic i8 1, ptr %i.jk monotonic, align 4
  store atomic ptr null, ptr %i.jl monotonic, align 8
  store i8 1, ptr %i.jm, align 8, !tbaa !101
  store i32 0, ptr %i.jn, align 4, !tbaa !102
  store atomic i32 0, ptr %i.jo monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.jp, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 1, ptr %i.g, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store i64 0, ptr %i.h, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %10, ptr %6, align 8, !tbaa !145
  store ptr %i.ls, ptr %i.jq, align 8, !tbaa !147
  store ptr %i.h, ptr %i.jr, align 8, !tbaa !150
  store ptr %i.g, ptr %i.js, align 8, !tbaa !151
  call void @_ZN5graph7graph_t21traverse_directed_bfsIZNS0_18find_subgraph_sizeEjR8hb_set_tjEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_EEvjOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.ls, i32 noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.mf = load i64, ptr %i.h, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.mg = shl i32 %.sroa.9.0.copyload.i, 3
  %i.mh = zext i32 %i.mg to i64
  %i.mi = add i64 %i.me, %i.mh
  %i.mj = sub i64 %.176266.i, %i.mi
  %i.mk = add i64 %i.mj, %i.mf                    ; 3 uses
  %i.ml = sub i64 %.sroa.8152.0.copyload.i, %i.me
  %i.mm = add i64 %i.ml, %.172267.i               ; 3 uses
  %i.mn = icmp ugt i64 %i.mk, 65535
  %or.cond.not83.i = select i1 %i.jt, i1 true, i1 %i.mn
  %i.mo = icmp ugt i64 %i.mm, 65535
  %or.cond5.not.i = select i1 %or.cond.not83.i, i1 true, i1 %i.mo
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br i1 %or.cond5.not.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i, label %.thread.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i
  %.pre288.i = load ptr, ptr %i.ac, align 8, !tbaa !88
  br label %bb.au

bb.au:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i, %bb.aq
  %i.mp = phi ptr [ %i.kl, %bb.aq ], [ %.pre288.i, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i ] ; 4 uses
  %.277.i = phi i64 [ %.176266.i, %bb.aq ], [ %i.mk, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i ]
  %.273.i = phi i64 [ %.172267.i, %bb.aq ], [ %i.mm, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i ]
  %.not.i118.i = icmp eq ptr %i.mp, null
  br i1 %.not.i118.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit130.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mq = mul i32 %.sroa.0.0.copyload.i, 506952113
  %i.mr = and i32 %i.mq, 1073741823
  %i.ms = load i32, ptr %i.jj, align 8, !tbaa !106
  %i.mt = urem i32 %i.mr, %i.ms                   ; 2 uses
  %i.mu = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mx = load i32, ptr %i.mw, align 4            ; 2 uses
  %i.my = and i32 %i.mx, 2
  %.not15.i.i.i120.i = icmp eq i32 %i.my, 0
  br i1 %.not15.i.i.i120.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit130.i, label %.lr.ph.i.i.i121.i

.lr.ph.i.i.i121.i:                                ; preds = %bb.av
  %i.mz = load i32, ptr %i.ab, align 4
  %i.na = load i32, ptr %i.mv, align 4, !tbaa !40
  %i.nb = icmp eq i32 %i.na, %.sroa.0.0.copyload.i
  br i1 %i.nb, label %._crit_edge.i.i126.i, label %.lr.ph.i.i122.i

bb.aw:                                            ; preds = %.lr.ph.i.i122.i
  %i.nc = load i32, ptr %i.nm, align 4, !tbaa !40
  %i.nd = icmp eq i32 %i.nc, %.sroa.0.0.copyload.i
  br i1 %i.nd, label %._crit_edge.i.i126.i, label %.lr.ph.i.i122.i, !llvm.loop !107

._crit_edge.i.i126.i:                             ; preds = %bb.aw, %.lr.ph.i.i.i121.i
  %.lcssa10.i.i127.i = phi i32 [ %i.mx, %.lr.ph.i.i.i121.i ], [ %i.no, %bb.aw ]
  %i.ne = phi i64 [ %i.mu, %.lr.ph.i.i.i121.i ], [ %i.nl, %bb.aw ]
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %i.ne
  %i.ng = trunc i32 %.lcssa10.i.i127.i to i1
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %spec.select.i.i128.i = select i1 %i.ng, ptr %i.nh, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit130.i

.lr.ph.i.i122.i:                                  ; preds = %.lr.ph.i.i.i121.i, %bb.aw
  %.01016.i13.i.i123.i = phi i32 [ %i.nk, %bb.aw ], [ %i.mt, %.lr.ph.i.i.i121.i ]
  %.017.i12.i.i124.i = phi i32 [ %i.ni, %bb.aw ], [ 0, %.lr.ph.i.i.i121.i ]
  %i.ni = add i32 %.017.i12.i.i124.i, 1           ; 2 uses
  %i.nj = add i32 %i.ni, %.01016.i13.i.i123.i
  %i.nk = and i32 %i.nj, %i.mz                    ; 2 uses
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %i.nl ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.no = load i32, ptr %i.nn, align 4            ; 2 uses
  %i.np = and i32 %i.no, 2
  %.not.i.i.i125.i = icmp eq i32 %i.np, 0
end_hunk_0
begin_hunk_1_@_ZN5graph7graph_t14update_parentsEv:bb.a
  %exitcond.not.i178 = icmp eq i64 %indvars.iv.next.i177, %wide.trip.count.i174
  br i1 %exitcond.not.i178, label %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread, label %.lr.ph.i175, !llvm.loop !363

_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180:        ; preds = %bb.cz
  store i8 0, ptr %i.xf, align 8, !tbaa !296
  br label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit52

.critedge.i79:                                    ; preds = %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread, %bb.cy
  %i.yn = phi ptr [ %.pre338, %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread ], [ %i.vy, %bb.cy ] ; 5 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.0.i37, i64 128
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !361
  %i.yq = urem i32 %i.bn, %i.yp                   ; 2 uses
  %i.yr = zext nneg i32 %i.yq to i64              ; 2 uses
  %i.ys = getelementptr inbounds nuw [12 x i8], ptr %i.yn, i64 %i.yr ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.yu = load i32, ptr %i.yt, align 4            ; 2 uses
  %i.yv = and i32 %i.yu, 2
  %.not44.i80 = icmp eq i32 %i.yv, 0
  br i1 %.not44.i80, label %.loopexit.thread.i94.thread, label %.lr.ph.i81

.loopexit.thread.i94.thread:                      ; preds = %.critedge.i79
  %i.yw = getelementptr inbounds nuw [12 x i8], ptr %i.yn, i64 %i.yr ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  br label %bb.dh

.lr.ph.i81:                                       ; preds = %.critedge.i79, %bb.df
  %i.yy = phi i32 [ %i.zm, %bb.df ], [ %i.yu, %.critedge.i79 ]
  %i.yz = phi ptr [ %i.zk, %bb.df ], [ %i.ys, %.critedge.i79 ]
  %.048.i82 = phi i32 [ %i.zf, %bb.df ], [ 0, %.critedge.i79 ] ; 2 uses
  %.02946.i83 = phi i32 [ %i.zi, %bb.df ], [ %i.yq, %.critedge.i79 ] ; 3 uses
  %.03045.i84 = phi i32 [ %spec.select.i86, %bb.df ], [ -1, %.critedge.i79 ] ; 3 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !40
  %i.zb = zext i32 %i.za to i64
  %i.zc = icmp eq i64 %indvars.iv317, %i.zb
  br i1 %i.zc, label %.loopexit.thread.i94, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i81
  %i.zd = trunc i32 %i.yy to i1
  %i.ze = icmp ne i32 %.03045.i84, -1
  %or.cond.not.i85 = select i1 %i.zd, i1 true, i1 %i.ze
  %spec.select.i86 = select i1 %or.cond.not.i85, i32 %.03045.i84, i32 %.02946.i83 ; 2 uses
  %i.zf = add i32 %.048.i82, 1                    ; 3 uses
  %i.zg = add i32 %i.zf, %.02946.i83
  %i.zh = load i32, ptr %i.xm, align 4, !tbaa !175
  %i.zi = and i32 %i.zh, %i.zg                    ; 3 uses
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [12 x i8], ptr %i.yn, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  %i.zm = load i32, ptr %i.zl, align 4            ; 2 uses
  %i.zn = and i32 %i.zm, 2
  %.not.i87 = icmp eq i32 %i.zn, 0
  br i1 %.not.i87, label %.loopexit.thread.i94, label %.lr.ph.i81, !llvm.loop !364

.loopexit.thread.i94:                             ; preds = %bb.df, %.lr.ph.i81
  %.03043.i89 = phi i32 [ %spec.select.i86, %bb.df ], [ %.03045.i84, %.lr.ph.i81 ]
  %.02941.i90 = phi i32 [ %i.zi, %bb.df ], [ %.02946.i83, %.lr.ph.i81 ]
  %.02839.i91 = phi i32 [ %i.zf, %bb.df ], [ %.048.i82, %.lr.ph.i81 ] ; 2 uses
  %.03043.fr.i92 = freeze i32 %.03043.i89         ; 2 uses
  %i.zo = icmp eq i32 %.03043.fr.i92, -1
  %spec.select67.i93 = select i1 %i.zo, i32 %.02941.i90, i32 %.03043.fr.i92
  %.phi.trans.insert339 = zext i32 %spec.select67.i93 to i64 ; 2 uses
  %.phi.trans.insert340 = getelementptr inbounds nuw [12 x i8], ptr %i.yn, i64 %.phi.trans.insert339
  %.phi.trans.insert341 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert340, i64 4
  %.pre342 = load i32, ptr %.phi.trans.insert341, align 4
  %.pre343 = and i32 %.pre342, 2
  %i.zp = icmp eq i32 %.pre343, 0
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.yn, i64 %.phi.trans.insert339 ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4 ; 3 uses
  br i1 %i.zp, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.loopexit.thread.i94
  %i.zs = load i32, ptr %i.xi, align 8, !tbaa !358
  %i.zt = add i32 %i.zs, -1
  store i32 %i.zt, ptr %i.xi, align 8, !tbaa !358
  %i.zu = load i32, ptr %i.zr, align 4
  %i.zv = and i32 %i.zu, 1
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i37, i64 116 ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !201
  %i.zy = sub i32 %i.zx, %i.zv
  store i32 %i.zy, ptr %i.zw, align 4, !tbaa !201
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit.thread.i94.thread, %bb.dg, %.loopexit.thread.i94
  %i.zz = phi ptr [ %i.yx, %.loopexit.thread.i94.thread ], [ %i.zr, %bb.dg ], [ %i.zr, %.loopexit.thread.i94 ]
  %i.aaa = phi ptr [ %i.yw, %.loopexit.thread.i94.thread ], [ %i.zq, %bb.dg ], [ %i.zq, %.loopexit.thread.i94 ] ; 2 uses
  %.0283961.i95431 = phi i32 [ 0, %.loopexit.thread.i94.thread ], [ %.02839.i91, %bb.dg ], [ %.02839.i91, %.loopexit.thread.i94 ]
  store i32 %i.bf, ptr %i.aaa, align 4, !tbaa !365
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store i32 1, ptr %i.aab, align 4, !tbaa !367
  store i32 %i.bp, ptr %i.zz, align 4
  %i.aac = getelementptr inbounds nuw i8, ptr %.0.i37, i64 116 ; 2 uses
  %i.aad = load <2 x i32>, ptr %i.aac, align 4, !tbaa !40
  %i.aae = add <2 x i32> %i.aad, splat (i32 1)    ; 2 uses
  store <2 x i32> %i.aae, ptr %i.aac, align 4, !tbaa !40
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0.i37, i64 114
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !362
  %i.aah = zext i16 %i.aag to i32
  %i.aai = icmp ugt i32 %.0283961.i95431, %i.aah
  br i1 %i.aai, label %bb.di, label %bb.dk, !prof !11

bb.di:                                            ; preds = %bb.dh
  %i.aaj = extractelement <2 x i32> %i.aae, i64 1
  %i.aak = shl i32 %i.aaj, 3
  %i.aal = load i32, ptr %i.xm, align 4, !tbaa !175 ; 2 uses
  %i.aam = icmp ugt i32 %i.aak, %i.aal
  br i1 %i.aam, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aan = add i32 %i.aal, -8
  %i.aao = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.vw, i32 noundef %i.aan) ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dh, %bb.dj, %bb.di
  %i.aap = load i32, ptr %i.rz, align 8, !tbaa !42
  %i.aaq = add i32 %i.aap, 1
  br label %.sink.split.i50

.sink.split.i50:                                  ; preds = %bb.dk, %bb.cx, %bb.cd
  %.sink.i51 = phi i32 [ %i.xe, %bb.cx ], [ %i.aaq, %bb.dk ], [ 1, %bb.cd ]
  store i32 %.sink.i51, ptr %i.rz, align 8, !tbaa !42
  br label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit52

_ZN5graph7graph_t8vertex_t10add_parentEjb.exit52: ; preds = %.loopexit.i49, %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180, %bb.cf, %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit201, %.sink.split.i50
  %i.aar = getelementptr inbounds nuw i8, ptr %.029287, i64 12 ; 2 uses
  %.not34 = icmp eq ptr %i.aar, %i.be
  br i1 %.not34, label %._crit_edge290, label %bb.ar

._crit_edge295.loopexit.unr-lcssa:                ; preds = %_ZN5graph7graph_t13check_successEb.exit.1
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  br i1 %lcmp.mod486.not, label %._crit_edge295, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge295.loopexit.unr-lcssa, %.lr.ph294
  %indvars.iv322.epil.init = phi i64 [ 0, %.lr.ph294 ], [ %indvars.iv.next323.1, %._crit_edge295.loopexit.unr-lcssa ]
  %.epil.init = phi i8 [ %.promoted, %.lr.ph294 ], [ %i.abv, %._crit_edge295.loopexit.unr-lcssa ]
  %lcmp.mod487 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod487)
  %i.aas = getelementptr inbounds nuw [216 x i8], ptr %i.ah, i64 %indvars.iv322.epil.init ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 112
  %i.aau = load i8, ptr %i.aat, align 8, !tbaa !296, !range !37, !noundef !38
  %i.aav = trunc nuw i8 %i.aau to i1
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 160
  %i.aax = load i8, ptr %i.aaw, align 8, !range !37
  %i.aay = trunc nuw i8 %i.aax to i1
  %i.aaz = select i1 %i.aav, i1 %i.aay, i1 false
  %i.aba = trunc nuw i8 %.epil.init to i1
  %.not.i53.epil = xor i1 %i.aba, true
  %brmerge.i.epil = or i1 %i.aaz, %.not.i53.epil
  br i1 %brmerge.i.epil, label %._crit_edge295, label %bb.dl

bb.dl:                                            ; preds = %.epil.preheader
  store i8 0, ptr %i.ai, align 1, !tbaa !28
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit.unr-lcssa, %bb.dl, %.epil.preheader, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !356
  br label %bb.dp

bb.dm:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit.1, %.lr.ph294.new
  %indvars.iv322 = phi i64 [ 0, %.lr.ph294.new ], [ %indvars.iv.next323.1, %_ZN5graph7graph_t13check_successEb.exit.1 ] ; 3 uses
  %i.abb = phi i8 [ %.promoted, %.lr.ph294.new ], [ %i.abv, %_ZN5graph7graph_t13check_successEb.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph294.new ], [ %niter.next.1, %_ZN5graph7graph_t13check_successEb.exit.1 ]
  %i.abc = getelementptr inbounds nuw [216 x i8], ptr %i.ah, i64 %indvars.iv322 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 112
  %i.abe = load i8, ptr %i.abd, align 8, !tbaa !296, !range !37, !noundef !38
  %i.abf = trunc nuw i8 %i.abe to i1
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 160
  %i.abh = load i8, ptr %i.abg, align 8, !range !37
  %i.abi = trunc nuw i8 %i.abh to i1
  %i.abj = select i1 %i.abf, i1 %i.abi, i1 false
  %i.abk = trunc nuw i8 %i.abb to i1
  %.not.i53 = xor i1 %i.abk, true
  %brmerge.i = or i1 %i.abj, %.not.i53
  br i1 %brmerge.i, label %_ZN5graph7graph_t13check_successEb.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i8 0, ptr %i.ai, align 1, !tbaa !28
  br label %_ZN5graph7graph_t13check_successEb.exit

_ZN5graph7graph_t13check_successEb.exit:          ; preds = %bb.dm, %bb.dn
  %i.abl = phi i8 [ %i.abb, %bb.dm ], [ 0, %bb.dn ] ; 2 uses
  %i.abm = getelementptr inbounds nuw [216 x i8], ptr %i.ah, i64 %indvars.iv322 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 328
  %i.abo = load i8, ptr %i.abn, align 8, !tbaa !296, !range !37, !noundef !38
  %i.abp = trunc nuw i8 %i.abo to i1
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 376
  %i.abr = load i8, ptr %i.abq, align 8, !range !37
  %i.abs = trunc nuw i8 %i.abr to i1
  %i.abt = select i1 %i.abp, i1 %i.abs, i1 false
  %i.abu = trunc nuw i8 %i.abl to i1
  %.not.i53.1 = xor i1 %i.abu, true
  %brmerge.i.1 = or i1 %i.abt, %.not.i53.1
  br i1 %brmerge.i.1, label %_ZN5graph7graph_t13check_successEb.exit.1, label %bb.do

bb.do:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit
  store i8 0, ptr %i.ai, align 1, !tbaa !28
  br label %_ZN5graph7graph_t13check_successEb.exit.1

_ZN5graph7graph_t13check_successEb.exit.1:        ; preds = %bb.do, %_ZN5graph7graph_t13check_successEb.exit
  %i.abv = phi i8 [ %i.abl, %_ZN5graph7graph_t13check_successEb.exit ], [ 0, %bb.do ] ; 2 uses
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge295.loopexit.unr-lcssa, label %bb.dm, !llvm.loop !382

bb.dp:                                            ; preds = %bb.a, %._crit_edge295
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !357, !range !37, !noundef !38
  %i.f = zext i1 %2 to i8
  %i.g = or i8 %i.e, %i.f
  store i8 %i.g, ptr %i.d, align 8, !tbaa !357
  br i1 %2, label %bb.b, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load i8, ptr %i.i, align 8, !tbaa !104, !range !37, !noundef !38
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  store i32 %1, ptr %i.o, align 4, !tbaa !171
  br label %.sink.split

bb.f:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.p = load i32, ptr %i.o, align 4, !tbaa !171  ; 2 uses
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 1, ptr %i.b, align 4, !tbaa !40
  %i.r = mul i32 %i.p, -1640531535
  %i.s = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.o, i32 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br i1 %i.s, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.o, align 4, !tbaa !171
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !176  ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = mul i32 %1, 506952113
  %i.x = and i32 %i.w, 1073741823
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !361
  %i.aa = urem i32 %i.x, %i.z                     ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4            ; 2 uses
  %i.af = and i32 %i.ae, 2
  %.not15.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not15.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.aq, align 4, !tbaa !40
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !368

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.k
  %.01016.i20.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.aa, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.am, %bb.k ], [ 0, %.lr.ph.i.i.i ]
  %i.am = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.an = add i32 %i.am, %.01016.i20.i.i
  %i.ao = and i32 %i.an, %i.ah                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 2
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %.loopexit, label %bb.k, !llvm.loop !368

_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %i.as, %bb.k ]
  %i.au = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.ap, %bb.k ]
  %i.av = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.av, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !40
  %i.ba = load i32, ptr %i.l, align 8, !tbaa !42
  %i.bb = add i32 %i.ba, 1
  br label %.sink.split

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i, %bb.j, %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !40
  %i.bc = mul i32 %1, -1640531535
  %i.bd = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.be = load i32, ptr %i.l, align 8, !tbaa !42
  %i.bf = add i32 %i.be, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.m, %bb.l
  %.sink = phi i32 [ %i.bb, %bb.l ], [ %i.bf, %bb.m ], [ 1, %bb.e ]
  store i32 %.sink, ptr %i.l, align 8, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.loopexit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !101, !range !37, !noundef !38
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 9                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !188  ; 3 uses
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !189  ; 3 uses
  br i1 %i.h, label %bb.c, label %._crit_edge.i, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !190
  %.not.i = icmp eq i32 %i.m, %i.c
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.not1.i.i.i.i.i = icmp sgt i32 %i.g, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.n = add nsw i32 %i.g, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.g ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.o = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.p = lshr i32 %i.o, 1                         ; 4 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !190  ; 2 uses
  %i.u = icmp slt i32 %i.c, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = add nsw i32 %i.p, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5graph24gsubgpos_graph_context_tD2Ev:bb.a
bb.e:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjPN5graph6LookupELb0EEEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %i.o) #15
  br label %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EED2Ev.exit

_ZN12hb_hashmap_tIjPN5graph6LookupELb0EED2Ev.exit: ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjPN5graph6LookupELb0EEEvPT_.exit.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t16update_distancesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !416, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN19hb_priority_queue_tIlED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217  ; 5 uses
  %.not366 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218  ; 9 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.h = icmp ult i32 %i.e, 8
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod440 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod440)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.i = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 9223372036854775807, ptr %i.j, align 8, !tbaa !386
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !417

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not.i.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.0.i.i = select i1 %.not.i.not.i, ptr @_hb_NullPool, ptr %i.n, !prof !11
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !40 ; 2 uses
  %.not.i42 = icmp ult i32 %i.o, %i.e
  br i1 %.not.i42, label %.thread, label %bb.d, !prof !8

.thread:                                          ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !386
  br label %.preheader.i.preheader

bb.d:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 56), align 8, !tbaa !386
  br i1 %.not366, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85, label %.preheader.i.preheader, !prof !264

.preheader.i.preheader:                           ; preds = %.thread, %bb.d
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.w, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.u = lshr i32 %.043.i, 1
  %i.v = add i32 %.043.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 5 uses
  %i.x = icmp ugt i32 %i.e, %i.w
  br i1 %i.x, label %.preheader.i, label %.thread.i, !llvm.loop !384

.thread.i:                                        ; preds = %.preheader.i
  %i.y = icmp ugt i32 %i.w, 268435455
  br i1 %i.y, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !11

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.z = shl nuw i32 %i.w, 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aa) #15 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !39
  %.not.i.not.i44 = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %i.m, align 8
  %.0.i.i45 = select i1 %.not.i.not.i44, ptr @_hb_NullPool, ptr %i.ad, !prof !11
  %i.ae = load i32, ptr %.0.i.i45, align 4, !tbaa !40
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85: ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !39
  %.not.i.not.i44268 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %i.m, align 8
  %.0.i.i45269 = select i1 %.not.i.not.i44268, ptr @_hb_NullPool, ptr %i.ag, !prof !11
  %i.ah = load i32, ptr %.0.i.i45269, align 4, !tbaa !40
  %i.ai = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #15 ; 2 uses
  %.not22.i86 = icmp eq ptr %i.ai, null
  br i1 %.not22.i86, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, !prof !12

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  %i.aj = phi i32 [ %i.ae, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ah, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.0178.4 = phi i32 [ %i.w, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.43.4 = phi ptr [ %i.ab, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ai, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ] ; 3 uses
  store i64 0, ptr %.sroa.43.4, align 8, !tbaa !134
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43.4, i64 8
  store i32 %i.aj, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33:     ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread
  %.sroa.43.5284 = phi ptr [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.43.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %.sroa.22.4283 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ 1, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ]
  %.sroa.0178.5282 = phi i32 [ -1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.0178.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !217 ; 4 uses
  %or.cond = icmp sgt i32 %i.ak, 0
  br i1 %or.cond, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, !prof !418

.preheader.i.i:                                   ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.an, %.preheader.i.i ], [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ] ; 2 uses
  %i.al = lshr i32 %.053.i.i, 1
  %i.am = add nuw i32 %.053.i.i, 8
  %i.an = add nuw i32 %i.am, %i.al                ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, !llvm.loop !419

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #15 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.aq, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, !prof !226

_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i
  %i.ar = zext nneg i32 %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit

_ZN11hb_vector_tIbLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %_ZN19hb_priority_queue_tIlE6insertElj.exit33
  %.sroa.0158.1 = phi i1 [ false, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ false, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ true, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ]
  %.sroa.8161.0 = phi i32 [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ 0, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.ak, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 2 uses
  %.sroa.15.1 = phi ptr [ null, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ], [ null, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.aq, %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 4 uses
  %i.as = icmp slt i32 %.sroa.0178.5282, 0
  br i1 %i.as, label %.critedge, label %.lr.ph363

.lr.ph363:                                        ; preds = %_ZN11hb_vector_tIbLb0EE6resizeEi.exit
  %i.at = load i8, ptr @_hb_NullPool, align 16    ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.av = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 9223372036854775807, ptr %i.aw, align 8, !tbaa !386
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i64 9223372036854775807, ptr %i.ay, align 8, !tbaa !386
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 488
  store i64 9223372036854775807, ptr %i.ba, align 8, !tbaa !386
  %i.bb = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store i64 9223372036854775807, ptr %i.bc, align 8, !tbaa !386
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 920
  store i64 9223372036854775807, ptr %i.be, align 8, !tbaa !386
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1136
  store i64 9223372036854775807, ptr %i.bg, align 8, !tbaa !386
  %i.bh = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1352
  store i64 9223372036854775807, ptr %i.bi, align 8, !tbaa !386
  %i.bj = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  store i64 9223372036854775807, ptr %i.bk, align 8, !tbaa !386
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !420

bb.f:                                             ; preds = %.lr.ph363, %.loopexit
  %.sroa.43.0362 = phi ptr [ %.sroa.43.5284, %.lr.ph363 ], [ %.sroa.43.3, %.loopexit ] ; 12 uses
  %.sroa.22.0361 = phi i32 [ %.sroa.22.4283, %.lr.ph363 ], [ %.sroa.22.3, %.loopexit ] ; 6 uses
  %.sroa.0178.0360 = phi i32 [ %.sroa.0178.5282, %.lr.ph363 ], [ %.sroa.0178.3, %.loopexit ] ; 10 uses
  %i.bl = icmp eq i32 %.sroa.22.0361, 0
  br i1 %i.bl, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %bb.g

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !28, !range !37, !noundef !38
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.am, label %_ZN5graph7graph_t13check_successEb.exit73

bb.g:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.43.0362, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 5 uses
  %i.bp = add i32 %.sroa.22.0361, -1              ; 7 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.0362, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.43.0362, ptr noundef nonnull align 8 dereferenceable(12) %i.br, i64 12, i1 false), !tbaa.struct !388
  %i.bs = icmp slt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph353.preheader, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %.not.i99 = icmp samesign ugt i32 %i.bp, %.sroa.0178.0360
  br i1 %.not.i99, label %.preheader.i101, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !11

.preheader.i101:                                  ; preds = %bb.h, %.preheader.i101
  %.043.i102 = phi i32 [ %i.bv, %.preheader.i101 ], [ %.sroa.0178.0360, %bb.h ] ; 2 uses
  %i.bt = lshr i32 %.043.i102, 1
  %i.bu = add nuw i32 %.043.i102, 8
  %i.bv = add nuw i32 %i.bu, %i.bt                ; 6 uses
  %i.bw = icmp ugt i32 %i.bp, %i.bv
  br i1 %i.bw, label %.preheader.i101, label %.thread.i103, !llvm.loop !384

.thread.i103:                                     ; preds = %.preheader.i101
  %i.bx = icmp ugt i32 %i.bv, 268435455
  br i1 %i.bx, label %.critedge.i118, label %bb.i, !prof !11

.critedge.i118:                                   ; preds = %.thread.i103
  %i.by = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

bb.i:                                             ; preds = %.thread.i103
  %.not49.i105 = icmp eq i32 %.sroa.0178.0360, 0
  %i.bz = shl nuw i32 %i.bv, 4
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  br i1 %.not49.i105, label %bb.j, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106

bb.j:                                             ; preds = %bb.i
  %i.cb = tail call ptr @hb_malloc(i64 noundef %i.ca) #15 ; 3 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i116, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i32 %.sroa.22.0361 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.sroa.43.0362, i64 %i.cd, i1 false), !alias.scope !421
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106: ; preds = %bb.i
  %i.ce = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.43.0362, i64 noundef %i.ca) #15 ; 2 uses
  %.not22.i107 = icmp eq ptr %i.ce, null
  br i1 %.not22.i107, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, !prof !12

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
  %.pre = load i64, ptr %.sroa.43.6305417, align 8, !tbaa !393 ; 3 uses
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
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !393 ; 3 uses
  %.not.i40 = icmp sgt i64 %.pre, %i.cp
  br i1 %.not.i40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %bb.m, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !393 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.cs
  br i1 %.not27.i, label %.thread307, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.n:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %..thread307_crit_edge, label %bb.o

..thread307_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = zext i32 %i.ci to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.phi.trans.insert
  %.pre374 = load i64, ptr %.phi.trans.insert373, align 8, !tbaa !393
  br label %.thread307

.thread307:                                       ; preds = %..thread307_crit_edge, %bb.m
  %i.ct = phi i64 [ %.pre374, %..thread307_crit_edge ], [ %i.cs, %bb.m ]
  %i.cu = icmp slt i64 %i.cp, %i.ct
  %spec.select.i = select i1 %i.cu, i32 %i.cj, i32 %i.ci ; 2 uses
  %.pre375 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert376 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre375
  %.pre377 = load i64, ptr %.phi.trans.insert376, align 8, !tbaa !134
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread307
  %i.cv = phi i64 [ %i.cp, %bb.n ], [ %.pre377, %.thread307 ]
  %.pre-phi = phi i64 [ %i.cn, %bb.n ], [ %.pre375, %.thread307 ]
  %.0.i41 = phi i32 [ %i.cj, %bb.n ], [ %spec.select.i, %.thread307 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre-phi ; 2 uses
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !134
  store i64 %.pre, ptr %i.cw, align 8, !tbaa !134
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !40
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !40
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !40
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !40
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
  br i1 %.not.i49, label %bb.q, label %bb.p, !prof !8

bb.p:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  %i.df = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.df
  %.pre378 = load i8, ptr %i.dg, align 1, !tbaa !299, !range !37
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %i.dh = phi i8 [ %i.at, %bb.p ], [ %.pre378, %bb.q ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.loopexit, label %bb.r, !llvm.loop !425

bb.r:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !41
  %.not.i51 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dj
  br i1 %.not.i51, label %bb.t, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

bb.t:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.dl = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [216 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53: ; preds = %bb.s, %bb.t
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.dm, %bb.t ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !386
  br i1 %.not.i49, label %bb.v, label %bb.u, !prof !8

bb.u:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  %i.dp = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.dp
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit
end_hunk_2
begin_hunk_3_@_ZN5graph6Lookup14add_sub_tablesERNS_24gsubgpos_graph_context_tEjjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE:bb.a
  %i.ac = zext i32 %i.ab to i64
  %.idx.i = mul nuw nsw i64 %i.ac, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i
  %.not42.i = icmp eq i32 %i.ab, 0
  br i1 %.not42.i, label %._crit_edge, label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !78, !noalias !510 ; 2 uses
  %.pre45.i = load i32, ptr %i.af, align 4, !tbaa !76, !noalias !510 ; 2 uses
  %.pre46.i = load ptr, ptr %i.ag, align 8, !tbaa !78, !noalias !510 ; 2 uses
  %.pre47.i = load i32, ptr %i.ah, align 4, !tbaa !76, !noalias !510 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %.pre45.i to i64
  %.sroa.2.8.insert.ext.i.i.i5.i.i = zext i32 %.pre47.i to i64
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.pre.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %.pre46.i, i64 %.sroa.2.8.insert.ext.i.i.i5.i.i
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i: ; preds = %bb.c, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i
  %.044.i = phi ptr [ %i.z, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i ], [ %i.aw, %bb.c ] ; 3 uses
  %.02143.i = phi i32 [ 0, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i ], [ %i.av, %bb.c ] ; 2 uses
  %i.ak = load i32, ptr %.044.i, align 8, !tbaa !499
  %i.al = add i32 %i.ak, %.02143.i
  %i.am = getelementptr inbounds nuw i8, ptr %.044.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !513 ; 2 uses
  %i.ao = shl i32 %i.an, 1
  %i.ap = shl i32 %i.al, 1
  %i.aq = add i32 %i.ap, 6
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer: ; preds = %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i, %bb.h
  %.sroa.17.0.i.ph.ph = phi i32 [ %.pre47.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i ], [ %i.bd, %bb.h ]
  %.sroa.13.0.i.ph.ph = phi ptr [ %.pre46.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i ], [ %i.be, %bb.h ] ; 4 uses
  %.sroa.7.0.i.ph.ph = phi i32 [ %.pre45.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i ], [ 0, %bb.h ]
  %.sroa.025.0.i.ph.ph = phi ptr [ %.pre.i, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i ], [ %.sroa.025.0.i, %bb.h ]
  %.not.i3.i.i = icmp ne ptr %.sroa.13.0.i.ph.ph, %i.aj
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer, %bb.g
  %.sroa.17.0.i.ph = phi i32 [ 0, %bb.g ], [ %.sroa.17.0.i.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer ] ; 4 uses
  %.sroa.7.0.i.ph = phi i32 [ 0, %bb.g ], [ %.sroa.7.0.i.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer ]
  %.sroa.025.0.i.ph = phi ptr [ %.sroa.025.0.i, %bb.g ], [ %.sroa.025.0.i.ph.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer ]
  %i.ar = icmp ne i32 %.sroa.17.0.i.ph, 0
  %i.as = select i1 %.not.i3.i.i, i1 true, i1 %i.ar
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.17.0.i.ph, 0 ; 2 uses
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i

_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer, %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i.i
  %.sroa.7.0.i = phi i32 [ %i.bb, %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i.i ], [ %.sroa.7.0.i.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer ] ; 3 uses
  %.sroa.025.0.i = phi ptr [ %i.bc, %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i.i ], [ %.sroa.025.0.i.ph, %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer ] ; 5 uses
  %.not.i.i.i = icmp ne ptr %.sroa.025.0.i, %i.ai
  %i.at = icmp ne i32 %.sroa.7.0.i, 0
  %i.au = select i1 %.not.i.i.i, i1 true, i1 %i.at
  br i1 %i.au, label %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i, label %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.i

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.i: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i
  br i1 %i.as, label %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.i
  %i.av = add i32 %i.an, %.02143.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.044.i, i64 24 ; 2 uses
  %.not.i83 = icmp eq ptr %i.aw, %i.ad
  br i1 %.not.i83, label %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit, label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i: ; preds = %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i
  %.not.i.i23.i = icmp eq i32 %.sroa.7.0.i, 0
  %.not.i.i23.i.not = xor i1 %.not.i.i23.i, true  ; 3 uses
  %.not.i.i.i.i.i.not = xor i1 %.not.i.i.i.i.i, true
  %brmerge = select i1 %.not.i.i23.i.not, i1 true, i1 %.not.i.i.i.i.i.not, !prof !212
  %.mux = select i1 %.not.i.i23.i.not, i1 false, i1 true, !prof !212
  %.sroa.025.0.i.mux = select i1 %.not.i.i23.i.not, ptr %.sroa.025.0.i, ptr %.sroa.13.0.i.ph.ph, !prof !212
  br i1 %brmerge, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i, label %bb.d, !prof !213

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i, !prof !11

bb.d:                                             ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i

_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i, %bb.d, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i
  %.not.i.i2351.i = phi i1 [ true, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i ], [ true, %bb.d ], [ %.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i ]
  %.0.i.i.i = phi ptr [ %.sroa.13.0.i.ph.ph, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i ], [ @_hb_CrapPool, %bb.d ], [ %.sroa.025.0.i.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !291 ; 2 uses
  %i.az = icmp ugt i32 %i.ay, %i.aq
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i
  %i.ba = add i32 %i.ay, %i.ao
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !291
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i
  br i1 %.not.i.i2351.i, label %bb.g, label %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i.i: ; preds = %bb.f
  %i.bb = add i32 %.sroa.7.0.i, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i1.i.i.i = icmp eq i32 %.sroa.17.0.i.ph, 0
  br i1 %.not.i.i1.i.i.i, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %.sroa.17.0.i.ph, -1
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer

_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit: ; preds = %bb.c
  %.pre231 = load ptr, ptr %i.y, align 8, !tbaa !483 ; 2 uses
  %.pre232 = load i32, ptr %i.aa, align 4, !tbaa !445 ; 2 uses
  %.not198 = icmp eq i32 %.pre232, 0
  br i1 %.not198, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit
  %i.bf = zext i32 %.pre232 to i64
  %.idx = mul nuw nsw i64 %i.bf, 24
  %i.bg = add nsw i64 %.idx, -24                  ; 2 uses
  %i.bh = udiv i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %xtraiter = and i64 %i.bi, 7                    ; 3 uses
  %i.bj = icmp ult i64 %i.bg, 168
  br i1 %i.bj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bi, 2305843009213693944
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.077200.epil.init = phi ptr [ %.pre231, %.lr.ph.preheader ], [ %i.cw, %._crit_edge.loopexit.unr-lcssa ]
  %.078199.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.077200.epil = phi ptr [ %i.bn, %.lr.ph.epil ], [ %.077200.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.078199.epil = phi i32 [ %i.bm, %.lr.ph.epil ], [ %.078199.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.077200.epil, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !513
  %i.bm = add i32 %i.bl, %.078199.epil            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.077200.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !514

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit
  %.078.lcssa = phi i32 [ 0, %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit ], [ 0, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ], [ %i.cv, %._crit_edge.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.epil ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i298, i64 8 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !143
  %i.bq = load ptr, ptr %.0.i298, align 8, !tbaa !144
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = shl i32 %.078.lcssa, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.bw) #15 ; 11 uses
  %.not80 = icmp eq ptr %i.bx, null
  br i1 %.not80, label %bb.cg, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.077200 = phi ptr [ %.pre231, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ] ; 9 uses
  %.078199 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.cv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.by = getelementptr inbounds nuw i8, ptr %.077200, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !513
  %i.ca = add i32 %i.bz, %.078199
  %i.cb = getelementptr inbounds nuw i8, ptr %.077200, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !513
  %i.cd = add i32 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %.077200, i64 60
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !513
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %.077200, i64 84
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !513
  %i.cj = add i32 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %.077200, i64 108
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !513
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.077200, i64 132
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !513
  %i.cp = add i32 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %.077200, i64 156
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !513
  %i.cs = add i32 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.077200, i64 180
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !513
  %i.cv = add i32 %i.cu, %i.cs                    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.077200, i64 192 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !136, !nonnull !38, !align !141 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 76 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !275 ; 3 uses
  %i.db = load i32, ptr %i.cy, align 8, !tbaa !276
  %.not.i.i.i84 = icmp slt i32 %i.da, %i.db
  br i1 %.not.i.i.i84, label %.critedge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = add i32 %i.da, 1
  %i.dd = tail call noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i32 noundef %i.dc, i1 noundef zeroext false)
  br i1 %i.dd, label %..critedge_crit_edge.i.i.i, label %bb.k, !prof !8

..critedge_crit_edge.i.i.i:                       ; preds = %bb.j
  %.pre.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !275
  br label %.critedge.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.de, ptr @_hb_CrapPool, align 16
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %bb.i
  %i.df = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.da, %bb.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !274
  %i.di = add i32 %i.df, 1
  store i32 %i.di, ptr %i.cz, align 4, !tbaa !275
  %i.dj = zext i32 %i.df to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dj
  store ptr %i.bx, ptr %i.dk, align 8, !tbaa !277
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit: ; preds = %bb.k, %.critedge.i.i.i
  %i.dl = load i32, ptr %i.cy, align 8, !tbaa !276
  %i.dm = icmp sgt i32 %i.dl, -1
  br i1 %i.dm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  tail call void @hb_free(ptr noundef nonnull %i.bx) #15
  br label %bb.cg

bb.m:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  %i.dn = load ptr, ptr %.0.i298, align 8, !tbaa !144 ; 3 uses
  %i.do = load ptr, ptr %i.bo, align 8, !tbaa !143 ; 2 uses
  %.not.i85 = icmp eq ptr %i.do, %i.dn
  br i1 %.not.i85, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dq, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr readonly align 1 %i.dn, i64 %i.dr, i1 false), !alias.scope !515
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.m, %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !152
  %i.du = and i16 %i.dt, 4096
  %.not188 = icmp eq i16 %i.du, 0
  br i1 %.not188, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -2
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !143
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -2
  %i.dz = load i16, ptr %i.dy, align 1, !alias.scope !519
  store i16 %i.dz, ptr %i.dw, align 1, !alias.scope !519
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZL9hb_memcpyPvPKvm.exit
  store ptr %i.bx, ptr %.0.i298, align 8, !tbaa !144
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store ptr %i.ea, ptr %i.bo, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !108
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ec = load i16, ptr %i.eb, align 1, !tbaa !152
  %i.ed = tail call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ee = trunc i32 %.078.lcssa to i16
  %i.ef = add i16 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.eh = tail call i16 @llvm.bswap.i16(i16 %i.ef)
  store i16 %i.eh, ptr %i.eg, align 1, !tbaa !353
  %i.ei = load ptr, ptr %i.y, align 8, !tbaa !483 ; 2 uses
  %i.ej = load i32, ptr %i.aa, align 4, !tbaa !445 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %.idx218 = mul nuw nsw i64 %i.ek, 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx218
  %.not81210 = icmp eq i32 %i.ej, 0
  br i1 %.not81210, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.p
  %i.em = trunc i32 %3 to i16
  %i.en = tail call i16 @llvm.bswap.i16(i16 %i.em)
  %i.eo = load i16, ptr @_hb_NullPool, align 16
  br label %bb.s

._crit_edge216:                                   ; preds = %._crit_edge208, %bb.p
  %.val.i = phi i32 [ %2, %bb.p ], [ %i.ga, %._crit_edge208 ]
  %.076.lcssa = phi ptr [ %.0.i298, %bb.p ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !78 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 20
  %i.es = load i32, ptr %i.er, align 4, !tbaa !76 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, label %bb.q, !prof !11

bb.q:                                             ; preds = %._crit_edge216
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.es to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopIN22hb_serialize_context_t8object_t6link_tEZN10hb_array_tIS2_E6_qsortIS2_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS2_E11hb_priorityILj1EEEUlRKS2_SH_E_EvPS7_mT0_(ptr noundef %i.eq, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i)
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 12
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx.i.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.es, 1
  br i1 %.not1.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %bb.q
  %.01518.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.critedge.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i
  %.01519.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %.01518.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ] ; 3 uses
  %i.eu = icmp ugt ptr %.01519.i.i.i.i.i, %i.eq
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.r
  %.016.i.i.i.i.i = phi ptr [ %i.fh, %bb.r ], [ %.01519.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 7 uses
  %i.ev = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !291 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !291 ; 2 uses
  %i.ez = sub i32 %i.ew, %i.ey
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ew, %i.ey
  %i.fa = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = sub i32 %i.fb, %i.fd
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.fe, i32 %i.ez
  %i.ff = icmp sgt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.ff, label %bb.r, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.r, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.015.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i.i, i64 12 ; 2 uses
  %i.fg = icmp ult ptr %.015.i.i.i.i.i, %i.et
  br i1 %i.fg, label %.preheader.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, !llvm.loop !523

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fh = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.fh, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fh, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !524
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i, align 4
  %i.fi = icmp ugt ptr %i.fh, %i.eq
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i, !llvm.loop !525

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit: ; preds = %.critedge.i.i.i.i.i, %._crit_edge216, %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = mul i32 %.val.i, -1640531535
  %i.fl = call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.cg

bb.s:                                             ; preds = %.lr.ph215, %._crit_edge208
  %i.fm = phi ptr [ %i.bx, %.lr.ph215 ], [ %i.fy, %._crit_edge208 ] ; 2 uses
  %i.fn = phi ptr [ %i.bx, %.lr.ph215 ], [ %i.fz, %._crit_edge208 ] ; 2 uses
  %i.fo = phi i32 [ %2, %.lr.ph215 ], [ %i.ga, %._crit_edge208 ] ; 2 uses
  %.074213 = phi ptr [ %i.ei, %.lr.ph215 ], [ %i.gb, %._crit_edge208 ] ; 4 uses
  %.075212 = phi i32 [ 0, %.lr.ph215 ], [ %i.fr, %._crit_edge208 ] ; 2 uses
  %.076211 = phi ptr [ %.0.i298, %.lr.ph215 ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.074213, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !513 ; 3 uses
  %i.fr = add i32 %i.fq, %.075212
  %i.fs = getelementptr inbounds nuw i8, ptr %.074213, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !69 ; 2 uses
  %i.fu = zext i32 %i.fq to i64
  %.idx219 = shl nuw nsw i64 %i.fu, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx219
  %.not82202 = icmp eq i32 %i.fq, 0
  br i1 %.not82202, label %._crit_edge208, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %bb.s
  %i.fw = load i32, ptr %.074213, align 8, !tbaa !499
  %i.fx = add i32 %i.fw, %.075212
  br label %.lr.ph207

._crit_edge208:                                   ; preds = %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118, %bb.s
  %i.fy = phi ptr [ %i.fm, %bb.s ], [ %i.mr, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ]
  %i.fz = phi ptr [ %i.fn, %bb.s ], [ %i.mr, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ]
  %i.ga = phi i32 [ %i.fo, %bb.s ], [ %i.ne, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.076211, %bb.s ], [ %.2, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.074213, i64 24 ; 2 uses
  %.not81 = icmp eq ptr %i.gb, %i.el
  br i1 %.not81, label %._crit_edge216, label %bb.s

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118
end_hunk_3
begin_hunk_4_@_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GPOS_impl7PairSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_:bb.a
_ZN5graph7graph_t8vertex_t16remove_real_linkEjPKv.exit: ; preds = %bb.u, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit27, %bb.t
  tail call void @_ZN5graph7graph_t8vertex_t13remove_parentEj(ptr noundef nonnull align 8 dereferenceable(216) %.0.i26, i32 noundef %1)
  ret i32 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5graph8Coverage14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %7 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %8 = alloca %struct.hb_map_iter_t.120, align 8  ; 16 uses
  %9 = alloca %struct.hb_map_iter_t.120, align 8  ; 14 uses
  %10 = alloca %struct.hb_zip_iter_t, align 8     ; 8 uses
  %11 = alloca %struct.hb_map_iter_t.120, align 8 ; 22 uses
  %12 = alloca %struct.hb_serialize_context_t, align 8 ; 32 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !40
  store i32 %5, ptr %i.b, align 4, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136, !nonnull !38, !align !141 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %.not.i = icmp ult i32 %1, %i.f
  br i1 %.not.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, !prof !8

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw [216 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !144
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.b

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !136 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre141 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !41
  %i.q = icmp ult i32 %1, %.pre141
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 8), align 8, !tbaa !143
  %i.s = load ptr, ptr @_hb_CrapPool, align 16, !tbaa !144
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit20, !prof !127

bb.b:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %i.w = phi i64 [ %i.p, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread ], [ %i.v, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %i.x = phi ptr [ %i.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread ], [ %.pre, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = zext i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [216 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit20

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit20: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, %bb.b
  %i.ac = phi i64 [ %i.w, %bb.b ], [ %i.v, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %.0.i19 = phi ptr [ %i.ab, %bb.b ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ] ; 4 uses
  %i.ad = load ptr, ptr %.0.i19, align 8, !tbaa !144 ; 11 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNS0_14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEPS0_SE_jjT_j.exit", label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit20
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i19, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !143
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNS0_14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEPS0_SE_jjT_j.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.ak = load i16, ptr %i.ad, align 1, !tbaa !152
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  switch i16 %i.al, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNS0_14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEPS0_SE_jjT_j.exit" [
    i16 1, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %.0.i19, align 8, !tbaa !144
  %.val6.i = load ptr, ptr %i.ae, align 8, !tbaa !143
  %i.am = ptrtoint ptr %.val6.i to i64
  %i.an = ptrtoint ptr %.val.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNS0_14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEPS0_SE_jjT_j.exit", label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit

bb.f:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %.0.i19, align 8, !tbaa !144
  %.val8.i = load ptr, ptr %i.ae, align 8, !tbaa !143
  %i.aq = ptrtoint ptr %.val8.i to i64
  %i.ar = ptrtoint ptr %.val7.i to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNS0_14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEPS0_SE_jjT_j.exit", label %.split

.split:                                           ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !152
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 6
  %i.az = add nuw nsw i64 %i.ay, 4
  %.not111 = icmp ult i64 %i.as, %i.az
  br i1 %.not111, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNS0_14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEPS0_SE_jjT_j.exit", label %bb.g

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !152
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, 4
  %.not112 = icmp ult i64 %i.ao, %i.bf
  br i1 %.not112, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZNS0_14clone_coverageERNS_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEPS0_SE_jjT_j.exit", label %bb.g

bb.g:                                             ; preds = %.split, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit
  %i.bg = load i16, ptr %i.ad, align 1, !tbaa !152, !noalias !617 ; 2 uses
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 3 uses
  %i.bi = zext i16 %i.bh to i32
  switch i16 %i.bh, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !617, !srcloc !448
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !617, !srcloc !448
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !617
  %.not.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %bb.j, !prof !385

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !617, !srcloc !448
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !152, !noalias !617
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bo = zext i16 %i.bn to i32                   ; 3 uses
  %.pre8.i.i.i = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !617
  %i.bp = icmp eq i16 %.pre8.i.i.i, 0
  br i1 %i.bp, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, !prof !127

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.i, %bb.j
  %.sroa.11.0 = phi i32 [ %i.bo, %bb.j ], [ 0, %bb.i ]
  %i.bq = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !152, !noalias !617
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !617, !srcloc !448
  %.pre11.i.i.i = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !617
  %i.bs = icmp eq i16 %.pre11.i.i.i, 0
  %i.bt = load i16, ptr %i.bl, align 1, !tbaa !152, !noalias !617
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  br i1 %i.bs, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.k, !prof !127

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !617, !srcloc !448
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.k, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bo, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bo, %bb.k ]
  %i.bv = phi i16 [ %i.br, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bu, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bu, %bb.k ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bl, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !152, !noalias !617
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = icmp ugt i16 %i.bv, %i.by
  br i1 %i.bz, label %bb.l, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit, !prof !11

bb.l:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.ca = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !617
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = zext i16 %i.cb to i32
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

_ZNK2OT6Layout6Common8Coverage4iterEv.exit:       ; preds = %bb.g, %bb.h, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, %bb.l
  %.sroa.11.2 = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.l ], [ %.sroa.11.1, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 2 uses
  %.sroa.537.0 = phi ptr [ null, %bb.g ], [ %i.ad, %bb.h ], [ %i.ad, %bb.l ], [ %i.ad, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 4 uses
  %.sroa.7.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.cc, %bb.l ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.537.0, i64 2 ; 4 uses
  %i.ce = icmp eq i16 %i.bg, 256
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.537.0, i64 4 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit
  %.sroa.33.sroa.0.0 = phi i32 [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %i.dq, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 8 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.2, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 7 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 10 uses
  switch i16 %i.bh, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage14clone_coverageERNSA_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit" [
    i16 1, label %bb.n
    i16 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.cg = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.ch = tail call noundef i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = zext i16 %i.ch to i32
  %.not242 = icmp ult i32 %.sroa.13.0, %i.ci
  br i1 %.not242, label %bb.p, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage14clone_coverageERNSA_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit"

bb.p:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15
  br i1 %i.ce, label %bb.q, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread

bb.q:                                             ; preds = %bb.p
  %i.cj = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.ck = tail call noundef i16 @llvm.bswap.i16(i16 %i.cj)
  %i.cl = zext i16 %i.ck to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.cl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, !prof !8

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.not.i.i.i.i.i.i.i.i = icmp ule i32 %4, %.sroa.33.sroa.0.0
  %i.cm = icmp ugt i32 %5, %.sroa.33.sroa.0.0
  %or.cond110 = and i1 %.not.i.i.i.i.i.i.i.i, %i.cm
  br i1 %or.cond110, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage14clone_coverageERNSA_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit", label %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i"

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread: ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i244 = icmp ule i32 %4, %.sroa.33.sroa.0.0
  %i.cn = icmp ugt i32 %5, %.sroa.33.sroa.0.0
  %or.cond110245 = and i1 %.not.i.i.i.i.i.i.i.i244, %i.cn
  br i1 %or.cond110245, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage14clone_coverageERNSA_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit", label %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread"

"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.co = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.cp = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i32
  %.not.i.i.i.i.i29 = icmp samesign ult i32 %.sroa.13.0, %i.cr
  br i1 %.not.i.i.i.i.i29, label %bb.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !8

bb.s:                                             ; preds = %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread"
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.cs = zext nneg i32 %.sroa.13.0 to i64
  %i.ct = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.cs
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.s, %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread"
  %.0.i.i.i.i.i = phi ptr [ %i.ct, %bb.s ], [ @_hb_Null_OT_RangeRecord, %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread" ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !152
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cx = zext i16 %i.cw to i32
  %.not.i.i.i.i30 = icmp ult i32 %.sroa.27.0, %i.cx
  br i1 %.not.i.i.i.i30, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.cy = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
  %i.cz = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.da = tail call noundef i16 @llvm.bswap.i16(i16 %i.cz)
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = icmp samesign ult i32 %i.cy, %i.db
  br i1 %i.dc, label %bb.u, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dd = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 1, !tbaa !152
  %i.dg = tail call noundef i16 @llvm.bswap.i16(i16 %i.df)
  %i.dh = zext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw [6 x i8], ptr %.sroa.537.0, i64 %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i16, ptr %i.dj, align 1, !tbaa !152
  %i.dl = tail call noundef i16 @llvm.bswap.i16(i16 %i.dk)
  %i.dm = zext i16 %i.dl to i32                   ; 3 uses
  %i.dn = add i32 %.sroa.22.0, 1
  %.not1.i.i.i.i = icmp eq i32 %i.dn, %i.dm
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !8

bb.v:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.do = add i32 %.sroa.22.0, 1
  %i.dp = add nuw nsw i32 %.sroa.27.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.u
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit: ; preds = %bb.t, %bb.v, %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i", %bb.u, %.sink.split.i.i.i.i
  %.sroa.27.1 = phi i32 [ 0, %.sink.split.i.i.i.i ], [ %.sroa.27.0, %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i" ], [ %i.dh, %bb.u ], [ 0, %bb.t ], [ %i.dp, %bb.v ]
  %.sroa.22.2 = phi i32 [ %i.dm, %.sink.split.i.i.i.i ], [ %.sroa.22.0, %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i" ], [ %i.dm, %bb.u ], [ %.sroa.22.0, %bb.t ], [ %i.do, %bb.v ]
  %.sroa.13.2 = phi i32 [ %i.db, %.sink.split.i.i.i.i ], [ %i.co, %"_ZNK4$_23clIRZN5graph8Coverage14clone_coverageERNS1_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i" ], [ %i.cy, %bb.u ], [ %i.cy, %bb.t ], [ %.sroa.13.0, %bb.v ]
  %i.dq = add nuw i32 %.sroa.33.sroa.0.0, 1
  br label %bb.m, !llvm.loop !620

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage14clone_coverageERNSA_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, %bb.m, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  %.sroa.33.sroa.0.0.lcssa = phi i32 [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ 0, %bb.m ], [ %.sroa.33.sroa.0.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.27.0.lcssa = phi i32 [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.11.2, %bb.m ], [ %.sroa.27.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.22.0.lcssa = phi i32 [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ 0, %bb.m ], [ %.sroa.22.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.13.0.lcssa = phi i32 [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.7.0, %bb.m ], [ %.sroa.13.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.33.sroa.0.0.insert.ext = zext i32 %.sroa.33.sroa.0.0.lcssa to i64
  %.sroa.33.sroa.0.0.insert.insert = or disjoint i64 %.sroa.33.sroa.0.0.insert.ext, -4294967296
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !136, !nonnull !38, !align !141
  %i.ds = tail call noundef i32 @_ZN5graph7graph_t8new_nodeEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.dr, ptr noundef null, ptr noundef null) ; 5 uses
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !136, !nonnull !38, !align !141 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.ds, %i.dv
  br i1 %.not.i.i, label %bb.x, label %bb.w, !prof !8

bb.w:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage14clone_coverageERNSA_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.x:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage14clone_coverageERNSA_24gsubgpos_graph_context_tEjjjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit"
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72
  %i.dy = zext i32 %i.ds to i64
  %i.dz = getelementptr inbounds nuw [216 x i8], ptr %i.dx, i64 %i.dy
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.x, %bb.w
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.dz, %bb.x ] ; 2 uses
  %i.ea = and i64 %i.ac, 4294967295               ; 2 uses
  %i.eb = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.ea) #15 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %i.eb, ptr %12, align 8, !tbaa !227
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !237
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 100 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ee, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.eg monotonic, align 8
  store atomic i8 1, ptr %i.eh monotonic, align 4
  store atomic ptr null, ptr %i.ei monotonic, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 3 uses
  store i8 1, ptr %i.ej, align 8, !tbaa !238
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 114 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  store ptr null, ptr %i.el, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ek, i8 0, i64 18, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 17 uses
  store i32 0, ptr %i.em, align 4, !tbaa !240
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 21 uses
  store ptr %i.eb, ptr %i.en, align 8, !tbaa !241
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  store ptr %i.ed, ptr %i.eo, align 8, !tbaa !242
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr null, ptr %i.ep, align 8, !tbaa !243
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %i.eq, align 8, !tbaa !244
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %12)
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 84 ; 5 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !245 ; 3 uses
  %i.et = load i32, ptr %i.ef, align 8, !tbaa !246 ; 6 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.es, %i.et
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.eu = add i32 %i.es, 1                        ; 2 uses
  %i.ev = icmp slt i32 %i.et, 0
  br i1 %i.ev, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i.i, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  %.not.i24.i.i = icmp ugt i32 %i.eu, %i.et
  br i1 %.not.i24.i.i, label %.preheader.i.i.i, label %..critedge_crit_edge.i.i.i.i.i, !prof !11

.preheader.i.i.i:                                 ; preds = %bb.z, %.preheader.i.i.i
  %.043.i.i.i = phi i32 [ %i.ey, %.preheader.i.i.i ], [ %i.et, %bb.z ] ; 2 uses
  %i.ew = lshr i32 %.043.i.i.i, 1
  %i.ex = add i32 %.043.i.i.i, 8
  %i.ey = add i32 %i.ex, %i.ew                    ; 7 uses
  %i.ez = icmp ugt i32 %i.eu, %i.ey
  br i1 %i.ez, label %.preheader.i.i.i, label %.thread.i.i.i28, !llvm.loop !247

.thread.i.i.i28:                                  ; preds = %.preheader.i.i.i
  %i.fa = icmp ugt i32 %i.ey, 536870911
  br i1 %i.fa, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i.i, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %.thread.i.i.i28
  %.not49.i.i.i = icmp eq i32 %i.et, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !248 ; 2 uses
  br i1 %.not49.i.i.i, label %bb.ab, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %.not9.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = shl nuw i32 %i.ey, 3
  %i.fe = zext i32 %i.fd to i64
  %i.ff = call ptr @hb_malloc(i64 noundef %i.fe) #15 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %bb.ac
end_hunk_4
begin_hunk_5_@_ZN5graph14PairPosFormat16shrinkERNS_24gsubgpos_graph_context_tEjj:bb.a
  %i.as = ptrtoint ptr %.val8.i.i.i to i64
  %i.at = ptrtoint ptr %.val7.i.i.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp ult i64 %i.au, 4
  br i1 %i.av, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %.split.i.i

.split.i.i:                                       ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !771, !srcloc !448
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !152, !noalias !771
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 6
  %i.bb = add nuw nsw i64 %i.ba, 4
  %.not8.i.i.not = icmp ult i64 %i.au, %i.bb
  br i1 %.not8.i.i.not, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %bb.i

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i: ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !771, !srcloc !448
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !152, !noalias !771
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = add nuw nsw i64 %i.bg, 4
  %.not9.i.i.not = icmp ult i64 %i.aq, %i.bh
  br i1 %.not9.i.i.not, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i, %.split.i.i
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !143
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !144
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = load i16, ptr %i.af, align 1, !tbaa !152, !noalias !774 ; 2 uses
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn) ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  switch i16 %i.bo, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split" [
    i16 1, label %bb.j
    i16 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !774, !srcloc !448
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread

bb.k:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !774, !srcloc !448
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 4 uses
  %i.br = load i16, ptr %i.bq, align 1, !tbaa !152, !noalias !774
  %.not.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %bb.l, !prof !385

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !774, !srcloc !448
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !152, !noalias !774
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt)
  %i.bv = zext i16 %i.bu to i32                   ; 3 uses
  %.pre8.i.i.i = load i16, ptr %i.bq, align 1, !tbaa !152, !noalias !774
  %i.bw = icmp eq i16 %.pre8.i.i.i, 0
  br i1 %i.bw, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, !prof !127

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.k, %bb.l
  %.sroa.11.0 = phi i32 [ %i.bv, %bb.l ], [ 0, %bb.k ]
  %i.bx = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !152, !noalias !774
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !774, !srcloc !448
  %.pre11.i.i.i = load i16, ptr %i.bq, align 1, !tbaa !152, !noalias !774
  %i.bz = icmp eq i16 %.pre11.i.i.i, 0
  %i.ca = load i16, ptr %i.bs, align 1, !tbaa !152, !noalias !774
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca) ; 2 uses
  br i1 %i.bz, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.m, !prof !127

bb.m:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !774, !srcloc !448
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.m, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bv, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bv, %bb.m ]
  %i.cc = phi i16 [ %i.by, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.cb, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.cb, %bb.m ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bs, %bb.m ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.ce = load i16, ptr %i.cd, align 1, !tbaa !152, !noalias !774
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce)
  %i.cg = icmp ugt i16 %i.cc, %i.cf
  br i1 %i.cg, label %bb.n, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread, !prof !11

bb.n:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.ch = load i16, ptr %i.bq, align 1, !tbaa !152, !noalias !774
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread

_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread: ; preds = %bb.j, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, %bb.n
  %.sroa.11.2.ph = phi i32 [ %.sroa.11.1, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ], [ 0, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %.sroa.7.0.ph = phi i32 [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ], [ %i.cj, %bb.n ], [ 0, %bb.j ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 5 uses
  %i.cl = icmp eq i16 %i.bn, 256
  %i.cm = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %.not236244 = icmp eq i32 %3, 0
  %.not236.a = icmp eq i32 %3, 0
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15
  %i.cn = load i16, ptr %i.ck, align 1, !tbaa !152
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %.not298 = icmp samesign ult i32 %.sroa.7.0.ph, %i.cp
  br i1 %.not298, label %.lr.ph, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"

.lr.ph:                                           ; preds = %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit
  %.sroa.13.0286 = phi i32 [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.7.0.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 8 uses
  %.sroa.22.0285 = phi i32 [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 6 uses
  %.sroa.27.0284 = phi i32 [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.11.2.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 5 uses
  %.sroa.33.sroa.0.0283 = phi i32 [ %i.dv, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15
  br i1 %i.cl, label %bb.o, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread

bb.o:                                             ; preds = %.lr.ph
  %i.cq = load i16, ptr %i.ck, align 1, !tbaa !152
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0286, %i.cs
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  br i1 %.not236.a, label %bb.q, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit"

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread: ; preds = %.lr.ph
  br i1 %.not236244, label %.thread, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit"

bb.q:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.ct = add nuw nsw i32 %.sroa.13.0286, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.thread:                                          ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.cu = load i16, ptr %i.ck, align 1, !tbaa !152
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cw = zext i16 %i.cv to i32
  %.not.i.i.i.i.i25 = icmp samesign ult i32 %.sroa.13.0286, %i.cw
  br i1 %.not.i.i.i.i.i25, label %bb.r, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !8

bb.r:                                             ; preds = %.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.cx = zext nneg i32 %.sroa.13.0286 to i64
  %i.cy = getelementptr inbounds nuw [6 x i8], ptr %i.cm, i64 %i.cx
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.r, %.thread
  %.0.i.i.i.i.i = phi ptr [ %i.cy, %bb.r ], [ @_hb_Null_OT_RangeRecord, %.thread ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.da = load i16, ptr %i.cz, align 1, !tbaa !152
  %i.db = tail call noundef i16 @llvm.bswap.i16(i16 %i.da)
  %i.dc = zext i16 %i.db to i32
  %.not.i.i.i.i26 = icmp ult i32 %.sroa.27.0284, %i.dc
  br i1 %.not.i.i.i.i26, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.dd = add nuw nsw i32 %.sroa.13.0286, 1       ; 4 uses
  %i.de = load i16, ptr %i.ck, align 1, !tbaa !152
  %i.df = tail call noundef i16 @llvm.bswap.i16(i16 %i.de)
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = icmp samesign ult i32 %i.dd, %i.dg
  br i1 %i.dh, label %bb.t, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.di = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw [6 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 1, !tbaa !152
  %i.dl = tail call noundef i16 @llvm.bswap.i16(i16 %i.dk)
  %i.dm = zext i16 %i.dl to i32
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr %i.af, i64 %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !152
  %i.dq = tail call noundef i16 @llvm.bswap.i16(i16 %i.dp)
  %i.dr = zext i16 %i.dq to i32                   ; 3 uses
  %i.ds = add i32 %.sroa.22.0285, 1
  %.not1.i.i.i.i = icmp eq i32 %i.ds, %i.dr
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !8

bb.u:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.dt = add i32 %.sroa.22.0285, 1
  %i.du = add nuw nsw i32 %.sroa.27.0284, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.t
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit: ; preds = %bb.s, %bb.u, %bb.q, %bb.t, %.sink.split.i.i.i.i
  %.sroa.27.1 = phi i32 [ 0, %.sink.split.i.i.i.i ], [ %.sroa.27.0284, %bb.q ], [ %i.dm, %bb.t ], [ 0, %bb.s ], [ %i.du, %bb.u ] ; 2 uses
  %.sroa.22.2 = phi i32 [ %i.dr, %.sink.split.i.i.i.i ], [ %.sroa.22.0285, %bb.q ], [ %i.dr, %bb.t ], [ %.sroa.22.0285, %bb.s ], [ %i.dt, %bb.u ] ; 2 uses
  %.sroa.13.2 = phi i32 [ %i.dg, %.sink.split.i.i.i.i ], [ %i.ct, %bb.q ], [ %i.dd, %bb.t ], [ %i.dd, %bb.s ], [ %.sroa.13.0286, %bb.u ] ; 3 uses
  %i.dv = add nuw i32 %.sroa.33.sroa.0.0283, 1    ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15
  %i.dw = load i16, ptr %i.ck, align 1, !tbaa !152
  %i.dx = tail call noundef i16 @llvm.bswap.i16(i16 %i.dw)
  %i.dy = zext i16 %i.dx to i32
  %.not236 = icmp ult i32 %.sroa.13.2, %i.dy
  br i1 %.not236, label %.lr.ph, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit", !llvm.loop !777

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  %.sroa.33.sroa.0.0.lcssa.ph = phi i32 [ %.sroa.33.sroa.0.0283, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %i.dv, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.33.sroa.0.0283, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.27.0.lcssa.ph = phi i32 [ %.sroa.27.0284, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.27.0284, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.22.0.lcssa.ph = phi i32 [ %.sroa.22.0285, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.22.0285, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.13.0.lcssa.ph = phi i32 [ %.sroa.13.0286, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.13.0286, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %i.dz = zext i32 %.sroa.33.sroa.0.0.lcssa.ph to i64
  %i.ea = or disjoint i64 %i.dz, -4294967296
  br label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split": ; preds = %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit", %bb.i
  %.sroa.532.0242 = phi ptr [ null, %bb.i ], [ %i.af, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ], [ %i.af, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ]
  %.sroa.33.sroa.0.0.lcssa.split = phi i64 [ -4294967296, %bb.i ], [ -4294967296, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %i.ea, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.27.0.lcssa.split = phi i32 [ 0, %bb.i ], [ %.sroa.11.2.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.27.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.22.0.lcssa.split = phi i32 [ 0, %bb.i ], [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.22.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.13.0.lcssa.split = phi i32 [ 0, %bb.i ], [ %.sroa.7.0.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.13.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %i.eb = and i64 %i.bm, 4294967295               ; 2 uses
  %i.ec = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.eb) #15 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %i.ec, ptr %10, align 8, !tbaa !227
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eb ; 2 uses
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !237
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 100 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.eh monotonic, align 8
  store atomic i8 1, ptr %i.ei monotonic, align 4
  store atomic ptr null, ptr %i.ej monotonic, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 3 uses
  store i8 1, ptr %i.ek, align 8, !tbaa !238
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 114 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  store ptr null, ptr %i.em, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.el, i8 0, i64 18, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 19 uses
  store i32 0, ptr %i.en, align 4, !tbaa !240
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 21 uses
  store ptr %i.ec, ptr %i.eo, align 8, !tbaa !241
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.ee, ptr %i.ep, align 8, !tbaa !242
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.eq, align 8, !tbaa !243
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.er, align 8, !tbaa !244
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %10)
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 5 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !245 ; 3 uses
  %i.eu = load i32, ptr %i.eg, align 8, !tbaa !246 ; 6 uses
  %.not.i.i.i.i = icmp slt i32 %i.et, %i.eu
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"
  %i.ev = add i32 %i.et, 1                        ; 2 uses
  %i.ew = icmp slt i32 %i.eu, 0
  br i1 %i.ew, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v
  %.not.i24.i = icmp ugt i32 %i.ev, %i.eu
  br i1 %.not.i24.i, label %.preheader.i.i, label %..critedge_crit_edge.i.i.i.i, !prof !11

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.ez, %.preheader.i.i ], [ %i.eu, %bb.w ] ; 2 uses
  %i.ex = lshr i32 %.043.i.i, 1
  %i.ey = add i32 %.043.i.i, 8
  %i.ez = add i32 %i.ey, %i.ex                    ; 7 uses
  %i.fa = icmp ugt i32 %i.ev, %i.ez
  br i1 %i.fa, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !247

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.fb = icmp ugt i32 %i.ez, 536870911
  br i1 %i.fb, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %bb.x, !prof !11

bb.x:                                             ; preds = %.thread.i.i
  %.not49.i.i = icmp eq i32 %i.eu, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !248 ; 2 uses
  br i1 %.not49.i.i, label %bb.y, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i

bb.y:                                             ; preds = %bb.x
  %.not9.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = shl nuw i32 %i.ez, 3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = call ptr @hb_malloc(i64 noundef %i.ff) #15 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.fh = load i32, ptr %i.es, align 4, !tbaa !245 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 3
  %i.fk = load ptr, ptr %i.fc, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr readonly align 1 %i.fk, i64 %i.fj, i1 false), !alias.scope !778
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i: ; preds = %bb.y, %bb.x
  %i.fl = phi ptr [ null, %bb.y ], [ %i.fd, %bb.x ]
  %i.fm = shl nuw i32 %i.ez, 3
  %i.fn = zext i32 %i.fm to i64
  %i.fo = call ptr @hb_realloc(ptr noundef %i.fl, i64 noundef %i.fn) #15 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fo, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, !prof !12

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.z
  %i.fp = load i32, ptr %i.eg, align 8, !tbaa !246 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.ez, %i.fp
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %..critedge_crit_edge.i.i.i.i, !prof !26

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.eu, %.thread.i.i ], [ %i.fp, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %i.eg, align 8, !tbaa !246
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.ab, %bb.aa
  %.1.i.i42.i.i = phi ptr [ %i.fo, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i ], [ %i.fg, %bb.ab ], [ %i.fg, %bb.aa ]
  store ptr %.1.i.i42.i.i, ptr %i.fc, align 8, !tbaa !248
  store i32 %i.ez, ptr %i.eg, align 8, !tbaa !246
  br label %..critedge_crit_edge.i.i.i.i

..critedge_crit_edge.i.i.i.i:                     ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %bb.w
  %.pre.i.i.i.i = load i32, ptr %i.es, align 4, !tbaa !245
  br label %.critedge.i.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, %bb.v
  %i.fq = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.fq, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"
  %i.fr = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.et, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split" ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !248
  %i.fu = add i32 %i.fr, 1
  store i32 %i.fu, ptr %i.es, align 4, !tbaa !245
  %i.fv = zext i32 %i.fr to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fv
  store ptr null, ptr %i.fw, align 8, !tbaa !253
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

_ZN22hb_serialize_context_tC2EPvm.exit.i:         ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i
  store atomic i32 1, ptr %i.eh monotonic, align 8
  store atomic i8 1, ptr %i.ei monotonic, align 4
  store atomic ptr null, ptr %i.ej monotonic, align 8
  store i8 1, ptr %i.ek, align 8, !tbaa !238
  store ptr null, ptr %i.em, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.el, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.bp, ptr %9, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %.sroa.493.0..sroa_idx, align 4
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.sroa.532.0242, ptr %.sroa.594.0..sroa_idx, align 8
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i32 %.sroa.13.0.lcssa.split, ptr %.sroa.695.0..sroa_idx, align 8
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  store i32 %.sroa.22.0.lcssa.split, ptr %.sroa.796.0..sroa_idx, align 4
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i32 %.sroa.27.0.lcssa.split, ptr %.sroa.897.0..sroa_idx, align 8
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %.sroa.998.0..sroa_idx, align 4
  %.sroa.1099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i64 %.sroa.33.sroa.0.0.lcssa.split, ptr %.sroa.1099.0..sroa_idx, align 8
  %.sroa.11100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i32 1, ptr %.sroa.11100.0..sroa_idx, align 8
  %.sroa.13102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.a, ptr %.sroa.13102.0..sroa_idx, align 8
  %.sroa.14103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr @_ZL11hb_identity, ptr %.sroa.14103.0..sroa_idx, align 8
  %.sroa.15104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr @_ZL8hb_first, ptr %.sroa.15104.0..sroa_idx, align 8
  %i.fx = load ptr, ptr %i.eo, align 8, !tbaa !241 ; 7 uses
  %i.fy = load i32, ptr %i.en, align 4, !tbaa !240 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.fy, 0
  br i1 %.not11.i.i.i.i.i, label %bb.ac, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.thread.i", !prof !8

bb.ac:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 2 ; 5 uses
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = load ptr, ptr %i.ep, align 8, !tbaa !242
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.ga
  %i.ge = icmp slt i64 %i.gd, 2
  br i1 %i.ge, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i", label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, !prof !11

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i:               ; preds = %bb.ac
  store i16 0, ptr %i.fx, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !tbaa !241 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 2
  store ptr %i.gf, ptr %i.eo, align 8, !tbaa !241
end_hunk_5
begin_hunk_6_@_ZNK5graph20LigatureSubstFormat111clone_rangeERNS_24gsubgpos_graph_context_tEj11hb_vector_tIjLb0EEjj:bb.a

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i157, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !78
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = zext i32 %i.bq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bu, i8 0, i64 %i.bv, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i157, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !78
  %i.by = zext i32 %i.bi to i64
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.bx, i64 %i.by
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit: ; preds = %bb.n, %bb.o
  %.0.i159 = phi ptr [ @_hb_CrapPool, %bb.n ], [ %i.bz, %bb.o ] ; 4 uses
  %i.ca = load i32, ptr %.0.i159, align 4
  %i.cb = and i32 %i.ca, -8
  %i.cc = or disjoint i32 %i.cb, 2
  store i32 %i.cc, ptr %.0.i159, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i159, i64 8
  store i32 %i.au, ptr %i.cd, align 4, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i159, i64 4
  store i32 2, ptr %i.ce, align 4, !tbaa !291
  tail call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i, i32 noundef %i.j, i1 noundef zeroext false)
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !39
  %.not153325.not = icmp eq i32 %i.cg, 0
  br i1 %.not153325.not, label %.thread300, label %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph

_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph:           ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.cj = load i16, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 6 ; 2 uses
  %i.cl = zext i32 %i.au to i64                   ; 2 uses
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 9 uses
  %.0112329 = phi i32 [ 0, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %.5117, %.loopexit ]
  %.0119328 = phi i32 [ -1, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %.7126, %.loopexit ] ; 3 uses
  %.0128327 = phi i32 [ 0, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %.5133, %.loopexit ] ; 6 uses
  %.0135326 = phi i32 [ 0, %_ZN11hb_vector_tIjLb0EEixEi.exit.lr.ph ], [ %i.cp, %.loopexit ] ; 7 uses
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !69
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !40
  %i.cp = add i32 %i.co, %.0135326                ; 3 uses
  %.not = icmp ult i32 %.0135326, %5
  %.not147 = icmp ult i32 %4, %i.cp
  %or.cond = select i1 %.not, i1 %.not147, i1 false
  br i1 %or.cond, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !136, !nonnull !38, !align !141 ; 3 uses
  %i.cr = load i16, ptr %i.d, align 1, !tbaa !152
  %i.cs = call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext i16 %i.cs to i64
  %.not.i162 = icmp samesign ult i64 %indvars.iv, %i.ct
  br i1 %.not.i162, label %bb.q, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, !prof !8

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.p, %bb.q
  %.0.i163 = phi ptr [ %i.cu, %bb.q ], [ @_hb_NullPool, %bb.p ]
  %i.cv = call noundef i32 @_ZN5graph7graph_t24mutable_index_for_offsetEjPKv(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, i32 noundef %2, ptr noundef nonnull %.0.i163), !noalias !1574 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !217, !noalias !1577
  %.not.i.i164 = icmp ult i32 %i.cv, %i.cx
  br i1 %.not.i.i164, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, label %.thread307

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72, !noalias !1577
  %i.da = zext i32 %i.cv to i64
  %i.db = getelementptr inbounds nuw [216 x i8], ptr %i.cz, i64 %i.da ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !144, !noalias !1577 ; 5 uses
  %.not4.i.i = icmp eq ptr %i.dc, null
  br i1 %.not4.i.i, label %.thread307, label %bb.r

bb.r:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !143, !noalias !1577
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp ult i64 %i.dh, 2
  br i1 %i.di, label %.thread307, label %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i

_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i: ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1577, !srcloc !448
  %i.dj = load i16, ptr %i.dc, align 1, !tbaa !152, !noalias !1577
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj)
  %i.dl = zext i16 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 1
  %i.dn = add nuw nsw i64 %i.dm, 2
  %.not7.i.i = icmp ult i64 %i.dh, %i.dn
  br i1 %.not7.i.i, label %.thread307, label %_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit

_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit: ; preds = %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !78 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 20 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !76 ; 2 uses
  %.not23.i = icmp eq i32 %i.dr, 0
  br i1 %.not23.i, label %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit, label %.lr.ph.i165.preheader

.lr.ph.i165.preheader:                            ; preds = %_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit
  %i.ds = zext i32 %i.dr to i64
  %.idx.i = mul nuw nsw i64 %i.ds, 12
  %i.dt = add nsw i64 %.idx.i, -12                ; 2 uses
  %i.du = udiv i64 %i.dt, 12                      ; 2 uses
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %i.dw = icmp ult i64 %i.dt, 12
  br i1 %i.dw, label %.lr.ph.i165.epil.preheader, label %.lr.ph.i165.preheader.new

.lr.ph.i165.preheader.new:                        ; preds = %.lr.ph.i165.preheader
  %unroll_iter = and i64 %i.dv, 4611686018427387902
  br label %.lr.ph.i165

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.v
  %i.dx = and i64 %i.du, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i165.epil.preheader, label %._crit_edge.loopexit.i

.lr.ph.i165.epil.preheader:                       ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i165.preheader
  %.025.i.epil.init = phi ptr [ %i.dp, %.lr.ph.i165.preheader ], [ %i.ev, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02224.i.epil.init = phi i32 [ 0, %.lr.ph.i165.preheader ], [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ -1, %.lr.ph.i165.preheader ], [ %i.eu, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod443 = trunc i64 %i.dv to i1
  call void @llvm.assume(i1 %lcmp.mod443)
  %i.dy = getelementptr inbounds nuw i8, ptr %.025.i.epil.init, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !291 ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 2
  br i1 %i.ea, label %._crit_edge.loopexit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i165.epil.preheader
  %i.eb = add i32 %i.dz, -2
  %i.ec = lshr i32 %i.eb, 1                       ; 2 uses
  %.sroa.speculated14.i.epil = call i32 @llvm.umin.i32(i32 %.epil.init, i32 %i.ec)
  %.sroa.speculated.i.epil = call i32 @llvm.umax.i32(i32 %.02224.i.epil.init, i32 %i.ec)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i165.epil.preheader, %bb.s, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.eu, %._crit_edge.loopexit.i.unr-lcssa ], [ %.epil.init, %.lr.ph.i165.epil.preheader ], [ %.sroa.speculated14.i.epil, %bb.s ]
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.02224.i.epil.init, %.lr.ph.i165.epil.preheader ], [ %.sroa.speculated.i.epil, %bb.s ]
  %i.ed = add nuw nsw i32 %.1.i.lcssa, 1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 32
  %i.eg = zext i32 %.lcssa to i64
  %i.eh = or disjoint i64 %i.ef, %i.eg
  br label %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit

.lr.ph.i165:                                      ; preds = %bb.v, %.lr.ph.i165.preheader.new
  %.025.i = phi ptr [ %i.dp, %.lr.ph.i165.preheader.new ], [ %i.ev, %bb.v ] ; 3 uses
  %.02224.i = phi i32 [ 0, %.lr.ph.i165.preheader.new ], [ %.1.i.1, %bb.v ] ; 2 uses
  %i.ei = phi i32 [ -1, %.lr.ph.i165.preheader.new ], [ %i.eu, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i165.preheader.new ], [ %niter.next.1, %bb.v ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !291 ; 2 uses
  %i.el = icmp ult i32 %i.ek, 2
  br i1 %i.el, label %.lr.ph.i165.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i165
  %i.em = add i32 %i.ek, -2
  %i.en = lshr i32 %i.em, 1                       ; 2 uses
  %.sroa.speculated14.i = call i32 @llvm.umin.i32(i32 %i.ei, i32 %i.en)
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %.02224.i, i32 %i.en)
  br label %.lr.ph.i165.1

.lr.ph.i165.1:                                    ; preds = %bb.t, %.lr.ph.i165
  %i.eo = phi i32 [ %i.ei, %.lr.ph.i165 ], [ %.sroa.speculated14.i, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ %.02224.i, %.lr.ph.i165 ], [ %.sroa.speculated.i, %bb.t ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.025.i, i64 16
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !291 ; 2 uses
  %i.er = icmp ult i32 %i.eq, 2
  br i1 %i.er, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i165.1
  %i.es = add i32 %i.eq, -2
  %i.et = lshr i32 %i.es, 1                       ; 2 uses
  %.sroa.speculated14.i.1 = call i32 @llvm.umin.i32(i32 %i.eo, i32 %i.et)
  %.sroa.speculated.i.1 = call i32 @llvm.umax.i32(i32 %.1.i, i32 %i.et)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i165.1
  %i.eu = phi i32 [ %i.eo, %.lr.ph.i165.1 ], [ %.sroa.speculated14.i.1, %bb.u ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %.lr.ph.i165.1 ], [ %.sroa.speculated.i.1, %bb.u ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.025.i, i64 24 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i165

_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit: ; preds = %_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit, %._crit_edge.loopexit.i
  %.sroa.0.0.insert.insert.i.i = phi i64 [ 8589934591, %_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit ], [ %i.eh, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.021.0.extract.trunc = trunc i64 %.sroa.0.0.insert.insert.i.i to i32
  %.sroa.422.0.extract.shift = lshr i64 %.sroa.0.0.insert.insert.i.i, 32
  %.sroa.422.0.extract.trunc = trunc nuw nsw i64 %.sroa.422.0.extract.shift to i32
  %i.ew = add i32 %.0135326, %.sroa.021.0.extract.trunc
  %.sroa.speculated248 = call i32 @llvm.umax.i32(i32 %i.ew, i32 %.0135326) ; 2 uses
  %i.ex = add i32 %.0135326, %.sroa.422.0.extract.trunc
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ex, i32 %i.cp) ; 2 uses
  %.not149 = icmp ult i32 %.sroa.speculated248, %4
  %.not150 = icmp ugt i32 %.sroa.speculated, %5
  %or.cond308 = select i1 %.not149, i1 true, i1 %.not150
  br i1 %or.cond308, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ey, i32 %.0119328) ; 2 uses
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !136, !nonnull !38, !align !141
  %i.fa = load i16, ptr %i.d, align 1, !tbaa !152
  %i.fb = call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i64
  %.not.i169 = icmp samesign ult i64 %indvars.iv, %i.fc
  br i1 %.not.i169, label %bb.x, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171, !prof !8

bb.x:                                             ; preds = %bb.w
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171: ; preds = %bb.w, %bb.x
  %.0.i170 = phi ptr [ %i.fd, %bb.x ], [ @_hb_NullPool, %bb.w ]
  %i.fe = load i16, ptr %i.v, align 1, !tbaa !152
  %i.ff = call noundef i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32
  %.not.i172 = icmp ult i32 %.0128327, %i.fg
  br i1 %.not.i172, label %bb.z, label %bb.y, !prof !8

bb.y:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

bb.z:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.fh = zext nneg i32 %.0128327 to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.fh
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.y, %bb.z
  %.0.i173 = phi ptr [ @_hb_CrapPool, %bb.y ], [ %i.fi, %bb.z ]
  %i.fj = call noundef i32 @_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_(ptr noundef nonnull align 8 dereferenceable(88) %i.ez, i32 noundef %2, ptr noundef nonnull %.0.i170, i32 noundef %i.j, ptr noundef nonnull %.0.i173) ; 2 uses
  %i.fk = load i16, ptr %i.dc, align 1, !tbaa !152
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = load i32, ptr %i.dq, align 4, !tbaa !449 ; 5 uses
  %.not.i174 = icmp ult i32 %i.fn, %i.fm
  br i1 %.not.i174, label %bb.aa, label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

bb.aa:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.fo = sub nuw nsw i32 %i.fm, %i.fn
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !78 ; 5 uses
  %.not.i.i.i.i.i175 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i.i175, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %.sroa.2.8.insert.ext.i.i.i.i = zext nneg i32 %i.fn to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopIN22hb_serialize_context_t8object_t6link_tEZN10hb_array_tIS2_E6_qsortIS2_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS2_E11hb_priorityILj1EEEUlRKS2_SH_E_EvPS7_mT0_(ptr noundef %i.fp, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i.i)
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i32 %i.fn, 1
  br i1 %.not1.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.ab
  %.01518.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.critedge.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.01519.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ %.01518.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.fr = icmp ugt ptr %.01519.i.i.i.i.i.i, %i.fp
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.ac
  %.016.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.ac ], [ %.01519.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 7 uses
  %i.fs = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !291 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !291 ; 2 uses
  %i.fw = sub i32 %i.ft, %i.fv
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ft, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 8
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = sub i32 %i.fy, %i.ga
  %.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.gb, i32 %i.fw
  %i.gc = icmp sgt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.gc, label %bb.ac, label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.gd = icmp ult ptr %.015.i.i.i.i.i.i, %i.fq
  br i1 %i.gd, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, !llvm.loop !523

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ge = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.ge, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ge, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !524
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i.i, align 4
  %i.gf = icmp ugt ptr %i.ge, %i.fp
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !525

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.gg = load ptr, ptr %i.do, align 8, !tbaa !78 ; 2 uses
  %i.gh = load i32, ptr %i.dq, align 4, !tbaa !76 ; 3 uses
  %.not1920.i = icmp eq i32 %i.gh, 0
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i177.preheader

.lr.ph.i177.preheader:                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gi = zext i32 %i.gh to i64
  %.idx.i176 = mul nuw nsw i64 %i.gi, 12
  %i.gj = add nsw i64 %.idx.i176, -12             ; 2 uses
  %i.gk = udiv i64 %i.gj, 12
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %xtraiter444 = and i64 %i.gl, 7                 ; 3 uses
  %i.gm = icmp ult i64 %i.gj, 84
  br i1 %i.gm, label %.lr.ph.i177.epil.preheader, label %.lr.ph.i177.preheader.new

.lr.ph.i177.preheader.new:                        ; preds = %.lr.ph.i177.preheader
  %unroll_iter447 = and i64 %i.gl, 4611686018427387896
  br label %.lr.ph.i177

._crit_edge.loopexit.i178.unr-lcssa:              ; preds = %.lr.ph.i177
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil.preheader

.lr.ph.i177.epil.preheader:                       ; preds = %._crit_edge.loopexit.i178.unr-lcssa, %.lr.ph.i177.preheader
  %.022.i.epil.init = phi ptr [ %i.gg, %.lr.ph.i177.preheader ], [ %i.ho, %._crit_edge.loopexit.i178.unr-lcssa ]
  %.01821.i.epil.init = phi i32 [ 2, %.lr.ph.i177.preheader ], [ %i.hn, %._crit_edge.loopexit.i178.unr-lcssa ]
  %lcmp.mod446 = icmp ne i64 %xtraiter444, 0
  call void @llvm.assume(i1 %lcmp.mod446)
  br label %.lr.ph.i177.epil

.lr.ph.i177.epil:                                 ; preds = %.lr.ph.i177.epil, %.lr.ph.i177.epil.preheader
  %.022.i.epil = phi ptr [ %i.gp, %.lr.ph.i177.epil ], [ %.022.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %.01821.i.epil = phi i32 [ %i.go, %.lr.ph.i177.epil ], [ %.01821.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i177.epil ], [ 0, %.lr.ph.i177.epil.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 4
  store i32 %.01821.i.epil, ptr %i.gn, align 4, !tbaa !291
  %i.go = add i32 %.01821.i.epil, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter444
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil, !llvm.loop !1580

._crit_edge.loopexit.i178:                        ; preds = %.lr.ph.i177.epil, %._crit_edge.loopexit.i178.unr-lcssa
  %i.gq = trunc i32 %i.gh to i16
  %i.gr = call i16 @llvm.bswap.i16(i16 %i.gq)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i178, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gs = phi i16 [ %i.gr, %._crit_edge.loopexit.i178 ], [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i ]
  store i16 %i.gs, ptr %i.dc, align 1, !tbaa !353
  %i.gt = shl nuw nsw i32 %i.fo, 1
  %i.gu = load ptr, ptr %i.dd, align 8, !tbaa !219
  %i.gv = zext nneg i32 %i.gt to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 %i.gw
  store ptr %i.gx, ptr %i.dd, align 8, !tbaa !219
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.022.i = phi ptr [ %i.gg, %.lr.ph.i177.preheader.new ], [ %i.ho, %.lr.ph.i177 ] ; 9 uses
  %.01821.i = phi i32 [ 2, %.lr.ph.i177.preheader.new ], [ %i.hn, %.lr.ph.i177 ] ; 9 uses
  %niter448 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter448.next.7, %.lr.ph.i177 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  store i32 %.01821.i, ptr %i.gy, align 4, !tbaa !291
  %i.gz = add nuw nsw i32 %.01821.i, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !291
  %i.hb = add nuw nsw i32 %.01821.i, 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.022.i, i64 28
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !291
  %i.hd = add nuw nsw i32 %.01821.i, 6
  %i.he = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !291
  %i.hf = add nuw nsw i32 %.01821.i, 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.022.i, i64 52
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !291
  %i.hh = add nuw nsw i32 %.01821.i, 10
  %i.hi = getelementptr inbounds nuw i8, ptr %.022.i, i64 64
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !291
  %i.hj = add nuw nsw i32 %.01821.i, 12
  %i.hk = getelementptr inbounds nuw i8, ptr %.022.i, i64 76
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !291
  %i.hl = add i32 %.01821.i, 14
  %i.hm = getelementptr inbounds nuw i8, ptr %.022.i, i64 88
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !291
  %i.hn = add i32 %.01821.i, 16                   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.022.i, i64 96 ; 2 uses
  %niter448.next.7 = add nuw i64 %niter448, 8     ; 2 uses
  %niter448.ncmp.7 = icmp eq i64 %niter448.next.7, %unroll_iter447
  br i1 %niter448.ncmp.7, label %._crit_edge.loopexit.i178.unr-lcssa, label %.lr.ph.i177

bb.ad:                                            ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %.sroa.speculated266 = call i32 @llvm.umax.i32(i32 %4, i32 %.sroa.speculated248)
  %i.hp = sub i32 %.sroa.speculated266, %.0135326 ; 2 uses
  %.sroa.speculated257 = call i32 @llvm.umin.i32(i32 %5, i32 %.sroa.speculated)
  %i.hq = sub i32 %.sroa.speculated257, %.0135326 ; 2 uses
  %i.hr = sub i32 %i.hq, %i.hp                    ; 2 uses
  %i.hs = shl i32 %i.hr, 1
  %i.ht = add i32 %i.hs, 2
  %i.hu = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %i.ht) #15 ; 8 uses
  %i.hv = icmp eq i32 %i.hu, -1
  br i1 %i.hv, label %.thread307, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !136, !nonnull !38, !align !141 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !41
  %.not.i.i.i181 = icmp ult i32 %i.hu, %i.hy
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = zext i32 %i.hu to i64
  %i.ic = getelementptr inbounds nuw [216 x i8], ptr %i.ia, i64 %i.ib
  %.0.i.i.i182 = select i1 %.not.i.i.i181, ptr %i.ic, ptr @_hb_NullPool, !prof !8
  %i.id = load ptr, ptr %.0.i.i.i182, align 8, !tbaa !220
  %i.ie = trunc i32 %i.hr to i16
  %i.if = call i16 @llvm.bswap.i16(i16 %i.ie)
  store i16 %i.if, ptr %i.id, align 1, !tbaa !353
  %i.ig = load ptr, ptr %i.l, align 8, !tbaa !136, !nonnull !38, !align !141
  %i.ih = shl i32 %i.hp, 1
  %i.ii = add i32 %i.ih, 2
  %i.ij = shl i32 %i.hq, 1
  %i.ik = add i32 %i.ij, 2
  call void @_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ig, i32 noundef %i.cv, i32 noundef %i.ii, i32 noundef %i.ik, i32 noundef %i.hu, i32 noundef 2)
  %i.il = trunc nuw i64 %indvars.iv to i32
  %spec.select154 = call i32 @llvm.umin.i32(i32 %i.il, i32 %.0119328)
  %i.im = load ptr, ptr %i.l, align 8, !tbaa !136, !nonnull !38, !align !141 ; 3 uses
  %i.in = load i16, ptr %i.v, align 1, !tbaa !152
  %i.io = call noundef i16 @llvm.bswap.i16(i16 %i.in)
  %i.ip = zext i16 %i.io to i32
  %.not.i183 = icmp ult i32 %.0128327, %i.ip
  br i1 %.not.i183, label %bb.ag, label %bb.af, !prof !8

bb.af:                                            ; preds = %bb.ae
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

bb.ag:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.iq = zext nneg i32 %.0128327 to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.iq
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185: ; preds = %bb.af, %bb.ag
  %.0.i184 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.ir, %bb.ag ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !41
  %.not.i.i186 = icmp ult i32 %i.j, %i.it
  br i1 %.not.i.i186, label %bb.ai, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.ai:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !72
  %i.iw = getelementptr inbounds nuw [216 x i8], ptr %i.iv, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i187 = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.iw, %bb.ai ] ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 20 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !76 ; 2 uses
  %i.iz = add i32 %i.iy, 1                        ; 5 uses
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.an, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 16
  %i.jc = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i32 noundef %i.iz, i1 noundef zeroext false)
  br i1 %i.jc, label %bb.ak, label %bb.an, !prof !337

bb.ak:                                            ; preds = %bb.aj
  %i.jd = load i32, ptr %i.ix, align 4, !tbaa !76 ; 3 uses
  %i.je = icmp ugt i32 %i.iz, %i.jd
  br i1 %i.je, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.jf = sub nuw nsw i32 %i.iz, %i.jd
  %i.jg = mul i32 %i.jf, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !78
  %i.jj = zext nneg i32 %i.jd to i64
  %i.jk = getelementptr inbounds nuw [12 x i8], ptr %i.ji, i64 %i.jj
  %i.jl = zext i32 %i.jg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jk, i8 0, i64 %i.jl, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !76
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !78
  %i.jo = zext i32 %i.iy to i64
  %i.jp = getelementptr inbounds nuw [12 x i8], ptr %i.jn, i64 %i.jo
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.ao, %bb.an
  %.0.i10.i = phi ptr [ @_hb_CrapPool, %bb.an ], [ %i.jp, %bb.ao ] ; 4 uses
  %i.jq = load i32, ptr %.0.i10.i, align 4
  %i.jr = and i32 %i.jq, -8
  %i.js = or disjoint i32 %i.jr, 2
  store i32 %i.js, ptr %.0.i10.i, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8
  store i32 %i.hu, ptr %i.jt, align 4, !tbaa !82
  %i.ju = load ptr, ptr %.0.i.i187, align 8, !tbaa !144
  %i.jv = ptrtoint ptr %.0.i184 to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 4
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !291
  %i.ka = load i32, ptr %i.is, align 4, !tbaa !41
  %.not.i11.i = icmp ult i32 %i.hu, %i.ka
  br i1 %.not.i11.i, label %bb.aq, label %bb.ap, !prof !8

bb.ap:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !72
  %i.kd = zext i32 %i.hu to i64
  %i.ke = getelementptr inbounds nuw [216 x i8], ptr %i.kc, i64 %i.kd
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i12.i = phi ptr [ @_hb_CrapPool, %bb.ap ], [ %i.ke, %bb.aq ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i12.i, i32 noundef %i.j, i1 noundef zeroext false)
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit: ; preds = %bb.ar, %._crit_edge.i, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %.4123 = phi i32 [ %spec.select154, %bb.ar ], [ %spec.select, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ %spec.select, %._crit_edge.i ] ; 2 uses
  %.0110 = phi i32 [ %i.hu, %bb.ar ], [ %i.fj, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ %i.fj, %._crit_edge.i ] ; 8 uses
  %.2130 = add i32 %.0128327, 1                   ; 2 uses
  %i.kf = load ptr, ptr %i.l, align 8, !tbaa !136, !nonnull !38, !align !141 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !41
  %.not.i188 = icmp ult i32 %.0110, %i.kh
  br i1 %.not.i188, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, !prof !8

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !72
  %i.kk = zext i32 %.0110 to i64
  %i.kl = getelementptr inbounds nuw [216 x i8], ptr %i.kj, i64 %i.kk
  br label %bb.as

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre346 = load ptr, ptr %i.l, align 8, !tbaa !136 ; 2 uses
  %.phi.trans.insert347 = getelementptr inbounds nuw i8, ptr %.pre346, i64 4
  %.pre348 = load i32, ptr %.phi.trans.insert347, align 4, !tbaa !41
  %i.km = icmp ult i32 %.0110, %.pre348
  br i1 %i.km, label %bb.as, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, !prof !127

bb.as:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190
  %.0.i189407 = phi ptr [ %i.kl, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.kn = phi ptr [ %i.kf, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ %.pre346, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !72
  %i.kq = zext i32 %.0110 to i64
  %i.kr = getelementptr inbounds nuw [216 x i8], ptr %i.kp, i64 %i.kq
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, %bb.as
  %.0.i189406 = phi ptr [ %.0.i189407, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %.0.i.i193 = phi ptr [ %i.kr, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !78 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 36 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !76 ; 2 uses
  %i.kw = zext i32 %i.kv to i64
  %.idx.i194 = mul nuw nsw i64 %i.kw, 12
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx.i194
  %.not16.i = icmp eq i32 %i.kv, 0
  br i1 %.not16.i, label %_ZNK5graph20LigatureSubstFormat119clear_virtual_linksERNS_24gsubgpos_graph_context_tEj.exit, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i
  %.017.i = phi ptr [ %i.lh, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i ], [ %i.kt, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192 ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %.071, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %bb.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph8Coverage15filter_coverageERNS_24gsubgpos_graph_context_tEjjj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %5 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %6 = alloca %struct.hb_map_iter_t.340, align 8  ; 16 uses
  %7 = alloca %struct.hb_map_iter_t.340, align 8  ; 14 uses
  %8 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %9 = alloca %struct.hb_map_iter_t.340, align 8  ; 22 uses
  %10 = alloca %struct.hb_serialize_context_t, align 8 ; 28 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !40
  store i32 %3, ptr %i.b, align 4, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136, !nonnull !38, !align !141 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %.not.i = icmp ult i32 %1, %i.f
  br i1 %.not.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, !prof !8

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw [216 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !144
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.b

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !136 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre139 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !41
  %i.q = icmp ult i32 %1, %.pre139
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 8), align 8, !tbaa !143
  %i.s = load ptr, ptr @_hb_CrapPool, align 16, !tbaa !144
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19, !prof !127

bb.b:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %i.w = phi i64 [ %i.p, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread ], [ %i.v, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %i.x = phi ptr [ %i.d, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.thread ], [ %.pre, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = zext i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [216 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit, %bb.b
  %i.ac = phi i64 [ %i.w, %bb.b ], [ %i.v, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ]
  %.0.i18 = phi ptr [ %i.ab, %bb.b ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit ] ; 4 uses
  %i.ad = load ptr, ptr %.0.i18, align 8, !tbaa !144 ; 11 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i18, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !143
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.ak = load i16, ptr %i.ad, align 1, !tbaa !152
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  switch i16 %i.al, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread [
    i16 1, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %.0.i18, align 8, !tbaa !144
  %.val6.i = load ptr, ptr %i.ae, align 8, !tbaa !143
  %i.am = ptrtoint ptr %.val6.i to i64
  %i.an = ptrtoint ptr %.val.i to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 4
  br i1 %i.ap, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit

bb.f:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %.0.i18, align 8, !tbaa !144
  %.val8.i = load ptr, ptr %i.ae, align 8, !tbaa !143
  %i.aq = ptrtoint ptr %.val8.i to i64
  %i.ar = ptrtoint ptr %.val7.i to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %.split

.split:                                           ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !152
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 6
  %i.az = add nuw nsw i64 %i.ay, 4
  %.not109 = icmp ult i64 %i.as, %i.az
  br i1 %.not109, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.g

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !152
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, 4
  %.not110 = icmp ult i64 %i.ao, %i.bf
  br i1 %.not110, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.g

bb.g:                                             ; preds = %.split, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit
  %i.bg = load i16, ptr %i.ad, align 1, !tbaa !152, !noalias !1590 ; 2 uses
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 3 uses
  %i.bi = zext i16 %i.bh to i32
  switch i16 %i.bh, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1590, !srcloc !448
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1590, !srcloc !448
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !1590
  %.not.i.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %bb.j, !prof !385

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1590, !srcloc !448
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !152, !noalias !1590
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bo = zext i16 %i.bn to i32                   ; 3 uses
  %.pre8.i.i.i = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !1590
  %i.bp = icmp eq i16 %.pre8.i.i.i, 0
  br i1 %i.bp, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, !prof !127

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.i, %bb.j
  %.sroa.11.0 = phi i32 [ %i.bo, %bb.j ], [ 0, %bb.i ]
  %i.bq = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !152, !noalias !1590
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1590, !srcloc !448
  %.pre11.i.i.i = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !1590
  %i.bs = icmp eq i16 %.pre11.i.i.i, 0
  %i.bt = load i16, ptr %i.bl, align 1, !tbaa !152, !noalias !1590
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  br i1 %i.bs, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.k, !prof !127

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1590, !srcloc !448
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.k, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bo, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bo, %bb.k ]
  %i.bv = phi i16 [ %i.br, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bu, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bu, %bb.k ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bl, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !152, !noalias !1590
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = icmp ugt i16 %i.bv, %i.by
  br i1 %i.bz, label %bb.l, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit, !prof !11

bb.l:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.ca = load i16, ptr %i.bj, align 1, !tbaa !152, !noalias !1590
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

bb.m:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit
  %.sroa.33.sroa.0.0 = phi i32 [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %i.dq, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 8 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.2, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 7 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 10 uses
  switch i16 %i.bh, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage15filter_coverageERNSA_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit" [
    i16 1, label %bb.n
    i16 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.cg = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.ch = tail call noundef i16 @llvm.bswap.i16(i16 %i.cg)
  %i.ci = zext i16 %i.ch to i32
  %.not234 = icmp ult i32 %.sroa.13.0, %i.ci
  br i1 %.not234, label %bb.p, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage15filter_coverageERNSA_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit"

bb.p:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15
  br i1 %i.ce, label %bb.q, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread

bb.q:                                             ; preds = %bb.p
  %i.cj = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.ck = tail call noundef i16 @llvm.bswap.i16(i16 %i.cj)
  %i.cl = zext i16 %i.ck to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.cl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, !prof !8

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.not.i.i.i.i.i.i.i.i = icmp ule i32 %2, %.sroa.33.sroa.0.0
  %i.cm = icmp ugt i32 %3, %.sroa.33.sroa.0.0
  %or.cond108 = and i1 %.not.i.i.i.i.i.i.i.i, %i.cm
  br i1 %or.cond108, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage15filter_coverageERNSA_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit", label %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i"

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread: ; preds = %bb.p
  %.not.i.i.i.i.i.i.i.i236 = icmp ule i32 %2, %.sroa.33.sroa.0.0
  %i.cn = icmp ugt i32 %3, %.sroa.33.sroa.0.0
  %or.cond108237 = and i1 %.not.i.i.i.i.i.i.i.i236, %i.cn
  br i1 %or.cond108237, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage15filter_coverageERNSA_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit", label %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread"

"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.co = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.cp = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i32
  %.not.i.i.i.i.i27 = icmp samesign ult i32 %.sroa.13.0, %i.cr
  br i1 %.not.i.i.i.i.i27, label %bb.s, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !8

bb.s:                                             ; preds = %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread"
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.cs = zext nneg i32 %.sroa.13.0 to i64
  %i.ct = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.cs
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.s, %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread"
  %.0.i.i.i.i.i = phi ptr [ %i.ct, %bb.s ], [ @_hb_Null_OT_RangeRecord, %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i.thread" ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !152
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cv)
  %i.cx = zext i16 %i.cw to i32
  %.not.i.i.i.i28 = icmp ult i32 %.sroa.27.0, %i.cx
  br i1 %.not.i.i.i.i28, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.cy = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
  %i.cz = load i16, ptr %i.cd, align 1, !tbaa !152
  %i.da = tail call noundef i16 @llvm.bswap.i16(i16 %i.cz)
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = icmp samesign ult i32 %i.cy, %i.db
  br i1 %i.dc, label %bb.u, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.dd = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 1, !tbaa !152
  %i.dg = tail call noundef i16 @llvm.bswap.i16(i16 %i.df)
  %i.dh = zext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw [6 x i8], ptr %.sroa.535.0, i64 %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i16, ptr %i.dj, align 1, !tbaa !152
  %i.dl = tail call noundef i16 @llvm.bswap.i16(i16 %i.dk)
  %i.dm = zext i16 %i.dl to i32                   ; 3 uses
  %i.dn = add i32 %.sroa.22.0, 1
  %.not1.i.i.i.i = icmp eq i32 %i.dn, %i.dm
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !8

bb.v:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.do = add i32 %.sroa.22.0, 1
  %i.dp = add nuw nsw i32 %.sroa.27.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.u
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit: ; preds = %bb.t, %bb.v, %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i", %bb.u, %.sink.split.i.i.i.i
  %.sroa.27.1 = phi i32 [ 0, %.sink.split.i.i.i.i ], [ %.sroa.27.0, %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i" ], [ %i.dh, %bb.u ], [ 0, %bb.t ], [ %i.dp, %bb.v ]
  %.sroa.22.2 = phi i32 [ %i.dm, %.sink.split.i.i.i.i ], [ %.sroa.22.0, %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i" ], [ %i.dm, %bb.u ], [ %.sroa.22.0, %bb.t ], [ %i.do, %bb.v ]
  %.sroa.13.2 = phi i32 [ %i.db, %.sink.split.i.i.i.i ], [ %i.co, %"_ZNK4$_23clIRZN5graph8Coverage15filter_coverageERNS1_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_S6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.thread.i.i.i" ], [ %i.cy, %bb.u ], [ %i.cy, %bb.t ], [ %.sroa.13.0, %bb.v ]
  %i.dq = add nuw i32 %.sroa.33.sroa.0.0, 1
  br label %bb.m, !llvm.loop !1593

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage15filter_coverageERNSA_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, %bb.m, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  %.sroa.33.sroa.0.0.lcssa = phi i32 [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ 0, %bb.m ], [ %.sroa.33.sroa.0.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.27.0.lcssa = phi i32 [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.11.2, %bb.m ], [ %.sroa.27.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.22.0.lcssa = phi i32 [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ 0, %bb.m ], [ %.sroa.22.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.13.0.lcssa = phi i32 [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.7.0, %bb.m ], [ %.sroa.13.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.33.sroa.0.0.insert.ext = zext i32 %.sroa.33.sroa.0.0.lcssa to i64
  %.sroa.33.sroa.0.0.insert.insert = or disjoint i64 %.sroa.33.sroa.0.0.insert.ext, -4294967296
  %i.dr = shl i64 %i.ac, 1
  %i.ds = add i64 %i.dr, 100
  %i.dt = and i64 %i.ds, 4294967294               ; 2 uses
  %i.du = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.dt) #15 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %i.du, ptr %10, align 8, !tbaa !227
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt ; 2 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !237
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 100 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dx, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.dz monotonic, align 8
  store atomic i8 1, ptr %i.ea monotonic, align 4
  store atomic ptr null, ptr %i.eb monotonic, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 3 uses
  store i8 1, ptr %i.ec, align 8, !tbaa !238
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 114 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  store ptr null, ptr %i.ee, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ed, i8 0, i64 18, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 17 uses
  store i32 0, ptr %i.ef, align 4, !tbaa !240
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 21 uses
  store ptr %i.du, ptr %i.eg, align 8, !tbaa !241
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.dw, ptr %i.eh, align 8, !tbaa !242
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.ei, align 8, !tbaa !243
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.ej, align 8, !tbaa !244
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %10)
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 5 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !245 ; 3 uses
  %i.em = load i32, ptr %i.dy, align 8, !tbaa !246 ; 6 uses
  %.not.i.i.i.i = icmp slt i32 %i.el, %i.em
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph8Coverage15filter_coverageERNSA_24gsubgpos_graph_context_tEjjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit"
  %i.en = add i32 %i.el, 1                        ; 2 uses
  %i.eo = icmp slt i32 %i.em, 0
  br i1 %i.eo, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i, label %bb.x, !prof !11

bb.x:                                             ; preds = %bb.w
  %.not.i24.i = icmp ugt i32 %i.en, %i.em
  br i1 %.not.i24.i, label %.preheader.i.i, label %..critedge_crit_edge.i.i.i.i, !prof !11

.preheader.i.i:                                   ; preds = %bb.x, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.er, %.preheader.i.i ], [ %i.em, %bb.x ] ; 2 uses
  %i.ep = lshr i32 %.043.i.i, 1
  %i.eq = add i32 %.043.i.i, 8
  %i.er = add i32 %i.eq, %i.ep                    ; 7 uses
  %i.es = icmp ugt i32 %i.en, %i.er
  br i1 %i.es, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !247

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.et = icmp ugt i32 %i.er, 536870911
  br i1 %i.et, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %bb.y, !prof !11

bb.y:                                             ; preds = %.thread.i.i
  %.not49.i.i = icmp eq i32 %i.em, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !248 ; 2 uses
  br i1 %.not49.i.i, label %bb.z, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i

bb.z:                                             ; preds = %bb.y
  %.not9.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ew = shl nuw i32 %i.er, 3
  %i.ex = zext i32 %i.ew to i64
  %i.ey = call ptr @hb_malloc(i64 noundef %i.ex) #15 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %i.ez = load i32, ptr %i.ek, align 4, !tbaa !245 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.fa = zext i32 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr readonly align 1 %i.fc, i64 %i.fb, i1 false), !alias.scope !1594
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i: ; preds = %bb.z, %bb.y
  %i.fd = phi ptr [ null, %bb.z ], [ %i.ev, %bb.y ]
  %i.fe = shl nuw i32 %i.er, 3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = call ptr @hb_realloc(ptr noundef %i.fd, i64 noundef %i.ff) #15 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fg, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, !prof !12

end_hunk_7
begin_hunk_8_@_ZN5graph20LigatureSubstFormat16shrinkERNS_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEj:bb.a
_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit109: ; preds = %bb.aw, %bb.ax
  %.pre-phi = phi i64 [ %.pre376, %bb.aw ], [ %i.hl, %bb.ax ]
  %.0.i108 = phi ptr [ @_hb_CrapPool, %bb.aw ], [ %i.hm, %bb.ax ]
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 1, !tbaa !152
  %i.hp = call noundef i16 @llvm.bswap.i16(i16 %i.ho)
  %i.hq = zext i16 %i.hp to i32
  %i.hr = load i32, ptr %i.c, align 4, !tbaa !40  ; 2 uses
  %i.hs = sub i32 %i.hq, %i.hr
  %i.ht = shl i32 %i.hs, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i108, i64 8 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !143
  %i.hw = zext i32 %i.ht to i64
  %i.hx = sub nsw i64 0, %i.hw
  %i.hy = getelementptr inbounds i8, ptr %i.hv, i64 %i.hx
  store ptr %i.hy, ptr %i.hu, align 8, !tbaa !143
  %i.hz = trunc i32 %i.hr to i16
  %i.ia = call i16 @llvm.bswap.i16(i16 %i.hz)
  store i16 %i.ia, ptr %i.hn, align 1, !tbaa !353
  %i.ib = load ptr, ptr %i.hf, align 8, !tbaa !136, !nonnull !38, !align !141 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !41 ; 2 uses
  %.not.i.i.i = icmp ult i32 %2, %i.ie
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ig = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.ih = getelementptr inbounds nuw [216 x i8], ptr %i.ig, i64 %.pre-phi
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.ih, ptr @_hb_NullPool, !prof !8 ; 4 uses
  %i.ii = load ptr, ptr %.0.i.i.i, align 8, !tbaa !220 ; 2 uses
  %i.ij = icmp uge ptr %i.ic, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  %.not.i110 = icmp ult ptr %i.ic, %i.il
  %or.cond.i = select i1 %i.ij, i1 %.not.i110, i1 false
  br i1 %or.cond.i, label %bb.ay, label %.thread300

bb.ay:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit109
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.in = load i32, ptr %i.im, align 4, !tbaa !449 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.in, 0
  br i1 %.not2427.not.i, label %.thread300, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.ay
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !450
  %wide.trip.count.i = zext i32 %i.in to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread300, label %bb.ba, !llvm.loop !451

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i111
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.i111 ], [ %indvars.iv.next.i113, %bb.az ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [12 x i8], ptr %i.ip, i64 %indvars.iv.i112 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !291
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.it
  %.not23.not.i = icmp eq ptr %i.ic, %i.iu
  br i1 %.not23.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.az

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.ba
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !82 ; 5 uses
  %i.ix = icmp eq i32 %i.iw, -1
  br i1 %i.ix, label %.thread300, label %bb.bb

bb.bb:                                            ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  %.not.i114 = icmp ult i32 %i.iw, %i.ie
  br i1 %.not.i114, label %bb.bd, label %bb.bc, !prof !8

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit116

bb.bd:                                            ; preds = %bb.bb
  %i.iy = zext i32 %i.iw to i64
  %i.iz = getelementptr inbounds nuw [216 x i8], ptr %i.ig, i64 %i.iy
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit116

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit116: ; preds = %bb.bc, %bb.bd
  %.0.i115 = phi ptr [ @_hb_CrapPool, %bb.bc ], [ %i.iz, %bb.bd ] ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i115, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !143
  %i.jc = load ptr, ptr %.0.i115, align 8, !tbaa !144 ; 7 uses
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i115, i64 116
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !201
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.i115, i64 160
  %i.jj = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ji)
  %i.jk = add i32 %i.jj, 1
  %i.jl = icmp ugt i32 %i.jh, %i.jk
  br i1 %i.jl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit116
  %i.jm = load ptr, ptr %i.hf, align 8, !tbaa !136, !nonnull !38, !align !141
  %i.jn = call noundef i32 @_ZN5graph7graph_t11remap_childEjj(ptr noundef nonnull align 8 dereferenceable(88) %i.jm, i32 noundef %2, i32 noundef %i.iw) ; 2 uses
  %i.jo = icmp eq i32 %i.jn, -1
  br i1 %i.jo, label %.thread300, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit116
  %.061 = phi i32 [ %i.jn, %bb.be ], [ %i.iw, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit116 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(49) %i.f, i1 noundef zeroext true)
  %.fca.0.load.i = load ptr, ptr %13, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %.fca.0.load.i, ptr %15, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  store i64 %.fca.1.load.i, ptr %i.jp, align 8
  %i.jq = trunc i64 %.fca.1.load.i to i32         ; 2 uses
  %.not306340 = icmp eq i32 %i.jq, -1
  br i1 %.not306340, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %bb.bf
  %i.jr = zext i32 %.061 to i64
  %i.js = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  br label %bb.fi

._crit_edge343:                                   ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.jt = load i16, ptr %i.jc, align 1, !tbaa !152, !noalias !1687 ; 2 uses
  %i.ju = call noundef i16 @llvm.bswap.i16(i16 %i.jt) ; 3 uses
  %i.jv = zext i16 %i.ju to i32
  switch i16 %i.ju, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit [
    i16 1, label %bb.bg
    i16 2, label %bb.bh
  ]

bb.bg:                                            ; preds = %._crit_edge343
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1687, !srcloc !448
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

bb.bh:                                            ; preds = %._crit_edge343
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1687, !srcloc !448
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jc, i64 2 ; 4 uses
  %i.jx = load i16, ptr %i.jw, align 1, !tbaa !152, !noalias !1687
  %.not.i.i.i119 = icmp eq i16 %i.jx, 0
  br i1 %.not.i.i.i119, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %bb.bi, !prof !385

bb.bi:                                            ; preds = %bb.bh
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1687, !srcloc !448
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jc, i64 4 ; 3 uses
  %i.jz = load i16, ptr %i.jy, align 1, !tbaa !152, !noalias !1687
  %i.ka = call noundef i16 @llvm.bswap.i16(i16 %i.jz)
  %i.kb = zext i16 %i.ka to i32                   ; 3 uses
  %.pre8.i.i.i = load i16, ptr %i.jw, align 1, !tbaa !152, !noalias !1687
  %i.kc = icmp eq i16 %.pre8.i.i.i, 0
  br i1 %i.kc, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, !prof !127

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.bh, %bb.bi
  %.sroa.11.0 = phi i32 [ %i.kb, %bb.bi ], [ 0, %bb.bh ]
  %i.kd = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !152, !noalias !1687
  %i.ke = call noundef i16 @llvm.bswap.i16(i16 %i.kd)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.bi
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1687, !srcloc !448
  %.pre11.i.i.i = load i16, ptr %i.jw, align 1, !tbaa !152, !noalias !1687
  %i.kf = icmp eq i16 %.pre11.i.i.i, 0
  %i.kg = load i16, ptr %i.jy, align 1, !tbaa !152, !noalias !1687
  %i.kh = call noundef i16 @llvm.bswap.i16(i16 %i.kg) ; 2 uses
  br i1 %i.kf, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.bj, !prof !127

bb.bj:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !noalias !1687, !srcloc !448
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.bj, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.kb, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.kb, %bb.bj ]
  %i.ki = phi i16 [ %i.ke, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.kh, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.kh, %bb.bj ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.jy, %bb.bj ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.kk = load i16, ptr %i.kj, align 1, !tbaa !152, !noalias !1687
  %i.kl = call noundef i16 @llvm.bswap.i16(i16 %i.kk)
  %i.km = icmp ugt i16 %i.ki, %i.kl
  br i1 %i.km, label %bb.bk, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit, !prof !11

bb.bk:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.kn = load i16, ptr %i.jw, align 1, !tbaa !152, !noalias !1687
  %i.ko = call noundef i16 @llvm.bswap.i16(i16 %i.kn)
  %i.kp = zext i16 %i.ko to i32
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

_ZNK2OT6Layout6Common8Coverage4iterEv.exit:       ; preds = %._crit_edge343, %bb.bg, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, %bb.bk
  %.sroa.11.2 = phi i32 [ 0, %._crit_edge343 ], [ 0, %bb.bg ], [ 0, %bb.bk ], [ %.sroa.11.1, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 2 uses
  %.sroa.5152.0 = phi ptr [ null, %._crit_edge343 ], [ %i.jc, %bb.bg ], [ %i.jc, %bb.bk ], [ %i.jc, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 4 uses
  %.sroa.7.0 = phi i32 [ 0, %._crit_edge343 ], [ 0, %bb.bg ], [ %i.kp, %bb.bk ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.5152.0, i64 2 ; 4 uses
  %i.kr = icmp eq i16 %i.jt, 256
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.5152.0, i64 4 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit
  %.sroa.33.sroa.0.0 = phi i32 [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %i.md, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 6 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.2, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 7 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ] ; 10 uses
  switch i16 %i.ju, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit" [
    i16 1, label %bb.bm
    i16 2, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %i.kt = load i16, ptr %i.kq, align 1, !tbaa !152
  %i.ku = call noundef i16 @llvm.bswap.i16(i16 %i.kt)
  %i.kv = zext i16 %i.ku to i32
  %.not488 = icmp ult i32 %.sroa.13.0, %i.kv
  br i1 %.not488, label %bb.bo, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"

bb.bo:                                            ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15
  br i1 %i.kr, label %bb.bp, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread

bb.bp:                                            ; preds = %bb.bo
  %i.kw = load i16, ptr %i.kq, align 1, !tbaa !152
  %i.kx = call noundef i16 @llvm.bswap.i16(i16 %i.kw)
  %i.ky = zext i16 %i.kx to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.ky
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bq, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, !prof !8

bb.bq:                                            ; preds = %bb.bp
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  %.val.val.i.i.i = load i32, ptr %i.c, align 4, !tbaa !40
  %i.kz = icmp ugt i32 %.val.val.i.i.i, %.sroa.33.sroa.0.0
  br i1 %i.kz, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %bb.br

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread: ; preds = %bb.bo
  %.val.val.i.i.i490 = load i32, ptr %i.c, align 4, !tbaa !40
  %i.la = icmp ugt i32 %.val.val.i.i.i490, %.sroa.33.sroa.0.0
  br i1 %i.la, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %.thread

bb.br:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.lb = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.thread:                                          ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.lc = load i16, ptr %i.kq, align 1, !tbaa !152
  %i.ld = call noundef i16 @llvm.bswap.i16(i16 %i.lc)
  %i.le = zext i16 %i.ld to i32
  %.not.i.i.i.i.i145 = icmp samesign ult i32 %.sroa.13.0, %i.le
  br i1 %.not.i.i.i.i.i145, label %bb.bs, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !8

bb.bs:                                            ; preds = %.thread
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !448
  %i.lf = zext nneg i32 %.sroa.13.0 to i64
  %i.lg = getelementptr inbounds nuw [6 x i8], ptr %i.ks, i64 %i.lf
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.bs, %.thread
  %.0.i.i.i.i.i = phi ptr [ %i.lg, %bb.bs ], [ @_hb_Null_OT_RangeRecord, %.thread ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.li = load i16, ptr %i.lh, align 1, !tbaa !152
  %i.lj = call noundef i16 @llvm.bswap.i16(i16 %i.li)
  %i.lk = zext i16 %i.lj to i32
  %.not.i.i.i.i146 = icmp ult i32 %.sroa.27.0, %i.lk
  br i1 %.not.i.i.i.i146, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.ll = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
  %i.lm = load i16, ptr %i.kq, align 1, !tbaa !152
  %i.ln = call noundef i16 @llvm.bswap.i16(i16 %i.lm)
  %i.lo = zext i16 %i.ln to i32                   ; 2 uses
  %i.lp = icmp samesign ult i32 %i.ll, %i.lo
  br i1 %i.lp, label %bb.bu, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.bu:                                            ; preds = %bb.bt
  %i.lq = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.lr = getelementptr inbounds nuw [6 x i8], ptr %i.ks, i64 %i.lq
  %i.ls = load i16, ptr %i.lr, align 1, !tbaa !152
  %i.lt = call noundef i16 @llvm.bswap.i16(i16 %i.ls)
  %i.lu = zext i16 %i.lt to i32
  %i.lv = getelementptr inbounds nuw [6 x i8], ptr %.sroa.5152.0, i64 %i.lq
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i16, ptr %i.lw, align 1, !tbaa !152
  %i.ly = call noundef i16 @llvm.bswap.i16(i16 %i.lx)
  %i.lz = zext i16 %i.ly to i32                   ; 3 uses
  %i.ma = add i32 %.sroa.22.0, 1
  %.not1.i.i.i.i = icmp eq i32 %i.ma, %i.lz
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !8

bb.bv:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.mb = add i32 %.sroa.22.0, 1
  %i.mc = add nuw nsw i32 %.sroa.27.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.bu
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit: ; preds = %bb.bt, %bb.bv, %bb.br, %bb.bu, %.sink.split.i.i.i.i
  %.sroa.27.1 = phi i32 [ 0, %.sink.split.i.i.i.i ], [ %.sroa.27.0, %bb.br ], [ %i.lu, %bb.bu ], [ 0, %bb.bt ], [ %i.mc, %bb.bv ]
  %.sroa.22.2 = phi i32 [ %i.lz, %.sink.split.i.i.i.i ], [ %.sroa.22.0, %bb.br ], [ %i.lz, %bb.bu ], [ %.sroa.22.0, %bb.bt ], [ %i.mb, %bb.bv ]
  %.sroa.13.2 = phi i32 [ %i.lo, %.sink.split.i.i.i.i ], [ %i.lb, %bb.br ], [ %i.ll, %bb.bu ], [ %i.ll, %bb.bt ], [ %.sroa.13.0, %bb.bv ]
  %i.md = add nuw i32 %.sroa.33.sroa.0.0, 1
  br label %bb.bl, !llvm.loop !1690

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread, %bb.bl, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  %.sroa.33.sroa.0.0.lcssa = phi i32 [ 0, %bb.bl ], [ %.sroa.33.sroa.0.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.27.0.lcssa = phi i32 [ %.sroa.11.2, %bb.bl ], [ %.sroa.27.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.22.0.lcssa = phi i32 [ 0, %bb.bl ], [ %.sroa.22.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.13.0.lcssa = phi i32 [ %.sroa.7.0, %bb.bl ], [ %.sroa.13.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.33.sroa.0.0.insert.ext = zext i32 %.sroa.33.sroa.0.0.lcssa to i64
  %.sroa.33.sroa.0.0.insert.insert = or disjoint i64 %.sroa.33.sroa.0.0.insert.ext, -4294967296
  %i.me = and i64 %i.jf, 4294967295               ; 2 uses
  %i.mf = call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.me) #15 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %i.mf, ptr %12, align 8, !tbaa !227
  %i.mg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.me ; 2 uses
  store ptr %i.mh, ptr %i.mg, align 8, !tbaa !237
  %i.mi = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.mj = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %12, i64 100 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mi, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.mk monotonic, align 8
  store atomic i8 1, ptr %i.ml monotonic, align 4
  store atomic ptr null, ptr %i.mm monotonic, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 3 uses
  store i8 1, ptr %i.mn, align 8, !tbaa !238
  %i.mo = getelementptr inbounds nuw i8, ptr %12, i64 114 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  store ptr null, ptr %i.mp, align 8, !tbaa !239
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.mo, i8 0, i64 18, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 19 uses
  store i32 0, ptr %i.mq, align 4, !tbaa !240
  %i.mr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 21 uses
  store ptr %i.mf, ptr %i.mr, align 8, !tbaa !241
  %i.ms = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  store ptr %i.mh, ptr %i.ms, align 8, !tbaa !242
  %i.mt = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr null, ptr %i.mt, align 8, !tbaa !243
  %i.mu = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %i.mu, align 8, !tbaa !244
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %12)
  %i.mv = getelementptr inbounds nuw i8, ptr %12, i64 84 ; 5 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !245 ; 3 uses
  %i.mx = load i32, ptr %i.mj, align 8, !tbaa !246 ; 6 uses
  %.not.i.i.i.i = icmp slt i32 %i.mw, %i.mx
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"
  %i.my = add i32 %i.mw, 1                        ; 2 uses
  %i.mz = icmp slt i32 %i.mx, 0
  br i1 %i.mz, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i, label %bb.bx, !prof !11

bb.bx:                                            ; preds = %bb.bw
  %.not.i24.i = icmp ugt i32 %i.my, %i.mx
  br i1 %.not.i24.i, label %.preheader.i.i, label %..critedge_crit_edge.i.i.i.i, !prof !11

.preheader.i.i:                                   ; preds = %bb.bx, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.nc, %.preheader.i.i ], [ %i.mx, %bb.bx ] ; 2 uses
  %i.na = lshr i32 %.043.i.i, 1
  %i.nb = add i32 %.043.i.i, 8
  %i.nc = add i32 %i.nb, %i.na                    ; 7 uses
  %i.nd = icmp ugt i32 %i.my, %i.nc
  br i1 %i.nd, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !247

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.ne = icmp ugt i32 %i.nc, 536870911
  br i1 %i.ne, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %bb.by, !prof !11

bb.by:                                            ; preds = %.thread.i.i
  %.not49.i.i = icmp eq i32 %i.mx, 0
  %i.nf = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !248 ; 2 uses
  br i1 %.not49.i.i, label %bb.bz, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %.not9.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nh = shl nuw i32 %i.nc, 3
  %i.ni = zext i32 %i.nh to i64
  %i.nj = call ptr @hb_malloc(i64 noundef %i.ni) #15 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %bb.cb, !prof !11

bb.cb:                                            ; preds = %bb.ca
  %i.nk = load i32, ptr %i.mv, align 4, !tbaa !245 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.nk, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, label %bb.cc, !prof !11

bb.cc:                                            ; preds = %bb.cb
  %i.nl = zext i32 %i.nk to i64
  %i.nm = shl nuw nsw i64 %i.nl, 3
  %i.nn = load ptr, ptr %i.nf, align 8, !tbaa !248
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nj, ptr readonly align 1 %i.nn, i64 %i.nm, i1 false), !alias.scope !1691
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i: ; preds = %bb.bz, %bb.by
  %i.no = phi ptr [ null, %bb.bz ], [ %i.ng, %bb.by ]
  %i.np = shl nuw i32 %i.nc, 3
  %i.nq = zext i32 %i.np to i64
  %i.nr = call ptr @hb_realloc(ptr noundef %i.no, i64 noundef %i.nq) #15 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.nr, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, !prof !12

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.ca
  %i.ns = load i32, ptr %i.mj, align 8, !tbaa !246 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.nc, %i.ns
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %..critedge_crit_edge.i.i.i.i, !prof !26
end_hunk_8
