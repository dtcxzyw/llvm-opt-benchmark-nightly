Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-color?download=true
inline.NumInlined: 12641
inline.NumDeleted: 5098
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE9cmp_rangeEPKvS6_:bb.a
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 2 uses
  %i.u = icmp ult i16 %i.q, %i.t
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ugt i16 %i.q, %i.t
  %. = zext i1 %i.v to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ %., %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !537    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !147
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !947

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !535
  tail call void @hb_free(ptr noundef %i.m) #20
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !535  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #20 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !536  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !535
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !948
  br label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #20 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !537   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !535
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !537
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPcLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5graph14PairPosFormat16shrinkERNS_24gsubgpos_graph_context_tEjj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %5 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %6 = alloca %struct.hb_map_iter_t.354, align 8  ; 15 uses
  %7 = alloca %struct.hb_map_iter_t.354, align 8  ; 13 uses
  %8 = alloca %struct.hb_zip_iter_t, align 8      ; 8 uses
  %9 = alloca %struct.hb_map_iter_t.354, align 8  ; 21 uses
  %10 = alloca %struct.hb_serialize_context_t, align 8 ; 28 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1, !tbaa !231
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %.not = icmp ult i32 %3, %i.e
  br i1 %.not, label %bb.b, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i32 %3 to i16
  %i.g = tail call i16 @llvm.bswap.i16(i16 %i.f)
  store i16 %i.g, ptr %i.b, align 1, !tbaa !289
  %i.h = sub nuw nsw i32 %i.e, %3
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !438, !nonnull !211, !align !443 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !369
  %.not.i = icmp ult i32 %2, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !137

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !438
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !377
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [216 x i8], ptr %i.o, i64 %i.p
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.q, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !445
  %i.u = zext nneg i32 %i.i to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %i.s, align 8, !tbaa !445
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = tail call noundef i32 @_ZN5graph7graph_t24mutable_index_for_offsetEjPKv(ptr noundef nonnull align 8 dereferenceable(88) %i.r, i32 noundef %2, ptr noundef nonnull %i.x), !noalias !952 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !511, !noalias !955
  %.not.i.i = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !377, !noalias !955
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [216 x i8], ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !446, !noalias !955 ; 13 uses
  %.not4.i.i = icmp eq ptr %i.af, null
  br i1 %.not4.i.i, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !445, !noalias !955
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !955, !srcloc !230
  %i.am = load i16, ptr %i.af, align 1, !tbaa !231, !noalias !955
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  switch i16 %i.an, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread [
    i16 1, label %bb.g
    i16 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !446, !noalias !955
  %.val6.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !445, !noalias !955
  %i.ao = ptrtoint ptr %.val6.i.i.i to i64
  %i.ap = ptrtoint ptr %.val.i.i.i to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 4
  br i1 %i.ar, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i

bb.h:                                             ; preds = %bb.f
  %.val7.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !446, !noalias !955
  %.val8.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !445, !noalias !955
  %i.as = ptrtoint ptr %.val8.i.i.i to i64
  %i.at = ptrtoint ptr %.val7.i.i.i to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = icmp ult i64 %i.au, 4
  br i1 %i.av, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %.split.i.i

.split.i.i:                                       ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !955, !srcloc !230
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !231, !noalias !955
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 6
  %i.bb = add nuw nsw i64 %i.ba, 4
  %.not8.i.i.not = icmp ult i64 %i.au, %i.bb
  br i1 %.not8.i.i.not, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %bb.i

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i: ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !955, !srcloc !230
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.bd = load i16, ptr %i.bc, align 1, !tbaa !231, !noalias !955
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = add nuw nsw i64 %i.bg, 4
  %.not9.i.i.not = icmp ult i64 %i.aq, %i.bh
  br i1 %.not9.i.i.not, label %_ZN5graph7graph_t16as_mutable_tableINS_8CoverageEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i, %.split.i.i
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !445
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !446
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = load i16, ptr %i.af, align 1, !tbaa !231, !noalias !958 ; 2 uses
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn) ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  switch i16 %i.bo, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split" [
    i16 1, label %bb.j
    i16 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !958, !srcloc !230
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread

bb.k:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !958, !srcloc !230
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 4 uses
  %i.br = load i16, ptr %i.bq, align 1, !tbaa !231, !noalias !958
  %.not.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %bb.l, !prof !233

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !958, !srcloc !230
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !231, !noalias !958
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt)
  %i.bv = zext i16 %i.bu to i32                   ; 3 uses
  %.pre8.i.i.i = load i16, ptr %i.bq, align 1, !tbaa !231, !noalias !958
  %i.bw = icmp eq i16 %.pre8.i.i.i, 0
  br i1 %i.bw, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, !prof !132

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.k, %bb.l
  %.sroa.11.0 = phi i32 [ %i.bv, %bb.l ], [ 0, %bb.k ]
  %i.bx = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !231, !noalias !958
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !958, !srcloc !230
  %.pre11.i.i.i = load i16, ptr %i.bq, align 1, !tbaa !231, !noalias !958
  %i.bz = icmp eq i16 %.pre11.i.i.i, 0
  %i.ca = load i16, ptr %i.bs, align 1, !tbaa !231, !noalias !958
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca) ; 2 uses
  br i1 %i.bz, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.m, !prof !132

bb.m:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !958, !srcloc !230
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.m, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.bv, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bv, %bb.m ]
  %i.cc = phi i16 [ %i.by, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.cb, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.cb, %bb.m ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.bs, %bb.m ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.ce = load i16, ptr %i.cd, align 1, !tbaa !231, !noalias !958
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce)
  %i.cg = icmp ugt i16 %i.cc, %i.cf
  br i1 %i.cg, label %bb.n, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread, !prof !21

bb.n:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.ch = load i16, ptr %i.bq, align 1, !tbaa !231, !noalias !958
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
  %.not236 = icmp eq i32 %3, 0
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20
  %i.cn = load i16, ptr %i.ck, align 1, !tbaa !231
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %.not298 = icmp samesign ult i32 %.sroa.7.0.ph, %i.cp
  br i1 %.not298, label %.lr.ph, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"

.lr.ph:                                           ; preds = %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit
  %.sroa.13.0286 = phi i32 [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.7.0.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 8 uses
  %.sroa.22.0285 = phi i32 [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 6 uses
  %.sroa.27.0284 = phi i32 [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.11.2.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 5 uses
  %.sroa.33.sroa.0.0283 = phi i32 [ %i.dv, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ] ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20
  br i1 %i.cl, label %bb.o, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread

bb.o:                                             ; preds = %.lr.ph
  %i.cq = load i16, ptr %i.ck, align 1, !tbaa !231
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0286, %i.cs
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, !prof !137

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  br i1 %.not236, label %bb.q, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit"

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread: ; preds = %.lr.ph
  br i1 %.not236244, label %.thread, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit"

bb.q:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.ct = add nuw nsw i32 %.sroa.13.0286, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.thread:                                          ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.cu = load i16, ptr %i.ck, align 1, !tbaa !231
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cw = zext i16 %i.cv to i32
  %.not.i.i.i.i.i25 = icmp samesign ult i32 %.sroa.13.0286, %i.cw
  br i1 %.not.i.i.i.i.i25, label %bb.r, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !137

bb.r:                                             ; preds = %.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.cx = zext nneg i32 %.sroa.13.0286 to i64
  %i.cy = getelementptr inbounds nuw [6 x i8], ptr %i.cm, i64 %i.cx
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.r, %.thread
  %.0.i.i.i.i.i = phi ptr [ %i.cy, %bb.r ], [ @_hb_Null_OT_RangeRecord, %.thread ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.da = load i16, ptr %i.cz, align 1, !tbaa !231
  %i.db = tail call noundef i16 @llvm.bswap.i16(i16 %i.da)
  %i.dc = zext i16 %i.db to i32
  %.not.i.i.i.i26 = icmp ult i32 %.sroa.27.0284, %i.dc
  br i1 %.not.i.i.i.i26, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.dd = add nuw nsw i32 %.sroa.13.0286, 1       ; 4 uses
  %i.de = load i16, ptr %i.ck, align 1, !tbaa !231
  %i.df = tail call noundef i16 @llvm.bswap.i16(i16 %i.de)
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = icmp samesign ult i32 %i.dd, %i.dg
  br i1 %i.dh, label %bb.t, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.di = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw [6 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 1, !tbaa !231
  %i.dl = tail call noundef i16 @llvm.bswap.i16(i16 %i.dk)
  %i.dm = zext i16 %i.dl to i32
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr %i.af, i64 %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !231
  %i.dq = tail call noundef i16 @llvm.bswap.i16(i16 %i.dp)
  %i.dr = zext i16 %i.dq to i32                   ; 3 uses
  %i.ds = add i32 %.sroa.22.0285, 1
  %.not1.i.i.i.i = icmp eq i32 %i.ds, %i.dr
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !137

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
  %i.dv = add nuw i32 %.sroa.33.sroa.0.0283, 1    ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20
  %i.dw = load i16, ptr %i.ck, align 1, !tbaa !231
  %i.dx = tail call noundef i16 @llvm.bswap.i16(i16 %i.dw)
  %i.dy = zext i16 %i.dx to i32
  %i.dz = icmp uge i32 %.sroa.13.2, %i.dy
  %.not.i.i.i18 = icmp eq i32 %i.dv, -1
  %or.cond112 = select i1 %i.dz, i1 true, i1 %.not.i.i.i18
  br i1 %or.cond112, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit", label %.lr.ph, !llvm.loop !961

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  %.sroa.33.sroa.0.0.lcssa.ph = phi i32 [ %.sroa.33.sroa.0.0283, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %i.dv, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.33.sroa.0.0283, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.27.0.lcssa.ph = phi i32 [ %.sroa.27.0284, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.27.0284, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.22.0.lcssa.ph = phi i32 [ %.sroa.22.0285, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.22.0285, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.13.0.lcssa.ph = phi i32 [ %.sroa.13.0286, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.13.0286, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %i.ea = zext i32 %.sroa.33.sroa.0.0.lcssa.ph to i64
  %i.eb = or disjoint i64 %i.ea, -4294967296
  br label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split": ; preds = %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit", %bb.i
  %.sroa.532.0242 = phi ptr [ null, %bb.i ], [ %i.af, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ], [ %i.af, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ]
  %.sroa.33.sroa.0.0.lcssa.split = phi i64 [ -4294967296, %bb.i ], [ -4294967296, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %i.eb, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.27.0.lcssa.split = phi i32 [ 0, %bb.i ], [ %.sroa.11.2.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.27.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.22.0.lcssa.split = phi i32 [ 0, %bb.i ], [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.22.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.13.0.lcssa.split = phi i32 [ 0, %bb.i ], [ %.sroa.7.0.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.13.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %i.ec = and i64 %i.bm, 4294967295               ; 2 uses
  %i.ed = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.ec) #20 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %i.ed, ptr %10, align 8, !tbaa !90
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec ; 2 uses
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !102
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 100 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.ei monotonic, align 8
  store atomic i8 1, ptr %i.ej monotonic, align 4
  store atomic ptr null, ptr %i.ek monotonic, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 3 uses
  store i8 1, ptr %i.el, align 8, !tbaa !103
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 114 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  store ptr null, ptr %i.en, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.em, i8 0, i64 18, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 19 uses
  store i32 0, ptr %i.eo, align 4, !tbaa !105
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 21 uses
  store ptr %i.ed, ptr %i.ep, align 8, !tbaa !106
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.ef, ptr %i.eq, align 8, !tbaa !107
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.er, align 8, !tbaa !108
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.es, align 8, !tbaa !109
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %10)
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 5 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !110 ; 3 uses
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !111 ; 6 uses
  %.not.i.i.i.i = icmp slt i32 %i.eu, %i.ev
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"
  %i.ew = add i32 %i.eu, 1                        ; 2 uses
  %i.ex = icmp slt i32 %i.ev, 0
  br i1 %i.ex, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i, label %bb.w, !prof !21

bb.w:                                             ; preds = %bb.v
  %.not.i24.i = icmp ugt i32 %i.ew, %i.ev
  br i1 %.not.i24.i, label %.preheader.i.i, label %..critedge_crit_edge.i.i.i.i, !prof !21

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.fa, %.preheader.i.i ], [ %i.ev, %bb.w ] ; 2 uses
  %i.ey = lshr i32 %.043.i.i, 1
  %i.ez = add i32 %.043.i.i, 8
  %i.fa = add i32 %i.ez, %i.ey                    ; 7 uses
  %i.fb = icmp ugt i32 %i.ew, %i.fa
  br i1 %i.fb, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !112

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.fc = icmp ugt i32 %i.fa, 536870911
  br i1 %i.fc, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %bb.x, !prof !21

bb.x:                                             ; preds = %.thread.i.i
  %.not49.i.i = icmp eq i32 %i.ev, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !113 ; 2 uses
  br i1 %.not49.i.i, label %bb.y, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i

bb.y:                                             ; preds = %bb.x
  %.not9.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = shl nuw i32 %i.fa, 3
  %i.fg = zext i32 %i.ff to i64
  %i.fh = call ptr @hb_malloc(i64 noundef %i.fg) #20 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %bb.z
  %i.fi = load i32, ptr %i.et, align 4, !tbaa !110 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %bb.aa
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = load ptr, ptr %i.fd, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr readonly align 1 %i.fl, i64 %i.fk, i1 false), !alias.scope !962
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i: ; preds = %bb.y, %bb.x
  %i.fm = phi ptr [ null, %bb.y ], [ %i.fe, %bb.x ]
  %i.fn = shl nuw i32 %i.fa, 3
  %i.fo = zext i32 %i.fn to i64
  %i.fp = call ptr @hb_realloc(ptr noundef %i.fm, i64 noundef %i.fo) #20 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fp, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, !prof !118

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.z
  %i.fq = load i32, ptr %i.eh, align 8, !tbaa !111 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.fa, %i.fq
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %..critedge_crit_edge.i.i.i.i, !prof !119

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.ev, %.thread.i.i ], [ %i.fq, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %i.eh, align 8, !tbaa !111
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.ab, %bb.aa
  %.1.i.i42.i.i = phi ptr [ %i.fp, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i ], [ %i.fh, %bb.ab ], [ %i.fh, %bb.aa ]
  store ptr %.1.i.i42.i.i, ptr %i.fd, align 8, !tbaa !113
  store i32 %i.fa, ptr %i.eh, align 8, !tbaa !111
  br label %..critedge_crit_edge.i.i.i.i

..critedge_crit_edge.i.i.i.i:                     ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %bb.w
  %.pre.i.i.i.i = load i32, ptr %i.et, align 4, !tbaa !110
  br label %.critedge.i.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, %bb.v
  %i.fr = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.fr, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"
  %i.fs = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.eu, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split" ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !113
  %i.fv = add i32 %i.fs, 1
  store i32 %i.fv, ptr %i.et, align 4, !tbaa !110
  %i.fw = zext i32 %i.fs to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fw
  store ptr null, ptr %i.fx, align 8, !tbaa !120
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

_ZN22hb_serialize_context_tC2EPvm.exit.i:         ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i
  store atomic i32 1, ptr %i.ei monotonic, align 8
  store atomic i8 1, ptr %i.ej monotonic, align 4
  store atomic ptr null, ptr %i.ek monotonic, align 8
  store i8 1, ptr %i.el, align 8, !tbaa !103
  store ptr null, ptr %i.en, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.em, i8 0, i64 18, i1 false)
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
  %i.fy = load ptr, ptr %i.ep, align 8, !tbaa !106 ; 7 uses
  %i.fz = load i32, ptr %i.eo, align 4, !tbaa !105 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not11.i.i.i.i.i, label %bb.ac, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.thread.i", !prof !137

bb.ac:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 2 ; 5 uses
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = load ptr, ptr %i.eq, align 8, !tbaa !107
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 %i.gd, %i.gb
  %i.gf = icmp slt i64 %i.ge, 2
  br i1 %i.gf, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i", label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, !prof !21

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i:               ; preds = %bb.ac
  store i16 0, ptr %i.fy, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !tbaa !106 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 2
  store ptr %i.gg, ptr %i.ep, align 8, !tbaa !106
  %i.gh = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %i.gh, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.i", label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i, !prof !21

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  %i.gi = call fastcc noundef i32 @"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSC_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSM_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_"(ptr noundef nonnull align 8 dereferenceable(72) %9)
  %.sroa.048.0.copyload.i.i.i = load i32, ptr %9, align 8 ; 5 uses
  %.sroa.853.0.copyload.i.i.i = load ptr, ptr %.sroa.594.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1358.0.copyload.i.i.i = load i32, ptr %.sroa.695.0..sroa_idx, align 8
  %.sroa.24.0.copyload.i.i.i = load i32, ptr %.sroa.796.0..sroa_idx, align 4
  %.sroa.28.0.copyload.i.i.i = load i32, ptr %.sroa.897.0..sroa_idx, align 8
  %.sroa.3470.0.copyload.i.i.i = load i32, ptr %.sroa.1099.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %.sroa.39.0.copyload.i.i.i = load i32, ptr %.sroa.39.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.40.0.copyload.i.i.i = load i32, ptr %.sroa.11100.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4173.0.copyload.i.i.i = load ptr, ptr %.sroa.13102.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !966
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %9), !noalias !966
  %i.gj = load i32, ptr %.sroa.39.0..sroa_idx.i.i.i, align 4, !tbaa !859, !noalias !983 ; 4 uses
  %i.gk = load i32, ptr %.sroa.11100.0..sroa_idx, align 8, !tbaa !862, !noalias !983
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.gj to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !alias.scope !984, !noalias !966
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.gk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !984, !noalias !966
  %.sroa.0.0.copyload3.i.i.i.i.i.i = load i32, ptr %8, align 8, !noalias !985
  %.sroa.0.0.copyload3.fr.i.i.i.i.i.i = freeze i32 %.sroa.0.0.copyload3.i.i.i.i.i.i ; 2 uses
  %.sroa.11.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.11.0.copyload13.i.i.i.i.i.i = load i32, ptr %.sroa.11.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !985 ; 2 uses
  %.sroa.23.0..sroa_idx21.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.23.0.copyload22.i.i.i.i.i.i = load i32, ptr %.sroa.23.0..sroa_idx21.i.i.i.i.i.i, align 8, !noalias !985
  switch i32 %.sroa.0.0.copyload3.fr.i.i.i.i.i.i, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" [
    i32 1, label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i
    i32 2, label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i
  ]

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !985, !srcloc !230
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i"

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !noalias !985, !srcloc !230
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !966
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.048.0.copyload.i.i.i, %.sroa.0.0.copyload3.fr.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.853.0.copyload.i.i.i, i64 2 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.853.0.copyload.i.i.i, i64 4 ; 3 uses
  %i.go = icmp eq i32 %.sroa.048.0.copyload.i.i.i, 1
  %.sroa.048.0.copyload.i.off.i.i = add i32 %.sroa.048.0.copyload.i.i.i, -1
  %switch.i.i = icmp ult i32 %.sroa.048.0.copyload.i.off.i.i, 2
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i.us.us.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.thread101.i.us.us.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.thread.i.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i"
  %.sroa.3470.0.i.i.i.ph = phi i32 [ %i.is, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.3470.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.sroa.28.0.i.i.i.ph = phi i32 [ %.sroa.28.2.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.28.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ] ; 3 uses
  %.sroa.24.0.i.i.i.ph = phi i32 [ %.sroa.24.3.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.24.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.sroa.1358.0.i.i.i.ph = phi i32 [ %.sroa.1358.3.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.1358.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.024.i.i.i.ph = phi i32 [ %.125.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.023.i.i.i.ph = phi i32 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ -2, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.021.i.i.i.ph = phi i32 [ %.122.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.0.i.i.i.ph = phi i1 [ %.1.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ false, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %i.gp = icmp ne i32 %.sroa.28.0.i.i.i.ph, %.sroa.23.0.copyload22.i.i.i.i.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit"
  %.sroa.3470.0.i.i.i.ph326 = phi i32 [ %.sroa.3470.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %i.hi, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.sroa.1358.0.i.i.i.ph327 = phi i32 [ %.sroa.1358.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %i.hh, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ] ; 6 uses
  %.024.i.i.i.ph328 = phi i32 [ %.024.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.125.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.023.i.i.i.ph329 = phi i32 [ %.023.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.021.i.i.i.ph330 = phi i32 [ %.021.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.122.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.0.i.i.i.ph331 = phi i1 [ %.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.1.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.1358.0.i.i.i.ph327, %.sroa.11.0.copyload13.i.i.i.i.i.i
  %i.gq = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.gp
  %.not.i.i.i.i.i.i = icmp ne i32 %.sroa.1358.0.i.i.i.ph327, %.sroa.11.0.copyload13.i.i.i.i.i.i
  %i.gr = zext nneg i32 %.sroa.1358.0.i.i.i.ph327 to i64
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gr
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325", %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i
  %.sroa.3470.0.i.i.i = phi i32 [ %i.ix, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.sroa.3470.0.i.i.i.ph326, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 6 uses
  %.024.i.i.i = phi i32 [ %.125.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.024.i.i.i.ph328, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 2 uses
  %.023.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.023.i.i.i.ph329, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 3 uses
  %.021.i.i.i = phi i32 [ %.122.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.021.i.i.i.ph330, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 2 uses
  %.0.i.i.i = phi i1 [ %.1.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.0.i.i.i.ph331, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.i.i.i", !prof !137

bb.ad:                                            ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i"
  switch i32 %.sroa.048.0.copyload.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i
    i32 2, label %.split.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i:                               ; preds = %bb.ad
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.gt = icmp ne i32 %.sroa.3470.0.i.i.i, %i.gj
  %or.cond109.i.i.i = select i1 %i.gq, i1 %i.gt, i1 false
  br i1 %or.cond109.i.i.i, label %.thread214.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.ad
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %.old.i.i.i = icmp ne i32 %.sroa.3470.0.i.i.i, %i.gj
  %or.cond110.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.old.i.i.i, i1 false
  br i1 %or.cond110.i.i.i, label %.thread.i.i.i24, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i"
  %.old.old.not.i.i.i = icmp eq i32 %.sroa.3470.0.i.i.i, %i.gj
  br i1 %.old.old.not.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i", label %bb.ae

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i": ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.i.i.i", %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.ad
  %i.gu = mul i32 %.024.i.i.i, 3
  %i.gv = icmp ugt i32 %i.gi, %i.gu
  %.not30.i.i.i = select i1 %.0.i.i.i, i1 true, i1 %i.gv ; 2 uses
  %i.gw = select i1 %.not30.i.i.i, i16 512, i16 256
  store i16 %i.gw, ptr %i.fy, align 1, !tbaa !289
  %i.gx = icmp ugt i32 %.021.i.i.i, 65535
  br i1 %i.gx, label %bb.am, label %bb.an, !prof !21

bb.ae:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.i.i.i"
  switch i32 %.sroa.048.0.copyload.i.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEdeEv.exit.i.i.i" [
    i32 1, label %.thread.i.i.i24
    i32 2, label %.thread214.i.i.i
  ]

.thread.i.i.i24:                                  ; preds = %bb.ae, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.gy = load i16, ptr %i.gm, align 1, !tbaa !231
  %i.gz = call noundef i16 @llvm.bswap.i16(i16 %i.gy)
  %i.ha = zext i16 %i.gz to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.sroa.1358.0.i.i.i.ph327, %i.ha
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !137

bb.af:                                            ; preds = %.thread.i.i.i24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %.thread.i.i.i24
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gs, %bb.af ], [ @_hb_NullPool, %.thread.i.i.i24 ]
  %i.hb = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !231
  %i.hc = call noundef i16 @llvm.bswap.i16(i16 %i.hb)
  %i.hd = zext i16 %i.hc to i32
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEdeEv.exit.i.i.i"

.thread214.i.i.i:                                 ; preds = %bb.ae, %.split.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEdeEv.exit.i.i.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEdeEv.exit.i.i.i": ; preds = %.thread214.i.i.i, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.28.0.i.i.i.ph, %.thread214.i.i.i ], [ %i.hd, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ae ] ; 6 uses
  %.not31.i.i.i = icmp ne i32 %.023.i.i.i, -2
  %i.he = icmp ult i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %.023.i.i.i
  %or.cond.i.i.i = and i1 %.not31.i.i.i, %i.he
  %.1.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %.0.i.i.i ; 3 uses
end_hunk_0
