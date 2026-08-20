inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIS3_jEEbOT_jOT0_b:bb.a
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.loopexit40, label %.lr.ph, !llvm.loop !1188

.loopexit40:                                      ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit, %.loopexit
  %.03254 = phi i32 [ %.03257, %.loopexit ], [ %spec.select, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit ]
  %.03150 = phi i32 [ %.03158, %.loopexit ], [ %i.at, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit ]
  %.03046 = phi i32 [ %.060, %.loopexit ], [ %i.aq, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit ]
  %.03254.fr = freeze i32 %.03254                 ; 2 uses
  %i.az = icmp eq i32 %.03254.fr, -1
  %spec.select94 = select i1 %i.az, i32 %.03150, i32 %.03254.fr
  br label %.loopexit40.thread

.loopexit40.thread:                               ; preds = %.loopexit40, %.critedge
  %.0304681 = phi i32 [ %.03046, %.loopexit40 ], [ 0, %.critedge ]
  %i.ba = phi i32 [ %spec.select94, %.loopexit40 ], [ %i.n, %.critedge ]
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 2
  %.not39 = icmp eq i32 %i.bf, 0
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit40.thread
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !1144
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !1144
  %i.bi = load i32, ptr %i.bd, align 8
  %i.bj = and i32 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1146
  %i.bm = sub i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !1146
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit40.thread
  %i.bn = load ptr, ptr %1, align 8, !tbaa !583
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !586
  %i.bo = load i32, ptr %3, align 4, !tbaa !137
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !1151
  %i.bq = shl nuw i32 %i.k, 2
  %i.br = or disjoint i32 %i.bq, 3
  store i32 %i.br, ptr %i.bd, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !137
  %i.bu = add <2 x i32> %i.bt, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !137
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !1148
  %i.bx = zext i16 %i.bw to i32
  %i.by = icmp ugt i32 %.0304681, %i.bx
  br i1 %i.by, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.bz = extractelement <2 x i32> %i.bu, i64 1
  %i.ca = shl i32 %i.bz, 3
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !1145 ; 2 uses
  %i.cc = icmp ugt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = add i32 %i.cb, -8
  %i.ce = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.cd) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i, %bb.h, %bb.g, %bb.c, %bb.a
  %.134 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %.loopexit ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  ret i1 %.134
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !404    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
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
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !591

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
  br i1 %.not49, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !408
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !408  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !407  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !408
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1189
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !404   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !408
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !404
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN10hb_array_tIN2OT20delta_row_encoding_tEE5qsortIZNS2_6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EESC_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1193 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZL15hb_qsort_inlineIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1195   ; 4 uses
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  tail call fastcc void @_ZL13hb_qsort_loopIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef %i.c, i64 noundef range(i64 1, 4294967296) %i.d)
  %.idx.i = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not1 = icmp eq i32 %i.b, 1
  br i1 %.not1, label %_ZL15hb_qsort_inlineIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %.01519.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.preheader.i
  %.01520.i = phi ptr [ %.015.i, %.critedge.i ], [ %.01519.i, %.preheader.preheader.i ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i"
  %.017.i = phi ptr [ %i.f, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i" ], [ %.01520.i, %.preheader.i ] ; 15 uses
  %i.f = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.017.i, i64 -24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !617  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.017.i, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !617  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = sub nsw i32 %i.h, %i.j
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !412
  %i.n = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !411  ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.o to i64
  %i.p = getelementptr inbounds i8, ptr %.017.i, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !412
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !411  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.o, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i32 %i.s, %i.o
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %.critedge.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 @memcmp(ptr noundef readonly %i.q, ptr noundef readonly %i.m, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i.i) #20
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i: ; preds = %bb.g, %bb.e, %bb.c
  %.0.i.i.i = phi i32 [ %i.k, %bb.c ], [ %i.t, %bb.e ], [ %i.u, %bb.g ]
  %i.v = icmp sgt i32 %.0.i.i.i, 0
  br i1 %i.v, label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i", label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i"
  %.015.i = getelementptr inbounds nuw i8, ptr %.01520.i, i64 40 ; 2 uses
  %i.w = icmp ult ptr %.015.i, %i.e
  br i1 %i.w, label %.preheader.i, label %_ZL15hb_qsort_inlineIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_.exit, !llvm.loop !1196

"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i": ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !412
  %i.z = load i64, ptr %i.g, align 8
  %i.aa = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.017.i, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !408
  %i.ad = load <2 x i32>, ptr %.017.i, align 8, !tbaa !137
  %i.ae = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !318
  store ptr %i.af, ptr %i.x, align 8, !tbaa !318
  %i.ag = load i64, ptr %i.i, align 8
  store i64 %i.ag, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.017.i, i64 24 ; 2 uses
  %i.ai = load <2 x i32>, ptr %i.ah, align 8, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %.017.i, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1197
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !1197
  %i.al = load <2 x i32>, ptr %i.f, align 8, !tbaa !137
  store <2 x i32> %i.ad, ptr %i.f, align 8, !tbaa !137
  store <2 x i32> %i.al, ptr %.017.i, align 8, !tbaa !137
  store ptr %i.y, ptr %i.ae, align 8, !tbaa !318
  store i64 %i.z, ptr %i.i, align 8
  %i.am = load <2 x i32>, ptr %i.aa, align 8, !tbaa !137
  store <2 x i32> %i.ai, ptr %i.aa, align 8, !tbaa !137
  store <2 x i32> %i.am, ptr %i.ah, align 8, !tbaa !137
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !1197
  %i.an = icmp ugt ptr %i.f, %i.c
  br i1 %i.an, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1198

_ZL15hb_qsort_inlineIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_.exit: ; preds = %.critedge.i, %bb.b, %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZL13hb_qsort_loopIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp ugt i64 %1, 24
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.al
  %.04692 = phi i64 [ %.147, %bb.al ], [ %1, %bb.a ] ; 3 uses
  %.04891 = phi ptr [ %.149, %bb.al ], [ %0, %bb.a ] ; 13 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.04891, i64 %.04692 ; 8 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.d = lshr i64 %.04692, 1
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.04891, i64 %i.d ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.04891, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !617  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !617  ; 3 uses
  %.not.i.i = icmp eq i32 %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = sub nsw i32 %i.g, %i.i
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !412
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !411  ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.04891, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !412
  %i.q = getelementptr inbounds nuw i8, ptr %.04891, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !411  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i32 %i.r, %i.n
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @memcmp(ptr noundef readonly %i.p, ptr noundef readonly %i.l, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i) #20
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit: ; preds = %bb.b, %bb.d, %bb.f
  %.0.i.i = phi i32 [ %i.j, %bb.b ], [ %i.s, %bb.d ], [ %i.t, %bb.f ]
  %i.u = icmp sgt i32 %.0.i.i, 0
  br i1 %i.u, label %bb.g, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread

bb.g:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %.04891, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %.pre = load i32, ptr %i.h, align 8, !tbaa !617
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread: ; preds = %bb.e, %bb.g, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit
  %i.v = phi i32 [ %i.g, %bb.e ], [ %.pre, %bb.g ], [ %i.i, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !617  ; 2 uses
  %.not.i.i57 = icmp eq i32 %i.v, %i.x
  br i1 %.not.i.i57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread
  %i.y = sub nsw i32 %i.v, %i.x
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62

bb.i:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !412
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 -36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !411 ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i59 = zext i32 %i.ac to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !412
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !411 ; 2 uses
  %.not.i.i.i.i60 = icmp eq i32 %i.ac, %i.ag
  br i1 %.not.i.i.i.i60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = sub nsw i32 %i.ag, %i.ac
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i61 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i61, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @memcmp(ptr noundef readonly %i.ae, ptr noundef readonly %i.aa, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i59) #20
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62: ; preds = %bb.h, %bb.j, %bb.l
  %.0.i.i58 = phi i32 [ %i.y, %bb.h ], [ %i.ah, %bb.j ], [ %i.ai, %bb.l ]
  %i.aj = icmp sgt i32 %.0.i.i58, 0
  br i1 %i.aj, label %bb.m, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread

bb.m:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !617 ; 2 uses
  %i.al = load i32, ptr %i.h, align 8, !tbaa !617 ; 2 uses
  %.not.i.i63 = icmp eq i32 %i.ak, %i.al
  br i1 %.not.i.i63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = sub nsw i32 %i.ak, %i.al
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !412
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !411 ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i65 = zext i32 %i.aq to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.04891, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !412
  %i.at = getelementptr inbounds nuw i8, ptr %.04891, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !411 ; 2 uses
  %.not.i.i.i.i66 = icmp eq i32 %i.aq, %i.au
  br i1 %.not.i.i.i.i66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = sub nsw i32 %i.au, %i.aq
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68

bb.q:                                             ; preds = %bb.o
  %.not.i.i.i.i.i67 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i67, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.aw = tail call i32 @memcmp(ptr noundef readonly %i.as, ptr noundef readonly %i.ao, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i65) #20
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68: ; preds = %bb.n, %bb.p, %bb.r
  %.0.i.i64 = phi i32 [ %i.am, %bb.n ], [ %i.av, %bb.p ], [ %i.aw, %bb.r ]
  %i.ax = icmp sgt i32 %.0.i.i64, 0
  br i1 %i.ax, label %bb.s, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread

bb.s:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %.04891, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread: ; preds = %bb.q, %bb.k, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68, %bb.s, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62
  %i.ay = getelementptr inbounds i8, ptr %i.b, i64 -80 ; 3 uses
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  %i.az = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.ba = getelementptr inbounds i8, ptr %i.b, i64 -72 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.b, i64 -76 ; 2 uses
  br label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit"

"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit": ; preds = %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge", %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread
  %.044 = phi ptr [ %.04891, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread ], [ %i.bd, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge" ]
  %.0 = phi ptr [ %i.ay, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread ], [ %i.br, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge" ]
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !617 ; 4 uses
  br label %bb.t
end_hunk_0
begin_hunk_1_@_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE:bb.a
  %i.bm = load i32, ptr %i.bg, align 8, !tbaa !1394
  %i.bn = urem i32 %i.bl, %i.bm                   ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = and i32 %i.br, 2
  %.not15.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.bt = load i32, ptr %i.ab, align 4
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !137
  %i.bv = icmp eq i32 %i.bu, %i.bi
  br i1 %i.bv, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = load i32, ptr %i.cg, align 4, !tbaa !137
  %i.bx = icmp eq i32 %i.bw, %i.bi
  br i1 %i.bx, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1395

._crit_edge.i.i.i:                                ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.br, %.lr.ph.i.i.i.i ], [ %i.ci, %bb.j ]
  %i.by = phi i64 [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.cf, %bb.j ]
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.by
  %i.ca = trunc i32 %.lcssa10.i.i.i to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %spec.select.i.i.i = select i1 %i.ca, ptr %i.cb, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.01016.i13.i.i.i = phi i32 [ %i.ce, %bb.j ], [ %i.bn, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.cc, %bb.j ], [ 0, %.lr.ph.i.i.i.i ]
  %i.cc = add i32 %.017.i12.i.i.i, 1              ; 2 uses
  %i.cd = add i32 %i.cc, %.01016.i13.i.i.i
  %i.ce = and i32 %i.cd, %i.bt                    ; 2 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4            ; 2 uses
  %i.cj = and i32 %i.ci, 2
  %.not.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i, label %bb.j, !llvm.loop !1395

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_NullPool, %bb.h ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @_hb_NullPool, %bb.i ], [ @_hb_NullPool, %.lr.ph.i.i.i ]
  %i.ck = load ptr, ptr %.0.i.i, align 8, !tbaa !1396
  %i.cl = call noundef zeroext i1 @_ZN5graph6Lookup25split_subtables_if_neededERNS_24gsubgpos_graph_context_tEj(ptr noundef nonnull align 1 dereferenceable(8) %i.ck, ptr noundef nonnull align 8 dereferenceable(168) %15, i32 noundef %i.bi)
  br i1 %i.cl, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i
  %i.cm = load ptr, ptr %14, align 8, !tbaa !378  ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !281, !range !132, !noundef !198
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.cq = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.cm, ptr noundef nonnull %i.be) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.cr = load i32, ptr %i.be, align 8, !tbaa !137 ; 5 uses
  store i32 %i.cr, ptr %i.k, align 4, !tbaa !137
  %i.cs = icmp eq i32 %i.cr, -2
  br i1 %i.cs, label %bb.n, label %bb.o, !prof !21

bb.n:                                             ; preds = %bb.m
  store i32 -1, ptr %i.be, align 8, !tbaa !137
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store i32 %i.cr, ptr %i.l, align 4, !tbaa !137
  %i.ct = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.cm, ptr noundef nonnull %i.l) ; 0 uses
  %i.cu = add i32 %i.cr, 1                        ; 2 uses
  %i.cv = load i32, ptr %i.l, align 4, !tbaa !137
  %i.cw = icmp ult i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cr, ptr %i.l, align 4, !tbaa !137
  %i.cx = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.cm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) ; 0 uses
  %i.cy = load i32, ptr %i.l, align 4, !tbaa !137
  %i.cz = add i32 %i.cy, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i.i.i.i = phi i32 [ %i.cz, %bb.p ], [ %i.cu, %bb.o ]
  store i32 %.sink.i.i.i.i, ptr %i.be, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i: ; preds = %bb.r, %bb.l
  %i.da = load i32, ptr %i.bh, align 4, !tbaa !381 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr %i.bh, align 4, !tbaa !381
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i: ; preds = %bb.s, %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i
  %i.dc = load i32, ptr %i.be, align 8, !tbaa !382 ; 2 uses
  %.not.i55 = icmp eq i32 %i.dc, -1
  br i1 %.not.i55, label %.loopexit, label %bb.h

bb.t:                                             ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i, %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_FRjvEL24hb_function_sortedness_t0ELSG_0EERK4$_29LSL_0ELSG_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSG_0EEERKSS_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !1398 ; 4 uses
  %.not233.i = icmp eq i32 %i.de, 0
  br i1 %.not233.i, label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit
  %i.df = icmp ugt i32 %i.de, 178956970
  br i1 %i.df, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !21

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.dg = zext nneg i32 %i.de to i64
  %i.dh = mul nuw nsw i64 %i.dg, 24
  %i.di = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dh) #18 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.di, null
  %spec.select232.i = select i1 %.not22.i.i, i32 -1, i32 %i.de, !prof !118
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, %.thread.i.i
  %.sroa.21.1.i = phi ptr [ null, %.thread.i.i ], [ %i.di, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.sink.i.i = phi i32 [ -1, %.thread.i.i ], [ %spec.select232.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.val.i56 = load i32, ptr %i.ab, align 4, !tbaa !1376
  %i.dj = add i32 %.val.i56, 1                    ; 2 uses
  %.not15.i.i.i.i.i.i.i57 = icmp ult i32 %i.dj, 2
  br i1 %.not15.i.i.i.i.i.i.i57, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i
  %.val85.i = load ptr, ptr %i.ac, align 8, !tbaa !1379
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i
  %.sroa.5.sroa.0.0.i.i.i59 = phi i32 [ %i.dn, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ], [ %i.dj, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.02.0.i.i.i60 = phi ptr [ %i.do, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ], [ %.val85.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i60, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !1399
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58
  %i.dn = add i32 %.sroa.5.sroa.0.0.i.i.i59, -1   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i60, i64 16
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58, !llvm.loop !1391

"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58
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

._crit_edge.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i"
  %.not.i.i.i.i91.i = icmp eq i32 %.sroa.11184.1.i, 0
  br i1 %.not.i.i.i.i91.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %bb.u, !prof !330

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

.preheader.i.i.i.i.i.i:                           ; preds = %.critedge.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.01520.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ %.01519.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w, %.preheader.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi ptr [ %i.ef, %bb.w ], [ %.01520.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 8 uses
  %i.ef = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -24 ; 5 uses
  %i.eg = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1410
  %i.ei = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1412
  %i.ek = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !1410
  %i.em = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !1412
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
  %i.ez = load i32, ptr %.017.i.i.i.i.i.i, align 8, !tbaa !1413
  %i.fa = load i32, ptr %i.ef, align 8, !tbaa !1413
  %i.fb = sub i32 %i.ez, %i.fa
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.w, label %.critedge.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fd = fcmp ule double %i.ex, %i.ew
  br i1 %i.fd, label %.critedge.i.i.i.i.i.i, label %bb.w

.critedge.i.i.i.i.i.i:                            ; preds = %bb.w, %bb.v, %.split.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01520.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.fe = icmp ult ptr %.015.i.i.i.i.i.i, %i.ee
  br i1 %i.fe, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, !llvm.loop !1414

bb.w:                                             ; preds = %bb.v, %.split.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !tbaa.struct !1415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %.017.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ff = icmp ugt ptr %i.ef, %.sroa.21.4.i
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !1416

_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61, %.critedge.i.i.i.i.i.i, %bb.u, %._crit_edge.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i
  %.not.i.i.i.i91324.i = phi i1 [ true, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ false, %bb.u ], [ true, %._crit_edge.i ], [ false, %.critedge.i.i.i.i.i.i ], [ true, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ]
  %.069.lcssa323.shrunk.i = phi i32 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %i.gq, %bb.u ], [ %i.gq, %._crit_edge.i ], [ %i.gq, %.critedge.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ]
  %.sroa.21.0.lcssa322.i = phi ptr [ %.sroa.21.1.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %.sroa.21.4.i, %bb.u ], [ %.sroa.21.4.i, %._crit_edge.i ], [ %.sroa.21.4.i, %.critedge.i.i.i.i.i.i ], [ %.sroa.21.1.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 6 uses
  %.sroa.11184.0.lcssa321.i = phi i64 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ 24, %bb.u ], [ 0, %._crit_edge.i ], [ %.idx.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 2 uses
  %.sroa.0178.0.lcssa320.i = phi i32 [ %.sink.i.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %.sroa.0178.3.i, %bb.u ], [ %.sroa.0178.3.i, %._crit_edge.i ], [ %.sroa.0178.3.i, %.critedge.i.i.i.i.i.i ], [ %.sink.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 2 uses
  %.069.lcssa323.i = zext i32 %.069.lcssa323.shrunk.i to i64 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !1423 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !1354
  %.not.i.i62 = icmp ult i32 %i.fj, %i.fl
  br i1 %.not.i.i62, label %bb.y, label %bb.x, !prof !142

bb.x:                                             ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.y:                                             ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1362
  %i.fo = zext i32 %i.fj to i64
  %i.fp = getelementptr inbounds nuw [216 x i8], ptr %i.fn, i64 %i.fo
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i63 = phi ptr [ @_hb_CrapPool, %bb.x ], [ %i.fp, %bb.y ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1424
  %i.fs = load ptr, ptr %.0.i.i63, align 8, !tbaa !1425
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

bb.z:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i"
  %.069254.i = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %i.gq, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ]
  %.sroa.0162.0253.i = phi ptr [ %.sroa.02.0.i.i.i60, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.0162.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 4 uses
  %.sroa.7163.0252.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i59, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.7163.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 5 uses
  %.sroa.21.0250.i = phi ptr [ %.sroa.21.1.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.21.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 6 uses
  %.sroa.11184.0248.i = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.11184.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 6 uses
  %.sroa.0178.0247.i = phi i32 [ %.sink.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.0178.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 10 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.7163.0252.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.aa, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i", !prof !21

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i": ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %.sroa.0162.0253.i, %bb.z ]
  %.val1.i.i.i = load i32, ptr %.0.i.i.i.i.i.i.i.i.i, align 4, !tbaa !137 ; 7 uses
  %i.gc = load ptr, ptr %i.dt, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !1354
  %.not.i92.i = icmp ult i32 %.val1.i.i.i, %i.ge
  br i1 %.not.i92.i, label %bb.ac, label %bb.ab, !prof !142

bb.ab:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i

bb.ac:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i"
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1362
  %i.gh = zext i32 %.val1.i.i.i to i64
  %i.gi = getelementptr inbounds nuw [216 x i8], ptr %i.gg, i64 %i.gh
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i: ; preds = %bb.ac, %bb.ab
  %.0.i93.i = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %i.gi, %bb.ac ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i93.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1424
  %i.gl = load ptr, ptr %.0.i93.i, align 8, !tbaa !1425
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = add i32 %.069254.i, %i.gp               ; 4 uses
  %i.gr = load ptr, ptr %i.ac, align 8, !tbaa !1379 ; 4 uses
  %.not.i95.i = icmp eq ptr %i.gr, null
  br i1 %.not.i95.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74, label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i
  %i.gs = mul i32 %.val1.i.i.i, 506952113
  %i.gt = and i32 %i.gs, 1073741823
  %i.gu = load i32, ptr %i.du, align 8, !tbaa !1394
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
  %i.hc = load i32, ptr %i.gx, align 4, !tbaa !137
  %i.hd = icmp eq i32 %i.hc, %.val1.i.i.i
  br i1 %i.hd, label %._crit_edge.i.i.i71, label %.lr.ph.i.i.i68

bb.ae:                                            ; preds = %.lr.ph.i.i.i68
  %i.he = load i32, ptr %i.ho, align 4, !tbaa !137
  %i.hf = icmp eq i32 %i.he, %.val1.i.i.i
  br i1 %i.hf, label %._crit_edge.i.i.i71, label %.lr.ph.i.i.i68, !llvm.loop !1395

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
  br i1 %.not.i.i.i96.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74, label %bb.ae, !llvm.loop !1395

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74: ; preds = %.lr.ph.i.i.i68, %._crit_edge.i.i.i71, %bb.ad, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i
  %.0.i97.i = phi ptr [ @_hb_NullPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i ], [ %spec.select.i.i.i73, %._crit_edge.i.i.i71 ], [ @_hb_NullPool, %bb.ad ], [ @_hb_NullPool, %.lr.ph.i.i.i68 ]
  %i.hs = load ptr, ptr %.0.i97.i, align 8, !tbaa !1396
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store atomic i32 1, ptr %9 monotonic, align 8
  store atomic i8 1, ptr %i.dv monotonic, align 4
  store atomic ptr null, ptr %i.dw monotonic, align 8
  store i8 1, ptr %i.dx, align 8, !tbaa !361
  store i32 0, ptr %i.dy, align 4, !tbaa !282
  store atomic i32 0, ptr %i.dz monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ea, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 -1, ptr %i.i, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i64 0, ptr %i.j, align 8, !tbaa !615
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %9, ptr %7, align 8, !tbaa !363
  store ptr %i.gc, ptr %i.eb, align 8, !tbaa !1426
  store ptr %i.j, ptr %i.ec, align 8, !tbaa !1429
  store ptr %i.i, ptr %i.ed, align 8, !tbaa !480
  call void @_ZN5graph7graph_t21traverse_directed_bfsIZNS0_18find_subgraph_sizeEjR8hb_set_tjEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_EEvjOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.gc, i32 noundef %.val1.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ht = load i64, ptr %i.j, align 8, !tbaa !615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load i16, ptr %i.hu, align 1, !tbaa !264
  %i.hw = call noundef i16 @llvm.bswap.i16(i16 %i.hv)
  %i.hx = zext i16 %i.hw to i32
  %.not.i98.i = icmp slt i32 %.sroa.11184.0248.i, %.sroa.0178.0247.i
  %.pre289.i = add i32 %.sroa.11184.0248.i, 1     ; 3 uses
  br i1 %.not.i98.i, label %.critedge.i100.i, label %bb.af

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %i.hy = icmp slt i32 %.sroa.0178.0247.i, 0
  br i1 %i.hy, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %bb.af
  %.not.i131.i = icmp ugt i32 %.pre289.i, %.sroa.0178.0247.i
  br i1 %.not.i131.i, label %.preheader.i.i, label %.critedge.i100.i, !prof !21

.preheader.i.i:                                   ; preds = %bb.ag, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.ib, %.preheader.i.i ], [ %.sroa.0178.0247.i, %bb.ag ] ; 2 uses
  %i.hz = lshr i32 %.043.i.i, 1
  %i.ia = add i32 %.043.i.i, 8
  %i.ib = add i32 %i.ia, %i.hz                    ; 8 uses
  %i.ic = icmp ugt i32 %.pre289.i, %i.ib
  br i1 %i.ic, label %.preheader.i.i, label %.thread.i133.i, !llvm.loop !1430

.thread.i133.i:                                   ; preds = %.preheader.i.i
  %i.id = icmp ugt i32 %i.ib, 178956970
  br i1 %i.id, label %.critedge.i148.i, label %bb.ah, !prof !21

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
  %i.ih = call ptr @hb_malloc(i64 noundef %i.ig) #18 ; 4 uses
  %.not10.i.i.i146.i = icmp eq ptr %i.ih, null
  br i1 %.not10.i.i.i146.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i147.i = icmp eq i32 %.sroa.11184.0248.i, 0
  br i1 %.not.i.i.i.i147.i, label %.critedge.i100.i, label %bb.al, !prof !21

bb.al:                                            ; preds = %bb.ak
  %i.ii = zext i32 %.sroa.11184.0248.i to i64
  %i.ij = mul nuw nsw i64 %i.ii, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 1 %.sroa.21.0250.i, i64 %i.ij, i1 false), !alias.scope !1431
  br label %.critedge.i100.i

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i: ; preds = %bb.ai, %bb.ah
  %i.ik = phi ptr [ null, %bb.ai ], [ %.sroa.21.0250.i, %bb.ah ]
  %i.il = zext nneg i32 %i.ib to i64
  %i.im = mul nuw nsw i64 %i.il, 24
  %i.in = call ptr @hb_realloc(ptr noundef %i.ik, i64 noundef %i.im) #18 ; 2 uses
  %.not22.i137.i = icmp eq ptr %i.in, null
  br i1 %.not22.i137.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %.critedge.i100.i, !prof !118

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.aj
  %i.io = xor i32 %.sroa.0178.0247.i, -1
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i

_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, %.critedge.i148.i, %bb.af
  %.sroa.0178.4.i = phi i32 [ %.sroa.0178.0247.i, %bb.af ], [ %i.io, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i ], [ %i.ie, %.critedge.i148.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

.critedge.i100.i:                                 ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.al, %bb.ak, %bb.ag, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %.sroa.0178.2.i = phi i32 [ %.sroa.0178.0247.i, %bb.ag ], [ %i.ib, %bb.ak ], [ %i.ib, %bb.al ], [ %i.ib, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.0178.0247.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ]
  %.sroa.21.3.i = phi ptr [ %.sroa.21.0250.i, %bb.ag ], [ %i.ih, %bb.ak ], [ %i.ih, %bb.al ], [ %i.in, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.21.0250.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ] ; 2 uses
  %i.ip = zext i32 %.sroa.11184.0248.i to i64
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.21.3.i, i64 %i.ip ; 3 uses
  store i32 %.val1.i.i.i, ptr %i.iq, align 8, !tbaa !137
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i64 %i.ht, ptr %.sroa.4154.0..sroa_idx.i, align 8, !tbaa !615
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i32 %i.hx, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !137
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %.critedge.i100.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i
  %.sroa.0178.3.i = phi i32 [ %.sroa.0178.2.i, %.critedge.i100.i ], [ %.sroa.0178.4.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.11184.1.i = phi i32 [ %.pre289.i, %.critedge.i100.i ], [ %.sroa.11184.0248.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.21.4.i = phi ptr [ %.sroa.21.3.i, %.critedge.i100.i ], [ %.sroa.21.0250.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 8 uses
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.ir = zext i32 %.sroa.7163.0252.i to i64
  %i.is = shl nuw nsw i64 %i.ir, 4
  %scevgep.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 %i.is
  %scevgep378.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 16
  %i.it = add i32 %.sroa.7163.0252.i, -1
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 4
  %scevgep379.i = getelementptr i8, ptr %scevgep378.i, i64 %i.iv
  %.not.i.i.i.i.i.i.i.i101.i439 = icmp eq i32 %.sroa.7163.0252.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i101.i439, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !prof !796

bb.am:                                            ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !1392

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.am
  %.sroa.0162.1.i441 = phi ptr [ %i.ix, %bb.am ], [ %.sroa.0162.0253.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ] ; 2 uses
  %.sroa.7163.1.i440 = phi i32 [ %i.iw, %bb.am ], [ %.sroa.7163.0252.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ]
  %i.iw = add i32 %.sroa.7163.1.i440, -1          ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i441, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i441, i64 20
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = trunc i32 %i.iz to i1
  br i1 %i.ja, label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", label %bb.am, !llvm.loop !1392

"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", !llvm.loop !1392

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  %.sroa.7163.2.i = phi i32 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.iw, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0162.2.i = phi ptr [ %scevgep.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.ix, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ %scevgep379.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
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
  %.sroa.3.0.copyload.i.epil = load i32, ptr %.sroa.3.0..sroa_idx.i.epil, align 8, !tbaa !137
  %i.jd = shl i32 %.sroa.3.0.copyload.i.epil, 3
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = add i64 %.075259.i.epil, %i.je          ; 2 uses
  %i.jg = add i64 %.071260.i.epil, %i.je          ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.070261.i.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph271.i, label %.lr.ph262.i.epil, !llvm.loop !1435

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
  br label %bb.an

.lr.ph262.i:                                      ; preds = %.lr.ph262.i, %.lr.ph262.i.preheader.new
  %.070261.i = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph262.i.preheader.new ], [ %i.kj, %.lr.ph262.i ] ; 5 uses
  %.071260.i = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %i.ki, %.lr.ph262.i ]
  %.075259.i = phi i64 [ %.069.lcssa323.i, %.lr.ph262.i.preheader.new ], [ %i.kh, %.lr.ph262.i ]
  %niter = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %niter.next.3, %.lr.ph262.i ]
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.070261.i, i64 16
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !137
  %i.jt = shl i32 %.sroa.3.0.copyload.i, 3
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = add i64 %.075259.i, %i.ju
  %i.jw = add i64 %.071260.i, %i.ju
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 40
  %.sroa.3.0.copyload.i.1 = load i32, ptr %.sroa.3.0..sroa_idx.i.1, align 8, !tbaa !137
  %i.jx = shl i32 %.sroa.3.0.copyload.i.1, 3
  %i.jy = zext i32 %i.jx to i64                   ; 2 uses
  %i.jz = add i64 %i.jv, %i.jy
  %i.ka = add i64 %i.jw, %i.jy
  %.sroa.3.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 64
  %.sroa.3.0.copyload.i.2 = load i32, ptr %.sroa.3.0..sroa_idx.i.2, align 8, !tbaa !137
  %i.kb = shl i32 %.sroa.3.0.copyload.i.2, 3
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = add i64 %i.jz, %i.kc
  %i.ke = add i64 %i.ka, %i.kc
  %.sroa.3.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 88
  %.sroa.3.0.copyload.i.3 = load i32, ptr %.sroa.3.0..sroa_idx.i.3, align 8, !tbaa !137
  %i.kf = shl i32 %.sroa.3.0.copyload.i.3, 3
  %i.kg = zext i32 %i.kf to i64                   ; 2 uses
  %i.kh = add i64 %i.kd, %i.kg                    ; 3 uses
  %i.ki = add i64 %i.ke, %i.kg                    ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.070261.i, i64 96 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph271.i.unr-lcssa, label %.lr.ph262.i

bb.an:                                            ; preds = %.thread.i, %.lr.ph271.i
  %.061269.i = phi ptr [ %.sroa.21.0.lcssa322.i, %.lr.ph271.i ], [ %i.nr, %.thread.i ] ; 4 uses
  %.062268.i = phi i1 [ false, %.lr.ph271.i ], [ %.3226.i, %.thread.i ] ; 2 uses
  %.172267.i = phi i64 [ %.lcssa487, %.lr.ph271.i ], [ %.374225.i, %.thread.i ] ; 3 uses
  %.176266.i = phi i64 [ %.lcssa488, %.lr.ph271.i ], [ %.378224.i, %.thread.i ] ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.061269.i, align 8, !tbaa !137 ; 10 uses
  %.sroa.8152.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 8
  %.sroa.8152.0.copyload.i = load i64, ptr %.sroa.8152.0..061.sroa_idx.i, align 8, !tbaa !615
  %.sroa.9.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 16
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..061.sroa_idx.i, align 8, !tbaa !137
  %i.kk = load ptr, ptr %i.ac, align 8, !tbaa !1379 ; 5 uses
  %.not.i102.i = icmp eq ptr %i.kk, null
  br i1 %.not.i102.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kl = mul i32 %.sroa.0.0.copyload.i, 506952113
  %i.km = and i32 %i.kl, 1073741823
  %i.kn = load i32, ptr %i.ji, align 8, !tbaa !1394
  %i.ko = urem i32 %i.km, %i.kn                   ; 2 uses
  %i.kp = zext nneg i32 %i.ko to i64              ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ks = load i32, ptr %i.kr, align 4            ; 2 uses
  %i.kt = and i32 %i.ks, 2
  %.not15.i.i.i104.i = icmp eq i32 %i.kt, 0
  br i1 %.not15.i.i.i104.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %.lr.ph.i.i.i105.i

.lr.ph.i.i.i105.i:                                ; preds = %bb.ao
  %i.ku = load i32, ptr %i.ab, align 4
  %i.kv = load i32, ptr %i.kq, align 4, !tbaa !137
  %i.kw = icmp eq i32 %i.kv, %.sroa.0.0.copyload.i
  br i1 %i.kw, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i

bb.ap:                                            ; preds = %.lr.ph.i.i106.i
  %i.kx = load i32, ptr %i.lh, align 4, !tbaa !137
  %i.ky = icmp eq i32 %i.kx, %.sroa.0.0.copyload.i
  br i1 %i.ky, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i, !llvm.loop !1395

._crit_edge.i.i110.i:                             ; preds = %bb.ap, %.lr.ph.i.i.i105.i
  %.lcssa10.i.i111.i = phi i32 [ %i.ks, %.lr.ph.i.i.i105.i ], [ %i.lj, %bb.ap ]
  %i.kz = phi i64 [ %i.kp, %.lr.ph.i.i.i105.i ], [ %i.lg, %bb.ap ]
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kz
  %i.lb = trunc i32 %.lcssa10.i.i111.i to i1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %spec.select.i.i112.i = select i1 %i.lb, ptr %i.lc, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i

.lr.ph.i.i106.i:                                  ; preds = %.lr.ph.i.i.i105.i, %bb.ap
  %.01016.i13.i.i107.i = phi i32 [ %i.lf, %bb.ap ], [ %i.ko, %.lr.ph.i.i.i105.i ]
  %.017.i12.i.i108.i = phi i32 [ %i.ld, %bb.ap ], [ 0, %.lr.ph.i.i.i105.i ]
  %i.ld = add i32 %.017.i12.i.i108.i, 1           ; 2 uses
  %i.le = add i32 %i.ld, %.01016.i13.i.i107.i
  %i.lf = and i32 %i.le, %i.ku                    ; 2 uses
  %i.lg = zext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %i.lk = and i32 %i.lj, 2
  %.not.i.i.i109.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i.i109.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ap, !llvm.loop !1395

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i: ; preds = %.lr.ph.i.i106.i, %._crit_edge.i.i110.i, %bb.ao, %bb.an
  %.0.i113.i = phi ptr [ @_hb_NullPool, %bb.an ], [ %spec.select.i.i112.i, %._crit_edge.i.i110.i ], [ @_hb_NullPool, %bb.ao ], [ @_hb_NullPool, %.lr.ph.i.i106.i ]
  %i.ll = load ptr, ptr %.0.i113.i, align 8, !tbaa !1396
  %i.lm = load i32, ptr %15, align 8, !tbaa !1436 ; 2 uses
  %i.ln = load i16, ptr %i.ll, align 1, !tbaa !264
  %i.lo = call noundef i16 @llvm.bswap.i16(i16 %i.ln)
  %i.lp = zext i16 %i.lo to i32
  %switch.selectcmp.i.i.i = icmp eq i32 %i.lm, 1196643650
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 7, i32 0
  %switch.selectcmp2.i.i.i = icmp eq i32 %i.lm, 1196445523
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 9, i32 %switch.select.i.i.i
  %i.lq = icmp eq i32 %switch.select3.i.i.i, %i.lp
  br i1 %i.lq, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i
  br i1 %.062268.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lr = load ptr, ptr %i.fg, align 8, !tbaa !1417 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
end_hunk_1
begin_hunk_2_@_ZN5graph6Lookup14add_sub_tablesERNS_24gsubgpos_graph_context_tEjjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %.sroa.17.0.i.ph, -1
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i.ph.ph, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer.outer

_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit: ; preds = %bb.c
  %.pre231 = load ptr, ptr %i.y, align 8, !tbaa !1627 ; 2 uses
  %.pre232 = load i32, ptr %i.aa, align 4, !tbaa !1591 ; 2 uses
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
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1656
  %i.bm = add i32 %i.bl, %.078199.epil            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.077200.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1657

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit
  %.078.lcssa = phi i32 [ 0, %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit ], [ 0, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ], [ %i.cv, %._crit_edge.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.epil ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i298, i64 8 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1424
  %i.bq = load ptr, ptr %.0.i298, align 8, !tbaa !1425
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = shl i32 %.078.lcssa, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.bw) #18 ; 11 uses
  %.not80 = icmp eq ptr %i.bx, null
  br i1 %.not80, label %bb.cg, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.077200 = phi ptr [ %.pre231, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ] ; 9 uses
  %.078199 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.cv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.by = getelementptr inbounds nuw i8, ptr %.077200, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !1656
  %i.ca = add i32 %i.bz, %.078199
  %i.cb = getelementptr inbounds nuw i8, ptr %.077200, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1656
  %i.cd = add i32 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %.077200, i64 60
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !1656
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %.077200, i64 84
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !1656
  %i.cj = add i32 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %.077200, i64 108
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1656
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.077200, i64 132
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !1656
  %i.cp = add i32 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %.077200, i64 156
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !1656
  %i.cs = add i32 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.077200, i64 180
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !1656
  %i.cv = add i32 %i.cu, %i.cs                    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.077200, i64 192 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %i.k, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 76 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !1497 ; 3 uses
  %i.db = load i32, ptr %i.cy, align 8, !tbaa !1498
  %.not.i.i.i84 = icmp slt i32 %i.da, %i.db
  br i1 %.not.i.i.i84, label %.critedge.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = add i32 %i.da, 1
  %i.dd = tail call noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i32 noundef %i.dc, i1 noundef zeroext false)
  br i1 %i.dd, label %..critedge_crit_edge.i.i.i, label %bb.k, !prof !142

..critedge_crit_edge.i.i.i:                       ; preds = %bb.j
  %.pre.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !1497
  br label %.critedge.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.de, ptr @_hb_CrapPool, align 16
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %bb.i
  %i.df = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.da, %bb.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1496
  %i.di = add i32 %i.df, 1
  store i32 %i.di, ptr %i.cz, align 4, !tbaa !1497
  %i.dj = zext i32 %i.df to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dj
  store ptr %i.bx, ptr %i.dk, align 8, !tbaa !318
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit: ; preds = %bb.k, %.critedge.i.i.i
  %i.dl = load i32, ptr %i.cy, align 8, !tbaa !1498
  %i.dm = icmp sgt i32 %i.dl, -1
  br i1 %i.dm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  tail call void @hb_free(ptr noundef nonnull %i.bx) #18
  br label %bb.cg

bb.m:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  %i.dn = load ptr, ptr %.0.i298, align 8, !tbaa !1425 ; 3 uses
  %i.do = load ptr, ptr %i.bo, align 8, !tbaa !1424 ; 2 uses
  %.not.i85 = icmp eq ptr %i.do, %i.dn
  br i1 %.not.i85, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dq, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr readonly align 1 %i.dn, i64 %i.dr, i1 false), !alias.scope !1658
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.m, %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !264
  %i.du = and i16 %i.dt, 4096
  %.not188 = icmp eq i16 %i.du, 0
  br i1 %.not188, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -2
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !1424
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -2
  %i.dz = load i16, ptr %i.dy, align 1, !alias.scope !1662
  store i16 %i.dz, ptr %i.dw, align 1, !alias.scope !1662
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZL9hb_memcpyPvPKvm.exit
  store ptr %i.bx, ptr %.0.i298, align 8, !tbaa !1425
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store ptr %i.ea, ptr %i.bo, align 8, !tbaa !1424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !1396
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ec = load i16, ptr %i.eb, align 1, !tbaa !264
  %i.ed = tail call noundef i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ee = trunc i32 %.078.lcssa to i16
  %i.ef = add i16 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.eh = tail call i16 @llvm.bswap.i16(i16 %i.ef)
  store i16 %i.eh, ptr %i.eg, align 1, !tbaa !331
  %i.ei = load ptr, ptr %i.y, align 8, !tbaa !1627 ; 2 uses
  %i.ej = load i32, ptr %i.aa, align 4, !tbaa !1591 ; 2 uses
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
  %.val.i = phi i32 [ %2, %bb.p ], [ %i.fz, %._crit_edge208 ]
  %.076.lcssa = phi ptr [ %.0.i298, %bb.p ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !296 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 20
  %i.es = load i32, ptr %i.er, align 4, !tbaa !295 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, label %bb.q, !prof !21

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
  %.01519.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %.01518.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %.preheader.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.fg, %bb.r ], [ %.01519.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 7 uses
  %i.eu = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !400 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !400 ; 2 uses
  %i.ey = sub i32 %i.ev, %i.ex
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ev, %i.ex
  %i.ez = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = sub i32 %i.fa, %i.fc
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.fd, i32 %i.ey
  %i.fe = icmp sgt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.fe, label %bb.r, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i.i, i64 12 ; 2 uses
  %i.ff = icmp ult ptr %.015.i.i.i.i.i, %i.et
  br i1 %i.ff, label %.preheader.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, !llvm.loop !1666

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fg = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.fg, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fg, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !1212
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i, align 4
  %i.fh = icmp ugt ptr %i.fg, %i.eq
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i, !llvm.loop !1667

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit: ; preds = %.critedge.i.i.i.i.i, %._crit_edge216, %bb.q
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fj = mul i32 %.val.i, -1640531535
  %i.fk = call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.cg

bb.s:                                             ; preds = %.lr.ph215, %._crit_edge208
  %i.fl = phi ptr [ %i.bx, %.lr.ph215 ], [ %i.fx, %._crit_edge208 ] ; 2 uses
  %i.fm = phi ptr [ %i.bx, %.lr.ph215 ], [ %i.fy, %._crit_edge208 ] ; 2 uses
  %i.fn = phi i32 [ %2, %.lr.ph215 ], [ %i.fz, %._crit_edge208 ] ; 2 uses
  %.074213 = phi ptr [ %i.ei, %.lr.ph215 ], [ %i.ga, %._crit_edge208 ] ; 4 uses
  %.075212 = phi i32 [ 0, %.lr.ph215 ], [ %i.fq, %._crit_edge208 ] ; 2 uses
  %.076211 = phi ptr [ %.0.i298, %.lr.ph215 ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.074213, i64 12
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !1656 ; 3 uses
  %i.fq = add i32 %i.fp, %.075212
  %i.fr = getelementptr inbounds nuw i8, ptr %.074213, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !426 ; 2 uses
  %i.ft = zext i32 %i.fp to i64
  %.idx219 = shl nuw nsw i64 %i.ft, 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.idx219
  %.not82202 = icmp eq i32 %i.fp, 0
  br i1 %.not82202, label %._crit_edge208, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %bb.s
  %i.fv = load i32, ptr %.074213, align 8, !tbaa !1642
  %i.fw = add i32 %i.fv, %.075212
  br label %.lr.ph207

._crit_edge208:                                   ; preds = %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118, %bb.s
  %i.fx = phi ptr [ %i.fl, %bb.s ], [ %i.mq, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ]
  %i.fy = phi ptr [ %i.fm, %bb.s ], [ %i.mq, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ]
  %i.fz = phi i32 [ %i.fn, %bb.s ], [ %i.nd, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.076211, %bb.s ], [ %.2, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.074213, i64 24 ; 2 uses
  %.not81 = icmp eq ptr %i.ga, %i.el
  br i1 %.not81, label %._crit_edge216, label %bb.s

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118
  %i.gb = phi ptr [ %i.mq, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fl, %.lr.ph207.preheader ]
  %i.gc = phi ptr [ %i.mq, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fm, %.lr.ph207.preheader ] ; 2 uses
  %i.gd = phi i32 [ %i.nd, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fn, %.lr.ph207.preheader ] ; 2 uses
  %.073205.in = phi i32 [ %.073205, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fw, %.lr.ph207.preheader ]
  %.072204 = phi ptr [ %i.ua, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fs, %.lr.ph207.preheader ] ; 2 uses
  %.1203 = phi ptr [ %.2, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %.076211, %.lr.ph207.preheader ]
  %.073205 = add i32 %.073205.in, 1               ; 3 uses
  %i.ge = load i32, ptr %.072204, align 4, !tbaa !137 ; 4 uses
  br i1 %i.j, label %bb.t, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit97

bb.t:                                             ; preds = %.lr.ph207
  %i.gf = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef 8) #18 ; 11 uses
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %_ZN5graph6Lookup25create_extension_subtableERNS_24gsubgpos_graph_context_tEjj.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gh = load ptr, ptr %i.k, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !1354
  %.not.i.i86 = icmp ult i32 %i.gf, %i.gj
  br i1 %.not.i.i86, label %bb.w, label %bb.v, !prof !142

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87

bb.w:                                             ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !1362
  %i.gm = zext i32 %i.gf to i64
  %i.gn = getelementptr inbounds nuw [216 x i8], ptr %i.gl, i64 %i.gm
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87: ; preds = %bb.w, %bb.v
  %.0.i.i88 = phi ptr [ @_hb_CrapPool, %bb.v ], [ %i.gn, %bb.w ] ; 6 uses
  %i.go = load ptr, ptr %.0.i.i88, align 8, !tbaa !1425 ; 3 uses
  store i16 256, ptr %i.go, align 1, !tbaa !331
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  store i16 %i.en, ptr %i.gp, align 1, !tbaa !331
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 0, ptr %i.gq, align 1, !tbaa !331
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 20 ; 4 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !295 ; 2 uses
  %i.gt = add i32 %i.gs, 1                        ; 6 uses
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173, label %bb.x, !prof !21

bb.x:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 16 ; 4 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !292 ; 5 uses
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173, label %bb.y, !prof !21

bb.y:                                             ; preds = %bb.x
  %.not.i119 = icmp samesign ugt i32 %i.gt, %i.gw
  br i1 %.not.i119, label %.preheader.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread, !prof !21

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %.043.i = phi i32 [ %i.ha, %.preheader.i ], [ %i.gw, %bb.y ] ; 2 uses
  %i.gy = lshr i32 %.043.i, 1
  %i.gz = add nuw i32 %.043.i, 8
  %i.ha = add nuw i32 %i.gz, %i.gy                ; 7 uses
  %i.hb = icmp ugt i32 %i.gt, %i.ha
  br i1 %i.hb, label %.preheader.i, label %.thread.i, !llvm.loop !1219

.thread.i:                                        ; preds = %.preheader.i
  %i.hc = icmp ugt i32 %i.ha, 357913941
  br i1 %i.hc, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176, label %bb.z, !prof !21

bb.z:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.gw, 0
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 24 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !296 ; 2 uses
  br i1 %.not49.i, label %bb.aa, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hf = zext nneg i32 %i.ha to i64
  %i.hg = mul nuw nsw i64 %i.hf, 12
  %i.hh = call ptr @hb_malloc(i64 noundef %i.hg) #18 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.ac, !prof !21

bb.ac:                                            ; preds = %bb.ab
  %i.hi = load i32, ptr %i.gr, align 4, !tbaa !295 ; 2 uses
  %.not.i.i.i.i123 = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i.i.i123, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  %i.hj = zext i32 %i.hi to i64
  %i.hk = mul nuw nsw i64 %i.hj, 12
  %i.hl = load ptr, ptr %i.hd, align 8, !tbaa !296
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr readonly align 1 %i.hl, i64 %i.hk, i1 false), !alias.scope !1668
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.aa, %bb.z
  %i.hm = phi ptr [ null, %bb.aa ], [ %i.he, %bb.z ]
  %i.hn = zext nneg i32 %i.ha to i64
  %i.ho = mul nuw nsw i64 %i.hn, 12
  %i.hp = call ptr @hb_realloc(ptr noundef %i.hm, i64 noundef %i.ho) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.hp, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.ab
  %i.hq = load i32, ptr %i.gv, align 8, !tbaa !292 ; 2 uses
  %.not23.i = icmp ugt i32 %i.ha, %i.hq
  br i1 %.not23.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread, !prof !89

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i122.ph.in = phi i32 [ %i.gw, %.thread.i ], [ %i.hq, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i122.ph = xor i32 %.sink.i122.ph.in, -1
  store i32 %.sink.i122.ph, ptr %i.gv, align 8, !tbaa !292
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit: ; preds = %bb.ac, %bb.ad, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.hp, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.hh, %bb.ad ], [ %i.hh, %bb.ac ]
  store ptr %.1.i.i42.i, ptr %i.hd, align 8, !tbaa !296
  store i32 %i.ha, ptr %i.gv, align 8, !tbaa !292
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %bb.y, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit
  %i.hr = load i32, ptr %i.gr, align 4, !tbaa !295 ; 3 uses
  %i.hs = icmp ugt i32 %i.gt, %i.hr
  br i1 %i.hs, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread
  %i.ht = sub nuw nsw i32 %i.gt, %i.hr
  %i.hu = mul i32 %i.ht, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af, !prof !21

bb.af:                                            ; preds = %bb.ae
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !296
  %i.hx = zext nneg i32 %i.hr to i64
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = zext i32 %i.hu to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.hy, i8 0, i64 %i.hz, i1 false)
  br label %bb.ag

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173: ; preds = %bb.x, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread
end_hunk_2
begin_hunk_3_@_ZNK5graph20LigatureSubstFormat111clone_rangeERNS_24gsubgpos_graph_context_tEj11hb_vector_tIjLb0EEjj:bb.a
  %i.cr = load i16, ptr %i.d, align 1, !tbaa !264
  %i.cs = call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext i16 %i.cs to i64
  %.not.i162 = icmp samesign ult i64 %indvars.iv, %i.ct
  br i1 %.not.i162, label %bb.q, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, !prof !142

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.p, %bb.q
  %.0.i163 = phi ptr [ %i.cu, %bb.q ], [ @_hb_NullPool, %bb.p ]
  %i.cv = call noundef i32 @_ZN5graph7graph_t24mutable_index_for_offsetEjPKv(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, i32 noundef %2, ptr noundef nonnull %.0.i163), !noalias !2628 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !1474, !noalias !2631
  %.not.i.i164 = icmp ult i32 %i.cv, %i.cx
  br i1 %.not.i.i164, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, label %.thread307

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1362, !noalias !2631
  %i.da = zext i32 %i.cv to i64
  %i.db = getelementptr inbounds nuw [216 x i8], ptr %i.cz, i64 %i.da ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1425, !noalias !2631 ; 5 uses
  %.not4.i.i = icmp eq ptr %i.dc, null
  br i1 %.not4.i.i, label %.thread307, label %bb.r

bb.r:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1424, !noalias !2631
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp ult i64 %i.dh, 2
  br i1 %i.di, label %.thread307, label %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i

_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i: ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !noalias !2631, !srcloc !263
  %i.dj = load i16, ptr %i.dc, align 1, !tbaa !264, !noalias !2631
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj)
  %i.dl = zext i16 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 1
  %i.dn = add nuw nsw i64 %i.dm, 2
  %.not7.i.i = icmp ult i64 %i.dh, %i.dn
  br i1 %.not7.i.i, label %.thread307, label %_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit

_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit: ; preds = %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !296 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 20 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !295 ; 2 uses
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
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !400 ; 2 uses
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
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !400 ; 2 uses
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
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !400 ; 2 uses
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
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422
  %i.fa = load i16, ptr %i.d, align 1, !tbaa !264
  %i.fb = call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i64
  %.not.i169 = icmp samesign ult i64 %indvars.iv, %i.fc
  br i1 %.not.i169, label %bb.x, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171, !prof !142

bb.x:                                             ; preds = %bb.w
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171: ; preds = %bb.w, %bb.x
  %.0.i170 = phi ptr [ %i.fd, %bb.x ], [ @_hb_NullPool, %bb.w ]
  %i.fe = load i16, ptr %i.v, align 1, !tbaa !264
  %i.ff = call noundef i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32
  %.not.i172 = icmp ult i32 %.0128327, %i.fg
  br i1 %.not.i172, label %bb.z, label %bb.y, !prof !142

bb.y:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

bb.z:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.fh = zext nneg i32 %.0128327 to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.fh
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.y, %bb.z
  %.0.i173 = phi ptr [ @_hb_CrapPool, %bb.y ], [ %i.fi, %bb.z ]
  %i.fj = call noundef i32 @_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_(ptr noundef nonnull align 8 dereferenceable(88) %i.ez, i32 noundef %2, ptr noundef nonnull %.0.i170, i32 noundef %i.j, ptr noundef nonnull %.0.i173) ; 2 uses
  %i.fk = load i16, ptr %i.dc, align 1, !tbaa !264
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = load i32, ptr %i.dq, align 4, !tbaa !1237 ; 5 uses
  %.not.i174 = icmp ult i32 %i.fn, %i.fm
  br i1 %.not.i174, label %bb.aa, label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

bb.aa:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.fo = sub nuw nsw i32 %i.fm, %i.fn
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !296 ; 4 uses
  %.not.i.i.i.i.i175 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i.i.i175, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, label %bb.ab, !prof !21

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
  %.01519.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ %.01518.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %.preheader.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi ptr [ %i.gd, %bb.ac ], [ %.01519.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 7 uses
  %i.fr = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !400 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !400 ; 2 uses
  %i.fv = sub i32 %i.fs, %i.fu
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fs, %i.fu
  %i.fw = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -4
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 8
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = sub i32 %i.fx, %i.fz
  %.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 %i.ga, i32 %i.fv
  %i.gb = icmp sgt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.gb, label %bb.ac, label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.gc = icmp ult ptr %.015.i.i.i.i.i.i, %i.fq
  br i1 %i.gc, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, !llvm.loop !1666

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gd = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.gd, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gd, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !1212
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i.i, align 4
  %i.ge = icmp ugt ptr %i.gd, %i.fp
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !1667

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.gf = load ptr, ptr %i.do, align 8, !tbaa !296 ; 2 uses
  %i.gg = load i32, ptr %i.dq, align 4, !tbaa !295 ; 3 uses
  %.not1920.i = icmp eq i32 %i.gg, 0
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i177.preheader

.lr.ph.i177.preheader:                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gh = zext i32 %i.gg to i64
  %.idx.i176 = mul nuw nsw i64 %i.gh, 12
  %i.gi = add nsw i64 %.idx.i176, -12             ; 2 uses
  %i.gj = udiv i64 %i.gi, 12
  %i.gk = add nuw nsw i64 %i.gj, 1                ; 2 uses
  %xtraiter444 = and i64 %i.gk, 7                 ; 3 uses
  %i.gl = icmp ult i64 %i.gi, 84
  br i1 %i.gl, label %.lr.ph.i177.epil.preheader, label %.lr.ph.i177.preheader.new

.lr.ph.i177.preheader.new:                        ; preds = %.lr.ph.i177.preheader
  %unroll_iter447 = and i64 %i.gk, 4611686018427387896
  br label %.lr.ph.i177

._crit_edge.loopexit.i178.unr-lcssa:              ; preds = %.lr.ph.i177
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil.preheader

.lr.ph.i177.epil.preheader:                       ; preds = %._crit_edge.loopexit.i178.unr-lcssa, %.lr.ph.i177.preheader
  %.022.i.epil.init = phi ptr [ %i.gf, %.lr.ph.i177.preheader ], [ %i.hn, %._crit_edge.loopexit.i178.unr-lcssa ]
  %.01821.i.epil.init = phi i32 [ 2, %.lr.ph.i177.preheader ], [ %i.hm, %._crit_edge.loopexit.i178.unr-lcssa ]
  %lcmp.mod446 = icmp ne i64 %xtraiter444, 0
  call void @llvm.assume(i1 %lcmp.mod446)
  br label %.lr.ph.i177.epil

.lr.ph.i177.epil:                                 ; preds = %.lr.ph.i177.epil, %.lr.ph.i177.epil.preheader
  %.022.i.epil = phi ptr [ %i.go, %.lr.ph.i177.epil ], [ %.022.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %.01821.i.epil = phi i32 [ %i.gn, %.lr.ph.i177.epil ], [ %.01821.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i177.epil ], [ 0, %.lr.ph.i177.epil.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 4
  store i32 %.01821.i.epil, ptr %i.gm, align 4, !tbaa !400
  %i.gn = add i32 %.01821.i.epil, 2
  %i.go = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter444
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil, !llvm.loop !2634

._crit_edge.loopexit.i178:                        ; preds = %.lr.ph.i177.epil, %._crit_edge.loopexit.i178.unr-lcssa
  %i.gp = trunc i32 %i.gg to i16
  %i.gq = call i16 @llvm.bswap.i16(i16 %i.gp)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i178, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gr = phi i16 [ %i.gq, %._crit_edge.loopexit.i178 ], [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i ]
  store i16 %i.gr, ptr %i.dc, align 1, !tbaa !331
  %i.gs = shl nuw nsw i32 %i.fo, 1
  %i.gt = load ptr, ptr %i.dd, align 8, !tbaa !1207
  %i.gu = zext nneg i32 %i.gs to i64
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv
  store ptr %i.gw, ptr %i.dd, align 8, !tbaa !1207
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.022.i = phi ptr [ %i.gf, %.lr.ph.i177.preheader.new ], [ %i.hn, %.lr.ph.i177 ] ; 9 uses
  %.01821.i = phi i32 [ 2, %.lr.ph.i177.preheader.new ], [ %i.hm, %.lr.ph.i177 ] ; 9 uses
  %niter448 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter448.next.7, %.lr.ph.i177 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  store i32 %.01821.i, ptr %i.gx, align 4, !tbaa !400
  %i.gy = add nuw nsw i32 %.01821.i, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !400
  %i.ha = add nuw nsw i32 %.01821.i, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.022.i, i64 28
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !400
  %i.hc = add nuw nsw i32 %.01821.i, 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !400
  %i.he = add nuw nsw i32 %.01821.i, 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.022.i, i64 52
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !400
  %i.hg = add nuw nsw i32 %.01821.i, 10
  %i.hh = getelementptr inbounds nuw i8, ptr %.022.i, i64 64
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !400
  %i.hi = add nuw nsw i32 %.01821.i, 12
  %i.hj = getelementptr inbounds nuw i8, ptr %.022.i, i64 76
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !400
  %i.hk = add i32 %.01821.i, 14
  %i.hl = getelementptr inbounds nuw i8, ptr %.022.i, i64 88
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !400
  %i.hm = add i32 %.01821.i, 16                   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.022.i, i64 96 ; 2 uses
  %niter448.next.7 = add i64 %niter448, 8         ; 2 uses
  %niter448.ncmp.7 = icmp eq i64 %niter448.next.7, %unroll_iter447
  br i1 %niter448.ncmp.7, label %._crit_edge.loopexit.i178.unr-lcssa, label %.lr.ph.i177

bb.ad:                                            ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %.sroa.speculated266 = call i32 @llvm.umax.i32(i32 %4, i32 %.sroa.speculated248)
  %i.ho = sub i32 %.sroa.speculated266, %.0135326 ; 2 uses
  %.sroa.speculated257 = call i32 @llvm.umin.i32(i32 %5, i32 %.sroa.speculated)
  %i.hp = sub i32 %.sroa.speculated257, %.0135326 ; 2 uses
  %i.hq = sub i32 %i.hp, %i.ho                    ; 2 uses
  %i.hr = shl i32 %i.hq, 1
  %i.hs = add i32 %i.hr, 2
  %i.ht = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %i.hs) #18 ; 8 uses
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %.thread307, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !1354
  %.not.i.i.i181 = icmp ult i32 %i.ht, %i.hx
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = zext i32 %i.ht to i64
  %i.ib = getelementptr inbounds nuw [216 x i8], ptr %i.hz, i64 %i.ia
  %.0.i.i.i182 = select i1 %.not.i.i.i181, ptr %i.ib, ptr @_hb_NullPool, !prof !142
  %i.ic = load ptr, ptr %.0.i.i.i182, align 8, !tbaa !399
  %i.id = trunc i32 %i.hq to i16
  %i.ie = call i16 @llvm.bswap.i16(i16 %i.id)
  store i16 %i.ie, ptr %i.ic, align 1, !tbaa !331
  %i.if = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422
  %i.ig = shl i32 %i.ho, 1
  %i.ih = add i32 %i.ig, 2
  %i.ii = shl i32 %i.hp, 1
  %i.ij = add i32 %i.ii, 2
  call void @_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj(ptr noundef nonnull align 8 dereferenceable(88) %i.if, i32 noundef %i.cv, i32 noundef %i.ih, i32 noundef %i.ij, i32 noundef %i.ht, i32 noundef 2)
  %i.ik = trunc nuw i64 %indvars.iv to i32
  %spec.select154 = call i32 @llvm.umin.i32(i32 %i.ik, i32 %.0119328)
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 3 uses
  %i.im = load i16, ptr %i.v, align 1, !tbaa !264
  %i.in = call noundef i16 @llvm.bswap.i16(i16 %i.im)
  %i.io = zext i16 %i.in to i32
  %.not.i183 = icmp ult i32 %.0128327, %i.io
  br i1 %.not.i183, label %bb.ag, label %bb.af, !prof !142

bb.af:                                            ; preds = %bb.ae
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

bb.ag:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.ip = zext nneg i32 %.0128327 to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.ip
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185: ; preds = %bb.af, %bb.ag
  %.0.i184 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.iq, %bb.ag ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !1354
  %.not.i.i186 = icmp ult i32 %i.j, %i.is
  br i1 %.not.i.i186, label %bb.ai, label %bb.ah, !prof !142

bb.ah:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.ai:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1362
  %i.iv = getelementptr inbounds nuw [216 x i8], ptr %i.iu, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i187 = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.iv, %bb.ai ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 20 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !295 ; 2 uses
  %i.iy = add i32 %i.ix, 1                        ; 5 uses
  %i.iz = icmp slt i32 %i.iy, 0
  br i1 %i.iz, label %bb.an, label %bb.aj, !prof !21

bb.aj:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 16
  %i.jb = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i32 noundef %i.iy, i1 noundef zeroext false)
  br i1 %i.jb, label %bb.ak, label %bb.an, !prof !396

bb.ak:                                            ; preds = %bb.aj
  %i.jc = load i32, ptr %i.iw, align 4, !tbaa !295 ; 3 uses
  %i.jd = icmp ugt i32 %i.iy, %i.jc
  br i1 %i.jd, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.je = sub nuw nsw i32 %i.iy, %i.jc
  %i.jf = mul i32 %i.je, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !21

bb.am:                                            ; preds = %bb.al
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !296
  %i.ji = zext nneg i32 %i.jc to i64
end_hunk_3
begin_hunk_4_@_ZNK2OT11SegmentMaps6subsetEP19hb_subset_context_tjP11hb_vector_tINS_12AxisValueMapELb0EE:bb.a

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %bb.n, %bb.m
  %i.eb = phi ptr [ null, %bb.n ], [ %.sroa.46.0.lcssa379389396, %bb.m ]
  %i.ec = shl nuw i32 %i.ds, 2
  %i.ed = zext i32 %i.ec to i64
  %i.ee = call ptr @hb_realloc(ptr noundef %i.eb, i64 noundef %i.ed) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.ee, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !118

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %bb.o, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.ef = xor i32 %.sroa.0178.0.lcssa383387398, -1
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit: ; preds = %bb.k, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, %.critedge.i87
  %.sroa.46.0.lcssa379390 = phi ptr [ %.sroa.46.2, %bb.k ], [ %.sroa.46.0.lcssa379389396, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.46.0.lcssa379389396, %.critedge.i87 ]
  %.sroa.23.0.lcssa382 = phi i32 [ %.sroa.23.2, %bb.k ], [ %.sroa.23.0.lcssa381388397, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i ], [ %.sroa.23.0.lcssa381388397, %.critedge.i87 ]
  %.sroa.0178.13 = phi i32 [ %.sroa.0178.2, %bb.k ], [ %i.ef, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i ], [ %i.dv, %.critedge.i87 ]
  %i.eg = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.eg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %._crit_edge, %bb.p, %bb.q, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.l
  %.sroa.23.0.lcssa380 = phi i32 [ %.sroa.23.2, %bb.l ], [ 0, %bb.p ], [ %.sroa.23.0.lcssa381388397, %bb.q ], [ %.sroa.23.0.lcssa381388397, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %.sroa.23.2, %._crit_edge ]
  %.pre-phi = phi i32 [ %.pre, %bb.l ], [ %i.dp, %bb.p ], [ %i.dp, %bb.q ], [ %i.dp, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %.pre, %._crit_edge ]
  %.sroa.46.5 = phi ptr [ %.sroa.46.2, %bb.l ], [ %i.dy, %bb.p ], [ %i.dy, %bb.q ], [ %i.ee, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %.sroa.46.2, %._crit_edge ] ; 2 uses
  %.sroa.0178.5 = phi i32 [ %.sroa.0178.2, %bb.l ], [ %i.ds, %bb.p ], [ %i.ds, %bb.q ], [ %i.ds, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ %.sroa.0178.2, %._crit_edge ]
  %i.eh = zext i32 %.sroa.23.0.lcssa380 to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.5, i64 %i.eh
  store i32 12583104, ptr %i.ei, align 1, !tbaa !331
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit: ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit, %.critedge.i
  %.sroa.46.6 = phi ptr [ %.sroa.46.5, %.critedge.i ], [ %.sroa.46.0.lcssa379390, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit ] ; 6 uses
  %.sroa.23.3 = phi i32 [ %.pre-phi, %.critedge.i ], [ %.sroa.23.0.lcssa382, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit ] ; 6 uses
  %.sroa.0178.6 = phi i32 [ %.sroa.0178.5, %.critedge.i ], [ %.sroa.0178.13, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit ] ; 10 uses
  %.not.i59 = icmp slt i32 %.sroa.23.3, %.sroa.0178.6
  %.pre338 = add i32 %.sroa.23.3, 1               ; 6 uses
  br i1 %.not.i59, label %.critedge.i63, label %bb.r

bb.r:                                             ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit
  %i.ej = icmp slt i32 %.sroa.0178.6, 0
  br i1 %i.ej, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %.not.i88 = icmp ugt i32 %.pre338, %.sroa.0178.6
  br i1 %.not.i88, label %.preheader.i90, label %.critedge.i63, !prof !21

.preheader.i90:                                   ; preds = %bb.s, %.preheader.i90
  %.043.i91 = phi i32 [ %i.em, %.preheader.i90 ], [ %.sroa.0178.6, %bb.s ] ; 2 uses
  %i.ek = lshr i32 %.043.i91, 1
  %i.el = add i32 %.043.i91, 8
  %i.em = add i32 %i.el, %i.ek                    ; 8 uses
  %i.en = icmp ugt i32 %.pre338, %i.em
  br i1 %i.en, label %.preheader.i90, label %.thread.i92, !llvm.loop !3349

.thread.i92:                                      ; preds = %.preheader.i90
  %i.eo = icmp ugt i32 %i.em, 1073741823
  br i1 %i.eo, label %.critedge.i107, label %bb.t, !prof !21

.critedge.i107:                                   ; preds = %.thread.i92
  %i.ep = xor i32 %.sroa.0178.6, -1
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108

bb.t:                                             ; preds = %.thread.i92
  %.not49.i94 = icmp eq i32 %.sroa.0178.6, 0
  br i1 %.not49.i94, label %bb.u, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95

bb.u:                                             ; preds = %bb.t
  %.not9.i.i.i104 = icmp eq ptr %.sroa.46.6, null
  br i1 %.not9.i.i.i104, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = shl nuw i32 %i.em, 2
  %i.er = zext i32 %i.eq to i64
  %i.es = call ptr @hb_malloc(i64 noundef %i.er) #18 ; 4 uses
  %.not10.i.i.i105 = icmp eq ptr %i.es, null
  br i1 %.not10.i.i.i105, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i102, label %bb.w, !prof !21

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i106 = icmp eq i32 %.sroa.23.3, 0
  br i1 %.not.i.i.i.i106, label %.critedge.i63, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.et = zext i32 %.sroa.23.3 to i64
  %i.eu = shl nuw nsw i64 %i.et, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.es, ptr nonnull readonly align 1 %.sroa.46.6, i64 %i.eu, i1 false), !alias.scope !3354
  br label %.critedge.i63

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95: ; preds = %bb.u, %bb.t
  %i.ev = phi ptr [ null, %bb.u ], [ %.sroa.46.6, %bb.t ]
  %i.ew = shl nuw i32 %i.em, 2
  %i.ex = zext i32 %i.ew to i64
  %i.ey = call ptr @hb_realloc(ptr noundef %i.ev, i64 noundef %i.ex) #18 ; 2 uses
  %.not22.i96 = icmp eq ptr %i.ey, null
  br i1 %.not22.i96, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i102, label %.critedge.i63, !prof !118

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i102: ; preds = %bb.v, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95
  %i.ez = xor i32 %.sroa.0178.6, -1
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108: ; preds = %bb.r, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i102, %.critedge.i107
  %.sroa.0178.14 = phi i32 [ %.sroa.0178.6, %bb.r ], [ %i.ez, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i102 ], [ %i.ep, %.critedge.i107 ]
  %i.fa = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.fa, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64

.critedge.i63:                                    ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit, %bb.w, %bb.x, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95, %bb.s
  %.pre-phi339 = phi i32 [ %.pre338, %bb.s ], [ 1, %bb.w ], [ %.pre338, %bb.x ], [ %.pre338, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95 ], [ %.pre338, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit ]
  %.sroa.46.7 = phi ptr [ %.sroa.46.6, %bb.s ], [ %i.es, %bb.w ], [ %i.es, %bb.x ], [ %i.ey, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95 ], [ %.sroa.46.6, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit ] ; 2 uses
  %.sroa.0178.7 = phi i32 [ %.sroa.0178.6, %bb.s ], [ %i.em, %bb.w ], [ %i.em, %bb.x ], [ %i.em, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i95 ], [ %.sroa.0178.6, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit ]
  %i.fb = zext i32 %.sroa.23.3 to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.7, i64 %i.fb
  store i32 0, ptr %i.fc, align 1, !tbaa !331
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64: ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108, %.critedge.i63
  %.sroa.46.8 = phi ptr [ %.sroa.46.7, %.critedge.i63 ], [ %.sroa.46.6, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108 ] ; 6 uses
  %.sroa.23.4 = phi i32 [ %.pre-phi339, %.critedge.i63 ], [ %.sroa.23.3, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108 ] ; 6 uses
  %.sroa.0178.8 = phi i32 [ %.sroa.0178.7, %.critedge.i63 ], [ %.sroa.0178.14, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit108 ] ; 10 uses
  %.not.i65 = icmp slt i32 %.sroa.23.4, %.sroa.0178.8
  %.pre340 = add i32 %.sroa.23.4, 1               ; 6 uses
  br i1 %.not.i65, label %.critedge.i69, label %bb.y

bb.y:                                             ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64
  %i.fd = icmp slt i32 %.sroa.0178.8, 0
  br i1 %i.fd, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129, label %bb.z, !prof !21

bb.z:                                             ; preds = %bb.y
  %.not.i109 = icmp ugt i32 %.pre340, %.sroa.0178.8
  br i1 %.not.i109, label %.preheader.i111, label %.critedge.i69, !prof !21

.preheader.i111:                                  ; preds = %bb.z, %.preheader.i111
  %.043.i112 = phi i32 [ %i.fg, %.preheader.i111 ], [ %.sroa.0178.8, %bb.z ] ; 2 uses
  %i.fe = lshr i32 %.043.i112, 1
  %i.ff = add i32 %.043.i112, 8
  %i.fg = add i32 %i.ff, %i.fe                    ; 8 uses
  %i.fh = icmp ugt i32 %.pre340, %i.fg
  br i1 %i.fh, label %.preheader.i111, label %.thread.i113, !llvm.loop !3349

.thread.i113:                                     ; preds = %.preheader.i111
  %i.fi = icmp ugt i32 %i.fg, 1073741823
  br i1 %i.fi, label %.critedge.i128, label %bb.aa, !prof !21

.critedge.i128:                                   ; preds = %.thread.i113
  %i.fj = xor i32 %.sroa.0178.8, -1
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129

bb.aa:                                            ; preds = %.thread.i113
  %.not49.i115 = icmp eq i32 %.sroa.0178.8, 0
  br i1 %.not49.i115, label %bb.ab, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116

bb.ab:                                            ; preds = %bb.aa
  %.not9.i.i.i125 = icmp eq ptr %.sroa.46.8, null
  br i1 %.not9.i.i.i125, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = shl nuw i32 %i.fg, 2
  %i.fl = zext i32 %i.fk to i64
  %i.fm = call ptr @hb_malloc(i64 noundef %i.fl) #18 ; 4 uses
  %.not10.i.i.i126 = icmp eq ptr %i.fm, null
  br i1 %.not10.i.i.i126, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i123, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i127 = icmp eq i32 %.sroa.23.4, 0
  br i1 %.not.i.i.i.i127, label %.critedge.i69, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %bb.ad
  %i.fn = zext i32 %.sroa.23.4 to i64
  %i.fo = shl nuw nsw i64 %i.fn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %.sroa.46.8, i64 %i.fo, i1 false), !alias.scope !3358
  br label %.critedge.i69

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116: ; preds = %bb.ab, %bb.aa
  %i.fp = phi ptr [ null, %bb.ab ], [ %.sroa.46.8, %bb.aa ]
  %i.fq = shl nuw i32 %i.fg, 2
  %i.fr = zext i32 %i.fq to i64
  %i.fs = call ptr @hb_realloc(ptr noundef %i.fp, i64 noundef %i.fr) #18 ; 2 uses
  %.not22.i117 = icmp eq ptr %i.fs, null
  br i1 %.not22.i117, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i123, label %.critedge.i69, !prof !118

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i123: ; preds = %bb.ac, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116
  %i.ft = xor i32 %.sroa.0178.8, -1
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129: ; preds = %bb.y, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i123, %.critedge.i128
  %.sroa.0178.15 = phi i32 [ %.sroa.0178.8, %bb.y ], [ %i.ft, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i123 ], [ %i.fj, %.critedge.i128 ]
  %i.fu = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.fu, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit70

.critedge.i69:                                    ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64, %bb.ad, %bb.ae, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116, %bb.z
  %.pre-phi341 = phi i32 [ %.pre340, %bb.z ], [ 1, %bb.ad ], [ %.pre340, %bb.ae ], [ %.pre340, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.pre340, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64 ]
  %.sroa.46.9 = phi ptr [ %.sroa.46.8, %bb.z ], [ %i.fm, %bb.ad ], [ %i.fm, %bb.ae ], [ %i.fs, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.sroa.46.8, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64 ] ; 2 uses
  %.sroa.0178.9 = phi i32 [ %.sroa.0178.8, %bb.z ], [ %i.fg, %bb.ad ], [ %i.fg, %bb.ae ], [ %i.fg, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i116 ], [ %.sroa.0178.8, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit64 ]
  %i.fv = zext i32 %.sroa.23.4 to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.9, i64 %i.fv
  store i32 4194368, ptr %i.fw, align 1, !tbaa !331
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit70

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit70: ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129, %.critedge.i69
  %.sroa.46.10 = phi ptr [ %.sroa.46.9, %.critedge.i69 ], [ %.sroa.46.8, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129 ] ; 15 uses
  %.sroa.23.5 = phi i32 [ %.pre-phi341, %.critedge.i69 ], [ %.sroa.23.4, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129 ] ; 7 uses
  %.sroa.0178.10 = phi i32 [ %.sroa.0178.9, %.critedge.i69 ], [ %.sroa.0178.15, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit129 ] ; 12 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.23.5, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit.thread401, label %bb.af, !prof !21

bb.af:                                            ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit70
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %.sroa.23.5 to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopIN2OT12AxisValueMapEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef %.sroa.46.10, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i)
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 2
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.46.10, i64 %.idx.i.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %.sroa.23.5, 1
  br i1 %.not1.i.i.i.i, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit.thread, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %bb.af
  %.01517.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.46.10, i64 4
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.critedge.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i
  %.01518.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %.01517.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ] ; 3 uses
  %.pre.i.i.i.i.i = load i16, ptr %.01518.i.i.i.i.i, align 1, !tbaa !264
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ai, %.preheader.i.i.i.i.i
  %i.fy = phi i16 [ %i.gu, %bb.ai ], [ %.pre.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.016.i.i.i.i.i = phi ptr [ %i.fz, %bb.ai ], [ %.01518.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 5 uses
  %i.fz = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -4 ; 5 uses
  %i.ga = load i16, ptr %i.fz, align 1, !tbaa !264 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.ga, %i.fy
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gb = call noundef i16 @llvm.bswap.i16(i16 %i.fy)
  %i.gc = call noundef i16 @llvm.bswap.i16(i16 %i.ga)
  %i.gd = sext i16 %i.gb to i32
  %i.ge = sext i16 %i.gc to i32
  %i.gf = sub nsw i32 %i.ge, %i.gd
  br label %_ZZN10hb_array_tIN2OT12AxisValueMapEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.gg = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -2
  %i.gh = load i16, ptr %i.gg, align 1, !tbaa !264
  %i.gi = call noundef i16 @llvm.bswap.i16(i16 %i.gh)
  %i.gj = sext i16 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 2
  %i.gl = load i16, ptr %i.gk, align 1, !tbaa !264
  %i.gm = call noundef i16 @llvm.bswap.i16(i16 %i.gl)
  %i.gn = sext i16 %i.gm to i32
  %i.go = sub nsw i32 %i.gj, %i.gn
  br label %_ZZN10hb_array_tIN2OT12AxisValueMapEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i.i.i.i.i

_ZZN10hb_array_tIN2OT12AxisValueMapEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gf, %bb.ag ], [ %i.go, %bb.ah ]
  %i.gp = icmp sgt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.gp, label %bb.ai, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.ai, %_ZZN10hb_array_tIN2OT12AxisValueMapEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i.i.i.i.i
  %.015.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01518.i.i.i.i.i, i64 4 ; 2 uses
  %i.gq = icmp ult ptr %.015.i.i.i.i.i, %i.fx
  br i1 %i.gq, label %.preheader.i.i.i.i.i, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit, !llvm.loop !3362

bb.ai:                                            ; preds = %_ZZN10hb_array_tIN2OT12AxisValueMapEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i.i.i.i.i
  %i.gr = load i32, ptr %i.fz, align 1, !tbaa !331
  %i.gs = load i32, ptr %.016.i.i.i.i.i, align 1, !tbaa !331 ; 2 uses
  store i32 %i.gs, ptr %i.fz, align 1, !tbaa !331
  store i32 %i.gr, ptr %.016.i.i.i.i.i, align 1, !tbaa !331
  %i.gt = icmp ugt ptr %i.fz, %.sroa.46.10
  %i.gu = trunc i32 %i.gs to i16
  br i1 %i.gt, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i, !llvm.loop !3363

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit: ; preds = %.critedge.i.i.i.i.i
  %i.gv = icmp slt i32 %.sroa.0178.10, 0
  br i1 %i.gv, label %.loopexit, label %bb.au, !prof !21

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit.thread401: ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit70
  %i.gw = icmp slt i32 %.sroa.0178.10, 0
  br i1 %i.gw, label %.loopexit, label %._crit_edge323.thread, !prof !21

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit.thread: ; preds = %bb.af
  %i.gx = icmp slt i32 %.sroa.0178.10, 0
  br i1 %i.gx, label %.loopexit, label %.lr.ph322.preheader, !prof !21

bb.aj:                                            ; preds = %.lr.ph, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76
  %.035315 = phi ptr [ %i.di, %.lr.ph ], [ %i.jk, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76 ] ; 3 uses
  %.sroa.0178.0314 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0178.2, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76 ] ; 13 uses
  %.sroa.23.0313 = phi i32 [ 0, %.lr.ph ], [ %.sroa.23.2, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76 ] ; 9 uses
  %.sroa.46.0312 = phi ptr [ null, %.lr.ph ], [ %.sroa.46.2, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76 ] ; 9 uses
  %i.gy = load i16, ptr %.035315, align 1, !tbaa !264
  %i.gz = call noundef i16 @llvm.bswap.i16(i16 %i.gy)
  %i.ha = sitofp i16 %i.gz to float
  %i.hb = fmul nnan float %i.ha, f0x38800000
  %i.hc = fpext float %i.hb to double             ; 2 uses
  %i.hd = load double, ptr %4, align 16, !tbaa !772
  %i.he = fcmp ugt double %i.hd, %i.hc
  %i.hf = load double, ptr %i.dh, align 16
  %i.hg = fcmp ult double %i.hf, %i.hc
  %.not4.i = select i1 %i.he, i1 true, i1 %i.hg
  br i1 %.not4.i, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hh = load i32, ptr %.035315, align 1, !tbaa !331 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %i.hh, 16
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i16
  %.sroa.0172.0.extract.trunc = trunc i32 %i.hh to i16
  %i.hi = call noundef i16 @llvm.bswap.i16(i16 %.sroa.7.0.extract.trunc)
  %i.hj = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0172.0.extract.trunc)
  %i.hk = insertelement <2 x i16> poison, i16 %i.hj, i64 0
  %i.hl = insertelement <2 x i16> %i.hk, i16 %i.hi, i64 1
  %i.hm = sitofp <2 x i16> %i.hl to <2 x float>
  %i.hn = fmul nnan <2 x float> %i.hm, splat (float f0x38800000)
  %i.ho = fpext <2 x float> %i.hn to <2 x double> ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 0
  %i.hq = call noundef double @_Z16renormalizeValuedRK6TripleRK15TripleDistancesb(double noundef %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i1 noundef zeroext true) #18
  %i.hr = extractelement <2 x double> %i.ho, i64 1
  %i.hs = call noundef double @_Z16renormalizeValuedRK6TripleRK15TripleDistancesb(double noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i1 noundef zeroext true) #18
  %i.ht = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hs, i64 1
  %i.hv = fptrunc <2 x double> %i.hu to <2 x float>
  %i.hw = fmul <2 x float> %i.hv, splat (float 1.638400e+04)
  %i.hx = fadd <2 x float> %i.hw, splat (float 5.000000e-01)
  %i.hy = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.hx)
  %i.hz = fptosi <2 x float> %i.hy to <2 x i16>   ; 3 uses
  %i.ia = sitofp <2 x i16> %i.hz to <2 x float>
  %i.ib = fmul nnan <2 x float> %i.ia, splat (float f0x38800000) ; 3 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0 ; 2 uses
  %i.id = fcmp oeq float %i.ic, -1.000000e+00
  %i.ie = extractelement <2 x float> %i.ib, i64 1 ; 2 uses
  %i.if = fcmp oeq float %i.ie, -1.000000e+00
  %or.cond.i = and i1 %i.id, %i.if
  br i1 %or.cond.i, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ig = fcmp oeq float %i.ic, 0.000000e+00
  %i.ih = fcmp oeq float %i.ie, 0.000000e+00
  %or.cond3.i = and i1 %i.ig, %i.ih
  %i.ii = fcmp une <2 x float> %i.ib, splat (float 1.000000e+00)
  %i.ij = bitcast <2 x i1> %i.ii to i2
  %i.ik = icmp eq i2 %i.ij, 0
  %or.cond = select i1 %or.cond3.i, i1 true, i1 %i.ik
  br i1 %or.cond, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i71 = icmp slt i32 %.sroa.23.0313, %.sroa.0178.0314
  %.pre342 = add i32 %.sroa.23.0313, 1            ; 6 uses
  br i1 %.not.i71, label %.critedge.i75, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.il = icmp slt i32 %.sroa.0178.0314, 0
  br i1 %i.il, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150, label %bb.ao, !prof !21

bb.ao:                                            ; preds = %bb.an
  %.not.i130 = icmp ugt i32 %.pre342, %.sroa.0178.0314
  br i1 %.not.i130, label %.preheader.i132, label %.critedge.i75, !prof !21

.preheader.i132:                                  ; preds = %bb.ao, %.preheader.i132
  %.043.i133 = phi i32 [ %i.io, %.preheader.i132 ], [ %.sroa.0178.0314, %bb.ao ] ; 2 uses
  %i.im = lshr i32 %.043.i133, 1
  %i.in = add i32 %.043.i133, 8
  %i.io = add i32 %i.in, %i.im                    ; 8 uses
  %i.ip = icmp ugt i32 %.pre342, %i.io
  br i1 %i.ip, label %.preheader.i132, label %.thread.i134, !llvm.loop !3349

.thread.i134:                                     ; preds = %.preheader.i132
  %i.iq = icmp ugt i32 %i.io, 1073741823
  br i1 %i.iq, label %.critedge.i149, label %bb.ap, !prof !21

.critedge.i149:                                   ; preds = %.thread.i134
  %i.ir = xor i32 %.sroa.0178.0314, -1
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150

bb.ap:                                            ; preds = %.thread.i134
  %.not49.i136 = icmp eq i32 %.sroa.0178.0314, 0
  br i1 %.not49.i136, label %bb.aq, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137

bb.aq:                                            ; preds = %bb.ap
  %.not9.i.i.i146 = icmp eq ptr %.sroa.46.0312, null
  br i1 %.not9.i.i.i146, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.is = shl nuw i32 %i.io, 2
  %i.it = zext i32 %i.is to i64
  %i.iu = call ptr @hb_malloc(i64 noundef %i.it) #18 ; 4 uses
  %.not10.i.i.i147 = icmp eq ptr %i.iu, null
  br i1 %.not10.i.i.i147, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %bb.as, !prof !21

bb.as:                                            ; preds = %bb.ar
  %.not.i.i.i.i148 = icmp eq i32 %.sroa.23.0313, 0
  br i1 %.not.i.i.i.i148, label %.critedge.i75, label %bb.at, !prof !21

bb.at:                                            ; preds = %bb.as
  %i.iv = zext i32 %.sroa.23.0313 to i64
  %i.iw = shl nuw nsw i64 %i.iv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iu, ptr nonnull readonly align 1 %.sroa.46.0312, i64 %i.iw, i1 false), !alias.scope !3364
  br label %.critedge.i75

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137: ; preds = %bb.aq, %bb.ap
  %i.ix = phi ptr [ null, %bb.aq ], [ %.sroa.46.0312, %bb.ap ]
  %i.iy = shl nuw i32 %i.io, 2
  %i.iz = zext i32 %i.iy to i64
  %i.ja = call ptr @hb_realloc(ptr noundef %i.ix, i64 noundef %i.iz) #18 ; 2 uses
  %.not22.i138 = icmp eq ptr %i.ja, null
  br i1 %.not22.i138, label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, label %.critedge.i75, !prof !118

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144: ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, %bb.ar
  %i.jb = xor i32 %.sroa.0178.0314, -1
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150: ; preds = %bb.an, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144, %.critedge.i149
  %.sroa.0178.16 = phi i32 [ %.sroa.0178.0314, %bb.an ], [ %i.jb, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i144 ], [ %i.ir, %.critedge.i149 ]
  store i32 %i.dn, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76

.critedge.i75:                                    ; preds = %bb.am, %bb.as, %bb.at, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137, %bb.ao
  %.pre-phi343 = phi i32 [ %.pre342, %bb.ao ], [ 1, %bb.as ], [ %.pre342, %bb.at ], [ %.pre342, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.pre342, %bb.am ]
  %.sroa.46.11 = phi ptr [ %.sroa.46.0312, %bb.ao ], [ %i.iu, %bb.as ], [ %i.iu, %bb.at ], [ %i.ja, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.46.0312, %bb.am ] ; 2 uses
  %.sroa.0178.11 = phi i32 [ %.sroa.0178.0314, %bb.ao ], [ %i.io, %bb.as ], [ %i.io, %bb.at ], [ %i.io, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i137 ], [ %.sroa.0178.0314, %bb.am ]
  %i.jc = zext i32 %.sroa.23.0313 to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.46.11, i64 %i.jc
  %i.je = extractelement <2 x i16> %i.hz, i64 1
  %i.jf = zext i16 %i.je to i32
  %i.jg = extractelement <2 x i16> %i.hz, i64 0
  %i.jh = zext i16 %i.jg to i32
  %i.ji = shl nuw i32 %i.jh, 16
  %i.jj = or disjoint i32 %i.ji, %i.jf
  %.sroa.0172.0.insert.insert = call i32 @llvm.bswap.i32(i32 %i.jj)
  store i32 %.sroa.0172.0.insert.insert, ptr %i.jd, align 1, !tbaa !331
  br label %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76

_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE4pushIJRS1_EEEPS1_DpOT_.exit76: ; preds = %bb.ak, %bb.al, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150, %.critedge.i75, %bb.aj
  %.sroa.46.2 = phi ptr [ %.sroa.46.0312, %bb.aj ], [ %.sroa.46.0312, %bb.ak ], [ %.sroa.46.0312, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150 ], [ %.sroa.46.11, %.critedge.i75 ], [ %.sroa.46.0312, %bb.al ] ; 5 uses
  %.sroa.23.2 = phi i32 [ %.sroa.23.0313, %bb.aj ], [ %.sroa.23.0313, %bb.ak ], [ %.sroa.23.0313, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150 ], [ %.pre-phi343, %.critedge.i75 ], [ %.sroa.23.0313, %bb.al ] ; 7 uses
  %.sroa.0178.2 = phi i32 [ %.sroa.0178.0314, %bb.aj ], [ %.sroa.0178.0314, %bb.ak ], [ %.sroa.0178.16, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5allocEjb.exit150 ], [ %.sroa.0178.11, %.critedge.i75 ], [ %.sroa.0178.0314, %bb.al ] ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.035315, i64 4 ; 2 uses
  %.not41 = icmp eq ptr %i.jk, %i.dm
  br i1 %.not41, label %._crit_edge, label %bb.aj

bb.au:                                            ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit
  %i.jl = zext i32 %.sroa.23.5 to i64
  %.idx324 = shl nuw nsw i64 %i.jl, 2
  br label %.lr.ph322.preheader

.lr.ph322.preheader:                              ; preds = %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit.thread, %bb.au
  %.idx324.sink = phi i64 [ %.idx324, %bb.au ], [ 4, %_ZN11hb_vector_tIN2OT12AxisValueMapELb0EE5qsortEv.exit.thread ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.46.10, i64 %.idx324.sink
  br label %.lr.ph322

.lr.ph322:                                        ; preds = %.lr.ph322.preheader, %bb.aw
  %.0320 = phi ptr [ %i.kb, %bb.aw ], [ %.sroa.46.10, %.lr.ph322.preheader ] ; 2 uses
  %i.jn = load ptr, ptr %i.ce, align 8, !tbaa !129 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 44
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !105
  %.not.i.i.i77 = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i.i77, label %bb.av, label %.loopexit, !prof !142

bb.av:                                            ; preds = %.lr.ph322
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !107
end_hunk_4
begin_hunk_5_@llvm.bswap.v2i32
!3148 = distinct !{!3148, !3149, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEKFbvERK4$_19EclI10hb_array_tISB_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_SD_SG_LDnEESM_: argument 0"}
!3149 = distinct !{!3149, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEKFbvERK4$_19EclI10hb_array_tISB_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISM_SD_SG_LDnEESM_"}
!3150 = distinct !{!3150, !3151, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEE24hb_filter_iter_factory_tIMSC_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_: argument 0"}
!3151 = distinct !{!3151, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEE24hb_filter_iter_factory_tIMSC_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_"}
!3152 = distinct !{!3152, !3153, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE10iter_itemsEv: argument 0"}
!3153 = distinct !{!3153, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE10iter_itemsEv"}
!3154 = distinct !{!3154, !3155, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE4iterEv: argument 0"}
!3155 = distinct !{!3155, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE4iterEv"}
!3156 = distinct !{!3156, !3157, !"_ZNK4$_10clIR12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOSD_: argument 0"}
!3157 = distinct !{!3157, !"_ZNK4$_10clIR12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOSD_"}
!3158 = distinct !{!3158, !81}
!3159 = !{!3160, !3162}
!3160 = distinct !{!3160, !3161, !"_ZN24hb_filter_iter_factory_tIZN2OT18glyph_variations_tINS0_7NumTypeILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tS7_EUlRK9hb_pair_tIPK11hb_vector_tINS0_7HBFixedINS2_ILb1EsLj2EEELj14EEELb0EEjEE_RK4$_19EclI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tISF_jLb0EE6item_tEEMSU_KFbvESM_LPv0EEMSU_KFSG_vEL24hb_function_sortedness_t0ELSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSY_0EEESQ_IS15_SJ_SM_LDnEES15_: argument 0"}
!3161 = distinct !{!3161, !"_ZN24hb_filter_iter_factory_tIZN2OT18glyph_variations_tINS0_7NumTypeILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tS7_EUlRK9hb_pair_tIPK11hb_vector_tINS0_7HBFixedINS2_ILb1EsLj2EEELj14EEELb0EEjEE_RK4$_19EclI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tISF_jLb0EE6item_tEEMSU_KFbvESM_LPv0EEMSU_KFSG_vEL24hb_function_sortedness_t0ELSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSY_0EEESQ_IS15_SJ_SM_LDnEES15_"}
!3162 = distinct !{!3162, !3163, !"_ZorI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EE24hb_filter_iter_factory_tIZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKSO_E_SK_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS15_Efp_EEEOS15_OS1A_: argument 0"}
!3163 = distinct !{!3163, !"_ZorI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EE24hb_filter_iter_factory_tIZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKSO_E_SK_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS15_6item_tEEE5valueEvE4typeELSL_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS15_Efp_EEEOS15_OS1A_"}
!3164 = distinct !{!3164, !81}
!3165 = distinct !{!3165, !81}
!3166 = distinct !{!3166, !81}
!3167 = !{!3168, !3170}
!3168 = distinct !{!3168, !3169, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3169 = distinct !{!3169, !"_ZL9hb_memcpyPvPKvm"}
!3170 = distinct !{!3170, !3169, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3171 = distinct !{!3171, !81}
!3172 = !{!3138, !3138, i64 0}
!3173 = distinct !{!3173, !81}
!3174 = !{!3175}
!3175 = distinct !{!3175, !3176, !"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_I10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EEZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSY_EUlRKSO_E_SK_LSL_0EESO_EppEi: argument 0"}
!3176 = distinct !{!3176, !"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_I10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS5_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEEMSE_KFbvERK4$_19LPv0EEMSE_KF9hb_pair_tISC_jEvEL24hb_function_sortedness_t0ELSL_0EEZNS5_18glyph_variations_tINS7_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSY_EUlRKSO_E_SK_LSL_0EESO_EppEi"}
!3177 = distinct !{!3177, !81}
!3178 = !{!3179, !3138, i64 0}
!3179 = !{!"_ZTS9hb_pair_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjE", !3138, i64 0, !5, i64 8}
!3180 = distinct !{!3180, !81}
!3181 = !{!550, !551, i64 112}
!3182 = distinct !{!3182, !521}
!3183 = !{!536, !5, i64 32}
!3184 = !{!3185, !3186, i64 0}
!3185 = !{!"_ZTSN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_tE", !3186, i64 0, !5, i64 8, !5, i64 8, !5, i64 8, !410, i64 16}
!3186 = !{!"p1 _ZTS11hb_vector_tIbLb0EE", !17, i64 0}
!3187 = distinct !{!3187, !81}
!3188 = distinct !{!3188, !81}
!3189 = !{!567, !5, i64 100}
!3190 = !{!567, !5, i64 116}
!3191 = !{!550, !14, i64 124}
!3192 = !{!567, !573, i64 136}
!3193 = distinct !{!3193, !81}
!3194 = distinct !{!3194, !81, !887}
!3195 = !{!3196, !5, i64 8}
!3196 = !{!"_ZTS9hb_pair_tIP11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjE", !3138, i64 0, !5, i64 8}
!3197 = !{!3196, !3138, i64 0}
!3198 = distinct !{!3198, !81}
!3199 = distinct !{!3199, !81}
!3200 = distinct !{!3200, !81}
!3201 = !{!3186, !3186, i64 0}
!3202 = distinct !{!3202, !521}
!3203 = distinct !{!3203, !521}
!3204 = !{!540, !5, i64 32}
!3205 = !{!3206, !3186, i64 0}
!3206 = !{!"_ZTSN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_tE", !3186, i64 0, !5, i64 8, !5, i64 8, !5, i64 8, !5, i64 12}
!3207 = distinct !{!3207, !81}
!3208 = distinct !{!3208, !521}
!3209 = distinct !{!3209, !521}
!3210 = distinct !{!3210, !521}
!3211 = !{!3212, !3214, !3216, !3218}
!3212 = distinct !{!3212, !3213, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES1_IhLb0EELb0EE6item_tEKFbvERK4$_19EclI10hb_array_tIS7_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISI_S9_SC_LDnEESI_: argument 0"}
!3213 = distinct !{!3213, !"_ZN24hb_filter_iter_factory_tIMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES1_IhLb0EELb0EE6item_tEKFbvERK4$_19EclI10hb_array_tIS7_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISI_S9_SC_LDnEESI_"}
!3214 = distinct !{!3214, !3215, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEE24hb_filter_iter_factory_tIMS8_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSO_: argument 0"}
!3215 = distinct !{!3215, !"_ZorI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEE24hb_filter_iter_factory_tIMS8_KFbvERK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISI_Efp_EEEOSI_OSO_"}
!3216 = distinct !{!3216, !3217, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10iter_itemsEv: argument 0"}
!3217 = distinct !{!3217, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10iter_itemsEv"}
!3218 = distinct !{!3218, !3219, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE8iter_refEv: argument 0"}
!3219 = distinct !{!3219, !"_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE8iter_refEv"}
!3220 = distinct !{!3220, !81}
!3221 = distinct !{!3221, !521}
!3222 = distinct !{!3222, !81}
!3223 = !{!567, !5, i64 132}
!3224 = !{!3225, !3227}
!3225 = distinct !{!3225, !3226, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3226 = distinct !{!3226, !"_ZL9hb_memcpyPvPKvm"}
!3227 = distinct !{!3227, !3226, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3228 = !{!3229, !3231}
!3229 = distinct !{!3229, !3230, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3230 = distinct !{!3230, !"_ZL9hb_memcpyPvPKvm"}
!3231 = distinct !{!3231, !3230, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3232 = !{!567, !5, i64 148}
!3233 = !{!540, !5, i64 24}
!3234 = !{!540, !5, i64 28}
!3235 = distinct !{!3235, !81}
!3236 = !{!540, !5, i64 20}
!3237 = !{!3206, !5, i64 12}
!3238 = !{!540, !47, i64 18}
!3239 = distinct !{!3239, !81}
!3240 = distinct !{!3240, !81}
!3241 = distinct !{!3241, !81}
!3242 = !{!536, !47, i64 18}
!3243 = distinct !{!3243, !521}
!3244 = distinct !{!3244, !81}
!3245 = distinct !{!3245, !81}
!3246 = distinct !{!3246, !81}
!3247 = distinct !{!3247, !81}
!3248 = distinct !{!3248, !81, !601, !600}
!3249 = distinct !{!3249, !81, !600, !601}
!3250 = distinct !{!3250, !81, !600, !601}
!3251 = distinct !{!3251, !81, !600, !601}
!3252 = distinct !{!3252, !81, !601, !600}
!3253 = distinct !{!3253, !81, !600, !601}
!3254 = distinct !{!3254, !81, !600, !601}
!3255 = distinct !{!3255, !81, !600, !601}
!3256 = distinct !{!3256, !81, !601, !600}
!3257 = distinct !{!3257, !81, !601, !600}
!3258 = distinct !{!3258, !600, !601}
!3259 = distinct !{!3259, !601, !600}
!3260 = !{!"branch_weights", i32 2097152, i32 -100663296}
!3261 = !{!3262, !3264}
!3262 = distinct !{!3262, !3263, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3263 = distinct !{!3263, !"_ZL9hb_memcpyPvPKvm"}
!3264 = distinct !{!3264, !3263, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3265 = distinct !{!3265, !3266}
!3266 = !{!"llvm.loop.peeled.count", i32 1}
!3267 = !{!3268, !3270}
!3268 = distinct !{!3268, !3269, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3269 = distinct !{!3269, !"_ZL9hb_memcpyPvPKvm"}
!3270 = distinct !{!3270, !3269, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3271 = distinct !{!3271, !521}
!3272 = !{!3273, !3275}
!3273 = distinct !{!3273, !3274, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3274 = distinct !{!3274, !"_ZL9hb_memcpyPvPKvm"}
!3275 = distinct !{!3275, !3274, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3276 = !{!3277, !3279}
!3277 = distinct !{!3277, !3278, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3278 = distinct !{!3278, !"_ZL9hb_memcpyPvPKvm"}
!3279 = distinct !{!3279, !3278, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3280 = !{!3281, !3283}
!3281 = distinct !{!3281, !3282, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3282 = distinct !{!3282, !"_ZL9hb_memcpyPvPKvm"}
!3283 = distinct !{!3283, !3282, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3284 = !{!3285, !3287}
!3285 = distinct !{!3285, !3286, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3286 = distinct !{!3286, !"_ZL9hb_memcpyPvPKvm"}
!3287 = distinct !{!3287, !3286, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3288 = distinct !{!3288, !81, !887}
!3289 = !{!3290}
!3290 = distinct !{!3290, !3291, !"_ZN22hb_serialize_context_t8snapshotEv: argument 0"}
!3291 = distinct !{!3291, !"_ZN22hb_serialize_context_t8snapshotEv"}
!3292 = !{!298, !5, i64 36}
!3293 = distinct !{!3293, !81}
!3294 = !{!3295, !3297}
!3295 = distinct !{!3295, !3296, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3296 = distinct !{!3296, !"_ZL9hb_memcpyPvPKvm"}
!3297 = distinct !{!3297, !3296, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3298 = !{!3299, !3301}
!3299 = distinct !{!3299, !3300, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3300 = distinct !{!3300, !"_ZL9hb_memcpyPvPKvm"}
!3301 = distinct !{!3301, !3300, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3302 = !{!3303, !3305}
!3303 = distinct !{!3303, !3304, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3304 = distinct !{!3304, !"_ZL9hb_memcpyPvPKvm"}
!3305 = distinct !{!3305, !3304, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3306 = !{!3307, !3309}
!3307 = distinct !{!3307, !3308, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3308 = distinct !{!3308, !"_ZL9hb_memcpyPvPKvm"}
!3309 = distinct !{!3309, !3308, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3310 = distinct !{!3310, !81}
!3311 = !{!3312, !3314}
!3312 = distinct !{!3312, !3313, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3313 = distinct !{!3313, !"_ZL9hb_memcpyPvPKvm"}
!3314 = distinct !{!3314, !3313, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3315 = distinct !{!3315, !81}
!3316 = distinct !{!3316, !81}
!3317 = !{!3318, !3319, i64 8}
!3318 = !{!"_ZTS11hb_vector_tIS_IN2OT12AxisValueMapELb0EELb0EE", !5, i64 0, !5, i64 4, !3319, i64 8}
!3319 = !{!"p1 _ZTS11hb_vector_tIN2OT12AxisValueMapELb0EE", !17, i64 0}
!3320 = !{!3318, !5, i64 0}
!3321 = !{!3318, !5, i64 4}
!3322 = !{!3323, !3325}
!3323 = distinct !{!3323, !3324, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3324 = distinct !{!3324, !"_ZL9hb_memcpyPvPKvm"}
!3325 = distinct !{!3325, !3324, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3326 = !{!3327, !3329}
!3327 = distinct !{!3327, !3328, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3328 = distinct !{!3328, !"_ZL9hb_memcpyPvPKvm"}
!3329 = distinct !{!3329, !3328, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3330 = !{!3331, !3333}
!3331 = distinct !{!3331, !3332, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3332 = distinct !{!3332, !"_ZL9hb_memcpyPvPKvm"}
!3333 = distinct !{!3333, !3332, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3334 = distinct !{!3334, !81, !887}
!3335 = !{!3336, !5, i64 0}
!3336 = !{!"_ZTS11hb_vector_tIN2OT12AxisValueMapELb0EE", !5, i64 0, !5, i64 4, !3337, i64 8}
!3337 = !{!"p1 _ZTSN2OT12AxisValueMapE", !17, i64 0}
!3338 = !{!3336, !5, i64 4}
!3339 = !{!3336, !3337, i64 8}
!3340 = distinct !{!3340, !81}
!3341 = !{!3342, !3344}
!3342 = distinct !{!3342, !3343, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3343 = distinct !{!3343, !"_ZL9hb_memcpyPvPKvm"}
!3344 = distinct !{!3344, !3343, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3345 = !{!3346}
!3346 = distinct !{!3346, !3347, !"_ZNK2OT11SegmentMaps16unmap_axis_rangeERK6Triple: argument 0"}
!3347 = distinct !{!3347, !"_ZNK2OT11SegmentMaps16unmap_axis_rangeERK6Triple"}
!3348 = !{!"branch_weights", !"expected", i32 2361051, i32 2145122597}
!3349 = distinct !{!3349, !81}
!3350 = !{!3351, !3353}
!3351 = distinct !{!3351, !3352, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3352 = distinct !{!3352, !"_ZL9hb_memcpyPvPKvm"}
!3353 = distinct !{!3353, !3352, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3354 = !{!3355, !3357}
!3355 = distinct !{!3355, !3356, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3356 = distinct !{!3356, !"_ZL9hb_memcpyPvPKvm"}
!3357 = distinct !{!3357, !3356, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3358 = !{!3359, !3361}
!3359 = distinct !{!3359, !3360, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3360 = distinct !{!3360, !"_ZL9hb_memcpyPvPKvm"}
!3361 = distinct !{!3361, !3360, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3362 = distinct !{!3362, !81}
!3363 = distinct !{!3363, !81}
!3364 = !{!3365, !3367}
!3365 = distinct !{!3365, !3366, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3366 = distinct !{!3366, !"_ZL9hb_memcpyPvPKvm"}
!3367 = distinct !{!3367, !3366, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3368 = !{!3369, !3371}
!3369 = distinct !{!3369, !3370, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3370 = distinct !{!3370, !"_ZL9hb_memcpyPvPKvm"}
!3371 = distinct !{!3371, !3370, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3372 = !{!3337, !3337, i64 0}
!3373 = distinct !{!3373, !81}
!3374 = !{!"branch_weights", i32 1, i32 1999}
!3375 = !{!25, !25, i64 0}
!3376 = !{!"branch_weights", i32 0, i32 1}
!3377 = !{!3378, !3380}
!3378 = distinct !{!3378, !3379, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3379 = distinct !{!3379, !"_ZL9hb_memcpyPvPKvm"}
!3380 = distinct !{!3380, !3379, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3381 = !{!3382, !3382, i64 0}
!3382 = !{!"p1 _ZTSN2OT11SegmentMapsE", !17, i64 0}
!3383 = distinct !{!3383, !81}
!3384 = !{!3385, !5, i64 0}
!3385 = !{!"_ZTSN2OT17hb_scalar_cache_tE", !5, i64 0, !6, i64 4}
!3386 = distinct !{!3386, !521}
!3387 = distinct !{!3387, !81}
!3388 = distinct !{!3388, !81}
!3389 = distinct !{!3389, !81}
!3390 = distinct !{!3390, !81}
!3391 = distinct !{!3391, !81}
!3392 = distinct !{!3392, !81}
!3393 = distinct !{!3393, !81}
!3394 = !{!3395, !5, i64 0}
!3395 = !{!"_ZTS11hb_vector_tIN2OT19avar2_offset_knot_tELb0EE", !5, i64 0, !5, i64 4, !3396, i64 8}
!3396 = !{!"p1 _ZTSN2OT19avar2_offset_knot_tE", !17, i64 0}
!3397 = !{!3395, !5, i64 4}
!3398 = !{!3395, !3396, i64 8}
!3399 = !{!3400, !684, i64 0}
!3400 = !{!"_ZTSN2OT19avar2_offset_knot_tE", !684, i64 0, !684, i64 8}
!3401 = distinct !{!3401, !81}
!3402 = distinct !{!3402, !81}
!3403 = !{!3404, !3406}
!3404 = distinct !{!3404, !3405, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3405 = distinct !{!3405, !"_ZL9hb_memcpyPvPKvm"}
!3406 = distinct !{!3406, !3405, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3407 = !{i64 0, i64 8, !683, i64 8, i64 8, !683}
!3408 = distinct !{!3408, !81}
!3409 = !{!3396, !3396, i64 0}
!3410 = !{!3400, !684, i64 8}
!3411 = distinct !{!3411, !81, !3266}
!3412 = distinct !{!3412, !81}
!3413 = !{!3414, !5, i64 0}
!3414 = !{!"_ZTSN2OT4avar22avar2_index_map_plan_tE", !5, i64 0, !5, i64 4, !71, i64 8}
!3415 = !{!3414, !5, i64 4}
!3416 = distinct !{!3416, !81}
!3417 = distinct !{!3417, !81}
!3418 = distinct !{!3418, !81}
!3419 = distinct !{!3419, !81}
!3420 = distinct !{!3420, !81}
!3421 = distinct !{!3421, !81}
!3422 = distinct !{!3422, !81}
!3423 = distinct !{!3423, !81}
!3424 = distinct !{!3424, !81, !600, !601}
!3425 = distinct !{!3425, !81, !601, !600}
!3426 = distinct !{!3426, !81}
!3427 = !{!3428, !3430}
!3428 = distinct !{!3428, !3429, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3429 = distinct !{!3429, !"_ZL9hb_memcpyPvPKvm"}
!3430 = distinct !{!3430, !3429, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3431 = distinct !{!3431, !81}
!3432 = distinct !{!3432, !81}
!3433 = distinct !{!3433, !81, !887}
!3434 = !{!3414, !5, i64 12}
!3435 = distinct !{!3435, !81}
!3436 = distinct !{!3436, !81}
!3437 = distinct !{!3437, !81}
!3438 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!3439 = distinct !{!3439, !81}
!3440 = !{!3441, !3443}
!3441 = distinct !{!3441, !3442, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3442 = distinct !{!3442, !"_ZL9hb_memcpyPvPKvm"}
!3443 = distinct !{!3443, !3442, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3444 = !{!3445, !3447}
!3445 = distinct !{!3445, !3446, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3446 = distinct !{!3446, !"_ZL9hb_memcpyPvPKvm"}
!3447 = distinct !{!3447, !3446, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3448 = distinct !{!3448, !521}
!3449 = distinct !{!3449, !81}
!3450 = distinct !{!3450, !81}
!3451 = distinct !{!3451, !521}
!3452 = distinct !{!3452, !81}
!3453 = distinct !{!3453, !81}
!3454 = !{!3455, !3457}
!3455 = distinct !{!3455, !3456, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3456 = distinct !{!3456, !"_ZL9hb_memcpyPvPKvm"}
!3457 = distinct !{!3457, !3456, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3458 = !{!3459, !3461}
!3459 = distinct !{!3459, !3460, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!3460 = distinct !{!3460, !"_ZL9hb_memcpyPvPKvm"}
!3461 = distinct !{!3461, !3460, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!3462 = distinct !{!3462, !81}
end_hunk_5
