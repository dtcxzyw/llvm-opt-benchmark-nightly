inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIS3_jEEbOT_jOT0_b:bb.a
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.loopexit40, label %.lr.ph, !llvm.loop !1000

.loopexit40:                                      ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit, %.loopexit
  %.03354 = phi i32 [ %.03357, %.loopexit ], [ %spec.select, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit ]
  %.03250 = phi i32 [ %.03258, %.loopexit ], [ %i.at, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit ]
  %.03146 = phi i32 [ %.03060, %.loopexit ], [ %i.aq, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit ]
  %.03354.fr = freeze i32 %.03354                 ; 2 uses
  %i.az = icmp eq i32 %.03354.fr, -1
  %spec.select94 = select i1 %i.az, i32 %.03250, i32 %.03354.fr
  br label %.loopexit40.thread

.loopexit40.thread:                               ; preds = %.loopexit40, %.critedge
  %.0314681 = phi i32 [ %.03146, %.loopexit40 ], [ 0, %.critedge ]
  %i.ba = phi i32 [ %spec.select94, %.loopexit40 ], [ %i.n, %.critedge ]
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 2
  %.not39 = icmp eq i32 %i.bf, 0
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit40.thread
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !956
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !956
  %i.bi = load i32, ptr %i.bd, align 8
  %i.bj = and i32 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !958
  %i.bm = sub i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !958
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit40.thread
  %i.bn = load ptr, ptr %1, align 8, !tbaa !448
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !452
  %i.bo = load i32, ptr %3, align 4, !tbaa !139
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !963
  %i.bq = shl nuw i32 %i.k, 2
  %i.br = or disjoint i32 %i.bq, 3
  store i32 %i.br, ptr %i.bd, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !139
  %i.bu = add <2 x i32> %i.bt, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !139
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !960
  %i.bx = zext i16 %i.bw to i32
  %i.by = icmp ugt i32 %.0314681, %i.bx
  br i1 %i.by, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.bz = extractelement <2 x i32> %i.bu, i64 1
  %i.ca = shl i32 %i.bz, 3
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !957 ; 2 uses
  %i.cc = icmp ugt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = add i32 %i.cb, -8
  %i.ce = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.cd) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i, %bb.h, %bb.g, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %.loopexit ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !370    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139
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
  %.01442 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.01442, 1
  %i.g = add i32 %.01442, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !457

.thread:                                          ; preds = %.preheader, %bb.c
  %.11537 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.11537, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.11537, 0
  %.not48 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not48, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !374
  tail call void @hb_free(ptr noundef %i.m) #21
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !374  ; 2 uses
  br i1 %.not48, label %bb.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.11537, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #21 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !373  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !374
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1001
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.11537, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #21 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, !prof !117

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52: ; preds = %bb.j, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !370   ; 2 uses
  %.not23 = icmp ugt i32 %.11537, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %.1.i.i41 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i41, ptr %i.ad, align 8, !tbaa !374
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.11537, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !370
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN10hb_array_tIN2OT20delta_row_encoding_tEE5qsortIZNS2_6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EESC_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1005 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZL15hb_qsort_inlineIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1007   ; 4 uses
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !484  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.017.i, i64 16 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !484  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = sub nsw i32 %i.h, %i.j
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !378
  %i.n = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !377  ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %i.o to i64
  %i.p = getelementptr inbounds i8, ptr %.017.i, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !378
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !377  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.o, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i32 %i.s, %i.o
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %.critedge.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 @memcmp(ptr noundef readonly %i.q, ptr noundef readonly %i.m, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i.i) #23
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i: ; preds = %bb.g, %bb.e, %bb.c
  %.0.i.i.i = phi i32 [ %i.k, %bb.c ], [ %i.t, %bb.e ], [ %i.u, %bb.g ]
  %i.v = icmp sgt i32 %.0.i.i.i, 0
  br i1 %i.v, label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i", label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i"
  %.015.i = getelementptr inbounds nuw i8, ptr %.01520.i, i64 40 ; 2 uses
  %i.w = icmp ult ptr %.015.i, %i.e
  br i1 %i.w, label %.preheader.i, label %_ZL15hb_qsort_inlineIN2OT20delta_row_encoding_tEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_.exit, !llvm.loop !1008

"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.i": ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.i
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !378
  %i.z = load i64, ptr %i.g, align 8
  %i.aa = getelementptr inbounds i8, ptr %.017.i, i64 -16 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.017.i, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !374
  %i.ad = load <2 x i32>, ptr %.017.i, align 8, !tbaa !139
  %i.ae = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !289
  store ptr %i.af, ptr %i.x, align 8, !tbaa !289
  %i.ag = load i64, ptr %i.i, align 8
  store i64 %i.ag, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.017.i, i64 24 ; 2 uses
  %i.ai = load <2 x i32>, ptr %i.ah, align 8, !tbaa !139
  %i.aj = getelementptr inbounds nuw i8, ptr %.017.i, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1009
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !1009
  %i.al = load <2 x i32>, ptr %i.f, align 8, !tbaa !139
  store <2 x i32> %i.ad, ptr %i.f, align 8, !tbaa !139
  store <2 x i32> %i.al, ptr %.017.i, align 8, !tbaa !139
  store ptr %i.y, ptr %i.ae, align 8, !tbaa !289
  store i64 %i.z, ptr %i.i, align 8
  %i.am = load <2 x i32>, ptr %i.aa, align 8, !tbaa !139
  store <2 x i32> %i.ai, ptr %i.aa, align 8, !tbaa !139
  store <2 x i32> %i.am, ptr %i.ah, align 8, !tbaa !139
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !1009
  %i.an = icmp ugt ptr %i.f, %i.c
  br i1 %i.an, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1010

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
  %.092 = phi ptr [ %.1, %bb.al ], [ %0, %bb.a ]  ; 13 uses
  %.04491 = phi i64 [ %.145, %bb.al ], [ %1, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %.092, i64 %.04491 ; 8 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.d = lshr i64 %.04491, 1
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.092, i64 %i.d ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.092, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !484  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !484  ; 3 uses
  %.not.i.i = icmp eq i32 %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = sub nsw i32 %i.g, %i.i
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !378
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !377  ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.092, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !378
  %i.q = getelementptr inbounds nuw i8, ptr %.092, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !377  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i32 %i.r, %i.n
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @memcmp(ptr noundef readonly %i.p, ptr noundef readonly %i.l, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i) #23
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit: ; preds = %bb.b, %bb.d, %bb.f
  %.0.i.i = phi i32 [ %i.j, %bb.b ], [ %i.s, %bb.d ], [ %i.t, %bb.f ]
  %i.u = icmp sgt i32 %.0.i.i, 0
  br i1 %i.u, label %bb.g, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread

bb.g:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %.092, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  %.pre = load i32, ptr %i.h, align 8, !tbaa !484
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread: ; preds = %bb.e, %bb.g, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit
  %i.v = phi i32 [ %i.g, %bb.e ], [ %.pre, %bb.g ], [ %i.i, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !484  ; 2 uses
  %.not.i.i57 = icmp eq i32 %i.v, %i.x
  br i1 %.not.i.i57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread
  %i.y = sub nsw i32 %i.v, %i.x
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62

bb.i:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !378
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 -36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !377 ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i59 = zext i32 %i.ac to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !378
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !377 ; 2 uses
  %.not.i.i.i.i60 = icmp eq i32 %i.ac, %i.ag
  br i1 %.not.i.i.i.i60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = sub nsw i32 %i.ag, %i.ac
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i61 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i61, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @memcmp(ptr noundef readonly %i.ae, ptr noundef readonly %i.aa, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i59) #23
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62: ; preds = %bb.h, %bb.j, %bb.l
  %.0.i.i58 = phi i32 [ %i.y, %bb.h ], [ %i.ah, %bb.j ], [ %i.ai, %bb.l ]
  %i.aj = icmp sgt i32 %.0.i.i58, 0
  br i1 %i.aj, label %bb.m, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread

bb.m:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !484 ; 2 uses
  %i.al = load i32, ptr %i.h, align 8, !tbaa !484 ; 2 uses
  %.not.i.i63 = icmp eq i32 %i.ak, %i.al
  br i1 %.not.i.i63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = sub nsw i32 %i.ak, %i.al
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !378
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !377 ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i65 = zext i32 %i.aq to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.092, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !378
  %i.at = getelementptr inbounds nuw i8, ptr %.092, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !377 ; 2 uses
  %.not.i.i.i.i66 = icmp eq i32 %i.aq, %i.au
  br i1 %.not.i.i.i.i66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = sub nsw i32 %i.au, %i.aq
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68

bb.q:                                             ; preds = %bb.o
  %.not.i.i.i.i.i67 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i67, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  %i.aw = tail call i32 @memcmp(ptr noundef readonly %i.as, ptr noundef readonly %i.ao, i64 noundef %.sroa.2.8.insert.ext.i.i.i.i.i65) #23
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68: ; preds = %bb.n, %bb.p, %bb.r
  %.0.i.i64 = phi i32 [ %i.am, %bb.n ], [ %i.av, %bb.p ], [ %i.aw, %bb.r ]
  %i.ax = icmp sgt i32 %.0.i.i64, 0
  br i1 %i.ax, label %bb.s, label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread

bb.s:                                             ; preds = %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %.092, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br label %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread

_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread: ; preds = %bb.q, %bb.k, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit68, %bb.s, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62
  %i.ay = getelementptr inbounds i8, ptr %i.b, i64 -80 ; 3 uses
  tail call fastcc void @"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_"(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  %i.az = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.ba = getelementptr inbounds i8, ptr %i.b, i64 -72 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.b, i64 -76 ; 2 uses
  br label %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit"

"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit": ; preds = %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge", %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread
  %.048 = phi ptr [ %.092, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread ], [ %i.bd, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge" ]
  %.046 = phi ptr [ %i.ay, %_ZZN10hb_array_tIN2OT20delta_row_encoding_tEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit62.thread ], [ %i.br, %"_ZNK3$_9clIN2OT20delta_row_encoding_tEEEvRT_S4_.exit.backedge" ]
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !484 ; 4 uses
  br label %bb.t
end_hunk_0
begin_hunk_1_@_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE:bb.a
  %i.bm = load i32, ptr %i.bg, align 8, !tbaa !1454
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
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !139
  %i.bv = icmp eq i32 %i.bu, %i.bi
  br i1 %i.bv, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = load i32, ptr %i.cg, align 4, !tbaa !139
  %i.bx = icmp eq i32 %i.bw, %i.bi
  br i1 %i.bx, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1455

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
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i, label %bb.j, !llvm.loop !1455

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_NullPool, %bb.h ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @_hb_NullPool, %bb.i ], [ @_hb_NullPool, %.lr.ph.i.i.i ]
  %i.ck = load ptr, ptr %.0.i.i, align 8, !tbaa !1456
  %i.cl = call noundef zeroext i1 @_ZN5graph6Lookup25split_subtables_if_neededERNS_24gsubgpos_graph_context_tEj(ptr noundef nonnull align 1 dereferenceable(8) %i.ck, ptr noundef nonnull align 8 dereferenceable(168) %15, i32 noundef %i.bi)
  br i1 %i.cl, label %bb.k, label %bb.t

bb.k:                                             ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i
  %i.cm = load ptr, ptr %14, align 8, !tbaa !1150 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !252, !range !134, !noundef !212
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.m, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.cq = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.cm, ptr noundef nonnull %i.be) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  %i.cr = load i32, ptr %i.be, align 8, !tbaa !139 ; 5 uses
  store i32 %i.cr, ptr %i.k, align 4, !tbaa !139
  %i.cs = icmp eq i32 %i.cr, -2
  br i1 %i.cs, label %bb.n, label %bb.o, !prof !21

bb.n:                                             ; preds = %bb.m
  store i32 -1, ptr %i.be, align 8, !tbaa !139
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  store i32 %i.cr, ptr %i.l, align 4, !tbaa !139
  %i.ct = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.cm, ptr noundef nonnull %i.l) ; 0 uses
  %i.cu = add i32 %i.cr, 1                        ; 2 uses
  %i.cv = load i32, ptr %i.l, align 4, !tbaa !139
  %i.cw = icmp ult i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cr, ptr %i.l, align 4, !tbaa !139
  %i.cx = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.cm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) ; 0 uses
  %i.cy = load i32, ptr %i.l, align 4, !tbaa !139
  %i.cz = add i32 %i.cy, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i.i.i.i = phi i32 [ %i.cz, %bb.p ], [ %i.cu, %bb.o ]
  store i32 %.sink.i.i.i.i, ptr %i.be, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i: ; preds = %bb.r, %bb.l
  %i.da = load i32, ptr %i.bh, align 4, !tbaa !1153 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr %i.bh, align 4, !tbaa !1153
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i: ; preds = %bb.s, %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i
  %i.dc = load i32, ptr %i.be, align 8, !tbaa !1154 ; 2 uses
  %.not.i55 = icmp eq i32 %i.dc, -1
  br i1 %.not.i55, label %.loopexit, label %bb.h

bb.t:                                             ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i, %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_FRjvEL24hb_function_sortedness_t0ELSG_0EERK4$_29LSL_0ELSG_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSG_0EEERKSS_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !1458 ; 4 uses
  %.not233.i = icmp eq i32 %i.de, 0
  br i1 %.not233.i, label %_ZL29_promote_extensions_if_neededRN5graph24gsubgpos_graph_context_tE.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit
  %i.df = icmp ugt i32 %i.de, 178956970
  br i1 %i.df, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !21

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.dg = zext nneg i32 %i.de to i64
  %i.dh = mul nuw nsw i64 %i.dg, 24
  %i.di = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dh) #21 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.di, null
  %spec.select232.i = select i1 %.not22.i.i, i32 -1, i32 %i.de, !prof !117
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, %.thread.i.i
  %.sroa.21.1.i = phi ptr [ null, %.thread.i.i ], [ %i.di, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.sink.i.i = phi i32 [ -1, %.thread.i.i ], [ %spec.select232.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.val.i56 = load i32, ptr %i.ab, align 4, !tbaa !1436
  %i.dj = add i32 %.val.i56, 1                    ; 2 uses
  %.not15.i.i.i.i.i.i.i57 = icmp ult i32 %i.dj, 2
  br i1 %.not15.i.i.i.i.i.i.i57, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i
  %.val85.i = load ptr, ptr %i.ac, align 8, !tbaa !1439
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i
  %.sroa.02.0.i.i.i59 = phi ptr [ %i.do, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ], [ %.val85.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.5.sroa.0.0.i.i.i60 = phi i32 [ %i.dn, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ], [ %i.dj, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i59, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !1459
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58
  %i.dn = add i32 %.sroa.5.sroa.0.0.i.i.i60, -1   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i59, i64 16
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58, !llvm.loop !1451

"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EdeEv.exit.i.us.i.i.i.i.i.i58
  %i.dq = zext i32 %.sroa.5.sroa.0.0.i.i.i60 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i59, i64 %i.dr
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
  br i1 %.not.i.i.i.i91.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, label %bb.u, !prof !184

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
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1470
  %i.ei = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1472
  %i.ek = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !1470
  %i.em = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !1472
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
  %i.ez = load i32, ptr %.017.i.i.i.i.i.i, align 8, !tbaa !1473
  %i.fa = load i32, ptr %i.ef, align 8, !tbaa !1473
  %i.fb = sub i32 %i.ez, %i.fa
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %bb.w, label %.critedge.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fd = fcmp ule double %i.ex, %i.ew
  br i1 %i.fd, label %.critedge.i.i.i.i.i.i, label %bb.w

.critedge.i.i.i.i.i.i:                            ; preds = %bb.w, %bb.v, %.split.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01520.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.fe = icmp ult ptr %.015.i.i.i.i.i.i, %i.ee
  br i1 %i.fe, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i, !llvm.loop !1474

bb.w:                                             ; preds = %bb.v, %.split.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !tbaa.struct !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %.017.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ff = icmp ugt ptr %i.ef, %.sroa.21.4.i
  br i1 %i.ff, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !1476

_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61, %.critedge.i.i.i.i.i.i, %bb.u, %._crit_edge.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i
  %.not.i.i.i.i91323.i = phi i1 [ true, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ false, %bb.u ], [ true, %._crit_edge.i ], [ false, %.critedge.i.i.i.i.i.i ], [ true, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ]
  %.061.lcssa322.shrunk.i = phi i32 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %i.gq, %bb.u ], [ %i.gq, %._crit_edge.i ], [ %i.gq, %.critedge.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ]
  %.sroa.0178.0.lcssa321.i = phi i32 [ %.sink.i.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %.sroa.0178.3.i, %bb.u ], [ %.sroa.0178.3.i, %._crit_edge.i ], [ %.sroa.0178.3.i, %.critedge.i.i.i.i.i.i ], [ %.sink.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 2 uses
  %.sroa.11184.0.lcssa320.i = phi i64 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ 24, %bb.u ], [ 0, %._crit_edge.i ], [ %.idx.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 2 uses
  %.sroa.21.0.lcssa319.i = phi ptr [ %.sroa.21.1.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit.i ], [ %.sroa.21.4.i, %bb.u ], [ %.sroa.21.4.i, %._crit_edge.i ], [ %.sroa.21.4.i, %.critedge.i.i.i.i.i.i ], [ %.sroa.21.1.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.us.i.i.i.i.i.i61 ] ; 6 uses
  %.061.lcssa322.i = zext i32 %.061.lcssa322.shrunk.i to i64 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1477, !nonnull !212, !align !1482 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !1483 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !1412
  %.not.i.i62 = icmp ult i32 %i.fj, %i.fl
  br i1 %.not.i.i62, label %bb.y, label %bb.x, !prof !144

bb.x:                                             ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.y:                                             ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE5qsortEv.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1420
  %i.fo = zext i32 %i.fj to i64
  %i.fp = getelementptr inbounds nuw [216 x i8], ptr %i.fn, i64 %i.fo
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i63 = phi ptr [ @_hb_CrapPool, %bb.x ], [ %i.fp, %bb.y ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1484
  %i.fs = load ptr, ptr %.0.i.i63, align 8, !tbaa !1485
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = add i64 %i.ft, %.061.lcssa322.i
  %i.fw = sub i64 %i.fv, %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.21.0.lcssa319.i, i64 %.sroa.11184.0.lcssa320.i
  br i1 %.not.i.i.i.i91323.i, label %.critedge.i, label %.lr.ph262.i.preheader

.lr.ph262.i.preheader:                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.fy = add nsw i64 %.sroa.11184.0.lcssa320.i, -24 ; 2 uses
  %i.fz = udiv i64 %i.fy, 24
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %xtraiter = and i64 %i.ga, 3                    ; 3 uses
  %i.gb = icmp ult i64 %i.fy, 72
  br i1 %i.gb, label %.lr.ph262.i.epil.preheader, label %.lr.ph262.i.preheader.new

.lr.ph262.i.preheader.new:                        ; preds = %.lr.ph262.i.preheader
  %unroll_iter = and i64 %i.ga, 2305843009213693948
  br label %.lr.ph262.i

bb.z:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i"
  %.061254.i = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %i.gq, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ]
  %.sroa.0178.0253.i = phi i32 [ %.sink.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.0178.3.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 10 uses
  %.sroa.11184.0251.i = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.11184.1.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 6 uses
  %.sroa.21.0250.i = phi ptr [ %.sroa.21.1.i, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.21.4.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 6 uses
  %.sroa.7163.0248.i = phi i32 [ %.sroa.5.sroa.0.0.i.i.i60, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.7163.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 5 uses
  %.sroa.0162.0247.i = phi ptr [ %.sroa.02.0.i.i.i59, %"_ZNK9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjE3endEv.exit.i" ], [ %.sroa.0162.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i" ] ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.7163.0248.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.aa, label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i", !prof !21

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i": ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %.sroa.0162.0247.i, %bb.z ]
  %.val1.i.i.i = load i32, ptr %.0.i.i.i.i.i.i.i.i.i, align 4, !tbaa !139 ; 7 uses
  %i.gc = load ptr, ptr %i.dt, align 8, !tbaa !1477, !nonnull !212, !align !1482 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !1412
  %.not.i92.i = icmp ult i32 %.val1.i.i.i, %i.ge
  br i1 %.not.i92.i, label %bb.ac, label %bb.ab, !prof !144

bb.ab:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i

bb.ac:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEdeEv.exit.i"
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1420
  %i.gh = zext i32 %.val1.i.i.i to i64
  %i.gi = getelementptr inbounds nuw [216 x i8], ptr %i.gg, i64 %i.gh
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i: ; preds = %bb.ac, %bb.ab
  %.0.i93.i = phi ptr [ @_hb_CrapPool, %bb.ab ], [ %i.gi, %bb.ac ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i93.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1484
  %i.gl = load ptr, ptr %.0.i93.i, align 8, !tbaa !1485
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = add i32 %.061254.i, %i.gp               ; 4 uses
  %i.gr = load ptr, ptr %i.ac, align 8, !tbaa !1439 ; 4 uses
  %.not.i95.i = icmp eq ptr %i.gr, null
  br i1 %.not.i95.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74, label %bb.ad

bb.ad:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i
  %i.gs = mul i32 %.val1.i.i.i, 506952113
  %i.gt = and i32 %i.gs, 1073741823
  %i.gu = load i32, ptr %i.du, align 8, !tbaa !1454
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
  %i.hc = load i32, ptr %i.gx, align 4, !tbaa !139
  %i.hd = icmp eq i32 %i.hc, %.val1.i.i.i
  br i1 %i.hd, label %._crit_edge.i.i.i71, label %.lr.ph.i.i.i68

bb.ae:                                            ; preds = %.lr.ph.i.i.i68
  %i.he = load i32, ptr %i.ho, align 4, !tbaa !139
  %i.hf = icmp eq i32 %i.he, %.val1.i.i.i
  br i1 %i.hf, label %._crit_edge.i.i.i71, label %.lr.ph.i.i.i68, !llvm.loop !1455

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
  br i1 %.not.i.i.i96.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74, label %bb.ae, !llvm.loop !1455

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74: ; preds = %.lr.ph.i.i.i68, %._crit_edge.i.i.i71, %bb.ad, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i
  %.0.i97.i = phi ptr [ @_hb_NullPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit94.i ], [ %spec.select.i.i.i73, %._crit_edge.i.i.i71 ], [ @_hb_NullPool, %bb.ad ], [ @_hb_NullPool, %.lr.ph.i.i.i68 ]
  %i.hs = load ptr, ptr %.0.i97.i, align 8, !tbaa !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store atomic i32 1, ptr %9 monotonic, align 8
  store atomic i8 1, ptr %i.dv monotonic, align 4
  store atomic ptr null, ptr %i.dw monotonic, align 8
  store i8 1, ptr %i.dx, align 8, !tbaa !476
  store i32 0, ptr %i.dy, align 4, !tbaa !253
  store atomic i32 0, ptr %i.dz monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ea, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 -1, ptr %i.i, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  store i64 0, ptr %i.j, align 8, !tbaa !482
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %9, ptr %7, align 8, !tbaa !1073
  store ptr %i.gc, ptr %i.eb, align 8, !tbaa !1486
  store ptr %i.j, ptr %i.ec, align 8, !tbaa !1489
  store ptr %i.i, ptr %i.ed, align 8, !tbaa !1490
  call void @_ZN5graph7graph_t21traverse_directed_bfsIZNS0_18find_subgraph_sizeEjR8hb_set_tjEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_EEvjOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.gc, i32 noundef %.val1.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ht = load i64, ptr %i.j, align 8, !tbaa !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load i16, ptr %i.hu, align 1, !tbaa !131
  %i.hw = call noundef i16 @llvm.bswap.i16(i16 %i.hv)
  %i.hx = zext i16 %i.hw to i32
  %.not.i98.i = icmp slt i32 %.sroa.11184.0251.i, %.sroa.0178.0253.i
  %.pre289.i = add i32 %.sroa.11184.0251.i, 1     ; 3 uses
  br i1 %.not.i98.i, label %.critedge.i100.i, label %bb.af

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %i.hy = icmp slt i32 %.sroa.0178.0253.i, 0
  br i1 %i.hy, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %bb.af
  %.not.i131.i = icmp ugt i32 %.pre289.i, %.sroa.0178.0253.i
  br i1 %.not.i131.i, label %.preheader.i.i, label %.critedge.i100.i, !prof !21

.preheader.i.i:                                   ; preds = %bb.ag, %.preheader.i.i
  %.01442.i.i = phi i32 [ %i.ib, %.preheader.i.i ], [ %.sroa.0178.0253.i, %bb.ag ] ; 2 uses
  %i.hz = lshr i32 %.01442.i.i, 1
  %i.ia = add i32 %.01442.i.i, 8
  %i.ib = add i32 %i.ia, %i.hz                    ; 8 uses
  %i.ic = icmp ugt i32 %.pre289.i, %i.ib
  br i1 %i.ic, label %.preheader.i.i, label %.thread.i133.i, !llvm.loop !1491

.thread.i133.i:                                   ; preds = %.preheader.i.i
  %i.id = icmp ugt i32 %i.ib, 178956970
  br i1 %i.id, label %.critedge.i148.i, label %bb.ah, !prof !21

.critedge.i148.i:                                 ; preds = %.thread.i133.i
  %i.ie = xor i32 %.sroa.0178.0253.i, -1
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i

bb.ah:                                            ; preds = %.thread.i133.i
  %.not48.i135.i = icmp eq i32 %.sroa.0178.0253.i, 0
  br i1 %.not48.i135.i, label %bb.ai, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i

bb.ai:                                            ; preds = %bb.ah
  %.not9.i.i.i145.i = icmp eq ptr %.sroa.21.0250.i, null
  br i1 %.not9.i.i.i145.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = zext nneg i32 %i.ib to i64
  %i.ig = mul nuw nsw i64 %i.if, 24
  %i.ih = call ptr @hb_malloc(i64 noundef %i.ig) #21 ; 4 uses
  %.not10.i.i.i146.i = icmp eq ptr %i.ih, null
  br i1 %.not10.i.i.i146.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread52.i143.i, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i147.i = icmp eq i32 %.sroa.11184.0251.i, 0
  br i1 %.not.i.i.i.i147.i, label %.critedge.i100.i, label %bb.al, !prof !21

bb.al:                                            ; preds = %bb.ak
  %i.ii = zext i32 %.sroa.11184.0251.i to i64
  %i.ij = mul nuw nsw i64 %i.ii, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ih, ptr nonnull readonly align 1 %.sroa.21.0250.i, i64 %i.ij, i1 false), !alias.scope !1492
  br label %.critedge.i100.i

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i: ; preds = %bb.ai, %bb.ah
  %i.ik = phi ptr [ null, %bb.ai ], [ %.sroa.21.0250.i, %bb.ah ]
  %i.il = zext nneg i32 %i.ib to i64
  %i.im = mul nuw nsw i64 %i.il, 24
  %i.in = call ptr @hb_realloc(ptr noundef %i.ik, i64 noundef %i.im) #21 ; 2 uses
  %.not22.i137.i = icmp eq ptr %i.in, null
  br i1 %.not22.i137.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread52.i143.i, label %.critedge.i100.i, !prof !117

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread52.i143.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.aj
  %i.io = xor i32 %.sroa.0178.0253.i, -1
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i

_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread52.i143.i, %.critedge.i148.i, %bb.af
  %.sroa.0178.4.i = phi i32 [ %.sroa.0178.0253.i, %bb.af ], [ %i.io, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread52.i143.i ], [ %i.ie, %.critedge.i148.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

.critedge.i100.i:                                 ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i, %bb.al, %bb.ak, %bb.ag, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %.sroa.21.3.i = phi ptr [ %.sroa.21.0250.i, %bb.ag ], [ %i.ih, %bb.ak ], [ %i.ih, %bb.al ], [ %i.in, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.21.0250.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ] ; 2 uses
  %.sroa.0178.2.i = phi i32 [ %.sroa.0178.0253.i, %bb.ag ], [ %i.ib, %bb.ak ], [ %i.ib, %bb.al ], [ %i.ib, %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i ], [ %.sroa.0178.0253.i, %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74 ]
  %i.ip = zext i32 %.sroa.11184.0251.i to i64
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.21.3.i, i64 %i.ip ; 3 uses
  store i32 %.val1.i.i.i, ptr %i.iq, align 8, !tbaa !139
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i64 %i.ht, ptr %.sroa.4154.0..sroa_idx.i, align 8, !tbaa !482
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i32 %i.hx, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !139
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %.critedge.i100.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i
  %.sroa.21.4.i = phi ptr [ %.sroa.21.3.i, %.critedge.i100.i ], [ %.sroa.21.0250.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 8 uses
  %.sroa.11184.1.i = phi i32 [ %.pre289.i, %.critedge.i100.i ], [ %.sroa.11184.0251.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.0178.3.i = phi i32 [ %.sroa.0178.2.i, %.critedge.i100.i ], [ %.sroa.0178.4.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ir = zext i32 %.sroa.7163.0248.i to i64
  %i.is = shl nuw nsw i64 %i.ir, 4
  %scevgep.i = getelementptr i8, ptr %.sroa.0162.0247.i, i64 %i.is
  %scevgep377.i = getelementptr i8, ptr %.sroa.0162.0247.i, i64 16
  %i.it = add i32 %.sroa.7163.0248.i, -1
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 4
  %scevgep378.i = getelementptr i8, ptr %scevgep377.i, i64 %i.iv
  %.not.i.i.i.i.i.i.i.i101.i439 = icmp eq i32 %.sroa.7163.0248.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i101.i439, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !prof !363

bb.am:                                            ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !1452

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.am
  %.sroa.7163.1.i441 = phi i32 [ %i.iw, %bb.am ], [ %.sroa.7163.0248.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ]
  %.sroa.0162.1.i440 = phi ptr [ %i.ix, %bb.am ], [ %.sroa.0162.0247.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ] ; 2 uses
  %i.iw = add i32 %.sroa.7163.1.i441, -1          ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i440, i64 16 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0162.1.i440, i64 20
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = trunc i32 %i.iz to i1
  br i1 %i.ja, label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", label %bb.am, !llvm.loop !1452

"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", !llvm.loop !1452

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  %.sroa.0162.2.i = phi ptr [ %scevgep.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.ix, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ %scevgep378.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7163.2.i = phi i32 [ 0, %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i ], [ %i.iw, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i90.i = icmp ne ptr %.sroa.0162.2.i, %i.ds
  %i.jb = icmp ne i32 %.sroa.7163.2.i, 0
  %i.jc = or i1 %.not.i.i.i.i90.i, %i.jb
  br i1 %i.jc, label %bb.z, label %._crit_edge.i

.lr.ph271.i.unr-lcssa:                            ; preds = %.lr.ph262.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph271.i, label %.lr.ph262.i.epil.preheader

.lr.ph262.i.epil.preheader:                       ; preds = %.lr.ph271.i.unr-lcssa, %.lr.ph262.i.preheader
  %.062261.i.epil.init = phi i64 [ %.061.lcssa322.i, %.lr.ph262.i.preheader ], [ %i.kh, %.lr.ph271.i.unr-lcssa ]
  %.066260.i.epil.init = phi i64 [ 0, %.lr.ph262.i.preheader ], [ %i.ki, %.lr.ph271.i.unr-lcssa ]
  %.073259.i.epil.init = phi ptr [ %.sroa.21.0.lcssa319.i, %.lr.ph262.i.preheader ], [ %i.kj, %.lr.ph271.i.unr-lcssa ]
  %lcmp.mod522 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod522)
  br label %.lr.ph262.i.epil

.lr.ph262.i.epil:                                 ; preds = %.lr.ph262.i.epil, %.lr.ph262.i.epil.preheader
  %.062261.i.epil = phi i64 [ %i.jf, %.lr.ph262.i.epil ], [ %.062261.i.epil.init, %.lr.ph262.i.epil.preheader ]
  %.066260.i.epil = phi i64 [ %i.jg, %.lr.ph262.i.epil ], [ %.066260.i.epil.init, %.lr.ph262.i.epil.preheader ]
  %.073259.i.epil = phi ptr [ %i.jh, %.lr.ph262.i.epil ], [ %.073259.i.epil.init, %.lr.ph262.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph262.i.epil ], [ 0, %.lr.ph262.i.epil.preheader ]
  %.sroa.3.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.073259.i.epil, i64 16
  %.sroa.3.0.copyload.i.epil = load i32, ptr %.sroa.3.0..sroa_idx.i.epil, align 8, !tbaa !139
  %i.jd = shl i32 %.sroa.3.0.copyload.i.epil, 3
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = add i64 %.062261.i.epil, %i.je          ; 2 uses
  %i.jg = add i64 %.066260.i.epil, %i.je          ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.073259.i.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph271.i, label %.lr.ph262.i.epil, !llvm.loop !1496

.lr.ph271.i:                                      ; preds = %.lr.ph262.i.epil, %.lr.ph271.i.unr-lcssa
  %.lcssa498 = phi i64 [ %i.kh, %.lr.ph271.i.unr-lcssa ], [ %i.jf, %.lr.ph262.i.epil ]
  %.lcssa497 = phi i64 [ %i.ki, %.lr.ph271.i.unr-lcssa ], [ %i.jg, %.lr.ph262.i.epil ]
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
  %.062261.i = phi i64 [ %.061.lcssa322.i, %.lr.ph262.i.preheader.new ], [ %i.kh, %.lr.ph262.i ]
  %.066260.i = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %i.ki, %.lr.ph262.i ]
  %.073259.i = phi ptr [ %.sroa.21.0.lcssa319.i, %.lr.ph262.i.preheader.new ], [ %i.kj, %.lr.ph262.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph262.i.preheader.new ], [ %niter.next.3, %.lr.ph262.i ]
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.073259.i, i64 16
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !139
  %i.jt = shl i32 %.sroa.3.0.copyload.i, 3
  %i.ju = zext i32 %i.jt to i64                   ; 2 uses
  %i.jv = add i64 %.062261.i, %i.ju
  %i.jw = add i64 %.066260.i, %i.ju
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.073259.i, i64 40
  %.sroa.3.0.copyload.i.1 = load i32, ptr %.sroa.3.0..sroa_idx.i.1, align 8, !tbaa !139
  %i.jx = shl i32 %.sroa.3.0.copyload.i.1, 3
  %i.jy = zext i32 %i.jx to i64                   ; 2 uses
  %i.jz = add i64 %i.jv, %i.jy
  %i.ka = add i64 %i.jw, %i.jy
  %.sroa.3.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.073259.i, i64 64
  %.sroa.3.0.copyload.i.2 = load i32, ptr %.sroa.3.0..sroa_idx.i.2, align 8, !tbaa !139
  %i.kb = shl i32 %.sroa.3.0.copyload.i.2, 3
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %i.kd = add i64 %i.jz, %i.kc
  %i.ke = add i64 %i.ka, %i.kc
  %.sroa.3.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.073259.i, i64 88
  %.sroa.3.0.copyload.i.3 = load i32, ptr %.sroa.3.0..sroa_idx.i.3, align 8, !tbaa !139
  %i.kf = shl i32 %.sroa.3.0.copyload.i.3, 3
  %i.kg = zext i32 %i.kf to i64                   ; 2 uses
  %i.kh = add i64 %i.kd, %i.kg                    ; 3 uses
  %i.ki = add i64 %i.ke, %i.kg                    ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.073259.i, i64 96 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph271.i.unr-lcssa, label %.lr.ph262.i

bb.an:                                            ; preds = %.thread.i, %.lr.ph271.i
  %.163269.i = phi i64 [ %.lcssa498, %.lr.ph271.i ], [ %.365226.i, %.thread.i ] ; 3 uses
  %.167268.i = phi i64 [ %.lcssa497, %.lr.ph271.i ], [ %.369225.i, %.thread.i ] ; 3 uses
  %.074267.i = phi ptr [ %.sroa.21.0.lcssa319.i, %.lr.ph271.i ], [ %i.nr, %.thread.i ] ; 4 uses
  %.075266.i = phi i1 [ false, %.lr.ph271.i ], [ %.378224.i, %.thread.i ] ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.074267.i, align 8, !tbaa !139 ; 10 uses
  %.sroa.8152.0..074.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.074267.i, i64 8
  %.sroa.8152.0.copyload.i = load i64, ptr %.sroa.8152.0..074.sroa_idx.i, align 8, !tbaa !482
  %.sroa.9.0..074.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.074267.i, i64 16
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..074.sroa_idx.i, align 8, !tbaa !139
  %i.kk = load ptr, ptr %i.ac, align 8, !tbaa !1439 ; 5 uses
  %.not.i102.i = icmp eq ptr %i.kk, null
  br i1 %.not.i102.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kl = mul i32 %.sroa.0.0.copyload.i, 506952113
  %i.km = and i32 %i.kl, 1073741823
  %i.kn = load i32, ptr %i.ji, align 8, !tbaa !1454
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
  %i.kv = load i32, ptr %i.kq, align 4, !tbaa !139
  %i.kw = icmp eq i32 %i.kv, %.sroa.0.0.copyload.i
  br i1 %i.kw, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i

bb.ap:                                            ; preds = %.lr.ph.i.i106.i
  %i.kx = load i32, ptr %i.lh, align 4, !tbaa !139
  %i.ky = icmp eq i32 %i.kx, %.sroa.0.0.copyload.i
  br i1 %i.ky, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i, !llvm.loop !1455

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
  br i1 %.not.i.i.i109.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ap, !llvm.loop !1455

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i: ; preds = %.lr.ph.i.i106.i, %._crit_edge.i.i110.i, %bb.ao, %bb.an
  %.0.i113.i = phi ptr [ @_hb_NullPool, %bb.an ], [ %spec.select.i.i112.i, %._crit_edge.i.i110.i ], [ @_hb_NullPool, %bb.ao ], [ @_hb_NullPool, %.lr.ph.i.i106.i ]
  %i.ll = load ptr, ptr %.0.i113.i, align 8, !tbaa !1456
  %i.lm = load i32, ptr %15, align 8, !tbaa !1497 ; 2 uses
  %i.ln = load i16, ptr %i.ll, align 1, !tbaa !131
  %i.lo = call noundef i16 @llvm.bswap.i16(i16 %i.ln)
  %i.lp = zext i16 %i.lo to i32
  %switch.selectcmp.i.i.i = icmp eq i32 %i.lm, 1196643650
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 7, i32 0
  %switch.selectcmp2.i.i.i = icmp eq i32 %i.lm, 1196445523
  %switch.select3.i.i.i = select i1 %switch.selectcmp2.i.i.i, i32 9, i32 %switch.select.i.i.i
  %i.lq = icmp eq i32 %switch.select3.i.i.i, %i.lp
  br i1 %i.lq, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i
  br i1 %.075266.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
end_hunk_1
begin_hunk_2_@_ZN5graph6Lookup14add_sub_tablesERNS_24gsubgpos_graph_context_tEjjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE:bb.a
bb.i:                                             ; preds = %bb.f
  %i.bg = add i32 %.sroa.17.0.i.ph352, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i.ph351, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer349

_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit: ; preds = %.loopexit
  %.pre231 = load ptr, ptr %i.y, align 8, !tbaa !1689 ; 2 uses
  %.pre232 = load i32, ptr %i.aa, align 4, !tbaa !1653 ; 2 uses
  %.not198 = icmp eq i32 %.pre232, 0
  br i1 %.not198, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit
  %i.bi = zext i32 %.pre232 to i64
  %.idx = mul nuw nsw i64 %i.bi, 24
  %i.bj = add nsw i64 %.idx, -24                  ; 2 uses
  %i.bk = udiv i64 %i.bj, 24
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %xtraiter = and i64 %i.bl, 7                    ; 3 uses
  %i.bm = icmp ult i64 %i.bj, 168
  br i1 %i.bm, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bl, 2305843009213693944
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.073200.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cy, %._crit_edge.loopexit.unr-lcssa ]
  %.075199.epil.init = phi ptr [ %.pre231, %.lr.ph.preheader ], [ %i.cz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod366)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.073200.epil = phi i32 [ %i.bp, %.lr.ph.epil ], [ %.073200.epil.init, %.lr.ph.epil.preheader ]
  %.075199.epil = phi ptr [ %i.bq, %.lr.ph.epil ], [ %.075199.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.075199.epil, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !1718
  %i.bp = add i32 %i.bo, %.073200.epil            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.075199.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1720

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i, %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit
  %.073.lcssa = phi i32 [ 0, %_ZN5graph6Lookup27fix_existing_subtable_linksERNS_24gsubgpos_graph_context_tEjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE.exit ], [ 0, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ], [ %i.cy, %._crit_edge.loopexit.unr-lcssa ], [ %i.bp, %.lr.ph.epil ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i298, i64 8 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1484
  %i.bt = load ptr, ptr %.0.i298, align 8, !tbaa !1485
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = shl i32 %.073.lcssa, 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = add i64 %i.bw, %i.by                    ; 3 uses
  %i.ca = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.bz) #21 ; 11 uses
  %.not80 = icmp eq ptr %i.ca, null
  br i1 %.not80, label %bb.ch, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.073200 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.cy, %.lr.ph ]
  %.075199 = phi ptr [ %.pre231, %.lr.ph.preheader.new ], [ %i.cz, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.075199, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1718
  %i.cd = add i32 %i.cc, %.073200
  %i.ce = getelementptr inbounds nuw i8, ptr %.075199, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !1718
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %.075199, i64 60
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !1718
  %i.cj = add i32 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %.075199, i64 84
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1718
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.075199, i64 108
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !1718
  %i.cp = add i32 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %.075199, i64 132
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !1718
  %i.cs = add i32 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.075199, i64 156
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !1718
  %i.cv = add i32 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.075199, i64 180
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !1718
  %i.cy = add i32 %i.cx, %i.cv                    ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.075199, i64 192 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !1477, !nonnull !212, !align !1482 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 76 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1559 ; 3 uses
  %i.de = load i32, ptr %i.db, align 8, !tbaa !1560
  %.not.i.i.i84 = icmp slt i32 %i.dd, %i.de
  br i1 %.not.i.i.i84, label %.critedge.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = add i32 %i.dd, 1
  %i.dg = tail call noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i32 noundef %i.df, i1 noundef zeroext false)
  br i1 %i.dg, label %..critedge_crit_edge.i.i.i, label %bb.l, !prof !144

..critedge_crit_edge.i.i.i:                       ; preds = %bb.k
  %.pre.i.i.i = load i32, ptr %i.dc, align 4, !tbaa !1559
  br label %.critedge.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.dh = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.dh, ptr @_hb_CrapPool, align 16
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %bb.j
  %i.di = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.dd, %bb.j ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1558
  %i.dl = add i32 %i.di, 1
  store i32 %i.dl, ptr %i.dc, align 4, !tbaa !1559
  %i.dm = zext i32 %i.di to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dm
  store ptr %i.ca, ptr %i.dn, align 8, !tbaa !289
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit

_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit: ; preds = %bb.l, %.critedge.i.i.i
  %i.do = load i32, ptr %i.db, align 8, !tbaa !1560
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  tail call void @hb_free(ptr noundef nonnull %i.ca) #21
  br label %bb.ch

bb.n:                                             ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit
  %i.dq = load ptr, ptr %.0.i298, align 8, !tbaa !1485 ; 3 uses
  %i.dr = load ptr, ptr %i.br, align 8, !tbaa !1484 ; 2 uses
  %.not.i85 = icmp eq ptr %i.dr, %i.dq
  br i1 %.not.i85, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.dt, %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr readonly align 1 %i.dq, i64 %i.du, i1 false), !alias.scope !1721
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.n, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dw = load i16, ptr %i.dv, align 1, !tbaa !131
  %i.dx = and i16 %i.dw, 4096
  %.not188 = icmp eq i16 %i.dx, 0
  br i1 %.not188, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -2
  %i.ea = load ptr, ptr %i.br, align 8, !tbaa !1484
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -2
  %i.ec = load i16, ptr %i.eb, align 1, !alias.scope !1725
  store i16 %i.ec, ptr %i.dz, align 1, !alias.scope !1725
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL9hb_memcpyPvPKvm.exit
  store ptr %i.ca, ptr %.0.i298, align 8, !tbaa !1485
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store ptr %i.ed, ptr %i.br, align 8, !tbaa !1484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr %i.ca, ptr %i.e, align 8, !tbaa !1456
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !131
  %i.eg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = trunc i32 %.073.lcssa to i16
  %i.ei = add i16 %i.eg, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ek = tail call i16 @llvm.bswap.i16(i16 %i.ei)
  store i16 %i.ek, ptr %i.ej, align 1, !tbaa !312
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !1689 ; 2 uses
  %i.em = load i32, ptr %i.aa, align 4, !tbaa !1653 ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.idx218 = mul nuw nsw i64 %i.en, 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx218
  %.not81210 = icmp eq i32 %i.em, 0
  br i1 %.not81210, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.q
  %i.ep = trunc i32 %3 to i16
  %i.eq = tail call i16 @llvm.bswap.i16(i16 %i.ep)
  %i.er = load i16, ptr @_hb_NullPool, align 16
  br label %bb.t

._crit_edge216:                                   ; preds = %._crit_edge208, %bb.q
  %.val.i = phi i32 [ %2, %bb.q ], [ %i.gc, %._crit_edge208 ]
  %.071.lcssa = phi ptr [ %.0.i298, %bb.q ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.071.lcssa, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !267 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.071.lcssa, i64 20
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !266 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, label %bb.r, !prof !21

bb.r:                                             ; preds = %._crit_edge216
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.ev to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopIN22hb_serialize_context_t8object_t6link_tEZN10hb_array_tIS2_E6_qsortIS2_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS2_E11hb_priorityILj1EEEUlRKS2_SH_E_EvPS7_mT0_(ptr noundef %i.et, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i)
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i, 12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.ev, 1
  br i1 %.not1.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %bb.r
  %.01518.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.critedge.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i
  %.01519.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %.01518.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %.preheader.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.fj, %bb.s ], [ %.01519.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 7 uses
  %i.ex = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !348 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !348 ; 2 uses
  %i.fb = sub i32 %i.ey, %i.fa
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ey, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = sub i32 %i.fd, %i.ff
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.fg, i32 %i.fb
  %i.fh = icmp sgt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.fh, label %bb.s, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.s, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i.i.i.i, i64 12 ; 2 uses
  %i.fi = icmp ult ptr %.015.i.i.i.i.i, %i.ew
  br i1 %i.fi, label %.preheader.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, !llvm.loop !1729

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fj = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.fj, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fj, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !1033
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i, align 4
  %i.fk = icmp ugt ptr %i.fj, %i.et
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i, !llvm.loop !1730

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit: ; preds = %.critedge.i.i.i.i.i, %._crit_edge216, %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fm = mul i32 %.val.i, -1640531535
  %i.fn = call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.fl, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.ch

bb.t:                                             ; preds = %.lr.ph215, %._crit_edge208
  %i.fo = phi ptr [ %i.ca, %.lr.ph215 ], [ %i.ga, %._crit_edge208 ] ; 2 uses
  %i.fp = phi ptr [ %i.ca, %.lr.ph215 ], [ %i.gb, %._crit_edge208 ] ; 2 uses
  %i.fq = phi i32 [ %2, %.lr.ph215 ], [ %i.gc, %._crit_edge208 ] ; 2 uses
  %.071213 = phi ptr [ %.0.i298, %.lr.ph215 ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %.077212 = phi i32 [ 0, %.lr.ph215 ], [ %i.ft, %._crit_edge208 ] ; 2 uses
  %.078211 = phi ptr [ %i.el, %.lr.ph215 ], [ %i.gd, %._crit_edge208 ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.078211, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !1718 ; 3 uses
  %i.ft = add i32 %i.fs, %.077212
  %i.fu = getelementptr inbounds nuw i8, ptr %.078211, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !392 ; 2 uses
  %i.fw = zext i32 %i.fs to i64
  %.idx219 = shl nuw nsw i64 %i.fw, 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx219
  %.not82202 = icmp eq i32 %i.fs, 0
  br i1 %.not82202, label %._crit_edge208, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %bb.t
  %i.fy = load i32, ptr %.078211, align 8, !tbaa !1704
  %i.fz = add i32 %i.fy, %.077212
  br label %.lr.ph207

._crit_edge208:                                   ; preds = %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118, %bb.t
  %i.ga = phi ptr [ %i.fo, %bb.t ], [ %i.mt, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ]
  %i.gb = phi ptr [ %i.fp, %bb.t ], [ %i.mt, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ]
  %i.gc = phi i32 [ %i.fq, %bb.t ], [ %i.ng, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.071213, %bb.t ], [ %.2, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.078211, i64 24 ; 2 uses
  %.not81 = icmp eq ptr %i.gd, %i.eo
  br i1 %.not81, label %._crit_edge216, label %bb.t

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118
  %i.ge = phi ptr [ %i.mt, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fo, %.lr.ph207.preheader ]
  %i.gf = phi ptr [ %i.mt, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fp, %.lr.ph207.preheader ] ; 2 uses
  %i.gg = phi i32 [ %i.ng, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fq, %.lr.ph207.preheader ] ; 2 uses
  %.076205.in = phi i32 [ %.076205, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fz, %.lr.ph207.preheader ]
  %.1204 = phi ptr [ %.2, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %.071213, %.lr.ph207.preheader ]
  %.074203 = phi ptr [ %i.ud, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit118 ], [ %i.fv, %.lr.ph207.preheader ] ; 2 uses
  %.076205 = add i32 %.076205.in, 1               ; 3 uses
  %i.gh = load i32, ptr %.074203, align 4, !tbaa !139 ; 4 uses
  br i1 %i.j, label %bb.u, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit97

bb.u:                                             ; preds = %.lr.ph207
  %i.gi = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef 8) #21 ; 11 uses
  %i.gj = icmp eq i32 %i.gi, -1
  br i1 %i.gj, label %_ZN5graph6Lookup25create_extension_subtableERNS_24gsubgpos_graph_context_tEjj.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gk = load ptr, ptr %i.k, align 8, !tbaa !1477, !nonnull !212, !align !1482 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !1412
  %.not.i.i86 = icmp ult i32 %i.gi, %i.gm
  br i1 %.not.i.i86, label %bb.x, label %bb.w, !prof !144

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87

bb.x:                                             ; preds = %bb.v
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !1420
  %i.gp = zext i32 %i.gi to i64
  %i.gq = getelementptr inbounds nuw [216 x i8], ptr %i.go, i64 %i.gp
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87: ; preds = %bb.x, %bb.w
  %.0.i.i88 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.gq, %bb.x ] ; 6 uses
  %i.gr = load ptr, ptr %.0.i.i88, align 8, !tbaa !1485 ; 3 uses
  store i16 256, ptr %i.gr, align 1, !tbaa !312
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  store i16 %i.eq, ptr %i.gs, align 1, !tbaa !312
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store i32 0, ptr %i.gt, align 1, !tbaa !312
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 20 ; 4 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !266 ; 2 uses
  %i.gw = add i32 %i.gv, 1                        ; 6 uses
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173, label %bb.y, !prof !21

bb.y:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 16 ; 4 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !263 ; 5 uses
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173, label %bb.z, !prof !21

bb.z:                                             ; preds = %bb.y
  %.not.i119 = icmp samesign ugt i32 %i.gw, %i.gz
  br i1 %.not.i119, label %.preheader.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread, !prof !21

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %.01442.i = phi i32 [ %i.hd, %.preheader.i ], [ %i.gz, %bb.z ] ; 2 uses
  %i.hb = lshr i32 %.01442.i, 1
  %i.hc = add nuw i32 %.01442.i, 8
  %i.hd = add nuw i32 %i.hc, %i.hb                ; 7 uses
  %i.he = icmp ugt i32 %i.gw, %i.hd
  br i1 %i.he, label %.preheader.i, label %.thread.i, !llvm.loop !1040

.thread.i:                                        ; preds = %.preheader.i
  %i.hf = icmp ugt i32 %i.hd, 357913941
  br i1 %i.hf, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %.thread.i
  %.not48.i = icmp eq i32 %i.gz, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 24 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !267 ; 2 uses
  br i1 %.not48.i, label %bb.ab, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %.not9.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hi = zext nneg i32 %i.hd to i64
  %i.hj = mul nuw nsw i64 %i.hi, 12
  %i.hk = call ptr @hb_malloc(i64 noundef %i.hj) #21 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52.i, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  %i.hl = load i32, ptr %i.gu, align 4, !tbaa !266 ; 2 uses
  %.not.i.i.i.i123 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i.i123, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %bb.ad
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw nsw i64 %i.hm, 12
  %i.ho = load ptr, ptr %i.hg, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr readonly align 1 %i.ho, i64 %i.hn, i1 false), !alias.scope !1731
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.ab, %bb.aa
  %i.hp = phi ptr [ null, %bb.ab ], [ %i.hh, %bb.aa ]
  %i.hq = zext nneg i32 %i.hd to i64
  %i.hr = mul nuw nsw i64 %i.hq, 12
  %i.hs = call ptr @hb_realloc(ptr noundef %i.hp, i64 noundef %i.hr) #21 ; 2 uses
  %.not22.i = icmp eq ptr %i.hs, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, !prof !117

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52.i: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.ac
  %i.ht = load i32, ptr %i.gy, align 8, !tbaa !263 ; 2 uses
  %.not23.i = icmp ugt i32 %i.hd, %i.ht
  br i1 %.not23.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread, !prof !88

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52.i, %.thread.i
  %.sink.i122.ph.in = phi i32 [ %i.gz, %.thread.i ], [ %i.ht, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52.i ]
  %.sink.i122.ph = xor i32 %.sink.i122.ph.in, -1
  store i32 %.sink.i122.ph, ptr %i.gy, align 8, !tbaa !263
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit: ; preds = %bb.ad, %bb.ae, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i41.i = phi ptr [ %i.hs, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.hk, %bb.ae ], [ %i.hk, %bb.ad ]
  store ptr %.1.i.i41.i, ptr %i.hg, align 8, !tbaa !267
  store i32 %i.hd, ptr %i.gy, align 8, !tbaa !263
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread52.i, %bb.z, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit
  %i.hu = load i32, ptr %i.gu, align 4, !tbaa !266 ; 3 uses
  %i.hv = icmp ugt i32 %i.gw, %i.hu
  br i1 %i.hv, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread
  %i.hw = sub nuw nsw i32 %i.gw, %i.hu
  %i.hx = mul i32 %i.hw, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %bb.af
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i.i88, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !267
  %i.ia = zext nneg i32 %i.hu to i64
  %i.ib = getelementptr inbounds nuw [12 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = zext i32 %i.hx to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ib, i8 0, i64 %i.ic, i1 false)
  br label %bb.ah

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread173: ; preds = %bb.y, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread176, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread
end_hunk_2
begin_hunk_3_@_ZNK5graph20LigatureSubstFormat111clone_rangeERNS_24gsubgpos_graph_context_tEj11hb_vector_tIjLb0EEjj:bb.a
  %i.cr = load i16, ptr %i.d, align 1, !tbaa !131
  %i.cs = call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext i16 %i.cs to i64
  %.not.i162 = icmp samesign ult i64 %indvars.iv, %i.ct
  br i1 %.not.i162, label %bb.q, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, !prof !144

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.p, %bb.q
  %.0.i163 = phi ptr [ %i.cu, %bb.q ], [ @_hb_NullPool, %bb.p ]
  %i.cv = call noundef i32 @_ZN5graph7graph_t24mutable_index_for_offsetEjPKv(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, i32 noundef %2, ptr noundef nonnull %.0.i163), !noalias !2673 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !1536, !noalias !2676
  %.not.i.i164 = icmp ult i32 %i.cv, %i.cx
  br i1 %.not.i.i164, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, label %.thread307

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1420, !noalias !2676
  %i.da = zext i32 %i.cv to i64
  %i.db = getelementptr inbounds nuw [216 x i8], ptr %i.cz, i64 %i.da ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1485, !noalias !2676 ; 5 uses
  %.not4.i.i = icmp eq ptr %i.dc, null
  br i1 %.not4.i.i, label %.thread307, label %bb.r

bb.r:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1484, !noalias !2676
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp ult i64 %i.dh, 2
  br i1 %i.di, label %.thread307, label %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i

_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i: ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2676, !srcloc !133
  %i.dj = load i16, ptr %i.dc, align 1, !tbaa !131, !noalias !2676
  %i.dk = call noundef i16 @llvm.bswap.i16(i16 %i.dj)
  %i.dl = zext i16 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 1
  %i.dn = add nuw nsw i64 %i.dm, 2
  %.not7.i.i = icmp ult i64 %i.dh, %i.dn
  br i1 %.not7.i.i, label %.thread307, label %_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit

_ZN5graph7graph_t16as_mutable_tableINS_11LigatureSetEJEEENS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE1EEEjPKvDpT0_.exit: ; preds = %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !267 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 20 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !266 ; 2 uses
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
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !348 ; 2 uses
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
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !348 ; 2 uses
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
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !348 ; 2 uses
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
  %i.ew = add i32 %.0115330, %.sroa.021.0.extract.trunc
  %.sroa.speculated248 = call i32 @llvm.umax.i32(i32 %i.ew, i32 %.0115330) ; 2 uses
  %i.ex = add i32 %.0115330, %.sroa.422.0.extract.trunc
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ex, i32 %i.cp) ; 2 uses
  %.not149 = icmp ult i32 %.sroa.speculated248, %4
  %.not150 = icmp ugt i32 %.sroa.speculated, %5
  %or.cond308 = select i1 %.not149, i1 true, i1 %.not150
  br i1 %or.cond308, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %i.ey = trunc nuw i64 %indvars.iv to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %i.ey, i32 %.0126328) ; 2 uses
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !1477, !nonnull !212, !align !1482
  %i.fa = load i16, ptr %i.d, align 1, !tbaa !131
  %i.fb = call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i64
  %.not.i169 = icmp samesign ult i64 %indvars.iv, %i.fc
  br i1 %.not.i169, label %bb.x, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171, !prof !144

bb.x:                                             ; preds = %bb.w
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171: ; preds = %bb.w, %bb.x
  %.0.i170 = phi ptr [ %i.fd, %bb.x ], [ @_hb_NullPool, %bb.w ]
  %i.fe = load i16, ptr %i.v, align 1, !tbaa !131
  %i.ff = call noundef i16 @llvm.bswap.i16(i16 %i.fe)
  %i.fg = zext i16 %i.ff to i32
  %.not.i172 = icmp ult i32 %.0119329, %i.fg
  br i1 %.not.i172, label %bb.z, label %bb.y, !prof !144

bb.y:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

bb.z:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit171
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.fh = zext nneg i32 %.0119329 to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.fh
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.y, %bb.z
  %.0.i173 = phi ptr [ @_hb_CrapPool, %bb.y ], [ %i.fi, %bb.z ]
  %i.fj = call noundef i32 @_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_(ptr noundef nonnull align 8 dereferenceable(88) %i.ez, i32 noundef %2, ptr noundef nonnull %.0.i170, i32 noundef %i.j, ptr noundef nonnull %.0.i173) ; 2 uses
  %i.fk = load i16, ptr %i.dc, align 1, !tbaa !131
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32                   ; 2 uses
  %i.fn = load i32, ptr %i.dq, align 4, !tbaa !298 ; 5 uses
  %.not.i174 = icmp ult i32 %i.fn, %i.fm
  br i1 %.not.i174, label %bb.aa, label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

bb.aa:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %i.fo = sub nuw nsw i32 %i.fm, %i.fn
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !267 ; 4 uses
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
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !348 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !348 ; 2 uses
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
  br i1 %i.gc, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, !llvm.loop !1729

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gd = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.gd, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gd, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !1033
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i.i, align 4
  %i.ge = icmp ugt ptr %i.gd, %i.fp
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !1730

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.gf = load ptr, ptr %i.do, align 8, !tbaa !267 ; 2 uses
  %i.gg = load i32, ptr %i.dq, align 4, !tbaa !266 ; 3 uses
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
  %.022.i.epil.init = phi i32 [ 2, %.lr.ph.i177.preheader ], [ %i.hm, %._crit_edge.loopexit.i178.unr-lcssa ]
  %.01821.i.epil.init = phi ptr [ %i.gf, %.lr.ph.i177.preheader ], [ %i.hn, %._crit_edge.loopexit.i178.unr-lcssa ]
  %lcmp.mod446 = icmp ne i64 %xtraiter444, 0
  call void @llvm.assume(i1 %lcmp.mod446)
  br label %.lr.ph.i177.epil

.lr.ph.i177.epil:                                 ; preds = %.lr.ph.i177.epil, %.lr.ph.i177.epil.preheader
  %.022.i.epil = phi i32 [ %i.gn, %.lr.ph.i177.epil ], [ %.022.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %.01821.i.epil = phi ptr [ %i.go, %.lr.ph.i177.epil ], [ %.01821.i.epil.init, %.lr.ph.i177.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i177.epil ], [ 0, %.lr.ph.i177.epil.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.01821.i.epil, i64 4
  store i32 %.022.i.epil, ptr %i.gm, align 4, !tbaa !348
  %i.gn = add i32 %.022.i.epil, 2
  %i.go = getelementptr inbounds nuw i8, ptr %.01821.i.epil, i64 12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter444
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil, !llvm.loop !2679

._crit_edge.loopexit.i178:                        ; preds = %.lr.ph.i177.epil, %._crit_edge.loopexit.i178.unr-lcssa
  %i.gp = trunc i32 %i.gg to i16
  %i.gq = call i16 @llvm.bswap.i16(i16 %i.gp)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i178, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gr = phi i16 [ %i.gq, %._crit_edge.loopexit.i178 ], [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i ]
  store i16 %i.gr, ptr %i.dc, align 1, !tbaa !312
  %i.gs = shl nuw nsw i32 %i.fo, 1
  %i.gt = load ptr, ptr %i.dd, align 8, !tbaa !1028
  %i.gu = zext nneg i32 %i.gs to i64
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv
  store ptr %i.gw, ptr %i.dd, align 8, !tbaa !1028
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.022.i = phi i32 [ 2, %.lr.ph.i177.preheader.new ], [ %i.hm, %.lr.ph.i177 ] ; 9 uses
  %.01821.i = phi ptr [ %i.gf, %.lr.ph.i177.preheader.new ], [ %i.hn, %.lr.ph.i177 ] ; 9 uses
  %niter448 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter448.next.7, %.lr.ph.i177 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.01821.i, i64 4
  store i32 %.022.i, ptr %i.gx, align 4, !tbaa !348
  %i.gy = add nuw nsw i32 %.022.i, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %.01821.i, i64 16
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !348
  %i.ha = add nuw nsw i32 %.022.i, 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.01821.i, i64 28
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !348
  %i.hc = add nuw nsw i32 %.022.i, 6
  %i.hd = getelementptr inbounds nuw i8, ptr %.01821.i, i64 40
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !348
  %i.he = add nuw nsw i32 %.022.i, 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.01821.i, i64 52
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !348
  %i.hg = add nuw nsw i32 %.022.i, 10
  %i.hh = getelementptr inbounds nuw i8, ptr %.01821.i, i64 64
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !348
  %i.hi = add nuw nsw i32 %.022.i, 12
  %i.hj = getelementptr inbounds nuw i8, ptr %.01821.i, i64 76
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !348
  %i.hk = add i32 %.022.i, 14
  %i.hl = getelementptr inbounds nuw i8, ptr %.01821.i, i64 88
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !348
  %i.hm = add i32 %.022.i, 16                     ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.01821.i, i64 96 ; 2 uses
  %niter448.next.7 = add i64 %niter448, 8         ; 2 uses
  %niter448.ncmp.7 = icmp eq i64 %niter448.next.7, %unroll_iter447
  br i1 %niter448.ncmp.7, label %._crit_edge.loopexit.i178.unr-lcssa, label %.lr.ph.i177

bb.ad:                                            ; preds = %_ZNK5graph20LigatureSubstFormat123current_liga_set_boundsERNS_24gsubgpos_graph_context_tEjRKN22hb_serialize_context_t8object_tE.exit
  %.sroa.speculated266 = call i32 @llvm.umax.i32(i32 %4, i32 %.sroa.speculated248)
  %i.ho = sub i32 %.sroa.speculated266, %.0115330 ; 2 uses
  %.sroa.speculated257 = call i32 @llvm.umin.i32(i32 %5, i32 %.sroa.speculated)
  %i.hp = sub i32 %.sroa.speculated257, %.0115330 ; 2 uses
  %i.hq = sub i32 %i.hp, %i.ho                    ; 2 uses
  %i.hr = shl i32 %i.hq, 1
  %i.hs = add i32 %i.hr, 2
  %i.ht = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %i.hs) #21 ; 8 uses
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %.thread307, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = load ptr, ptr %i.l, align 8, !tbaa !1477, !nonnull !212, !align !1482 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !1412
  %.not.i.i.i181 = icmp ult i32 %i.ht, %i.hx
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = zext i32 %i.ht to i64
  %i.ib = getelementptr inbounds nuw [216 x i8], ptr %i.hz, i64 %i.ia
  %.0.i.i.i182 = select i1 %.not.i.i.i181, ptr %i.ib, ptr @_hb_NullPool, !prof !144
  %i.ic = load ptr, ptr %.0.i.i.i182, align 8, !tbaa !347
  %i.id = trunc i32 %i.hq to i16
  %i.ie = call i16 @llvm.bswap.i16(i16 %i.id)
  store i16 %i.ie, ptr %i.ic, align 1, !tbaa !312
  %i.if = load ptr, ptr %i.l, align 8, !tbaa !1477, !nonnull !212, !align !1482
  %i.ig = shl i32 %i.ho, 1
  %i.ih = add i32 %i.ig, 2
  %i.ii = shl i32 %i.hp, 1
  %i.ij = add i32 %i.ii, 2
  call void @_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj(ptr noundef nonnull align 8 dereferenceable(88) %i.if, i32 noundef %i.cv, i32 noundef %i.ih, i32 noundef %i.ij, i32 noundef %i.ht, i32 noundef 2)
  %i.ik = trunc nuw i64 %indvars.iv to i32
  %spec.select154 = call i32 @llvm.umin.i32(i32 %i.ik, i32 %.0126328)
  %i.il = load ptr, ptr %i.l, align 8, !tbaa !1477, !nonnull !212, !align !1482 ; 3 uses
  %i.im = load i16, ptr %i.v, align 1, !tbaa !131
  %i.in = call noundef i16 @llvm.bswap.i16(i16 %i.im)
  %i.io = zext i16 %i.in to i32
  %.not.i183 = icmp ult i32 %.0119329, %i.io
  br i1 %.not.i183, label %bb.ag, label %bb.af, !prof !144

bb.af:                                            ; preds = %bb.ae
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

bb.ag:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !133
  %i.ip = zext nneg i32 %.0119329 to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.ip
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185: ; preds = %bb.af, %bb.ag
  %.0.i184 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.iq, %bb.ag ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 4 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !1412
  %.not.i.i186 = icmp ult i32 %i.j, %i.is
  br i1 %.not.i.i186, label %bb.ai, label %bb.ah, !prof !144

bb.ah:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.ai:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1420
  %i.iv = getelementptr inbounds nuw [216 x i8], ptr %i.iu, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i187 = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.iv, %bb.ai ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 20 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !266 ; 2 uses
  %i.iy = add i32 %i.ix, 1                        ; 5 uses
  %i.iz = icmp slt i32 %i.iy, 0
  br i1 %i.iz, label %bb.an, label %bb.aj, !prof !21

bb.aj:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 16
  %i.jb = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i32 noundef %i.iy, i1 noundef zeroext false)
  br i1 %i.jb, label %bb.ak, label %bb.an, !prof !338

bb.ak:                                            ; preds = %bb.aj
  %i.jc = load i32, ptr %i.iw, align 4, !tbaa !266 ; 3 uses
  %i.jd = icmp ugt i32 %i.iy, %i.jc
  br i1 %i.jd, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.je = sub nuw nsw i32 %i.iy, %i.jc
  %i.jf = mul i32 %i.je, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !21

bb.am:                                            ; preds = %bb.al
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !267
  %i.ji = zext nneg i32 %i.jc to i64
end_hunk_3
