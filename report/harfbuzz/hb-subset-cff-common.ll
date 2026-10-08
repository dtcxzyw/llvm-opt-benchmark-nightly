Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff-common?download=true
inline.NumInlined: 405
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE5allocEjb:bb.a
  tail call void @hb_free(ptr noundef %i.m) #7
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #7 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !35

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !35

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 309237645241) %i.v, i1 false), !alias.scope !202
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #7 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !74

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !42    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !44
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK12hb_bit_set_t7get_minEv(ptr noundef nonnull align 8 dereferenceable(48) %0) ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !11
  %i.e = icmp ne i32 %i.d, -1
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 5 uses
  %i.h = lshr i32 %i.b, 9                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !75   ; 5 uses
  %.not = icmp ult i32 %i.j, %i.l
  br i1 %.not, label %bb.d, label %.critedge, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77
  %.not45 = icmp eq i32 %i.o, %i.h
  br i1 %.not45, label %.thread, label %.critedge, !prof !43

.thread:                                          ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78
  br label %bb.k

.critedge:                                        ; preds = %bb.c, %bb.d
  %.not1.i.i.i.i = icmp sgt i32 %i.l, 0
  br i1 %.not1.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit

.lr.ph.preheader.i.i.i.i:                         ; preds = %.critedge
  %i.r = add nsw i32 %i.l, -1
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i
  %.0203.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.h ], [ %i.r, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i = phi i32 [ %.223.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.s = add i32 %.0212.i.i.i.i, %.0203.i.i.i.i
  %i.t = lshr i32 %i.s, 1                         ; 4 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !77   ; 2 uses
  %i.y = icmp slt i32 %i.h, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = add nsw i32 %i.t, -1
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %.not28.i.i.i.i = icmp eq i32 %i.h, %i.x
  br i1 %.not28.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw nsw i32 %i.t, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.223.i.i.i.i = phi i32 [ %i.aa, %bb.g ], [ %.0212.i.i.i.i, %bb.e ] ; 3 uses
  %.2.i.i.i.i = phi i32 [ %.0203.i.i.i.i, %bb.g ], [ %i.z, %bb.e ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit, label %.lr.ph.i.i.i.i, !llvm.loop !203

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.h, %bb.f, %.critedge
  %storemerge.i.i.ph.sink.i.i = phi i32 [ 0, %.critedge ], [ %.223.i.i.i.i, %bb.h ], [ %i.t, %bb.f ] ; 5 uses
  %.not28 = icmp ult i32 %storemerge.i.i.ph.sink.i.i, %i.l
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit
  store i32 -1, ptr %1, align 4, !tbaa !11
  br label %bb.w

bb.j:                                             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit
  store atomic i32 %storemerge.i.i.ph.sink.i.i, ptr %i.i monotonic, align 8
  %.pre = zext i32 %storemerge.i.i.ph.sink.i.i to i64 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.pre
  %.pre57 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !77
  %i.ab = icmp eq i32 %.pre57, %i.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.o, !prof !206

bb.k:                                             ; preds = %.thread, %bb.j
  %.pn = phi i64 [ %i.m, %.thread ], [ %.pre, %bb.j ]
  %i.ae = phi ptr [ %i.q, %.thread ], [ %i.ad, %bb.j ] ; 2 uses
  %.078 = phi i32 [ %i.j, %.thread ], [ %storemerge.i.i.ph.sink.i.i, %bb.j ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.pn ; 2 uses
  %i.ag = load i32, ptr %1, align 4, !tbaa !11
  %i.ah = add i32 %i.ag, 1                        ; 3 uses
  %i.ai = and i32 %i.ah, 511                      ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZNK13hb_bit_page_t4nextEPj.exit.thread, label %.lr.ph.preheader.i

_ZNK13hb_bit_page_t4nextEPj.exit.thread:          ; preds = %bb.k
  store i32 -1, ptr %1, align 4, !tbaa !11
  br label %bb.n

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !79
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.al
  %i.an = lshr i32 %i.ai, 6                       ; 2 uses
  %i.ao = and i32 %i.ah, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !81
  %i.at = zext nneg i32 %i.ao to i64
  %notmask.i = shl nsw i64 -1, %i.at
  %i.au = and i64 %i.as, %notmask.i
  store i64 %i.au, ptr %i.a, align 8, !tbaa !81
  %i.av = lshr i32 %i.ah, 6
  %i.aw = and i32 %i.av, 7                        ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = or disjoint i32 %i.aw, 8
  %i.az = sub nuw nsw i32 %i.ay, %i.an
  %wide.trip.count.i = zext nneg i32 %i.az to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ax, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %.027.i = phi ptr [ %i.a, %.lr.ph.preheader.i ], [ %2, %bb.l ]
  %i.ba = load i64, ptr %.027.i, align 8, !tbaa !81 ; 2 uses
  %.not20.not.i.not = icmp eq i64 %i.ba, 0
  br i1 %.not20.not.i.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %2 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK13hb_bit_page_t4nextEPj.exit, label %.lr.ph.i, !llvm.loop !204

_ZNK13hb_bit_page_t4nextEPj.exit:                 ; preds = %bb.l
  store i32 -1, ptr %1, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.bc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bd = shl nuw nsw i32 %i.bc, 6
  %i.be = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ba, i1 true)
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf            ; 2 uses
  store i32 %i.bg, ptr %1, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i32, ptr %i.af, align 4, !tbaa !77
  %i.bi = shl i32 %i.bh, 9
  %i.bj = add i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %1, align 4, !tbaa !11
  br label %bb.w

bb.n:                                             ; preds = %_ZNK13hb_bit_page_t4nextEPj.exit, %_ZNK13hb_bit_page_t4nextEPj.exit.thread
  %i.bk = add i32 %.078, 1
  %.pre58 = load i32, ptr %i.k, align 4, !tbaa !75
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.bl = phi ptr [ %i.ae, %bb.n ], [ %i.ad, %bb.j ]
  %i.bm = phi i32 [ %.pre58, %bb.n ], [ %i.l, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.bk, %bb.n ], [ %storemerge.i.i.ph.sink.i.i, %bb.j ] ; 2 uses
  %i.bn = icmp ult i32 %.1, %i.bm
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bo = zext i32 %.1 to i64
  %wide.trip.count = zext i32 %i.bm to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge31
  %indvars.iv = phi i64 [ %i.bo, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge31 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !79
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr %i.bl, i64 %i.bs ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !81 ; 2 uses
  %.not.i32 = icmp eq i64 %i.bv, 0
  br i1 %.not.i32, label %bb.p, label %_ZNK13hb_bit_page_t7get_minEv.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !81 ; 2 uses
  %.not.1.i = icmp eq i64 %i.bx, 0
  br i1 %.not.1.i, label %bb.q, label %_ZNK13hb_bit_page_t7get_minEv.exit

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !81 ; 2 uses
  %.not.2.i = icmp eq i64 %i.bz, 0
  br i1 %.not.2.i, label %bb.r, label %_ZNK13hb_bit_page_t7get_minEv.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !81 ; 2 uses
  %.not.3.i = icmp eq i64 %i.cb, 0
  br i1 %.not.3.i, label %bb.s, label %_ZNK13hb_bit_page_t7get_minEv.exit

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !81 ; 2 uses
  %.not.4.i = icmp eq i64 %i.cd, 0
  br i1 %.not.4.i, label %bb.t, label %_ZNK13hb_bit_page_t7get_minEv.exit

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !81 ; 2 uses
  %.not.5.i = icmp eq i64 %i.cf, 0
  br i1 %.not.5.i, label %bb.u, label %_ZNK13hb_bit_page_t7get_minEv.exit

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !81 ; 2 uses
  %.not.6.i = icmp eq i64 %i.ch, 0
  br i1 %.not.6.i, label %bb.v, label %_ZNK13hb_bit_page_t7get_minEv.exit

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !81 ; 2 uses
  %.not.7.i = icmp eq i64 %i.cj, 0
  br i1 %.not.7.i, label %.critedge31, label %_ZNK13hb_bit_page_t7get_minEv.exit

_ZNK13hb_bit_page_t7get_minEv.exit:               ; preds = %.lr.ph, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0712.lcssa.wide.i = phi i32 [ 0, %.lr.ph ], [ 64, %bb.p ], [ 128, %bb.q ], [ 192, %bb.r ], [ 256, %bb.s ], [ 320, %bb.t ], [ 384, %bb.u ], [ 448, %bb.v ]
  %.lcssa.i = phi i64 [ %i.bv, %.lr.ph ], [ %i.bx, %bb.p ], [ %i.bz, %bb.q ], [ %i.cb, %bb.r ], [ %i.cd, %bb.s ], [ %i.cf, %bb.t ], [ %i.ch, %bb.u ], [ %i.cj, %bb.v ]
  %i.ck = trunc nuw i64 %indvars.iv to i32
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = or disjoint i32 %.0712.lcssa.wide.i, %i.cm
  %i.co = load i32, ptr %i.bp, align 4, !tbaa !77
  %i.cp = shl i32 %i.co, 9
  %i.cq = or disjoint i32 %i.cn, %i.cp
  store i32 %i.cq, ptr %1, align 4, !tbaa !11
  store atomic i32 %i.ck, ptr %i.i monotonic, align 8
  br label %bb.w

.critedge31:                                      ; preds = %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !205

._crit_edge:                                      ; preds = %.critedge31, %bb.o
  store i32 -1, ptr %1, align 4, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %bb.i, %._crit_edge, %bb.m, %_ZNK13hb_bit_page_t7get_minEv.exit, %bb.b
  %.4 = phi i1 [ %i.e, %bb.b ], [ false, %bb.i ], [ true, %bb.m ], [ true, %_ZNK13hb_bit_page_t7get_minEv.exit ], [ false, %._crit_edge ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i32, ptr %2, align 4, !tbaa !11
  store i32 %i.b, ptr %i.a, align 4, !tbaa !11
  %i.c = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %1, align 4, !tbaa !11
  store i32 -1, ptr %2, align 4, !tbaa !11
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %storemerge = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.e ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !11
  %i.e = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a)
  br i1 %i.e, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !11
  %i.h = add i32 %i.g, 1
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %.critedge, !llvm.loop !207

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK12hb_bit_set_t7get_minEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85   ; 2 uses
  %.not25.not = icmp eq i32 %i.b, 0
  br i1 %.not25.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.j ; 18 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !84
  switch i32 %i.l, label %._ZNK13hb_bit_page_t8is_emptyEv.exit.thread18_crit_edge [
    i32 -1, label %bb.c
    i32 0, label %bb.m
  ]

._ZNK13hb_bit_page_t8is_emptyEv.exit.thread18_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread18

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %.not.not.i.i = icmp ne i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %.not.1.not.i.i = icmp ne i64 %i.p, 0
end_hunk_0
