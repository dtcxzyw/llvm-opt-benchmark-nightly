Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a

_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit: ; preds = %bb.pv
  %i.clt = load i32, ptr %i.ckw, align 8, !tbaa !240
  %i.clu = call noundef zeroext i1 @_ZN3CFF4Dict17serialize_link_opIN2OT7NumTypeILb1EiLj4EEELi29EEEbP22hb_serialize_context_tjjNS5_8whence_tE(ptr noundef nonnull %0, i32 noundef 17, i32 noundef %i.clt, i32 noundef 2)
  br i1 %i.clu, label %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, label %.thread788.sink.split, !prof !401

_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread: ; preds = %.lr.ph.i.i454, %.preheader.i.i453, %bb.pv, %bb.pv, %bb.pv, %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit
  %i.clv = getelementptr inbounds nuw i8, ptr %.0192950, i64 16 ; 2 uses
  %.not210 = icmp eq ptr %i.clv, %i.ckv
  br i1 %.not210, label %._crit_edge953, label %bb.pv

._crit_edge953:                                   ; preds = %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit.thread, %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.clw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.clx = load ptr, ptr %i.clw, align 8, !tbaa !229 ; 2 uses
  %.not.i458 = icmp eq ptr %i.clx, null
  br i1 %.not.i458, label %_ZNK22hb_serialize_context_t6lengthEv.exit460, label %bb.qa, !prof !57

bb.qa:                                            ; preds = %._crit_edge953
  %i.cly = load ptr, ptr %i.bru, align 8, !tbaa !227
  %i.clz = load ptr, ptr %i.clx, align 8, !tbaa !234
  %i.cma = ptrtoint ptr %i.cly to i64
  %i.cmb = ptrtoint ptr %i.clz to i64
  %i.cmc = sub i64 %i.cma, %i.cmb
  %i.cmd = trunc i64 %i.cmc to i32
  br label %_ZNK22hb_serialize_context_t6lengthEv.exit460

_ZNK22hb_serialize_context_t6lengthEv.exit460:    ; preds = %._crit_edge953, %bb.qa
  %.0.i459 = phi i32 [ %i.cmd, %bb.qa ], [ 0, %._crit_edge953 ] ; 2 uses
  store i32 %.0.i459, ptr %i.k, align 4, !tbaa !59
  %i.cme = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) ; 0 uses
  %i.cmf = load ptr, ptr %i.bru, align 8, !tbaa !227
  %i.cmg = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.cmf, ptr noundef nonnull %0, ptr nonnull %i.k, i64 1, i32 noundef %.0.i459, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.thread788.sink.split:                            ; preds = %_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKNS_8op_str_tERKNS_20cff_sub_table_info_tE.exit, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i.i451, %bb.pw, %.critedge.i.i.i457, %bb.pt, %bb.pr, %bb.pp, %bb.pg
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %.thread788

.thread788:                                       ; preds = %.thread788.sink.split, %_ZN11hb_vector_tIhLb0EED2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit: ; preds = %bb.ln, %.thread721, %_ZNK22hb_serialize_context_t6lengthEv.exit460, %bb.oy, %.critedge.i.i425, %bb.nx, %bb.nu, %bb.nr, %bb.no, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit, %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit, %bb.ot, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit, %_ZN22hb_serialize_context_t5embedEPKcj.exit435.thread768, %.thread788, %bb.ni, %bb.nl
  %.25 = phi i1 [ false, %.critedge.i.i425 ], [ false, %bb.nx ], [ false, %bb.nl ], [ %i.cmg, %_ZNK22hb_serialize_context_t6lengthEv.exit460 ], [ false, %bb.ni ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff1EEEPT_v.exit ], [ false, %.thread788 ], [ false, %_ZN22hb_serialize_context_t5embedEPKcj.exit435.thread768 ], [ false, %_ZN11hb_vector_tI10hb_array_tIKhELb0EED2Ev.exit ], [ false, %bb.ot ], [ false, %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit ], [ false, %bb.oy ], [ false, %bb.no ], [ false, %bb.nr ], [ false, %bb.nu ], [ false, %.thread721 ], [ false, %bb.ln ] ; 2 uses
  br i1 %.not.i485.not, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.qb

bb.qb:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  call void @hb_free(ptr noundef %.sroa.14588.0.ph) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit: ; preds = %bb.ji, %.thread.i489, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1423, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.qb, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i
  %.26 = phi i1 [ false, %.thread.i489 ], [ false, %_ZN11hb_vector_tIS_IhLb0EELb0EE13shrink_vectorEj.exit.i.i.i ], [ false, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread ], [ %.25, %bb.qb ], [ %.25, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit ], [ false, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ false, %_ZL27_serialize_cff1_charstringsP22hb_serialize_context_tRN2OT16cff2_subset_planEjj.exit.thread1423 ], [ false, %bb.ji ]
  ret i1 %.26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !64     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !57

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !55

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !57

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !66   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !57

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !402
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !58

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !64    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !65
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229  ; 9 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !407
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !214
  switch i32 %i.f, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread [
    i32 0, label %.critedge
    i32 2, label %.critedge
    i32 8, label %.critedge
    i32 16, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !412
  store ptr %i.h, ptr %i.c, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !227  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !230
  store ptr null, ptr %i.g, align 8, !tbaa !412
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !234  ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !228  ; 2 uses
  %.not14 = icmp eq ptr %i.q, null                ; 2 uses
  %. = select i1 %.not14, ptr %i.l, ptr %i.q
  store ptr %., ptr %i.i, align 8, !tbaa !227
  store ptr null, ptr %i.p, align 8, !tbaa !228
  %i.r = and i64 %i.o, 4294967295                 ; 4 uses
  %.not16 = icmp eq i64 %i.r, 0
  br i1 %.not16, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br i1 %1, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %..i.i.i.i = tail call noundef range(i64 -9223372036854775808, 2147483648) i64 @llvm.smin.i64(i64 %i.o, i64 128)
  %i.s = and i64 %..i.i.i.i, 4294967295
  %i.t = tail call fastcc noundef i32 @_ZL10fasthash32PKvmj(ptr noundef %i.l, i64 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !327
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !324
  %i.y = mul i32 %i.x, 12
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.y to i64
  %i.z = tail call fastcc noundef i32 @_ZL10fasthash32PKvmj(ptr noundef %i.v, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i)
  %i.aa = xor i32 %i.z, %i.t                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !413
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = call noundef ptr @_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE10fetch_itemERKS3_j(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.aa) ; 2 uses
  %.not6.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %spec.select.i = select i1 %.not6.i, ptr @_hb_NullPool, ptr %i.af
  %.pre26.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !407
  br label %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit

_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit: ; preds = %bb.d, %bb.e
  %.pre26.pre = phi ptr [ %i.d, %bb.d ], [ %.pre26.pre.pre, %bb.e ] ; 4 uses
  %.1.i = phi ptr [ @_hb_NullPool, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.ag = load i32, ptr %.1.i, align 4, !tbaa !59 ; 5 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !59
  %.not17 = icmp eq i32 %i.ag, 0
  br i1 %.not17, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13get_with_hashERKS3_j.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !414
  %.not.i.i = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !54

bb.g:                                             ; preds = %bb.f
  %i.aj = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.aj, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !415
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %i.an, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre26.pre, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !327 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre26.pre, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !324 ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %.idx.i = mul nuw nsw i64 %i.as, 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.ar, 0
  br i1 %.not12.i, label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i
  %i.au = load ptr, ptr %.0.i.i, align 8, !tbaa !407 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 36 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  br label %bb.i

bb.i:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i, %.lr.ph.i
  %.013.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.bh, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i ] ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !324 ; 3 uses
  %i.az = load i32, ptr %i.av, align 8, !tbaa !325
  %.not.i10.i = icmp slt i32 %i.ay, %i.az
  br i1 %.not.i10.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = add i32 %i.ay, 1
  %i.bb = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i32 noundef %i.ba, i1 noundef zeroext false)
  br i1 %i.bb, label %..critedge_crit_edge.i.i, label %bb.k, !prof !54

..critedge_crit_edge.i.i:                         ; preds = %bb.j
  %.pre.i.i = load i32, ptr %i.aw, align 4, !tbaa !324
  br label %.critedge.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.i
  %i.bc = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !327
  %i.be = add i32 %i.bc, 1
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !324
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bg, ptr noundef nonnull align 4 dereferenceable(12) %.013.i, i64 12, i1 false), !tbaa.struct !416
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i: ; preds = %.critedge.i.i, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bh, %i.at
  br i1 %.not.i18, label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit, label %bb.i

_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushIJRKS2_EEEPS2_DpOT_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !407
  br label %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit

_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit: ; preds = %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i
  %i.bi = phi ptr [ %.pre, %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit.loopexit ], [ %.pre26.pre, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EEixEi.exit.i ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !325
  %i.bl = add i32 %i.bk, -1
  %spec.select.i.i.i = icmp ult i32 %i.bl, -2
  br i1 %spec.select.i.i.i, label %bb.l, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.l:                                             ; preds = %_ZN22hb_serialize_context_t19merge_virtual_linksEPKNS_8object_tEj.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i32 0, ptr %i.bm, align 4, !tbaa !324
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
end_hunk_0
begin_hunk_1_@_ZN22hb_serialize_context_t8pop_packEb:bb.a
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !414 ; 3 uses
  %i.ck = load i32, ptr %i.ch, align 8, !tbaa !417
  %.not.i19 = icmp slt i32 %i.cj, %i.ck
  br i1 %.not.i19, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = add i32 %i.cj, 1
  %i.cm = call noundef zeroext i1 @_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i32 noundef %i.cl, i1 noundef zeroext false)
  br i1 %i.cm, label %..critedge_crit_edge.i, label %bb.r, !prof !54

..critedge_crit_edge.i:                           ; preds = %bb.q
  %.pre.i = load i32, ptr %i.ci, align 4, !tbaa !414
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !407
  br label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.cn = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cn, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.p
  %i.co = phi ptr [ %.pre27, %..critedge_crit_edge.i ], [ %i.cd, %bb.p ]
  %i.cp = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.cj, %bb.p ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !415
  %i.cs = add i32 %i.cp, 1
  store i32 %i.cs, ptr %i.ci, align 4, !tbaa !414
  %i.ct = zext i32 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %i.co, ptr %i.cu, align 8, !tbaa !407
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit: ; preds = %bb.r, %.critedge.i
  %i.cv = load i32, ptr %i.ch, align 8, !tbaa !417
  %i.cw = icmp sgt i32 %i.cv, -1
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !214
  %.not.i.i.i = icmp ne i32 %i.cx, 0              ; 2 uses
  %brmerge.i.i = or i1 %i.cw, %.not.i.i.i
  br i1 %brmerge.i.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread, !prof !197

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  store i32 1, ptr %i.e, align 4, !tbaa !214
  br label %bb.s

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  br i1 %.not.i.i.i, label %bb.s, label %bb.t, !prof !156

bb.s:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit.thread, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !407
  call void @_ZN22hb_serialize_context_t8object_t4finiEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cy)
  br label %bb.x

bb.t:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEEEbOT_.exit
  %i.cz = load i32, ptr %i.ci, align 4, !tbaa !418
  %i.da = add i32 %i.cz, -1
  store i32 %i.da, ptr %i.b, align 4, !tbaa !59
  br i1 %1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dc = call noundef zeroext i1 @_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE13set_with_hashIRPS1_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  %.pre28 = load i32, ptr %i.e, align 4, !tbaa !214
  %i.dd = icmp ne i32 %.pre28, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not.i.i.i20 = phi i1 [ %i.dd, %bb.u ], [ false, %bb.t ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.df = load i8, ptr %i.de, align 8, !tbaa !419, !range !112, !noundef !113
  %i.dg = trunc nuw i8 %i.df to i1
  %brmerge.i.i21 = or i1 %.not.i.i.i20, %i.dg
  br i1 %brmerge.i.i21, label %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.e, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit

_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit: ; preds = %bb.v, %bb.w
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !59
  br label %bb.x

bb.x:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit, %bb.s, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  %.010 = phi i32 [ %i.ag, %_ZN22hb_serialize_context_t8object_t4finiEv.exit ], [ 0, %bb.s ], [ %i.dh, %_ZN22hb_serialize_context_t15propagate_errorIR12hb_hashmap_tIPKNS_8object_tEjLb0EEEEbOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.x, %.critedge, %bb.a
  %.2 = phi i32 [ 0, %.critedge ], [ 0, %bb.a ], [ %.010, %bb.x ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !214  ; 2 uses
  switch i32 %i.d, label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread [
    i32 0, label %.critedge
    i32 2, label %.critedge
    i32 8, label %.critedge
    i32 16, label %.critedge
  ]

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !412
  store ptr %i.f, ptr %i.a, align 8, !tbaa !229
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228  ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !234
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ %i.h, %.critedge ]
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.e, label %_ZN22hb_serialize_context_t6revertEPcS0_.exit, !prof !54

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !230
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !226
  tail call void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN22hb_serialize_context_t6revertEPcS0_.exit

_ZN22hb_serialize_context_t6revertEPcS0_.exit:    ; preds = %bb.d, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !228
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !325
  %i.q = add i32 %i.p, -1
  %spec.select.i.i.i = icmp ult i32 %i.q, -2
  br i1 %spec.select.i.i.i, label %bb.f, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.r, align 4, !tbaa !324
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !327
  tail call void @hb_free(ptr noundef %i.t) #16
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.f, %_ZN22hb_serialize_context_t6revertEPcS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !325
  %i.w = add i32 %i.v, -1
  %spec.select.i.i1.i = icmp ult i32 %i.w, -2
  br i1 %spec.select.i.i1.i, label %bb.g, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 0, ptr %i.x, align 4, !tbaa !324
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !327
  tail call void @hb_free(ptr noundef %i.z) #16
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

_ZN22hb_serialize_context_t8object_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !406
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !407
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !406
  br label %_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread

_ZNK22hb_serialize_context_t13only_overflowEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZN22hb_serialize_context_t8object_t4finiEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11PrivateDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = add i32 %1, 1131
  %or.cond = icmp ult i32 %i.i, 2263
  br i1 %or.cond, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %1, 107
  %or.cond3 = icmp ult i32 %i.j, 215
  br i1 %or.cond3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nsw i32 %1 to i8
  %i.l = add i8 %i.k, -117                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.l, ptr %i.h, align 1, !tbaa !187
  %i.m = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !125  ; 3 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !122
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %bb.e, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126
  %i.t = add nsw i32 %i.o, 1
  store i32 %i.t, ptr %i.n, align 4, !tbaa !125
  %i.u = zext i32 %i.o to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store i8 %i.l, ptr %i.v, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

bb.e:                                             ; preds = %bb.c
  %i.w = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.h) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

_ZN3CFF13str_encoder_t11encode_byteEh.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.f:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i32 %1, -108                     ; 2 uses
  %i.z = lshr i32 %i.y, 8
  %i.aa = trunc i32 %i.z to i8
  %i.ab = add i8 %i.aa, -9                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %i.ab, ptr %i.g, align 1, !tbaa !187
  %i.ac = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !125 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !122
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !54

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !126
  %i.aj = add nsw i32 %i.ae, 1
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !125
  %i.ak = zext i32 %i.ae to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  store i8 %i.ab, ptr %i.al, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit20

bb.i:                                             ; preds = %bb.g
  %i.am = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.g) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit20

_ZN3CFF13str_encoder_t11encode_byteEh.exit20:     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.an = trunc i32 %i.y to i8                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.an, ptr %i.f, align 1, !tbaa !187
  %i.ao = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !125 ; 3 uses
  %i.ar = load i32, ptr %i.ao, align 8, !tbaa !122
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k, !prof !54

bb.j:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit20
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !126
  %i.av = add nsw i32 %i.aq, 1
  store i32 %i.av, ptr %i.ap, align 4, !tbaa !125
  %i.aw = zext i32 %i.aq to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store i8 %i.an, ptr %i.ax, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit21

bb.k:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit20
  %i.ay = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit21

_ZN3CFF13str_encoder_t11encode_byteEh.exit21:     ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aa

bb.l:                                             ; preds = %bb.f
  %i.az = sub nsw i32 -108, %1                    ; 2 uses
  %i.ba = lshr i32 %i.az, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = add i8 %i.bb, -5                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.bc, ptr %i.e, align 1, !tbaa !187
  %i.bd = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !125 ; 3 uses
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !122
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.n, !prof !54

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !126
  %i.bk = add nsw i32 %i.bf, 1
  store i32 %i.bk, ptr %i.be, align 4, !tbaa !125
  %i.bl = zext i32 %i.bf to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  store i8 %i.bc, ptr %i.bm, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit22

bb.n:                                             ; preds = %bb.l
  %i.bn = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 1 dereferenceable(1) %i.e) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit22

_ZN3CFF13str_encoder_t11encode_byteEh.exit22:     ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bo = trunc i32 %i.az to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.bo, ptr %i.d, align 1, !tbaa !187
  %i.bp = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !125 ; 3 uses
  %i.bs = load i32, ptr %i.bp, align 8, !tbaa !122
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.o, label %bb.p, !prof !54

bb.o:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !126
  %i.bw = add nsw i32 %i.br, 1
  store i32 %i.bw, ptr %i.bq, align 4, !tbaa !125
  %i.bx = zext i32 %i.br to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx
  store i8 %i.bo, ptr %i.by, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit23

bb.p:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit22
  %i.bz = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit23

_ZN3CFF13str_encoder_t11encode_byteEh.exit23:     ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_1
begin_hunk_2_@_ZN3CFF13str_encoder_t10encode_intEi:bb.a
bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.0 = phi i32 [ %1, %bb.r ], [ 32767, %bb.s ], [ -32768, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 28, ptr %i.c, align 1, !tbaa !187
  %i.cc = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !125 ; 3 uses
  %i.cf = load i32, ptr %i.cc, align 8, !tbaa !122
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !54

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !126
  %i.cj = add nsw i32 %i.ce, 1
  store i32 %i.cj, ptr %i.cd, align 4, !tbaa !125
  %i.ck = zext i32 %i.ce to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  store i8 28, ptr %i.cl, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit24

bb.v:                                             ; preds = %bb.t
  %i.cm = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit24

_ZN3CFF13str_encoder_t11encode_byteEh.exit24:     ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = lshr i32 %.0, 8
  %i.co = trunc i32 %i.cn to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.co, ptr %i.b, align 1, !tbaa !187
  %i.cp = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !125 ; 3 uses
  %i.cs = load i32, ptr %i.cp, align 8, !tbaa !122
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.w, label %bb.x, !prof !54

bb.w:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !126
  %i.cw = add nsw i32 %i.cr, 1
  store i32 %i.cw, ptr %i.cq, align 4, !tbaa !125
  %i.cx = zext i32 %i.cr to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cx
  store i8 %i.co, ptr %i.cy, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit25

bb.x:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit24
  %i.cz = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit25

_ZN3CFF13str_encoder_t11encode_byteEh.exit25:     ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.da = trunc i32 %.0 to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.da, ptr %i.a, align 1, !tbaa !187
  %i.db = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !125 ; 3 uses
  %i.de = load i32, ptr %i.db, align 8, !tbaa !122
  %i.df = icmp slt i32 %i.dd, %i.de
  br i1 %i.df, label %bb.y, label %bb.z, !prof !54

bb.y:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit25
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !126
  %i.di = add nsw i32 %i.dd, 1
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !125
  %i.dj = zext i32 %i.dd to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj
  store i8 %i.da, ptr %i.dk, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit26

bb.z:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit25
  %i.dl = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit26

_ZN3CFF13str_encoder_t11encode_byteEh.exit26:     ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit, %_ZN3CFF13str_encoder_t11encode_byteEh.exit23, %_ZN3CFF13str_encoder_t11encode_byteEh.exit21, %_ZN3CFF13str_encoder_t11encode_byteEh.exit26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF13str_encoder_t9encode_opEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = icmp ugt i32 %1, 255
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 12, ptr %i.c, align 1, !tbaa !187
  %i.e = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !125  ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !122
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.d, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = add nsw i32 %i.g, 1
  store i32 %i.l, ptr %i.f, align 4, !tbaa !125
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 12, ptr %i.n, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

bb.d:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

_ZN3CFF13str_encoder_t11encode_byteEh.exit:       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = trunc i32 %1 to i8                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.p, ptr %i.b, align 1, !tbaa !187
  %i.q = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !125  ; 3 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !122
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f, !prof !54

bb.e:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.x = add nsw i32 %i.s, 1
  store i32 %i.x, ptr %i.r, align 4, !tbaa !125
  %i.y = zext i32 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  store i8 %i.p, ptr %i.z, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit3

bb.f:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit
  %i.aa = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit3

_ZN3CFF13str_encoder_t11encode_byteEh.exit3:      ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ab = trunc nuw i32 %1 to i8                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ab, ptr %i.a, align 1, !tbaa !187
  %i.ac = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !125 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !122
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !54

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !126
  %i.aj = add nsw i32 %i.ae, 1
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !125
  %i.ak = zext i32 %i.ae to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  store i8 %i.ab, ptr %i.al, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit4

bb.i:                                             ; preds = %bb.g
  %i.am = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit4

_ZN3CFF13str_encoder_t11encode_byteEh.exit4:      ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit4, %_ZN3CFF13str_encoder_t11encode_byteEh.exit3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

declare hidden noundef zeroext i1 @_Z25hb_serialize_cff_fdselectP22hb_serialize_context_tjRKN3CFF8FDSelectEjjjRK11hb_vector_tINS1_11code_pair_tELb0EE(ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(6), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI10hb_array_tIKhELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !381    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !57

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !420

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 268435455
  br i1 %i.j, label %.critedge, label %bb.e, !prof !57

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !385
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !385  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !384  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, label %bb.l, !prof !57

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !385
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !421
  br label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread

_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53, label %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, !prof !58

_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !381   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !385
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !381
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI10hb_array_tIKhELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS2_j11hb_priorityILj1EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tI10hb_array_tIKhELb0EE4pushIJS2_EEEPS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !384  ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !381
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tI10hb_array_tIKhELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %..critedge_crit_edge, label %bb.c, !prof !54

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !384
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.f = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !385
  %i.i = add i32 %i.f, 1
  store i32 %i.i, ptr %i.a, align 4, !tbaa !384
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.k, %.critedge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9serializeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKSB_PKjj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 4, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !384
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val.i = load i32, ptr %i.b, align 4, !tbaa !384 ; 4 uses
  %.not41.i = icmp eq i32 %.val.i, 0
  br i1 %.not41.i, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %.val.i to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val21.i = load ptr, ptr %i.c, align 8, !tbaa !385 ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i, 1152921504606846975
  %i.e = and i64 %i.d, 1152921504606846975        ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %xtraiter = and i64 %i.f, 7                     ; 3 uses
  %i.g = icmp samesign ult i64 %i.e, 7
  br i1 %i.g, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.f, 2305843009213693944
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.01644.i = phi ptr [ %.val21.i, %.lr.ph.preheader.i.new ], [ %i.x, %.lr.ph.i ] ; 9 uses
  %.01743.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.w, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.h = getelementptr i8, ptr %.01644.i, i64 8
  %.016.val22.i = load i64, ptr %i.h, align 8
  %.sroa.3.8.extract.trunc.i.i = trunc i64 %.016.val22.i to i32
  %i.i = add i32 %.01743.i, %.sroa.3.8.extract.trunc.i.i
  %i.j = getelementptr i8, ptr %.01644.i, i64 24
  %.016.val22.i.1 = load i64, ptr %i.j, align 8
  %.sroa.3.8.extract.trunc.i.i.1 = trunc i64 %.016.val22.i.1 to i32
  %i.k = add i32 %i.i, %.sroa.3.8.extract.trunc.i.i.1
  %i.l = getelementptr i8, ptr %.01644.i, i64 40
  %.016.val22.i.2 = load i64, ptr %i.l, align 8
  %.sroa.3.8.extract.trunc.i.i.2 = trunc i64 %.016.val22.i.2 to i32
  %i.m = add i32 %i.k, %.sroa.3.8.extract.trunc.i.i.2
  %i.n = getelementptr i8, ptr %.01644.i, i64 56
  %.016.val22.i.3 = load i64, ptr %i.n, align 8
  %.sroa.3.8.extract.trunc.i.i.3 = trunc i64 %.016.val22.i.3 to i32
  %i.o = add i32 %i.m, %.sroa.3.8.extract.trunc.i.i.3
  %i.p = getelementptr i8, ptr %.01644.i, i64 72
  %.016.val22.i.4 = load i64, ptr %i.p, align 8
  %.sroa.3.8.extract.trunc.i.i.4 = trunc i64 %.016.val22.i.4 to i32
  %i.q = add i32 %i.o, %.sroa.3.8.extract.trunc.i.i.4
  %i.r = getelementptr i8, ptr %.01644.i, i64 88
  %.016.val22.i.5 = load i64, ptr %i.r, align 8
  %.sroa.3.8.extract.trunc.i.i.5 = trunc i64 %.016.val22.i.5 to i32
  %i.s = add i32 %i.q, %.sroa.3.8.extract.trunc.i.i.5
  %i.t = getelementptr i8, ptr %.01644.i, i64 104
  %.016.val22.i.6 = load i64, ptr %i.t, align 8
  %.sroa.3.8.extract.trunc.i.i.6 = trunc i64 %.016.val22.i.6 to i32
  %i.u = add i32 %i.s, %.sroa.3.8.extract.trunc.i.i.6
  %i.v = getelementptr i8, ptr %.01644.i, i64 120
  %.016.val22.i.7 = load i64, ptr %i.v, align 8
  %.sroa.3.8.extract.trunc.i.i.7 = trunc i64 %.016.val22.i.7 to i32
  %i.w = add i32 %i.u, %.sroa.3.8.extract.trunc.i.i.7 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01644.i, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.01644.i.epil.init = phi ptr [ %.val21.i, %.lr.ph.preheader.i ], [ %i.x, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ]
  %.01743.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.w, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.01644.i.epil = phi ptr [ %i.aa, %.lr.ph.i.epil ], [ %.01644.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.01743.i.epil = phi i32 [ %i.z, %.lr.ph.i.epil ], [ %.01743.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr i8, ptr %.01644.i.epil, i64 8
  %.016.val22.i.epil = load i64, ptr %i.y, align 8
  %.sroa.3.8.extract.trunc.i.i.epil = trunc i64 %.016.val22.i.epil to i32
  %i.z = add i32 %.01743.i.epil, %.sroa.3.8.extract.trunc.i.i.epil ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01644.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit, label %.lr.ph.i.epil, !llvm.loop !425

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c, %bb.b
  %.val = phi i32 [ %.val.pre, %bb.b ], [ 0, %bb.c ], [ %.val.i, %.lr.ph.i.epil ], [ %.val.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ] ; 2 uses
  %.066 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.c ], [ %i.w, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.i.epil ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val46 = load ptr, ptr %i.ab, align 8, !tbaa !385 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %.val to i64 ; 2 uses
  %i.ac = tail call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKS5_IKhEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr %.val46, i64 %.sroa.2.8.insert.ext.i.i.i.i, i32 noundef %.066, i32 noundef %4)
  br i1 %i.ac, label %bb.d, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, !prof !54

bb.d:                                             ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tI10hb_array_tIKhELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKSB_Pjj.exit
  %i.ad = zext i32 %.066 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !214
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.e, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, !prof !54

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp slt i32 %.066, 0
  br i1 %i.ag, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split, label %bb.f, !prof !57

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !226
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !227 ; 4 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp slt i64 %i.an, %i.ad
  br i1 %i.ao, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ad
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !227
  %.not43 = icmp eq ptr %i.ak, null
  br i1 %.not43, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, label %bb.g, !prof !156

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit
  %.idx = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.val46, i64 %.idx
  %.not4479 = icmp eq i32 %.val, 0
  br i1 %.not4479, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.l
  %.082 = phi ptr [ %i.bc, %bb.l ], [ %.val46, %bb.g ] ; 3 uses
  %.03481 = phi i32 [ %.1.ph, %bb.l ], [ %.066, %bb.g ] ; 3 uses
  %.03580 = phi ptr [ %.136.ph, %bb.l ], [ %i.ak, %bb.g ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.082, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !379 ; 5 uses
  %.not45 = icmp eq i32 %i.as, 0
  br i1 %.not45, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.at = icmp ugt i32 %i.as, %.03481
  br i1 %i.at, label %bb.i, label %bb.j, !prof !57

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.ae, align 4, !tbaa !214
  %.not.i.i53.not = icmp eq i32 %i.au, 0
  br i1 %.not.i.i53.not, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.av = sub nuw nsw i32 %.03481, %i.as          ; 2 uses
  %i.aw = icmp eq i32 %i.as, 1
  %i.ax = load ptr, ptr %.082, align 8, !tbaa !377 ; 2 uses
  br i1 %i.aw, label %bb.k, label %_ZL9hb_memcpyPvPKvm.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !187
  %i.az = getelementptr inbounds nuw i8, ptr %.03580, i64 1
  store i8 %i.ay, ptr %.03580, align 1, !tbaa !187
  br label %bb.l

end_hunk_2
begin_hunk_3_@_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS8_jj:bb.a
  br i1 %i.eq, label %.lr.ph154.epil.preheader, label %.lr.ph154.preheader.new

.lr.ph154.preheader.new:                          ; preds = %.lr.ph154.preheader
  %unroll_iter224 = and i64 %i.ep, 9223372036854775806
  br label %.lr.ph154

._crit_edge155.loopexit.unr-lcssa:                ; preds = %.lr.ph154
  %i.er = and i64 %i.en, 4
  %lcmp.mod219.not.not = icmp eq i64 %i.er, 0
  br i1 %lcmp.mod219.not.not, label %.lr.ph154.epil.preheader, label %._crit_edge155

.lr.ph154.epil.preheader:                         ; preds = %._crit_edge155.loopexit.unr-lcssa, %.lr.ph154.preheader
  %.056152.epil.init = phi ptr [ %i.z, %.lr.ph154.preheader ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ] ; 3 uses
  %.055151.epil.init = phi ptr [ %2, %.lr.ph154.preheader ], [ %i.ft, %._crit_edge155.loopexit.unr-lcssa ]
  %.pn150.epil.init = phi ptr [ %0, %.lr.ph154.preheader ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ] ; 2 uses
  %.2149.epil.init = phi i32 [ 1, %.lr.ph154.preheader ], [ %i.fs, %._crit_edge155.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod223 = trunc i64 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.es = lshr i32 %.2149.epil.init, 16
  %i.et = trunc i32 %i.es to i8
  %i.eu = lshr i32 %.2149.epil.init, 8
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = trunc i32 %.2149.epil.init to i8
  store i8 %i.et, ptr %.056152.epil.init, align 1
  %.sroa.4.0..sroa_idx.i80.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 4
  store i8 %i.ev, ptr %.sroa.4.0..sroa_idx.i80.epil, align 1
  %.sroa.5.0..sroa_idx.i81.epil = getelementptr inbounds nuw i8, ptr %.pn150.epil.init, i64 5
  store i8 %i.ew, ptr %.sroa.5.0..sroa_idx.i81.epil, align 1, !tbaa !187
  %i.ex = load i32, ptr %.055151.epil.init, align 4, !tbaa !59
  %i.ey = add i32 %i.ex, %.2149.epil.init
  %.056.epil = getelementptr inbounds nuw i8, ptr %.056152.epil.init, i64 3
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %.lr.ph154.epil.preheader, %._crit_edge155.loopexit.unr-lcssa, %bb.p
  %.2.lcssa = phi i32 [ 1, %bb.p ], [ %i.fs, %._crit_edge155.loopexit.unr-lcssa ], [ %i.ey, %.lr.ph154.epil.preheader ] ; 3 uses
  %.pn.lcssa = phi ptr [ %0, %bb.p ], [ %.056, %._crit_edge155.loopexit.unr-lcssa ], [ %.056152.epil.init, %.lr.ph154.epil.preheader ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.z, %bb.p ], [ %.056.1, %._crit_edge155.loopexit.unr-lcssa ], [ %.056.epil, %.lr.ph154.epil.preheader ]
  %i.ez = lshr i32 %.2.lcssa, 16
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = lshr i32 %.2.lcssa, 8
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = trunc i32 %.2.lcssa to i8
  store i8 %i.fa, ptr %.056.lcssa, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 4
  store i8 %i.fc, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 5
  store i8 %i.fd, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !187
  br label %select.unfold

.lr.ph154:                                        ; preds = %.lr.ph154, %.lr.ph154.preheader.new
  %.056152 = phi ptr [ %i.z, %.lr.ph154.preheader.new ], [ %.056.1, %.lr.ph154 ] ; 5 uses
  %.055151 = phi ptr [ %2, %.lr.ph154.preheader.new ], [ %i.ft, %.lr.ph154 ] ; 3 uses
  %.pn150 = phi ptr [ %0, %.lr.ph154.preheader.new ], [ %.056, %.lr.ph154 ] ; 2 uses
  %.2149 = phi i32 [ 1, %.lr.ph154.preheader.new ], [ %i.fs, %.lr.ph154 ] ; 4 uses
  %niter225 = phi i64 [ 0, %.lr.ph154.preheader.new ], [ %niter225.next.1, %.lr.ph154 ]
  %i.fe = lshr i32 %.2149, 16
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = lshr i32 %.2149, 8
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = trunc i32 %.2149 to i8
  store i8 %i.ff, ptr %.056152, align 1
  %.sroa.4.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.pn150, i64 4
  store i8 %i.fh, ptr %.sroa.4.0..sroa_idx.i80, align 1
  %.sroa.5.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %.pn150, i64 5
  store i8 %i.fi, ptr %.sroa.5.0..sroa_idx.i81, align 1, !tbaa !187
  %i.fj = load i32, ptr %.055151, align 4, !tbaa !59
  %i.fk = add i32 %i.fj, %.2149                   ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.055151, i64 4
  %.056 = getelementptr inbounds nuw i8, ptr %.056152, i64 3 ; 4 uses
  %i.fm = lshr i32 %i.fk, 16
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = lshr i32 %i.fk, 8
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = trunc i32 %i.fk to i8
  store i8 %i.fn, ptr %.056, align 1
  %.sroa.4.0..sroa_idx.i80.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 4
  store i8 %i.fp, ptr %.sroa.4.0..sroa_idx.i80.1, align 1
  %.sroa.5.0..sroa_idx.i81.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 5
  store i8 %i.fq, ptr %.sroa.5.0..sroa_idx.i81.1, align 1, !tbaa !187
  %i.fr = load i32, ptr %i.fl, align 4, !tbaa !59
  %i.fs = add i32 %i.fr, %i.fk                    ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.055151, i64 8 ; 2 uses
  %.056.1 = getelementptr inbounds nuw i8, ptr %.056152, i64 6 ; 3 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %._crit_edge155.loopexit.unr-lcssa, label %.lr.ph154

bb.q:                                             ; preds = %bb.m
  %i.fu = shl i64 %3, 2
  %.idx = and i64 %i.fu, 17179869180              ; 2 uses
  %.not65142 = icmp samesign eq i64 %.idx, 0
  br i1 %.not65142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fv = add nsw i64 %.idx, -4                   ; 2 uses
  %i.fw = lshr exact i64 %i.fv, 2
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %xtraiter = and i64 %i.fx, 3                    ; 3 uses
  %i.fy = icmp ult i64 %i.fv, 12
  br i1 %i.fy, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fx, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.053145.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.gy, %._crit_edge.loopexit.unr-lcssa ]
  %.054144.epil.init = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.gu, %._crit_edge.loopexit.unr-lcssa ]
  %.3143.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.gx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.053145.epil = phi ptr [ %i.gd, %.lr.ph.epil ], [ %.053145.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.054144.epil = phi ptr [ %i.fz, %.lr.ph.epil ], [ %.054144.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.3143.epil = phi i32 [ %i.gc, %.lr.ph.epil ], [ %.3143.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.054144.epil, i64 4 ; 2 uses
  %i.ga = tail call i32 @llvm.bswap.i32(i32 %.3143.epil)
  store i32 %i.ga, ptr %.054144.epil, align 1, !tbaa !187
  %i.gb = load i32, ptr %.053145.epil, align 4, !tbaa !59
  %i.gc = add i32 %i.gb, %.3143.epil              ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.053145.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !434

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa213 = phi ptr [ %i.gu, %._crit_edge.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.epil ]
  %.lcssa212 = phi i32 [ %i.gx, %._crit_edge.loopexit.unr-lcssa ], [ %i.gc, %.lr.ph.epil ]
  %i.ge = tail call i32 @llvm.bswap.i32(i32 %.lcssa212)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.3.lcssa = phi i32 [ 16777216, %bb.q ], [ %i.ge, %._crit_edge.loopexit ]
  %.054.lcssa = phi ptr [ %i.z, %bb.q ], [ %.lcssa213, %._crit_edge.loopexit ]
  store i32 %.3.lcssa, ptr %.054.lcssa, align 1, !tbaa !187
  br label %select.unfold

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.053145 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.gy, %.lr.ph ] ; 5 uses
  %.054144 = phi ptr [ %i.z, %.lr.ph.preheader.new ], [ %i.gu, %.lr.ph ] ; 5 uses
  %.3143 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.gx, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.054144, i64 4
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %.3143)
  store i32 %i.gg, ptr %.054144, align 1, !tbaa !187
  %i.gh = load i32, ptr %.053145, align 4, !tbaa !59
  %i.gi = add i32 %i.gh, %.3143                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.053145, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.054144, i64 8
  %i.gl = tail call i32 @llvm.bswap.i32(i32 %i.gi)
  store i32 %i.gl, ptr %i.gf, align 1, !tbaa !187
  %i.gm = load i32, ptr %i.gj, align 4, !tbaa !59
  %i.gn = add i32 %i.gm, %i.gi                    ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.053145, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.054144, i64 12
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gn)
  store i32 %i.gq, ptr %i.gk, align 1, !tbaa !187
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !59
  %i.gs = add i32 %i.gr, %i.gn                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.053145, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %.054144, i64 16 ; 3 uses
  %i.gv = tail call i32 @llvm.bswap.i32(i32 %i.gs)
  store i32 %i.gv, ptr %i.gp, align 1, !tbaa !187
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !59
  %i.gx = add i32 %i.gw, %i.gs                    ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.053145, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

select.unfold:                                    ; preds = %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit, %.critedge.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i, %._crit_edge174, %._crit_edge165, %._crit_edge155, %._crit_edge, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %.critedge.i.i.i.i, %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ true, %._crit_edge174 ], [ true, %_ZN22hb_serialize_context_t10extend_minIN2OT8CFFIndexINS1_7NumTypeILb1EtLj2EEEEEEEPT_S7_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %bb.f ], [ false, %.critedge.i.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ true, %bb.m ], [ true, %._crit_edge ], [ true, %._crit_edge155 ], [ true, %._crit_edge165 ], [ false, %.critedge.i ], [ false, %_ZN22hb_serialize_context_t6extendIN2OT7NumTypeILb1EhLj1EEEJEEEPT_RS4_DpOT0_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF7TopDictEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF39cff1_from_cff2_top_dict_op_serializer_t13serialize_rosEP22hb_serialize_context_t(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.hb_vector_t.23, align 8     ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 -8, ptr %i.g, align 1, !tbaa !187
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 14 uses
  %i.i = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 27, ptr %i.f, align 1, !tbaa !187
  %i.j = load i32, ptr %i.h, align 4, !tbaa !125  ; 3 uses
  %i.k = load i32, ptr %2, align 8, !tbaa !122
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.a, label %bb.b, !prof !54

bb.a:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.o = add nsw i32 %i.j, 1
  store i32 %i.o, ptr %i.h, align 4, !tbaa !125
  %i.p = zext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store i8 27, ptr %i.q, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t10encode_intEi.exit

bb.b:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i
  %i.r = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  br label %_ZN3CFF13str_encoder_t10encode_intEi.exit

_ZN3CFF13str_encoder_t10encode_intEi.exit:        ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 -8, ptr %i.e, align 1, !tbaa !187
  %i.s = load i32, ptr %i.h, align 4, !tbaa !125  ; 3 uses
  %i.t = load i32, ptr %2, align 8, !tbaa !122
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %bb.d, !prof !54

bb.c:                                             ; preds = %_ZN3CFF13str_encoder_t10encode_intEi.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.x = add nsw i32 %i.s, 1
  store i32 %i.x, ptr %i.h, align 4, !tbaa !125
  %i.y = zext i32 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  store i8 -8, ptr %i.z, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i2

bb.d:                                             ; preds = %_ZN3CFF13str_encoder_t10encode_intEi.exit
  %i.aa = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.e) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i2

_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i2:  ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 28, ptr %i.d, align 1, !tbaa !187
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !125 ; 3 uses
  %i.ac = load i32, ptr %2, align 8, !tbaa !122
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !54

bb.e:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126
  %i.ag = add nsw i32 %i.ab, 1
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !125
  %i.ah = zext i32 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  store i8 28, ptr %i.ai, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t10encode_intEi.exit3

bb.f:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit20.i2
  %i.aj = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  br label %_ZN3CFF13str_encoder_t10encode_intEi.exit3

_ZN3CFF13str_encoder_t10encode_intEi.exit3:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -117, ptr %i.c, align 1, !tbaa !187
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !125 ; 3 uses
  %i.al = load i32, ptr %2, align 8, !tbaa !122
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %bb.h, !prof !54

bb.g:                                             ; preds = %_ZN3CFF13str_encoder_t10encode_intEi.exit3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !126
  %i.ap = add nsw i32 %i.ak, 1
  store i32 %i.ap, ptr %i.h, align 4, !tbaa !125
  %i.aq = zext i32 %i.ak to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  store i8 -117, ptr %i.ar, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t10encode_intEi.exit4

bb.h:                                             ; preds = %_ZN3CFF13str_encoder_t10encode_intEi.exit3
  %i.as = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 0 uses
  br label %_ZN3CFF13str_encoder_t10encode_intEi.exit4

_ZN3CFF13str_encoder_t10encode_intEi.exit4:       ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 12, ptr %i.b, align 1, !tbaa !187
  %i.at = load i32, ptr %i.h, align 4, !tbaa !125 ; 3 uses
  %i.au = load i32, ptr %2, align 8, !tbaa !122
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.j, !prof !54

bb.i:                                             ; preds = %_ZN3CFF13str_encoder_t10encode_intEi.exit4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !126
  %i.ay = add nsw i32 %i.at, 1
  store i32 %i.ay, ptr %i.h, align 4, !tbaa !125
  %i.az = zext i32 %i.at to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  store i8 12, ptr %i.ba, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i

bb.j:                                             ; preds = %_ZN3CFF13str_encoder_t10encode_intEi.exit4
  %i.bb = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i

_ZN3CFF13str_encoder_t11encode_byteEh.exit.i:     ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 30, ptr %i.a, align 1, !tbaa !187
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !125 ; 3 uses
  %i.bd = load i32, ptr %2, align 8, !tbaa !122
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.k, label %bb.l, !prof !54

bb.k:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !126
  %i.bh = add nsw i32 %i.bc, 1
  store i32 %i.bh, ptr %i.h, align 4, !tbaa !125
  %i.bi = zext i32 %i.bc to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  store i8 30, ptr %i.bj, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

bb.l:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit.i
  %i.bk = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %_ZN3CFF13str_encoder_t9encode_opEj.exit

_ZN3CFF13str_encoder_t9encode_opEj.exit:          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i32, ptr %2, align 8, !tbaa !122   ; 6 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %_ZN22hb_serialize_context_t5embedEPKcj.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !126
  %i.bp = load i32, ptr %i.h, align 4, !tbaa !125 ; 3 uses
  %i.bq = zext i32 %i.bp to i64                   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !214
  %.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN22hb_serialize_context_t5embedEPKcj.exit, !prof !54

bb.n:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_ZNK2OT4cff220accelerator_subset_t9serializeEP22hb_serialize_context_tRNS_16cff2_subset_planE10hb_array_tIiE:bb.a
  %.not41.i.i181 = icmp eq i32 %.val.i.i180, 0    ; 2 uses
  br i1 %.not41.i.i181, label %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge, label %.lr.ph.preheader.i.i182

.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge: ; preds = %.loopexit
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.val46.i194.pre = load ptr, ptr %.phi.trans.insert422, align 8, !tbaa !199
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191

.lr.ph.preheader.i.i182:                          ; preds = %.loopexit
  %.sroa.2.8.insert.ext.i.i.i.i.i.i183 = zext i32 %.val.i.i180 to i64 ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.val21.i.i184 = load ptr, ptr %i.zb, align 8, !tbaa !199 ; 4 uses
  %i.zc = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i183, 1152921504606846975
  %i.zd = and i64 %i.zc, 1152921504606846975      ; 2 uses
  %i.ze = add nuw nsw i64 %i.zd, 1                ; 2 uses
  %xtraiter603 = and i64 %i.ze, 7                 ; 3 uses
  %i.zf = icmp samesign ult i64 %i.zd, 7
  br i1 %i.zf, label %.lr.ph.i.i186.epil.preheader, label %.lr.ph.preheader.i.i182.new

.lr.ph.preheader.i.i182.new:                      ; preds = %.lr.ph.preheader.i.i182
  %unroll_iter608 = and i64 %i.ze, 2305843009213693944
  br label %.lr.ph.i.i186

.lr.ph.i.i186:                                    ; preds = %.lr.ph.i.i186, %.lr.ph.preheader.i.i182.new
  %.01644.i.i187 = phi ptr [ %.val21.i.i184, %.lr.ph.preheader.i.i182.new ], [ %i.zw, %.lr.ph.i.i186 ] ; 9 uses
  %.01743.i.i188 = phi i32 [ 0, %.lr.ph.preheader.i.i182.new ], [ %i.zv, %.lr.ph.i.i186 ]
  %niter609 = phi i64 [ 0, %.lr.ph.preheader.i.i182.new ], [ %niter609.next.7, %.lr.ph.i.i186 ]
  %i.zg = getelementptr i8, ptr %.01644.i.i187, i64 4
  %.016.val.i.i189 = load i32, ptr %i.zg, align 4, !tbaa !125
  %i.zh = add i32 %.016.val.i.i189, %.01743.i.i188
  %i.zi = getelementptr i8, ptr %.01644.i.i187, i64 20
  %.016.val.i.i189.1 = load i32, ptr %i.zi, align 4, !tbaa !125
  %i.zj = add i32 %.016.val.i.i189.1, %i.zh
  %i.zk = getelementptr i8, ptr %.01644.i.i187, i64 36
  %.016.val.i.i189.2 = load i32, ptr %i.zk, align 4, !tbaa !125
  %i.zl = add i32 %.016.val.i.i189.2, %i.zj
  %i.zm = getelementptr i8, ptr %.01644.i.i187, i64 52
  %.016.val.i.i189.3 = load i32, ptr %i.zm, align 4, !tbaa !125
  %i.zn = add i32 %.016.val.i.i189.3, %i.zl
  %i.zo = getelementptr i8, ptr %.01644.i.i187, i64 68
  %.016.val.i.i189.4 = load i32, ptr %i.zo, align 4, !tbaa !125
  %i.zp = add i32 %.016.val.i.i189.4, %i.zn
  %i.zq = getelementptr i8, ptr %.01644.i.i187, i64 84
  %.016.val.i.i189.5 = load i32, ptr %i.zq, align 4, !tbaa !125
  %i.zr = add i32 %.016.val.i.i189.5, %i.zp
  %i.zs = getelementptr i8, ptr %.01644.i.i187, i64 100
  %.016.val.i.i189.6 = load i32, ptr %i.zs, align 4, !tbaa !125
  %i.zt = add i32 %.016.val.i.i189.6, %i.zr
  %i.zu = getelementptr i8, ptr %.01644.i.i187, i64 116
  %.016.val.i.i189.7 = load i32, ptr %i.zu, align 4, !tbaa !125
  %i.zv = add i32 %.016.val.i.i189.7, %i.zt       ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.01644.i.i187, i64 128 ; 2 uses
  %niter609.next.7 = add i64 %niter609, 8         ; 2 uses
  %niter609.ncmp.7 = icmp eq i64 %niter609.next.7, %unroll_iter608
  br i1 %niter609.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, label %.lr.ph.i.i186

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i186
  %lcmp.mod605.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod605.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, label %.lr.ph.i.i186.epil.preheader

.lr.ph.i.i186.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, %.lr.ph.preheader.i.i182
  %.01644.i.i187.epil.init = phi ptr [ %.val21.i.i184, %.lr.ph.preheader.i.i182 ], [ %i.zw, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ]
  %.01743.i.i188.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i182 ], [ %i.zv, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ]
  %lcmp.mod607 = icmp ne i64 %xtraiter603, 0
  call void @llvm.assume(i1 %lcmp.mod607)
  br label %.lr.ph.i.i186.epil

.lr.ph.i.i186.epil:                               ; preds = %.lr.ph.i.i186.epil, %.lr.ph.i.i186.epil.preheader
  %.01644.i.i187.epil = phi ptr [ %i.zz, %.lr.ph.i.i186.epil ], [ %.01644.i.i187.epil.init, %.lr.ph.i.i186.epil.preheader ] ; 2 uses
  %.01743.i.i188.epil = phi i32 [ %i.zy, %.lr.ph.i.i186.epil ], [ %.01743.i.i188.epil.init, %.lr.ph.i.i186.epil.preheader ]
  %epil.iter604 = phi i64 [ %epil.iter604.next, %.lr.ph.i.i186.epil ], [ 0, %.lr.ph.i.i186.epil.preheader ]
  %i.zx = getelementptr i8, ptr %.01644.i.i187.epil, i64 4
  %.016.val.i.i189.epil = load i32, ptr %i.zx, align 4, !tbaa !125
  %i.zy = add i32 %.016.val.i.i189.epil, %.01743.i.i188.epil ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.01644.i.i187.epil, i64 16
  %epil.iter604.next = add i64 %epil.iter604, 1   ; 2 uses
  %epil.iter604.cmp.not = icmp eq i64 %epil.iter604.next, %xtraiter603
  br i1 %epil.iter604.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, label %.lr.ph.i.i186.epil, !llvm.loop !481

_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa, %.lr.ph.i.i186.epil, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi = phi i64 [ 0, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i183, %.lr.ph.i.i186.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i183, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i194 = phi ptr [ %.val46.i194.pre, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %.val21.i.i184, %.lr.ph.i.i186.epil ], [ %.val21.i.i184, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ] ; 3 uses
  %.066.i193 = phi i32 [ 0, %.loopexit._ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191_crit_edge ], [ %i.zv, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191.loopexit.unr-lcssa ], [ %i.zy, %.lr.ph.i.i186.epil ] ; 4 uses
  %i.aaa = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(6) %i.yz, ptr noundef nonnull %1, ptr %.val46.i194, i64 %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi, i32 noundef %.066.i193, i32 noundef 0)
  br i1 %i.aaa, label %bb.df, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, !prof !54

bb.df:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191
  %i.aab = zext i32 %.066.i193 to i64             ; 2 uses
  %i.aac = load i32, ptr %i.xu, align 4, !tbaa !214
  %.not.i.i197 = icmp eq i32 %i.aac, 0
  br i1 %.not.i.i197, label %bb.dg, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, !prof !54

bb.dg:                                            ; preds = %bb.df
  %i.aad = icmp slt i32 %.066.i193, 0
  br i1 %i.aad, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %bb.dh, !prof !57

bb.dh:                                            ; preds = %bb.dg
  %i.aae = load ptr, ptr %i.as, align 8, !tbaa !226
  %i.aaf = load ptr, ptr %i.au, align 8, !tbaa !227 ; 4 uses
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = icmp slt i64 %i.aai, %i.aab
  br i1 %i.aaj, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198, !prof !57

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198: ; preds = %bb.dh
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aab
  store ptr %i.aak, ptr %i.au, align 8, !tbaa !227
  %.not43.i199 = icmp eq ptr %i.aaf, null
  br i1 %.not43.i199, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %bb.di, !prof !156

bb.di:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198
  %.idx.i200 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i195.pre-phi, 4
  %i.aal = getelementptr inbounds nuw i8, ptr %.val46.i194, i64 %.idx.i200
  br i1 %.not41.i.i181, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %bb.di, %bb.dn
  %.082.i203 = phi ptr [ %i.aay, %bb.dn ], [ %.val46.i194, %bb.di ] ; 3 uses
  %.03481.i204 = phi i32 [ %.1.ph.i209, %bb.dn ], [ %.066.i193, %bb.di ] ; 3 uses
  %.03580.i205 = phi ptr [ %.136.ph.i208, %bb.dn ], [ %i.aaf, %bb.di ] ; 5 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.082.i203, i64 4
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !125 ; 5 uses
  %.not45.i206 = icmp eq i32 %i.aan, 0
  br i1 %.not45.i206, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i202
  %i.aao = icmp ugt i32 %i.aan, %.03481.i204
  br i1 %i.aao, label %bb.dk, label %bb.dl, !prof !57

bb.dk:                                            ; preds = %bb.dj
  %i.aap = load i32, ptr %i.xu, align 4, !tbaa !214
  %.not.i.i53.not.i211 = icmp eq i32 %i.aap, 0
  br i1 %.not.i.i53.not.i211, label %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.dl:                                            ; preds = %bb.dj
  %i.aaq = sub nuw nsw i32 %.03481.i204, %i.aan   ; 2 uses
  %i.aar = icmp eq i32 %i.aan, 1
  %i.aas = getelementptr inbounds nuw i8, ptr %.082.i203, i64 8
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !126 ; 2 uses
  br i1 %i.aar, label %bb.dm, label %_ZL9hb_memcpyPvPKvm.exit.i207

bb.dm:                                            ; preds = %bb.dl
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !187
  %i.aav = getelementptr inbounds nuw i8, ptr %.03580.i205, i64 1
  store i8 %i.aau, ptr %.03580.i205, align 1, !tbaa !187
  br label %bb.dn

_ZL9hb_memcpyPvPKvm.exit.i207:                    ; preds = %bb.dl
  %i.aaw = zext nneg i32 %i.aan to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03580.i205, ptr readonly align 1 %i.aat, i64 %i.aaw, i1 false), !alias.scope !482
  %i.aax = getelementptr inbounds nuw i8, ptr %.03580.i205, i64 %i.aaw
  br label %bb.dn

bb.dn:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i207, %bb.dm, %.lr.ph.i202
  %.136.ph.i208 = phi ptr [ %.03580.i205, %.lr.ph.i202 ], [ %i.aax, %_ZL9hb_memcpyPvPKvm.exit.i207 ], [ %i.aav, %bb.dm ]
  %.1.ph.i209 = phi i32 [ %.03481.i204, %.lr.ph.i202 ], [ %i.aaq, %_ZL9hb_memcpyPvPKvm.exit.i207 ], [ %i.aaq, %bb.dm ]
  %i.aay = getelementptr inbounds nuw i8, ptr %.082.i203, i64 16 ; 2 uses
  %.not44.i210 = icmp eq ptr %i.aay, %i.aal
  br i1 %.not44.i210, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit, label %.lr.ph.i202

_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212: ; preds = %bb.dk, %bb.dh, %bb.dg
  %.sink.i213 = phi i32 [ 4, %bb.dg ], [ 4, %bb.dh ], [ 8, %bb.dk ]
  store i32 %.sink.i213, ptr %i.xu, align 4, !tbaa !214
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

.critedge101:                                     ; preds = %_ZNK29cff2_top_dict_op_serializer_t9serializeEP22hb_serialize_context_tRKN3CFF8op_str_tERK21cff2_sub_table_info_t.exit.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit: ; preds = %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit, %bb.dn, %bb.da, %.critedge.i.i172, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff2EEEPT_v.exit, %.critedge101, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191, %bb.df, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198, %bb.di, %bb.dk, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212, %bb.cz, %bb.cq, %.critedge, %bb.cw, %bb.au
  %.12 = phi i1 [ false, %bb.da ], [ true, %bb.dn ], [ false, %bb.cw ], [ false, %bb.cz ], [ false, %bb.cq ], [ false, %bb.au ], [ false, %bb.dk ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.thread.sink.split.i212 ], [ false, %.critedge ], [ false, %.critedge101 ], [ true, %bb.di ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT4cff2EEEPT_v.exit ], [ false, %bb.df ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i191 ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIhEEPT_mb.exit.i198 ], [ false, %.critedge.i.i172 ], [ false, %_ZN33cff2_private_dict_op_serializer_tD2Ev.exit ] ; 2 uses
  br i1 %.not.i215.not, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  call void @hb_free(ptr noundef %.sroa.14262.0.ph) #16
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN3CFF12table_info_tELb0EED2Ev.exit: ; preds = %.thread.i216, %.loopexit337, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i, %.critedge.i.i, %bb.m, %bb.do, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit
  %.13 = phi i1 [ %.12, %bb.do ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.thread.i ], [ %.12, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit ], [ false, %bb.m ], [ false, %.critedge.i.i ], [ false, %_ZN2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i ], [ false, %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ false, %.loopexit337 ], [ false, %.thread.i216 ]
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF11CFF2FDArrayEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF22cff2_instancing_plan_t19serialize_var_storeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_vector_t.171, align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !471  ; 6 uses
  %i.c = shl i32 %i.b, 2
  %i.d = add i32 %i.c, 8                          ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !486  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !487  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = mul nuw nsw i64 %i.j, 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not191 = icmp eq i32 %i.i, 0
  br i1 %.not191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i32, ptr @_hb_NullPool, align 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.sroa.0.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.0.1, %bb.k ] ; 2 uses
  %.sroa.9.0.lcssa = phi i32 [ 0, %bb.a ], [ %.sroa.9.1, %bb.k ]
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.15.1, %bb.k ] ; 6 uses
  %.081.lcssa = phi i64 [ %i.e, %bb.a ], [ %.182, %bb.k ] ; 2 uses
  %.sroa.15.0.lcssa287 = ptrtoaddr ptr %.sroa.15.0.lcssa to i64
  %i.m = icmp slt i32 %.sroa.0.0.lcssa, 0
  %i.n = icmp ne i32 %.sroa.9.0.lcssa, %i.b
  %i.o = select i1 %i.m, i1 true, i1 %i.n, !prof !57
  br i1 %i.o, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, label %bb.l, !prof !57

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.080197 = phi ptr [ %i.g, %.lr.ph ], [ %i.as, %bb.k ] ; 3 uses
  %.081196 = phi i64 [ %i.e, %.lr.ph ], [ %.182, %bb.k ] ; 3 uses
  %.sroa.15.0195 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %bb.k ] ; 7 uses
  %.sroa.9.0193 = phi i32 [ 0, %.lr.ph ], [ %.sroa.9.1, %bb.k ] ; 7 uses
  %.sroa.0.0192 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.k ] ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.080197, i64 68
  %i.q = load i8, ptr %i.p, align 4, !tbaa !488, !range !112, !noundef !113
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.s = trunc i64 %.081196 to i32
  %.not.i = icmp slt i32 %.sroa.9.0193, %.sroa.0.0192
  %.pre246 = add i32 %.sroa.9.0193, 1             ; 6 uses
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp slt i32 %.sroa.0.0192, 0
  br i1 %i.t, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %.not.i111 = icmp ugt i32 %.pre246, %.sroa.0.0192
  br i1 %.not.i111, label %.preheader.i, label %.critedge.i, !prof !57

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.043.i = phi i32 [ %i.w, %.preheader.i ], [ %.sroa.0.0192, %bb.e ] ; 2 uses
  %i.u = lshr i32 %.043.i, 1
  %i.v = add i32 %.043.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 8 uses
  %i.x = icmp ugt i32 %.pre246, %i.w
  br i1 %i.x, label %.preheader.i, label %.thread.i, !llvm.loop !55

.thread.i:                                        ; preds = %.preheader.i
  %i.y = icmp ugt i32 %i.w, 1073741823
  br i1 %i.y, label %.critedge.i112, label %bb.f, !prof !57

.critedge.i112:                                   ; preds = %.thread.i
  %i.z = xor i32 %.sroa.0.0192, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

bb.f:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.0192, 0
  br i1 %.not49.i, label %bb.g, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i = icmp eq ptr %.sroa.15.0195, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = shl nuw i32 %i.w, 2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call ptr @hb_malloc(i64 noundef %i.ab) #16 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i32 %.sroa.9.0193, 0
  br i1 %.not.i.i.i.i, label %.critedge.i, label %bb.j, !prof !57

bb.j:                                             ; preds = %bb.i
  %i.ad = zext i32 %.sroa.9.0193 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %.sroa.15.0195, i64 %i.ae, i1 false), !alias.scope !491
  br label %.critedge.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ null, %bb.g ], [ %.sroa.15.0195, %bb.f ]
  %i.ag = shl nuw i32 %i.w, 2
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call ptr @hb_realloc(ptr noundef %i.af, i64 noundef %i.ah) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.ai, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !58

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.h
  %i.aj = xor i32 %.sroa.0.0192, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.critedge.i112
  %.sroa.0.4 = phi i32 [ %.sroa.0.0192, %bb.d ], [ %i.aj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.z, %.critedge.i112 ]
  store i32 %i.l, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %bb.c, %bb.i, %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.e
  %.pre-phi247 = phi i32 [ %.pre246, %bb.e ], [ 1, %bb.i ], [ %.pre246, %bb.j ], [ %.pre246, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.pre246, %bb.c ]
  %.sroa.0.2 = phi i32 [ %.sroa.0.0192, %bb.e ], [ %i.w, %bb.i ], [ %i.w, %bb.j ], [ %i.w, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.0192, %bb.c ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.0195, %bb.e ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ], [ %i.ai, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.15.0195, %bb.c ] ; 2 uses
  %i.ak = zext i32 %.sroa.9.0193 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.15.2, i64 %i.ak
  store i32 %i.s, ptr %i.al, align 4, !tbaa !59
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit:   ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, %.critedge.i
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %.critedge.i ], [ %.sroa.0.4, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ]
  %.sroa.9.2 = phi i32 [ %.pre-phi247, %.critedge.i ], [ %.sroa.9.0193, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ]
  %.sroa.15.3 = phi ptr [ %.sroa.15.2, %.critedge.i ], [ %.sroa.15.0195, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.080197, i64 52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !495
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = add i64 %.081196, 6
  %i.ar = add i64 %i.aq, %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit
  %.sroa.0.1 = phi i32 [ %.sroa.0.3, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit ], [ %.sroa.0.0192, %bb.b ] ; 2 uses
  %.sroa.9.1 = phi i32 [ %.sroa.9.2, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit ], [ %.sroa.9.0193, %bb.b ] ; 2 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.3, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit ], [ %.sroa.15.0195, %bb.b ] ; 2 uses
  %.182 = phi i64 [ %i.ar, %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit ], [ %.081196, %bb.b ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.080197, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %._crit_edge
  %i.at = trunc i64 %.081.lcssa to i32
  %i.au = add i64 %.081.lcssa, 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !496
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !66
  %i.ba = zext i32 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ax, 6
  %i.bc = mul i64 %i.bb, %i.ba
  %i.bd = add i64 %i.au, %i.bc                    ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 65535
  br i1 %i.be, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, label %bb.m, !prof !57

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !214
  %.not.i90 = icmp eq i32 %i.bg, 0
  br i1 %.not.i90, label %bb.n, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, !prof !54

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !226
end_hunk_4
begin_hunk_5_@_ZNK3CFF22cff2_instancing_plan_t19serialize_var_storeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EE:bb.a
  %i.fl = trunc i32 %i.fk to i16
  %i.fm = add nuw i64 %indvars.iv238.epil.init, 3
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.fn
  %i.fp = tail call i16 @llvm.bswap.i16(i16 %i.fl)
  store i16 %i.fp, ptr %i.fo, align 1, !tbaa !187
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.z, %.lr.ph211
  %i.fq = getelementptr inbounds nuw i8, ptr %.075209, i64 72 ; 2 uses
  %.not87 = icmp eq ptr %i.fq, %i.dg
  br i1 %.not87, label %._crit_edge212, label %.lr.ph211

._crit_edge212:                                   ; preds = %.loopexit, %._crit_edge204
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.fr = load i32, ptr %i.av, align 4, !tbaa !503 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.not19.i.not = icmp eq i32 %i.fr, 0
  br i1 %.not19.i.not, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread, label %.thread.i114

.thread.i114:                                     ; preds = %._crit_edge212
  %i.ft = icmp ugt i32 %i.fr, 536870911
  br i1 %i.ft, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, !prof !57

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i114
  %i.fu = shl nuw i32 %i.fr, 3
  %i.fv = zext i32 %i.fu to i64
  %i.fw = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.fv) #16 ; 3 uses
  %.not22.i117 = icmp eq ptr %i.fw, null
  br i1 %.not22.i117, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread, !prof !58

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !504
  %.pr = load i32, ptr %i.av, align 4, !tbaa !503 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !507 ; 2 uses
  %i.ga = zext i32 %.pr to i64
  %.idx233 = mul nuw nsw i64 %i.ga, 48
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx233
  %.not89218 = icmp eq i32 %.pr, 0
  br i1 %.not89218, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread, label %.lr.ph223

.lr.ph223:                                        ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gd = load i64, ptr @_hb_NullPool, align 16
  br label %bb.ab

._crit_edge224:                                   ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit
  store i32 %i.gz, ptr %i.fs, align 4
  store ptr %i.gy, ptr %i.gc, align 8
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread

bb.ab:                                            ; preds = %.lr.ph223, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit
  %i.ge = phi ptr [ %i.fw, %.lr.ph223 ], [ %i.gy, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 7 uses
  %i.gf = phi i32 [ 0, %.lr.ph223 ], [ %i.gz, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 6 uses
  %.073220 = phi ptr [ %i.fz, %.lr.ph223 ], [ %i.ha, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 2 uses
  %.sink.i139.ph217219 = phi i32 [ %i.fr, %.lr.ph223 ], [ %.sink.i139.ph214, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit ] ; 11 uses
  %.not.i105 = icmp slt i32 %i.gf, %.sink.i139.ph217219
  %.pre245 = add i32 %i.gf, 1                     ; 7 uses
  br i1 %.not.i105, label %.critedge.i109, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = icmp slt i32 %.sink.i139.ph217219, 0
  br i1 %i.gg, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184, label %bb.ad, !prof !57

bb.ad:                                            ; preds = %bb.ac
  %.not.i127 = icmp ugt i32 %.pre245, %.sink.i139.ph217219
  br i1 %.not.i127, label %.preheader.i129, label %.critedge.i109, !prof !57

.preheader.i129:                                  ; preds = %bb.ad, %.preheader.i129
  %.043.i130 = phi i32 [ %i.gj, %.preheader.i129 ], [ %.sink.i139.ph217219, %bb.ad ] ; 2 uses
  %i.gh = lshr i32 %.043.i130, 1
  %i.gi = add i32 %.043.i130, 8
  %i.gj = add i32 %i.gi, %i.gh                    ; 9 uses
  %i.gk = icmp ugt i32 %.pre245, %i.gj
  br i1 %i.gk, label %.preheader.i129, label %.thread.i131, !llvm.loop !508

.thread.i131:                                     ; preds = %.preheader.i129
  %i.gl = icmp ugt i32 %i.gj, 536870911
  br i1 %i.gl, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187, label %bb.ae, !prof !57

bb.ae:                                            ; preds = %.thread.i131
  %.not49.i133 = icmp eq i32 %.sink.i139.ph217219, 0
  br i1 %.not49.i133, label %bb.af, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i.i143 = icmp eq ptr %i.ge, null
  br i1 %.not9.i.i.i143, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = shl nuw i32 %i.gj, 3
  %i.gn = zext i32 %i.gm to i64
  %i.go = tail call ptr @hb_malloc(i64 noundef %i.gn) #16 ; 4 uses
  %.not10.i.i.i144 = icmp eq ptr %i.go, null
  br i1 %.not10.i.i.i144, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141, label %bb.ah, !prof !57

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i.i.i145 = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i.i.i145, label %.critedge.i109, label %bb.ai, !prof !57

bb.ai:                                            ; preds = %bb.ah
  %i.gp = zext i32 %i.gf to i64
  %i.gq = shl nuw nsw i64 %i.gp, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.go, ptr nonnull readonly align 1 %i.ge, i64 %i.gq, i1 false), !alias.scope !509
  br label %.critedge.i109

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134: ; preds = %bb.af, %bb.ae
  %i.gr = phi ptr [ null, %bb.af ], [ %i.ge, %bb.ae ]
  %i.gs = shl nuw i32 %i.gj, 3
  %i.gt = zext i32 %i.gs to i64
  %i.gu = tail call ptr @hb_realloc(ptr noundef %i.gr, i64 noundef %i.gt) #16 ; 2 uses
  %.not22.i135 = icmp eq ptr %i.gu, null
  br i1 %.not22.i135, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141, label %.critedge.i109, !prof !58

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134, %bb.ag
  %.not23.i142 = icmp samesign ugt i32 %i.gj, %.sink.i139.ph217219
  br i1 %.not23.i142, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187, label %.critedge.i109, !prof !184

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141, %.thread.i131
  %.sink.i139.ph = xor i32 %.sink.i139.ph217219, -1
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184: ; preds = %bb.ac, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187
  %.sink.i139.ph215 = phi i32 [ %.sink.i139.ph217219, %bb.ac ], [ %.sink.i139.ph, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread187 ]
  store i64 %i.gd, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

.critedge.i109:                                   ; preds = %bb.ab, %bb.ad, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141, %bb.ah, %bb.ai, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134
  %.pre-phi = phi i32 [ %.pre245, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134 ], [ %.pre245, %bb.ad ], [ %.pre245, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141 ], [ 1, %bb.ah ], [ %.pre245, %bb.ai ], [ %.pre245, %bb.ab ]
  %i.gv = phi ptr [ %i.gu, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134 ], [ %i.ge, %bb.ad ], [ %i.ge, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141 ], [ %i.go, %bb.ah ], [ %i.go, %bb.ai ], [ %i.ge, %bb.ab ] ; 2 uses
  %.sink.i139.ph216 = phi i32 [ %i.gj, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i134 ], [ %.sink.i139.ph217219, %bb.ad ], [ %.sink.i139.ph217219, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53.i141 ], [ %i.gj, %bb.ah ], [ %i.gj, %bb.ai ], [ %.sink.i139.ph217219, %bb.ab ]
  %i.gw = zext i32 %i.gf to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gw
  store ptr %.073220, ptr %i.gx, align 8, !tbaa !513
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE4pushIJS4_EEEPS4_DpOT_.exit: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184, %.critedge.i109
  %i.gy = phi ptr [ %i.ge, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %i.gv, %.critedge.i109 ] ; 2 uses
  %i.gz = phi i32 [ %i.gf, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %.pre-phi, %.critedge.i109 ] ; 2 uses
  %.sink.i139.ph214 = phi i32 [ %.sink.i139.ph215, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit147.thread184 ], [ %.sink.i139.ph216, %.critedge.i109 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.073220, i64 48 ; 2 uses
  %.not89 = icmp eq ptr %i.ha, %i.gb
  br i1 %.not89, label %._crit_edge224, label %bb.ab

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread: ; preds = %._crit_edge212, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread, %._crit_edge224
  %.sink.i139.ph217.lcssa = phi i32 [ %.sink.i139.ph214, %._crit_edge224 ], [ %i.fr, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread ], [ 0, %._crit_edge212 ]
  store i32 %.sink.i139.ph217.lcssa, ptr %3, align 8
  %i.hb = load ptr, ptr %i.bj, align 8, !tbaa !227
  %i.hc = call noundef zeroext i1 @_ZN2OT13VarRegionList9serializeEP22hb_serialize_context_tRK11hb_vector_tIjLb0EERKS3_IPK12hb_hashmap_tIj6TripleLb0EELb0EE(ptr noundef nonnull align 1 dereferenceable(10) %i.hb, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %.pre = load i32, ptr %3, align 8, !tbaa !514
  %i.hd = add i32 %.pre, -1
  %i.he = icmp ult i32 %i.hd, -2
  br i1 %i.he, label %bb.aj, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit

bb.aj:                                            ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread
  store i32 0, ptr %i.fs, align 4, !tbaa !515
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !504
  call void @hb_free(ptr noundef %i.hg) #16
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i, %.thread.i114, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread, %bb.aj
  %.4280 = phi i1 [ %i.hc, %bb.aj ], [ %i.hc, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb.exit.thread.thread ], [ false, %.thread.i114 ], [ false, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread: ; preds = %bb.u, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104, %.critedge.i103, %bb.o, %.critedge.i97, %bb.m, %.critedge.i93, %bb.l, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit, %._crit_edge
  %.8 = phi i1 [ false, %._crit_edge ], [ false, %bb.l ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit ], [ false, %bb.m ], [ %.4280, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EED2Ev.exit ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit ], [ false, %bb.o ], [ false, %.critedge.i103 ], [ false, %.critedge.i93 ], [ false, %.critedge.i97 ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit104 ], [ false, %bb.u ]
  %i.hh = add i32 %.sroa.0.0.lcssa, -1
  %spec.select.i.i.i110 = icmp ult i32 %i.hh, -2
  br i1 %spec.select.i.i.i110, label %bb.ak, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.ak:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread
  call void @hb_free(ptr noundef %.sroa.15.0.lcssa) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.thread, %bb.ak
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF22CFF2ItemVariationStoreEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !57

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !407
  store ptr %i.f, ptr %i.d, align 8, !tbaa !406
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !408
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !54

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.l = tail call ptr @hb_malloc(i64 noundef 1792) #16 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !409
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !57

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !407
  store ptr %i.p, ptr %i.d, align 8, !tbaa !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !214
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !411
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !411
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !412
  store ptr %i.r, ptr %i.u, align 8, !tbaa !229
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !227
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff220accelerator_subset_t6subsetEP19hb_subset_context_t(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.OT::cff2_subset_plan", align 8 ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 0, ptr %i.a, align 4, !tbaa !348
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.c, i8 0, i64 9, i1 false)
  store atomic i32 1, ptr %i.e monotonic, align 8
  store atomic i8 1, ptr %i.f monotonic, align 4
  store atomic ptr null, ptr %i.g monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 1, ptr %i.h, align 8, !tbaa !516
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 82
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.i, i8 0, i64 18, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.k, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %i.j, i8 0, i64 75, i1 false)
  store atomic i32 1, ptr %i.l monotonic, align 8
  store atomic i8 1, ptr %i.m monotonic, align 4
  store atomic ptr null, ptr %i.n monotonic, align 8
  store i8 1, ptr %i.o, align 8, !tbaa !517
  store i32 0, ptr %i.p, align 4, !tbaa !518
  store atomic i32 0, ptr %i.q monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.r, i8 0, i64 33, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 288
  store i32 0, ptr %i.s, align 8, !tbaa !471
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  store <4 x i32> <i32 32767, i32 -32767, i32 32767, i32 -32767>, ptr %i.v, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.x, align 8, !tbaa !519
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.y, i8 0, i64 9, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !520
  %i.ac = call noundef zeroext i1 @_ZN2OT16cff2_subset_plan6createERKNS_4cff220accelerator_subset_tEP16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(432) %2, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %i.ab)
  br i1 %i.ac, label %bb.b, label %.critedge, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !283, !range !112, !noundef !113
  %i.af = trunc nuw i8 %i.ae to i1
  %.pre22 = load ptr, ptr %i.aa, align 8, !tbaa !520 ; 3 uses
  br i1 %i.af, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre22, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !524
  %i.ai = and i32 %i.ah, 16384
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !561
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = call noundef zeroext i1 @_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE(ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(432) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(216) %0)
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !561 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 44 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !214 ; 2 uses
  %i.aq = and i32 %i.ap, 4
  %i.ar = icmp ne i32 %i.aq, 0                    ; 2 uses
  %.not18 = xor i1 %i.am, true
  %brmerge = or i1 %i.ar, %.not18
  br i1 %brmerge, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not19 = icmp eq i32 %i.ap, 0
  br i1 %.not19, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !417
  %i.au = icmp sgt i32 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.aw = load i8, ptr %i.av, align 8, !range !112
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %i.ay, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !229
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZN22hb_serialize_context_t13end_serializeEv.exit, label %bb.g, !prof !57

_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i: ; preds = %bb.f
  store i32 1, ptr %i.ao, align 4, !tbaa !214
  br label %_ZN22hb_serialize_context_t13end_serializeEv.exit

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 84
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !418
  %i.bd = icmp ult i32 %i.bc, 2
  br i1 %i.bd, label %_ZN22hb_serialize_context_t13end_serializeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %i.an, i1 noundef zeroext false) ; 0 uses
  call void @_ZN22hb_serialize_context_t13resolve_linksEv(ptr noundef nonnull align 8 dereferenceable(144) %i.an)
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !561
  br label %_ZN22hb_serialize_context_t13end_serializeEv.exit

_ZN22hb_serialize_context_t13end_serializeEv.exit: ; preds = %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i, %bb.g, %bb.h
  %i.bf = phi ptr [ %i.an, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i ], [ %i.an, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.thread.i ], [ %i.an, %bb.g ], [ %.pre, %bb.h ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !227
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !562
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !563
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !226
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = add i64 %i.bj, %i.bp
  %i.bs = add i64 %i.bk, %i.bq
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = and i64 %i.bt, 4294967295               ; 4 uses
  %.not.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit
  %i.bv = call ptr @hb_malloc(i64 noundef %i.bu) #16 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.bv, null
  br i1 %.not7.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.j, !prof !57

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !562 ; 3 uses
  %i.bx = load ptr, ptr %i.bg, align 8, !tbaa !227 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, %i.bw
  br i1 %.not.i.i.i, label %_ZL9hb_memcpyPvPKvm.exit.i.i, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.bz, %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr readonly align 1 %i.bw, i64 %i.ca, i1 false), !alias.scope !564
  br label %_ZL9hb_memcpyPvPKvm.exit.i.i

_ZL9hb_memcpyPvPKvm.exit.i.i:                     ; preds = %bb.k, %bb.j
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !226 ; 3 uses
  %i.cc = load ptr, ptr %i.bl, align 8, !tbaa !563 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i8.i.i, label %_ZNK22hb_serialize_context_t9copy_blobEv.exit, label %bb.l, !prof !57

end_hunk_5
begin_hunk_6_@_ZN2OT18optimize_scratch_tD2Ev:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1094
  %i.as = add i32 %i.ar, -1
  %spec.select.i.i.i11 = icmp ult i32 %i.as, -2
  br i1 %spec.select.i.i.i11, label %bb.i, label %_ZN11hb_vector_tIiLb0EED2Ev.exit12

bb.i:                                             ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.at, align 4, !tbaa !574
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !573
  tail call void @hb_free(ptr noundef %i.av) #16
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit12

_ZN11hb_vector_tIiLb0EED2Ev.exit12:               ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit10, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1094
  %i.ay = add i32 %i.ax, -1
  %spec.select.i.i.i13 = icmp ult i32 %i.ay, -2
  br i1 %spec.select.i.i.i13, label %bb.j, label %_ZN11hb_vector_tIiLb0EED2Ev.exit14

bb.j:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.az, align 4, !tbaa !574
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !573
  tail call void @hb_free(ptr noundef %i.bb) #16
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit14

_ZN11hb_vector_tIiLb0EED2Ev.exit14:               ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit12, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !775
  %i.be = add i32 %i.bd, -1
  %spec.select.i.i.i15 = icmp ult i32 %i.be, -2
  br i1 %spec.select.i.i.i15, label %bb.k, label %_ZN11hb_vector_tIbLb0EED2Ev.exit

bb.k:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit14
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.bf, align 4, !tbaa !780
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !779
  tail call void @hb_free(ptr noundef %i.bh) #16
  br label %_ZN11hb_vector_tIbLb0EED2Ev.exit

_ZN11hb_vector_tIbLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit14, %bb.k
  tail call void @_ZN13iup_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !487  ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !486
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 11 uses
  %.046 = phi i32 [ %i.h, %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -72 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !64
  %i.l = add i32 %i.k, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.l, -2
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %.07, i64 -20
  store i32 0, ptr %i.m, align 4, !tbaa !66
  %i.n = getelementptr inbounds i8, ptr %.07, i64 -16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void @hb_free(ptr noundef %i.o) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.b, %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -40
  tail call void @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.q = getelementptr inbounds i8, ptr %.07, i64 -56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !308
  %i.s = add i32 %i.r, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i.i1.i, label %bb.c, label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i

bb.c:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.t = getelementptr inbounds i8, ptr %.07, i64 -52
  store i32 0, ptr %i.t, align 4, !tbaa !309
  %i.u = getelementptr inbounds i8, ptr %.07, i64 -48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !310
  tail call void @hb_free(ptr noundef %i.v) #16
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i

_ZN11hb_vector_tIfLb0EED2Ev.exit.i:               ; preds = %bb.c, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.w = load i32, ptr %i.i, align 8, !tbaa !815
  %i.x = add i32 %i.w, -1
  %spec.select.i.i.i2.i = icmp ult i32 %i.x, -2
  br i1 %spec.select.i.i.i2.i, label %bb.d, label %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit

bb.d:                                             ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i
  %i.y = getelementptr inbounds i8, ptr %.07, i64 -68 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !814  ; 3 uses
  %.not5.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not5.i.i.i.i, label %_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %.07, i64 -64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !816
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.af, %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.046.i.i.i.i = phi i32 [ %i.ae, %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i ], [ %i.z, %.lr.ph.preheader.i.i.i.i ]
  %i.ae = add i32 %.046.i.i.i.i, -1               ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !308
  %i.ah = add i32 %i.ag, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.ah, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -12
  store i32 0, ptr %i.ai, align 4, !tbaa !309
  %i.aj = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !310
  tail call void @hb_free(ptr noundef %i.ak) #16
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i

_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i:         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1095

_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i: ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i, %bb.d
  store i32 0, ptr %i.y, align 4, !tbaa !814
  %i.al = getelementptr inbounds i8, ptr %.07, i64 -64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !816
  tail call void @hb_free(ptr noundef %i.am) #16
  br label %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit

_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit: ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i, %_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1096

._crit_edge:                                      ; preds = %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !487
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN3CFF22cff2_instancing_plan_t19vardata_transform_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !662
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 72
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #16 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.i, label %.preheader, !prof !57

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !487
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !662
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i8 0, i64 72, i1 false)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !486
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %indvars.iv ; 14 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !59
  store i32 %i.n, ptr %i.k, align 8, !tbaa !59
  store i32 0, ptr %i.m, align 4, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !59
  %i.r = load i32, ptr %i.p, align 4, !tbaa !59
  store i32 %i.r, ptr %i.o, align 4, !tbaa !59
  store i32 %i.q, ptr %i.p, align 4, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1097
  store ptr %i.u, ptr %i.s, align 8, !tbaa !1097
  store ptr null, ptr %i.t, align 8, !tbaa !1097
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.v, align 8, !tbaa !59
  %i.y = load i32, ptr %i.w, align 8, !tbaa !59
  store i32 %i.y, ptr %i.v, align 8, !tbaa !59
  store i32 %i.x, ptr %i.w, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 20 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !59
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !59
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !59
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !807
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !807
  store ptr null, ptr %i.ae, align 8, !tbaa !807
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !59
  store i32 %i.aj, ptr %i.ag, align 8, !tbaa !59
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 36 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !59
  %i.an = load i32, ptr %i.al, align 4, !tbaa !59
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !59
  store i32 %i.am, ptr %i.al, align 4, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !513
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !513
  store ptr null, ptr %i.ap, align 8, !tbaa !513
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 8, !tbaa !59
  %i.au = load i32, ptr %i.as, align 8, !tbaa !59
  store i32 %i.au, ptr %i.ar, align 8, !tbaa !59
  store i32 %i.at, ptr %i.as, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 52 ; 2 uses
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !59
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !59
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !59
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !79
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !79
  store ptr null, ptr %i.ba, align 8, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bc, ptr noundef nonnull align 8 dereferenceable(5) %i.bd, i64 5, i1 false)
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !486
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %i.be, i64 %indvars.iv ; 11 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !64
  %i.bi = add i32 %i.bh, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.bi, -2
  br i1 %spec.select.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 52
  store i32 0, ptr %i.bj, align 4, !tbaa !66
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !65
  tail call void @hb_free(ptr noundef %i.bl) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.e, %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  tail call void @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !308
  %i.bp = add i32 %i.bo, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.bp, -2
  br i1 %spec.select.i.i.i1.i, label %bb.f, label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i32 0, ptr %i.bq, align 4, !tbaa !309
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !310
  tail call void @hb_free(ptr noundef %i.bs) #16
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i

_ZN11hb_vector_tIfLb0EED2Ev.exit.i:               ; preds = %bb.f, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bt = load i32, ptr %i.bf, align 8, !tbaa !815
  %i.bu = add i32 %i.bt, -1
  %spec.select.i.i.i2.i = icmp ult i32 %i.bu, -2
  br i1 %spec.select.i.i.i2.i, label %bb.g, label %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !814 ; 3 uses
  %.not5.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not5.i.i.i.i, label %_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !816
  %i.bz = zext i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bz
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.cc, %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i ], [ %i.ca, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.046.i.i.i.i = phi i32 [ %i.cb, %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i ], [ %i.bw, %.lr.ph.preheader.i.i.i.i ]
  %i.cb = add i32 %.046.i.i.i.i, -1               ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !308
  %i.ce = add i32 %i.cd, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.ce, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.h, label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -12
  store i32 0, ptr %i.cf, align 4, !tbaa !309
  %i.cg = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !310
  tail call void @hb_free(ptr noundef %i.ch) #16
  br label %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i

_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i:         ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1095

_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i: ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i.i.i.i, %bb.g
  store i32 0, ptr %i.bv, align 4, !tbaa !814
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !816
  tail call void @hb_free(ptr noundef %i.cj) #16
  br label %_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit

_ZN3CFF22cff2_instancing_plan_t19vardata_transform_tD2Ev.exit: ; preds = %_ZN11hb_vector_tIfLb0EED2Ev.exit.i, %_ZN11hb_vector_tIS_IfLb0EELb0EE13shrink_vectorEj.exit.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = load i32, ptr %i.f, align 4, !tbaa !487
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp samesign ult i64 %indvars.iv.next, %i.cl
  br i1 %i.cm, label %bb.d, label %._crit_edge, !llvm.loop !1098

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !486
  tail call void @hb_free(ptr noundef %i.co) #16
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE4finiEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !817
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !503  ; 3 uses
  %.not5.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i, label %_ZN11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE13shrink_vectorEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !507
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN12hb_hashmap_tIj6TripleLb0EED2Ev.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %i.j, %_ZN12hb_hashmap_tIj6TripleLb0EED2Ev.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 3 uses
  %.046.i = phi i32 [ %i.i, %_ZN12hb_hashmap_tIj6TripleLb0EED2Ev.exit.i ], [ %i.d, %.lr.ph.preheader.i ]
  %i.i = add i32 %.046.i, -1                      ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.07.i, i64 -48 ; 2 uses
  store atomic i32 -57005, ptr %i.j monotonic, align 4
  %i.k = getelementptr inbounds i8, ptr %.07.i, i64 -40 ; 2 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIj6TripleLb0EEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
end_hunk_6
begin_hunk_7_@_ZN11hb_vector_tI8hb_set_tLb0EE5allocEjb:bb.a
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !57

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1399

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 59652323
  br i1 %i.j, label %.critedge, label %bb.e, !prof !57

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1032
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1032 ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 72
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53, label %bb.k, !prof !57

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1031 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, label %bb.l, !prof !57

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 72
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !1032
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1400
  br label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread

_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 72
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53, label %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, !prof !58

_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !1026  ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !1032
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !1026
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI8hb_set_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS0_j11hb_priorityILj1EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !1024   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread, !prof !57

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !1404

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 59652323
  br i1 %i.k, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !57

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit, !prof !57

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !1024   ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !1024
  br label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !1065
  store i32 %.138.i, ptr %0, align 8, !tbaa !1024
  br label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !658  ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ac, %bb.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !1065
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.u ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i8 0, i64 72, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store atomic i32 1, ptr %i.v monotonic, align 8
  store atomic i8 1, ptr %i.w monotonic, align 4
  store atomic ptr null, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 1, ptr %i.y, align 8, !tbaa !516
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.z, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !658
  %i.ac = add i32 %i.ab, 1                        ; 3 uses
  store i32 %i.ac, ptr %i.o, align 4, !tbaa !658
  %i.ad = icmp ult i32 %i.ac, %1
  br i1 %i.ad, label %bb.i, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, !llvm.loop !1405

bb.j:                                             ; preds = %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread
  %i.ae = icmp ult i32 %1, %i.p
  %or.cond = and i1 %2, %i.ae
  br i1 %or.cond, label %bb.k, label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  br label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  store i32 %1, ptr %i.o, align 4, !tbaa !658
  br label %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread17: ; preds = %bb.b, %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread20, %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE5allocEjb.exit.thread20 ], [ true, %_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE13shrink_vectorEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !658  ; 2 uses
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %.not5 = icmp eq i32 %i.c, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1065
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN14hb_inc_bimap_tD2Ev.exit
  %.07 = phi ptr [ %i.i, %_ZN14hb_inc_bimap_tD2Ev.exit ], [ %i.g, %.lr.ph.preheader ] ; 6 uses
  %.046 = phi i32 [ %i.h, %_ZN14hb_inc_bimap_tD2Ev.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.h = add i32 %.046, -1                        ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.07, i64 -72 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.07, i64 -24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !64
  %i.l = add i32 %i.k, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.l, -2
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %.07, i64 -20
  store i32 0, ptr %i.m, align 4, !tbaa !66
  %i.n = getelementptr inbounds i8, ptr %.07, i64 -16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void @hb_free(ptr noundef %i.o) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.b, %.lr.ph
  store atomic i32 -57005, ptr %i.i monotonic, align 8
  %i.p = getelementptr inbounds i8, ptr %.07, i64 -64 ; 2 uses
  %i.q = load atomic ptr, ptr %i.p acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q)
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #16 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.q) #16
  store atomic ptr null, ptr %i.p monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.t = getelementptr inbounds i8, ptr %.07, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !271  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN14hb_inc_bimap_tD2Ev.exit, label %bb.d, !prof !57

bb.d:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.u) #16
  br label %_ZN14hb_inc_bimap_tD2Ev.exit

_ZN14hb_inc_bimap_tD2Ev.exit:                     ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, %bb.d
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1406

._crit_edge:                                      ; preds = %_ZN14hb_inc_bimap_tD2Ev.exit, %bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !658
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !1024
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 72
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #16 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.i, label %.preheader, !prof !57

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !658
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN14hb_inc_bimap_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !1024
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN14hb_inc_bimap_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN14hb_inc_bimap_tD2Ev.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i8 0, i64 72, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 1, ptr %i.k monotonic, align 8
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !516
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.o, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !1065
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %indvars.iv ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !112
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %_ZN3CFF12subr_remap_taSEOS0_.exit, !prof !54

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 18 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !804
  store i16 %i.w, ptr %i.o, align 2, !tbaa !804
  store i16 0, ptr %i.v, align 2, !tbaa !804
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  store i32 %i.z, ptr %i.x, align 4, !tbaa !59
  store i32 0, ptr %i.y, align 4, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !59
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !59
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !59
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !59
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !59
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !59
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !59
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !59
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !59
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1407
  store ptr %i.an, ptr %i.p, align 8, !tbaa !1407
  store ptr null, ptr %i.am, align 8, !tbaa !1407
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !59
  br label %_ZN3CFF12subr_remap_taSEOS0_.exit

_ZN3CFF12subr_remap_taSEOS0_.exit:                ; preds = %bb.d, %bb.e
  %i.ao = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !59
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !59
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 3 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !59
  %i.av = load i32, ptr %i.at, align 4, !tbaa !59
  store i32 %i.av, ptr %i.as, align 4, !tbaa !59
  store i32 %i.au, ptr %i.at, align 4, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !79
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !79
  store ptr null, ptr %i.ax, align 8, !tbaa !79
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1408
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1408
  %i.bc = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.bd = add i32 %i.bc, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.bd, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN3CFF12subr_remap_taSEOS0_.exit
  store i32 0, ptr %i.at, align 4, !tbaa !66
  tail call void @hb_free(ptr noundef null) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.f, %_ZN3CFF12subr_remap_taSEOS0_.exit
  store atomic i32 -57005, ptr %i.r monotonic, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
  %i.bh = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #16 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.bf) #16
  store atomic ptr null, ptr %i.be monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZN14hb_inc_bimap_tD2Ev.exit, label %bb.h, !prof !57

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.bj) #16
  br label %_ZN14hb_inc_bimap_tD2Ev.exit

_ZN14hb_inc_bimap_tD2Ev.exit:                     ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.f, align 4, !tbaa !658
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.d, label %._crit_edge, !llvm.loop !1409

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1065
  tail call void @hb_free(ptr noundef %i.bo) #16
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE17drop_hints_in_strERNS_15parsed_cs_str_tERKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 1 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1410 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1411 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph73

._crit_edge.thread:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 1, ptr %i.e, align 1, !tbaa !1412
  br label %.critedge

.lr.ph73:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge67
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 1, ptr %i.j, align 1, !tbaa !1412
  %wide.trip.count87 = zext i32 %i.b to i64
  br label %.lr.ph76

bb.b:                                             ; preds = %.lr.ph73, %.critedge67
  %indvars.iv82 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next83, %.critedge67 ] ; 6 uses
  %indvars.iv = phi i32 [ -1, %.lr.ph73 ], [ %indvars.iv.next, %.critedge67 ] ; 2 uses
  %.06171 = phi i1 [ false, %.lr.ph73 ], [ %.162, %.critedge67 ] ; 6 uses
  %i.k = zext i32 %indvars.iv to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv82 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !321
  switch i32 %i.n, label %.critedge67 [
    i32 10, label %bb.h
    i32 29, label %.split
    i32 21, label %bb.c
    i32 22, label %bb.c
    i32 4, label %bb.c
    i32 19, label %bb.d
    i32 20, label %bb.d
    i32 18, label %bb.f
    i32 23, label %bb.f
    i32 1, label %bb.f
    i32 3, label %bb.f
    i32 256, label %bb.g
  ]

.split:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1036
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.q = load i16, ptr %i.p, align 2, !tbaa !1413
  %i.r = zext i16 %i.q to i32
  %i.s = trunc nuw i64 %indvars.iv82 to i32
  %i.t = tail call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE18drop_hints_in_subrERNS_15parsed_cs_str_tEjRNS_19parsed_cs_str_vec_tEjRKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 1 dereferenceable(4) %3)
  br i1 %i.t, label %.critedge65, label %.critedge67

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i8 1, ptr %3, align 1, !tbaa !1415
  br label %.critedge67

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.u = load i8, ptr %3, align 1, !tbaa !1415, !range !112, !noundef !113
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  store i8 1, ptr %i.w, align 1, !tbaa !1416
end_hunk_7
