Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@hb_face_set_get_table_tags_func:bb.a
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef i32 @_ZL31_hb_face_builder_get_table_tagsPK9hb_face_tjPjS2_Pv(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !881  ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp ult i32 %1, %i.b
  br i1 %.not17, label %bb.d, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !324
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %4, i64 28
  %.val = load i32, ptr %i.c, align 4, !tbaa !882
  %i.d = add i32 %.val, 1                         ; 2 uses
  %.not15.i.i.i.i.i.i = icmp ult i32 %i.d, 2
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK10hb_array_tIjE9sub_arrayEjPj.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i: ; preds = %bb.d
  %i.e = getelementptr i8, ptr %4, i64 40
  %.val19 = load ptr, ptr %i.e, align 8, !tbaa !883
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i
  %.sroa.5.sroa.0.0.i.i = phi i32 [ %i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i ], [ %i.d, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %i.j, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i ], [ %.val19, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.preheader.i.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noalias !2439
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i
  %i.i = add i32 %.sroa.5.sroa.0.0.i.i, -1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 24
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %_ZNK10hb_array_tIjE9sub_arrayEjPj.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i, !llvm.loop !43

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i"
  %.sroa.0.096 = phi i32 [ %.sroa.0.2, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i" ], [ 0, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i ] ; 10 uses
  %.sroa.8.0 = phi i32 [ %.sroa.8.1, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i" ], [ 0, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i ] ; 6 uses
  %.sroa.17.0 = phi ptr [ %.sroa.17.2, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i" ], [ null, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i ] ; 6 uses
  %.us-phi5711.i.us.us.i = phi i32 [ %i.ag, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i" ], [ %.sroa.5.sroa.0.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i ]
  %.us-phi810.i.us.us.i = phi ptr [ %i.ai, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i" ], [ %.sroa.02.0.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.us.i.i.i.i.i ] ; 2 uses
  %.val1.i.i.i.us.us.i = load i32, ptr %.us-phi810.i.us.us.i, align 4, !tbaa !324
  %.not.i.i.i.us.us.i = icmp slt i32 %.sroa.8.0, %.sroa.0.096
  %.pre = add i32 %.sroa.8.0, 1                   ; 6 uses
  br i1 %.not.i.i.i.us.us.i, label %.critedge.i.i.i.us.us.i, label %bb.e

bb.e:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i"
  %i.l = icmp slt i32 %.sroa.0.096, 0
  br i1 %i.l, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp ugt i32 %.pre, %.sroa.0.096
  br i1 %.not.i, label %.preheader.i, label %.critedge.i.i.i.us.us.i, !prof !267

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.043.i = phi i32 [ %i.o, %.preheader.i ], [ %.sroa.0.096, %bb.f ] ; 2 uses
  %i.m = lshr i32 %.043.i, 1
  %i.n = add i32 %.043.i, 8
  %i.o = add i32 %i.n, %i.m                       ; 8 uses
  %i.p = icmp ugt i32 %.pre, %i.o
  br i1 %i.p, label %.preheader.i, label %.thread.i, !llvm.loop !47

.thread.i:                                        ; preds = %.preheader.i
  %i.q = icmp ugt i32 %i.o, 1073741823
  br i1 %i.q, label %.critedge.i, label %bb.g, !prof !267

.critedge.i:                                      ; preds = %.thread.i
  %i.r = xor i32 %.sroa.0.096, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

bb.g:                                             ; preds = %.thread.i
  %.not50.i = icmp eq i32 %.sroa.0.096, 0
  br i1 %.not50.i, label %bb.h, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i = icmp eq ptr %.sroa.17.0, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = shl nuw i32 %i.o, 2
  %i.t = zext i32 %i.s to i64
  %i.u = tail call noalias noundef ptr @malloc(i64 noundef %i.t) #65 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54.i, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %.sroa.8.0, 0
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.us.us.i, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.v = zext i32 %.sroa.8.0 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %.sroa.17.0, i64 %i.w, i1 false), !alias.scope !2440
  br label %.critedge.i.i.i.us.us.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.h, %bb.g
  %i.x = phi ptr [ null, %bb.h ], [ %.sroa.17.0, %bb.g ]
  %i.y = shl nuw i32 %i.o, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call noalias noundef ptr @realloc(ptr noundef %i.x, i64 noundef %i.z) #66 ; 2 uses
  %.not22.i = icmp eq ptr %i.aa, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54.i, label %.critedge.i.i.i.us.us.i, !prof !319

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.i
  %i.ab = xor i32 %.sroa.0.096, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.e, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54.i, %.critedge.i
  %.sroa.0.4 = phi i32 [ %.sroa.0.096, %bb.e ], [ %i.ab, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread54.i ], [ %i.r, %.critedge.i ]
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EElsIjEERS0_OT_.exit.i.us.us.i

.critedge.i.i.i.us.us.i:                          ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i", %bb.j, %bb.k, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.f
  %.pre-phi = phi i32 [ %.pre, %bb.f ], [ 1, %bb.j ], [ %.pre, %bb.k ], [ %.pre, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.pre, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i" ]
  %.sroa.0.197 = phi i32 [ %.sroa.0.096, %bb.f ], [ %i.o, %bb.j ], [ %i.o, %bb.k ], [ %i.o, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.096, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i" ]
  %.sroa.17.1 = phi ptr [ %.sroa.17.0, %bb.f ], [ %i.u, %bb.j ], [ %i.u, %bb.k ], [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.17.0, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i" ] ; 2 uses
  %i.ac = zext i32 %.sroa.8.0 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.1, i64 %i.ac
  store i32 %.val1.i.i.i.us.us.i, ptr %i.ad, align 4, !tbaa !324
  br label %_ZN11hb_vector_tIjLb0EElsIjEERS0_OT_.exit.i.us.us.i

_ZN11hb_vector_tIjLb0EElsIjEERS0_OT_.exit.i.us.us.i: ; preds = %.critedge.i.i.i.us.us.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %.sroa.0.2 = phi i32 [ %.sroa.0.197, %.critedge.i.i.i.us.us.i ], [ %.sroa.0.4, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 4 uses
  %.sroa.8.1 = phi i32 [ %.pre-phi, %.critedge.i.i.i.us.us.i ], [ %.sroa.8.0, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 5 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.1, %.critedge.i.i.i.us.us.i ], [ %.sroa.17.0, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 8 uses
  %i.ae = add i32 %.us-phi5711.i.us.us.i, -1      ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i138 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i138, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i
  %i.af = add i32 %i.ag, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i, !llvm.loop !44

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i: ; preds = %_ZN11hb_vector_tIjLb0EElsIjEERS0_OT_.exit.i.us.us.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i
  %i.ag = phi i32 [ %i.af, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i ], [ %i.ae, %_ZN11hb_vector_tIjLb0EElsIjEERS0_OT_.exit.i.us.us.i ] ; 2 uses
  %i.ah = phi ptr [ %i.ai, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i ], [ %.us-phi810.i.us.us.i, %_ZN11hb_vector_tIjLb0EElsIjEERS0_OT_.exit.i.us.us.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i, !llvm.loop !44

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EEjEppEv.exit.i.loopexit.us.us.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS5_KFbvERK3$_8LPv0EERS5_EdeEv.exit.i.i.i.i.i.us.us.i", !llvm.loop !2435

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit": ; preds = %_ZN11hb_vector_tIjLb0EElsIjEERS0_OT_.exit.i.us.us.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i
  %.not.i.i = icmp eq i32 %.sroa.8.1, 0
  br i1 %.not.i.i, label %_ZNK10hb_array_tIjE9sub_arrayEjPj.exit, label %bb.l, !prof !318

bb.l:                                             ; preds = %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit"
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %.sroa.8.1 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZL31_hb_face_builder_get_table_tagsPK9hb_face_tjPjS3_PvE3$_0EvPT_mT0_"(ptr noundef %.sroa.17.2, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 2
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 %.idx.i.i.i
  %.not1.i.i = icmp eq i32 %.sroa.8.1, 1
  br i1 %.not1.i.i, label %_ZNK10hb_array_tIjE9sub_arrayEjPj.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.l
  %.01518.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.17.2, i64 4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.loopexit.i.i, %.preheader.preheader.i.i.i
  %.01519.i.i.i = phi ptr [ %.015.i.i.i, %.critedge.i.loopexit.i.i ], [ %.01518.i.i.i, %.preheader.preheader.i.i.i ] ; 3 uses
  %.0.val.pre.i.i.i = load i32, ptr %.01519.i.i.i, align 4, !tbaa !324 ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.preheader.i.i.i
  %.016.i.i.i = phi ptr [ %i.an, %bb.m ], [ %.01519.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.016.i.i.i, i64 -4 ; 4 uses
  %.val.i.i.i = load i32, ptr %i.an, align 4, !tbaa !324 ; 2 uses
  %i.ao = icmp ugt i32 %.val.i.i.i, %.0.val.pre.i.i.i
  br i1 %i.ao, label %bb.m, label %.critedge.i.loopexit.i.i

.critedge.i.loopexit.i.i:                         ; preds = %bb.m, %.lr.ph.i.i.i
  %.015.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i, i64 4 ; 2 uses
  %i.ap = icmp ult ptr %.015.i.i.i, %i.am
  br i1 %i.ap, label %.preheader.i.i.i, label %_ZNK10hb_array_tIjE9sub_arrayEjPj.exit, !llvm.loop !2436

bb.m:                                             ; preds = %.lr.ph.i.i.i
  store i32 %.0.val.pre.i.i.i, ptr %i.an, align 4, !tbaa !324
  store i32 %.val.i.i.i, ptr %.016.i.i.i, align 4, !tbaa !324
  %i.aq = icmp ugt ptr %i.an, %.sroa.17.2
  br i1 %i.aq, label %.lr.ph.i.i.i, label %.critedge.i.loopexit.i.i, !llvm.loop !2437

_ZNK10hb_array_tIjE9sub_arrayEjPj.exit:           ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i, %.critedge.i.loopexit.i.i, %bb.d, %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit", %bb.l
  %.sroa.0.3 = phi i32 [ 0, %bb.d ], [ %.sroa.0.2, %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit" ], [ %.sroa.0.2, %bb.l ], [ %.sroa.0.2, %.critedge.i.loopexit.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i ]
  %.sroa.8.2 = phi i32 [ 0, %bb.d ], [ 0, %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit" ], [ 1, %bb.l ], [ %.sroa.8.1, %.critedge.i.loopexit.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i ]
  %.sroa.17.3 = phi ptr [ null, %bb.d ], [ %.sroa.17.2, %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEEMS6_KFbvERK3$_8LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK3$_9LSI_0ELSD_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit" ], [ %.sroa.17.2, %bb.l ], [ %.sroa.17.2, %.critedge.i.loopexit.i.i ], [ null, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj17face_table_info_tLb0EE6item_tEERS4_EppEv.exit.i.us.i.i.i.i.i ] ; 2 uses
  %storemerge.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.8.2, i32 %1)
  %i.ar = load i32, ptr %2, align 4, !tbaa !324
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i, i32 %i.ar) ; 9 uses
  store i32 %.sroa.speculated.i, ptr %2, align 4, !tbaa !324
  %.not18 = icmp eq ptr %3, null
  %.not5.i.i = icmp eq i32 %.sroa.speculated.i, 0
  %or.cond = select i1 %.not18, i1 true, i1 %.not5.i.i
  br i1 %or.cond, label %_ZorI10hb_array_tIjE9hb_sink_tIRS1_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS6_Efp_EEEOS6_OSC_.exit, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader: ; preds = %_ZNK10hb_array_tIjE9sub_arrayEjPj.exit
  %i.as = zext i32 %1 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.17.3, i64 %i.as ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader
  %5 = load i32, ptr %i.at, align 4, !tbaa !324
  %.not.i.i.i.i.i.prol = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i.i.i.i.i.prol, label %6, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol, !prof !267

6:                                                ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol: ; preds = %6, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol
  %.sroa.0.1.idx.prol = phi i64 [ 0, %6 ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol ]
  %.0.i.i.i.i.i.prol = phi ptr [ @_hb_CrapPool, %6 ], [ %3, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol ]
  store i32 %5, ptr %.0.i.i.i.i.i.prol, align 4, !tbaa !324
  %.sroa.6.1.prol = add nsw i32 %.sroa.speculated.i, -1
  %.sroa.0.1.prol = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.1.idx.prol
  %i.au = add nsw i32 %.sroa.speculated.i, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader
  %.sroa.6.0.unr = phi i32 [ %.sroa.speculated.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader ], [ %.sroa.6.1.prol, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol ]
  %.sroa.0.0.unr = phi ptr [ %3, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader ], [ %.sroa.0.1.prol, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %i.at, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader ], [ %i.av, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol ]
  %.sroa.4.06.i.i.unr = phi i32 [ %.sroa.speculated.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.preheader ], [ %i.au, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.prol ]
  %i.aw = icmp eq i32 %.sroa.speculated.i, 1
  br i1 %i.aw, label %_ZorI10hb_array_tIjE9hb_sink_tIRS1_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS6_Efp_EEEOS6_OSC_.exit, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i:    ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1
  %.sroa.6.0 = phi i32 [ %.sroa.6.1.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1 ], [ %.sroa.6.0.unr, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.1.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1 ], [ %.sroa.0.0.unr, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.07.i.i = phi ptr [ %i.bb, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1 ], [ %.sroa.0.07.i.i.unr, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.06.i.i = phi i32 [ %i.ba, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1 ], [ %.sroa.4.06.i.i.unr, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit ]
  %i.ax = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !324
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.6.0, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i, !prof !267

bb.n:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i:  ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i, %bb.n
  %.sroa.0.1.idx = phi i64 [ 0, %bb.n ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i ]
  %.0.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.n ], [ %.sroa.0.0, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i ]
  store i32 %i.ax, ptr %.0.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.0.1.idx ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !324
  %.not.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0, 2
  br i1 %.not.i.i.i.i.i.1, label %bb.o, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1, !prof !267

bb.o:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1: ; preds = %bb.o, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i
  %.sroa.0.1.idx.1 = phi i64 [ 0, %bb.o ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i ]
  %.0.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %.sroa.0.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i ]
  store i32 %i.az, ptr %.0.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0, i32 2)
  %.sroa.0.1.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.0.1.idx.1
  %i.ba = add i32 %.sroa.4.06.i.i, -2             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %.not.i.i40.1 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i40.1, label %_ZorI10hb_array_tIjE9hb_sink_tIRS1_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS6_Efp_EEEOS6_OSC_.exit, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i, !llvm.loop !2438

_ZorI10hb_array_tIjE9hb_sink_tIRS1_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS6_Efp_EEEOS6_OSC_.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.1, %_ZNK10hb_array_tIjE9sub_arrayEjPj.exit
  %i.bc = add i32 %.sroa.0.3, -1
  %spec.select.i.i.i = icmp ult i32 %i.bc, -2
  br i1 %spec.select.i.i.i, label %bb.p, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.p:                                             ; preds = %_ZorI10hb_array_tIjE9hb_sink_tIRS1_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS6_Efp_EEEOS6_OSC_.exit
  tail call void @free(ptr noundef %.sroa.17.3) #63
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.p, %_ZorI10hb_array_tIjE9hb_sink_tIRS1_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS6_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS6_Efp_EEEOS6_OSC_.exit, %bb.a, %bb.c
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @hb_face_builder_add_table(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %3 = alloca %struct.face_table_info_t, align 8  ; 5 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !324
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !874
  %.not = icmp ne ptr %i.c, @_ZL29_hb_face_builder_data_destroyPv
  %i.d = icmp eq i32 %1, -1
  %or.cond = or i1 %i.d, %.not
  br i1 %or.cond, label %hb_blob_destroy.exit, label %bb.b, !prof !327

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !873  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !883  ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = mul i32 %1, 506952113
  %i.j = and i32 %i.i, 1073741823
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !909
  %i.m = urem i32 %i.j, %i.l                      ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = and i32 %i.q, 2
  %.not15.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = load i32, ptr %i.o, align 4, !tbaa !324
  %i.v = icmp eq i32 %i.u, %1
  br i1 %i.v, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.w = load i32, ptr %i.ag, align 4, !tbaa !324
  %i.x = icmp eq i32 %i.w, %1
  br i1 %i.x, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !46

._crit_edge.i.i:                                  ; preds = %bb.d, %.lr.ph.i.i.i
  %.lcssa10.i.i = phi i32 [ %i.q, %.lr.ph.i.i.i ], [ %i.ai, %bb.d ]
  %i.y = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.af, %bb.d ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.y
  %i.aa = trunc i32 %.lcssa10.i.i to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %spec.select.i.i = select i1 %i.aa, ptr %i.ab, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.d
  %.01016.i13.i.i = phi i32 [ %i.ae, %bb.d ], [ %i.m, %.lr.ph.i.i.i ]
  %.017.i12.i.i = phi i32 [ %i.ac, %bb.d ], [ 0, %.lr.ph.i.i.i ]
  %i.ac = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.ad = add i32 %i.ac, %.01016.i13.i.i
  %i.ae = and i32 %i.ad, %i.t                     ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = and i32 %i.ai, 2
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit, label %bb.d, !llvm.loop !46

_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit: ; preds = %.lr.ph.i.i, %bb.b, %bb.c, %._crit_edge.i.i
  %.0.i = phi ptr [ @_hb_NullPool, %bb.b ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @_hb_NullPool, %bb.c ], [ @_hb_NullPool, %.lr.ph.i.i ]
  %i.ak = load ptr, ptr %.0.i, align 8, !tbaa !919 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %.not.i.i.i7 = icmp eq ptr %2, null             ; 2 uses
  br i1 %.not.i.i.i7, label %hb_blob_reference.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit
  %i.al = load atomic i32, ptr %2 monotonic, align 4 ; 0 uses
  %i.am = load atomic i32, ptr %2 monotonic, align 4
  %.not.i7.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i7.i.i, label %hb_blob_reference.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.an = atomicrmw add ptr %2, i32 1 acq_rel, align 4 ; 0 uses
  %.val.i8.pre = load i32, ptr %i.a, align 4, !tbaa !324
  br label %hb_blob_reference.exit

hb_blob_reference.exit:                           ; preds = %_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit, %bb.e, %bb.f
  %.val.i8 = phi i32 [ %1, %_ZNK12hb_hashmap_tIj17face_table_info_tLb0EE3getERKj.exit ], [ %1, %bb.e ], [ %.val.i8.pre, %bb.f ]
  store ptr %2, ptr %3, align 8, !tbaa !919
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.ao, align 8, !tbaa !921
  %i.ap = mul i32 %.val.i8, -1640531535
  %i.aq = call noundef zeroext i1 @_ZN12hb_hashmap_tIj17face_table_info_tLb0EE13set_with_hashIRKjS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  br i1 %i.aq, label %bb.k, label %bb.g

bb.g:                                             ; preds = %hb_blob_reference.exit
  br i1 %.not.i.i.i7, label %hb_blob_destroy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load atomic i32, ptr %2 monotonic, align 4 ; 0 uses
  %i.as = load atomic i32, ptr %2 monotonic, align 4
  %.not.i7.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i7.i.i.i, label %hb_blob_destroy.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, !prof !267

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i: ; preds = %bb.h
  %i.at = atomicrmw add ptr %2, i32 -1 acq_rel, align 4
  %.not6.i.i.i = icmp eq i32 %i.at, 1
  br i1 %.not6.i.i.i, label %bb.i, label %hb_blob_destroy.exit

bb.i:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i
  store atomic i32 -57005, ptr %2 monotonic, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = load atomic ptr, ptr %i.au acquire, align 8 ; 5 uses
  %.not.i.i3.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i3.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.av)
  %i.ax = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.av) #63 ; 0 uses
  call void @free(ptr noundef nonnull %i.av) #63
  store atomic ptr null, ptr %i.au monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i:   ; preds = %bb.j, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !509 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %hb_blob_destroy.exit.sink.split, label %hb_blob_destroy.exit.sink.split.sink.split

bb.k:                                             ; preds = %hb_blob_reference.exit
  %.not.i.i.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i9, label %hb_blob_destroy.exit, label %bb.l

end_hunk_0
begin_hunk_1_@hb_ot_tags_from_script_and_language:bb.a
  %.3.i108 = phi i32 [ %i.lx, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i ], [ %i.mc, %bb.ay ], [ %.1.i166, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread ], [ 1, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i ]
  store i32 %.3.i108, ptr %2, align 4, !tbaa !324
  br label %bb.az

bb.az:                                            ; preds = %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit, %bb.ai, %bb.ah
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN19hb_ot_map_builder_tD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((84, 88), (100, 104), (116, 120)) %0) unnamed_addr #35 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1307
  %i.c = add i32 %i.b, -1
  %spec.select.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i, label %bb.b, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.d, align 4, !tbaa !1308
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1309
  tail call void @free(ptr noundef %i.f) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1312
  %i.i = add i32 %i.h, -1
  %spec.select.i.i5 = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i5, label %bb.c, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.j, align 4, !tbaa !1313
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1314
  tail call void @free(ptr noundef %i.l) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1312
  %i.o = add i32 %i.n, -1
  %spec.select.i.i5.1 = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i5.1, label %bb.d, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.p, align 4, !tbaa !1313
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1314
  tail call void @free(ptr noundef %i.r) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit: ; preds = %bb.d, %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !1312
  %i.s = add i32 %.pre, -1
  %spec.select.i.i.i.1 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i.i.1, label %bb.e, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit.1

bb.e:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.t, align 4, !tbaa !1313
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1314
  tail call void @free(ptr noundef %i.v) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit.1

_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit.1: ; preds = %bb.e, %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit
  %i.w = load i32, ptr %i.a, align 8, !tbaa !1307
  %i.x = add i32 %i.w, -1
  %spec.select.i.i.i6 = icmp ult i32 %i.x, -2
  br i1 %spec.select.i.i.i6, label %bb.f, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EED2Ev.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit.1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.y, align 4, !tbaa !1308
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1309
  tail call void @free(ptr noundef %i.aa) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit.1, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN19hb_ot_map_builder_t11add_featureEj25hb_ot_map_feature_flags_tj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.i, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1308 ; 3 uses
  %i.c = add i32 %i.b, 1                          ; 6 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.c, i1 noundef zeroext false)
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !1308 ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.g, !prof !525

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ugt i32 %i.c, %.pre.pre
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = sub nuw nsw i32 %i.c, %.pre.pre
  %i.i = mul i32 %i.h, 28                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1309
  %i.l = zext nneg i32 %.pre.pre to i64
  %i.m = getelementptr inbounds nuw [28 x i8], ptr %i.k, i64 %i.l
  %i.n = zext i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.n, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b
  %.pre = phi i32 [ %.pre.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) @_hb_CrapPool, i8 0, i64 28, i1 false)
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  store i32 %i.c, ptr %i.a, align 4, !tbaa !1308
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1309
  %i.q = zext i32 %i.b to i64
  %i.r = getelementptr inbounds nuw [28 x i8], ptr %i.p, i64 %i.q
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit: ; preds = %bb.g, %bb.h
  %i.s = phi i32 [ %.pre, %bb.g ], [ %i.c, %bb.h ]
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.r, %bb.h ] ; 7 uses
  store i32 %1, ptr %.0.i, align 4, !tbaa !1317
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !1318
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %3, ptr %i.u, align 4, !tbaa !1319
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %2, ptr %i.v, align 4, !tbaa !1320
  %i.w = and i32 %2, 1
  %.not13 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not13, i32 0, i32 %3
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 %i.x, ptr %i.y, align 4, !tbaa !1321
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !324
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !324
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !324
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !324
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4pushEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN19hb_ot_map_builder_t11has_featureEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %0, align 8, !tbaa !1304
  %i.d = load i32, ptr %i.a, align 8, !tbaa !324
  %i.e = load i32, ptr %i.b, align 8, !tbaa !324
  %i.f = tail call i32 @hb_ot_layout_language_find_feature(ptr noundef %i.c, i32 noundef 1196643650, i32 noundef %i.d, i32 noundef %i.e, i32 noundef %1, ptr noundef null)
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !1304
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !324
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !324
  %i.l = tail call i32 @hb_ot_layout_language_find_feature(ptr noundef %i.g, i32 noundef 1196445523, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %1, ptr noundef null)
  %.not.1.not = icmp ne i32 %i.l, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ %.not.1.not, %bb.b ], [ true, %bb.a ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN19hb_ot_map_builder_t11add_lookupsER11hb_ot_map_tjjjjbbbbj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.b = load ptr, ptr %0, align 8, !tbaa !1304
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZL10table_tags, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !324  ; 2 uses
  %i.f = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %i.b, i32 noundef %i.e) ; 3 uses
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.g, 256
  %.sroa.018.1.idx.i.i.i.prol.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br i1 %cond.i.i, label %bb.b, label %hb_ot_layout_table_get_lookup_count.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i16, ptr %i.h, align 1, !tbaa !283  ; 2 uses
  %i.j = icmp eq i16 %i.i, 0
  %i.k = tail call i16 @llvm.bswap.i16(i16 %i.i)
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.l
  %.0.i.i.i.i = select i1 %i.j, ptr @_hb_NullPool, ptr %i.m, !prof !267
  %i.n = load i16, ptr %.0.i.i.i.i, align 1, !tbaa !283
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  br label %hb_ot_layout_table_get_lookup_count.exit

hb_ot_layout_table_get_lookup_count.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.c ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.u = zext i1 %6 to i8
  %i.v = select i1 %7, i8 2, i8 0
  %i.w = select i1 %8, i8 4, i8 0
  %i.x = select i1 %9, i8 8, i8 0
  %i.y = or disjoint i8 %i.v, %i.u
  %i.z = or disjoint i8 %i.y, %i.w
  %i.aa = or disjoint i8 %i.z, %i.x               ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %hb_ot_layout_table_get_lookup_count.exit
  %.0 = phi i32 [ 0, %hb_ot_layout_table_get_lookup_count.exit ], [ %i.at, %._crit_edge ] ; 5 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1304
  %i.ac = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %i.ab, i32 noundef %i.e)
  %i.ad = tail call noundef nonnull align 1 dereferenceable(6) ptr @_ZNK2OT8GSUBGPOS21get_feature_variationEjj(ptr noundef nonnull align 1 dereferenceable(14) %i.ac, i32 noundef %3, i32 noundef %4) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %.pre28.i.i.i = load i16, ptr %i.ae, align 1, !tbaa !283
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %.pre28.i.i.i)
  %.sroa.5.8.extract.trunc.i.i.i = zext i16 %i.af to i32 ; 3 uses
  %storemerge.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i.i.i, i32 %.0) ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i, i32 32) ; 7 uses
  %.not5.i.i.i.i.i.not = icmp ult i32 %.0, %.sroa.5.8.extract.trunc.i.i.i
  br i1 %.not5.i.i.i.i.i.not, label %.lr.ph.i.i.preheader.i.i.i, label %._crit_edge

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = zext nneg i32 %.0 to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %xtraiter = and i32 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.prol = load i16, ptr %i.ai, align 1
  %11 = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.i.prol)
  %12 = zext i16 %11 to i32
  %.not.i.i.i.i.i.i.i.i.prol.not = icmp ult i32 %.0, %.sroa.5.8.extract.trunc.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.prol.not, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol, label %13, !prof !268

13:                                               ; preds = %.lr.ph.i.i.i.i.i.prol
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol: ; preds = %13, %.lr.ph.i.i.i.i.i.prol
  %.sroa.018.1.idx.i.i.i.prol.sroa.phi = phi ptr [ %i.a, %13 ], [ %.sroa.018.1.idx.i.i.i.prol.sroa.gep54, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.i.prol = phi ptr [ @_hb_CrapPool, %13 ], [ %i.a, %.lr.ph.i.i.i.i.i.prol ]
  store i32 %12, ptr %.0.i.i.i.i.i.i.i.i.prol, align 16, !tbaa !324
  %.sroa.6.1.i.i.i.prol = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %i.aj = add nsw i32 %.sroa.speculated.i.i.i.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.sroa.6.0.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.6.1.i.i.i.prol, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol ]
  %.sroa.018.0.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i.i.i ], [ %.sroa.018.1.idx.i.i.i.prol.sroa.phi, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.preheader.i.i.i ], [ %i.ak, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol ]
  %.sroa.4.06.i.i.i.i.i.unr = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %i.aj, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.prol ]
  %i.al = icmp eq i32 %storemerge.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1
  %.sroa.6.0.i.i.i = phi i32 [ %.sroa.6.1.i.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.6.0.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.018.0.i.i.i = phi ptr [ %.sroa.018.1.i.i.i.1, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.018.0.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.as, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.06.i.i.i.i.i = phi i32 [ %i.ar, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1 ], [ %.sroa.4.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i.i.i, align 1
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.an = zext i16 %i.am to i32
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i, !prof !267

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.sroa.018.1.idx.i.i.i = phi i64 [ 0, %bb.d ], [ 4, %.lr.ph.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %.sroa.018.0.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %i.an, ptr %.0.i.i.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.018.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i.i.i, i64 %.sroa.018.1.idx.i.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 2
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load i16, ptr %i.ao, align 1
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i.i.i.1)
  %i.aq = zext i16 %i.ap to i32
  %.not.i.i.i.i.i.i.i.i.1 = icmp ult i32 %.sroa.6.0.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %bb.e, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1, !prof !267

bb.e:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1: ; preds = %bb.e, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i
  %.sroa.018.1.idx.i.i.i.1 = phi i64 [ 0, %bb.e ], [ 4, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.e ], [ %.sroa.018.1.i.i.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i ]
  store i32 %i.aq, ptr %.0.i.i.i.i.i.i.i.i.1, align 4, !tbaa !324
  %.sroa.6.1.i.i.i.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i.i.i, i32 2)
  %.sroa.018.1.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.018.1.i.i.i, i64 %.sroa.018.1.idx.i.i.i.1
  %i.ar = add nsw i32 %.sroa.4.06.i.i.i.i.i, -2   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.1 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.1, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

.lr.ph.preheader:                                 ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.prol.loopexit
  %umax = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated.i.i.i.i, i32 1)
  %wide.trip.count = zext nneg i32 %umax to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.c
  %i.at = add i32 %.sroa.speculated.i.i.i.i, %.0
  %i.au = icmp samesign ugt i32 %storemerge.i.i.i.i, 31
  br i1 %i.au, label %bb.c, label %bb.r, !llvm.loop !2699

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !324 ; 2 uses
  %.not = icmp ult i32 %i.aw, %.0.i.i
  br i1 %.not, label %bb.f, label %bb.q

bb.f:                                             ; preds = %.lr.ph
  %i.ax = load i32, ptr %i.s, align 4, !tbaa !1259 ; 4 uses
  %i.ay = add i32 %i.ax, 1                        ; 6 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread31, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !1322 ; 5 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread31, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp samesign ugt i32 %i.ay, %i.ba
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread, !prof !267

.preheader.i:                                     ; preds = %bb.h, %.preheader.i
  %.043.i = phi i32 [ %i.be, %.preheader.i ], [ %i.ba, %bb.h ] ; 2 uses
  %i.bc = lshr i32 %.043.i, 1
  %i.bd = add nuw i32 %.043.i, 8
  %i.be = add nuw i32 %i.bd, %i.bc                ; 7 uses
  %i.bf = icmp ugt i32 %i.ay, %i.be
  br i1 %i.bf, label %.preheader.i, label %.thread.i, !llvm.loop !2700

.thread.i:                                        ; preds = %.preheader.i
  %i.bg = icmp ugt i32 %i.be, 357913941
  br i1 %i.bg, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread34, label %bb.i, !prof !267

bb.i:                                             ; preds = %.thread.i
  %.not50.i = icmp eq i32 %i.ba, 0
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !1323 ; 3 uses
  br i1 %.not50.i, label %bb.j, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = zext nneg i32 %i.be to i64
  %i.bj = mul nuw nsw i64 %i.bi, 12
  %i.bk = tail call noalias noundef ptr @malloc(i64 noundef %i.bj) #65 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread34, label %bb.l, !prof !267

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit, label %bb.m, !prof !267

bb.m:                                             ; preds = %bb.l
  %i.bl = zext nneg i32 %i.ax to i64
  %i.bm = mul nuw nsw i64 %i.bl, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %i.bh, i64 %i.bm, i1 false), !alias.scope !2705
  br label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %bb.j, %bb.i
  %i.bn = phi ptr [ null, %bb.j ], [ %i.bh, %bb.i ]
  %i.bo = zext nneg i32 %i.be to i64
  %i.bp = mul nuw nsw i64 %i.bo, 12
  %i.bq = tail call noalias noundef ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bp) #66 ; 2 uses
  %.not22.i = icmp eq ptr %i.bq, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit, !prof !319

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i: ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %i.r, align 8, !tbaa !1322 ; 2 uses
  %.not23.i = icmp ugt i32 %i.be, %.pre
  br i1 %.not23.i, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread34, label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread, !prof !465

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread34: ; preds = %bb.k, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.ba, %.thread.i ], [ %.pre, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i ], [ 0, %bb.k ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %i.r, align 8, !tbaa !1322
  br label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread31

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit: ; preds = %bb.l, %bb.m, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.bq, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %i.bk, %bb.m ], [ %i.bk, %bb.l ]
  store ptr %.1.i.i42.i, ptr %i.t, align 8, !tbaa !1323
  store i32 %i.be, ptr %i.r, align 8, !tbaa !1322
  br label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread: ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread54.i, %bb.h, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit
  %i.br = load i32, ptr %i.s, align 4, !tbaa !1259 ; 3 uses
  %i.bs = icmp ugt i32 %i.ay, %i.br
  br i1 %i.bs, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread
  %i.bt = sub nuw nsw i32 %i.ay, %i.br
  %i.bu = mul i32 %i.bt, 12                       ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i28, label %bb.p, label %bb.o, !prof !267

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.t, align 8, !tbaa !1323
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.bw
  %i.by = zext i32 %i.bu to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bx, i8 0, i64 %i.by, i1 false)
  br label %bb.p

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread31: ; preds = %bb.g, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread34, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE4pushEv.exit

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread
  store i32 %i.ay, ptr %i.s, align 4, !tbaa !1259
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !1323
  %i.ca = zext i32 %i.ax to i64
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %.pre40 = load i8, ptr %.phi.trans.insert, align 2
  %i.cc = and i8 %.pre40, -16
  %i.cd = or disjoint i8 %i.aa, %i.cc
  br label %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE4pushEv.exit: ; preds = %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread31, %bb.p
  %i.ce = phi i8 [ %i.aa, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread31 ], [ %i.cd, %bb.p ]
  %.0.i = phi ptr [ @_hb_CrapPool, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE5allocEjb.exit.thread31 ], [ %i.cb, %bb.p ] ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %5, ptr %i.cf, align 4, !tbaa !1264
  %i.cg = trunc nuw i32 %i.aw to i16
  store i16 %i.cg, ptr %.0.i, align 4, !tbaa !1261
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  store i8 %i.ce, ptr %i.ch, align 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %10, ptr %i.ci, align 4, !tbaa !1262
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIN11hb_ot_map_t12lookup_map_tELb0EE4pushEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2704

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9vhcurvetoERS2_RS3_:bb.a

bb.as:                                            ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.at:                                            ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit197
  %i.jb = zext i32 %i.iz to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.jb
  %.pre312 = load double, ptr %i.jc, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.as, %bb.at
  %i.jd = phi double [ 0.000000e+00, %bb.as ], [ %.pre312, %bb.at ]
  %i.je = fadd double %i.hk, %i.jd                ; 2 uses
  %i.jf = or disjoint i32 %.1290, 5               ; 2 uses
  %.not.i.i125 = icmp ult i32 %i.jf, %i.ja
  br i1 %.not.i.i125, label %bb.av, label %bb.au, !prof !268

bb.au:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

bb.av:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.jg
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127: ; preds = %bb.au, %bb.av
  %.0.i.i126 = phi ptr [ @_hb_CrapPool, %bb.au ], [ %i.jh, %bb.av ]
  %i.ji = or disjoint i32 %.1290, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.ji, %i.ja
  br i1 %.not.i.i128, label %bb.ax, label %bb.aw, !prof !268

bb.aw:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ax:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.jj
  %.pre313 = load double, ptr %i.jk, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.aw, %bb.ax
  %i.jl = phi double [ 0.000000e+00, %bb.aw ], [ %.pre313, %bb.ax ]
  %i.jm = load double, ptr %.0.i.i126, align 8, !tbaa !477
  %i.jn = fadd double %i.je, %i.jm                ; 3 uses
  %i.jo = fadd double %i.hf, %i.jl                ; 2 uses
  %i.jp = or disjoint i32 %.1290, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.jp, %i.ja
  br i1 %.not.i.i131, label %bb.az, label %bb.ay, !prof !268

bb.ay:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.az:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.jq
  %.pre314 = load double, ptr %i.jr, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ay, %bb.az
  %i.js = phi double [ 0.000000e+00, %bb.ay ], [ %.pre314, %bb.az ]
  %i.jt = fadd double %i.jo, %i.js                ; 3 uses
  %i.ju = sub i32 %i.ja, %.1290
  %i.jv = icmp ugt i32 %i.ju, 15
  %i.jw = and i32 %i.ja, 1
  %.not72 = icmp eq i32 %i.jw, 0
  %or.cond = or i1 %i.jv, %.not72
  br i1 %or.cond, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.gr, %i.ja
  br i1 %.not.i.i134, label %bb.bc, label %bb.bb, !prof !268

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.bc:                                            ; preds = %bb.ba
  %i.jx = zext i32 %i.gr to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.jx
  %.pre315 = load double, ptr %i.jy, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.bb, %bb.bc
  %i.jz = phi double [ 0.000000e+00, %bb.bb ], [ %.pre315, %bb.bc ]
  %i.ka = fadd double %i.jn, %i.jz
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.sroa.0254.0 = phi double [ %i.jn, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133 ], [ %i.ka, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136 ] ; 3 uses
  %i.kb = load ptr, ptr %i.g, align 8, !tbaa !1159 ; 2 uses
  %.not.i207 = icmp eq ptr %i.kb, null
  %i.kc = insertelement <2 x double> poison, double %.sroa.0254.0, i64 0
  %i.kd = insertelement <2 x double> %i.kc, double %i.jt, i64 1 ; 2 uses
  %i.ke = insertelement <4 x double> poison, double %i.jn, i64 0
  %i.kf = insertelement <4 x double> %i.ke, double %i.jo, i64 1
  %i.kg = insertelement <4 x double> %i.kf, double %i.je, i64 2
  %i.kh = insertelement <4 x double> %i.kg, double %i.hf, i64 3 ; 2 uses
  br i1 %.not.i207, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ki = load <2 x double>, ptr %i.kb, align 8, !tbaa !477 ; 2 uses
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kk = fadd <4 x double> %i.kh, %i.kj
  %i.kl = fadd <2 x double> %i.kd, %i.ki
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.km = phi <2 x double> [ %i.kd, %bb.bd ], [ %i.kl, %bb.be ]
  %i.kn = phi <4 x double> [ %i.kh, %bb.bd ], [ %i.kk, %bb.be ]
  %i.ko = load ptr, ptr %i.h, align 8, !tbaa !1156 ; 4 uses
  %i.kp = load ptr, ptr %1, align 8, !tbaa !1158
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 80
  %i.kr = load <2 x float>, ptr %i.kq, align 8, !tbaa !304 ; 2 uses
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !338 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !339 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 3 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !358
  %.not.i.i.i214 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i.i214, label %bb.bg, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i215, !prof !267

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ks, ptr noundef %i.ku, ptr noundef nonnull align 4 dereferenceable(48) %i.kv)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i215

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i215: ; preds = %bb.bg, %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !725
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 56
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !365 ; 2 uses
  %.not.i.i216 = icmp eq ptr %i.la, null
  br i1 %.not.i.i216, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217, label %bb.bh

bb.bh:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i215
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i215, %bb.bh
  %i.ld = phi ptr [ %i.lc, %bb.bh ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i215 ]
  %i.le = fptrunc <2 x double> %i.km to <2 x float>
  %i.lf = fptrunc <4 x double> %i.kn to <4 x float>
  %i.lg = shufflevector <2 x float> %i.kr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lh = fmul <4 x float> %i.lg, %i.lf           ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ko, i64 28
  %i.lj = fmul <2 x float> %i.kr, %i.le           ; 3 uses
  %i.lk = extractelement <2 x float> %i.lj, i64 0
  %i.ll = extractelement <2 x float> %i.lj, i64 1
  %i.lm = extractelement <4 x float> %i.lh, i64 0
  %i.ln = extractelement <4 x float> %i.lh, i64 1
  %i.lo = extractelement <4 x float> %i.lh, i64 2
  %i.lp = extractelement <4 x float> %i.lh, i64 3
  tail call void %i.ky(ptr noundef nonnull align 8 dereferenceable(72) %i.ks, ptr noundef %i.ku, ptr noundef nonnull align 4 dereferenceable(48) %i.kv, float noundef %i.lo, float noundef %i.lp, float noundef %i.lm, float noundef %i.ln, float noundef %i.lk, float noundef %i.ll, ptr noundef %i.ld) #63, !inline_history !149
  store <2 x float> %i.lj, ptr %i.li, align 4, !tbaa !304
  store double %.sroa.0254.0, ptr %i.e, align 8, !tbaa !712
  store double %i.jt, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !712
  %i.lq = add i32 %i.gr, 8                        ; 2 uses
  %i.lr = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %.not71 = icmp ugt i32 %i.lq, %i.lr
  br i1 %.not71, label %.loopexit, label %bb.af, !llvm.loop !3512

.loopexit:                                        ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217, %.preheader, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9hvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1152 ; 5 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82

.preheader:                                       ; preds = %bb.a
  %.not71288 = icmp ult i32 %i.c, 8
  br i1 %.not71288, label %.loopexit, label %.lr.ph290

.lr.ph290:                                        ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0274.0.copyload.pre = load double, ptr %i.e, align 8, !tbaa !712
  %.sroa.11.0.copyload.pre = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !712
  br label %bb.af

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 4 uses
  %.sroa.0249.0.copyload = load double, ptr %i.i, align 8, !tbaa !712
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %.sroa.15.0.copyload.a = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.j, align 8, !tbaa !477
  %i.k = fadd double %.sroa.0249.0.copyload, %.pre ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre298 = load double, ptr %i.m, align 8, !tbaa !477
  %i.n = load double, ptr %i.l, align 8, !tbaa !477
  %i.o = fadd double %i.k, %i.n                   ; 2 uses
  %i.p = fadd double %.sroa.15.0.copyload.a, %.pre298 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre299 = load double, ptr %i.q, align 8, !tbaa !477
  %i.r = fadd double %i.p, %.pre299               ; 2 uses
  %.not73275 = icmp ult i32 %i.c, 12
  br i1 %.not73275, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106
  %i.v = phi i32 [ 12, %.lr.ph ], [ %i.eo, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 3 uses
  %.0281 = phi i32 [ 4, %.lr.ph ], [ %i.v, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 9 uses
  %.sroa.16.0280 = phi double [ %i.r, %.lr.ph ], [ %i.en, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 4 uses
  %.sroa.0238.0279 = phi double [ %i.o, %.lr.ph ], [ %i.eh, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 5 uses
  %.sroa.17.0278 = phi double [ %i.p, %.lr.ph ], [ %i.ei, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 2 uses
  %.sroa.0249.0277 = phi double [ %i.k, %.lr.ph ], [ %i.dy, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.15.0276 = phi double [ %.sroa.15.0.copyload.a, %.lr.ph ], [ %i.bz, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !1159 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  %i.x = insertelement <2 x double> poison, double %.sroa.0249.0277, i64 0
  %i.y = insertelement <2 x double> %i.x, double %.sroa.15.0276, i64 1 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load <2 x double>, ptr %i.w, align 8, !tbaa !477 ; 3 uses
  %i.aa = fadd <2 x double> %i.y, %i.z
  %i.ab = extractelement <2 x double> %i.z, i64 0
  %i.ac = fadd double %.sroa.0238.0279, %i.ab
  %i.ad = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  %i.ae = fadd double %.sroa.17.0278, %i.ad
  %i.af = fadd double %.sroa.16.0280, %i.ad
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.68.0.i = phi double [ %.sroa.17.0278, %bb.b ], [ %i.ae, %bb.c ]
  %.sroa.06.0.i = phi double [ %.sroa.0238.0279, %bb.b ], [ %i.ac, %bb.c ]
  %.sroa.6.0.i = phi double [ %.sroa.16.0280, %bb.b ], [ %i.af, %bb.c ]
  %i.ag = phi <2 x double> [ %i.y, %bb.b ], [ %i.aa, %bb.c ]
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !1156 ; 5 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1158
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !304 ; 3 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !338 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !339 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !358
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, !prof !267

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef %i.an, ptr noundef nonnull align 4 dereferenceable(48) %i.ao)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i:    ; preds = %bb.e, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !725
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !365 ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.at, null
  br i1 %.not.i.i137, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, %bb.f
  %i.aw = phi ptr [ %i.av, %bb.f ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i ]
  %i.ax = fptrunc double %.sroa.6.0.i to float
  %i.ay = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.az = fmul float %i.ay, %i.ax                 ; 2 uses
  %i.ba = fptrunc double %.sroa.06.0.i to float
  %i.bb = extractelement <2 x float> %i.ak, i64 0
  %i.bc = fmul float %i.bb, %i.ba                 ; 3 uses
  %i.bd = fptrunc double %.sroa.68.0.i to float
  %i.be = fmul float %i.ay, %i.bd
  %i.bf = fptrunc <2 x double> %i.ag to <2 x float>
  %i.bg = fmul <2 x float> %i.ak, %i.bf           ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = extractelement <2 x float> %i.bg, i64 1
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(72) %i.al, ptr noundef %i.an, ptr noundef nonnull align 4 dereferenceable(48) %i.ao, float noundef %i.bh, float noundef %i.bi, float noundef %i.bc, float noundef %i.be, float noundef %i.bc, float noundef %i.az, ptr noundef %i.aw) #63, !inline_history !149
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store float %i.bc, ptr %i.bj, align 4, !tbaa !360
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store float %i.az, ptr %i.bk, align 8, !tbaa !730
  store double %.sroa.0238.0279, ptr %i.i, align 8, !tbaa !712
  store double %.sroa.16.0280, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !1152 ; 4 uses
  %.not.i.i83 = icmp ult i32 %.0281, %i.bl
  br i1 %.not.i.i83, label %bb.h, label %bb.g, !prof !268

bb.g:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85

bb.h:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  %i.bm = zext i32 %.0281 to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bm
  %.pre300 = load double, ptr %i.bn, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85: ; preds = %bb.g, %bb.h
  %i.bo = phi double [ 0.000000e+00, %bb.g ], [ %.pre300, %bb.h ]
  %i.bp = fadd double %.sroa.16.0280, %i.bo       ; 2 uses
  %i.bq = or disjoint i32 %.0281, 1               ; 2 uses
  %.not.i.i86 = icmp ult i32 %i.bq, %i.bl
  br i1 %.not.i.i86, label %bb.j, label %bb.i, !prof !268

bb.i:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88

bb.j:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit85
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.br
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88: ; preds = %bb.i, %bb.j
  %.0.i.i87 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.bs, %bb.j ]
  %i.bt = or disjoint i32 %.0281, 2               ; 2 uses
  %.not.i.i89 = icmp ult i32 %i.bt, %i.bl
  br i1 %.not.i.i89, label %bb.l, label %bb.k, !prof !268

bb.k:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91

bb.l:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit88
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bu
  %.pre301 = load double, ptr %i.bv, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91: ; preds = %bb.k, %bb.l
  %i.bw = phi double [ 0.000000e+00, %bb.k ], [ %.pre301, %bb.l ]
  %i.bx = load double, ptr %.0.i.i87, align 8, !tbaa !477
  %i.by = fadd double %.sroa.0238.0279, %i.bx     ; 3 uses
  %i.bz = fadd double %i.bp, %i.bw                ; 5 uses
  %i.ca = or disjoint i32 %.0281, 3               ; 2 uses
  %.not.i.i92 = icmp ult i32 %i.ca, %i.bl
  br i1 %.not.i.i92, label %bb.n, label %bb.m, !prof !268

bb.m:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94

bb.n:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit91
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cb
  %.pre302 = load double, ptr %i.cc, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94: ; preds = %bb.m, %bb.n
  %i.cd = phi double [ 0.000000e+00, %bb.m ], [ %.pre302, %bb.n ]
  %i.ce = fadd double %i.by, %i.cd                ; 3 uses
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !1159 ; 2 uses
  %.not.i147 = icmp eq ptr %i.cf, null
  %i.cg = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.bz, i64 1 ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %.sroa.0238.0279, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.bp, i64 1 ; 2 uses
  br i1 %.not.i147, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94
  %i.ck = load <2 x double>, ptr %i.cf, align 8, !tbaa !477 ; 3 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = fadd <2 x double> %i.cj, %i.ck
  %i.cn = fadd double %i.by, %i.cl
  %i.co = fadd <2 x double> %i.ch, %i.ck
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94
  %.sroa.06.0.i151 = phi double [ %i.by, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94 ], [ %i.cn, %bb.o ]
  %i.cp = phi <2 x double> [ %i.ch, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94 ], [ %i.co, %bb.o ]
  %i.cq = phi <2 x double> [ %i.cj, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit94 ], [ %i.cm, %bb.o ]
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !1156 ; 4 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !1158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cu = load <2 x float>, ptr %i.ct, align 8, !tbaa !304 ; 3 uses
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !338 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !339 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !358
  %.not.i.i.i154 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i154, label %bb.q, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i155, !prof !267

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.cv, ptr noundef %i.cx, ptr noundef nonnull align 4 dereferenceable(48) %i.cy)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i155

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i155: ; preds = %bb.q, %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !725
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !365 ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i156, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157, label %bb.r

bb.r:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i155
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i155, %bb.r
  %i.dg = phi ptr [ %i.df, %bb.r ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i155 ]
  %i.dh = fptrunc <2 x double> %i.cp to <2 x float>
  %i.di = fptrunc double %.sroa.06.0.i151 to float
  %i.dj = extractelement <2 x float> %i.cu, i64 0
  %i.dk = fmul float %i.dj, %i.di
  %i.dl = fptrunc <2 x double> %i.cq to <2 x float>
  %i.dm = fmul <2 x float> %i.cu, %i.dl           ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  %i.do = fmul <2 x float> %i.cu, %i.dh           ; 3 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.dr = extractelement <2 x float> %i.dm, i64 0
  %i.ds = extractelement <2 x float> %i.dm, i64 1
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(72) %i.cv, ptr noundef %i.cx, ptr noundef nonnull align 4 dereferenceable(48) %i.cy, float noundef %i.dr, float noundef %i.ds, float noundef %i.dk, float noundef %i.dq, float noundef %i.dp, float noundef %i.dq, ptr noundef %i.dg) #63, !inline_history !149
  store <2 x float> %i.do, ptr %i.dn, align 4, !tbaa !304
  store double %i.ce, ptr %i.i, align 8, !tbaa !712
  store double %i.bz, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712
  %i.dt = add i32 %.0281, 4                       ; 2 uses
  %i.du = load i32, ptr %i.b, align 4, !tbaa !1152 ; 6 uses
  %.not.i.i95 = icmp ult i32 %i.dt, %i.du
  br i1 %.not.i.i95, label %bb.t, label %bb.s, !prof !268

bb.s:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97

bb.t:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit157
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.dv
  %.pre303 = load double, ptr %i.dw, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97: ; preds = %bb.s, %bb.t
  %i.dx = phi double [ 0.000000e+00, %bb.s ], [ %.pre303, %bb.t ]
  %i.dy = fadd double %i.ce, %i.dx                ; 3 uses
  %i.dz = add i32 %.0281, 5                       ; 2 uses
  %.not.i.i98 = icmp ult i32 %i.dz, %i.du
  br i1 %.not.i.i98, label %bb.v, label %bb.u, !prof !268

bb.u:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100

bb.v:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit97
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ea
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100: ; preds = %bb.u, %bb.v
  %.0.i.i99 = phi ptr [ @_hb_CrapPool, %bb.u ], [ %i.eb, %bb.v ]
  %i.ec = add i32 %.0281, 6                       ; 2 uses
  %.not.i.i101 = icmp ult i32 %i.ec, %i.du
  br i1 %.not.i.i101, label %bb.x, label %bb.w, !prof !268

bb.w:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103

bb.x:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit100
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ed
  %.pre304 = load double, ptr %i.ee, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103: ; preds = %bb.w, %bb.x
  %i.ef = phi double [ 0.000000e+00, %bb.w ], [ %.pre304, %bb.x ]
  %i.eg = load double, ptr %.0.i.i99, align 8, !tbaa !477
  %i.eh = fadd double %i.dy, %i.eg                ; 2 uses
  %i.ei = fadd double %i.bz, %i.ef                ; 3 uses
  %i.ej = add i32 %.0281, 7                       ; 2 uses
  %.not.i.i104 = icmp ult i32 %i.ej, %i.du
  br i1 %.not.i.i104, label %bb.z, label %bb.y, !prof !268

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit103
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ek
  %.pre305 = load double, ptr %i.el, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106: ; preds = %bb.y, %bb.z
  %i.em = phi double [ 0.000000e+00, %bb.y ], [ %.pre305, %bb.z ]
  %i.en = fadd double %i.ei, %i.em                ; 2 uses
  %i.eo = add i32 %i.v, 8                         ; 2 uses
  %.not73 = icmp ugt i32 %i.eo, %i.du
  br i1 %.not73, label %._crit_edge, label %bb.b, !llvm.loop !3513

._crit_edge:                                      ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82
  %.sroa.15.0.lcssa = phi double [ %.sroa.15.0.copyload.a, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.bz, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.0249.0.lcssa = phi double [ %i.k, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.dy, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.17.0.lcssa = phi double [ %i.p, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.ei, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %.sroa.0238.0.lcssa = phi double [ %i.o, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.eh, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 3 uses
  %.sroa.16.0.lcssa = phi double [ %i.r, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.en, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 3 uses
  %.0.lcssa = phi i32 [ 4, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.v, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ] ; 2 uses
  %i.ep = phi i32 [ %i.c, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.du, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit106 ]
  %i.eq = icmp ult i32 %.0.lcssa, %i.ep
  br i1 %i.eq, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, label %bb.aa

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109: ; preds = %._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.es = zext i32 %.0.lcssa to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !477
  %i.ev = fadd double %.sroa.0238.0.lcssa, %i.eu
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109, %._crit_edge
  %.sroa.0.1 = phi double [ %i.ev, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit109 ], [ %.sroa.0238.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !1159 ; 2 uses
  %.not.i167 = icmp eq ptr %i.ex, null
  %i.ey = insertelement <4 x double> poison, double %.sroa.0238.0.lcssa, i64 0
  %i.ez = insertelement <4 x double> %i.ey, double %.sroa.17.0.lcssa, i64 1
  %i.fa = insertelement <4 x double> %i.ez, double %.sroa.0249.0.lcssa, i64 2
  %i.fb = insertelement <4 x double> %i.fa, double %.sroa.15.0.lcssa, i64 3 ; 2 uses
  br i1 %.not.i167, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fc = load <2 x double>, ptr %i.ex, align 8, !tbaa !477 ; 3 uses
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fe = fadd <4 x double> %i.fb, %i.fd
  %i.ff = extractelement <2 x double> %i.fc, i64 0
  %i.fg = fadd double %.sroa.0.1, %i.ff
  %i.fh = extractelement <2 x double> %i.fc, i64 1
  %i.fi = fadd double %.sroa.16.0.lcssa, %i.fh
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.6.0.i172 = phi double [ %.sroa.16.0.lcssa, %bb.aa ], [ %i.fi, %bb.ab ]
  %.sroa.0.0.i173 = phi double [ %.sroa.0.1, %bb.aa ], [ %i.fg, %bb.ab ]
  %i.fj = phi <4 x double> [ %i.fb, %bb.aa ], [ %i.fe, %bb.ab ]
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1156 ; 5 uses
  %i.fm = load ptr, ptr %1, align 8, !tbaa !1158
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.fo = load <2 x float>, ptr %i.fn, align 8, !tbaa !304 ; 3 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !338 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !339 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !358
  %.not.i.i.i174 = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.i174, label %bb.ad, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i175, !prof !267

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.fq, ptr noundef %i.fs, ptr noundef nonnull align 4 dereferenceable(48) %i.ft)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i175

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i175: ; preds = %bb.ad, %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !725
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !365 ; 2 uses
  %.not.i.i176 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i176, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177, label %bb.ae

bb.ae:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i175
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit177: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i175, %bb.ae
  %i.gb = phi ptr [ %i.ga, %bb.ae ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i175 ]
  %i.gc = fptrunc double %.sroa.6.0.i172 to float
  %i.gd = extractelement <2 x float> %i.fo, i64 1
  %i.ge = fmul float %i.gd, %i.gc                 ; 2 uses
  %i.gf = fptrunc double %.sroa.0.0.i173 to float
  %i.gg = extractelement <2 x float> %i.fo, i64 0
  %i.gh = fmul float %i.gg, %i.gf                 ; 2 uses
  %i.gi = fptrunc <4 x double> %i.fj to <4 x float>
  %i.gj = fmul <4 x float> %i.fp, %i.gi           ; 4 uses
  %i.gk = extractelement <4 x float> %i.gj, i64 0
  %i.gl = extractelement <4 x float> %i.gj, i64 1
  %i.gm = extractelement <4 x float> %i.gj, i64 2
  %i.gn = extractelement <4 x float> %i.gj, i64 3
  tail call void %i.fw(ptr noundef nonnull align 8 dereferenceable(72) %i.fq, ptr noundef %i.fs, ptr noundef nonnull align 4 dereferenceable(48) %i.ft, float noundef %i.gm, float noundef %i.gn, float noundef %i.gk, float noundef %i.gl, float noundef %i.gh, float noundef %i.ge, ptr noundef %i.gb) #63, !inline_history !149
  %i.go = getelementptr inbounds nuw i8, ptr %i.fl, i64 28
  store float %i.gh, ptr %i.go, align 4, !tbaa !360
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  store float %i.ge, ptr %i.gp, align 8, !tbaa !730
  store double %.sroa.0.1, ptr %i.i, align 8, !tbaa !712
  store double %.sroa.16.0.lcssa, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712
  br label %.loopexit

bb.af:                                            ; preds = %.lr.ph290, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217
  %i.gq = phi i32 [ %i.c, %.lr.ph290 ], [ %i.lr, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 4 uses
  %.sroa.11.0.copyload = phi double [ %.sroa.11.0.copyload.pre, %.lr.ph290 ], [ %.sroa.12.0, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 2 uses
  %.sroa.0274.0.copyload = phi double [ %.sroa.0274.0.copyload.pre, %.lr.ph290 ], [ %i.jt, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ]
  %i.gr = phi i32 [ 8, %.lr.ph290 ], [ %i.lq, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 4 uses
  %.1289 = phi i32 [ 0, %.lr.ph290 ], [ %i.gr, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit217 ] ; 10 uses
  %.not.i.i110 = icmp ult i32 %.1289, %i.gq
  br i1 %.not.i.i110, label %bb.ah, label %bb.ag, !prof !268

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

bb.ah:                                            ; preds = %bb.af
  %i.gs = zext i32 %.1289 to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gs
  %.pre308 = load double, ptr %i.gt, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112: ; preds = %bb.ag, %bb.ah
  %i.gu = phi double [ 0.000000e+00, %bb.ag ], [ %.pre308, %bb.ah ]
  %i.gv = fadd double %.sroa.0274.0.copyload, %i.gu ; 2 uses
  %i.gw = or disjoint i32 %.1289, 1               ; 2 uses
  %.not.i.i113 = icmp ult i32 %i.gw, %i.gq
  br i1 %.not.i.i113, label %bb.aj, label %bb.ai, !prof !268

bb.ai:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

bb.aj:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit112
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gx
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115: ; preds = %bb.ai, %bb.aj
  %.0.i.i114 = phi ptr [ @_hb_CrapPool, %bb.ai ], [ %i.gy, %bb.aj ]
  %i.gz = or disjoint i32 %.1289, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.gz, %i.gq
  br i1 %.not.i.i116, label %bb.al, label %bb.ak, !prof !268

bb.ak:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.al:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ha
  %.pre309 = load double, ptr %i.hb, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.ak, %bb.al
  %i.hc = phi double [ 0.000000e+00, %bb.ak ], [ %.pre309, %bb.al ]
  %i.hd = load double, ptr %.0.i.i114, align 8, !tbaa !477
  %i.he = fadd double %i.gv, %i.hd                ; 4 uses
  %i.hf = fadd double %.sroa.11.0.copyload, %i.hc ; 3 uses
  %i.hg = or disjoint i32 %.1289, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.hg, %i.gq
  br i1 %.not.i.i119, label %bb.an, label %bb.am, !prof !268

bb.am:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.an:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hh
  %.pre310 = load double, ptr %i.hi, align 8, !tbaa !477
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.am, %bb.an
  %i.hj = phi double [ 0.000000e+00, %bb.am ], [ %.pre310, %bb.an ]
  %i.hk = fadd double %i.hf, %i.hj                ; 3 uses
  %i.hl = load ptr, ptr %i.g, align 8, !tbaa !1159 ; 2 uses
  %.not.i187 = icmp eq ptr %i.hl, null
  %i.hm = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hk, i64 1 ; 2 uses
  %i.ho = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %.sroa.11.0.copyload, i64 1 ; 2 uses
  br i1 %.not.i187, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.hq = load <2 x double>, ptr %i.hl, align 8, !tbaa !477 ; 3 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 1
  %i.hs = fadd <2 x double> %i.hp, %i.hq
  %i.ht = fadd double %i.hf, %i.hr
  %i.hu = fadd <2 x double> %i.hn, %i.hq
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %.sroa.68.0.i190 = phi double [ %i.hf, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.ht, %bb.ao ]
  %i.hv = phi <2 x double> [ %i.hn, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.hu, %bb.ao ]
  %i.hw = phi <2 x double> [ %i.hp, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121 ], [ %i.hs, %bb.ao ]
  %i.hx = load ptr, ptr %i.h, align 8, !tbaa !1156 ; 4 uses
  %i.hy = load ptr, ptr %1, align 8, !tbaa !1158
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 80
  %i.ia = load <2 x float>, ptr %i.hz, align 8, !tbaa !304 ; 3 uses
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !338 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !339 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9vhcurvetoERS4_RS5_:bb.a
  %i.ha = fptrunc double %i.fx to float
  %i.hb = fmul float %i.gh, %i.ha
  %i.hc = fptrunc double %i.fo to float
  %i.hd = fmul float %i.gj, %i.hc
  %i.he = fptrunc double %.sroa.0236.0.copyload to float
  %i.hf = fmul float %i.gh, %i.he
  tail call void %i.gq(ptr noundef nonnull align 8 dereferenceable(72) %i.gk, ptr noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(48) %i.gn, float noundef %i.hf, float noundef %i.hd, float noundef %i.hb, float noundef %i.gx, float noundef %i.gz, float noundef %i.gx, ptr noundef %i.gv) #63, !inline_history !212
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store float %i.gz, ptr %i.hg, align 4, !tbaa !360
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store float %i.gx, ptr %i.hh, align 8, !tbaa !730
  store double %i.gd, ptr %i.e, align 8, !tbaa !712
  store double %i.fy, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !712
  %i.hi = or disjoint i32 %.1255, 4               ; 2 uses
  %i.hj = load i32, ptr %i.b, align 4, !tbaa !1152 ; 7 uses
  %.not.i.i134 = icmp ult i32 %i.hi, %i.hj
  br i1 %.not.i.i134, label %bb.al, label %bb.ak, !prof !268

bb.ak:                                            ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.al:                                            ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133
  %i.hk = zext i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hk
  %.pre277 = load double, ptr %i.hl, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.ak, %bb.al
  %i.hm = phi double [ 0.000000e+00, %bb.ak ], [ %.pre277, %bb.al ]
  %i.hn = fadd double %i.gd, %i.hm                ; 2 uses
  %i.ho = or disjoint i32 %.1255, 5               ; 2 uses
  %.not.i.i137 = icmp ult i32 %i.ho, %i.hj
  br i1 %.not.i.i137, label %bb.an, label %bb.am, !prof !268

bb.am:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139

bb.an:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hp
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139: ; preds = %bb.am, %bb.an
  %.0.i.i138 = phi ptr [ @_hb_CrapPool, %bb.am ], [ %i.hq, %bb.an ]
  %i.hr = or disjoint i32 %.1255, 6               ; 2 uses
  %.not.i.i140 = icmp ult i32 %i.hr, %i.hj
  br i1 %.not.i.i140, label %bb.ap, label %bb.ao, !prof !268

bb.ao:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142

bb.ap:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hs
  %.pre278 = load double, ptr %i.ht, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142: ; preds = %bb.ao, %bb.ap
  %i.hu = phi double [ 0.000000e+00, %bb.ao ], [ %.pre278, %bb.ap ]
  %i.hv = load double, ptr %.0.i.i138, align 8, !tbaa !477
  %i.hw = fadd double %i.hn, %i.hv                ; 3 uses
  %i.hx = fadd double %i.fy, %i.hu                ; 2 uses
  %i.hy = or disjoint i32 %.1255, 7               ; 2 uses
  %.not.i.i143 = icmp ult i32 %i.hy, %i.hj
  br i1 %.not.i.i143, label %bb.ar, label %bb.aq, !prof !268

bb.aq:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145

bb.ar:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hz
  %.pre279 = load double, ptr %i.ia, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145: ; preds = %bb.aq, %bb.ar
  %i.ib = phi double [ 0.000000e+00, %bb.aq ], [ %.pre279, %bb.ar ]
  %i.ic = fadd double %i.hx, %i.ib                ; 3 uses
  %i.id = sub i32 %i.hj, %.1255
  %i.ie = icmp ugt i32 %i.id, 15
  %i.if = and i32 %i.hj, 1
  %.not72 = icmp eq i32 %i.if, 0
  %or.cond = or i1 %i.ie, %.not72
  br i1 %or.cond, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145
  %.not.i.i146 = icmp ult i32 %i.fk, %i.hj
  br i1 %.not.i.i146, label %bb.au, label %bb.at, !prof !268

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148

bb.au:                                            ; preds = %bb.as
  %i.ig = zext i32 %i.fk to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ig
  %.pre280 = load double, ptr %i.ih, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148: ; preds = %bb.at, %bb.au
  %i.ii = phi double [ 0.000000e+00, %bb.at ], [ %.pre280, %bb.au ]
  %i.ij = fadd double %i.hw, %i.ii
  br label %bb.av

bb.av:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145
  %.sroa.0207.0 = phi double [ %i.hw, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145 ], [ %i.ij, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148 ] ; 3 uses
  %i.ik = load ptr, ptr %1, align 8, !tbaa !459   ; 4 uses
  %i.il = load ptr, ptr %i.g, align 8, !tbaa !460
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  %i.in = load <2 x float>, ptr %i.im, align 8, !tbaa !304 ; 3 uses
  %i.io = load ptr, ptr %i.ik, align 8, !tbaa !338 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !339 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 3 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !358
  %.not.i.i.i.i149 = icmp eq i32 %i.is, 0
  br i1 %.not.i.i.i.i149, label %bb.aw, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150, !prof !267

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.io, ptr noundef %i.iq, ptr noundef nonnull align 4 dereferenceable(48) %i.ir)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150: ; preds = %bb.aw, %bb.av
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !725
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i151 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i151, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152, label %bb.ax

bb.ax:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !726
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150, %bb.ax
  %i.iz = phi ptr [ %i.iy, %bb.ax ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150 ]
  %i.ja = insertelement <2 x double> poison, double %.sroa.0207.0, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.ic, i64 1
  %i.jc = fptrunc <2 x double> %i.jb to <2 x float>
  %i.jd = fptrunc double %i.hx to float
  %i.je = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.jf = fmul float %i.je, %i.jd
  %i.jg = fptrunc double %i.hw to float
  %i.jh = extractelement <2 x float> %i.in, i64 0 ; 2 uses
  %i.ji = fmul float %i.jh, %i.jg
  %i.jj = fmul float %i.je, %i.gw
  %i.jk = fptrunc double %i.hn to float
  %i.jl = fmul float %i.jh, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  %i.jn = fmul <2 x float> %i.in, %i.jc           ; 3 uses
  %i.jo = extractelement <2 x float> %i.jn, i64 0
  %i.jp = extractelement <2 x float> %i.jn, i64 1
  tail call void %i.iu(ptr noundef nonnull align 8 dereferenceable(72) %i.io, ptr noundef %i.iq, ptr noundef nonnull align 4 dereferenceable(48) %i.ir, float noundef %i.jl, float noundef %i.jj, float noundef %i.ji, float noundef %i.jf, float noundef %i.jo, float noundef %i.jp, ptr noundef %i.iz) #63, !inline_history !212
  store <2 x float> %i.jn, ptr %i.jm, align 4, !tbaa !304
  store double %.sroa.0207.0, ptr %i.e, align 8, !tbaa !712
  store double %i.ic, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !712
  %i.jq = add i32 %i.fk, 8                        ; 2 uses
  %i.jr = load i32, ptr %i.b, align 4, !tbaa !1152 ; 2 uses
  %.not71 = icmp ugt i32 %i.jq, %i.jr
  br i1 %.not71, label %.loopexit, label %bb.z, !llvm.loop !5873

.loopexit:                                        ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152, %.preheader, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9hvcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1152 ; 5 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82

.preheader:                                       ; preds = %bb.a
  %.not71253 = icmp ult i32 %i.c, 8
  br i1 %.not71253, label %.loopexit, label %.lr.ph255

.lr.ph255:                                        ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0235.0.copyload.pre = load double, ptr %i.e, align 8, !tbaa !712
  %.sroa.11.0.copyload.pre = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !712
  br label %bb.z

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 4 uses
  %.sroa.0196.0.copyload = load double, ptr %i.h, align 8, !tbaa !712
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 4 uses
  %.sroa.15.0.copyload.a = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %i.i, align 8, !tbaa !477
  %i.j = fadd double %.sroa.0196.0.copyload, %.pre ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre263 = load double, ptr %i.l, align 8, !tbaa !477
  %i.m = load double, ptr %i.k, align 8, !tbaa !477
  %i.n = fadd double %i.j, %i.m                   ; 2 uses
  %i.o = fadd double %.sroa.15.0.copyload.a, %.pre263 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre264 = load double, ptr %i.p, align 8, !tbaa !477
  %i.q = fadd double %i.o, %.pre264               ; 2 uses
  %.not73240 = icmp ult i32 %i.c, 12
  br i1 %.not73240, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110
  %i.t = phi i32 [ 12, %.lr.ph ], [ %i.dr, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ] ; 3 uses
  %.0246 = phi i32 [ 4, %.lr.ph ], [ %i.t, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ] ; 9 uses
  %.sroa.16.0245 = phi double [ %i.q, %.lr.ph ], [ %i.dq, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ] ; 3 uses
  %.sroa.0179.0244 = phi double [ %i.n, %.lr.ph ], [ %i.dk, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ] ; 3 uses
  %.sroa.17.0243 = phi double [ %i.o, %.lr.ph ], [ %i.dl, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ]
  %.sroa.0196.0242 = phi double [ %i.j, %.lr.ph ], [ %i.db, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ]
  %.sroa.15.0241 = phi double [ %.sroa.15.0.copyload.a, %.lr.ph ], [ %i.bm, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ]
  %i.u = load ptr, ptr %1, align 8, !tbaa !459    ; 5 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !460  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load float, ptr %i.w, align 8, !tbaa !615 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  %i.z = load float, ptr %i.y, align 4, !tbaa !618 ; 3 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !338 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !339 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !358
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, !prof !267

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(48) %i.ad)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i:  ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !725
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !726
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, %bb.d
  %i.al = phi ptr [ %i.ak, %bb.d ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i ]
  %i.am = fptrunc double %.sroa.16.0245 to float
  %i.an = fmul float %i.z, %i.am                  ; 2 uses
  %i.ao = fptrunc double %.sroa.0179.0244 to float ; 2 uses
  %i.ap = fmul float %i.x, %i.ao                  ; 3 uses
  %i.aq = fptrunc double %.sroa.17.0243 to float
  %i.ar = fmul float %i.z, %i.aq
  %i.as = fptrunc double %.sroa.15.0241 to float
  %i.at = fmul float %i.z, %i.as
  %i.au = fptrunc double %.sroa.0196.0242 to float
  %i.av = fmul float %i.x, %i.au
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(48) %i.ad, float noundef %i.av, float noundef %i.at, float noundef %i.ap, float noundef %i.ar, float noundef %i.ap, float noundef %i.an, ptr noundef %i.al) #63, !inline_history !212
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store float %i.ap, ptr %i.aw, align 4, !tbaa !360
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store float %i.an, ptr %i.ax, align 8, !tbaa !730
  store double %.sroa.0179.0244, ptr %i.h, align 8, !tbaa !712
  store double %.sroa.16.0245, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !1152 ; 4 uses
  %.not.i.i83 = icmp ult i32 %.0246, %i.ay
  br i1 %.not.i.i83, label %bb.f, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit85

bb.f:                                             ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  %i.az = zext i32 %.0246 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  %.pre265 = load double, ptr %i.ba, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit85

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit85: ; preds = %bb.e, %bb.f
  %i.bb = phi double [ 0.000000e+00, %bb.e ], [ %.pre265, %bb.f ]
  %i.bc = fadd double %.sroa.16.0245, %i.bb       ; 2 uses
  %i.bd = or disjoint i32 %.0246, 1               ; 2 uses
  %.not.i.i86 = icmp ult i32 %i.bd, %i.ay
  br i1 %.not.i.i86, label %bb.h, label %bb.g, !prof !268

bb.g:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit85
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit88

bb.h:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit85
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.be
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit88

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit88: ; preds = %bb.g, %bb.h
  %.0.i.i87 = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.bf, %bb.h ]
  %i.bg = or disjoint i32 %.0246, 2               ; 2 uses
  %.not.i.i89 = icmp ult i32 %i.bg, %i.ay
  br i1 %.not.i.i89, label %bb.j, label %bb.i, !prof !268

bb.i:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit88
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit91

bb.j:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit88
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bh
  %.pre266 = load double, ptr %i.bi, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit91

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit91: ; preds = %bb.i, %bb.j
  %i.bj = phi double [ 0.000000e+00, %bb.i ], [ %.pre266, %bb.j ]
  %i.bk = load double, ptr %.0.i.i87, align 8, !tbaa !477
  %i.bl = fadd double %.sroa.0179.0244, %i.bk     ; 2 uses
  %i.bm = fadd double %i.bc, %i.bj                ; 5 uses
  %i.bn = or disjoint i32 %.0246, 3               ; 2 uses
  %.not.i.i92 = icmp ult i32 %i.bn, %i.ay
  br i1 %.not.i.i92, label %bb.l, label %bb.k, !prof !268

bb.k:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit91
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit94

bb.l:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit91
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bo
  %.pre267 = load double, ptr %i.bp, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit94

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit94: ; preds = %bb.k, %bb.l
  %i.bq = phi double [ 0.000000e+00, %bb.k ], [ %.pre267, %bb.l ]
  %i.br = fadd double %i.bl, %i.bq                ; 3 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !459   ; 4 uses
  %i.bt = load ptr, ptr %i.r, align 8, !tbaa !460
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load <2 x float>, ptr %i.bu, align 8, !tbaa !304 ; 3 uses
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !338 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !339 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !358
  %.not.i.i.i.i95 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i95, label %bb.m, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i96, !prof !267

bb.m:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit94
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.bw, ptr noundef %i.by, ptr noundef nonnull align 4 dereferenceable(48) %i.bz)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i96

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i96: ; preds = %bb.m, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit94
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !725
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i97, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit98, label %bb.n

bb.n:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i96
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !726
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit98

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit98: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i96, %bb.n
  %i.ch = phi ptr [ %i.cg, %bb.n ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i96 ]
  %i.ci = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.bm, i64 1
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float>
  %i.cl = fptrunc double %i.bl to float
  %i.cm = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.cn = fmul float %i.cm, %i.cl
  %i.co = fptrunc double %i.bc to float
  %i.cp = extractelement <2 x float> %i.bv, i64 1
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fmul float %i.cm, %i.ao
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.ct = fmul <2 x float> %i.bv, %i.ck           ; 3 uses
  %i.cu = extractelement <2 x float> %i.ct, i64 0
  %i.cv = extractelement <2 x float> %i.ct, i64 1 ; 2 uses
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(72) %i.bw, ptr noundef %i.by, ptr noundef nonnull align 4 dereferenceable(48) %i.bz, float noundef %i.cr, float noundef %i.cq, float noundef %i.cn, float noundef %i.cv, float noundef %i.cu, float noundef %i.cv, ptr noundef %i.ch) #63, !inline_history !212
  store <2 x float> %i.ct, ptr %i.cs, align 4, !tbaa !304
  store double %i.br, ptr %i.h, align 8, !tbaa !712
  store double %i.bm, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712
  %i.cw = add i32 %.0246, 4                       ; 2 uses
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !1152 ; 6 uses
  %.not.i.i99 = icmp ult i32 %i.cw, %i.cx
  br i1 %.not.i.i99, label %bb.p, label %bb.o, !prof !268

bb.o:                                             ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit98
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit101

bb.p:                                             ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit98
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cy
  %.pre268 = load double, ptr %i.cz, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit101

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit101: ; preds = %bb.o, %bb.p
  %i.da = phi double [ 0.000000e+00, %bb.o ], [ %.pre268, %bb.p ]
  %i.db = fadd double %i.br, %i.da                ; 3 uses
  %i.dc = add i32 %.0246, 5                       ; 2 uses
  %.not.i.i102 = icmp ult i32 %i.dc, %i.cx
  br i1 %.not.i.i102, label %bb.r, label %bb.q, !prof !268

bb.q:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit101
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit104

bb.r:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit101
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dd
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit104

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit104: ; preds = %bb.q, %bb.r
  %.0.i.i103 = phi ptr [ @_hb_CrapPool, %bb.q ], [ %i.de, %bb.r ]
  %i.df = add i32 %.0246, 6                       ; 2 uses
  %.not.i.i105 = icmp ult i32 %i.df, %i.cx
  br i1 %.not.i.i105, label %bb.t, label %bb.s, !prof !268

bb.s:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit104
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit107

bb.t:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit104
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dg
  %.pre269 = load double, ptr %i.dh, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit107

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit107: ; preds = %bb.s, %bb.t
  %i.di = phi double [ 0.000000e+00, %bb.s ], [ %.pre269, %bb.t ]
  %i.dj = load double, ptr %.0.i.i103, align 8, !tbaa !477
  %i.dk = fadd double %i.db, %i.dj                ; 2 uses
  %i.dl = fadd double %i.bm, %i.di                ; 3 uses
  %i.dm = add i32 %.0246, 7                       ; 2 uses
  %.not.i.i108 = icmp ult i32 %i.dm, %i.cx
  br i1 %.not.i.i108, label %bb.v, label %bb.u, !prof !268

bb.u:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit107
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110

bb.v:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit107
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dn
  %.pre270 = load double, ptr %i.do, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110: ; preds = %bb.u, %bb.v
  %i.dp = phi double [ 0.000000e+00, %bb.u ], [ %.pre270, %bb.v ]
  %i.dq = fadd double %i.dl, %i.dp                ; 2 uses
  %i.dr = add i32 %i.t, 8                         ; 2 uses
  %.not73 = icmp ugt i32 %i.dr, %i.cx
  br i1 %.not73, label %._crit_edge, label %bb.b, !llvm.loop !5874

._crit_edge:                                      ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82
  %.sroa.15.0.lcssa = phi double [ %.sroa.15.0.copyload.a, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.bm, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ]
  %.sroa.0196.0.lcssa = phi double [ %i.j, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.db, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ]
  %.sroa.17.0.lcssa = phi double [ %i.o, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.dl, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ]
  %.sroa.0179.0.lcssa = phi double [ %i.n, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.dk, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ] ; 3 uses
  %.sroa.16.0.lcssa = phi double [ %i.q, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.dq, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ] ; 2 uses
  %.0.lcssa = phi i32 [ 4, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.t, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ] ; 2 uses
  %i.ds = phi i32 [ %i.c, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit82 ], [ %i.cx, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit110 ]
  %i.dt = icmp ult i32 %.0.lcssa, %i.ds
  br i1 %i.dt, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit113, label %bb.w

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit113: ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = zext i32 %.0.lcssa to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !477
  %i.dy = fadd double %.sroa.0179.0.lcssa, %i.dx
  br label %bb.w

bb.w:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit113, %._crit_edge
  %.sroa.0.1 = phi double [ %i.dy, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit113 ], [ %.sroa.0179.0.lcssa, %._crit_edge ] ; 2 uses
  %i.dz = load ptr, ptr %1, align 8, !tbaa !459   ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !460
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.ed = load <2 x float>, ptr %i.ec, align 8, !tbaa !304 ; 3 uses
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !338 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !339 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !358
  %.not.i.i.i.i114 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i.i.i114, label %bb.x, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i115, !prof !267

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(48) %i.ei)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i115

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i115: ; preds = %bb.x, %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !725
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i116, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit117, label %bb.y

bb.y:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i115
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !726
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit117

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit117: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i115, %bb.y
  %i.eq = phi ptr [ %i.ep, %bb.y ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i115 ]
  %i.er = fptrunc double %.sroa.16.0.lcssa to float
  %i.es = extractelement <2 x float> %i.ed, i64 1
  %i.et = fmul float %i.es, %i.er                 ; 2 uses
  %i.eu = fptrunc double %.sroa.0.1 to float
  %i.ev = extractelement <2 x float> %i.ed, i64 0
  %i.ew = fmul float %i.ev, %i.eu                 ; 2 uses
  %i.ex = insertelement <4 x double> poison, double %.sroa.0179.0.lcssa, i64 0
  %i.ey = insertelement <4 x double> %i.ex, double %.sroa.17.0.lcssa, i64 1
  %i.ez = insertelement <4 x double> %i.ey, double %.sroa.0196.0.lcssa, i64 2
  %i.fa = insertelement <4 x double> %i.ez, double %.sroa.15.0.lcssa, i64 3
  %i.fb = fptrunc <4 x double> %i.fa to <4 x float>
  %i.fc = fmul <4 x float> %i.ee, %i.fb           ; 4 uses
  %i.fd = extractelement <4 x float> %i.fc, i64 0
  %i.fe = extractelement <4 x float> %i.fc, i64 1
  %i.ff = extractelement <4 x float> %i.fc, i64 2
  %i.fg = extractelement <4 x float> %i.fc, i64 3
  tail call void %i.el(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(48) %i.ei, float noundef %i.ff, float noundef %i.fg, float noundef %i.fd, float noundef %i.fe, float noundef %i.ew, float noundef %i.et, ptr noundef %i.eq) #63, !inline_history !212
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  store float %i.ew, ptr %i.fh, align 4, !tbaa !360
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  store float %i.et, ptr %i.fi, align 8, !tbaa !730
  store double %.sroa.0.1, ptr %i.h, align 8, !tbaa !712
  store double %.sroa.16.0.lcssa, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !712
  br label %.loopexit

bb.z:                                             ; preds = %.lr.ph255, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152
  %i.fj = phi i32 [ %i.c, %.lr.ph255 ], [ %i.jr, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152 ] ; 4 uses
  %.sroa.11.0.copyload = phi double [ %.sroa.11.0.copyload.pre, %.lr.ph255 ], [ %.sroa.12.0, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152 ] ; 2 uses
  %.sroa.0235.0.copyload = phi double [ %.sroa.0235.0.copyload.pre, %.lr.ph255 ], [ %i.ic, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152 ]
  %i.fk = phi i32 [ 8, %.lr.ph255 ], [ %i.jq, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152 ] ; 4 uses
  %.1254 = phi i32 [ 0, %.lr.ph255 ], [ %i.fk, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152 ] ; 10 uses
  %.not.i.i118 = icmp ult i32 %.1254, %i.fj
  br i1 %.not.i.i118, label %bb.ab, label %bb.aa, !prof !268

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit120

bb.ab:                                            ; preds = %bb.z
  %i.fl = zext i32 %.1254 to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fl
  %.pre273 = load double, ptr %i.fm, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit120

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit120: ; preds = %bb.aa, %bb.ab
  %i.fn = phi double [ 0.000000e+00, %bb.aa ], [ %.pre273, %bb.ab ]
  %i.fo = fadd double %.sroa.0235.0.copyload, %i.fn ; 2 uses
  %i.fp = or disjoint i32 %.1254, 1               ; 2 uses
  %.not.i.i121 = icmp ult i32 %i.fp, %i.fj
  br i1 %.not.i.i121, label %bb.ad, label %bb.ac, !prof !268

bb.ac:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit120
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit123

bb.ad:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit120
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fq
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit123

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit123: ; preds = %bb.ac, %bb.ad
  %.0.i.i122 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.fr, %bb.ad ]
  %i.fs = or disjoint i32 %.1254, 2               ; 2 uses
  %.not.i.i124 = icmp ult i32 %i.fs, %i.fj
  br i1 %.not.i.i124, label %bb.af, label %bb.ae, !prof !268

bb.ae:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit123
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit126

bb.af:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit123
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ft
  %.pre274 = load double, ptr %i.fu, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit126

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit126: ; preds = %bb.ae, %bb.af
  %i.fv = phi double [ 0.000000e+00, %bb.ae ], [ %.pre274, %bb.af ]
  %i.fw = load double, ptr %.0.i.i122, align 8, !tbaa !477
  %i.fx = fadd double %i.fo, %i.fw                ; 3 uses
  %i.fy = fadd double %.sroa.11.0.copyload, %i.fv ; 2 uses
  %i.fz = or disjoint i32 %.1254, 3               ; 2 uses
  %.not.i.i127 = icmp ult i32 %i.fz, %i.fj
  br i1 %.not.i.i127, label %bb.ah, label %bb.ag, !prof !268

bb.ag:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit126
  store i8 1, ptr %i.a, align 8, !tbaa !1613
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit129

bb.ah:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit126
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ga
  %.pre275 = load double, ptr %i.gb, align 8, !tbaa !477
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit129

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit129: ; preds = %bb.ag, %bb.ah
  %i.gc = phi double [ 0.000000e+00, %bb.ag ], [ %.pre275, %bb.ah ]
  %i.gd = fadd double %i.fy, %i.gc                ; 3 uses
  %i.ge = load ptr, ptr %1, align 8, !tbaa !459   ; 5 uses
  %i.gf = load ptr, ptr %i.g, align 8, !tbaa !460 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !615 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 84
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !618 ; 3 uses
  %i.gk = load ptr, ptr %i.ge, align 8, !tbaa !338 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !339 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !358
  %.not.i.i.i.i130 = icmp eq i32 %i.go, 0
  br i1 %.not.i.i.i.i130, label %bb.ai, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i131, !prof !267

bb.ai:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit129
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.gk, ptr noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(48) %i.gn)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i131

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i131: ; preds = %bb.ai, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit129
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !725
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !365 ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i132, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133, label %bb.aj

bb.aj:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i131
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !726
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i131, %bb.aj
  %i.gv = phi ptr [ %i.gu, %bb.aj ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i131 ]
  %i.gw = fptrunc double %i.gd to float
  %i.gx = fmul float %i.gj, %i.gw                 ; 2 uses
  %i.gy = fptrunc double %i.fx to float           ; 2 uses
  %i.gz = fmul float %i.gh, %i.gy                 ; 3 uses
  %i.ha = fptrunc double %i.fy to float
  %i.hb = fmul float %i.gj, %i.ha
  %i.hc = fptrunc double %.sroa.11.0.copyload to float
  %i.hd = fmul float %i.gj, %i.hc
  %i.he = fptrunc double %i.fo to float
  %i.hf = fmul float %i.gh, %i.he
  tail call void %i.gq(ptr noundef nonnull align 8 dereferenceable(72) %i.gk, ptr noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(48) %i.gn, float noundef %i.hf, float noundef %i.hd, float noundef %i.gz, float noundef %i.hb, float noundef %i.gz, float noundef %i.gx, ptr noundef %i.gv) #63, !inline_history !212
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store float %i.gz, ptr %i.hg, align 4, !tbaa !360
end_hunk_3
