inline.NumInlined: 12641
inline.NumDeleted: 5098
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE5allocEjb:bb.a
  %i.j = icmp ugt i32 %.138, 268435455
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3385
  tail call void @hb_free(ptr noundef %i.m) #20
  br label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3385 ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 4
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #20 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3381 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !3385
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !3411
  br label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #20 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !3378  ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !3385
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !3378
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI9hb_pair_tIjPKN2OT19IndexSubtableRecordEELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.b, label %bb.c, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3382 ; 3 uses
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = sub nuw nsw i32 %1, %i.d
  %i.g = shl i32 %i.f, 3                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3395
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store i32 %1, ptr %i.c, align 4, !tbaa !3382
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11resize_fullEibb.exit: ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i
  %.1.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT19IndexSubtableRecord16add_new_subtableEP19hb_subset_context_tPNS_33cblc_bitmap_size_subset_context_tEPS0_PK11hb_vector_tI9hb_pair_tIjPKS0_ELb0EEPKvPj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.g
  %i.l = icmp slt i64 %i.k, 8
  br i1 %i.l, label %.critedge.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i, !prof !21

.critedge.i.i.i:                                  ; preds = %bb.b
  store i32 4, ptr %i.e, align 4, !tbaa !105
  br label %select.unfold

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.b
  store i64 0, ptr %i.d, align 1
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  store ptr %i.m, ptr %i.c, align 8, !tbaa !106
  %i.n = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.n, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit, !prof !21

_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 1, !tbaa !234  ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 %i.s
  %.0.i.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !21 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3371
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !83
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.z = load <2 x i16>, ptr %.0.i.i.i, align 1, !tbaa !231
  %i.aa = load i16, ptr %.0.i.i.i, align 1, !tbaa !231
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  store <2 x i16> %i.z, ptr %i.d, align 1, !tbaa !289
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.ad, ptr %i.ac, align 1, !tbaa !289
  switch i16 %i.ab, label %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit [
    i16 1, label %.sink.split.i
    i16 3, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit, %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !147
  %i.af = add i32 %i.ae, 8
  store i32 %i.af, ptr %i.y, align 8, !tbaa !147
  br label %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit

_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT13IndexSubtableEEEPT_S4_.exit, %.sink.split.i
  %i.ag = load i32, ptr %6, align 4, !tbaa !147   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3381 ; 2 uses
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.thread116.a

.lr.ph:                                           ; preds = %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %.0154 = phi i32 [ %i.ag, %.lr.ph ], [ %8, %bb.s ] ; 3 uses
  %.083153 = phi i32 [ 0, %.lr.ph ], [ %i.eu, %bb.s ] ; 5 uses
  %i.ao = load ptr, ptr %i.ak, align 8
  %7 = zext i32 %.0154 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %7 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !3415 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !3386 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 1, !tbaa !234 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.au)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 %i.ax
  %.0.i.i.i67 = select i1 %i.av, ptr @_hb_NullPool, ptr %i.ay, !prof !21 ; 2 uses
  %.not64 = icmp eq ptr %.0.i.i.i67, %.0.i.i.i
  br i1 %.not64, label %bb.d, label %.thread116.a

bb.d:                                             ; preds = %bb.c
  %i.az = load i16, ptr %3, align 1, !tbaa !231
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = load i16, ptr %i.al, align 1, !tbaa !231
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb) ; 2 uses
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = icmp ugt i16 %i.ba, %i.bc
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = trunc i32 %i.aq to i16
  %i.bg = tail call i16 @llvm.bswap.i16(i16 %i.bf) ; 2 uses
  store i16 %i.bg, ptr %3, align 1, !tbaa !289
  br label %.sink.split.i68

bb.f:                                             ; preds = %bb.d
  %i.bh = icmp ult i32 %i.aq, %i.bd
  br i1 %i.bh, label %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = xor i32 %i.bd, -1
  %i.bj = add i32 %i.aq, %i.bi
  %i.bk = trunc i32 %i.aq to i16
  %i.bl = tail call i16 @llvm.bswap.i16(i16 %i.bk)
  br label %.sink.split.i68

.sink.split.i68:                                  ; preds = %bb.g, %bb.e
  %.sink.i = phi i16 [ %i.bl, %bb.g ], [ %i.bg, %bb.e ]
  %.0.ph.i = phi i32 [ %i.bj, %bb.g ], [ 0, %bb.e ]
  store i16 %.sink.i, ptr %i.al, align 1, !tbaa !289
  br label %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit

_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit: ; preds = %bb.f, %.sink.split.i68
  %.0.i69 = phi i32 [ 0, %bb.f ], [ %.0.ph.i, %.sink.split.i68 ] ; 6 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !129 ; 6 uses
  %i.bn = load ptr, ptr %i.u, align 8, !tbaa !3371
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !83
  %i.bq = load i32, ptr %i.ac, align 1, !tbaa !234
  %i.br = tail call noundef i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = sub i32 %i.bp, %i.br                    ; 2 uses
  %i.bt = load i16, ptr %i.d, align 1, !tbaa !231
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt)
  switch i16 %i.bu, label %select.unfold [
    i16 1, label %bb.h
    i16 3, label %bb.l
  ]

bb.h:                                             ; preds = %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %.not2344.not.i = icmp eq i32 %.0.i69, 0
  br i1 %.not2344.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.h
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 44 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bz = add i32 %.0.i69, %.083153
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph46.i
  %.02045.i = phi i32 [ 0, %.lr.ph46.i ], [ %i.ck, %bb.k ]
  %i.ca = load i32, ptr %i.y, align 8, !tbaa !147
  %i.cb = add i32 %i.ca, 4
  store i32 %i.cb, ptr %i.y, align 8, !tbaa !147
  %i.cc = load i32, ptr %i.bw, align 4, !tbaa !105
  %.not.i.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %select.unfold, !prof !137

bb.j:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !107
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !106 ; 4 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp slt i64 %i.ch, 4
  br i1 %i.ci, label %.critedge.i.i.i.i.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i, !prof !21

.critedge.i.i.i.i.i:                              ; preds = %bb.j
  store i32 4, ptr %i.bw, align 4, !tbaa !105
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i: ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cj, ptr %i.by, align 8, !tbaa !106
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %select.unfold, label %bb.k, !prof !132

bb.k:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i
  store i32 %i.bv, ptr %i.ce, align 1, !alias.scope !3416
  %i.ck = add nuw i32 %.02045.i, 1                ; 2 uses
  %exitcond53.not.i = icmp eq i32 %i.ck, %.0.i69
  br i1 %exitcond53.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %bb.i, !llvm.loop !3420

bb.l:                                             ; preds = %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %.not39.not.i = icmp eq i32 %.0.i69, 0
  br i1 %.not39.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cl = trunc i32 %i.bs to i16
  %i.cm = tail call i16 @llvm.bswap.i16(i16 %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 44 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cq = add i32 %.0.i69, %.083153
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %.040.i = phi i32 [ 0, %.lr.ph.i ], [ %i.db, %bb.o ]
  %i.cr = load i32, ptr %i.y, align 8, !tbaa !147
  %i.cs = add i32 %i.cr, 2
  store i32 %i.cs, ptr %i.y, align 8, !tbaa !147
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !105
  %.not.i.i.i.i24.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i24.i, label %bb.n, label %select.unfold, !prof !137

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !107
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !106 ; 4 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp slt i64 %i.cy, 2
  br i1 %i.cz, label %.critedge.i.i.i.i27.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i, !prof !21

.critedge.i.i.i.i27.i:                            ; preds = %bb.n
  store i32 4, ptr %i.cn, align 4, !tbaa !105
  br label %select.unfold

_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i: ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store ptr %i.da, ptr %i.cp, align 8, !tbaa !106
  %.not.i.i.i26.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i26.i, label %select.unfold, label %bb.o, !prof !132

bb.o:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i
  store i16 %i.cm, ptr %i.cv, align 1, !alias.scope !3421
  %i.db = add nuw i32 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.db, %.0.i69
  br i1 %exitcond.not.i, label %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit, label %bb.m, !llvm.loop !3425

_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit: ; preds = %bb.o, %bb.k, %bb.l, %bb.h
  %.689 = phi i32 [ %.083153, %bb.l ], [ %.083153, %bb.h ], [ %i.bz, %bb.k ], [ %i.cq, %bb.o ]
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !128
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !325 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !326 ; 4 uses
  %.not.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit
  %i.dh = mul i32 %i.aq, 506952113
  %i.di = and i32 %i.dh, 1073741823
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !327
  %i.dl = urem i32 %i.di, %i.dk                   ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = and i32 %i.dp, 2
  %.not15.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = load i32, ptr %i.dn, align 4, !tbaa !147
  %i.du = icmp eq i32 %i.dt, %i.aq
  br i1 %i.du, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.dv = load i32, ptr %i.ef, align 4, !tbaa !147
  %i.dw = icmp eq i32 %i.dv, %i.aq
  br i1 %i.dw, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !328

._crit_edge.i.i.i:                                ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.lcssa10.i.i.i = phi i32 [ %i.dp, %.lr.ph.i.i.i.i ], [ %i.eh, %bb.q ]
  %i.dx = phi i64 [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.ee, %bb.q ]
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.dx
  %i.dz = trunc i32 %.lcssa10.i.i.i to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %spec.select.i.i.i = select i1 %i.dz, ptr %i.ea, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.q
  %.01016.i13.i.i.i = phi i32 [ %i.ed, %bb.q ], [ %i.dl, %.lr.ph.i.i.i.i ]
  %.017.i12.i.i.i = phi i32 [ %i.eb, %bb.q ], [ 0, %.lr.ph.i.i.i.i ]
  %i.eb = add i32 %.017.i12.i.i.i, 1              ; 2 uses
  %i.ec = add i32 %i.eb, %.01016.i13.i.i.i
  %i.ed = and i32 %i.ec, %i.ds                    ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.ei = and i32 %i.eh, 2
  %.not.i.i.i.i70 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i.i70, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, label %bb.q, !llvm.loop !328

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i:        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i, %bb.p, %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit
  %.0.i.i71 = phi ptr [ @minus_1, %_ZN2OT13IndexSubtable19fill_missing_glyphsEP22hb_serialize_context_tjjPjS3_.exit ], [ %spec.select.i.i.i, %._crit_edge.i.i.i ], [ @minus_1, %bb.p ], [ @minus_1, %.lr.ph.i.i.i ]
  %i.ej = load i32, ptr %.0.i.i71, align 4, !tbaa !147 ; 2 uses
  %.not = icmp eq i32 %i.ej, -1
  %spec.select = select i1 %.not, i32 0, i32 %i.ej ; 2 uses
  %i.ek = load i16, ptr %i.as, align 1, !tbaa !231
  %i.el = tail call noundef i16 @llvm.bswap.i16(i16 %i.ek)
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = icmp ult i32 %spec.select, %i.em
  br i1 %i.en, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i
  %i.eo = sub nuw i32 %spec.select, %i.em
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.eq = load ptr, ptr %2, align 8, !tbaa !3368
  %i.er = load i32, ptr %i.an, align 8, !tbaa !3370
  %i.es = load ptr, ptr %i.u, align 8, !tbaa !3371
  %i.et = tail call noundef zeroext i1 @_ZNK2OT13IndexSubtable17copy_glyph_at_idxEP22hb_serialize_context_tjPKcjP11hb_vector_tIcLb0EEPS0_Pj(ptr noundef nonnull align 1 dereferenceable(12) %.0.i.i.i67, ptr noundef %i.ep, i32 noundef %i.eo, ptr noundef %i.eq, i32 noundef %i.er, ptr noundef %i.es, ptr noundef nonnull %i.d, ptr noundef nonnull %i.y)
  br i1 %i.et, label %bb.s, label %select.unfold, !prof !137

bb.s:                                             ; preds = %bb.r
  %i.eu = add i32 %.689, 1                        ; 2 uses
  %8 = add nuw i32 %.0154, 1                      ; 2 uses
  %i.ev = load i32, ptr %i.ah, align 4, !tbaa !3381 ; 2 uses
  %i.ew = icmp ult i32 %8, %i.ev
  br i1 %i.ew, label %bb.c, label %.thread116.a, !llvm.loop !3426

.thread116.a:                                     ; preds = %bb.s, %bb.c, %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit
  %storemerge = phi i32 [ %i.ai, %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit ], [ %i.ev, %bb.s ], [ %.0154, %bb.c ]
  %.083152 = phi i32 [ 0, %_ZN2OT13IndexSubtable15populate_headerEjjjPj.exit ], [ %i.eu, %bb.s ], [ %.083153, %bb.c ]
  store i32 %storemerge, ptr %6, align 4, !tbaa !147
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.ey = load ptr, ptr %i.u, align 8, !tbaa !3371
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !83
  %i.fb = tail call noundef zeroext i1 @_ZN2OT13IndexSubtable15finish_subtableEP22hb_serialize_context_tjjPj(ptr noundef nonnull align 1 dereferenceable(12) %i.d, ptr noundef %i.ex, i32 noundef %i.fa, i32 noundef %.083152, ptr noundef nonnull %i.y)
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i, %bb.r, %bb.m, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i, %bb.i, %.thread116.a, %.critedge.i.i.i.i.i, %.critedge.i.i.i.i27.i, %_ZL9hb_memsetPvij.exit.i.i.i, %.critedge.i.i.i, %bb.a
  %.7 = phi i1 [ %i.fb, %.thread116.a ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %.critedge.i.i.i.i.i ], [ false, %.critedge.i.i.i.i27.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EjLj4EEELb1EEEEEPT_mb.exit.i.i.i.i ], [ false, %bb.m ], [ false, %bb.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEEEEPT_mb.exit.i.i.i.i ], [ false, %bb.r ], [ false, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit.i ], [ false, %_ZN2OT19IndexSubtableRecord20add_glyph_for_subsetEj.exit ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !3401   ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.k, label %bb.b, !prof !21

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
  br i1 %or.cond, label %.thread, label %bb.k

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.k, !prof !21

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !3427

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 5 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp ne i32 %.138, 0                ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48 = icmp eq i32 %i.a, 0
  br i1 %.not48, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.l = shl nuw i32 %.138, 3
  %i.m = zext i32 %i.l to i64
  %i.n = tail call ptr @hb_malloc(i64 noundef %i.m) #20 ; 4 uses
  %.not15.i.i = icmp eq ptr %i.n, null
  br i1 %.not15.i.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %.preheader.i.i, !prof !21

.preheader.i.i:                                   ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3382
  %.not18.i.i = icmp eq i32 %i.p, 0
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.h, %.preheader.i.i
  %i.r = load i32, ptr %0, align 8, !tbaa !3401
  %i.s = add i32 %i.r, -1
  %spec.select.i16.i.i = icmp ult i32 %i.s, -2
  br i1 %spec.select.i16.i.i, label %.sink.split.i.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i ; 4 uses
  store i64 0, ptr %i.t, align 1
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !3395
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.i ; 3 uses
  %i.w = load i16, ptr %i.v, align 1
  store i16 %i.w, ptr %i.t, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.z = load i16, ptr %i.x, align 1
  store i16 %i.z, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !234
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.ab, ptr %i.ac, align 1, !tbaa !289
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ad = load i32, ptr %i.o, align 4, !tbaa !3382
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ae
  br i1 %i.af, label %bb.h, label %._crit_edge.i.i, !llvm.loop !3428

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.f
  %.012.ph.i.i = phi ptr [ null, %bb.f ], [ %i.n, %._crit_edge.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3395
  tail call void @hb_free(ptr noundef %i.ah) #20
  br label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.g, %.sink.split.i.i
  %.012.i.i = phi ptr [ %.012.ph.i.i, %.sink.split.i.i ], [ null, %bb.g ] ; 2 uses
  %.not22 = icmp eq ptr %.012.i.i, null
  %spec.select = and i1 %.not.i.i, %.not22
  br i1 %spec.select, label %bb.i, label %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !3429

bb.i:                                             ; preds = %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ai = load i32, ptr %0, align 8, !tbaa !3401  ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ai
  br i1 %.not23, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = xor i32 %i.ai, -1
  br label %.sink.split

_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %._crit_edge.i.i, %bb.f, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.012.i.i42 = phi ptr [ %.012.i.i, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ %i.n, %._crit_edge.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.012.i.i42, ptr %i.ak, align 8, !tbaa !3395
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.j
  %.sink = phi i32 [ %i.aj, %bb.j ], [ %.138, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.j ], [ true, %_ZN11hb_vector_tIN2OT19IndexSubtableRecordELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXntsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !3401
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.c, %bb.d, %bb.i, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.i ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT13IndexSubtable17copy_glyph_at_idxEP22hb_serialize_context_tjPKcjP11hb_vector_tIcLb0EEPS0_Pj(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !231
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZN2OT13IndexSubtable10add_offsetEP22hb_serialize_context_tjPj.exit [
    i16 1, label %bb.b
    i16 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = add i32 %2, 1
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 1, !tbaa !234
  %i.h = tail call noundef i32 @llvm.bswap.i32(i32 %i.g) ; 2 uses
  %i.i = zext i32 %2 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %i.k = load i32, ptr %i.j, align 1, !tbaa !234
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 3 uses
  %.not.i.i = icmp ugt i32 %i.h, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZN2OT13IndexSubtable10add_offsetEP22hb_serialize_context_tjPj.exit, !prof !137

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1, !tbaa !234
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = add i32 %i.o, %i.l
  %i.q = sub nuw i32 %i.h, %i.l
  br label %_ZNK2OT13IndexSubtable14get_image_dataEjPjS1_S1_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !230
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = add i32 %2, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1, !tbaa !231
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 2 uses
  %i.x = zext i32 %2 to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.x
  %i.z = load i16, ptr %i.y, align 1, !tbaa !231
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z) ; 3 uses
  %.not.i8.i = icmp ugt i16 %i.w, %i.aa
  br i1 %.not.i8.i, label %bb.e, label %_ZN2OT13IndexSubtable10add_offsetEP22hb_serialize_context_tjPj.exit, !prof !137

bb.e:                                             ; preds = %bb.d
  %i.ab = zext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !234
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = add i32 %i.ae, %i.ab
end_hunk_0
