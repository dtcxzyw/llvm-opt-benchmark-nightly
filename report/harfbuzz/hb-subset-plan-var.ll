Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN12hb_hashmap_tIjjLb1EE5resetEv:bb.a

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !172
  store i32 0, ptr %i.b, align 4, !tbaa !170
  br label %_ZN12hb_hashmap_tIjjLb1EE5clearEv.exit

_ZN12hb_hashmap_tIjjLb1EE5clearEv.exit:           ; preds = %bb.a, %._crit_edge.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN12hb_hashmap_tIj6TripleLb0EE5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !173
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !128
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not8.i = icmp eq i32 %i.e, 0
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %_ZN12hb_hashmap_tIj6TripleLb0EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !164
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %.not912.i = icmp ult i32 %i.h, 2
  br i1 %.not912.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.h to i64
  %.idx.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %.idx.i, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !174
  store i32 0, ptr %i.b, align 4, !tbaa !128
  br label %_ZN12hb_hashmap_tIj6TripleLb0EE5clearEv.exit

_ZN12hb_hashmap_tIj6TripleLb0EE5clearEv.exit:     ; preds = %bb.a, %._crit_edge.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z37update_instance_metrics_map_from_cff2P16hb_subset_plan_t(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.OT::cff2::accelerator_t", align 8 ; 6 uses
  %2 = alloca %struct.hb_glyph_extents_t, align 4 ; 9 uses
  %3 = alloca %"struct.OT::hmtx_accelerator_t", align 8 ; 13 uses
  %4 = alloca %"struct.OT::vmtx_accelerator_t", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.hb_pair_t.239, align 8      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.hb_pair_t.239, align 8      ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %.not228 = icmp eq i32 %i.g, 0
  br i1 %.not228, label %bb.bn, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175
  call void @_ZN2OT4cff219accelerator_templ_tIN3CFF25cff2_private_dict_opset_tENS2_31cff2_private_dict_values_base_tINS2_10dict_val_tEEEEC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !197
  %.not229 = icmp eq ptr %i.k, null
  br i1 %.not229, label %bb.bm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.m = call ptr @hb_font_create(ptr noundef %i.l) #10 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !144, !range !30, !noundef !31
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !514
  %i.s = load i32, ptr %i.f, align 4, !tbaa !515
  call void @hb_font_set_var_coords_normalized(ptr noundef %i.m, ptr noundef %i.r, i32 noundef %i.s) #10
  br label %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2388 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !128  ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.not.i, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i, label %.preheader.i.i, !prof !33

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.x, %.preheader.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.v = lshr i32 %.043.i.i, 1
  %i.w = add i32 %.043.i.i, 8
  %i.x = add i32 %i.w, %i.v                       ; 5 uses
  %i.y = icmp ugt i32 %i.u, %i.x
  br i1 %i.y, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !452

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.z = icmp ugt i32 %i.x, 536870911
  br i1 %i.z, label %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !32

_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.aa = shl nuw i32 %i.x, 3
  %i.ab = zext i32 %i.aa to i64
  %i.ac = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ab) #10 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ac, null
  br i1 %.not22.i.i, label %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i, !prof !133

_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread: ; preds = %.thread.i.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i
  call void @hb_font_destroy(ptr noundef %i.m) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ad, align 8, !tbaa !132
  br label %bb.p

_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i: ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, %bb.e
  %.sroa.071.2.ph.i = phi i32 [ 0, %bb.e ], [ %i.x, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 2 uses
  %.sroa.17.3.ph.i = phi ptr [ null, %bb.e ], [ %i.ac, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 2396
  %.val18.i = load i32, ptr %i.ae, align 4, !tbaa !164 ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 2408
  %.val19.i = load ptr, ptr %i.af, align 8, !tbaa !134 ; 5 uses
  %i.ag = add i32 %.val18.i, 1                    ; 3 uses
  %.not15.i.i.i.i.i.i.i.i = icmp ult i32 %i.ag, 2
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i: ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i
  %i.ah = zext i32 %.val18.i to i64
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = getelementptr i8, ptr %.val19.i, i64 %i.ai
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.aj, i64 32 ; 2 uses
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i = phi i32 [ %i.an, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %i.ag, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi ptr [ %i.ao, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i ], [ %.val19.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !noalias !516
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %_ZL5beginIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS6_.exit.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %i.an = add i32 %.sroa.5.sroa.0.0.i.i.i.i, -1   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 32
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %_ZL5beginIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS6_.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i.i, !llvm.loop !5

_ZL5beginIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS6_.exit.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i.i
  %.sroa.5.sroa.0.1.ph.i.i.i.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i ]
  %.sroa.02.1.ph.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i.i ], [ %scevgep.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i.i ]
  %i.aq = zext i32 %.sroa.5.sroa.0.1.ph.i.i.i.i to i64
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i25.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i25.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i, %_ZL5beginIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS6_.exit.i
  %.sroa.5.sroa.0.0.i.i.i27.i = phi i32 [ %i.au, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i ], [ %i.ag, %_ZL5beginIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS6_.exit.i ] ; 2 uses
  %.sroa.02.0.i.i.i28.i = phi ptr [ %i.av, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i ], [ %.val19.i, %_ZL5beginIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS6_.exit.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i28.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !noalias !517
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i25.i
  %i.au = add i32 %.sroa.5.sroa.0.0.i.i.i27.i, -1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i28.i, i64 32
  %i.aw = icmp eq i32 %i.au, 0
  br i1 %i.aw, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i25.i, !llvm.loop !5

_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i25.i
  %.sroa.5.sroa.0.1.ph.i.i.i32.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i27.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i25.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i ]
  %.sroa.02.1.ph.i.i.i33.i = phi ptr [ %.sroa.02.0.i.i.i28.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i.i25.i ], [ %scevgep.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i.i29.i ]
  %i.ax = zext i32 %.sroa.5.sroa.0.1.ph.i.i.i32.i to i64
  br label %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i

_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i: ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i
  %.sroa.5.sroa.0.0.insert.insert.i.i.i103.i = phi i64 [ %i.aq, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i ], [ 0, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i ] ; 2 uses
  %.sroa.02.1.i.i.i102.i = phi ptr [ %.sroa.02.1.ph.i.i.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i ], [ %.val19.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i ] ; 2 uses
  %.sroa.02.1.i.i.i34.i = phi ptr [ %.sroa.02.1.ph.i.i.i33.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i ], [ %.val19.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i ]
  %.sroa.5.sroa.0.0.insert.insert.i.i.i35.i = phi i64 [ %i.ax, %_ZNK12hb_hashmap_tIj6TripleLb0EE10iter_itemsEv.exit.loopexit.i.i.i30.i ], [ 0, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread.i.i ]
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %.sroa.02.1.i.i.i34.i, i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i35.i ; 2 uses
  %.not.i.i.i36116.i = icmp ne ptr %.sroa.02.1.i.i.i102.i, %i.ay
  %i.az = icmp ne i64 %.sroa.5.sroa.0.0.insert.insert.i.i.i103.i, 0
  %i.ba = or i1 %i.az, %.not.i.i.i36116.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i
  %i.bb = load i64, ptr @_hb_NullPool, align 16
  br label %bb.f

bb.f:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", %.lr.ph.i
  %.sroa.065.0122.i = phi ptr [ %.sroa.02.1.i.i.i102.i, %.lr.ph.i ], [ %.sroa.065.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ] ; 2 uses
  %.sroa.766.0121.i = phi i64 [ %.sroa.5.sroa.0.0.insert.insert.i.i.i103.i, %.lr.ph.i ], [ %.sroa.766.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ] ; 2 uses
  %.sroa.17.0120.i = phi ptr [ %.sroa.17.3.ph.i, %.lr.ph.i ], [ %.sroa.17.5.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ] ; 6 uses
  %.sroa.11.0118.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.11.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ] ; 5 uses
  %.sroa.071.0117.i = phi i32 [ %.sroa.071.2.ph.i, %.lr.ph.i ], [ %.sroa.071.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ] ; 10 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.766.0121.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i", !prof !32

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false), !noalias !518
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i": ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %.sroa.065.0122.i, %bb.f ] ; 2 uses
  %i.bc = load i32, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !519
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %.sroa.5.8.copyload.i = load double, ptr %.sroa.5.8..sroa_idx.i, align 8
  %i.bd = fptrunc double %.sroa.5.8.copyload.i to float
  %.not.i37.i = icmp slt i32 %.sroa.11.0118.i, %.sroa.071.0117.i
  %.pre.i = add i32 %.sroa.11.0118.i, 1           ; 3 uses
  br i1 %.not.i37.i, label %.critedge.i38.i, label %bb.h

bb.h:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i"
  %i.be = icmp slt i32 %.sroa.071.0117.i, 0
  br i1 %i.be, label %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i, label %bb.i, !prof !32

bb.i:                                             ; preds = %bb.h
  %.not.i41.i = icmp ugt i32 %.pre.i, %.sroa.071.0117.i
  br i1 %.not.i41.i, label %.preheader.i43.i, label %.critedge.i38.i, !prof !32

.preheader.i43.i:                                 ; preds = %bb.i, %.preheader.i43.i
  %.043.i44.i = phi i32 [ %i.bh, %.preheader.i43.i ], [ %.sroa.071.0117.i, %bb.i ] ; 2 uses
  %i.bf = lshr i32 %.043.i44.i, 1
  %i.bg = add i32 %.043.i44.i, 8
  %i.bh = add i32 %i.bg, %i.bf                    ; 7 uses
  %i.bi = icmp ugt i32 %.pre.i, %i.bh
  br i1 %i.bi, label %.preheader.i43.i, label %.thread.i45.i, !llvm.loop !452

.thread.i45.i:                                    ; preds = %.preheader.i43.i
  %i.bj = icmp ugt i32 %i.bh, 536870911
  br i1 %i.bj, label %.critedge.i60.i, label %bb.j, !prof !32

.critedge.i60.i:                                  ; preds = %.thread.i45.i
  %i.bk = xor i32 %.sroa.071.0117.i, -1
  br label %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i

bb.j:                                             ; preds = %.thread.i45.i
  %.not49.i47.i = icmp eq i32 %.sroa.071.0117.i, 0
  br i1 %.not49.i47.i, label %bb.k, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i

bb.k:                                             ; preds = %bb.j
  %.not9.i.i.i57.i = icmp eq ptr %.sroa.17.0120.i, null
  br i1 %.not9.i.i.i57.i, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = shl nuw i32 %i.bh, 3
  %i.bm = zext i32 %i.bl to i64
  %i.bn = call ptr @hb_malloc(i64 noundef %i.bm) #10 ; 3 uses
  %.not10.i.i.i58.i = icmp eq ptr %i.bn, null
  br i1 %.not10.i.i.i58.i, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.bo = zext i32 %.sroa.11.0118.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %.sroa.17.0120.i, i64 range(i64 0, 309237645241) %i.bp, i1 false), !alias.scope !520
  br label %.critedge.i38.i

_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i: ; preds = %bb.k, %bb.j
  %i.bq = phi ptr [ null, %bb.k ], [ %.sroa.17.0120.i, %bb.j ]
  %i.br = shl nuw i32 %i.bh, 3
  %i.bs = zext i32 %i.br to i64
  %i.bt = call ptr @hb_realloc(ptr noundef %i.bq, i64 noundef %i.bs) #10 ; 2 uses
  %.not22.i49.i = icmp eq ptr %i.bt, null
  br i1 %.not22.i49.i, label %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i, label %.critedge.i38.i, !prof !133

_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i: ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i, %bb.l
  %i.bu = xor i32 %.sroa.071.0117.i, -1
  br label %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i

_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i: ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i, %.critedge.i60.i, %bb.h
  %.sroa.071.5.i = phi i32 [ %.sroa.071.0117.i, %bb.h ], [ %i.bu, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i55.i ], [ %i.bk, %.critedge.i60.i ]
  store i64 %i.bb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i

.critedge.i38.i:                                  ; preds = %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i, %bb.m, %bb.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i"
  %.sroa.071.3.i = phi i32 [ %i.bh, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i ], [ %.sroa.071.0117.i, %bb.i ], [ %i.bh, %bb.m ], [ %.sroa.071.0117.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i" ]
  %.sroa.17.4.i = phi ptr [ %i.bt, %_ZN11hb_vector_tI14hb_variation_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i48.i ], [ %.sroa.17.0120.i, %bb.i ], [ %i.bn, %bb.m ], [ %.sroa.17.0120.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EdeEv.exit.i" ] ; 2 uses
  %i.bv = zext i32 %.sroa.11.0118.i to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.17.4.i, i64 %i.bv ; 2 uses
  store i32 %i.bc, ptr %i.bw, align 4
  %.sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store float %i.bd, ptr %.sroa_idx62.i, align 4
  br label %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i: ; preds = %.critedge.i38.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i
  %.sroa.071.4.i = phi i32 [ %.sroa.071.3.i, %.critedge.i38.i ], [ %.sroa.071.5.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i ] ; 2 uses
  %.sroa.11.1.i = phi i32 [ %.pre.i, %.critedge.i38.i ], [ %.sroa.11.0118.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i ]
  %.sroa.17.5.i = phi ptr [ %.sroa.17.4.i, %.critedge.i38.i ], [ %.sroa.17.0120.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE5allocEjb.exit61.i ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i", %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i
  %.sroa.766.1.i = phi i64 [ %.sroa.766.0121.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i ], [ %.sroa.766.8.insert.ext.i, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.065.1.i = phi ptr [ %.sroa.065.0122.i, %_ZN11hb_vector_tI14hb_variation_tLb0EE4pushIJRS0_EEEPS0_DpOT_.exit.i ], [ %i.by, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 3 uses
  %.not.i.i.i.i.i.i39.i = icmp eq i64 %.sroa.766.1.i, 0
  br i1 %.not.i.i.i.i.i.i39.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i, !prof !32

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i: ; preds = %bb.n
  %.sroa.766.8.extract.trunc70.i = trunc nuw i64 %.sroa.766.1.i to i32
  %i.bx = add i32 %.sroa.766.8.extract.trunc70.i, -1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.065.1.i, i64 32 ; 3 uses
  %.not.i.i.i.i40.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i40.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i"

"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i
  %.sroa.766.8.insert.ext.i = zext i32 %i.bx to i64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.065.1.i, i64 36
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", label %bb.n, !llvm.loop !6

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i": ; preds = %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i, %bb.n
  %.sroa.766.2.i = phi i64 [ 0, %bb.n ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i ], [ %.sroa.766.8.insert.ext.i, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.065.2.i = phi ptr [ %.sroa.065.1.i, %bb.n ], [ %i.by, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i ], [ %i.by, %"_ZNK4$_24clIRMN12hb_hashmap_tIj6TripleLb0EE6item_tEKFbvERS4_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i36.i = icmp ne ptr %.sroa.065.2.i, %i.ay
  %i.cc = icmp ne i64 %.sroa.766.2.i, 0
  %i.cd = or i1 %i.cc, %.not.i.i.i36.i
  br i1 %i.cd, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i", %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i
  %.sroa.071.0.lcssa.i = phi i32 [ %.sroa.071.2.ph.i, %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i ], [ %.sroa.071.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ]
  %.sroa.17.0.lcssa.i = phi ptr [ %.sroa.17.3.ph.i, %_ZL3endIRK12hb_hashmap_tIj6TripleLb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E3endEEOS6_.exit.i ], [ %.sroa.17.5.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj6TripleLb0EE6item_tEEMS6_KFbvERK3$_9LPv0EEMS6_KF9hb_pair_tIjS4_EvEL24hb_function_sortedness_t0ELSD_0EESG_EppEv.exit.i" ] ; 2 uses
  %i.ce = load i32, ptr %i.t, align 4, !tbaa !128
  call void @hb_font_set_variations(ptr noundef %i.m, ptr noundef %.sroa.17.0.lcssa.i, i32 noundef %i.ce) #10
  %i.cf = add i32 %.sroa.071.0.lcssa.i, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.cf, -2
  br i1 %spec.select.i.i.i.i, label %bb.o, label %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit

bb.o:                                             ; preds = %._crit_edge.i
  call void @hb_free(ptr noundef %.sroa.17.0.lcssa.i) #10
  br label %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit

_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit: ; preds = %bb.d, %._crit_edge.i, %bb.o
  %i.cg = icmp ne ptr %i.m, null
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !132, !range !30, !noundef !31
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = and i1 %i.cg, %i.cj                     ; 2 uses
  %i.cl = zext i1 %i.ck to i8
  store i8 %i.cl, ptr %i.ch, align 8, !tbaa !132
  br i1 %i.ck, label %bb.q, label %bb.p, !prof !521

bb.p:                                             ; preds = %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit
  %.1.i223 = phi ptr [ null, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit.thread ], [ %i.m, %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit ]
  call void @hb_font_destroy(ptr noundef %.1.i223) #10
  br label %bb.bm

bb.q:                                             ; preds = %_ZL28_get_hb_font_with_variationsPK16hb_subset_plan_t.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const._Z37update_instance_metrics_map_from_cff2P16hb_subset_plan_t.extents, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !175
  call void @_ZN2OT8hmtxvmtxINS_4hmtxENS_4hheaENS_4HVAREE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !202
  %.not230 = icmp eq i32 %i.co, 0
  br i1 %.not230, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !203 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @_hb_NullPool, ptr %i.cq ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !79 ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !78
  %i.cv = icmp ult i32 %i.cs, 20
  %spec.select.i.i1.i.i = select i1 %i.cv, ptr @_hb_NullPool, ptr %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.cx = load i32, ptr %i.cw, align 1, !tbaa !64 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = call i32 @llvm.bswap.i32(i32 %i.cx)
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.da
  %.0.i.i.i = select i1 %i.cy, ptr @_hb_NullPool, ptr %i.db, !prof !32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !64 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dg
  %.0.i.i.i80 = select i1 %i.de, ptr @_hb_NullPool, ptr %i.dh, !prof !32
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 2
  %i.dj = load i16, ptr %i.di, align 1, !tbaa !62 ; 2 uses
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj) ; 3 uses
  %i.dl = zext i16 %i.dk to i32                   ; 2 uses
  %.not.i.i81 = icmp eq i16 %i.dj, 0
  br i1 %.not.i.i81, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = zext i16 %i.dk to i64                   ; 5 uses
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 4
  %i.dp = call ptr @hb_malloc(i64 noundef %i.do) #10 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.dp, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.u, !prof !32

bb.u:                                             ; preds = %bb.t
  store i32 %i.dl, ptr %i.dp, align 4, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 12 uses
  %i.dr = icmp ugt i16 %i.dk, 3
  br i1 %i.dr, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.u
  %i.ds = add nsw i64 %i.dm, -4                   ; 2 uses
  %i.dt = lshr i64 %i.ds, 2                       ; 2 uses
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.du, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.dw = and i64 %i.ds, 4
  %lcmp.mod.not.not = icmp eq i64 %i.dw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod310 = trunc i64 %i.du to i1
  call void @llvm.assume(i1 %lcmp.mod310)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store atomic i32 -2147483648, ptr %i.dy monotonic, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store atomic i32 -2147483648, ptr %i.dz monotonic, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store atomic i32 -2147483648, ptr %i.ea monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.eb = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.u
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.u ], [ %i.eb, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.ec = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.dl
  br i1 %i.ec, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.ed = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.ee = sub nsw i64 %i.dm, %i.ed
  %xtraiter311 = and i64 %i.ee, 7                 ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.ed, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter311
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !486

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.ed, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.eg = sub nsw i64 %i.ed, %i.dm
  %i.eh = icmp ugt i64 %i.eg, -8
  br i1 %i.eh, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.ei monotonic, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
end_hunk_0
