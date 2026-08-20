inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN14hb_inc_bimap_t3addEj:bb.a
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !425
  %i.aw = zext i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !137
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i, %bb.f, %_ZNK12hb_hashmap_tIjjLb1EEixEj.exit
  %i.az = load i32, ptr %i.b, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !281, !range !132, !noundef !198
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1)
  br label %_ZN23hb_bit_set_invertible_t3addEj.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.a, i32 noundef %1)
  br label %_ZN23hb_bit_set_invertible_t3addEj.exit

_ZN23hb_bit_set_invertible_t3addEj.exit:          ; preds = %bb.b, %bb.c
  ret void
}

declare void @hb_set_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_inc_bimap_t4sortEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !468  ; 8 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %.not.i14.not = icmp eq i32 %i.b, 0             ; 2 uses
  br i1 %.not.i14.not, label %_ZN11hb_vector_tIjLb0EE5qsortIPFiPKvS3_EEEvT_.exit, label %.preheader.i, !prof !142

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.043.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = lshr i32 %.043.i, 1
  %i.e = add nuw i32 %.043.i, 8
  %i.f = add nuw i32 %i.e, %i.d                   ; 4 uses
  %i.g = icmp ugt i32 %i.b, %i.f
  br i1 %i.g, label %.preheader.i, label %.thread.i, !llvm.loop !469

.thread.i:                                        ; preds = %.preheader.i
  %i.h = icmp ugt i32 %i.f, 1073741823
  br i1 %i.h, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.i = shl nuw i32 %i.f, 2
  %i.j = zext i32 %i.i to i64
  %i.k = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.j) #18 ; 6 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %.lr.ph, !prof !118

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.m = load i32, ptr @_hb_NullPool, align 16    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i32 %i.b, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

._crit_edge.unr-lcssa:                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod63 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.p = load i32, ptr %i.l, align 4, !tbaa !425
  %i.q = zext i32 %i.p to i64
  %.not.i.epil = icmp samesign ult i64 %indvars.iv.epil.init, %i.q
  br i1 %.not.i.epil, label %bb.d, label %bb.c, !prof !142

bb.c:                                             ; preds = %.epil.preheader
  store i32 %i.m, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.epil

bb.d:                                             ; preds = %.epil.preheader
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !426
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  %.pre.epil = load i32, ptr %i.s, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.epil

_ZN11hb_vector_tIjLb0EEixEi.exit.epil:            ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %i.m, %bb.c ], [ %.pre.epil, %bb.d ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.epil.init
  store i32 %i.t, ptr %i.u, align 4, !tbaa !137
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %_ZN11hb_vector_tIjLb0EEixEi.exit.epil
  %.sroa.2.8.insert.ext.i.i.i = zext nneg i32 %i.b to i64
  tail call void @qsort(ptr noundef nonnull %i.k, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i, i64 noundef range(i64 0, 4294967296) 4, ptr noundef nonnull @_ZN14hb_inc_bimap_t6cmp_idEPKvS1_) #18
  br label %_ZN11hb_vector_tIjLb0EE5qsortIPFiPKvS3_EEEvT_.exit

_ZN11hb_vector_tIjLb0EE5qsortIPFiPKvS3_EEEvT_.exit: ; preds = %bb.b, %._crit_edge
  %.sroa.11.05862 = phi ptr [ %i.k, %._crit_edge ], [ null, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !468
  %.not.i.i12 = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %.not8.i.i = icmp eq i32 %i.x, 0
  %or.cond.i.i = select i1 %.not.i.i12, i1 %.not8.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZN14hb_inc_bimap_t5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5qsortIPFiPKvS3_EEEvT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !470
  %.fr15.i.i = freeze i32 %i.z
  %i.aa = add i32 %.fr15.i.i, 1                   ; 2 uses
  %.not912.i.i = icmp ult i32 %i.aa, 2
  br i1 %.not912.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.sroa.2.8.insert.ext.i.i.i13 = zext i32 %i.aa to i64
  %.idx.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i13, 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !335
  %i.ad = add nsw i64 %.idx.i.i, -12
  %i.ae = urem i64 %i.ad, 12
  %i.af = sub nuw nsw i64 %.idx.i.i, %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ac, i8 0, i64 %i.af, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.e
  store i32 0, ptr %i.w, align 8, !tbaa !471
  store i32 0, ptr %i.a, align 4, !tbaa !468
  br label %_ZN14hb_inc_bimap_t5clearEv.exit

_ZN14hb_inc_bimap_t5clearEv.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EE5qsortIPFiPKvS3_EEEvT_.exit, %._crit_edge.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.ag, align 4, !tbaa !425
  br i1 %.not.i14.not, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %_ZN14hb_inc_bimap_t5clearEv.exit
  %wide.trip.count49 = zext nneg i32 %i.b to i64
  br label %.lr.ph43

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZN11hb_vector_tIjLb0EEixEi.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN11hb_vector_tIjLb0EEixEi.exit.1 ]
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !425
  %i.ai = zext i32 %i.ah to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.ai
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !142

bb.g:                                             ; preds = %bb.f
  store i32 %i.m, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !426
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %.pre = load i32, ptr %i.ak, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %i.m, %bb.g ], [ %.pre, %bb.h ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !137
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.an = load i32, ptr %i.l, align 4, !tbaa !425
  %i.ao = zext i32 %i.an to i64
  %.not.i.1 = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %.not.i.1, label %bb.j, label %bb.i, !prof !142

bb.i:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  store i32 %i.m, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.1

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !426
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %.pre.1 = load i32, ptr %i.aq, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.1

_ZN11hb_vector_tIjLb0EEixEi.exit.1:               ; preds = %bb.j, %bb.i
  %i.ar = phi i32 [ %i.m, %bb.i ], [ %.pre.1, %bb.j ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !137
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.f, !llvm.loop !472

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %.lr.ph43
  %indvars.iv46 = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next47, %.lr.ph43 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.05862, i64 %indvars.iv46
  %i.au = load i32, ptr %i.at, align 4, !tbaa !137
  %i.av = tail call noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.au) ; 0 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.thread, label %.lr.ph43, !llvm.loop !473

_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.thread: ; preds = %.lr.ph43
  tail call void @hb_free(ptr noundef nonnull %.sroa.11.05862) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN14hb_inc_bimap_t5clearEv.exit, %bb.a, %.thread.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14hb_inc_bimap_t7add_setEPK8hb_set_t(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %2 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 3 uses
  %3 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %4 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(49) %i.c, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %3, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %.fca.0.load.i.i.i, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %.fca.1.load.i.i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(49) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.e = trunc i64 %.fca.1.load.i.i.i to i32      ; 2 uses
  %.not6 = icmp eq i32 %i.e, -1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit
  %i.g = phi i32 [ %i.e, %.lr.ph ], [ %i.y, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ]
  %i.h = call noundef i32 @_ZN14hb_inc_bimap_t3addEj(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.g) ; 0 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !378    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !281, !range !132, !noundef !198
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull %i.d) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.n = load i32, ptr %i.d, align 8, !tbaa !137  ; 5 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !137
  %i.o = icmp eq i32 %i.n, -2
  br i1 %i.o, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.d, align 8, !tbaa !137
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.n, ptr %i.b, align 4, !tbaa !137
  %i.p = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull %i.b) ; 0 uses
  %i.q = add i32 %i.n, 1                          ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !137
  %i.s = icmp ult i32 %i.q, %i.r
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.n, ptr %i.b, align 4, !tbaa !137
  %i.t = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !137
  %i.v = add i32 %i.u, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i.i = phi i32 [ %i.v, %bb.g ], [ %i.q, %bb.f ]
  store i32 %.sink.i.i.i, ptr %i.d, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i:   ; preds = %bb.i, %bb.c
  %i.w = load i32, ptr %i.f, align 4, !tbaa !381  ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, label %bb.j, !prof !21

bb.j:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.f, align 4, !tbaa !381
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i, %bb.j
  %i.y = load i32, ptr %i.d, align 8, !tbaa !382  ; 2 uses
  %.not = icmp eq i32 %i.y, -1
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @hb_set_subtract(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT23index_map_subset_plan_t5remapEPKNS_16DeltaSetIndexMapERK14hb_inc_bimap_tRK11hb_vector_tIS4_Lb0EEPK16hb_subset_plan_t(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 1, ptr %i.a, align 8, !tbaa !474
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 1, ptr %i.b, align 4, !tbaa !475
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !476  ; 2 uses
  %.not98 = icmp eq i32 %i.d, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !349
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i32, ptr @_hb_NullPool, align 16    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = zext i32 %i.d to i64                     ; 2 uses
  %i.l = zext i32 %i.f to i64
  %i.m = icmp eq i32 %i.h, 0
  br label %bb.f

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.n = load i32, ptr %0, align 8, !tbaa !448    ; 5 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.critedge, label %bb.b, !prof !21

bb.b:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %i.n, i1 noundef zeroext false)
  br i1 %i.q, label %bb.c, label %.critedge, !prof !396

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !425  ; 3 uses
  %i.t = icmp ugt i32 %i.n, %i.s
  br i1 %i.t, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.u = sub nuw nsw i32 %i.n, %i.s
  %i.v = shl i32 %i.u, 2                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !426
  %i.y = zext nneg i32 %i.s to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = zext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.aa, i1 false)
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 6 uses
  %i.ab = phi i32 [ 1, %.lr.ph ], [ %i.bt, %bb.m ] ; 3 uses
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.l
  %i.ac = load ptr, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %indvars.iv
  %.0.i = select i1 %.not.i, ptr %i.ad, ptr @_hb_NullPool, !prof !142 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !468
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i45 = icmp samesign ult i64 %indvars.iv, %i.k
  br i1 %.not.i45, label %_ZN11hb_vector_tIjLb0EEixEi.exit, label %_ZN11hb_vector_tIjLb0EEixEi.exit.thread, !prof !142

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %.pr = load i32, ptr %i.ah, align 4, !tbaa !137
  %i.ai = icmp eq i32 %.pr, 0
  br i1 %i.ai, label %bb.k, label %bb.h

_ZN11hb_vector_tIjLb0EEixEi.exit.thread:          ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t16cull_unreachableERK12hb_hashmap_tIj6TripleLb0EE:bb.a
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %i.t
  tail call void @_ZN2OT4swapERNS_13tuple_delta_tES1_(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %i.v) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = add i32 %.01013, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.1 = phi i32 [ %.01013, %bb.c ], [ %i.x, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !549  ; 4 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.c, label %._crit_edge, !llvm.loop !554
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT17item_variations_t16as_item_varstoreEbb(ptr noundef nonnull align 8 dereferenceable(193) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_array_t.371, align 8     ; 5 uses
  %4 = alloca %struct.hb_hashmap_t.364, align 8   ; 11 uses
  %5 = alloca %struct.hb_vector_t.239, align 8    ; 25 uses
  %6 = alloca %struct.hb_hashmap_t.366, align 8   ; 12 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.hb_bit_set_t, align 8       ; 27 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !422  ; 13 uses
  %.not746 = icmp eq i32 %i.f, 0
  br i1 %.not746, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !548  ; 4 uses
  %.not890 = icmp eq i32 %i.h, 0
  br i1 %.not890, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = load i32, ptr @_hb_NullPool, align 16    ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = zext i32 %i.h to i64                     ; 5 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.h, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, 4294967294
  br label %bb.j

._crit_edge.unr-lcssa:                            ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0133809.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ay, %._crit_edge.unr-lcssa ]
  %lcmp.mod1500 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod1500)
  %.not.i.epil = icmp samesign ult i64 %indvars.iv.epil.init, %i.l
  br i1 %.not.i.epil, label %bb.d, label %bb.c, !prof !142

bb.c:                                             ; preds = %.epil.preheader
  store i32 %i.i, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.epil

bb.d:                                             ; preds = %.epil.preheader
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.epil.init
  %.pre.epil = load i32, ptr %i.n, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.epil

_ZN11hb_vector_tIjLb0EEixEi.exit.epil:            ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.i, %bb.c ], [ %.pre.epil, %bb.d ]
  %i.p = add i32 %i.o, %.0133809.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %_ZN11hb_vector_tIjLb0EEixEi.exit.epil
  %.lcssa1498 = phi i32 [ %i.ay, %._crit_edge.unr-lcssa ], [ %i.p, %_ZN11hb_vector_tIjLb0EEixEi.exit.epil ] ; 2 uses
  %i.q = icmp slt i32 %.lcssa1498, 0
  br i1 %i.q, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread, label %._crit_edge.thread, !prof !555

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.r = phi i32 [ %.lcssa1498, %._crit_edge ], [ 0, %bb.b ] ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = tail call noundef zeroext i1 @_ZN11hb_vector_tIS_IiLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.r, i1 noundef zeroext false)
  br i1 %i.t, label %bb.e, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread

bb.e:                                             ; preds = %._crit_edge.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 6 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !415  ; 6 uses
  %i.w = icmp ugt i32 %i.r, %i.v
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = sub nuw nsw i32 %i.r, %i.v
  %i.y = shl i32 %i.x, 4                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread1119, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !416
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 0, i64 %i.ad, i1 false)
  br label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread1119

bb.h:                                             ; preds = %bb.e
  %i.ae = icmp ult i32 %i.r, %i.v
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %i.af = sub nuw i32 %i.v, %i.r
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !416
  %i.ai = zext i32 %i.v to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ai
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.al, %_ZN11hb_vector_tIiLb0EED2Ev.exit.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.046.i.i.i = phi i32 [ %i.ak, %_ZN11hb_vector_tIiLb0EED2Ev.exit.i.i.i ], [ %i.af, %.lr.ph.preheader.i.i.i ]
  %i.ak = add i32 %.046.i.i.i, -1                 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !417
  %i.an = add i32 %i.am, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.an, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIiLb0EED2Ev.exit.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.ao, align 4, !tbaa !199
  %i.ap = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !418
  tail call void @hb_free(ptr noundef %i.aq) #18
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIiLb0EED2Ev.exit.i.i.i:           ; preds = %bb.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit, label %.lr.ph.i.i.i, !llvm.loop !419

_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread1119: ; preds = %bb.f, %bb.g
  store i32 %i.r, ptr %i.u, align 4, !tbaa !415
  br label %.lr.ph812

_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit:    ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit.i.i.i, %bb.h
  store i32 %i.r, ptr %i.u, align 4, !tbaa !415
  %.not810.not = icmp eq i32 %i.r, 0
  br i1 %.not810.not, label %.critedge, label %.lr.ph812

.lr.ph812:                                        ; preds = %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread1119, %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = icmp slt i32 %i.f, 0
  br i1 %i.as, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread, label %.lr.ph812.split.preheader, !prof !21

.lr.ph812.split.preheader:                        ; preds = %.lr.ph812
  %wide.trip.count949 = zext nneg i32 %i.r to i64
  br label %.lr.ph812.split

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZN11hb_vector_tIjLb0EEixEi.exit.1 ] ; 4 uses
  %.0133809 = phi i32 [ 0, %.lr.ph.new ], [ %i.ay, %_ZN11hb_vector_tIjLb0EEixEi.exit.1 ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN11hb_vector_tIjLb0EEixEi.exit.1 ]
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.l
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !142

bb.k:                                             ; preds = %bb.j
  store i32 %i.i, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %.pre = load i32, ptr %i.at, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.k, %bb.l
  %i.au = phi i32 [ %i.i, %bb.k ], [ %.pre, %bb.l ]
  %i.av = add i32 %i.au, %.0133809
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not.i.1 = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %.not.i.1, label %bb.n, label %bb.m, !prof !142

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  store i32 %i.i, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.1

bb.n:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  %.pre.1 = load i32, ptr %i.aw, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit.1

_ZN11hb_vector_tIjLb0EEixEi.exit.1:               ; preds = %bb.n, %bb.m
  %i.ax = phi i32 [ %i.i, %bb.m ], [ %.pre.1, %bb.n ]
  %i.ay = add i32 %i.ax, %i.av                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.j, !llvm.loop !556

.lr.ph812.split:                                  ; preds = %.lr.ph812.split.preheader, %bb.t
  %indvars.iv946 = phi i64 [ 0, %.lr.ph812.split.preheader ], [ %indvars.iv.next947, %bb.t ] ; 3 uses
  %i.az = load i32, ptr %i.u, align 4, !tbaa !415
  %i.ba = zext i32 %i.az to i64
  %.not.i172 = icmp samesign ult i64 %indvars.iv946, %i.ba
  br i1 %.not.i172, label %bb.p, label %bb.o, !prof !142

bb.o:                                             ; preds = %.lr.ph812.split
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit

bb.p:                                             ; preds = %.lr.ph812.split
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !416
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv946
  br label %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit

_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit:         ; preds = %bb.o, %bb.p
  %.0.i173 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.bc, %bb.p ] ; 3 uses
  %i.bd = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %.0.i173, i32 noundef %i.f, i1 noundef zeroext false)
  br i1 %i.bd, label %bb.q, label %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit.thread

bb.q:                                             ; preds = %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i173, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !199 ; 3 uses
  %i.bg = icmp ugt i32 %i.f, %i.bf
  br i1 %i.bg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bh = sub nuw nsw i32 %i.f, %i.bf
  %i.bi = shl i32 %i.bh, 2                        ; 2 uses
  %.not.i.i.i.i175 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i175, label %bb.t, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i173, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !418
  %i.bl = zext nneg i32 %i.bf to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = zext i32 %i.bi to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bm, i8 0, i64 %i.bn, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  store i32 %i.f, ptr %i.be, align 4, !tbaa !199
  %indvars.iv.next947 = add nuw nsw i64 %indvars.iv946, 1 ; 2 uses
  %exitcond950.not = icmp eq i64 %indvars.iv.next947, %wide.trip.count949
  br i1 %exitcond950.not, label %.critedge, label %.lr.ph812.split, !llvm.loop !557

.critedge:                                        ; preds = %bb.t, %_ZN11hb_vector_tIS_IiLb0EELb0EE6resizeEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store atomic i32 1, ptr %4 monotonic, align 8
  store atomic i8 1, ptr %i.bo monotonic, align 4
  store atomic ptr null, ptr %i.bp monotonic, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.bq, align 8, !tbaa !558
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.br, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store atomic i32 1, ptr %6 monotonic, align 8
  store atomic i8 1, ptr %i.bt monotonic, align 4
  store atomic ptr null, ptr %i.bu monotonic, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.bv, align 8, !tbaa !562
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !565
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bw, i8 0, i64 18, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !547 ; 2 uses
  %.not891 = icmp eq i32 %i.bz, 0
  br i1 %.not891, label %._crit_edge834, label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph: ; preds = %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load i32, ptr @_hb_NullPool, align 16   ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ck = load i64, ptr @_hb_NullPool, align 16
  %i.cl = icmp slt i32 %i.f, 0
  %i.cm = zext i32 %i.f to i64                    ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %min.iters.check1252 = icmp ult i32 %i.f, 8
  %min.iters.check1253 = icmp ult i32 %i.f, 32
  %i.cp = and i64 %i.cm, 24
  %n.vec1255 = and i64 %i.cm, 2147483616          ; 4 uses
  %cmp.n1355 = icmp eq i64 %n.vec1255, %i.cm
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  %n.vec1357 = and i64 %i.cm, 2147483640          ; 3 uses
  %cmp.n1385 = icmp eq i64 %n.vec1357, %i.cm
  %min.iters.check = icmp ult i32 %i.f, 8
  %n.vec = and i64 %i.cm, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cm
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit: ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph, %.thread664
  %i.cq = phi i32 [ %i.bz, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph ], [ %i.rg, %.thread664 ]
  %indvars.iv961 = phi i64 [ 0, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph ], [ %indvars.iv.next962, %.thread664 ] ; 5 uses
  %.0153833 = phi i32 [ 0, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph ], [ %.1154671, %.thread664 ] ; 4 uses
  %.sroa.21594.0831 = phi ptr [ null, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph ], [ %.sroa.21594.5670, %.thread664 ] ; 3 uses
  %.sroa.0584.0830 = phi i32 [ 0, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit.lr.ph ], [ %.sroa.0584.5669, %.thread664 ] ; 5 uses
  %i.cr = load ptr, ptr %i.ca, align 8, !tbaa !390
  %i.cs = getelementptr inbounds nuw [128 x i8], ptr %i.cr, i64 %indvars.iv961 ; 2 uses
  %i.ct = load i32, ptr %i.g, align 4, !tbaa !425
  %i.cu = zext i32 %i.ct to i64
  %.not.i178 = icmp samesign ult i64 %indvars.iv961, %i.cu
  br i1 %.not.i178, label %bb.v, label %bb.u, !prof !142

bb.u:                                             ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit180

bb.v:                                             ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit
  %i.cv = load ptr, ptr %i.cc, align 8, !tbaa !426
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv961
  %.pr = load i32, ptr %i.cw, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit180

_ZN11hb_vector_tIjLb0EEixEi.exit180:              ; preds = %bb.u, %bb.v
  %i.cx = phi i32 [ %i.cb, %bb.u ], [ %.pr, %bb.v ] ; 5 uses
  %.not163 = icmp eq i32 %i.cx, 0
  br i1 %.not163, label %.thread664, label %bb.w

bb.w:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit180
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !542 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !392 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %.idx = mul nuw nsw i64 %i.dc, 160
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx
  %.not164814 = icmp eq i32 %i.db, 0
  br i1 %.not164814, label %._crit_edge818, label %.lr.ph817.preheader

.lr.ph817.preheader:                              ; preds = %bb.w
  %wide.trip.count954 = zext i32 %i.cx to i64
  br label %.lr.ph817

.lr.ph817:                                        ; preds = %.lr.ph817.preheader, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread
  %.0156815 = phi ptr [ %i.fs, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread ], [ %i.cz, %.lr.ph817.preheader ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0156815, i64 68 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !566
  %.not165 = icmp eq i32 %i.df, %i.cx
  br i1 %.not165, label %bb.x, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EED2Ev.exit

bb.x:                                             ; preds = %.lr.ph817
  %i.dg = load ptr, ptr %i.cd, align 8, !tbaa !420
  %.not.i181 = icmp eq ptr %i.dg, null
  br i1 %.not.i181, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = call noundef i32 @_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv(ptr noundef nonnull align 8 dereferenceable(48) %.0156815)
  %i.di = load ptr, ptr %i.cd, align 8, !tbaa !420 ; 3 uses
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = and i32 %i.dh, 1073741823               ; 2 uses
  %i.dk = load i32, ptr %i.ce, align 8, !tbaa !574
  %i.dl = urem i32 %i.dj, %i.dk                   ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 8            ; 2 uses
  %i.dq = and i32 %i.dp, 2
  %.not17.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not17.i.i.i, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %.lr.ph.i.i.i182

.lr.ph.i.i.i182:                                  ; preds = %bb.z, %._crit_edge.i.i.i
  %i.dr = phi ptr [ %i.ea, %._crit_edge.i.i.i ], [ %i.di, %bb.z ]
  %i.ds = phi i32 [ %i.ei, %._crit_edge.i.i.i ], [ %i.dp, %bb.z ]
  %i.dt = phi ptr [ %i.eg, %._crit_edge.i.i.i ], [ %i.dn, %bb.z ]
  %i.du = phi i64 [ %i.ef, %._crit_edge.i.i.i ], [ %i.dm, %bb.z ]
  %.019.i.i.i = phi i32 [ %i.eb, %._crit_edge.i.i.i ], [ 0, %bb.z ]
  %.01218.i.i.i = phi i32 [ %i.ee, %._crit_edge.i.i.i ], [ %i.dl, %bb.z ]
  %i.dv = lshr i32 %i.ds, 2
  %i.dw = icmp eq i32 %i.dv, %i.dj
  br i1 %i.dw, label %bb.aa, label %._crit_edge.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i182
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !575
  %i.dy = call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.dx, ptr noundef nonnull align 8 dereferenceable(48) %.0156815)
  %i.dz = load ptr, ptr %i.cd, align 8, !tbaa !420 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2OT17item_variations_t16as_item_varstoreEbb:bb.a
_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit: ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.ep = getelementptr inbounds nuw i8, ptr %.0156815, i64 72
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit, %_ZN11hb_vector_tIiLb0EEixEi.exit
  %indvars.iv951 = phi i64 [ 0, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit ], [ %indvars.iv.next952, %_ZN11hb_vector_tIiLb0EEixEi.exit ] ; 4 uses
  %i.eq = load i32, ptr %i.de, align 4, !tbaa !579
  %i.er = zext i32 %i.eq to i64
  %.not.i185 = icmp samesign ult i64 %indvars.iv951, %i.er
  %i.es = load ptr, ptr %i.ep, align 8
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv951
  %.0.i186 = select i1 %.not.i185, ptr %i.et, ptr @_hb_NullPool, !prof !142
  %i.eu = load float, ptr %.0.i186, align 4, !tbaa !580
  %i.ev = fadd float %i.eu, 5.000000e-01
  %i.ew = call noundef float @llvm.floor.f32(float %i.ev)
  %i.ex = fptosi float %i.ew to i32               ; 2 uses
  %i.ey = trunc nuw i64 %indvars.iv951 to i32
  %i.ez = add i32 %.0153833, %i.ey                ; 2 uses
  %i.fa = load i32, ptr %i.u, align 4, !tbaa !415
  %.not.i187 = icmp ult i32 %i.ez, %i.fa
  br i1 %.not.i187, label %bb.ad, label %bb.ac, !prof !142

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit189

bb.ad:                                            ; preds = %bb.ab
  %i.fb = load ptr, ptr %i.ch, align 8, !tbaa !416
  %i.fc = zext i32 %i.ez to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fc
  br label %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit189

_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit189:      ; preds = %bb.ac, %bb.ad
  %.0.i188 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.fd, %bb.ad ] ; 2 uses
  %i.fe = load i32, ptr %i.eo, align 4, !tbaa !137 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i188, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !199
  %.not.i190 = icmp ult i32 %i.fe, %i.fg
  br i1 %.not.i190, label %bb.af, label %bb.ae, !prof !142

bb.ae:                                            ; preds = %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit189
  store i32 %i.cb, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

bb.af:                                            ; preds = %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit189
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i188, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !418
  %i.fj = zext i32 %i.fe to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  %.pre983 = load i32, ptr %i.fk, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

_ZN11hb_vector_tIiLb0EEixEi.exit:                 ; preds = %bb.ae, %bb.af
  %i.fl = phi i32 [ %i.cb, %bb.ae ], [ %.pre983, %bb.af ]
  %.0.i191 = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.fk, %bb.af ]
  %i.fm = add nsw i32 %i.fl, %i.ex
  store i32 %i.fm, ptr %.0.i191, align 4, !tbaa !137
  %i.fn = add i32 %i.ex, -65536
  %i.fo = icmp ult i32 %i.fn, -131072
  %i.fp = load i8, ptr %i.cg, align 8, !tbaa !336, !range !132, !noundef !198
  %i.fq = zext i1 %i.fo to i8
  %i.fr = or i8 %i.fp, %i.fq
  store i8 %i.fr, ptr %i.cg, align 8, !tbaa !336
  %indvars.iv.next952 = add nuw nsw i64 %indvars.iv951, 1 ; 2 uses
  %exitcond955.not = icmp eq i64 %indvars.iv.next952, %wide.trip.count954
  br i1 %exitcond955.not, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.ab, !llvm.loop !582

_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZN11hb_vector_tIiLb0EEixEi.exit, %bb.z, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, %bb.y, %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %.0156815, i64 160 ; 2 uses
  %.not164 = icmp eq ptr %i.fs, %i.dd
  br i1 %.not164, label %._crit_edge818, label %.lr.ph817

._crit_edge818:                                   ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, %bb.w
  %i.ft = icmp slt i32 %.sroa.0584.0830, 0
  br i1 %i.ft, label %bb.ag, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit, !prof !21

bb.ag:                                            ; preds = %._crit_edge818
  %i.fu = xor i32 %.sroa.0584.0830, -1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit

_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit:   ; preds = %._crit_edge818, %bb.ag
  %.sroa.0584.7 = phi i32 [ %i.fu, %bb.ag ], [ %.sroa.0584.0830, %._crit_edge818 ]
  %i.fv = trunc nuw i64 %indvars.iv961 to i32
  %i.fw = shl i32 %i.fv, 16
  %wide.trip.count959 = zext i32 %i.cx to i64
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread
  %indvars.iv956 = phi i64 [ 0, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit ], [ %indvars.iv.next957, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread ] ; 2 uses
  %.sroa.21594.1827 = phi ptr [ %.sroa.21594.0831, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit ], [ %.sroa.21594.2633, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread ] ; 10 uses
  %.sroa.12590.0825 = phi i32 [ 0, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit ], [ %.sroa.12590.1632, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread ] ; 9 uses
  %.sroa.0584.1824 = phi i32 [ %.sroa.0584.7, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5resetEv.exit ], [ %.sroa.0584.2631, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread ] ; 14 uses
  %i.fx = trunc nuw i64 %indvars.iv956 to i32     ; 2 uses
  %i.fy = add i32 %.0153833, %i.fx                ; 2 uses
  %i.fz = load i32, ptr %i.u, align 4, !tbaa !415
  %.not.i192 = icmp ult i32 %i.fy, %i.fz
  br i1 %.not.i192, label %bb.aj, label %bb.ai, !prof !142

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit194

bb.aj:                                            ; preds = %bb.ah
  %i.ga = load ptr, ptr %i.ch, align 8, !tbaa !416
  %i.gb = zext i32 %i.fy to i64
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.gb
  br label %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit194

_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit194:      ; preds = %bb.ai, %bb.aj
  %.0.i193 = phi ptr [ @_hb_CrapPool, %bb.ai ], [ %i.gc, %bb.aj ] ; 9 uses
  br i1 %2, label %bb.ak, label %.loopexit1149

bb.ak:                                            ; preds = %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit194
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i193, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !418 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i193, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !199 ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %.idx892 = shl nuw nsw i64 %i.gh, 2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx892
  %.not166819 = icmp eq i32 %i.gg, 0
  br i1 %.not166819, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread, label %.lr.ph823

bb.al:                                            ; preds = %.lr.ph823
  %i.gj = getelementptr inbounds nuw i8, ptr %.0148820, i64 4 ; 2 uses
  %.not166 = icmp eq ptr %i.gj, %i.gi
  br i1 %.not166, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread, label %.lr.ph823

.lr.ph823:                                        ; preds = %bb.ak, %bb.al
  %.0148820 = phi ptr [ %i.gj, %bb.al ], [ %i.ge, %bb.ak ] ; 2 uses
  %i.gk = load i32, ptr %.0148820, align 4, !tbaa !137
  %.not167 = icmp eq i32 %i.gk, 0
  br i1 %.not167, label %bb.al, label %.loopexit1149

.loopexit1149:                                    ; preds = %.lr.ph823, %_ZN11hb_vector_tIS_IiLb0EELb0EEixEi.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.gl = add i32 %i.fw, %i.fx                    ; 2 uses
  store i32 %i.gl, ptr %i.a, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %.0.i193, ptr %i.b, align 8, !tbaa !583
  %i.gm = mul i32 %i.gl, -1640531535
  %i.gn = call noundef zeroext i1 @_ZN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE13set_with_hashIjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.gn, label %bb.am, label %_ZN11hb_vector_tI9hb_pair_tIN2OT17item_variations_t25combined_gain_idx_tuple_tEjELb0EED2Ev.exit

bb.am:                                            ; preds = %.loopexit1149
  br i1 %1, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.go = load ptr, ptr %i.bx, align 8, !tbaa !565 ; 3 uses
  %.not.i196 = icmp eq ptr %i.go, null
  br i1 %.not.i196, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gp = getelementptr i8, ptr %.0.i193, i64 4
  %.val.val.i = load i32, ptr %i.gp, align 4, !tbaa !199 ; 3 uses
  %i.gq = getelementptr i8, ptr %.0.i193, i64 8
  %.val.val5.i = load ptr, ptr %i.gq, align 8, !tbaa !418 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.val.i to i64 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.val.val.i, 0  ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ao
  %i.gr = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4611686018427387903
  %i.gs = and i64 %i.gr, 4611686018427387903      ; 2 uses
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %xtraiter1501 = and i64 %i.gt, 3                ; 3 uses
  %i.gu = icmp samesign ult i64 %i.gs, 3
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter1505 = and i64 %i.gt, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.hj, %.lr.ph.i.i.i.i.i ]
  %.01012.i.i.i.i.i = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.hk, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter1506 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter1506.next.3, %.lr.ph.i.i.i.i.i ]
  %.010.val.i.i.i.i.i = load i32, ptr %.01012.i.i.i.i.i, align 4, !tbaa !137
  %i.gv = mul i32 %.010.val.i.i.i.i.i, -1640531535
  %i.gw = xor i32 %i.gv, %.013.i.i.i.i.i
  %i.gx = mul i32 %i.gw, 16777619
  %i.gy = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 4
  %.010.val.i.i.i.i.i.1 = load i32, ptr %i.gy, align 4, !tbaa !137
  %i.gz = mul i32 %.010.val.i.i.i.i.i.1, -1640531535
  %i.ha = xor i32 %i.gz, %i.gx
  %i.hb = mul i32 %i.ha, 16777619
  %i.hc = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 8
  %.010.val.i.i.i.i.i.2 = load i32, ptr %i.hc, align 4, !tbaa !137
  %i.hd = mul i32 %.010.val.i.i.i.i.i.2, -1640531535
  %i.he = xor i32 %i.hd, %i.hb
  %i.hf = mul i32 %i.he, 16777619
  %i.hg = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 12
  %.010.val.i.i.i.i.i.3 = load i32, ptr %i.hg, align 4, !tbaa !137
  %i.hh = mul i32 %.010.val.i.i.i.i.i.3, -1640531535
  %i.hi = xor i32 %i.hh, %i.hf
  %i.hj = mul i32 %i.hi, 16777619                 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 16 ; 2 uses
  %niter1506.next.3 = add nuw i64 %niter1506, 4   ; 2 uses
  %niter1506.ncmp.3 = icmp eq i64 %niter1506.next.3, %unroll_iter1505
  br i1 %niter1506.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", label %.lr.ph.i.i.i.i.i

"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod1502.not = icmp eq i64 %xtraiter1501, 0
  br i1 %lcmp.mod1502.not, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hj, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %.01012.i.i.i.i.i.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hk, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod1504 = icmp ne i64 %xtraiter1501, 0
  call void @llvm.assume(i1 %lcmp.mod1504)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.epil = phi i32 [ %i.hn, %.lr.ph.i.i.i.i.i.epil ], [ %.013.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.01012.i.i.i.i.i.epil = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.epil ], [ %.01012.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.010.val.i.i.i.i.i.epil = load i32, ptr %.01012.i.i.i.i.i.epil, align 4, !tbaa !137
  %i.hl = mul i32 %.010.val.i.i.i.i.i.epil, -1640531535
  %i.hm = xor i32 %i.hl, %.013.i.i.i.i.i.epil
  %i.hn = mul i32 %i.hm, 16777619                 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1501
  br i1 %epil.iter.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !584

"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i.epil, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa"
  %.lcssa1478 = phi i32 [ %i.hj, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ], [ %i.hn, %.lr.ph.i.i.i.i.i.epil ]
  %i.hp = and i32 %.lcssa1478, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"

"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", %bb.ao
  %.0.lcssa.i.i.i.i.i = phi i32 [ 69346085, %bb.ao ], [ %i.hp, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i" ] ; 2 uses
  %i.hq = load i32, ptr %i.ci, align 8, !tbaa !585
  %i.hr = urem i32 %.0.lcssa.i.i.i.i.i, %i.hq     ; 2 uses
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load i32, ptr %i.hu, align 8            ; 2 uses
  %i.hw = and i32 %i.hv, 2
  %.not22.i.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not22.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %.lr.ph.i.i.i198

.lr.ph.i.i.i198:                                  ; preds = %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"
  %i.hx = load i32, ptr %i.cj, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i, %.lr.ph.i.i.i198
  %i.hy = phi i32 [ %i.hv, %.lr.ph.i.i.i198 ], [ %i.ir, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ] ; 2 uses
  %i.hz = phi ptr [ %i.ht, %.lr.ph.i.i.i198 ], [ %i.ip, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %.024.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i198 ], [ %i.il, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %.01223.i.i.i = phi i32 [ %i.hr, %.lr.ph.i.i.i198 ], [ %i.in, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %i.ia = lshr i32 %i.hy, 2
  %i.ib = icmp eq i32 %i.ia, %.0.lcssa.i.i.i.i.i
  br i1 %i.ib, label %bb.aq, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !586 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !418
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !199
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.val.i, %i.ig
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.aq
  br i1 %.not11.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit, label %.lr.ph.i.i.i.i.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !588

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.ar
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.ar ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.i.i.i.i.i.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !137
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !137
  %.not10.i.i.i.i.i.i = icmp eq i32 %i.ii, %i.ik
  br i1 %.not10.i.i.i.i.i.i, label %bb.ar, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aq, %bb.ap
  %i.il = add i32 %.024.i.i.i, 1                  ; 2 uses
  %i.im = add i32 %i.il, %.01223.i.i.i
  %i.in = and i32 %i.im, %i.hx                    ; 2 uses
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 8            ; 2 uses
  %i.is = and i32 %i.ir, 2
  %.not.i.i.i199 = icmp eq i32 %i.is, 0
  br i1 %.not.i.i.i199, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.ap, !llvm.loop !589

_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit: ; preds = %.preheader.i.i.i.i.i.i, %bb.ar
  %i.it = trunc i32 %i.hy to i1
  br i1 %i.it, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread

_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread: ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", %bb.an, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %.0.i193, ptr %i.c, align 8, !tbaa !583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 1, ptr %i.d, align 4, !tbaa !137
  %i.iu = getelementptr i8, ptr %.0.i193, i64 4
  %.val.val.i202 = load i32, ptr %i.iu, align 4, !tbaa !199 ; 2 uses
  %i.iv = getelementptr i8, ptr %.0.i193, i64 8
  %.val.val5.i203 = load ptr, ptr %i.iv, align 8, !tbaa !418 ; 2 uses
  %.not11.i.i.i.i.i206 = icmp eq i32 %.val.val.i202, 0
  br i1 %.not11.i.i.i.i.i206, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit, label %.lr.ph.i.i.i.i.i207.preheader

.lr.ph.i.i.i.i.i207.preheader:                    ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread
  %.sroa.2.8.insert.ext.i.i.i.i.i.i204 = zext i32 %.val.val.i202 to i64
  %i.iw = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i204, 4611686018427387903
  %i.ix = and i64 %i.iw, 4611686018427387903      ; 2 uses
  %i.iy = add nuw nsw i64 %i.ix, 1                ; 2 uses
  %xtraiter1507 = and i64 %i.iy, 3                ; 3 uses
  %i.iz = icmp samesign ult i64 %i.ix, 3
  br i1 %i.iz, label %.lr.ph.i.i.i.i.i207.epil.preheader, label %.lr.ph.i.i.i.i.i207.preheader.new

.lr.ph.i.i.i.i.i207.preheader.new:                ; preds = %.lr.ph.i.i.i.i.i207.preheader
  %unroll_iter1512 = and i64 %i.iy, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i207

.lr.ph.i.i.i.i.i207:                              ; preds = %.lr.ph.i.i.i.i.i207, %.lr.ph.i.i.i.i.i207.preheader.new
  %.013.i.i.i.i.i208 = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i207.preheader.new ], [ %i.jo, %.lr.ph.i.i.i.i.i207 ]
  %.01012.i.i.i.i.i209 = phi ptr [ %.val.val5.i203, %.lr.ph.i.i.i.i.i207.preheader.new ], [ %i.jp, %.lr.ph.i.i.i.i.i207 ] ; 5 uses
  %niter1513 = phi i64 [ 0, %.lr.ph.i.i.i.i.i207.preheader.new ], [ %niter1513.next.3, %.lr.ph.i.i.i.i.i207 ]
  %.010.val.i.i.i.i.i210 = load i32, ptr %.01012.i.i.i.i.i209, align 4, !tbaa !137
  %i.ja = mul i32 %.010.val.i.i.i.i.i210, -1640531535
  %i.jb = xor i32 %i.ja, %.013.i.i.i.i.i208
  %i.jc = mul i32 %i.jb, 16777619
  %i.jd = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i209, i64 4
  %.010.val.i.i.i.i.i210.1 = load i32, ptr %i.jd, align 4, !tbaa !137
  %i.je = mul i32 %.010.val.i.i.i.i.i210.1, -1640531535
  %i.jf = xor i32 %i.je, %i.jc
  %i.jg = mul i32 %i.jf, 16777619
  %i.jh = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i209, i64 8
  %.010.val.i.i.i.i.i210.2 = load i32, ptr %i.jh, align 4, !tbaa !137
  %i.ji = mul i32 %.010.val.i.i.i.i.i210.2, -1640531535
  %i.jj = xor i32 %i.ji, %i.jg
  %i.jk = mul i32 %i.jj, 16777619
  %i.jl = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i209, i64 12
  %.010.val.i.i.i.i.i210.3 = load i32, ptr %i.jl, align 4, !tbaa !137
  %i.jm = mul i32 %.010.val.i.i.i.i.i210.3, -1640531535
  %i.jn = xor i32 %i.jm, %i.jk
  %i.jo = mul i32 %i.jn, 16777619                 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i209, i64 16 ; 2 uses
  %niter1513.next.3 = add nuw i64 %niter1513, 4   ; 2 uses
  %niter1513.ncmp.3 = icmp eq i64 %niter1513.next.3, %unroll_iter1512
  br i1 %niter1513.ncmp.3, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i207

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i207
  %lcmp.mod1509.not = icmp eq i64 %xtraiter1507, 0
  br i1 %lcmp.mod1509.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit, label %.lr.ph.i.i.i.i.i207.epil.preheader

.lr.ph.i.i.i.i.i207.epil.preheader:               ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i207.preheader
  %.013.i.i.i.i.i208.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i207.preheader ], [ %i.jo, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit.loopexit.unr-lcssa ]
  %.01012.i.i.i.i.i209.epil.init = phi ptr [ %.val.val5.i203, %.lr.ph.i.i.i.i.i207.preheader ], [ %i.jp, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod1511 = icmp ne i64 %xtraiter1507, 0
  call void @llvm.assume(i1 %lcmp.mod1511)
  br label %.lr.ph.i.i.i.i.i207.epil

.lr.ph.i.i.i.i.i207.epil:                         ; preds = %.lr.ph.i.i.i.i.i207.epil, %.lr.ph.i.i.i.i.i207.epil.preheader
  %.013.i.i.i.i.i208.epil = phi i32 [ %i.js, %.lr.ph.i.i.i.i.i207.epil ], [ %.013.i.i.i.i.i208.epil.init, %.lr.ph.i.i.i.i.i207.epil.preheader ]
  %.01012.i.i.i.i.i209.epil = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i207.epil ], [ %.01012.i.i.i.i.i209.epil.init, %.lr.ph.i.i.i.i.i207.epil.preheader ] ; 2 uses
  %epil.iter1508 = phi i64 [ %epil.iter1508.next, %.lr.ph.i.i.i.i.i207.epil ], [ 0, %.lr.ph.i.i.i.i.i207.epil.preheader ]
  %.010.val.i.i.i.i.i210.epil = load i32, ptr %.01012.i.i.i.i.i209.epil, align 4, !tbaa !137
  %i.jq = mul i32 %.010.val.i.i.i.i.i210.epil, -1640531535
  %i.jr = xor i32 %i.jq, %.013.i.i.i.i.i208.epil
  %i.js = mul i32 %i.jr, 16777619                 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i209.epil, i64 4
  %epil.iter1508.next = add i64 %epil.iter1508, 1 ; 2 uses
  %epil.iter1508.cmp.not = icmp eq i64 %epil.iter1508.next, %xtraiter1507
  br i1 %epil.iter1508.cmp.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit, label %.lr.ph.i.i.i.i.i207.epil, !llvm.loop !590

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit: ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i207.epil, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread
  %.0.lcssa.i.i.i.i.i213 = phi i32 [ -2078137563, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread ], [ %i.jo, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit.loopexit.unr-lcssa ], [ %i.js, %.lr.ph.i.i.i.i.i207.epil ]
  %i.ju = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIS3_iEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %.0.lcssa.i.i.i.i.i213, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.as

bb.as:                                            ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit, %bb.am
  %.not.i214 = icmp slt i32 %.sroa.12590.0825, %.sroa.0584.1824
  %.pre998 = add i32 %.sroa.12590.0825, 1         ; 6 uses
  br i1 %.not.i214, label %.critedge.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jv = icmp slt i32 %.sroa.0584.1824, 0
  br i1 %i.jv, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit, label %bb.au, !prof !21

bb.au:                                            ; preds = %bb.at
  %.not.i380 = icmp ugt i32 %.pre998, %.sroa.0584.1824
  br i1 %.not.i380, label %.preheader.i382, label %.critedge.i, !prof !21

.preheader.i382:                                  ; preds = %bb.au, %.preheader.i382
  %.043.i = phi i32 [ %i.jy, %.preheader.i382 ], [ %.sroa.0584.1824, %bb.au ] ; 2 uses
  %i.jw = lshr i32 %.043.i, 1
  %i.jx = add i32 %.043.i, 8
  %i.jy = add i32 %i.jx, %i.jw                    ; 8 uses
  %i.jz = icmp ugt i32 %.pre998, %i.jy
  br i1 %i.jz, label %.preheader.i382, label %.thread.i383, !llvm.loop !591

.thread.i383:                                     ; preds = %.preheader.i382
  %i.ka = icmp ugt i32 %i.jy, 536870911
  br i1 %i.ka, label %.critedge.i391, label %bb.av, !prof !21

.critedge.i391:                                   ; preds = %.thread.i383
  %i.kb = xor i32 %.sroa.0584.1824, -1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit

bb.av:                                            ; preds = %.thread.i383
  %.not49.i = icmp eq i32 %.sroa.0584.1824, 0
  br i1 %.not49.i, label %bb.aw, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.aw:                                            ; preds = %bb.av
  %.not9.i.i.i = icmp eq ptr %.sroa.21594.1827, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kc = shl nuw i32 %i.jy, 3
  %i.kd = zext i32 %i.kc to i64
  %i.ke = call ptr @hb_malloc(i64 noundef %i.kd) #18 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.ay, !prof !21

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i390 = icmp eq i32 %.sroa.12590.0825, 0
  br i1 %.not.i.i.i.i390, label %.critedge.i, label %bb.az, !prof !21

bb.az:                                            ; preds = %bb.ay
  %i.kf = zext i32 %.sroa.12590.0825 to i64
  %i.kg = shl nuw nsw i64 %i.kf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ke, ptr nonnull readonly align 1 %.sroa.21594.1827, i64 %i.kg, i1 false), !alias.scope !592
  br label %.critedge.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.aw, %bb.av
  %i.kh = phi ptr [ null, %bb.aw ], [ %.sroa.21594.1827, %bb.av ]
  %i.ki = shl nuw i32 %i.jy, 3
  %i.kj = zext i32 %i.ki to i64
  %i.kk = call ptr @hb_realloc(ptr noundef %i.kh, i64 noundef %i.kj) #18 ; 2 uses
  %.not22.i385 = icmp eq ptr %i.kk, null
  br i1 %.not22.i385, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !118

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.ax
  %i.kl = xor i32 %.sroa.0584.1824, -1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit

_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit:  ; preds = %bb.at, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.critedge.i391
  %.sroa.0584.10 = phi i32 [ %.sroa.0584.1824, %bb.at ], [ %i.kl, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ], [ %i.kb, %.critedge.i391 ]
  store i64 %i.ck, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread

.critedge.i:                                      ; preds = %bb.as, %bb.ay, %bb.az, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.au
  %.pre-phi999 = phi i32 [ %.pre998, %bb.au ], [ 1, %bb.ay ], [ %.pre998, %bb.az ], [ %.pre998, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.pre998, %bb.as ]
  %.sroa.0584.8 = phi i32 [ %.sroa.0584.1824, %bb.au ], [ %i.jy, %bb.ay ], [ %i.jy, %bb.az ], [ %i.jy, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.sroa.0584.1824, %bb.as ]
  %.sroa.21594.7 = phi ptr [ %.sroa.21594.1827, %bb.au ], [ %i.ke, %bb.ay ], [ %i.ke, %bb.az ], [ %i.kk, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.sroa.21594.1827, %bb.as ] ; 2 uses
  %i.km = zext i32 %.sroa.12590.0825 to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.21594.7, i64 %i.km
  store ptr %.0.i193, ptr %i.kn, align 8, !tbaa !583
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread

_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread: ; preds = %bb.al, %bb.ak, %.critedge.i, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit
  %.sroa.21594.2633 = phi ptr [ %.sroa.21594.1827, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit ], [ %.sroa.21594.7, %.critedge.i ], [ %.sroa.21594.1827, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit ], [ %.sroa.21594.1827, %bb.ak ], [ %.sroa.21594.1827, %bb.al ] ; 6 uses
  %.sroa.12590.1632 = phi i32 [ %.sroa.12590.0825, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit ], [ %.pre-phi999, %.critedge.i ], [ %.sroa.12590.0825, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit ], [ %.sroa.12590.0825, %bb.ak ], [ %.sroa.12590.0825, %bb.al ] ; 4 uses
  %.sroa.0584.2631 = phi i32 [ %.sroa.0584.1824, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit ], [ %.sroa.0584.8, %.critedge.i ], [ %.sroa.0584.10, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit ], [ %.sroa.0584.1824, %bb.ak ], [ %.sroa.0584.1824, %bb.al ] ; 4 uses
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %exitcond960.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count959
  br i1 %exitcond960.not, label %bb.ba, label %bb.ah, !llvm.loop !596

bb.ba:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread
  %.not756 = icmp eq i32 %.sroa.12590.1632, 0
  br i1 %.not756, label %_ZN2OT20delta_row_encoding_tD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.cl, label %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit, label %.preheader.i.i.i, !prof !21

.preheader.i.i.i:                                 ; preds = %bb.bb, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.kq, %.preheader.i.i.i ], [ 0, %bb.bb ] ; 2 uses
  %i.ko = lshr i32 %.053.i.i.i, 1
  %i.kp = add nuw i32 %.053.i.i.i, 8
  %i.kq = add nuw i32 %i.kp, %i.ko                ; 4 uses
  %i.kr = icmp ugt i32 %i.f, %i.kq
  br i1 %i.kr, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !597

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.ks = zext i32 %i.kq to i64
  %i.kt = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ks) #18 ; 51 uses
  %.not22.i.i.i217 = icmp eq ptr %i.kt, null
  br i1 %.not22.i.i.i217, label %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit, label %.preheader.lr.ph.i, !prof !88

.preheader.lr.ph.i:                               ; preds = %.thread39.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.kt, i8 0, i64 %i.cm, i1 false)
  %i.ku = zext i32 %.sroa.12590.1632 to i64
  %.idx.i = shl nuw nsw i64 %i.ku, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.21594.2633, i64 %.idx.i
  br label %.preheader.i393

.preheader.i393:                                  ; preds = %._crit_edge.i398, %.preheader.lr.ph.i
  %.03551.i = phi ptr [ %.sroa.21594.2633, %.preheader.lr.ph.i ], [ %i.kz, %._crit_edge.i398 ] ; 3 uses
  %.03650.i = phi i1 [ false, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge.i398 ] ; 2 uses
  %i.kw = load ptr, ptr %.03551.i, align 8, !tbaa !583 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !199
  %.not58.i = icmp eq i32 %i.ky, 0
  br i1 %.not58.i, label %._crit_edge.i398, label %.lr.ph.i394

._crit_edge52.i:                                  ; preds = %._crit_edge.i398
  br i1 %.1.lcssa.i, label %iter.check, label %.lr.ph.i.i.i401.preheader

._crit_edge.i398:                                 ; preds = %bb.bh, %.preheader.i393
  %.1.lcssa.i = phi i1 [ %.03650.i, %.preheader.i393 ], [ %.3.i396, %bb.bh ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.03551.i, i64 8 ; 2 uses
  %.not.i399 = icmp eq ptr %i.kz, %i.kv
  br i1 %.not.i399, label %._crit_edge52.i, label %.preheader.i393

.lr.ph.i394:                                      ; preds = %.preheader.i393, %bb.bh
  %indvars.iv.i395 = phi i64 [ %indvars.iv.next.i397, %bb.bh ], [ 0, %.preheader.i393 ] ; 4 uses
  %i.la = phi ptr [ %i.ln, %bb.bh ], [ %i.kw, %.preheader.i393 ]
  %.147.i = phi i1 [ %.3.i396, %bb.bh ], [ %.03650.i, %.preheader.i393 ] ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !418
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.i395
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !137 ; 3 uses
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i394
  %i.lg = add i32 %i.le, -32768
  %or.cond.i = icmp ult i32 %i.lg, -65536
  br i1 %or.cond.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv.i395 ; 2 uses
  %.val42.i = load i8, ptr %i.lh, align 1, !tbaa !331
  %i.li = call i8 @llvm.umax.i8(i8 %.val42.i, i8 4)
  store i8 %i.li, ptr %i.lh, align 1, !tbaa !331
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.lj = add nsw i32 %i.le, -128
  %or.cond3.i = icmp ult i32 %i.lj, -256
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv.i395 ; 3 uses
  %.val40.i = load i8, ptr %i.lk, align 1, !tbaa !331 ; 2 uses
  br i1 %or.cond3.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ll = call i8 @llvm.umax.i8(i8 %.val40.i, i8 2)
end_hunk_2
begin_hunk_3_@_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t35change_tuple_variations_axis_limitsERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EEP15hb_alloc_pool_t:bb.a
  call void @hb_free(ptr noundef %i.ki) #18
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EED2Ev.exit110

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EED2Ev.exit110: ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EED2Ev.exit.thread, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE13shrink_vectorEj.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !916
  %i.kl = add i32 %i.kk, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.kl, -2
  br i1 %spec.select.i.i.i.i, label %bb.ak, label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EED2Ev.exit.i

bb.ak:                                            ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EED2Ev.exit110
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.km, align 4, !tbaa !919
  %i.kn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !920
  call void @hb_free(ptr noundef %i.ko) #18
  br label %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EED2Ev.exit.i

_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EED2Ev.exit.i: ; preds = %bb.ak, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EED2Ev.exit110
  %i.kp = load i32, ptr %4, align 8, !tbaa !916
  %i.kq = add i32 %i.kp, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.kq, -2
  br i1 %spec.select.i.i.i1.i, label %bb.al, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

bb.al:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EED2Ev.exit.i
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.kr, align 4, !tbaa !919
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !920
  call void @hb_free(ptr noundef %i.kt) #18
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.al, %_ZN11hb_vector_tI9hb_pair_tId6TripleELb0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ku = add i32 %.sroa.0209.0.lcssa421432, -1
  %spec.select.i.i.i111 = icmp ult i32 %i.ku, -2
  br i1 %spec.select.i.i.i111, label %bb.am, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.am:                                            ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  call void @hb_free(ptr noundef %.sroa.19220.0.lcssa423431) #18
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %.thread.i, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, %bb.am
  %.8283 = phi i1 [ %.not308, %bb.am ], [ %.not308, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ false, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ false, %.thread.i ]
  ret i1 %.8283
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t22merge_tuple_variationsEP22contour_point_vector_t(ptr noundef nonnull align 8 dereferenceable(126) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_hashmap_t.237, align 8   ; 15 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !549  ; 2 uses
  %.not.i.not = icmp eq i32 %i.d, 0
  br i1 %.not.i.not, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i, label %.preheader.i, !prof !142

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.043.i = phi i32 [ %i.g, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = lshr i32 %.043.i, 1
  %i.f = add i32 %.043.i, 8
  %i.g = add i32 %i.f, %i.e                       ; 5 uses
  %i.h = icmp ugt i32 %i.d, %i.g
  br i1 %i.h, label %.preheader.i, label %.thread.i, !llvm.loop !699

.thread.i:                                        ; preds = %.preheader.i
  %i.i = icmp ugt i32 %i.g, 26843545
  br i1 %i.i, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EED2Ev.exit, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i, !prof !21

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i: ; preds = %.thread.i
  %i.j = zext nneg i32 %i.g to i64
  %i.k = mul nuw nsw i64 %i.j, 160
  %i.l = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.k) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.l, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EED2Ev.exit, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i._ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i_crit_edge, !prof !118

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i._ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i_crit_edge: ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i
  %.pre = load i32, ptr %i.c, align 4, !tbaa !392
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i: ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i._ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i_crit_edge, %bb.a
  %i.m = phi i32 [ 0, %bb.a ], [ %.pre, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i._ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i_crit_edge ] ; 2 uses
  %.sroa.080.7.ph = phi i32 [ 0, %bb.a ], [ %i.g, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i._ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i_crit_edge ] ; 2 uses
  %.sroa.26.8.ph = phi ptr [ null, %bb.a ], [ %i.l, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i._ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i_crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store atomic i32 1, ptr %2 monotonic, align 8
  store atomic i8 1, ptr %i.n monotonic, align 4
  store atomic ptr null, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.p, align 8, !tbaa !332
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 7 uses
  store ptr null, ptr %i.r, align 8, !tbaa !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.q, i8 0, i64 18, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !542  ; 2 uses
  %i.u = zext i32 %i.m to i64
  %.idx = mul nuw nsw i64 %i.u, 160
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not198 = icmp eq i32 %i.m, 0
  br i1 %.not198, label %.critedge36, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.not32 = icmp eq ptr %1, null
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge34
  %.030202 = phi ptr [ %i.t, %.lr.ph ], [ %i.ew, %.critedge34 ] ; 12 uses
  %.sroa.26.0201 = phi ptr [ %.sroa.26.8.ph, %.lr.ph ], [ %.sroa.26.3, %.critedge34 ] ; 14 uses
  %.sroa.13.0200 = phi i32 [ 0, %.lr.ph ], [ %.sroa.13.3, %.critedge34 ] ; 13 uses
  %.sroa.080.0199 = phi i32 [ %.sroa.080.7.ph, %.lr.ph ], [ %.sroa.080.3, %.critedge34 ] ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.030202, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !170
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  br i1 %.not32, label %.critedge34, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.030202, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !660 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.030202, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !579 ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.af to i64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.030202, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !660 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.030202, i64 84
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !579
  %i.ak = getelementptr inbounds nuw i8, ptr %.030202, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !663 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.030202, i64 52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !664 ; 3 uses
  %.not.i43 = icmp eq i32 %i.an, %i.af
  %.not12.i = icmp eq i32 %i.an, %i.aj
  %or.cond.i = select i1 %.not.i43, i1 %.not12.i, i1 false ; 2 uses
  %i.ao = icmp ne i32 %i.an, 0
  %or.cond14.i = and i1 %i.ao, %or.cond.i
  br i1 %or.cond14.i, label %.lr.ph.i, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ap = load ptr, ptr %i.y, align 8             ; 3 uses
  %xtraiter = and i64 %.sroa.2.8.insert.ext.i.i.i.i, 1
  %i.aq = icmp eq i32 %i.af, 1
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.2.8.insert.ext.i.i.i.i, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !226, !range !132, !noundef !198
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %indvars.iv.i ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !580
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !580
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !580
  %i.ba = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.ay, i64 1
  %i.bc = fadd <2 x float> %i.bb, %i.az
  store <2 x float> %i.bc, ptr %i.au, align 4, !tbaa !580
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !226, !range !132, !noundef !198
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %indvars.iv.next.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !580
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !580
  %i.bl = load <2 x float>, ptr %i.bg, align 4, !tbaa !580
  %i.bm = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bk, i64 1
  %i.bo = fadd <2 x float> %i.bn, %i.bl
  store <2 x float> %i.bo, ptr %i.bg, align 4, !tbaa !580
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !921

_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod296 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod296)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i.epil.init
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !226, !range !132, !noundef !198
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.j, label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit

bb.j:                                             ; preds = %.epil.preheader
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.epil.init
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !580
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.epil.init
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !580
  %i.bx = load <2 x float>, ptr %i.bs, align 4, !tbaa !580
  %i.by = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bw, i64 1
  %i.ca = fadd <2 x float> %i.bz, %i.bx
  store <2 x float> %i.ca, ptr %i.bs, align 4, !tbaa !580
  br label %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit

_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit: ; preds = %_ZN22contour_point_vector_t10add_deltasE10hb_array_tIKfES2_S0_IKbE.exit.loopexit.unr-lcssa, %bb.j, %.epil.preheader, %bb.d
  br i1 %or.cond.i, label %.critedge34, label %.loopexit174

bb.k:                                             ; preds = %bb.b
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !420
  %.not.i44 = icmp eq ptr %i.cb, null
  br i1 %.not.i44, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = call noundef i32 @_ZNK12hb_hashmap_tIj6TripleLb0EE4hashEv(ptr noundef nonnull align 8 dereferenceable(48) %.030202)
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !420 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = and i32 %i.cc, 1073741823               ; 2 uses
  %i.cf = load i32, ptr %i.w, align 8, !tbaa !574
  %i.cg = urem i32 %i.ce, %i.cf                   ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8            ; 2 uses
  %i.cl = and i32 %i.ck, 2
  %.not17.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not17.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %._crit_edge.i.i.i
  %i.cm = phi ptr [ %i.cv, %._crit_edge.i.i.i ], [ %i.cd, %bb.m ]
  %i.cn = phi i32 [ %i.dd, %._crit_edge.i.i.i ], [ %i.ck, %bb.m ]
  %i.co = phi ptr [ %i.db, %._crit_edge.i.i.i ], [ %i.ci, %bb.m ]
  %i.cp = phi i64 [ %i.da, %._crit_edge.i.i.i ], [ %i.ch, %bb.m ]
  %.019.i.i.i = phi i32 [ %i.cw, %._crit_edge.i.i.i ], [ 0, %bb.m ]
  %.01218.i.i.i = phi i32 [ %i.cz, %._crit_edge.i.i.i ], [ %i.cg, %bb.m ]
  %i.cq = lshr i32 %i.cn, 2
  %i.cr = icmp eq i32 %i.cq, %i.ce
  br i1 %i.cr, label %bb.n, label %._crit_edge.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !575
  %i.ct = call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull align 8 dereferenceable(48) %.030202)
  %i.cu = load ptr, ptr %i.r, align 8, !tbaa !420 ; 3 uses
  br i1 %i.ct, label %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %.lr.ph.i.i.i
  %i.cv = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %i.cu, %bb.n ] ; 2 uses
  %i.cw = add i32 %.019.i.i.i, 1                  ; 2 uses
  %i.cx = add i32 %i.cw, %.01218.i.i.i
  %i.cy = load i32, ptr %i.x, align 4, !tbaa !577
  %i.cz = and i32 %i.cy, %i.cx                    ; 2 uses
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 8            ; 2 uses
  %i.de = and i32 %i.dd, 2
  %.not.i.i.i45 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i45, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !578

_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %bb.n
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cp ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = trunc i32 %i.dh to i1
  %.not9.i.i.not171 = icmp ne ptr %i.cu, null
  %.not9.i.i.not.not = and i1 %.not9.i.i.not171, %i.di
  br i1 %.not9.i.i.not.not, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !137 ; 2 uses
  %.not.i46 = icmp ult i32 %i.dk, %.sroa.13.0200
  br i1 %.not.i46, label %bb.q, label %bb.p, !prof !142

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit

bb.q:                                             ; preds = %bb.o
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [160 x i8], ptr %.sroa.26.0201, i64 %i.dl
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EEixEi.exit: ; preds = %bb.p, %bb.q
  %.0.i47 = phi ptr [ @_hb_CrapPool, %bb.p ], [ %i.dm, %bb.q ]
  %i.dn = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN2OT13tuple_delta_tpLERKS0_(ptr noundef nonnull align 8 dereferenceable(160) %.0.i47, ptr noundef nonnull align 8 dereferenceable(160) %.030202) ; 0 uses
  br label %.critedge34

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %bb.k, %bb.l, %_ZNK12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, %bb.m
  %i.do = add i32 %.sroa.13.0200, 1               ; 4 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit, label %bb.r, !prof !21

bb.r:                                             ; preds = %.loopexit
  %i.dq = icmp slt i32 %.sroa.080.0199, 0
  br i1 %i.dq, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  %.not.i58 = icmp samesign ugt i32 %i.do, %.sroa.080.0199
  br i1 %.not.i58, label %.preheader.i60, label %bb.y, !prof !21

.preheader.i60:                                   ; preds = %bb.s, %.preheader.i60
  %.043.i61 = phi i32 [ %i.dt, %.preheader.i60 ], [ %.sroa.080.0199, %bb.s ] ; 2 uses
  %i.dr = lshr i32 %.043.i61, 1
  %i.ds = add nuw i32 %.043.i61, 8
  %i.dt = add nuw i32 %i.ds, %i.dr                ; 8 uses
  %i.du = icmp ugt i32 %i.do, %i.dt
  br i1 %i.du, label %.preheader.i60, label %.thread.i62, !llvm.loop !699

.thread.i62:                                      ; preds = %.preheader.i60
  %i.dv = icmp ugt i32 %i.dt, 26843545
  br i1 %i.dv, label %.critedge.i77, label %bb.t, !prof !21

.critedge.i77:                                    ; preds = %.thread.i62
  %i.dw = xor i32 %.sroa.080.0199, -1
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153

bb.t:                                             ; preds = %.thread.i62
  %.not49.i64 = icmp eq i32 %.sroa.080.0199, 0
  br i1 %.not49.i64, label %bb.u, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65

bb.u:                                             ; preds = %bb.t
  %.not9.i.i.i74 = icmp eq ptr %.sroa.26.0201, null
  br i1 %.not9.i.i.i74, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = zext nneg i32 %i.dt to i64
  %i.dy = mul nuw nsw i64 %i.dx, 160
  %i.dz = call ptr @hb_malloc(i64 noundef %i.dy) #18 ; 4 uses
  %.not10.i.i.i75 = icmp eq ptr %i.dz, null
  br i1 %.not10.i.i.i75, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72, label %bb.w, !prof !21

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i.i76 = icmp eq i32 %.sroa.13.0200, 0
  br i1 %.not.i.i.i.i76, label %.thread, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.ea = zext nneg i32 %.sroa.13.0200 to i64
  %i.eb = mul nuw nsw i64 %i.ea, 160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull readonly align 1 %.sroa.26.0201, i64 %i.eb, i1 false), !alias.scope !922
  br label %.thread

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65: ; preds = %bb.u, %bb.t
  %i.ec = phi ptr [ null, %bb.u ], [ %.sroa.26.0201, %bb.t ]
  %i.ed = zext nneg i32 %i.dt to i64
  %i.ee = mul nuw nsw i64 %i.ed, 160
  %i.ef = call ptr @hb_realloc(ptr noundef %i.ec, i64 noundef %i.ee) #18 ; 2 uses
  %.not22.i66 = icmp eq ptr %i.ef, null
  br i1 %.not22.i66, label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72, label %.thread, !prof !118

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53.i72: ; preds = %bb.v, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65
  %i.eg = xor i32 %.sroa.080.0199, -1
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushEv.exit.thread153

bb.y:                                             ; preds = %bb.s
  %.not172 = icmp eq i32 %.sroa.13.0200, -1
  br i1 %.not172, label %.lr.ph.preheader.i.i.i.i, label %.thread

.thread:                                          ; preds = %bb.x, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65, %bb.w, %bb.y
  %.sroa.26.12.ph141 = phi ptr [ %.sroa.26.0201, %bb.y ], [ %i.dz, %bb.w ], [ %i.ef, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65 ], [ %i.dz, %bb.x ] ; 2 uses
  %.sroa.080.10.ph138 = phi i32 [ %.sroa.080.0199, %bb.y ], [ %i.dt, %bb.w ], [ %i.dt, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.i65 ], [ %i.dt, %bb.x ]
  %i.eh = zext nneg i32 %.sroa.13.0200 to i64     ; 2 uses
  %i.ei = getelementptr inbounds nuw [160 x i8], ptr %.sroa.26.12.ph141, i64 %i.eh ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store atomic i32 1, ptr %i.ei monotonic, align 4
  store atomic i8 1, ptr %i.ej monotonic, align 4
  store atomic ptr null, ptr %i.ek monotonic, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i8 1, ptr %i.el, align 8, !tbaa !429
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 18
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.em, i8 0, i64 18, i1 false)
end_hunk_3
begin_hunk_4_@_ZN2OT13tuple_delta_t27change_tuple_var_axis_limitEj6Triple15TripleDistancesR11hb_vector_tIS0_Lb0EER9hb_pair_tIS3_IS6_IdS1_ELb0EES8_EP15hb_alloc_pool_t:bb.a
  %i.gg = load i32, ptr %i.dc, align 4
  %i.gh = load i32, ptr %i.gc, align 4, !tbaa !137
  %i.gi = icmp eq i32 %i.gh, %1
  br i1 %i.gi, label %._crit_edge.i.i, label %.lr.ph.i.i37

bb.ab:                                            ; preds = %.lr.ph.i.i37
  %i.gj = load i32, ptr %i.gs, align 4, !tbaa !137
  %i.gk = icmp eq i32 %i.gj, %1
  br i1 %i.gk, label %._crit_edge.i.i, label %.lr.ph.i.i37, !llvm.loop !771

._crit_edge.i.i:                                  ; preds = %bb.ab, %.lr.ph.i.i.i36
  %i.gl = phi i32 [ %i.ge, %.lr.ph.i.i.i36 ], [ %i.gu, %bb.ab ] ; 2 uses
  %i.gm = phi i64 [ %i.gb, %.lr.ph.i.i.i36 ], [ %i.gr, %bb.ab ]
  %i.gn = trunc i32 %i.gl to i1
  br i1 %i.gn, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i39, label %_ZN2OT13tuple_delta_t11remove_axisEj.exit

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i.i36, %bb.ab
  %.01016.i12.i.i = phi i32 [ %i.gq, %bb.ab ], [ %i.ga, %.lr.ph.i.i.i36 ]
  %.017.i11.i.i = phi i32 [ %i.go, %bb.ab ], [ 0, %.lr.ph.i.i.i36 ]
  %i.go = add i32 %.017.i11.i.i, 1                ; 2 uses
  %i.gp = add i32 %i.go, %.01016.i12.i.i
  %i.gq = and i32 %i.gp, %i.gg                    ; 2 uses
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4            ; 2 uses
  %i.gv = and i32 %i.gu, 2
  %.not.i.i.i38 = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i.i38, label %_ZN2OT13tuple_delta_t11remove_axisEj.exit, label %bb.ab, !llvm.loop !771

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i39: ; preds = %._crit_edge.i.i
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.gm
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = and i32 %i.gl, -2
  store i32 %i.gy, ptr %i.gx, align 4
  %i.gz = load i32, ptr %i.cz, align 4, !tbaa !170
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr %i.cz, align 4, !tbaa !170
  br label %_ZN2OT13tuple_delta_t11remove_axisEj.exit

_ZNK6TripleeqERKS_.exit.thread:                   ; preds = %bb.x, %bb.y, %_ZNK6TripleeqERKS_.exit
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.fp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <3 x double> %.sroa.0.0.copyload, ptr %8, align 8
  store i32 %1, ptr %i.a, align 4, !tbaa !137
  %i.hb = call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIRKjRS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(160) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2OT13tuple_delta_t11remove_axisEj.exit

_ZN2OT13tuple_delta_t11remove_axisEj.exit:        ; preds = %.lr.ph.i.i37, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i39, %._crit_edge.i.i, %bb.aa, %bb.z, %_ZNK6TripleeqERKS_.exit.thread
  %i.hc = load double, ptr %i.eu, align 8, !tbaa !926
  %i.hd = fptrunc double %i.hc to float           ; 6 uses
  %i.he = fcmp oeq float %i.hd, 1.000000e+00
  br i1 %i.he, label %_ZN2OT13tuple_delta_tmLEf.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN2OT13tuple_delta_t11remove_axisEj.exit
  %i.hf = load i32, ptr %i.dg, align 4, !tbaa !928 ; 5 uses
  %i.hg = load i32, ptr %i.ds, align 4, !tbaa !579 ; 2 uses
  %.not.i40 = icmp eq i32 %i.hg, 0
  %.not31.i = icmp eq i32 %i.hf, 0                ; 2 uses
  br i1 %.not.i40, label %.preheader.i, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.ac
  br i1 %.not31.i, label %_ZN2OT13tuple_delta_tmLEf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader25.i
  %i.hh = load ptr, ptr %i.di, align 8, !tbaa !669
  %i.hi = load i32, ptr %i.dm, align 4
  %i.hj = load ptr, ptr %i.do, align 8
  %i.hk = load ptr, ptr %i.du, align 8
  %i.hl = zext i32 %i.hg to i64
  %i.hm = zext i32 %i.hi to i64
  %wide.trip.count.i = zext i32 %i.hf to i64
  br label %bb.ad

.preheader.i:                                     ; preds = %bb.ac
  br i1 %.not31.i, label %_ZN2OT13tuple_delta_tmLEf.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.preheader.i
  %i.hn = load ptr, ptr %i.di, align 8, !tbaa !669 ; 3 uses
  %i.ho = load i32, ptr %i.dm, align 4
  %i.hp = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.hq = zext i32 %i.ho to i64                   ; 3 uses
  %wide.trip.count37.i = zext i32 %i.hf to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count37.i, 1
  %i.hr = icmp eq i32 %i.hf, 1
  br i1 %i.hr, label %.epil.preheader, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter = and i64 %wide.trip.count37.i, 4294967294
  br label %bb.ak

bb.ad:                                            ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aj ] ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv.i
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !226, !range !132, !noundef !198
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i41 = icmp samesign ult i64 %indvars.iv.i, %i.hm
  br i1 %.not.i.i41, label %bb.ag, label %bb.af, !prof !142

bb.af:                                            ; preds = %bb.ae
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i ; 2 uses
  %.pre.i42 = load float, ptr %i.hv, align 4, !tbaa !580
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit.i

_ZN11hb_vector_tIfLb0EEixEi.exit.i:               ; preds = %bb.ag, %bb.af
  %i.hw = phi float [ %i.eq, %bb.af ], [ %.pre.i42, %bb.ag ]
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.hv, %bb.ag ]
  %i.hx = fmul float %i.hw, %i.hd
  store float %i.hx, ptr %.0.i.i, align 4, !tbaa !580
  %.not.i19.i = icmp samesign ult i64 %indvars.iv.i, %i.hl
  br i1 %.not.i19.i, label %bb.ai, label %bb.ah, !prof !142

bb.ah:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit.i
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit21.i

bb.ai:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit.i
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i ; 2 uses
  %.pre39.i = load float, ptr %i.hy, align 4, !tbaa !580
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit21.i

_ZN11hb_vector_tIfLb0EEixEi.exit21.i:             ; preds = %bb.ai, %bb.ah
  %i.hz = phi float [ %i.eq, %bb.ah ], [ %.pre39.i, %bb.ai ]
  %.0.i20.i = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.ia = fmul float %i.hz, %i.hd
  store float %i.ia, ptr %.0.i20.i, align 4, !tbaa !580
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit21.i, %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2OT13tuple_delta_tmLEf.exit, label %bb.ad, !llvm.loop !929

bb.ak:                                            ; preds = %bb.as, %.lr.ph29.i.new
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %indvars.iv.next35.i.1, %bb.as ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter.next.1, %bb.as ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv34.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !226, !range !132, !noundef !198
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not.i22.i = icmp samesign ult i64 %indvars.iv34.i, %i.hq
  br i1 %.not.i22.i, label %bb.an, label %bb.am, !prof !142

bb.am:                                            ; preds = %bb.al
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i

bb.an:                                            ; preds = %bb.al
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv34.i ; 2 uses
  %.pre40.i = load float, ptr %i.ie, align 4, !tbaa !580
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i

_ZN11hb_vector_tIfLb0EEixEi.exit24.i:             ; preds = %bb.an, %bb.am
  %i.if = phi float [ %i.eq, %bb.am ], [ %.pre40.i, %bb.an ]
  %.0.i23.i = phi ptr [ @_hb_CrapPool, %bb.am ], [ %i.ie, %bb.an ]
  %i.ig = fmul float %i.if, %i.hd
  store float %i.ig, ptr %.0.i23.i, align 4, !tbaa !580
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit24.i, %bb.ak
  %indvars.iv.next35.i = or disjoint i64 %indvars.iv34.i, 1 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.next35.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not.i22.i.1 = icmp samesign ult i64 %indvars.iv.next35.i, %i.hq
  br i1 %.not.i22.i.1, label %bb.ar, label %bb.aq, !prof !142

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1

bb.ar:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next35.i ; 2 uses
  %.pre40.i.1 = load float, ptr %i.ik, align 4, !tbaa !580
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1

_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1:           ; preds = %bb.ar, %bb.aq
  %i.il = phi float [ %i.eq, %bb.aq ], [ %.pre40.i.1, %bb.ar ]
  %.0.i23.i.1 = phi ptr [ @_hb_CrapPool, %bb.aq ], [ %i.ik, %bb.ar ]
  %i.im = fmul float %i.il, %i.hd
  store float %i.im, ptr %.0.i23.i.1, align 4, !tbaa !580
  br label %bb.as

bb.as:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1, %bb.ao
  %indvars.iv.next35.i.1 = add nuw nsw i64 %indvars.iv34.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !930

_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT13tuple_delta_tmLEf.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa, %.lr.ph29.i
  %indvars.iv34.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next35.i.1, %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i32 %i.hf to i1
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.in = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv34.i.epil.init
  %i.io = load i8, ptr %i.in, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.at, label %_ZN2OT13tuple_delta_tmLEf.exit

bb.at:                                            ; preds = %.epil.preheader
  %.not.i22.i.epil = icmp samesign ult i64 %indvars.iv34.i.epil.init, %i.hq
  br i1 %.not.i22.i.epil, label %bb.av, label %bb.au, !prof !142

bb.au:                                            ; preds = %bb.at
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil

bb.av:                                            ; preds = %bb.at
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv34.i.epil.init ; 2 uses
  %.pre40.i.epil = load float, ptr %i.iq, align 4, !tbaa !580
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil

_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil:        ; preds = %bb.av, %bb.au
  %i.ir = phi float [ %i.eq, %bb.au ], [ %.pre40.i.epil, %bb.av ]
  %.0.i23.i.epil = phi ptr [ @_hb_CrapPool, %bb.au ], [ %i.iq, %bb.av ]
  %i.is = fmul float %i.ir, %i.hd
  store float %i.is, ptr %.0.i23.i.epil, align 4, !tbaa !580
  br label %_ZN2OT13tuple_delta_tmLEf.exit

_ZN2OT13tuple_delta_tmLEf.exit:                   ; preds = %bb.aj, %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa, %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil, %.epil.preheader, %_ZN2OT13tuple_delta_t11remove_axisEj.exit, %.preheader25.i, %.preheader.i
  %i.it = load i32, ptr %i.e, align 4, !tbaa !392 ; 3 uses
  %i.iu = load i32, ptr %5, align 8, !tbaa !395
  %.not.i43 = icmp slt i32 %i.it, %i.iu
  br i1 %.not.i43, label %.critedge.i47, label %bb.aw

bb.aw:                                            ; preds = %_ZN2OT13tuple_delta_tmLEf.exit
  %i.iv = add i32 %i.it, 1
  %i.iw = call noundef zeroext i1 @_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.iv, i1 noundef zeroext false)
  br i1 %i.iw, label %..critedge_crit_edge.i45, label %bb.ax, !prof !142

..critedge_crit_edge.i45:                         ; preds = %bb.aw
  %.pre.i46 = load i32, ptr %i.e, align 4, !tbaa !392
  br label %.critedge.i47

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(160) @_hb_NullPool, i64 160, i1 false)
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit48

.critedge.i47:                                    ; preds = %..critedge_crit_edge.i45, %_ZN2OT13tuple_delta_tmLEf.exit
  %i.ix = phi i32 [ %.pre.i46, %..critedge_crit_edge.i45 ], [ %i.it, %_ZN2OT13tuple_delta_tmLEf.exit ] ; 2 uses
  %i.iy = load ptr, ptr %i.er, align 8, !tbaa !542
  %i.iz = add i32 %i.ix, 1
  store i32 %i.iz, ptr %i.e, align 4, !tbaa !392
  %i.ja = zext i32 %i.ix to i64
  %i.jb = getelementptr inbounds nuw [160 x i8], ptr %i.iy, i64 %i.ja ; 29 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store atomic i32 1, ptr %i.jb monotonic, align 4
  store atomic i8 1, ptr %i.jc monotonic, align 4
  store atomic ptr null, ptr %i.jd monotonic, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i8 1, ptr %i.je, align 8, !tbaa !429
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 18 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.jf, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.jg, i8 0, i64 120, i1 false)
  %i.jh = load i8, ptr %i.cu, align 8, !range !132
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.ay, label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit49, !prof !142

bb.ay:                                            ; preds = %.critedge.i47
  %i.jj = load i16, ptr %i.cv, align 2, !tbaa !490
  store i16 %i.jj, ptr %i.jf, align 2, !tbaa !490
  store i16 0, ptr %i.cv, align 2, !tbaa !490
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 20
  %i.jl = load i32, ptr %i.cz, align 4, !tbaa !137
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !137
  store i32 0, ptr %i.cz, align 4, !tbaa !137
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !137
  %i.jo = load i32, ptr %i.db, align 8, !tbaa !137
  store i32 %i.jo, ptr %i.jm, align 8, !tbaa !137
  store i32 %i.jn, ptr %i.db, align 8, !tbaa !137
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jb, i64 28 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !137
  %i.jr = load i32, ptr %i.dc, align 4, !tbaa !137
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !137
  store i32 %i.jq, ptr %i.dc, align 4, !tbaa !137
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 32 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !137
  %i.ju = load i32, ptr %i.dd, align 8, !tbaa !137
  store i32 %i.ju, ptr %i.js, align 8, !tbaa !137
  store i32 %i.jt, ptr %i.dd, align 8, !tbaa !137
  %i.jv = load ptr, ptr %i.cw, align 8, !tbaa !656
  store ptr %i.jv, ptr %i.jg, align 8, !tbaa !656
  store ptr null, ptr %i.cw, align 8, !tbaa !656
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit49

_ZN2OT4swapERNS_13tuple_delta_tES1_.exit49:       ; preds = %.critedge.i47, %bb.ay
  %i.jw = phi i32 [ 0, %.critedge.i47 ], [ %.pre, %bb.ay ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.jy = load i32, ptr %i.de, align 8, !tbaa !137
  store i32 %i.jy, ptr %i.jx, align 8, !tbaa !137
  store i32 %i.jw, ptr %i.de, align 8, !tbaa !137
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jb, i64 52 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !137
  %i.kb = load i32, ptr %i.dg, align 4, !tbaa !137
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !137
  store i32 %i.ka, ptr %i.dg, align 4, !tbaa !137
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.kd = load ptr, ptr %i.di, align 8, !tbaa !674
  store ptr %i.kd, ptr %i.kc, align 8, !tbaa !674
  store ptr null, ptr %i.di, align 8, !tbaa !674
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jb, i64 64 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !137
  %i.kg = load i32, ptr %i.dk, align 8, !tbaa !137
  store i32 %i.kg, ptr %i.ke, align 8, !tbaa !137
  store i32 %i.kf, ptr %i.dk, align 8, !tbaa !137
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jb, i64 68 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !137
  %i.kj = load i32, ptr %i.dm, align 4, !tbaa !137
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !137
  store i32 %i.ki, ptr %i.dm, align 4, !tbaa !137
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jb, i64 72
  %i.kl = load ptr, ptr %i.do, align 8, !tbaa !675
  store ptr %i.kl, ptr %i.kk, align 8, !tbaa !675
  store ptr null, ptr %i.do, align 8, !tbaa !675
  %i.km = getelementptr inbounds nuw i8, ptr %i.jb, i64 80 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !137
  %i.ko = load i32, ptr %i.dq, align 8, !tbaa !137
  store i32 %i.ko, ptr %i.km, align 8, !tbaa !137
  store i32 %i.kn, ptr %i.dq, align 8, !tbaa !137
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jb, i64 84 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !137
  %i.kr = load i32, ptr %i.ds, align 4, !tbaa !137
  store i32 %i.kr, ptr %i.kp, align 4, !tbaa !137
  store i32 %i.kq, ptr %i.ds, align 4, !tbaa !137
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jb, i64 88 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !675
  %i.ku = load ptr, ptr %i.du, align 8, !tbaa !675
  store ptr %i.ku, ptr %i.ks, align 8, !tbaa !675
  store ptr %i.kt, ptr %i.du, align 8, !tbaa !675
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jb, i64 96 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !137
  %i.kx = load i32, ptr %i.dw, align 8, !tbaa !137
  store i32 %i.kx, ptr %i.kv, align 8, !tbaa !137
  store i32 %i.kw, ptr %i.dw, align 8, !tbaa !137
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jb, i64 100 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !137
  %i.la = load i32, ptr %i.dy, align 4, !tbaa !137
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !137
  store i32 %i.kz, ptr %i.dy, align 4, !tbaa !137
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jb, i64 104
  %i.lc = load ptr, ptr %i.ea, align 8, !tbaa !318
  store ptr %i.lc, ptr %i.lb, align 8, !tbaa !318
  store ptr null, ptr %i.ea, align 8, !tbaa !318
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jb, i64 112 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !137
  %i.lf = load i32, ptr %i.ec, align 8, !tbaa !137
  store i32 %i.lf, ptr %i.ld, align 8, !tbaa !137
  store i32 %i.le, ptr %i.ec, align 8, !tbaa !137
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jb, i64 116 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !137
  %i.li = load i32, ptr %i.ee, align 4, !tbaa !137
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !137
  store i32 %i.lh, ptr %i.ee, align 4, !tbaa !137
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jb, i64 120 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !318
  %i.ll = load ptr, ptr %i.eg, align 8, !tbaa !318
  store ptr %i.ll, ptr %i.lj, align 8, !tbaa !318
  store ptr %i.lk, ptr %i.eg, align 8, !tbaa !318
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jb, i64 128 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !137
  %i.lo = load i32, ptr %i.ei, align 8, !tbaa !137
  store i32 %i.lo, ptr %i.lm, align 8, !tbaa !137
  store i32 %i.ln, ptr %i.ei, align 8, !tbaa !137
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jb, i64 132 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !137
  %i.lr = load i32, ptr %i.ek, align 4, !tbaa !137
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !137
  store i32 %i.lq, ptr %i.ek, align 4, !tbaa !137
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jb, i64 136
  %i.lt = load ptr, ptr %i.em, align 8, !tbaa !676
  store ptr %i.lt, ptr %i.ls, align 8, !tbaa !676
  store ptr null, ptr %i.em, align 8, !tbaa !676
  br label %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit48

_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit48: ; preds = %bb.ax, %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit49
  call void @_ZN2OT13tuple_delta_tD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2OT13tuple_delta_t17compile_point_setERK11hb_vector_tIbLb0EERS1_IhLb0EE:bb.a
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !412 ; 2 uses
  br i1 %.not8.i.i.i.i134, label %bb.af, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135

bb.af:                                            ; preds = %.thread39.i.i133
  %.not9.i.i.i.i142 = icmp eq ptr %i.dv, null
  br i1 %.not9.i.i.i.i142, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = zext i32 %i.ds to i64
  %i.dx = tail call ptr @hb_malloc(i64 noundef %i.dw) #18 ; 4 uses
  %.not10.i.i.i.i143 = icmp eq ptr %i.dx, null
  br i1 %.not10.i.i.i.i143, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139, label %bb.ah, !prof !21

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i32, ptr %i.bf, align 4, !tbaa !411 ; 2 uses
  %.not.i.i.i.i.i144 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i.i144, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137, label %bb.ai, !prof !21

bb.ai:                                            ; preds = %bb.ah
  %i.dz = zext i32 %i.dy to i64
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !412
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr readonly align 1 %i.ea, i64 %i.dz, i1 false), !alias.scope !1076
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135: ; preds = %bb.af, %.thread39.i.i133
  %i.eb = phi ptr [ null, %bb.af ], [ %i.dv, %.thread39.i.i133 ]
  %i.ec = zext i32 %i.ds to i64
  %i.ed = tail call ptr @hb_realloc(ptr noundef %i.eb, i64 noundef %i.ec) #18 ; 2 uses
  %.not22.i.i136 = icmp eq ptr %i.ed, null
  br i1 %.not22.i.i136, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137, !prof !88

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135, %bb.ag
  %i.ee = load i32, ptr %1, align 8, !tbaa !409   ; 2 uses
  %.not23.i.i140 = icmp ugt i32 %i.ds, %i.ee
  br i1 %.not23.i.i140, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137: ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135, %bb.ai, %bb.ah
  %.1.i.i52.i.i138 = phi ptr [ %i.ed, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i135 ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.ai ]
  store ptr %.1.i.i52.i.i138, ptr %i.du, align 8, !tbaa !412
  store i32 %i.ds, ptr %1, align 8, !tbaa !409
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141:       ; preds = %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139
  %i.ef = xor i32 %i.ee, -1
  store i32 %i.ef, ptr %1, align 8, !tbaa !409
  br label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129: ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread4.i137, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.thread63.i.i139, %bb.ae
  store i32 %.2100180, ptr %i.bf, align 4, !tbaa !411
  br label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit

_ZN11hb_vector_tIhLb0EE6resizeEi.exit:            ; preds = %bb.a, %bb.k, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i124, %bb.j, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141, %bb.ad, %._crit_edge214, %bb.i, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, %bb.c, %._crit_edge
  %.2109 = phi i1 [ true, %._crit_edge ], [ false, %bb.ad ], [ true, %bb.i ], [ false, %bb.c ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i ], [ false, %._crit_edge214 ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i141 ], [ true, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i129 ], [ false, %bb.j ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i124 ], [ false, %bb.k ], [ true, %bb.a ]
  ret i1 %.2109
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT13tuple_delta_t14compile_deltasE10hb_array_tIKbES1_IKfES5_R11hb_vector_tIhLb0EERS6_IiLb0EEP15hb_alloc_pool_t(ptr %0, i64 %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %8) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.3.8.extract.trunc = trunc i64 %1 to i32  ; 4 uses
  %i.a = icmp slt i32 %.sroa.3.8.extract.trunc, 0
  br i1 %i.a, label %.critedge, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.sroa.3.8.extract.trunc, i1 noundef zeroext false)
  br i1 %i.b, label %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit, label %.critedge, !prof !396

_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit:     ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 7 uses
  store i32 %.sroa.3.8.extract.trunc, ptr %i.c, align 4, !tbaa !199
  %.not103 = icmp eq i32 %.sroa.3.8.extract.trunc, 0 ; 2 uses
  br i1 %.not103, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %wide.trip.count = and i64 %1, 2147483647
  %xtraiter = and i64 %1, 1
  %i.e = icmp eq i64 %wide.trip.count, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, 2147483646
  br label %bb.g

._crit_edge.unr-lcssa:                            ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.04996.epil.init = phi i32 [ 0, %.lr.ph ], [ %.150.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod121 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.g = load i8, ptr %i.f, align 1, !tbaa !226, !range !132, !noundef !198
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.j = load float, ptr %i.i, align 4, !tbaa !580
  %i.k = fadd float %i.j, 5.000000e-01
  %i.l = tail call noundef float @llvm.floor.f32(float %i.k)
  %i.m = fptosi float %i.l to i32
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.o = add i32 %.04996.epil.init, 1
  %i.p = zext i32 %.04996.epil.init to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  store i32 %i.m, ptr %i.q, align 4, !tbaa !137
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.c, %._crit_edge.unr-lcssa
  %.150.lcssa = phi i32 [ %.150.1, %._crit_edge.unr-lcssa ], [ %i.o, %bb.c ], [ %.04996.epil.init, %.epil.preheader ] ; 2 uses
  %i.r = icmp slt i32 %.150.lcssa, 0
  br i1 %i.r, label %._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge, label %._crit_edge.thread, !prof !555

._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.c, align 4, !tbaa !199
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

._crit_edge.thread:                               ; preds = %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit, %._crit_edge
  %.049.lcssa119 = phi i32 [ %.150.lcssa, %._crit_edge ], [ 0, %_ZN11hb_vector_tIiLb0EE12resize_dirtyEi.exit ] ; 5 uses
  %i.s = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.049.lcssa119, i1 noundef zeroext false)
  %.pre110 = load i32, ptr %i.c, align 4, !tbaa !199 ; 4 uses
  br i1 %i.s, label %bb.d, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

bb.d:                                             ; preds = %._crit_edge.thread
  %i.t = icmp ugt i32 %.049.lcssa119, %.pre110
  br i1 %i.t, label %bb.e, label %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw nsw i32 %.049.lcssa119, %.pre110
  %i.v = shl i32 %i.u, 2                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !418
  %i.y = zext nneg i32 %.pre110 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = zext i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.aa, i1 false)
  br label %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  store i32 %.049.lcssa119, ptr %i.c, align 4, !tbaa !199
  br label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge, %._crit_edge.thread, %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.ab = phi i32 [ %.pre, %._crit_edge._ZN11hb_vector_tIiLb0EE6resizeEi.exit_crit_edge ], [ %.pre110, %._crit_edge.thread ], [ %.049.lcssa119, %_ZN11hb_vector_tIiLb0EE11grow_vectorIiTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i ] ; 3 uses
  %.not91 = icmp eq i32 %i.ab, 0
  br i1 %.not91, label %.critedge, label %bb.l

bb.g:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %.04996 = phi i32 [ 0, %.lr.ph.new ], [ %.150.1, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !580
  %i.ah = fadd float %i.ag, 5.000000e-01
  %i.ai = tail call noundef float @llvm.floor.f32(float %i.ah)
  %i.aj = fptosi float %i.ai to i32
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.al = add i32 %.04996, 1
  %i.am = zext i32 %.04996 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  store i32 %i.aj, ptr %i.an, align 4, !tbaa !137
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.150 = phi i32 [ %i.al, %bb.h ], [ %.04996, %bb.g ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !226, !range !132, !noundef !198
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.as = load float, ptr %i.ar, align 4, !tbaa !580
  %i.at = fadd float %i.as, 5.000000e-01
  %i.au = tail call noundef float @llvm.floor.f32(float %i.at)
  %i.av = fptosi float %i.au to i32
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !418
  %i.ax = add i32 %.150, 1
  %i.ay = zext i32 %.150 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  store i32 %i.av, ptr %i.az, align 4, !tbaa !137
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.150.1 = phi i32 [ %i.ax, %bb.j ], [ %.150, %bb.i ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.g, !llvm.loop !1080

bb.l:                                             ; preds = %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  %i.ba = shl i32 %i.ab, 2
  %i.bb = or disjoint i32 %i.ba, 2
  %i.bc = add i32 %i.ab, 63
  %i.bd = lshr i32 %i.bc, 6
  %i.be = add i32 %i.bb, %i.bd
  %i.bf = and i64 %5, 4294967295
  %.not92 = icmp ne i64 %i.bf, 0                  ; 2 uses
  %i.bg = zext i1 %.not92 to i32
  %spec.select = shl i32 %i.be, %i.bg
  %i.bh = tail call noundef zeroext i1 @_ZN11hb_vector_tIhLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %8, i32 noundef %spec.select, i32 noundef 0)
  br i1 %i.bh, label %bb.m, label %.critedge, !prof !142

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !412
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !418
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !199
  %.sroa.2.8.insert.ext.i.i.i.i67 = zext i32 %i.bn to i64
  %i.bo = tail call noundef i32 @_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh(ptr %i.bm, i64 %.sroa.2.8.insert.ext.i.i.i.i67, ptr noundef %i.bj) ; 3 uses
  br i1 %.not92, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.m
  br i1 %.not103, label %._crit_edge101, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.preheader
  %wide.trip.count108 = and i64 %1, 2147483647
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.o
  %indvars.iv105 = phi i64 [ 0, %.lr.ph100.preheader ], [ %indvars.iv.next106, %bb.o ] ; 3 uses
  %.05698 = phi i32 [ 0, %.lr.ph100.preheader ], [ %.258, %bb.o ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv105
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !226, !range !132, !noundef !198
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph100
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !199
  %.not = icmp ult i32 %.05698, %i.bs
  br i1 %.not, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv105
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !580
  %i.bv = fadd float %i.bu, 5.000000e-01
  %i.bw = tail call noundef float @llvm.floor.f32(float %i.bv)
  %i.bx = fptosi float %i.bw to i32
  %i.by = add nuw i32 %.05698, 1
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !418
  %i.ca = zext i32 %.05698 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  store i32 %i.bx, ptr %i.cb, align 4, !tbaa !137
  br label %bb.o

bb.o:                                             ; preds = %.thread, %.lr.ph100
  %.258 = phi i32 [ %i.by, %.thread ], [ %.05698, %.lr.ph100 ] ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge101, label %.lr.ph100, !llvm.loop !1081

._crit_edge101:                                   ; preds = %bb.o, %.preheader
  %.056.lcssa = phi i32 [ 0, %.preheader ], [ %.258, %bb.o ] ; 2 uses
  %i.cc = load i32, ptr %i.c, align 4, !tbaa !199
  %.not64 = icmp eq i32 %.056.lcssa, %i.cc
  br i1 %.not64, label %_ZNK10hb_array_tIhE9sub_arrayEjPj.exit, label %.critedge

_ZNK10hb_array_tIhE9sub_arrayEjPj.exit:           ; preds = %._crit_edge101
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !412
  %i.ce = zext i32 %i.bo to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = load ptr, ptr %i.bl, align 8, !tbaa !418
  %.sroa.2.8.insert.ext.i.i.i.i73 = zext i32 %.056.lcssa to i64
  %i.ch = tail call noundef i32 @_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh(ptr %i.cg, i64 %.sroa.2.8.insert.ext.i.i.i.i73, ptr noundef %i.cf)
  %i.ci = add i32 %i.ch, %i.bo
  br label %bb.p

bb.p:                                             ; preds = %_ZNK10hb_array_tIhE9sub_arrayEjPj.exit, %bb.m
  %.162 = phi i32 [ %i.ci, %_ZNK10hb_array_tIhE9sub_arrayEjPj.exit ], [ %i.bo, %bb.m ]
  %i.cj = load i32, ptr %i.bk, align 4, !tbaa !411 ; 3 uses
  %i.ck = tail call i32 @llvm.smax.i32(i32 %.162, i32 0) ; 3 uses
  %.not.i.i75 = icmp ult i32 %i.ck, %i.cj
  br i1 %.not.i.i75, label %bb.q, label %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i

bb.q:                                             ; preds = %bb.p
  store i32 %i.ck, ptr %i.bk, align 4, !tbaa !411
  br label %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i

_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i:         ; preds = %bb.q, %bb.p
  %i.cl = phi i32 [ %i.cj, %bb.p ], [ %i.ck, %bb.q ] ; 2 uses
  %.not.i76 = icmp eq ptr %8, null
  br i1 %.not.i76, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i
  %i.cm = load i32, ptr %6, align 8, !tbaa !409
  %i.cn = add i32 %i.cm, -1
  %spec.select.i.i = icmp ult i32 %i.cn, -2
  br i1 %spec.select.i.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !412
  %i.cp = zext nneg i32 %i.cl to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  %i.cr = sub i32 %i.cj, %i.cl                    ; 4 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !974 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cw = icmp ne ptr %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not.i4.i = icmp ugt i32 %i.cr, %i.cy
  %or.cond.i.i = select i1 %i.cw, i1 true, i1 %.not.i4.i
  br i1 %or.cond.i.i, label %.critedge, label %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i

_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i:   ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !982
  %i.db = add i32 %i.da, %i.cr
  store i32 %i.db, ptr %i.cz, align 8, !tbaa !982
  %i.dc = sub nuw i32 %i.cy, %i.cr
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !981
  %i.dd = sub nsw i64 0, %i.cs
  %i.de = getelementptr inbounds i8, ptr %i.cu, i64 %i.dd
  store ptr %i.de, ptr %i.ct, align 8, !tbaa !983
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.b, %bb.a, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i, %bb.s, %bb.r, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, %._crit_edge101, %bb.l
  %.8 = phi i1 [ true, %_ZNR9hb_iter_tI10hb_array_tIcERcEmIEj.exit.i.i ], [ true, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ false, %bb.l ], [ false, %bb.b ], [ false, %._crit_edge101 ], [ true, %_ZN11hb_vector_tIhLb0EE6shrinkEib.exit.i ], [ true, %bb.r ], [ true, %bb.s ], [ false, %bb.a ], [ false, %bb.n ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !417    ; 7 uses
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
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1082

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !21

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !418
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !418  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !199  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !418
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1083
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !417   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !418
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !417
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.6.8.extract.trunc = trunc i64 %1 to i32  ; 10 uses
  %.not = icmp eq i32 %.sroa.6.8.extract.trunc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.a = and i64 %1, 4294967295                   ; 4 uses
  %scevgep240 = getelementptr i8, ptr %2, i64 1
  %scevgep242.a = getelementptr i8, ptr %2, i64 65
  %scevgep245 = getelementptr i8, ptr %0, i64 256
  %scevgep287 = getelementptr i8, ptr %0, i64 256
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph127, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit
  %.0126 = phi i32 [ 0, %.lr.ph127 ], [ %.1, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ] ; 4 uses
  %.083125 = phi i32 [ 0, %.lr.ph127 ], [ %.184, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ] ; 12 uses
  %i.b = zext i32 %.083125 to i64                 ; 5 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.lr.ph120.preheader, label %bb.d

.lr.ph120.preheader:                              ; preds = %bb.b
  %i.f = zext i32 %.0126 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f ; 3 uses
  %i.h = sub nuw i32 %.sroa.6.8.extract.trunc, %.083125 ; 3 uses
  %exitcond.not.i232 = icmp eq i32 %i.h, 1
  br i1 %exitcond.not.i232, label %..critedge.i_crit_edge, label %.lr.ph.i.lr.ph, !llvm.loop !1087

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph120.preheader
  br label %.lr.ph.i, !llvm.loop !1087

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph120
  %i.i = phi i32 [ 1, %.lr.ph.i.lr.ph ], [ %i.m, %.lr.ph120 ] ; 2 uses
  %indvars.iv.i118233 = phi i64 [ %i.b, %.lr.ph.i.lr.ph ], [ %indvars.iv.next.i, %.lr.ph120 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i118233, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !137
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.lr.ph120, label %.critedge.i.loopexit, !llvm.loop !1087

.lr.ph120:                                        ; preds = %.lr.ph.i
  %i.m = add nuw i32 %i.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.m, %i.h
  br i1 %exitcond.not.i, label %.lr.ph120...critedge.i_crit_edge_crit_edge, label %.lr.ph.i, !llvm.loop !1087

.lr.ph120...critedge.i_crit_edge_crit_edge:       ; preds = %.lr.ph120
  br label %..critedge.i_crit_edge, !llvm.loop !1087

..critedge.i_crit_edge:                           ; preds = %.lr.ph120...critedge.i_crit_edge_crit_edge, %.lr.ph120.preheader
  br label %.critedge.i, !llvm.loop !1087

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.n = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %..critedge.i_crit_edge
  %.3 = phi i32 [ %.sroa.6.8.extract.trunc, %..critedge.i_crit_edge ], [ %i.n, %.critedge.i.loopexit ] ; 2 uses
  %.013.lcssa.i = phi i32 [ %i.h, %..critedge.i_crit_edge ], [ %i.i, %.critedge.i.loopexit ] ; 4 uses
  %i.o = icmp ugt i32 %.013.lcssa.i, 63
  br i1 %i.o, label %.lr.ph23.preheader.i, label %bb.c

.lr.ph23.preheader.i:                             ; preds = %.critedge.i
  %i.p = add i32 %.013.lcssa.i, -64
  %i.q = lshr i32 %i.p, 6
  %narrow.i = add nuw nsw i32 %i.q, 1             ; 3 uses
  %i.r = zext nneg i32 %narrow.i to i64           ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.g, i8 -65, i64 %i.r, i1 false), !tbaa !331
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.r
  %i.s = and i32 %.013.lcssa.i, 63                ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i, %.lr.ph23.preheader.i
  %.0.lcssa.i178 = phi i32 [ %narrow.i, %.lr.ph23.preheader.i ], [ 0, %.critedge.i ]
  %.114.lcssa.i177 = phi i32 [ %i.s, %.lr.ph23.preheader.i ], [ %.013.lcssa.i, %.critedge.i ]
  %.015.lcssa.i176 = phi ptr [ %scevgep.i, %.lr.ph23.preheader.i ], [ %i.g, %.critedge.i ]
  %i.t = trunc nuw nsw i32 %.114.lcssa.i177 to i8
  %i.u = add nuw i8 %i.t, 127
  %i.v = or i8 %i.u, -128
  store i8 %i.v, ptr %.015.lcssa.i176, align 1, !tbaa !331
  %i.w = add nuw nsw i32 %.0.lcssa.i178, 1
  br label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

bb.d:                                             ; preds = %bb.b
  %i.x = add i32 %i.d, 128
  %i.y = icmp ult i32 %i.x, 256
  br i1 %i.y, label %.lr.ph114.preheader, label %bb.g

.lr.ph114.preheader:                              ; preds = %bb.d
  %i.z = zext i32 %.0126 to i64                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.z ; 2 uses
  br label %.lr.ph114

.lr.ph.i51:                                       ; preds = %._crit_edge79.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !137 ; 2 uses
  %i.ad = add i32 %i.ac, 128
  %.not.i53 = icmp ult i32 %i.ad, 256
  br i1 %.not.i53, label %.lr.ph114, label %.thread.i.split.loop.exit

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph.i51
  %i.ae = phi i32 [ %i.ac, %.lr.ph.i51 ], [ 1, %.lr.ph114.preheader ]
  %indvars.iv.i52113 = phi i64 [ %i.ag, %.lr.ph.i51 ], [ %i.b, %.lr.ph114.preheader ] ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = add nuw i64 %indvars.iv.i52113, 1       ; 6 uses
  %i.ah = icmp samesign ult i64 %i.ag, %i.a
  %or.cond.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.e, label %._crit_edge79.i

bb.e:                                             ; preds = %.lr.ph114
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !137
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.thread.i.split.loop.exit196, label %._crit_edge79.i

._crit_edge79.i:                                  ; preds = %bb.e, %.lr.ph114
  %exitcond.not.i54 = icmp eq i64 %i.ag, %i.a
  br i1 %exitcond.not.i54, label %.thread.i, label %.lr.ph.i51

.thread.i.split.loop.exit:                        ; preds = %.lr.ph.i51
  %indvars150.le = trunc i64 %i.ag to i32
  br label %.thread.i

.thread.i.split.loop.exit196:                     ; preds = %bb.e
  %indvars151.le = trunc i64 %indvars.iv.i52113 to i32
  br label %.thread.i

.thread.i:                                        ; preds = %._crit_edge79.i, %.thread.i.split.loop.exit196, %.thread.i.split.loop.exit
  %.5.ph = phi i32 [ %indvars151.le, %.thread.i.split.loop.exit196 ], [ %indvars150.le, %.thread.i.split.loop.exit ], [ %.sroa.6.8.extract.trunc, %._crit_edge79.i ] ; 4 uses
  %i.al = sub i32 %.5.ph, %.083125                ; 3 uses
  %i.am = icmp ugt i32 %i.al, 63
  br i1 %i.am, label %.lr.ph61.i.preheader, label %._crit_edge.i48

.lr.ph61.i.preheader:                             ; preds = %.thread.i
  %scevgep241.a = getelementptr i8, ptr %scevgep240, i64 %i.z
  %i.an = add i32 %.5.ph, -64
  %i.ao = sub i32 %i.an, %.083125
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 65
  %i.as = getelementptr i8, ptr %scevgep242.a, i64 %i.ar
  %scevgep243.a = getelementptr i8, ptr %i.as, i64 %i.z
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader, %middle.block257
  %.04460.i = phi i32 [ %i.di, %middle.block257 ], [ 0, %.lr.ph61.i.preheader ]
  %.04559.i = phi i32 [ %i.dk, %middle.block257 ], [ %i.al, %.lr.ph61.i.preheader ]
  %.04758.i = phi i32 [ %i.dj, %middle.block257 ], [ %.083125, %.lr.ph61.i.preheader ] ; 15 uses
  %.04857.i = phi ptr [ %i.dh, %middle.block257 ], [ %i.aa, %.lr.ph61.i.preheader ] ; 18 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04857.i, i64 1 ; 5 uses
  store i8 63, ptr %.04857.i, align 1, !tbaa !331
  %i.au = icmp ugt i32 %.04758.i, -64
  br i1 %i.au, label %scalar.ph250.preheader, label %vector.memcheck239

scalar.ph250.preheader:                           ; preds = %vector.memcheck239, %.lr.ph61.i
  br label %scalar.ph250

vector.memcheck239:                               ; preds = %.lr.ph61.i
  %i.av = zext i32 %.04758.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.aw
  %scevgep244 = getelementptr i8, ptr %0, i64 %i.aw
  %bound0247 = icmp ult ptr %scevgep241.a, %scevgep246
  %bound1248 = icmp ult ptr %scevgep244, %scevgep243.a
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %scalar.ph250.preheader, label %vector.body252

vector.body252:                                   ; preds = %vector.memcheck239
  %i.ax = zext i32 %.04758.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load254 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255 = load <4 x i32>, ptr %i.az, align 4, !tbaa !137, !alias.scope !1088
  %i.ba = trunc <4 x i32> %wide.load254 to <4 x i8>
  %i.bb = trunc <4 x i32> %wide.load255 to <4 x i8>
  %i.bc = getelementptr inbounds nuw i8, ptr %.04857.i, i64 5
  store <4 x i8> %i.ba, ptr %i.at, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  %i.bd = add i32 %.04758.i, 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load254.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !137, !alias.scope !1088
  %i.bh = trunc <4 x i32> %wide.load254.1 to <4 x i8>
  %i.bi = trunc <4 x i32> %wide.load255.1 to <4 x i8>
  %i.bj = getelementptr inbounds nuw i8, ptr %.04857.i, i64 9
  %i.bk = getelementptr inbounds nuw i8, ptr %.04857.i, i64 13
  store <4 x i8> %i.bh, ptr %i.bj, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.bi, ptr %i.bk, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  %i.bl = add i32 %.04758.i, 16
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load254.2 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255.2 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !137, !alias.scope !1088
  %i.bp = trunc <4 x i32> %wide.load254.2 to <4 x i8>
  %i.bq = trunc <4 x i32> %wide.load255.2 to <4 x i8>
  %i.br = getelementptr inbounds nuw i8, ptr %.04857.i, i64 17
  %i.bs = getelementptr inbounds nuw i8, ptr %.04857.i, i64 21
  store <4 x i8> %i.bp, ptr %i.br, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.bq, ptr %i.bs, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  %i.bt = add i32 %.04758.i, 24
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load254.3 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255.3 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !137, !alias.scope !1088
  %i.bx = trunc <4 x i32> %wide.load254.3 to <4 x i8>
  %i.by = trunc <4 x i32> %wide.load255.3 to <4 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %.04857.i, i64 25
  %i.ca = getelementptr inbounds nuw i8, ptr %.04857.i, i64 29
  store <4 x i8> %i.bx, ptr %i.bz, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.by, ptr %i.ca, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  %i.cb = add i32 %.04758.i, 32
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load254.4 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255.4 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !137, !alias.scope !1088
  %i.cf = trunc <4 x i32> %wide.load254.4 to <4 x i8>
  %i.cg = trunc <4 x i32> %wide.load255.4 to <4 x i8>
  %i.ch = getelementptr inbounds nuw i8, ptr %.04857.i, i64 33
  %i.ci = getelementptr inbounds nuw i8, ptr %.04857.i, i64 37
  store <4 x i8> %i.cf, ptr %i.ch, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.cg, ptr %i.ci, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  %i.cj = add i32 %.04758.i, 40
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load254.5 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255.5 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !137, !alias.scope !1088
  %i.cn = trunc <4 x i32> %wide.load254.5 to <4 x i8>
  %i.co = trunc <4 x i32> %wide.load255.5 to <4 x i8>
  %i.cp = getelementptr inbounds nuw i8, ptr %.04857.i, i64 41
  %i.cq = getelementptr inbounds nuw i8, ptr %.04857.i, i64 45
  store <4 x i8> %i.cn, ptr %i.cp, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.co, ptr %i.cq, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  %i.cr = add i32 %.04758.i, 48
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load254.6 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255.6 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !137, !alias.scope !1088
  %i.cv = trunc <4 x i32> %wide.load254.6 to <4 x i8>
  %i.cw = trunc <4 x i32> %wide.load255.6 to <4 x i8>
  %i.cx = getelementptr inbounds nuw i8, ptr %.04857.i, i64 49
  %i.cy = getelementptr inbounds nuw i8, ptr %.04857.i, i64 53
  store <4 x i8> %i.cv, ptr %i.cx, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.cw, ptr %i.cy, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  %i.cz = add i32 %.04758.i, 56
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load254.7 = load <4 x i32>, ptr %i.db, align 4, !tbaa !137, !alias.scope !1088
  %wide.load255.7 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !137, !alias.scope !1088
  %i.dd = trunc <4 x i32> %wide.load254.7 to <4 x i8>
  %i.de = trunc <4 x i32> %wide.load255.7 to <4 x i8>
  %i.df = getelementptr inbounds nuw i8, ptr %.04857.i, i64 57
  %i.dg = getelementptr inbounds nuw i8, ptr %.04857.i, i64 61
  store <4 x i8> %i.dd, ptr %i.df, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  store <4 x i8> %i.de, ptr %i.dg, align 1, !tbaa !331, !alias.scope !1091, !noalias !1088
  br label %middle.block257

middle.block257:                                  ; preds = %scalar.ph250, %vector.body252
  %i.dh = getelementptr inbounds nuw i8, ptr %.04857.i, i64 65 ; 2 uses
  %i.di = add i32 %.04460.i, 65                   ; 2 uses
  %i.dj = add i32 %.04758.i, 64                   ; 2 uses
  %i.dk = add i32 %.04559.i, -64                  ; 3 uses
  %i.dl = icmp ugt i32 %i.dk, 63
  br i1 %i.dl, label %.lr.ph61.i, label %._crit_edge.i48, !llvm.loop !1093

scalar.ph250:                                     ; preds = %scalar.ph250, %scalar.ph250.preheader
  %indvars.iv70.i = phi i64 [ 0, %scalar.ph250.preheader ], [ %indvars.iv.next71.i.3, %scalar.ph250 ] ; 6 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv70.i to i32
  %i.dn = add i32 %.04758.i, %i.dm
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !137
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv70.i
end_hunk_5
begin_hunk_6_@_ZN2OT11TupleValues14compile_unsafeE10hb_array_tIKiEPh:bb.a
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv88.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !137 ; 2 uses
  %i.oq = lshr i32 %i.op, 8
  %i.or = trunc i32 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %.275.i, i64 7
  store i8 %i.or, ptr %i.om, align 1, !tbaa !331
  %i.ot = trunc i32 %i.op to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !331
  %i.ov = add i32 %.25273.i, 8                    ; 2 uses
  %exitcond149.not.3 = icmp eq i64 %indvars.iv.next89.i.3, %i.mk
  br i1 %exitcond149.not.3, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph77.i, !llvm.loop !1117

.lr.ph.i71:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ow = phi i32 [ %i.pb, %.lr.ph ], [ %i.hc, %.lr.ph.preheader ]
  %indvars.iv.next.i73230 = phi i64 [ %indvars.iv.next.i73, %.lr.ph ], [ %indvars.iv.next.i73228, %.lr.ph.preheader ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i73230
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !137
  %i.oz = add i32 %i.oy, 32768
  %i.pa = icmp ult i32 %i.oz, 65536
  br i1 %i.pa, label %.thread.i65, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i71
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.next.i73230, 1 ; 2 uses
  %i.pb = trunc i64 %indvars.iv.next.i73 to i32   ; 2 uses
  %exitcond.not.i74 = icmp eq i32 %i.pb, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not.i74, label %.thread.i65, label %.lr.ph.i71

.thread.i65:                                      ; preds = %.lr.ph, %.lr.ph.i71, %.lr.ph.preheader
  %.lcssa = phi i32 [ %.sroa.6.8.extract.trunc, %.lr.ph.preheader ], [ %.sroa.6.8.extract.trunc, %.lr.ph ], [ %i.ow, %.lr.ph.i71 ] ; 7 uses
  %i.pc = sub i32 %.lcssa, %.083125               ; 3 uses
  %i.pd = icmp ugt i32 %i.pc, 63
  br i1 %i.pd, label %.lr.ph64.i, label %._crit_edge.i66

.lr.ph64.i:                                       ; preds = %.thread.i65, %bb.j
  %.063.i = phi ptr [ %i.qp, %bb.j ], [ %i.hb, %.thread.i65 ] ; 2 uses
  %.04662.i = phi i32 [ %i.pg, %bb.j ], [ %.083125, %.thread.i65 ] ; 3 uses
  %.04961.i = phi i32 [ %i.pf, %bb.j ], [ 0, %.thread.i65 ]
  %.05260.i = phi i32 [ %i.ph, %bb.j ], [ %i.pc, %.thread.i65 ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.063.i, i64 1
  store i8 -1, ptr %.063.i, align 1, !tbaa !331
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.pf = add i32 %.04961.i, 257                  ; 2 uses
  %i.pg = add i32 %.04662.i, 64                   ; 2 uses
  %i.ph = add i32 %.05260.i, -64                  ; 3 uses
  %i.pi = icmp ugt i32 %i.ph, 63
  br i1 %i.pi, label %.lr.ph64.i, label %._crit_edge.i66, !llvm.loop !1118

bb.k:                                             ; preds = %bb.k, %.lr.ph64.i
  %indvars.iv79.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next80.i.1, %bb.k ] ; 3 uses
  %.159.i = phi ptr [ %i.pe, %.lr.ph64.i ], [ %i.qp, %bb.k ] ; 9 uses
  %i.pj = trunc nuw nsw i64 %indvars.iv79.i to i32
  %i.pk = add i32 %.04662.i, %i.pj
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !137 ; 4 uses
  %i.po = lshr i32 %i.pn, 24
  %i.pp = trunc nuw i32 %i.po to i8
  %i.pq = getelementptr inbounds nuw i8, ptr %.159.i, i64 1
  store i8 %i.pp, ptr %.159.i, align 1, !tbaa !331
  %i.pr = lshr i32 %i.pn, 16
  %i.ps = trunc i32 %i.pr to i8
  %i.pt = getelementptr inbounds nuw i8, ptr %.159.i, i64 2
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !331
  %i.pu = lshr i32 %i.pn, 8
  %i.pv = trunc i32 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %.159.i, i64 3
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !331
  %i.px = trunc i32 %i.pn to i8
  %i.py = getelementptr inbounds nuw i8, ptr %.159.i, i64 4
  store i8 %i.px, ptr %i.pw, align 1, !tbaa !331
  %i.pz = trunc i64 %indvars.iv79.i to i32
  %i.qa = or disjoint i32 %i.pz, 1
  %i.qb = add i32 %.04662.i, %i.qa
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qc
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !137 ; 4 uses
  %i.qf = lshr i32 %i.qe, 24
  %i.qg = trunc nuw i32 %i.qf to i8
  %i.qh = getelementptr inbounds nuw i8, ptr %.159.i, i64 5
  store i8 %i.qg, ptr %i.py, align 1, !tbaa !331
  %i.qi = lshr i32 %i.qe, 16
  %i.qj = trunc i32 %i.qi to i8
  %i.qk = getelementptr inbounds nuw i8, ptr %.159.i, i64 6
  store i8 %i.qj, ptr %i.qh, align 1, !tbaa !331
  %i.ql = lshr i32 %i.qe, 8
  %i.qm = trunc i32 %i.ql to i8
  %i.qn = getelementptr inbounds nuw i8, ptr %.159.i, i64 7
  store i8 %i.qm, ptr %i.qk, align 1, !tbaa !331
  %i.qo = trunc i32 %i.qe to i8
  %i.qp = getelementptr inbounds nuw i8, ptr %.159.i, i64 8 ; 3 uses
  store i8 %i.qo, ptr %i.qn, align 1, !tbaa !331
  %indvars.iv.next80.i.1 = add nuw nsw i64 %indvars.iv79.i, 2 ; 2 uses
  %exitcond82.not.i.1 = icmp eq i64 %indvars.iv.next80.i.1, 64
  br i1 %exitcond82.not.i.1, label %bb.j, label %bb.k, !llvm.loop !1119

._crit_edge.i66:                                  ; preds = %bb.j, %.thread.i65
  %.052.lcssa.i = phi i32 [ %i.pc, %.thread.i65 ], [ %i.ph, %bb.j ] ; 2 uses
  %.049.lcssa.i = phi i32 [ 0, %.thread.i65 ], [ %i.pf, %bb.j ] ; 3 uses
  %.046.lcssa.i = phi i32 [ %.083125, %.thread.i65 ], [ %i.pg, %bb.j ] ; 2 uses
  %.0.lcssa.i67 = phi ptr [ %i.hb, %.thread.i65 ], [ %i.qp, %bb.j ] ; 6 uses
  %.not.i68 = icmp eq i32 %.052.lcssa.i, 0
  br i1 %.not.i68, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i66
  %i.qq = trunc nuw nsw i32 %.052.lcssa.i to i8
  %i.qr = add nuw nsw i8 %i.qq, 63
  %i.qs = or i8 %i.qr, -64
  store i8 %i.qs, ptr %.0.lcssa.i67, align 1, !tbaa !331
  %i.qt = add i32 %.049.lcssa.i, 1                ; 2 uses
  %i.qu = icmp ult i32 %.046.lcssa.i, %.lcssa
  br i1 %i.qu, label %.lr.ph72.preheader.i, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit

.lr.ph72.preheader.i:                             ; preds = %bb.l
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 1 ; 2 uses
  %i.qw = zext i32 %.046.lcssa.i to i64           ; 5 uses
  %i.qx = zext i32 %.lcssa to i64                 ; 3 uses
  %i.qy = sub nsw i64 %i.qx, %i.qw
  %xtraiter = and i64 %i.qy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.i.prol.loopexit, label %.lr.ph72.i.prol

.lr.ph72.i.prol:                                  ; preds = %.lr.ph72.preheader.i
  %indvars.iv.next84.i.prol = add nuw nsw i64 %i.qw, 1
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qw
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !137 ; 4 uses
  %i.rb = lshr i32 %i.ra, 24
  %i.rc = trunc nuw i32 %i.rb to i8
  %i.rd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 2
  store i8 %i.rc, ptr %i.qv, align 1, !tbaa !331
  %i.re = lshr i32 %i.ra, 16
  %i.rf = trunc i32 %i.re to i8
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 3
  store i8 %i.rf, ptr %i.rd, align 1, !tbaa !331
  %i.rh = lshr i32 %i.ra, 8
  %i.ri = trunc i32 %i.rh to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 4
  store i8 %i.ri, ptr %i.rg, align 1, !tbaa !331
  %i.rk = trunc i32 %i.ra to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i67, i64 5
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !331
  %i.rm = add i32 %.049.lcssa.i, 5                ; 2 uses
  br label %.lr.ph72.i.prol.loopexit

.lr.ph72.i.prol.loopexit:                         ; preds = %.lr.ph72.i.prol, %.lr.ph72.preheader.i
  %.lcssa315.unr = phi i32 [ poison, %.lr.ph72.preheader.i ], [ %i.rm, %.lr.ph72.i.prol ]
  %indvars.iv83.i.unr = phi i64 [ %i.qw, %.lr.ph72.preheader.i ], [ %indvars.iv.next84.i.prol, %.lr.ph72.i.prol ]
  %.270.i.unr = phi ptr [ %i.qv, %.lr.ph72.preheader.i ], [ %i.rl, %.lr.ph72.i.prol ]
  %.25168.i.unr = phi i32 [ %i.qt, %.lr.ph72.preheader.i ], [ %i.rm, %.lr.ph72.i.prol ]
  %i.rn = add nsw i64 %i.qx, -1
  %i.ro = icmp eq i64 %i.rn, %i.qw
  br i1 %i.ro, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i.1, %.lr.ph72.i ], [ %indvars.iv83.i.unr, %.lr.ph72.i.prol.loopexit ] ; 3 uses
  %.270.i = phi ptr [ %i.sp, %.lr.ph72.i ], [ %.270.i.unr, %.lr.ph72.i.prol.loopexit ] ; 9 uses
  %.25168.i = phi i32 [ %i.sq, %.lr.ph72.i ], [ %.25168.i.unr, %.lr.ph72.i.prol.loopexit ]
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv83.i
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !137 ; 4 uses
  %i.rr = lshr i32 %i.rq, 24
  %i.rs = trunc nuw i32 %i.rr to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %.270.i, i64 1
  store i8 %i.rs, ptr %.270.i, align 1, !tbaa !331
  %i.ru = lshr i32 %i.rq, 16
  %i.rv = trunc i32 %i.ru to i8
  %i.rw = getelementptr inbounds nuw i8, ptr %.270.i, i64 2
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !331
  %i.rx = lshr i32 %i.rq, 8
  %i.ry = trunc i32 %i.rx to i8
  %i.rz = getelementptr inbounds nuw i8, ptr %.270.i, i64 3
  store i8 %i.ry, ptr %i.rw, align 1, !tbaa !331
  %i.sa = trunc i32 %i.rq to i8
  %i.sb = getelementptr inbounds nuw i8, ptr %.270.i, i64 4
  store i8 %i.sa, ptr %i.rz, align 1, !tbaa !331
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv83.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !137 ; 4 uses
  %i.sf = lshr i32 %i.se, 24
  %i.sg = trunc nuw i32 %i.sf to i8
  %i.sh = getelementptr inbounds nuw i8, ptr %.270.i, i64 5
  store i8 %i.sg, ptr %i.sb, align 1, !tbaa !331
  %i.si = lshr i32 %i.se, 16
  %i.sj = trunc i32 %i.si to i8
  %i.sk = getelementptr inbounds nuw i8, ptr %.270.i, i64 6
  store i8 %i.sj, ptr %i.sh, align 1, !tbaa !331
  %i.sl = lshr i32 %i.se, 8
  %i.sm = trunc i32 %i.sl to i8
  %i.sn = getelementptr inbounds nuw i8, ptr %.270.i, i64 7
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !331
  %i.so = trunc i32 %i.se to i8
  %i.sp = getelementptr inbounds nuw i8, ptr %.270.i, i64 8
  store i8 %i.so, ptr %i.sn, align 1, !tbaa !331
  %i.sq = add i32 %.25168.i, 8                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next84.i.1, %i.qx
  br i1 %exitcond.not.1, label %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, label %.lr.ph72.i, !llvm.loop !1120

_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit: ; preds = %.lr.ph72.i.prol.loopexit, %.lr.ph72.i, %.lr.ph77.i.prol.loopexit, %.lr.ph77.i, %middle.block279, %bb.l, %._crit_edge.i66, %bb.i, %._crit_edge.i56, %.loopexit307, %._crit_edge.i48, %bb.c, %.lr.ph23.preheader.i
  %.184 = phi i32 [ %.7, %middle.block279 ], [ %.3, %bb.c ], [ %.5.ph, %.loopexit307 ], [ %.3, %.lr.ph23.preheader.i ], [ %.5.ph, %._crit_edge.i48 ], [ %.7, %._crit_edge.i56 ], [ %.7, %bb.i ], [ %.lcssa, %._crit_edge.i66 ], [ %.lcssa, %bb.l ], [ %.7, %.lr.ph77.i.prol.loopexit ], [ %.7, %.lr.ph77.i ], [ %.lcssa, %.lr.ph72.i ], [ %.lcssa, %.lr.ph72.i.prol.loopexit ] ; 2 uses
  %.pn = phi i32 [ %i.ne, %middle.block279 ], [ %i.w, %bb.c ], [ %i.fv, %.loopexit307 ], [ %narrow.i, %.lr.ph23.preheader.i ], [ %.044.lcssa.i, %._crit_edge.i48 ], [ %.050.lcssa.i, %._crit_edge.i56 ], [ %i.mg, %bb.i ], [ %.049.lcssa.i, %._crit_edge.i66 ], [ %i.qt, %bb.l ], [ %i.ov, %.lr.ph77.i ], [ %.lcssa327.unr, %.lr.ph77.i.prol.loopexit ], [ %.lcssa315.unr, %.lr.ph72.i.prol.loopexit ], [ %i.sq, %.lr.ph72.i ]
  %.1 = add i32 %.pn, %.0126                      ; 2 uses
  %i.sr = icmp ult i32 %.184, %.sroa.6.8.extract.trunc
  br i1 %i.sr, label %bb.b, label %._crit_edge, !llvm.loop !1121

._crit_edge:                                      ; preds = %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %_ZN2OT11TupleValues26encode_value_run_as_zeroesERjPh10hb_array_tIKiE.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !421    ; 7 uses
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
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !880

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
  br i1 %.not49, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !423
  tail call void @hb_free(ptr noundef %i.m) #18
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !423  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !422  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !423
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1122
  br label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, !prof !118

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !421   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !423
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !421
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !332, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !808  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !577
  %.not36 = icmp ult i32 %i.g, %i.i
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !142

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !574
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !420  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %i.v = phi ptr [ %i.ae, %bb.f ], [ %i.p, %.critedge ]
  %i.w = phi i32 [ %i.ar, %bb.f ], [ %i.t, %.critedge ]
  %i.x = phi ptr [ %i.ap, %bb.f ], [ %i.r, %.critedge ]
  %i.y = phi i64 [ %i.ao, %bb.f ], [ %i.q, %.critedge ]
  %.050 = phi i32 [ %i.ak, %bb.f ], [ 0, %.critedge ] ; 2 uses
  %.03148 = phi i32 [ %i.an, %bb.f ], [ %i.n, %.critedge ] ; 3 uses
  %.03247 = phi i32 [ %spec.select, %bb.f ], [ -1, %.critedge ] ; 3 uses
  %i.z = lshr i32 %i.w, 2
  %i.aa = icmp eq i32 %i.z, %i.k
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !575
  %i.ac = load ptr, ptr %1, align 8, !tbaa !885
  %i.ad = tail call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
  br i1 %i.ad, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !420
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %..loopexit_crit_edge, label %bb.k

..loopexit_crit_edge:                             ; preds = %bb.e
  %.pre58 = load ptr, ptr %i.o, align 8, !tbaa !420
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = trunc i32 %i.ah to i1
  %i.aj = icmp ne i32 %.03247, -1
end_hunk_6
begin_hunk_7_@_ZN2OT17item_variations_t18compile_varidx_mapERK12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE:bb.a

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EEixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !403
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %indvars.iv350
  br label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EEixEi.exit

_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EEixEi.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.u, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !407  ; 5 uses
  %.not.i53 = icmp eq i32 %i.w, 0
  br i1 %.not.i53, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5qsortIPFiPKvS6_EEEvT_.exit

_ZN11hb_vector_tIPKS_IiLb0EELb0EE5qsortIPFiPKvS6_EEEvT_.exit: ; preds = %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EEixEi.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !411  ; 8 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !408
  call void @qsort(ptr noundef %i.aa, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i, i64 noundef range(i64 0, 4294967296) 8, ptr noundef nonnull @_ZN2OT17item_variations_t8_cmp_rowEPKvS2_) #18
  %i.ab = icmp slt i32 %i.y, 0
  %.not.i.i.i59.not = icmp eq i32 %i.y, 0         ; 3 uses
  %i.ac = zext i32 %i.y to i64                    ; 10 uses
  %min.iters.check616 = icmp ult i32 %i.y, 8
  %min.iters.check617 = icmp ult i32 %i.y, 32
  %i.ad = and i64 %i.ac, 24
  %n.vec619 = and i64 %i.ac, 2147483616           ; 4 uses
  %cmp.n719 = icmp eq i64 %n.vec619, %i.ac
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec721 = and i64 %i.ac, 2147483640           ; 3 uses
  %cmp.n749 = icmp eq i64 %n.vec721, %i.ac
  %min.iters.check = icmp ult i32 %i.y, 8
  %n.vec = and i64 %i.ac, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5qsortIPFiPKvS6_EEEvT_.exit, %bb.aq
  %indvars.iv502 = phi i32 [ %i.w, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5qsortIPFiPKvS6_EEEvT_.exit ], [ %indvars.iv.next503, %bb.aq ] ; 2 uses
  %.037312 = phi i32 [ 0, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5qsortIPFiPKvS6_EEEvT_.exit ], [ %i.mw, %bb.aq ] ; 3 uses
  %i.ae = call i32 @llvm.umax.i32(i32 %indvars.iv502, i32 1)
  %i.af = call i32 @llvm.umin.i32(i32 %i.ae, i32 65535)
  %umax = zext nneg i32 %i.af to i64
  %i.ag = sub nuw i32 %i.w, %.037312
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.ag, i32 65535)
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.043.i = phi i32 [ %i.aj, %.preheader.i ], [ 0, %bb.e ] ; 2 uses
  %i.ah = lshr i32 %.043.i, 1
  %i.ai = add nuw nsw i32 %.043.i, 8
  %i.aj = add nuw nsw i32 %i.ai, %i.ah            ; 4 uses
  %i.ak = icmp samesign ugt i32 %.sroa.speculated, %i.aj
  br i1 %i.ak, label %.preheader.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, !llvm.loop !591

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i
  %i.al = shl nuw nsw i32 %i.aj, 3
  %i.am = zext nneg i32 %i.al to i64
  %i.an = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.am) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.an, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259, label %.lr.ph, !prof !118

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %i.ao = load i32, ptr %i.k, align 4, !tbaa !402
  %i.ap = shl i32 %i.ao, 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.sroa.0175.0308 = phi i32 [ %i.aj, %.lr.ph ], [ %.sroa.0175.5, %bb.y ] ; 10 uses
  %.sroa.21.0307 = phi ptr [ %i.an, %.lr.ph ], [ %.sroa.21.6, %bb.y ] ; 5 uses
  %.sroa.13182.0305 = phi i32 [ 0, %.lr.ph ], [ %.sroa.13182.2, %bb.y ] ; 6 uses
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !1138
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.as = add i32 %.037312, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !583 ; 4 uses
  %.not.i56 = icmp slt i32 %.sroa.13182.0305, %.sroa.0175.0308
  %.pre363 = add i32 %.sroa.13182.0305, 1         ; 3 uses
  br i1 %.not.i56, label %.critedge.i58, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp slt i32 %.sroa.0175.0308, 0
  br i1 %i.aw, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %.not.i92 = icmp ugt i32 %.pre363, %.sroa.0175.0308
  br i1 %.not.i92, label %.preheader.i94, label %.critedge.i58, !prof !21

.preheader.i94:                                   ; preds = %bb.h, %.preheader.i94
  %.043.i95 = phi i32 [ %i.az, %.preheader.i94 ], [ %.sroa.0175.0308, %bb.h ] ; 2 uses
  %i.ax = lshr i32 %.043.i95, 1
  %i.ay = add i32 %.043.i95, 8
  %i.az = add i32 %i.ay, %i.ax                    ; 7 uses
  %i.ba = icmp ugt i32 %.pre363, %i.az
  br i1 %i.ba, label %.preheader.i94, label %.thread.i96, !llvm.loop !591

.thread.i96:                                      ; preds = %.preheader.i94
  %i.bb = icmp ugt i32 %i.az, 536870911
  br i1 %i.bb, label %.critedge.i111, label %bb.i, !prof !21

.critedge.i111:                                   ; preds = %.thread.i96
  %i.bc = xor i32 %.sroa.0175.0308, -1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112

bb.i:                                             ; preds = %.thread.i96
  %.not49.i98 = icmp eq i32 %.sroa.0175.0308, 0
  %i.bd = shl nuw i32 %i.az, 3
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  br i1 %.not49.i98, label %bb.j, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i99

bb.j:                                             ; preds = %bb.i
  %i.bf = call ptr @hb_malloc(i64 noundef %i.be) #18 ; 4 uses
  %.not10.i.i.i109 = icmp eq ptr %i.bf, null
  br i1 %.not10.i.i.i109, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i106, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i110 = icmp eq i32 %.sroa.13182.0305, 0
  br i1 %.not.i.i.i.i110, label %.critedge.i58, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.bg = zext i32 %.sroa.13182.0305 to i64
  %i.bh = shl nuw nsw i64 %i.bg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull readonly align 1 %.sroa.21.0307, i64 %i.bh, i1 false), !alias.scope !1139
  br label %.critedge.i58

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i99: ; preds = %bb.i
  %i.bi = call ptr @hb_realloc(ptr noundef %.sroa.21.0307, i64 noundef %i.be) #18 ; 2 uses
  %.not22.i100 = icmp eq ptr %i.bi, null
  br i1 %.not22.i100, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i106, label %.critedge.i58, !prof !118

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i106: ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i99, %bb.j
  %i.bj = xor i32 %.sroa.0175.0308, -1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112

_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112: ; preds = %bb.g, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i106, %.critedge.i111
  %.sroa.0175.6 = phi i32 [ %.sroa.0175.0308, %bb.g ], [ %i.bj, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i106 ], [ %i.bc, %.critedge.i111 ]
  store i64 %i.l, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

.critedge.i58:                                    ; preds = %bb.f, %bb.k, %bb.l, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i99, %bb.h
  %.sroa.21.5 = phi ptr [ %.sroa.21.0307, %bb.h ], [ %i.bf, %bb.k ], [ %i.bf, %bb.l ], [ %i.bi, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i99 ], [ %.sroa.21.0307, %bb.f ] ; 2 uses
  %.sroa.0175.4 = phi i32 [ %.sroa.0175.0308, %bb.h ], [ %i.az, %bb.k ], [ %i.az, %bb.l ], [ %i.az, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i99 ], [ %.sroa.0175.0308, %bb.f ]
  %i.bk = zext i32 %.sroa.13182.0305 to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.21.5, i64 %i.bk
  store ptr %i.av, ptr %i.bl, align 8, !tbaa !583
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJRS2_EEEPS2_DpOT_.exit

_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJRS2_EEEPS2_DpOT_.exit: ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112, %.critedge.i58
  %.sroa.13182.2 = phi i32 [ %.pre363, %.critedge.i58 ], [ %.sroa.13182.0305, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112 ] ; 4 uses
  %.sroa.21.6 = phi ptr [ %.sroa.21.5, %.critedge.i58 ], [ %.sroa.21.0307, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112 ] ; 6 uses
  %.sroa.0175.5 = phi i32 [ %.sroa.0175.4, %.critedge.i58 ], [ %.sroa.0175.6, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit112 ] ; 4 uses
  %i.bm = getelementptr i8, ptr %i.av, i64 4      ; 2 uses
  %.val.val.i = load i32, ptr %i.bm, align 4, !tbaa !199 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.av, i64 8      ; 2 uses
  %.val.val4.i = load ptr, ptr %i.bn, align 8, !tbaa !418 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.val.val.i, 0
  br i1 %.not11.i.i.i.i.i, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.val.i to i64
  %i.bo = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4611686018427387903
  %i.bp = and i64 %i.bo, 4611686018427387903      ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %xtraiter = and i64 %i.bq, 3                    ; 3 uses
  %i.br = icmp samesign ult i64 %i.bp, 3
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bq, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.cg, %.lr.ph.i.i.i.i.i ]
  %.01012.i.i.i.i.i = phi ptr [ %.val.val4.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.ch, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i ]
  %.010.val.i.i.i.i.i = load i32, ptr %.01012.i.i.i.i.i, align 4, !tbaa !137
  %i.bs = mul i32 %.010.val.i.i.i.i.i, -1640531535
  %i.bt = xor i32 %i.bs, %.013.i.i.i.i.i
  %i.bu = mul i32 %i.bt, 16777619
  %i.bv = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 4
  %.010.val.i.i.i.i.i.1 = load i32, ptr %i.bv, align 4, !tbaa !137
  %i.bw = mul i32 %.010.val.i.i.i.i.i.1, -1640531535
  %i.bx = xor i32 %i.bw, %i.bu
  %i.by = mul i32 %i.bx, 16777619
  %i.bz = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 8
  %.010.val.i.i.i.i.i.2 = load i32, ptr %i.bz, align 4, !tbaa !137
  %i.ca = mul i32 %.010.val.i.i.i.i.i.2, -1640531535
  %i.cb = xor i32 %i.ca, %i.by
  %i.cc = mul i32 %i.cb, 16777619
  %i.cd = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 12
  %.010.val.i.i.i.i.i.3 = load i32, ptr %i.cd, align 4, !tbaa !137
  %i.ce = mul i32 %.010.val.i.i.i.i.i.3, -1640531535
  %i.cf = xor i32 %i.ce, %i.cc
  %i.cg = mul i32 %i.cf, 16777619                 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 16 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cg, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %.01012.i.i.i.i.i.epil.init = phi ptr [ %.val.val4.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod794 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod794)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.epil = phi i32 [ %i.ck, %.lr.ph.i.i.i.i.i.epil ], [ %.013.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.01012.i.i.i.i.i.epil = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.epil ], [ %.01012.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.010.val.i.i.i.i.i.epil = load i32, ptr %.01012.i.i.i.i.i.epil, align 4, !tbaa !137
  %i.ci = mul i32 %.010.val.i.i.i.i.i.epil, -1640531535
  %i.cj = xor i32 %i.ci, %.013.i.i.i.i.i.epil
  %i.ck = mul i32 %i.cj, 16777619                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !1143

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.epil, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit.unr-lcssa
  %.lcssa770 = phi i32 [ %i.cg, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit.unr-lcssa ], [ %i.ck, %.lr.ph.i.i.i.i.i.epil ]
  %i.cm = and i32 %.lcssa770, 1073741823
  br label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit: ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJRS2_EEEPS2_DpOT_.exit
  %.0.lcssa.i.i.i.i.i = phi i32 [ 69346085, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJRS2_EEEPS2_DpOT_.exit ], [ %i.cm, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit.loopexit ] ; 3 uses
  %i.cn = load i8, ptr %i.e, align 8, !tbaa !562, !range !132, !noundef !198
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.m, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit, !prof !142

bb.m:                                             ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit
  %i.cp = load i32, ptr %i.m, align 8, !tbaa !1144 ; 2 uses
  %i.cq = lshr i32 %i.cp, 1
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = load i32, ptr %i.n, align 4, !tbaa !1145
  %.not36.i = icmp ult i32 %i.cr, %i.cs
  br i1 %.not36.i, label %.critedge.i113, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = load i32, ptr %i.o, align 4, !tbaa !1146
  %i.cu = shl i32 %i.ct, 1                        ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.cu, i32 4)
  %i.cv = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated.i, i1 true) ; 2 uses
  %narrow.i.i = sub nuw nsw i32 32, %i.cv         ; 4 uses
  %i.cw = shl nuw i32 1, %narrow.i.i              ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 4
  %i.cz = call noundef ptr @hb_malloc(i64 noundef %i.cy) #18, !inline_history !1147 ; 3 uses
  %.not29.not.i = icmp eq ptr %i.cz, null
  br i1 %.not29.not.i, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj.exit, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %.not.i31.i = icmp ugt i32 %i.cu, 134217727
  br i1 %.not.i31.i, label %_ZL9hb_memsetPvij.exit.i, label %bb.p, !prof !21

bb.p:                                             ; preds = %bb.o
  %i.da = shl i32 16, %narrow.i.i
  %i.db = zext i32 %i.da to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cz, i8 0, i64 %i.db, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i

_ZL9hb_memsetPvij.exit.i:                         ; preds = %bb.p, %bb.o
  %i.dc = load i32, ptr %i.n, align 4, !tbaa !1145 ; 2 uses
  %.not.i32.i = icmp eq i32 %i.dc, 0
  %i.dd = add i32 %i.dc, 1
  %spec.select.i.i = select i1 %.not.i32.i, i32 0, i32 %i.dd ; 2 uses
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !565 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !1144
  store i32 0, ptr %i.o, align 4, !tbaa !1146
  %i.df = add i32 %i.cw, -1
  store i32 %i.df, ptr %i.n, align 4, !tbaa !1145
  %i.dg = icmp eq i32 %i.cv, 0
  br i1 %i.dg, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE9prime_forEj.exit.i, label %bb.q, !prof !21

bb.q:                                             ; preds = %_ZL9hb_memsetPvij.exit.i
  %i.dh = zext nneg i32 %narrow.i.i to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE9prime_forEj.prime_mod, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !137
  br label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE9prime_forEj.exit.i

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE9prime_forEj.exit.i: ; preds = %bb.q, %_ZL9hb_memsetPvij.exit.i
  %.0.i.i = phi i32 [ %i.dj, %bb.q ], [ 2147483647, %_ZL9hb_memsetPvij.exit.i ]
  store i32 %.0.i.i, ptr %i.p, align 8, !tbaa !585
  %.tr.i = trunc nuw nsw i32 %narrow.i.i to i16
  %i.dk = shl nuw nsw i16 %.tr.i, 1
  store i16 %i.dk, ptr %i.f, align 2, !tbaa !1148
  store ptr %i.cz, ptr %i.g, align 8, !tbaa !565
  %.not43.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not43.i, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE9prime_forEj.exit.i
  %wide.trip.count.i = zext i32 %spec.select.i.i to i64
  br label %.lr.ph.i124

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj.exit.thread: ; preds = %bb.s, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE9prime_forEj.exit.i
  call void @hb_free(ptr noundef %i.de) #18, !inline_history !1147
  br label %.critedge.i113

.lr.ph.i124:                                      ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i125 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i126, %bb.s ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.i125 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8            ; 2 uses
  %i.do = trunc i32 %i.dn to i1
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i124
  %i.dp = lshr i32 %i.dn, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dr = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIS3_jEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i32 noundef %i.dp, ptr noundef nonnull align 4 dereferenceable(4) %i.dq, i1 noundef zeroext true) #19, !inline_history !1147 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i124
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i125, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i126, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj.exit.thread, label %.lr.ph.i124, !llvm.loop !1149

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj.exit: ; preds = %bb.n
  store i8 0, ptr %i.e, align 8, !tbaa !562
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit

.critedge.i113:                                   ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj.exit.thread, %bb.m
  %i.ds = load i32, ptr %i.p, align 8, !tbaa !585
  %i.dt = urem i32 %.0.lcssa.i.i.i.i.i, %i.ds     ; 2 uses
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !565 ; 3 uses
  %i.dv = zext nneg i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8            ; 2 uses
  %i.dz = and i32 %i.dy, 2
  %.not56.i = icmp eq i32 %i.dz, 0
  br i1 %.not56.i, label %.loopexit40.thread.i.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge.i113
  %i.ea = load i32, ptr %i.n, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i
  %i.eb = phi i32 [ %i.ez, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ], [ %i.dy, %.lr.ph.i.preheader ] ; 2 uses
  %i.ec = phi ptr [ %i.ex, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ], [ %i.dw, %.lr.ph.i.preheader ]
  %.060.i = phi i32 [ %i.et, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.03158.i = phi i32 [ %i.ev, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ], [ %i.dt, %.lr.ph.i.preheader ] ; 4 uses
  %.03257.i = phi i32 [ %spec.select.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ], [ -1, %.lr.ph.i.preheader ] ; 4 uses
  %i.ed = lshr i32 %i.eb, 2
  %i.ee = icmp eq i32 %i.ed, %.0.lcssa.i.i.i.i.i
  br i1 %i.ee, label %bb.t, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !586 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !418
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !199 ; 2 uses
  %i.ek = load ptr, ptr %i.bn, align 8, !tbaa !418
  %i.el = load i32, ptr %i.bm, align 4, !tbaa !199 ; 2 uses
  %.sroa.2.8.insert.ext.i.i3.i.i.i = zext i32 %i.el to i64
  %.not.i.i.i.i115 = icmp eq i32 %i.el, %i.ej
  br i1 %.not.i.i.i.i115, label %.preheader.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i

.preheader.i.i.i.i:                               ; preds = %bb.t
  %i.em = icmp eq i32 %i.ej, 0
  br i1 %i.em, label %.loopexit40.thread.i, label %.lr.ph.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %.sroa.2.8.insert.ext.i.i3.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit40.thread.i, label %.lr.ph.i.i.i.i, !llvm.loop !588

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.u
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.u ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i.i.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !137
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !137
  %.not10.i.i.i.i = icmp eq i32 %i.eo, %i.eq
  br i1 %.not10.i.i.i.i, label %bb.u, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.t, %.lr.ph.i
  %i.er = trunc i32 %i.eb to i1
  %i.es = icmp ne i32 %.03257.i, -1
  %or.cond.not.i = select i1 %i.er, i1 true, i1 %i.es
  %spec.select.i = select i1 %or.cond.not.i, i32 %.03257.i, i32 %.03158.i ; 2 uses
  %i.et = add i32 %.060.i, 1                      ; 3 uses
  %i.eu = add i32 %i.et, %.03158.i
  %i.ev = and i32 %i.eu, %i.ea                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8            ; 2 uses
  %i.fa = and i32 %i.ez, 2
  %.not.i114 = icmp eq i32 %i.fa, 0
  br i1 %.not.i114, label %.loopexit40.thread.i, label %.lr.ph.i, !llvm.loop !1150
end_hunk_7
begin_hunk_8_@_ZN2OT17item_variations_t18compile_varidx_mapERK12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE:bb.a
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread: ; preds = %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.i, %bb.am, %bb.ak, %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit
  %i.mi = load ptr, ptr %i.q, align 8, !tbaa !403
  %i.mj = load i32, ptr %i.k, align 4, !tbaa !402 ; 2 uses
  %i.mk = add i32 %i.mj, 1
  store i32 %i.mk, ptr %i.k, align 4, !tbaa !402
  %i.ml = zext i32 %i.mj to i64
  %i.mm = getelementptr inbounds nuw [40 x i8], ptr %i.mi, i64 %i.ml ; 7 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i32 %.sroa.0144.1, ptr %i.mm, align 8, !tbaa !409
  store i32 %.sroa.10147.0, ptr %i.mn, align 4, !tbaa !411
  store ptr %.sroa.16151.1, ptr %i.mo, align 8, !tbaa !412
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i64 %.sroa.24.sroa.5.0, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 28
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  store i32 %.sroa.0175.5, ptr %i.mq, align 8, !tbaa !404
  store i32 %.sroa.13182.2, ptr %i.mr, align 4, !tbaa !407
  store ptr %.sroa.21.6, ptr %i.ms, align 8, !tbaa !408
  br label %bb.aq

_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit: ; preds = %bb.aj, %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE5allocEjb.exit.thread8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  %i.mt = add i32 %.sroa.0175.5, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.mt, -2
  br i1 %spec.select.i.i.i.i, label %bb.an, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

bb.an:                                            ; preds = %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  call void @hb_free(ptr noundef %.sroa.21.6) #18
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i:     ; preds = %bb.an, %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit
  %i.mu = add i32 %.sroa.0144.1, -1
  %spec.select.i.i.i1.i = icmp ult i32 %i.mu, -2
  br i1 %spec.select.i.i.i1.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i
  call void @hb_free(ptr noundef %.sroa.16151.1) #18
  br label %bb.aq

_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit:  ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIjEEbRKS3_OT_b.exit, %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj.exit
  %i.mv = add i32 %.sroa.0175.5, -1
  %spec.select.i.i.i = icmp ult i32 %i.mv, -2
  br i1 %spec.select.i.i.i, label %bb.ap, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259

bb.ap:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit
  call void @hb_free(ptr noundef %.sroa.21.6) #18
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259

bb.aq:                                            ; preds = %bb.ao, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i, %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.thread
  %i.mw = add i32 %.037312, 65535                 ; 2 uses
  %i.mx = icmp ult i32 %i.mw, %i.w
  %indvars.iv.next503 = add i32 %indvars.iv502, -65535
  br i1 %i.mx, label %bb.e, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit, !llvm.loop !1158

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit:       ; preds = %bb.aq
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.my = load i32, ptr %i.h, align 4, !tbaa !1137 ; 3 uses
  %i.mz = zext i32 %i.my to i64
  %i.na = icmp samesign ult i64 %indvars.iv.next351, %i.mz
  br i1 %i.na, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !1159

._crit_edge.loopexit:                             ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit
  %i.nb = load <2 x i32>, ptr %3, align 8, !tbaa !137
  %.pre359 = load ptr, ptr %i.q, align 8, !tbaa !609
  %.pre360 = load i8, ptr %i.e, align 8, !range !132
  %i.nc = trunc nuw i8 %.pre360 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.nd = phi i1 [ %i.nc, %._crit_edge.loopexit ], [ true, %bb.a ]
  %i.ne = phi ptr [ %.pre359, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.nf = phi i32 [ %i.my, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ng = phi <2 x i32> [ %i.nb, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !137
  store i32 %i.ni, ptr %3, align 8, !tbaa !137
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x i32> %i.ng, ptr %i.nh, align 8, !tbaa !137
  store i32 %i.nf, ptr %i.nj, align 4, !tbaa !137
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nm = load ptr, ptr %i.nk, align 8, !tbaa !609
  store ptr %i.ne, ptr %i.nk, align 8, !tbaa !609
  store ptr %i.nm, ptr %i.nl, align 8, !tbaa !609
  %i.nn = extractelement <2 x i32> %i.ng, i64 0
  %i.no = icmp sgt i32 %i.nn, -1
  %or.cond.not = select i1 %i.no, i1 %i.nd, i1 false
  br i1 %or.cond.not, label %bb.ar, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259

bb.ar:                                            ; preds = %._crit_edge
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val = load i32, ptr %i.np, align 4, !tbaa !1160
  %i.nq = add i32 %.val, 1                        ; 2 uses
  %.not15.i.i.i.i.i = icmp ult i32 %i.nq, 2
  br i1 %.not15.i.i.i.i.i, label %._crit_edge320, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i.preheader

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i.preheader: ; preds = %bb.ar
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val48 = load ptr, ptr %i.nr, align 8, !tbaa !561
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i.preheader, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.us.i.i.i.i
  %.sroa.5.sroa.0.0.i = phi i32 [ %i.nv, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.us.i.i.i.i ], [ %i.nq, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 3 uses
  %.sroa.02.0.i = phi ptr [ %i.nw, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.us.i.i.i.i ], [ %.val48, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4
  %i.nt = load i32, ptr %i.ns, align 4, !noalias !1161
  %i.nu = trunc i32 %i.nt to i1
  br i1 %i.nu, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_E3endEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.us.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i
  %i.nv = add i32 %.sroa.5.sroa.0.0.i, -1         ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  %i.nx = icmp eq i32 %i.nv, 0
  br i1 %i.nx, label %._crit_edge320, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i, !llvm.loop !1170

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_E3endEv.exit": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EdeEv.exit.i.us.i.i.i.i
  %i.ny = zext i32 %.sroa.5.sroa.0.0.i to i64
  %i.nz = shl nuw nsw i64 %i.ny, 4
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.as

._crit_edge320:                                   ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.us.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit", %bb.ar
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.of = load i8, ptr %i.oe, align 8, !tbaa !325, !range !132, !noundef !198
  %i.og = trunc nuw i8 %i.of to i1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259

bb.as:                                            ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_E3endEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit"
  %.sroa.0130.0318 = phi ptr [ %.sroa.02.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_E3endEv.exit" ], [ %.sroa.0130.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit" ] ; 4 uses
  %.sroa.7131.0317 = phi i32 [ %.sroa.5.sroa.0.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_E3endEv.exit" ], [ %.sroa.7131.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit" ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.7131.0317, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.at, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EdeEv.exit", !prof !21

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EdeEv.exit": ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.at ], [ %.sroa.0130.0318, %bb.as ] ; 2 uses
  %i.oh = load i32, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !1171 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !1173 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 %i.oh, ptr %i.a, align 4, !tbaa !137
  %i.ok = load ptr, ptr %i.g, align 8, !tbaa !565 ; 3 uses
  %.not.i67 = icmp eq ptr %i.ok, null
  br i1 %.not.i67, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EdeEv.exit"
  %i.ol = getelementptr i8, ptr %i.oj, i64 4
  %.val.val.i69 = load i32, ptr %i.ol, align 4, !tbaa !199 ; 3 uses
  %i.om = getelementptr i8, ptr %i.oj, i64 8
  %.val.val5.i = load ptr, ptr %i.om, align 8, !tbaa !418 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i70 = zext i32 %.val.val.i69 to i64 ; 2 uses
  %.not11.i.i.i.i.i72 = icmp eq i32 %.val.val.i69, 0 ; 2 uses
  br i1 %.not11.i.i.i.i.i72, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %bb.au
  %i.on = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i70, 4611686018427387903
  %i.oo = and i64 %i.on, 4611686018427387903      ; 2 uses
  %i.op = add nuw nsw i64 %i.oo, 1                ; 2 uses
  %xtraiter795 = and i64 %i.op, 3                 ; 3 uses
  %i.oq = icmp samesign ult i64 %i.oo, 3
  br i1 %i.oq, label %.lr.ph.i.i.i.i.i73.epil.preheader, label %.lr.ph.i.i.i.i.i73.preheader.new

.lr.ph.i.i.i.i.i73.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %unroll_iter800 = and i64 %i.op, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73, %.lr.ph.i.i.i.i.i73.preheader.new
  %.013.i.i.i.i.i74 = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i73.preheader.new ], [ %i.pf, %.lr.ph.i.i.i.i.i73 ]
  %.01012.i.i.i.i.i75 = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i73.preheader.new ], [ %i.pg, %.lr.ph.i.i.i.i.i73 ] ; 5 uses
  %niter801 = phi i64 [ 0, %.lr.ph.i.i.i.i.i73.preheader.new ], [ %niter801.next.3, %.lr.ph.i.i.i.i.i73 ]
  %.010.val.i.i.i.i.i76 = load i32, ptr %.01012.i.i.i.i.i75, align 4, !tbaa !137
  %i.or = mul i32 %.010.val.i.i.i.i.i76, -1640531535
  %i.os = xor i32 %i.or, %.013.i.i.i.i.i74
  %i.ot = mul i32 %i.os, 16777619
  %i.ou = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i75, i64 4
  %.010.val.i.i.i.i.i76.1 = load i32, ptr %i.ou, align 4, !tbaa !137
  %i.ov = mul i32 %.010.val.i.i.i.i.i76.1, -1640531535
  %i.ow = xor i32 %i.ov, %i.ot
  %i.ox = mul i32 %i.ow, 16777619
  %i.oy = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i75, i64 8
  %.010.val.i.i.i.i.i76.2 = load i32, ptr %i.oy, align 4, !tbaa !137
  %i.oz = mul i32 %.010.val.i.i.i.i.i76.2, -1640531535
  %i.pa = xor i32 %i.oz, %i.ox
  %i.pb = mul i32 %i.pa, 16777619
  %i.pc = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i75, i64 12
  %.010.val.i.i.i.i.i76.3 = load i32, ptr %i.pc, align 4, !tbaa !137
  %i.pd = mul i32 %.010.val.i.i.i.i.i76.3, -1640531535
  %i.pe = xor i32 %i.pd, %i.pb
  %i.pf = mul i32 %i.pe, 16777619                 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i75, i64 16 ; 2 uses
  %niter801.next.3 = add nuw i64 %niter801, 4     ; 2 uses
  %niter801.ncmp.3 = icmp eq i64 %niter801.next.3, %unroll_iter800
  br i1 %niter801.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", label %.lr.ph.i.i.i.i.i73

"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i73
  %lcmp.mod797.not = icmp eq i64 %xtraiter795, 0
  br i1 %lcmp.mod797.not, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i73.epil.preheader

.lr.ph.i.i.i.i.i73.epil.preheader:                ; preds = %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", %.lr.ph.i.i.i.i.i73.preheader
  %.013.i.i.i.i.i74.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.pf, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %.01012.i.i.i.i.i75.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.pg, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod799 = icmp ne i64 %xtraiter795, 0
  call void @llvm.assume(i1 %lcmp.mod799)
  br label %.lr.ph.i.i.i.i.i73.epil

.lr.ph.i.i.i.i.i73.epil:                          ; preds = %.lr.ph.i.i.i.i.i73.epil, %.lr.ph.i.i.i.i.i73.epil.preheader
  %.013.i.i.i.i.i74.epil = phi i32 [ %i.pj, %.lr.ph.i.i.i.i.i73.epil ], [ %.013.i.i.i.i.i74.epil.init, %.lr.ph.i.i.i.i.i73.epil.preheader ]
  %.01012.i.i.i.i.i75.epil = phi ptr [ %i.pk, %.lr.ph.i.i.i.i.i73.epil ], [ %.01012.i.i.i.i.i75.epil.init, %.lr.ph.i.i.i.i.i73.epil.preheader ] ; 2 uses
  %epil.iter796 = phi i64 [ %epil.iter796.next, %.lr.ph.i.i.i.i.i73.epil ], [ 0, %.lr.ph.i.i.i.i.i73.epil.preheader ]
  %.010.val.i.i.i.i.i76.epil = load i32, ptr %.01012.i.i.i.i.i75.epil, align 4, !tbaa !137
  %i.ph = mul i32 %.010.val.i.i.i.i.i76.epil, -1640531535
  %i.pi = xor i32 %i.ph, %.013.i.i.i.i.i74.epil
  %i.pj = mul i32 %i.pi, 16777619                 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i75.epil, i64 4
  %epil.iter796.next = add i64 %epil.iter796, 1   ; 2 uses
  %epil.iter796.cmp.not = icmp eq i64 %epil.iter796.next, %xtraiter795
  br i1 %epil.iter796.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i73.epil, !llvm.loop !1174

"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i73.epil, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa"
  %.lcssa = phi i32 [ %i.pf, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ], [ %i.pj, %.lr.ph.i.i.i.i.i73.epil ]
  %i.pl = and i32 %.lcssa, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"

"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", %bb.au
  %.0.lcssa.i.i.i.i.i78 = phi i32 [ 69346085, %bb.au ], [ %i.pl, %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i" ] ; 2 uses
  %i.pm = load i32, ptr %i.ob, align 8, !tbaa !585
  %i.pn = urem i32 %.0.lcssa.i.i.i.i.i78, %i.pm   ; 2 uses
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %i.po ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load i32, ptr %i.pq, align 8            ; 2 uses
  %i.ps = and i32 %i.pr, 2
  %.not22.i.i.i79 = icmp eq i32 %i.ps, 0
  br i1 %.not22.i.i.i79, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"
  %i.pt = load i32, ptr %i.oc, align 4
  br label %bb.av

bb.av:                                            ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i, %.lr.ph.i.i.i
  %i.pu = phi i32 [ %i.pr, %.lr.ph.i.i.i ], [ %i.qn, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ] ; 2 uses
  %i.pv = phi ptr [ %i.pp, %.lr.ph.i.i.i ], [ %i.ql, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ] ; 2 uses
  %.024.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.qh, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %.01223.i.i.i = phi i32 [ %i.pn, %.lr.ph.i.i.i ], [ %i.qj, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %i.pw = lshr i32 %i.pu, 2
  %i.px = icmp eq i32 %i.pw, %.0.lcssa.i.i.i.i.i78
  br i1 %i.px, label %bb.aw, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.py = load ptr, ptr %i.pv, align 8, !tbaa !586 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !418
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !199
  %.not.i.i.i.i.i.i82 = icmp eq i32 %.val.val.i69, %i.qc
  br i1 %.not.i.i.i.i.i.i82, label %.preheader.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.aw
  br i1 %.not11.i.i.i.i.i72, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i70
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !588

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.ax
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.ax ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.i.i.i.i.i.i
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !137
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !137
  %.not10.i.i.i.i.i.i = icmp eq i32 %i.qe, %i.qg
  br i1 %.not10.i.i.i.i.i.i, label %bb.ax, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aw, %bb.av
  %i.qh = add i32 %.024.i.i.i, 1                  ; 2 uses
  %i.qi = add i32 %i.qh, %.01223.i.i.i
  %i.qj = and i32 %i.qi, %i.pt                    ; 2 uses
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load i32, ptr %i.qm, align 8            ; 2 uses
  %i.qo = and i32 %i.qn, 2
  %.not.i.i.i80 = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i.i80, label %.loopexit, label %bb.av, !llvm.loop !589

_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.ax
  %i.qp = trunc i32 %i.pu to i1
  br i1 %i.qp, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  %i.qr = mul i32 %i.oh, -1640531535
  %i.qs = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.od, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.qr, ptr noundef nonnull align 4 dereferenceable(4) %i.qq, i1 noundef zeroext true) ; 0 uses
  br label %bb.az

.loopexit:                                        ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EdeEv.exit", %"_ZNK3$_4clIPK11hb_vector_tIiLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 -1, ptr %i.b, align 4, !tbaa !137
  %i.qt = mul i32 %i.oh, -1640531535
  %i.qu = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.od, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.qt, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.qv = zext i32 %.sroa.7131.0317 to i64
  %i.qw = shl nuw nsw i64 %i.qv, 4
  %scevgep = getelementptr i8, ptr %.sroa.0130.0318, i64 %i.qw
  %scevgep504 = getelementptr i8, ptr %.sroa.0130.0318, i64 16
  %i.qx = add i32 %.sroa.7131.0317, -1
  %i.qy = zext i32 %i.qx to i64
  %i.qz = shl nuw nsw i64 %i.qy, 4
  %scevgep505 = getelementptr i8, ptr %scevgep504, i64 %i.qz
  %.not.i.i.i.i.i.i85601 = icmp eq i32 %.sroa.7131.0317, 0
  br i1 %.not.i.i.i.i.i.i85601, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.i.i.i, !prof !796

bb.ba:                                            ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.i.i.i, !llvm.loop !1175

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.i.i.i: ; preds = %bb.az, %bb.ba
  %.sroa.0130.1603 = phi ptr [ %i.rb, %bb.ba ], [ %.sroa.0130.0318, %bb.az ] ; 2 uses
  %.sroa.7131.1602 = phi i32 [ %i.ra, %bb.ba ], [ %.sroa.7131.0317, %bb.az ]
  %i.ra = add i32 %.sroa.7131.1602, -1            ; 3 uses
  %.not.i.i.i.i86 = icmp eq i32 %i.ra, 0
  br i1 %.not.i.i.i.i86, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit", label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.0130.1603, i64 16 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0130.1603, i64 20
  %i.rd = load i32, ptr %i.rc, align 4
  %i.re = trunc i32 %i.rd to i1
  br i1 %i.re, label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit_crit_edge", label %bb.ba, !llvm.loop !1175

"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit", !llvm.loop !1175

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit_crit_edge", %bb.az
  %.sroa.7131.2 = phi i32 [ 0, %bb.az ], [ %i.ra, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.0130.2 = phi ptr [ %scevgep, %bb.az ], [ %i.rb, %"_ZNK4$_23clIRMN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEKFbvERS7_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEEMS9_KFbvERK4$_19LPv0EEMS9_KF9hb_pair_tIjS7_EvEL24hb_function_sortedness_t0ELSG_0EESJ_EppEv.exit_crit_edge" ], [ %scevgep505, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tEERS7_EppEv.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i66 = icmp ne ptr %.sroa.0130.2, %i.oa
  %i.rf = icmp ne i32 %.sroa.7131.2, 0
  %i.rg = or i1 %i.rf, %.not.i.i.i66
  br i1 %i.rg, label %bb.as, label %._crit_edge320

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259: ; preds = %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EEixEi.exit, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.ap, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit, %._crit_edge, %._crit_edge320
  %.9 = phi i1 [ false, %._crit_edge ], [ %i.og, %._crit_edge320 ], [ false, %bb.ap ], [ false, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ false, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit ], [ false, %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EEixEi.exit ]
  %i.rh = load i32, ptr %3, align 8, !tbaa !401
  %i.ri = add i32 %i.rh, -1
  %spec.select.i.i.i87 = icmp ult i32 %i.ri, -2
  br i1 %spec.select.i.i.i87, label %bb.bb, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EED2Ev.exit

bb.bb:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.thread259
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !402 ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.rk, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN2OT20delta_row_encoding_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bb
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !403
  %i.rn = zext i32 %i.rk to i64
  %i.ro = getelementptr inbounds nuw [40 x i8], ptr %i.rm, i64 %i.rn
  br label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZN2OT20delta_row_encoding_tD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.rq, %_ZN2OT20delta_row_encoding_tD2Ev.exit.i.i.i ], [ %i.ro, %.lr.ph.preheader.i.i.i ] ; 6 uses
  %.046.i.i.i = phi i32 [ %i.rp, %_ZN2OT20delta_row_encoding_tD2Ev.exit.i.i.i ], [ %i.rk, %.lr.ph.preheader.i.i.i ]
  %i.rp = add i32 %.046.i.i.i, -1                 ; 2 uses
  %i.rq = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -40 ; 2 uses
  %i.rr = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !404
  %i.rt = add i32 %i.rs, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.rt, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.bc, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i88
  %i.ru = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.ru, align 4, !tbaa !407
  %i.rv = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !408
  call void @hb_free(ptr noundef %i.rw) #18
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i88
  %i.rx = load i32, ptr %i.rq, align 8, !tbaa !409
  %i.ry = add i32 %i.rx, -1
  %spec.select.i.i.i1.i.i.i.i = icmp ult i32 %i.ry, -2
  br i1 %spec.select.i.i.i1.i.i.i.i, label %bb.bd, label %_ZN2OT20delta_row_encoding_tD2Ev.exit.i.i.i

bb.bd:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EED2Ev.exit.i.i.i.i
end_hunk_8
begin_hunk_9_@_Z26hb_resolve_graph_overflowsjjbRN5graph7graph_tE:bb.a
  %.pre289.i = add i32 %.sroa.11184.0248.i, 1     ; 3 uses
  br i1 %.not.i98.i, label %.critedge.i100.i, label %bb.af

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit.i74
  %i.hz = icmp slt i32 %.sroa.0178.0247.i, 0
  br i1 %i.hz, label %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %bb.af
  %.not.i131.i = icmp ugt i32 %.pre289.i, %.sroa.0178.0247.i
  br i1 %.not.i131.i, label %.preheader.i.i, label %.critedge.i100.i, !prof !21

.preheader.i.i:                                   ; preds = %bb.ag, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.ic, %.preheader.i.i ], [ %.sroa.0178.0247.i, %bb.ag ] ; 2 uses
  %i.ia = lshr i32 %.043.i.i, 1
  %i.ib = add i32 %.043.i.i, 8
  %i.ic = add i32 %i.ib, %i.ia                    ; 8 uses
  %i.id = icmp ugt i32 %.pre289.i, %i.ic
  br i1 %i.id, label %.preheader.i.i, label %.thread.i133.i, !llvm.loop !1430

.thread.i133.i:                                   ; preds = %.preheader.i.i
  %i.ie = icmp ugt i32 %i.ic, 178956970
  br i1 %i.ie, label %.critedge.i148.i, label %bb.ah, !prof !21

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
  %i.ii = call ptr @hb_malloc(i64 noundef %i.ih) #18 ; 4 uses
  %.not10.i.i.i146.i = icmp eq ptr %i.ii, null
  br i1 %.not10.i.i.i146.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i147.i = icmp eq i32 %.sroa.11184.0248.i, 0
  br i1 %.not.i.i.i.i147.i, label %.critedge.i100.i, label %bb.al, !prof !21

bb.al:                                            ; preds = %bb.ak
  %i.ij = zext i32 %.sroa.11184.0248.i to i64
  %i.ik = mul nuw nsw i64 %i.ij, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ii, ptr nonnull readonly align 1 %.sroa.21.0250.i, i64 %i.ik, i1 false), !alias.scope !1431
  br label %.critedge.i100.i

_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i136.i: ; preds = %bb.ai, %bb.ah
  %i.il = phi ptr [ null, %bb.ai ], [ %.sroa.21.0250.i, %bb.ah ]
  %i.im = zext nneg i32 %i.ic to i64
  %i.in = mul nuw nsw i64 %i.im, 24
  %i.io = call ptr @hb_realloc(ptr noundef %i.il, i64 noundef %i.in) #18 ; 2 uses
  %.not22.i137.i = icmp eq ptr %i.io, null
  br i1 %.not22.i137.i, label %_ZN11hb_vector_tI13lookup_size_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53.i143.i, label %.critedge.i100.i, !prof !118

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
  store i32 %.val1.i.i.i, ptr %i.ir, align 8, !tbaa !137
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 %i.hu, ptr %.sroa.4154.0..sroa_idx.i, align 8, !tbaa !615
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 %i.hy, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !137
  br label %_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI13lookup_size_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %.critedge.i100.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i
  %.sroa.0178.3.i = phi i32 [ %.sroa.0178.2.i, %.critedge.i100.i ], [ %.sroa.0178.4.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.11184.1.i = phi i32 [ %.pre289.i, %.critedge.i100.i ], [ %.sroa.11184.0248.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 4 uses
  %.sroa.21.4.i = phi ptr [ %.sroa.21.3.i, %.critedge.i100.i ], [ %.sroa.21.0250.i, %_ZN11hb_vector_tI13lookup_size_tLb0EE5allocEjb.exit149.i ] ; 9 uses
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.is = zext i32 %.sroa.7163.0252.i to i64
  %i.it = shl nuw nsw i64 %i.is, 4
  %scevgep.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 %i.it
  %scevgep378.i = getelementptr i8, ptr %.sroa.0162.0253.i, i64 16
  %i.iu = add i32 %.sroa.7163.0252.i, -1
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 4
  %scevgep379.i = getelementptr i8, ptr %scevgep378.i, i64 %i.iw
  %.not.i.i.i.i.i.i.i.i101.i439 = icmp eq i32 %.sroa.7163.0252.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i101.i439, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !prof !796

bb.am:                                            ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEERS6_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !1392

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
  br i1 %i.jb, label %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge", label %bb.am, !llvm.loop !1392

"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEKFbvERS6_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSC_OSD_.exit.i.i.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjPN5graph6LookupELb0EE6item_tEEMS8_KFbvERK4$_19LPv0EEMS8_FRjvEL24hb_function_sortedness_t0ELSF_0EERK4$_29LSK_0ELSF_0EEjEppEv.exit.i", !llvm.loop !1392

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
  %.sroa.3.0.copyload.i.epil = load i32, ptr %.sroa.3.0..sroa_idx.i.epil, align 8, !tbaa !137
  %i.je = shl i32 %.sroa.3.0.copyload.i.epil, 3
  %i.jf = zext i32 %i.je to i64                   ; 2 uses
  %i.jg = add i64 %.075259.i.epil, %i.jf          ; 2 uses
  %i.jh = add i64 %.071260.i.epil, %i.jf          ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.070261.i.epil, i64 24
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph271.i, label %.lr.ph262.i.epil, !llvm.loop !1435

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
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !137
  %i.ju = shl i32 %.sroa.3.0.copyload.i, 3
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %i.jw = add i64 %.075259.i, %i.jv
  %i.jx = add i64 %.071260.i, %i.jv
  %.sroa.3.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 40
  %.sroa.3.0.copyload.i.1 = load i32, ptr %.sroa.3.0..sroa_idx.i.1, align 8, !tbaa !137
  %i.jy = shl i32 %.sroa.3.0.copyload.i.1, 3
  %i.jz = zext i32 %i.jy to i64                   ; 2 uses
  %i.ka = add i64 %i.jw, %i.jz
  %i.kb = add i64 %i.jx, %i.jz
  %.sroa.3.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 64
  %.sroa.3.0.copyload.i.2 = load i32, ptr %.sroa.3.0..sroa_idx.i.2, align 8, !tbaa !137
  %i.kc = shl i32 %.sroa.3.0.copyload.i.2, 3
  %i.kd = zext i32 %i.kc to i64                   ; 2 uses
  %i.ke = add i64 %i.ka, %i.kd
  %i.kf = add i64 %i.kb, %i.kd
  %.sroa.3.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.070261.i, i64 88
  %.sroa.3.0.copyload.i.3 = load i32, ptr %.sroa.3.0..sroa_idx.i.3, align 8, !tbaa !137
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
  %.sroa.0.0.copyload.i = load i32, ptr %.061269.i, align 8, !tbaa !137 ; 10 uses
  %.sroa.8152.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 8
  %.sroa.8152.0.copyload.i = load i64, ptr %.sroa.8152.0..061.sroa_idx.i, align 8, !tbaa !615
  %.sroa.9.0..061.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.061269.i, i64 16
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..061.sroa_idx.i, align 8, !tbaa !137
  %i.kl = load ptr, ptr %i.ac, align 8, !tbaa !1379 ; 5 uses
  %.not.i102.i = icmp eq ptr %i.kl, null
  br i1 %.not.i102.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.km = mul i32 %.sroa.0.0.copyload.i, 506952113
  %i.kn = and i32 %i.km, 1073741823
  %i.ko = load i32, ptr %i.jj, align 8, !tbaa !1394
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
  %i.kw = load i32, ptr %i.kr, align 4, !tbaa !137
  %i.kx = icmp eq i32 %i.kw, %.sroa.0.0.copyload.i
  br i1 %i.kx, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i

bb.ap:                                            ; preds = %.lr.ph.i.i106.i
  %i.ky = load i32, ptr %i.li, align 4, !tbaa !137
  %i.kz = icmp eq i32 %i.ky, %.sroa.0.0.copyload.i
  br i1 %i.kz, label %._crit_edge.i.i110.i, label %.lr.ph.i.i106.i, !llvm.loop !1395

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
  br i1 %.not.i.i.i109.i, label %_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i, label %bb.ap, !llvm.loop !1395

_ZNK12hb_hashmap_tIjPN5graph6LookupELb0EE3getERKj.exit114.i: ; preds = %.lr.ph.i.i106.i, %._crit_edge.i.i110.i, %bb.ao, %bb.an
  %.0.i113.i = phi ptr [ @_hb_NullPool, %bb.an ], [ %spec.select.i.i112.i, %._crit_edge.i.i110.i ], [ @_hb_NullPool, %bb.ao ], [ @_hb_NullPool, %.lr.ph.i.i106.i ]
  %i.lm = load ptr, ptr %.0.i113.i, align 8, !tbaa !1396
  %i.ln = load i32, ptr %15, align 8, !tbaa !1436 ; 2 uses
  %i.lo = load i16, ptr %i.lm, align 1, !tbaa !264
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
  %i.ls = load ptr, ptr %i.fh, align 8, !tbaa !1417 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !1354
  %.not.i115.i = icmp ult i32 %.sroa.0.0.copyload.i, %i.lu
  br i1 %.not.i115.i, label %bb.at, label %bb.as, !prof !142

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i

bb.at:                                            ; preds = %bb.ar
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !1362
  %i.lx = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ly = getelementptr inbounds nuw [216 x i8], ptr %i.lw, i64 %i.lx
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i: ; preds = %bb.at, %bb.as
  %.0.i116.i = phi ptr [ @_hb_CrapPool, %bb.as ], [ %i.ly, %bb.at ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.i116.i, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !1424
  %i.mb = load ptr, ptr %.0.i116.i, align 8, !tbaa !1425
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store atomic i32 1, ptr %10 monotonic, align 8
  store atomic i8 1, ptr %i.jk monotonic, align 4
  store atomic ptr null, ptr %i.jl monotonic, align 8
  store i8 1, ptr %i.jm, align 8, !tbaa !361
  store i32 0, ptr %i.jn, align 4, !tbaa !282
  store atomic i32 0, ptr %i.jo monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.jp, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 1, ptr %i.g, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i64 0, ptr %i.h, align 8, !tbaa !615
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %10, ptr %6, align 8, !tbaa !363
  store ptr %i.ls, ptr %i.jq, align 8, !tbaa !1426
  store ptr %i.h, ptr %i.jr, align 8, !tbaa !1429
  store ptr %i.g, ptr %i.js, align 8, !tbaa !480
  call void @_ZN5graph7graph_t21traverse_directed_bfsIZNS0_18find_subgraph_sizeEjR8hb_set_tjEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_EEvjOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.ls, i32 noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.mf = load i64, ptr %i.h, align 8, !tbaa !615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
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
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %or.cond5.not.i, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i, label %.thread.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117._crit_edge.i: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit117.i
  %.pre288.i = load ptr, ptr %i.ac, align 8, !tbaa !1379
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
  %i.ms = load i32, ptr %i.jj, align 8, !tbaa !1394
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
  %i.na = load i32, ptr %i.mv, align 4, !tbaa !137
  %i.nb = icmp eq i32 %i.na, %.sroa.0.0.copyload.i
  br i1 %i.nb, label %._crit_edge.i.i126.i, label %.lr.ph.i.i122.i

bb.aw:                                            ; preds = %.lr.ph.i.i122.i
  %i.nc = load i32, ptr %i.nm, align 4, !tbaa !137
  %i.nd = icmp eq i32 %i.nc, %.sroa.0.0.copyload.i
  br i1 %i.nd, label %._crit_edge.i.i126.i, label %.lr.ph.i.i122.i, !llvm.loop !1395

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
end_hunk_9
begin_hunk_10_@_ZN5graph7graph_t14update_parentsEv:bb.a
  %exitcond.not.i178 = icmp eq i64 %indvars.iv.next.i177, %wide.trip.count.i174
  br i1 %exitcond.not.i178, label %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread, label %.lr.ph.i175, !llvm.loop !1514

_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180:        ; preds = %bb.cz
  store i8 0, ptr %i.xf, align 8, !tbaa !1499
  br label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit52

.critedge.i79:                                    ; preds = %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread, %bb.cy
  %i.yn = phi ptr [ %.pre338, %_ZN12hb_hashmap_tIjjLb0EE5allocEj.exit180.thread ], [ %i.vy, %bb.cy ] ; 5 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.0.i37, i64 128
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !1512
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
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !137
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
  %i.zh = load i32, ptr %i.xm, align 4, !tbaa !1449
  %i.zi = and i32 %i.zh, %i.zg                    ; 3 uses
  %i.zj = zext i32 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [12 x i8], ptr %i.yn, i64 %i.zj ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  %i.zm = load i32, ptr %i.zl, align 4            ; 2 uses
  %i.zn = and i32 %i.zm, 2
  %.not.i87 = icmp eq i32 %i.zn, 0
  br i1 %.not.i87, label %.loopexit.thread.i94, label %.lr.ph.i81, !llvm.loop !1515

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
  %i.zs = load i32, ptr %i.xi, align 8, !tbaa !1509
  %i.zt = add i32 %i.zs, -1
  store i32 %i.zt, ptr %i.xi, align 8, !tbaa !1509
  %i.zu = load i32, ptr %i.zr, align 4
  %i.zv = and i32 %i.zu, 1
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i37, i64 116 ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !1463
  %i.zy = sub i32 %i.zx, %i.zv
  store i32 %i.zy, ptr %i.zw, align 4, !tbaa !1463
  br label %bb.dh

bb.dh:                                            ; preds = %.loopexit.thread.i94.thread, %bb.dg, %.loopexit.thread.i94
  %i.zz = phi ptr [ %i.yx, %.loopexit.thread.i94.thread ], [ %i.zr, %bb.dg ], [ %i.zr, %.loopexit.thread.i94 ]
  %i.aaa = phi ptr [ %i.yw, %.loopexit.thread.i94.thread ], [ %i.zq, %bb.dg ], [ %i.zq, %.loopexit.thread.i94 ] ; 2 uses
  %.0283961.i95431 = phi i32 [ 0, %.loopexit.thread.i94.thread ], [ %.02839.i91, %bb.dg ], [ %.02839.i91, %.loopexit.thread.i94 ]
  store i32 %i.bf, ptr %i.aaa, align 4, !tbaa !1516
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  store i32 1, ptr %i.aab, align 4, !tbaa !1518
  store i32 %i.bp, ptr %i.zz, align 4
  %i.aac = getelementptr inbounds nuw i8, ptr %.0.i37, i64 116 ; 2 uses
  %i.aad = load <2 x i32>, ptr %i.aac, align 4, !tbaa !137
  %i.aae = add <2 x i32> %i.aad, splat (i32 1)    ; 2 uses
  store <2 x i32> %i.aae, ptr %i.aac, align 4, !tbaa !137
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0.i37, i64 114
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !1513
  %i.aah = zext i16 %i.aag to i32
  %i.aai = icmp ugt i32 %.0283961.i95431, %i.aah
  br i1 %i.aai, label %bb.di, label %bb.dk, !prof !21

bb.di:                                            ; preds = %bb.dh
  %i.aaj = extractelement <2 x i32> %i.aae, i64 1
  %i.aak = shl i32 %i.aaj, 3
  %i.aal = load i32, ptr %i.xm, align 4, !tbaa !1449 ; 2 uses
  %i.aam = icmp ugt i32 %i.aak, %i.aal
  br i1 %i.aam, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.aan = add i32 %i.aal, -8
  %i.aao = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.vw, i32 noundef %i.aan) ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dh, %bb.dj, %bb.di
  %i.aap = load i32, ptr %i.rz, align 8, !tbaa !1355
  %i.aaq = add i32 %i.aap, 1
  br label %.sink.split.i50

.sink.split.i50:                                  ; preds = %bb.dk, %bb.cx, %bb.cd
  %.sink.i51 = phi i32 [ %i.xe, %bb.cx ], [ %i.aaq, %bb.dk ], [ 1, %bb.cd ]
  store i32 %.sink.i51, ptr %i.rz, align 8, !tbaa !1355
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
  %i.aau = load i8, ptr %i.aat, align 8, !tbaa !1499, !range !132, !noundef !198
  %i.aav = trunc nuw i8 %i.aau to i1
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 160
  %i.aax = load i8, ptr %i.aaw, align 8, !range !132
  %i.aay = trunc nuw i8 %i.aax to i1
  %i.aaz = select i1 %i.aav, i1 %i.aay, i1 false
  %i.aba = trunc nuw i8 %.epil.init to i1
  %.not.i53.epil = xor i1 %i.aba, true
  %brmerge.i.epil = or i1 %i.aaz, %.not.i53.epil
  br i1 %brmerge.i.epil, label %._crit_edge295, label %bb.dl

bb.dl:                                            ; preds = %.epil.preheader
  store i8 0, ptr %i.ai, align 1, !tbaa !1348
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit.unr-lcssa, %bb.dl, %.epil.preheader, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !1507
  br label %bb.dp

bb.dm:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit.1, %.lr.ph294.new
  %indvars.iv322 = phi i64 [ 0, %.lr.ph294.new ], [ %indvars.iv.next323.1, %_ZN5graph7graph_t13check_successEb.exit.1 ] ; 3 uses
  %i.abb = phi i8 [ %.promoted, %.lr.ph294.new ], [ %i.abv, %_ZN5graph7graph_t13check_successEb.exit.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph294.new ], [ %niter.next.1, %_ZN5graph7graph_t13check_successEb.exit.1 ]
  %i.abc = getelementptr inbounds nuw [216 x i8], ptr %i.ah, i64 %indvars.iv322 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 112
  %i.abe = load i8, ptr %i.abd, align 8, !tbaa !1499, !range !132, !noundef !198
  %i.abf = trunc nuw i8 %i.abe to i1
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 160
  %i.abh = load i8, ptr %i.abg, align 8, !range !132
  %i.abi = trunc nuw i8 %i.abh to i1
  %i.abj = select i1 %i.abf, i1 %i.abi, i1 false
  %i.abk = trunc nuw i8 %i.abb to i1
  %.not.i53 = xor i1 %i.abk, true
  %brmerge.i = or i1 %i.abj, %.not.i53
  br i1 %brmerge.i, label %_ZN5graph7graph_t13check_successEb.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i8 0, ptr %i.ai, align 1, !tbaa !1348
  br label %_ZN5graph7graph_t13check_successEb.exit

_ZN5graph7graph_t13check_successEb.exit:          ; preds = %bb.dm, %bb.dn
  %i.abl = phi i8 [ %i.abb, %bb.dm ], [ 0, %bb.dn ] ; 2 uses
  %i.abm = getelementptr inbounds nuw [216 x i8], ptr %i.ah, i64 %indvars.iv322 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 328
  %i.abo = load i8, ptr %i.abn, align 8, !tbaa !1499, !range !132, !noundef !198
  %i.abp = trunc nuw i8 %i.abo to i1
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 376
  %i.abr = load i8, ptr %i.abq, align 8, !range !132
  %i.abs = trunc nuw i8 %i.abr to i1
  %i.abt = select i1 %i.abp, i1 %i.abs, i1 false
  %i.abu = trunc nuw i8 %i.abl to i1
  %.not.i53.1 = xor i1 %i.abu, true
  %brmerge.i.1 = or i1 %i.abt, %.not.i53.1
  br i1 %brmerge.i.1, label %_ZN5graph7graph_t13check_successEb.exit.1, label %bb.do

bb.do:                                            ; preds = %_ZN5graph7graph_t13check_successEb.exit
  store i8 0, ptr %i.ai, align 1, !tbaa !1348
  br label %_ZN5graph7graph_t13check_successEb.exit.1

_ZN5graph7graph_t13check_successEb.exit.1:        ; preds = %bb.do, %_ZN5graph7graph_t13check_successEb.exit
  %i.abv = phi i8 [ %i.abl, %_ZN5graph7graph_t13check_successEb.exit ], [ 0, %bb.do ] ; 2 uses
  %indvars.iv.next323.1 = add nuw nsw i64 %indvars.iv322, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge295.loopexit.unr-lcssa, label %bb.dm, !llvm.loop !1532

bb.dp:                                            ; preds = %bb.a, %._crit_edge295
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1508, !range !132, !noundef !198
  %i.f = zext i1 %2 to i8
  %i.g = or i8 %i.e, %i.f
  store i8 %i.g, ptr %i.d, align 8, !tbaa !1508
  br i1 %2, label %bb.b, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load i8, ptr %i.i, align 8, !tbaa !281, !range !132, !noundef !198
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %1)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1355
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  store i32 %1, ptr %i.o, align 4, !tbaa !1445
  br label %.sink.split

bb.f:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1445 ; 2 uses
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 1, ptr %i.b, align 4, !tbaa !137
  %i.r = mul i32 %i.p, -1640531535
  %i.s = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.o, i32 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %i.s, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.o, align 4, !tbaa !1445
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1450 ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = mul i32 %1, 506952113
  %i.x = and i32 %i.w, 1073741823
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1512
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
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !137
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.aq, align 4, !tbaa !137
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !1519

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
  br i1 %.not.i.i.i, label %.loopexit, label %bb.k, !llvm.loop !1519

_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.ae, %.lr.ph.i.i.i ], [ %i.as, %bb.k ]
  %i.au = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %i.ap, %bb.k ]
  %i.av = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.av, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !137
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !137
  %i.ba = load i32, ptr %i.l, align 8, !tbaa !1355
  %i.bb = add i32 %i.ba, 1
  br label %.sink.split

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.i, %bb.j, %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !137
  %i.bc = mul i32 %1, -1640531535
  %i.bd = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.be = load i32, ptr %i.l, align 8, !tbaa !1355
  %i.bf = add i32 %i.be, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.m, %bb.l
  %.sink = phi i32 [ %i.bb, %bb.l ], [ %i.bf, %bb.m ], [ 1, %bb.e ]
  store i32 %.sink, ptr %i.l, align 8, !tbaa !1355
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.loopexit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1499, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1509 ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1449
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !142

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1512
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1450 ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !137
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !137
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f
end_hunk_10
begin_hunk_11_@_ZN5graph24gsubgpos_graph_context_tD2Ev:bb.a
bb.e:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjPN5graph6LookupELb0EEEvPT_.exit.i.i
  tail call void @hb_free(ptr noundef nonnull %i.o) #18
  br label %_ZN12hb_hashmap_tIjPN5graph6LookupELb0EED2Ev.exit

_ZN12hb_hashmap_tIjPN5graph6LookupELb0EED2Ev.exit: ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjPN5graph6LookupELb0EEEvPT_.exit.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph7graph_t16update_distancesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1563, !range !132, !noundef !198
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN19hb_priority_queue_tIlED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1474 ; 5 uses
  %.not366 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1475 ; 9 uses
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
  store i64 9223372036854775807, ptr %i.j, align 8, !tbaa !1535
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !1564

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !425
  %.not.i.not.i = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.0.i.i = select i1 %.not.i.not.i, ptr @_hb_NullPool, ptr %i.n, !prof !21
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !137 ; 2 uses
  %.not.i42 = icmp ult i32 %i.o, %i.e
  br i1 %.not.i42, label %.thread, label %bb.d, !prof !142

.thread:                                          ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1362
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [216 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !1535
  br label %.preheader.i.preheader

bb.d:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_hb_CrapPool, i64 56), align 8, !tbaa !1535
  br i1 %.not366, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85, label %.preheader.i.preheader, !prof !134

.preheader.i.preheader:                           ; preds = %.thread, %bb.d
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.w, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.u = lshr i32 %.043.i, 1
  %i.v = add i32 %.043.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 5 uses
  %i.x = icmp ugt i32 %i.e, %i.w
  br i1 %i.x, label %.preheader.i, label %.thread.i, !llvm.loop !1534

.thread.i:                                        ; preds = %.preheader.i
  %i.y = icmp ugt i32 %i.w, 268435455
  br i1 %i.y, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, !prof !21

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.z = shl nuw i32 %i.w, 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aa) #18 ; 2 uses
  %.not22.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !425
  %.not.i.not.i44 = icmp eq i32 %i.ac, 0
  %i.ad = load ptr, ptr %i.m, align 8
  %.0.i.i45 = select i1 %.not.i.not.i44, ptr @_hb_NullPool, ptr %i.ad, !prof !21
  %i.ae = load i32, ptr %.0.i.i45, align 4, !tbaa !137
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85: ; preds = %bb.d
  %i.af = load i32, ptr %i.k, align 4, !tbaa !425
  %.not.i.not.i44268 = icmp eq i32 %i.af, 0
  %i.ag = load ptr, ptr %i.m, align 8
  %.0.i.i45269 = select i1 %.not.i.not.i44268, ptr @_hb_NullPool, ptr %i.ag, !prof !21
  %i.ah = load i32, ptr %.0.i.i45269, align 4, !tbaa !137
  %i.ai = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 128) #18 ; 2 uses
  %.not22.i86 = icmp eq ptr %i.ai, null
  br i1 %.not22.i86, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread, label %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, !prof !118

_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %.thread.i, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit: ; preds = %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85
  %i.aj = phi i32 [ %i.ae, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ah, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.0178.4 = phi i32 [ %i.w, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ 8, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ]
  %.sroa.43.4 = phi ptr [ %i.ab, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE5allocEjb.exit ], [ %i.ai, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i85 ] ; 3 uses
  store i64 0, ptr %.sroa.43.4, align 8, !tbaa !615
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.43.4, i64 8
  store i32 %i.aj, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !137
  br label %_ZN19hb_priority_queue_tIlE6insertElj.exit33

_ZN19hb_priority_queue_tIlE6insertElj.exit33:     ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread
  %.sroa.43.5284 = phi ptr [ null, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.43.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %.sroa.22.4283 = phi i32 [ 0, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ 1, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ]
  %.sroa.0178.5282 = phi i32 [ -1, %_ZN11hb_vector_tI9hb_pair_tIljELb0EE4pushIJS1_EEEPS1_DpOT_.exit.thread ], [ %.sroa.0178.4, %_ZN19hb_priority_queue_tIlE6insertElj.exit33.loopexit ] ; 2 uses
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !1474 ; 4 uses
  %or.cond = icmp sgt i32 %i.ak, 0
  br i1 %or.cond, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, !prof !1565

.preheader.i.i:                                   ; preds = %_ZN19hb_priority_queue_tIlE6insertElj.exit33, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.an, %.preheader.i.i ], [ 0, %_ZN19hb_priority_queue_tIlE6insertElj.exit33 ] ; 2 uses
  %i.al = lshr i32 %.053.i.i, 1
  %i.am = add nuw i32 %.053.i.i, 8
  %i.an = add nuw i32 %i.am, %i.al                ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, %i.an
  br i1 %i.ao, label %.preheader.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, !llvm.loop !662

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %.preheader.i.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ap) #18 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.aq, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE6resizeEi.exit, label %_ZN11hb_vector_tIbLb0EE11grow_vectorIbTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, !prof !88

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
  store i64 9223372036854775807, ptr %i.aw, align 8, !tbaa !1535
  %i.ax = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i64 9223372036854775807, ptr %i.ay, align 8, !tbaa !1535
  %i.az = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 488
  store i64 9223372036854775807, ptr %i.ba, align 8, !tbaa !1535
  %i.bb = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store i64 9223372036854775807, ptr %i.bc, align 8, !tbaa !1535
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 920
  store i64 9223372036854775807, ptr %i.be, align 8, !tbaa !1535
  %i.bf = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1136
  store i64 9223372036854775807, ptr %i.bg, align 8, !tbaa !1535
  %i.bh = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1352
  store i64 9223372036854775807, ptr %i.bi, align 8, !tbaa !1535
  %i.bj = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  store i64 9223372036854775807, ptr %i.bk, align 8, !tbaa !1535
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1566

bb.f:                                             ; preds = %.lr.ph363, %.loopexit
  %.sroa.43.0362 = phi ptr [ %.sroa.43.5284, %.lr.ph363 ], [ %.sroa.43.3, %.loopexit ] ; 12 uses
  %.sroa.22.0361 = phi i32 [ %.sroa.22.4283, %.lr.ph363 ], [ %.sroa.22.3, %.loopexit ] ; 6 uses
  %.sroa.0178.0360 = phi i32 [ %.sroa.0178.5282, %.lr.ph363 ], [ %.sroa.0178.3, %.loopexit ] ; 10 uses
  %i.bl = icmp eq i32 %.sroa.22.0361, 0
  br i1 %i.bl, label %_ZN5graph7graph_t13check_successEb.exit.thread, label %bb.g

_ZN5graph7graph_t13check_successEb.exit.thread:   ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !1348, !range !132, !noundef !198
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.am, label %_ZN5graph7graph_t13check_successEb.exit73

bb.g:                                             ; preds = %bb.f
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.43.0362, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !137 ; 5 uses
  %i.bp = add i32 %.sroa.22.0361, -1              ; 7 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.0362, i64 %i.bq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.43.0362, ptr noundef nonnull align 8 dereferenceable(12) %i.br, i64 12, i1 false), !tbaa.struct !630
  %i.bs = icmp slt i32 %i.bp, 0
  br i1 %i.bs, label %.lr.ph353.preheader, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %.not.i99 = icmp samesign ugt i32 %i.bp, %.sroa.0178.0360
  br i1 %.not.i99, label %.preheader.i101, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit, !prof !21

.preheader.i101:                                  ; preds = %bb.h, %.preheader.i101
  %.043.i102 = phi i32 [ %i.bv, %.preheader.i101 ], [ %.sroa.0178.0360, %bb.h ] ; 2 uses
  %i.bt = lshr i32 %.043.i102, 1
  %i.bu = add nuw i32 %.043.i102, 8
  %i.bv = add nuw i32 %i.bu, %i.bt                ; 6 uses
  %i.bw = icmp ugt i32 %i.bp, %i.bv
  br i1 %i.bw, label %.preheader.i101, label %.thread.i103, !llvm.loop !1534

.thread.i103:                                     ; preds = %.preheader.i101
  %i.bx = icmp ugt i32 %i.bv, 268435455
  br i1 %i.bx, label %.critedge.i118, label %bb.i, !prof !21

.critedge.i118:                                   ; preds = %.thread.i103
  %i.by = xor i32 %.sroa.0178.0360, -1
  br label %.lr.ph353.preheader

bb.i:                                             ; preds = %.thread.i103
  %.not49.i105 = icmp eq i32 %.sroa.0178.0360, 0
  %i.bz = shl nuw i32 %i.bv, 4
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  br i1 %.not49.i105, label %bb.j, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106

bb.j:                                             ; preds = %bb.i
  %i.cb = tail call ptr @hb_malloc(i64 noundef %i.ca) #18 ; 3 uses
  %.not10.i.i.i116 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i116, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.cc = zext i32 %.sroa.22.0361 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.sroa.43.0362, i64 %i.cd, i1 false), !alias.scope !1567
  br label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread

_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i106: ; preds = %bb.i
  %i.ce = tail call ptr @hb_realloc(ptr noundef nonnull %.sroa.43.0362, i64 noundef %i.ca) #18 ; 2 uses
  %.not22.i107 = icmp eq ptr %i.ce, null
  br i1 %.not22.i107, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i113, label %_ZN11hb_vector_tI9hb_pair_tIljELb0EE6resizeEi.exit.thread, !prof !118

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
  %.pre = load i64, ptr %.sroa.43.6305417, align 8, !tbaa !1541 ; 3 uses
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
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1541 ; 3 uses
  %.not.i40 = icmp sgt i64 %.pre, %i.cp
  br i1 %.not.i40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %bb.m, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1541 ; 2 uses
  %.not27.i = icmp sgt i64 %.pre, %i.cs
  br i1 %.not27.i, label %.thread307, label %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit

bb.n:                                             ; preds = %.lr.ph353
  br i1 %i.ck, label %..thread307_crit_edge, label %bb.o

..thread307_crit_edge:                            ; preds = %bb.n
  %.phi.trans.insert = zext i32 %i.ci to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.phi.trans.insert
  %.pre374 = load i64, ptr %.phi.trans.insert373, align 8, !tbaa !1541
  br label %.thread307

.thread307:                                       ; preds = %..thread307_crit_edge, %bb.m
  %i.ct = phi i64 [ %.pre374, %..thread307_crit_edge ], [ %i.cs, %bb.m ]
  %i.cu = icmp slt i64 %i.cp, %i.ct
  %spec.select.i = select i1 %i.cu, i32 %i.cj, i32 %i.ci ; 2 uses
  %.pre375 = zext i32 %spec.select.i to i64       ; 2 uses
  %.phi.trans.insert376 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre375
  %.pre377 = load i64, ptr %.phi.trans.insert376, align 8, !tbaa !615
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread307
  %i.cv = phi i64 [ %i.cp, %bb.n ], [ %.pre377, %.thread307 ]
  %.pre-phi = phi i64 [ %i.cn, %bb.n ], [ %.pre375, %.thread307 ]
  %.0.i41 = phi i32 [ %i.cj, %bb.n ], [ %spec.select.i, %.thread307 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.43.6305417, i64 %.pre-phi ; 2 uses
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !615
  store i64 %.pre, ptr %i.cw, align 8, !tbaa !615
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 8, !tbaa !137
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !137
  store i32 %i.da, ptr %i.cx, align 8, !tbaa !137
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !137
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
  br i1 %.not.i49, label %bb.q, label %bb.p, !prof !142

bb.p:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

bb.q:                                             ; preds = %_ZN19hb_priority_queue_tIlE11pop_minimumEv.exit
  %i.df = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.df
  %.pre378 = load i8, ptr %i.dg, align 1, !tbaa !226, !range !132
  br label %_ZN11hb_vector_tIbLb0EEixEi.exit

_ZN11hb_vector_tIbLb0EEixEi.exit:                 ; preds = %bb.p, %bb.q
  %i.dh = phi i8 [ %i.at, %bb.p ], [ %.pre378, %bb.q ]
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.loopexit, label %bb.r, !llvm.loop !1571

bb.r:                                             ; preds = %_ZN11hb_vector_tIbLb0EEixEi.exit
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !1354
  %.not.i51 = icmp ult i32 %.sroa.2.0.copyload.i, %i.dj
  br i1 %.not.i51, label %bb.t, label %bb.s, !prof !142

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

bb.t:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.au, align 8, !tbaa !1362
  %i.dl = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dm = getelementptr inbounds nuw [216 x i8], ptr %i.dk, i64 %i.dl
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53: ; preds = %bb.s, %bb.t
  %.0.i52 = phi ptr [ @_hb_CrapPool, %bb.s ], [ %i.dm, %bb.t ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i52, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !1535
  br i1 %.not.i49, label %bb.v, label %bb.u, !prof !142

bb.u:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  store i8 %i.at, ptr @_hb_CrapPool, align 16
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit

bb.v:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit53
  %i.dp = zext i32 %.sroa.2.0.copyload.i to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.1, i64 %i.dp
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIKN22hb_serialize_context_t8object_t6link_tEES6_ERS5_E3endEv.exit
end_hunk_11
begin_hunk_12_@_ZN5graph6Lookup14add_sub_tablesERNS_24gsubgpos_graph_context_tEjjRK11hb_vector_tI9hb_pair_tIjS3_IjLb0EEELb0EE:bb.a
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
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !296, !noalias !1653 ; 2 uses
  %.pre45.i = load i32, ptr %i.af, align 4, !tbaa !295, !noalias !1653 ; 2 uses
  %.pre46.i = load ptr, ptr %i.ag, align 8, !tbaa !296, !noalias !1653 ; 2 uses
  %.pre47.i = load i32, ptr %i.ah, align 4, !tbaa !295, !noalias !1653 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %.pre45.i to i64
  %.sroa.2.8.insert.ext.i.i.i5.i.i = zext i32 %.pre47.i to i64
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %.pre.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %.pre46.i, i64 %.sroa.2.8.insert.ext.i.i.i5.i.i
  br label %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i

_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.i: ; preds = %bb.c, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i
  %.044.i = phi ptr [ %i.z, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i ], [ %i.aw, %bb.c ] ; 3 uses
  %.02143.i = phi i32 [ 0, %_ZNK9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_E3endEv.exit.lr.ph.i ], [ %i.av, %bb.c ] ; 2 uses
  %i.ak = load i32, ptr %.044.i, align 8, !tbaa !1642
  %i.al = add i32 %i.ak, %.02143.i
  %i.am = getelementptr inbounds nuw i8, ptr %.044.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1656 ; 2 uses
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
  %brmerge = select i1 %.not.i.i23.i.not, i1 true, i1 %.not.i.i.i.i.i.not, !prof !1028
  %.mux = select i1 %.not.i.i23.i.not, i1 false, i1 true, !prof !1028
  %.sroa.025.0.i.mux = select i1 %.not.i.i23.i.not, ptr %.sroa.025.0.i, ptr %.sroa.13.0.i.ph.ph, !prof !1028
  br i1 %brmerge, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i, label %bb.d, !prof !1470

_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i, !prof !21

bb.d:                                             ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i

_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i: ; preds = %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i, %bb.d, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i
  %.not.i.i2351.i = phi i1 [ true, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i ], [ true, %bb.d ], [ %.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i ]
  %.0.i.i.i = phi ptr [ %.sroa.13.0.i.ph.ph, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.thread.i ], [ @_hb_CrapPool, %bb.d ], [ %.sroa.025.0.i.mux, %_ZNK16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES4_EneERKS5_.exit.thread.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !400 ; 2 uses
  %i.az = icmp ugt i32 %i.ay, %i.aq
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i
  %i.ba = add i32 %i.ay, %i.ao
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !400
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EdeEv.exit.i
  br i1 %.not.i.i2351.i, label %bb.g, label %_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEERS3_EppEv.exit.i.i.i: ; preds = %bb.f
  %i.bb = add i32 %.sroa.7.0.i, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 12
  br label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i1.i.i.i = icmp eq i32 %.sroa.17.0.i.ph, 0
  br i1 %.not.i.i1.i.i.i, label %_ZNR9hb_iter_tI16hb_concat_iter_tI10hb_array_tIN22hb_serialize_context_t8object_t6link_tEES5_ERS4_EppEv.exit.i.outer, label %bb.h, !prof !21

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
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
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
  %.val.i = phi i32 [ %2, %bb.p ], [ %i.ga, %._crit_edge208 ]
  %.076.lcssa = phi ptr [ %.0.i298, %bb.p ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !296 ; 5 uses
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
  %.01519.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %.01518.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ] ; 3 uses
  %i.eu = icmp ugt ptr %.01519.i.i.i.i.i, %i.eq
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.r
  %.016.i.i.i.i.i = phi ptr [ %i.fh, %bb.r ], [ %.01519.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 7 uses
  %i.ev = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !400 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !400 ; 2 uses
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
  br i1 %i.fg, label %.preheader.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit, !llvm.loop !1666

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fh = getelementptr inbounds i8, ptr %.016.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.fh, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fh, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !1212
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i, align 4
  %i.fi = icmp ugt ptr %i.fh, %i.eq
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i, !llvm.loop !1667

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit: ; preds = %.critedge.i.i.i.i.i, %._crit_edge216, %bb.q
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = mul i32 %.val.i, -1640531535
  %i.fl = call noundef zeroext i1 @_ZN12hb_hashmap_tIjPN5graph6LookupELb0EE13set_with_hashIRKjRS2_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.cg

bb.s:                                             ; preds = %.lr.ph215, %._crit_edge208
  %i.fm = phi ptr [ %i.bx, %.lr.ph215 ], [ %i.fy, %._crit_edge208 ] ; 2 uses
  %i.fn = phi ptr [ %i.bx, %.lr.ph215 ], [ %i.fz, %._crit_edge208 ] ; 2 uses
  %i.fo = phi i32 [ %2, %.lr.ph215 ], [ %i.ga, %._crit_edge208 ] ; 2 uses
  %.074213 = phi ptr [ %i.ei, %.lr.ph215 ], [ %i.gb, %._crit_edge208 ] ; 4 uses
  %.075212 = phi i32 [ 0, %.lr.ph215 ], [ %i.fr, %._crit_edge208 ] ; 2 uses
  %.076211 = phi ptr [ %.0.i298, %.lr.ph215 ], [ %.1.lcssa, %._crit_edge208 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.074213, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !1656 ; 3 uses
  %i.fr = add i32 %i.fq, %.075212
  %i.fs = getelementptr inbounds nuw i8, ptr %.074213, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !426 ; 2 uses
  %i.fu = zext i32 %i.fq to i64
  %.idx219 = shl nuw nsw i64 %i.fu, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx219
  %.not82202 = icmp eq i32 %i.fq, 0
  br i1 %.not82202, label %._crit_edge208, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %bb.s
  %i.fw = load i32, ptr %.074213, align 8, !tbaa !1642
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
end_hunk_12
begin_hunk_13_@_ZNK5graph20LigatureSubstFormat111clone_rangeERNS_24gsubgpos_graph_context_tEj11hb_vector_tIjLb0EEjj:bb.a

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i157, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !296
  %i.bt = zext nneg i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = zext i32 %i.bq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bu, i8 0, i64 %i.bv, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !295
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i157, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !296
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
  store i32 %i.au, ptr %i.cd, align 4, !tbaa !397
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i159, i64 4
  store i32 2, ptr %i.ce, align 4, !tbaa !400
  tail call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i, i32 noundef %i.j, i1 noundef zeroext false)
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !425
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
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !426
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !137
  %i.cp = add i32 %i.co, %.0135326                ; 3 uses
  %.not = icmp ult i32 %.0135326, %5
  %.not147 = icmp ult i32 %4, %i.cp
  %or.cond = select i1 %.not, i1 %.not147, i1 false
  br i1 %or.cond, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 3 uses
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
  %i.fp = load ptr, ptr %i.do, align 8, !tbaa !296 ; 5 uses
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
  %.01519.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ %.01518.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.fr = icmp ugt ptr %.01519.i.i.i.i.i.i, %i.fp
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.ac
  %.016.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.ac ], [ %.01519.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 7 uses
  %i.fs = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !400 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !400 ; 2 uses
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
  br i1 %i.gd, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i, !llvm.loop !1666

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ge = getelementptr inbounds i8, ptr %.016.i.i.i.i.i.i, i64 -12 ; 4 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.ge, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ge, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !1212
  store <3 x i32> %.sroa.0.0.copyload, ptr %.016.i.i.i.i.i.i, align 4
  %i.gf = icmp ugt ptr %i.ge, %i.fp
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !1667

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.gg = load ptr, ptr %i.do, align 8, !tbaa !296 ; 2 uses
  %i.gh = load i32, ptr %i.dq, align 4, !tbaa !295 ; 3 uses
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
  store i32 %.01821.i.epil, ptr %i.gn, align 4, !tbaa !400
  %i.go = add i32 %.01821.i.epil, 2
  %i.gp = getelementptr inbounds nuw i8, ptr %.022.i.epil, i64 12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter444
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i178, label %.lr.ph.i177.epil, !llvm.loop !2634

._crit_edge.loopexit.i178:                        ; preds = %.lr.ph.i177.epil, %._crit_edge.loopexit.i178.unr-lcssa
  %i.gq = trunc i32 %i.gh to i16
  %i.gr = call i16 @llvm.bswap.i16(i16 %i.gq)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i178, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i
  %i.gs = phi i16 [ %i.gr, %._crit_edge.loopexit.i178 ], [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5qsortEv.exit.i ]
  store i16 %i.gs, ptr %i.dc, align 1, !tbaa !331
  %i.gt = shl nuw nsw i32 %i.fo, 1
  %i.gu = load ptr, ptr %i.dd, align 8, !tbaa !1207
  %i.gv = zext nneg i32 %i.gt to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.gu, i64 %i.gw
  store ptr %i.gx, ptr %i.dd, align 8, !tbaa !1207
  br label %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit

.lr.ph.i177:                                      ; preds = %.lr.ph.i177, %.lr.ph.i177.preheader.new
  %.022.i = phi ptr [ %i.gg, %.lr.ph.i177.preheader.new ], [ %i.ho, %.lr.ph.i177 ] ; 9 uses
  %.01821.i = phi i32 [ 2, %.lr.ph.i177.preheader.new ], [ %i.hn, %.lr.ph.i177 ] ; 9 uses
  %niter448 = phi i64 [ 0, %.lr.ph.i177.preheader.new ], [ %niter448.next.7, %.lr.ph.i177 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  store i32 %.01821.i, ptr %i.gy, align 4, !tbaa !400
  %i.gz = add nuw nsw i32 %.01821.i, 2
  %i.ha = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !400
  %i.hb = add nuw nsw i32 %.01821.i, 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.022.i, i64 28
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !400
  %i.hd = add nuw nsw i32 %.01821.i, 6
  %i.he = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !400
  %i.hf = add nuw nsw i32 %.01821.i, 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.022.i, i64 52
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !400
  %i.hh = add nuw nsw i32 %.01821.i, 10
  %i.hi = getelementptr inbounds nuw i8, ptr %.022.i, i64 64
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !400
  %i.hj = add nuw nsw i32 %.01821.i, 12
  %i.hk = getelementptr inbounds nuw i8, ptr %.022.i, i64 76
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !400
  %i.hl = add i32 %.01821.i, 14
  %i.hm = getelementptr inbounds nuw i8, ptr %.022.i, i64 88
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !400
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
  %i.hu = call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %i.ht) #18 ; 8 uses
  %i.hv = icmp eq i32 %i.hu, -1
  br i1 %i.hv, label %.thread307, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !1354
  %.not.i.i.i181 = icmp ult i32 %i.hu, %i.hy
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = zext i32 %i.hu to i64
  %i.ic = getelementptr inbounds nuw [216 x i8], ptr %i.ia, i64 %i.ib
  %.0.i.i.i182 = select i1 %.not.i.i.i181, ptr %i.ic, ptr @_hb_NullPool, !prof !142
  %i.id = load ptr, ptr %.0.i.i.i182, align 8, !tbaa !399
  %i.ie = trunc i32 %i.hr to i16
  %i.if = call i16 @llvm.bswap.i16(i16 %i.ie)
  store i16 %i.if, ptr %i.id, align 1, !tbaa !331
  %i.ig = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422
  %i.ih = shl i32 %i.hp, 1
  %i.ii = add i32 %i.ih, 2
  %i.ij = shl i32 %i.hq, 1
  %i.ik = add i32 %i.ij, 2
  call void @_ZN5graph7graph_t13move_childrenIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEvjjjjj(ptr noundef nonnull align 8 dereferenceable(88) %i.ig, i32 noundef %i.cv, i32 noundef %i.ii, i32 noundef %i.ik, i32 noundef %i.hu, i32 noundef 2)
  %i.il = trunc nuw i64 %indvars.iv to i32
  %spec.select154 = call i32 @llvm.umin.i32(i32 %i.il, i32 %.0119328)
  %i.im = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 3 uses
  %i.in = load i16, ptr %i.v, align 1, !tbaa !264
  %i.io = call noundef i16 @llvm.bswap.i16(i16 %i.in)
  %i.ip = zext i16 %i.io to i32
  %.not.i183 = icmp ult i32 %.0128327, %i.ip
  br i1 %.not.i183, label %bb.ag, label %bb.af, !prof !142

bb.af:                                            ; preds = %bb.ae
  store i16 %i.cj, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

bb.ag:                                            ; preds = %bb.ae
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !263
  %i.iq = zext nneg i32 %.0128327 to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.iq
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185: ; preds = %bb.af, %bb.ag
  %.0.i184 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.ir, %bb.ag ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 4 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !1354
  %.not.i.i186 = icmp ult i32 %i.j, %i.it
  br i1 %.not.i.i186, label %bb.ai, label %bb.ah, !prof !142

bb.ah:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.ai:                                            ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit185
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !1362
  %i.iw = getelementptr inbounds nuw [216 x i8], ptr %i.iv, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i187 = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.iw, %bb.ai ] ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 20 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !295 ; 2 uses
  %i.iz = add i32 %i.iy, 1                        ; 5 uses
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.an, label %bb.aj, !prof !21

bb.aj:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 16
  %i.jc = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i32 noundef %i.iz, i1 noundef zeroext false)
  br i1 %i.jc, label %bb.ak, label %bb.an, !prof !396

bb.ak:                                            ; preds = %bb.aj
  %i.jd = load i32, ptr %i.ix, align 4, !tbaa !295 ; 3 uses
  %i.je = icmp ugt i32 %i.iz, %i.jd
  br i1 %i.je, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.jf = sub nuw nsw i32 %i.iz, %i.jd
  %i.jg = mul i32 %i.jf, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !21

bb.am:                                            ; preds = %bb.al
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !296
  %i.jj = zext nneg i32 %i.jd to i64
  %i.jk = getelementptr inbounds nuw [12 x i8], ptr %i.ji, i64 %i.jj
  %i.jl = zext i32 %i.jg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jk, i8 0, i64 %i.jl, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !295
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i.i187, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !296
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
  store i32 %i.hu, ptr %i.jt, align 4, !tbaa !397
  %i.ju = load ptr, ptr %.0.i.i187, align 8, !tbaa !1425
  %i.jv = ptrtoint ptr %.0.i184 to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 4
  store i32 %i.jy, ptr %i.jz, align 4, !tbaa !400
  %i.ka = load i32, ptr %i.is, align 4, !tbaa !1354
  %.not.i11.i = icmp ult i32 %i.hu, %i.ka
  br i1 %.not.i11.i, label %bb.aq, label %bb.ap, !prof !142

bb.ap:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !1362
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
  %i.kf = load ptr, ptr %i.l, align 8, !tbaa !1417, !nonnull !198, !align !1422 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !1354
  %.not.i188 = icmp ult i32 %.0110, %i.kh
  br i1 %.not.i188, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, !prof !142

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !1362
  %i.kk = zext i32 %.0110 to i64
  %i.kl = getelementptr inbounds nuw [216 x i8], ptr %i.kj, i64 %i.kk
  br label %bb.as

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190: ; preds = %_ZNK5graph20LigatureSubstFormat116compact_liga_setERNS_24gsubgpos_graph_context_tEPNS_11LigatureSetERN22hb_serialize_context_t8object_tE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre346 = load ptr, ptr %i.l, align 8, !tbaa !1417 ; 2 uses
  %.phi.trans.insert347 = getelementptr inbounds nuw i8, ptr %.pre346, i64 4
  %.pre348 = load i32, ptr %.phi.trans.insert347, align 4, !tbaa !1354
  %i.km = icmp ult i32 %.0110, %.pre348
  br i1 %i.km, label %bb.as, label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, !prof !330

bb.as:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190
  %.0.i189407 = phi ptr [ %i.kl, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.kn = phi ptr [ %i.kf, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190.thread ], [ %.pre346, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !1362
  %i.kq = zext i32 %.0110 to i64
  %i.kr = getelementptr inbounds nuw [216 x i8], ptr %i.kp, i64 %i.kq
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192: ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190, %bb.as
  %.0.i189406 = phi ptr [ %.0.i189407, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %.0.i.i193 = phi ptr [ %i.kr, %bb.as ], [ @_hb_CrapPool, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit190 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !296 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i193, i64 36 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !295 ; 2 uses
  %i.kw = zext i32 %i.kv to i64
  %.idx.i194 = mul nuw nsw i64 %i.kw, 12
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.idx.i194
  %.not16.i = icmp eq i32 %i.kv, 0
  br i1 %.not16.i, label %_ZNK5graph20LigatureSubstFormat119clear_virtual_linksERNS_24gsubgpos_graph_context_tEj.exit, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i
  %.017.i = phi ptr [ %i.lh, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit15.i ], [ %i.kt, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i192 ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE11instantiateEPK16hb_subset_plan_t:bb.a
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !3065 ; 4 uses
  %.not.i26 = icmp eq ptr %i.x, null
  br i1 %.not.i26, label %.critedge25, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = mul i32 %i.w, 506952113
  %i.z = and i32 %i.y, 1073741823
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !3066
  %i.ab = urem i32 %i.z, %i.aa                    ; 2 uses
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = and i32 %i.af, 2
  %.not15.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not15.i.i.i, label %.critedge25, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.ah = load i32, ptr %i.j, align 4
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !137
  %i.aj = icmp eq i32 %i.ai, %i.w
  br i1 %i.aj, label %_ZNK12hb_hashmap_tIj22contour_point_vector_tLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %i.aq, align 4, !tbaa !137
  %i.al = icmp eq i32 %i.ak, %i.w
  br i1 %i.al, label %_ZNK12hb_hashmap_tIj22contour_point_vector_tLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !3067

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.01016.i20.i.i = phi i32 [ %i.ao, %bb.e ], [ %i.ab, %.lr.ph.i.i.i ]
  %.017.i19.i.i = phi i32 [ %i.am, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.am = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.an = add i32 %i.am, %.01016.i20.i.i
  %i.ao = and i32 %i.an, %i.ah                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 2
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %.critedge25, label %bb.e, !llvm.loop !3067

_ZNK12hb_hashmap_tIj22contour_point_vector_tLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.lcssa17.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i ], [ %i.as, %bb.e ]
  %i.au = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.e ]
  %i.av = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.av, label %bb.f, label %.critedge25

bb.f:                                             ; preds = %_ZNK12hb_hashmap_tIj22contour_point_vector_tLb0EE10fetch_itemERKjj.exit.i.i
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i8, ptr %i.k, align 2, !tbaa !197, !range !132, !noundef !198
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %i.m, align 4, !tbaa !170
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %i.n, align 4, !tbaa !391
  %i.bc = zext i32 %i.bb to i64
  %.not.i28 = icmp samesign ult i64 %indvars.iv, %i.bc
  br i1 %.not.i28, label %bb.j, label %bb.i, !prof !142

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(128) @_hb_NullPool, i64 128, i1 false)
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !390
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.bd, i64 %indvars.iv
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit: ; preds = %bb.i, %bb.j
  %.0.i29 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.be, %bb.j ]
  call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t16cull_unreachableERK12hb_hashmap_tIj6TripleLb0EE(ptr noundef nonnull align 8 dereferenceable(126) %.0.i29, ptr noundef nonnull align 8 dereferenceable(48) %i.l)
  br label %bb.k

bb.k:                                             ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit, %bb.g, %bb.f
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !391
  %i.bg = zext i32 %i.bf to i64
  %.not.i30 = icmp samesign ult i64 %indvars.iv, %i.bg
  br i1 %.not.i30, label %bb.m, label %bb.l, !prof !142

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(128) @_hb_NullPool, i64 128, i1 false)
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit32

bb.m:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !390
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.bh, i64 %indvars.iv
  br label %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit32

_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit32: ; preds = %bb.l, %bb.m
  %.0.i31 = phi ptr [ @_hb_CrapPool, %bb.l ], [ %i.bi, %bb.m ]
  %i.bj = call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t11instantiateERK12hb_hashmap_tIj6TripleLb0EERKS5_Ij15TripleDistancesLb0EERNS_18optimize_scratch_tEP15hb_alloc_pool_tP22contour_point_vector_tb(ptr noundef nonnull align 8 dereferenceable(126) %.0.i31, ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(304) %2, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ax, i1 noundef zeroext %i.f)
  br i1 %i.bj, label %bb.b, label %.critedge25

.critedge25:                                      ; preds = %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit32, %bb.b, %bb.c, %bb.d, %_ZNK12hb_hashmap_tIj22contour_point_vector_tLb0EE10fetch_itemERKjj.exit.i.i, %.lr.ph.i.i, %bb.a
  %.not2340 = phi i1 [ false, %.lr.ph.i.i ], [ true, %bb.a ], [ false, %_ZN11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EEixEi.exit32 ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %_ZNK12hb_hashmap_tIj22contour_point_vector_tLb0EE10fetch_itemERKjj.exit.i.i ]
  call void @_ZN2OT18optimize_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %.not2340
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE9serializeI17hb_sorted_array_tIK9hb_pair_tIjjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tRKNS_18glyph_variations_tIS2_EESB_jjb(ptr noundef nonnull align 1 dereferenceable(21) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !105
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 20
  br i1 %i.j, label %.critedge.i.i, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit, !prof !21

.critedge.i.i:                                    ; preds = %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread

_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !106 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 20
  store ptr %i.k, ptr %i.e, align 8, !tbaa !106
  %.not = icmp eq ptr %.pre.i.i, null
  br i1 %.not, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread, label %bb.c, !prof !330

bb.c:                                             ; preds = %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit
  store i16 256, ptr %.pre.i.i, align 1, !tbaa !331
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 2
  store i16 0, ptr %i.l, align 1, !tbaa !331
  %i.m = trunc i32 %5 to i16
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %i.o = tail call i16 @llvm.bswap.i16(i16 %i.m)
  store i16 %i.o, ptr %i.n, align 1, !tbaa !331
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %6, i32 65535)
  %i.p = trunc nuw i32 %.sroa.speculated to i16
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 12
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  store i16 %i.r, ptr %i.q, align 1, !tbaa !331
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !390  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !391  ; 2 uses
  %.not10.i = icmp eq i32 %i.v, 0
  br i1 %.not10.i, label %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 144115188075855871
  %i.y = and i64 %i.x, 144115188075855871         ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %xtraiter = and i64 %i.z, 7                     ; 3 uses
  %i.aa = icmp samesign ult i64 %i.y, 7
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.z, 288230376151711736
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ay, %.lr.ph.i ]
  %.0911.i = phi ptr [ %i.t, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i, i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3068
  %i.ad = add i32 %i.ac, %.012.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i, i64 248
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !3068
  %i.ag = add i32 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i, i64 376
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3068
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i, i64 504
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3068
  %i.am = add i32 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i, i64 632
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !3068
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i, i64 760
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !3068
  %i.as = add i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i, i64 888
  %i.au = load i32, ptr %i.at, align 8, !tbaa !3068
  %i.av = add i32 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1016
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !3068
  %i.ay = add i32 %i.ax, %i.av                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1024 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ay, %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit.unr-lcssa ]
  %.0911.i.epil.init = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.az, %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi i32 [ %i.bc, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0911.i.epil = phi ptr [ %i.bd, %.lr.ph.i.epil ], [ %.0911.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.epil, i64 120
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !3068
  %i.bc = add i32 %i.bb, %.012.i.epil             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.epil, i64 128
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !3069

_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit: ; preds = %.lr.ph.i.epil, %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ay, %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.i.epil ]
  %i.be = icmp ugt i32 %.lcssa, 131070
  %i.bf = or i1 %7, %i.be
  br label %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit

_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit: ; preds = %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit, %bb.c
  %.0.lcssa.i = phi i1 [ %7, %bb.c ], [ %i.bf, %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit.loopexit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 14
  %i.bh = select i1 %.0.lcssa.i, i16 256, i16 0
  store i16 %i.bh, ptr %i.bg, align 1, !tbaa !331
  %i.bi = add i32 %6, 1
  %i.bj = select i1 %.0.lcssa.i, i32 2, i32 1
  %i.bk = shl i32 %i.bi, %i.bj                    ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !105
  %.not.i45 = icmp eq i32 %i.bm, 0
  br i1 %.not.i45, label %bb.d, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread, !prof !142

bb.d:                                             ; preds = %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit
  %i.bn = icmp slt i32 %i.bk, 0
  br i1 %i.bn, label %.critedge.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !106 ; 4 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp slt i64 %i.bs, %i.bl
  br i1 %i.bt, label %.critedge.i, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, !prof !21

.critedge.i:                                      ; preds = %bb.e, %bb.d
  store i32 4, ptr %i.a, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit: ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bl
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !106
  %.not41 = icmp eq ptr %i.bp, null
  br i1 %.not41, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !3070 ; 2 uses
  %i.bx = trunc i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 6
  %i.bz = tail call i16 @llvm.bswap.i16(i16 %i.bx)
  store i16 %i.bz, ptr %i.by, align 1, !tbaa !331
  %.not42 = icmp eq i32 %i.bw, 0
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  store i32 0, ptr %i.ca, align 1, !tbaa !331
  %.pre = ptrtoint ptr %.pre.i.i to i64
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !727
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !726
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !106 ; 5 uses
  %i.cg = shl i32 %i.ce, 1                        ; 3 uses
  %i.ch = zext i32 %i.cg to i64                   ; 3 uses
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not11.i.i, label %bb.i, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread, !prof !142

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp ugt i32 %i.cg, 2147483646
  br i1 %i.cj, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.a, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.ck
  %i.co = icmp slt i64 %i.cn, %i.ch
  br i1 %i.co, label %.critedge.i.i.i, label %_ZN22hb_serialize_context_t11extend_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_S7_mb.exit.i, !prof !21

.critedge.i.i.i:                                  ; preds = %bb.k
  store i32 4, ptr %i.a, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread

_ZN22hb_serialize_context_t11extend_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_S7_mb.exit.i: ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch
  store ptr %i.cp, ptr %i.e, align 8, !tbaa !106
  %.not.i47 = icmp eq ptr %i.cf, null
  br i1 %.not.i47, label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread, label %bb.l, !prof !330

bb.l:                                             ; preds = %_ZN22hb_serialize_context_t11extend_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_S7_mb.exit.i
  %.not.i.i48 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i48, label %_ZNK10hb_array_tIKN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE4copyI22hb_serialize_context_tS5_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES6_PT_.exit, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr readonly align 1 %i.cc, i64 %i.ch, i1 false), !alias.scope !3072
  br label %_ZNK10hb_array_tIKN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE4copyI22hb_serialize_context_tS5_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES6_PT_.exit

_ZNK10hb_array_tIKN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE4copyI22hb_serialize_context_tS5_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES6_PT_.exit: ; preds = %bb.m, %bb.l
  %i.cq = ptrtoint ptr %i.cf to i64
  %i.cr = ptrtoint ptr %.pre.i.i to i64           ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %i.cv = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  store i32 %i.cv, ptr %i.cu, align 1, !tbaa !331
  br label %bb.n

bb.n:                                             ; preds = %_ZNK10hb_array_tIKN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE4copyI22hb_serialize_context_tS5_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES6_PT_.exit, %bb.g
  %.pre-phi = phi i64 [ %i.cr, %_ZNK10hb_array_tIKN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEEE4copyI22hb_serialize_context_tS5_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES6_PT_.exit ], [ %.pre, %bb.g ]
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !106
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %.pre-phi
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.db, ptr %i.da, align 1, !tbaa !331
  %i.dc = tail call noundef zeroext i1 @_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE24serialize_glyph_var_dataI17hb_sorted_array_tIK9hb_pair_tIjjEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_bjPc(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull %1, ptr %3, i64 %4, i1 noundef zeroext %.0.lcssa.i, i32 noundef %6, ptr noundef nonnull %i.bp)
  br label %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread

_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit.thread: ; preds = %bb.j, %bb.h, %_ZN22hb_serialize_context_t11extend_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_S7_mb.exit.i, %.critedge.i.i.i, %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit, %.critedge.i, %bb.a, %.critedge.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit, %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit, %bb.n
  %.4 = phi i1 [ false, %_ZNK2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE18compiled_byte_sizeEv.exit ], [ false, %_ZN22hb_serialize_context_t12allocate_minIN2OT9gvar_GVARINS1_7NumTypeILb1EtLj2EEELj1735811442EEEEEPT_v.exit ], [ %i.dc, %bb.n ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit ], [ false, %bb.a ], [ false, %.critedge.i.i ], [ false, %.critedge.i ], [ false, %.critedge.i.i.i ], [ false, %_ZN22hb_serialize_context_t11extend_sizeIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEEEEPT_S7_mb.exit.i ], [ false, %bb.h ], [ false, %bb.j ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !964
  %i.c = add i32 %i.b, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i.i.i, label %bb.b, label %_ZN15hb_alloc_pool_tD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !970  ; 3 uses
  %.not5.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not5.i.i.i.i, label %_ZN11hb_vector_tIS_IcLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !971
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11hb_vector_tIcLb0EED2Ev.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.k, %_ZN11hb_vector_tIcLb0EED2Ev.exit.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.046.i.i.i.i = phi i32 [ %i.j, %_ZN11hb_vector_tIcLb0EED2Ev.exit.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i ]
  %i.j = add i32 %.046.i.i.i.i, -1                ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !78
  %i.m = add i32 %i.l, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.c, label %_ZN11hb_vector_tIcLb0EED2Ev.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -12
  store i32 0, ptr %i.n, align 4, !tbaa !83
  %i.o = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  tail call void @hb_free(ptr noundef %i.p) #18
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit.i.i.i.i

_ZN11hb_vector_tIcLb0EED2Ev.exit.i.i.i.i:         ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIS_IcLb0EELb0EE13shrink_vectorEj.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !976
end_hunk_14
begin_hunk_15_@_ZN2OT18glyph_variations_tINS_7NumTypeILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tS6_:bb.a
  %.idx390 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i68, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.idx390
  %.not44381 = icmp eq i32 %i.im, 0
  br i1 %.not44381, label %._crit_edge, label %.lr.ph383

._crit_edge.loopexit:                             ; preds = %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE4pushIJRS4_EEEPS4_DpOT_.exit
  %.pre430 = load i32, ptr %i.a, align 4, !tbaa !137
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit67
  %i.io = phi i32 [ %.pre430, %._crit_edge.loopexit ], [ %i.if, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit67 ]
  %i.ip = add i32 %i.io, 1                        ; 3 uses
  store i32 %i.ip, ptr %i.a, align 4, !tbaa !137
  %i.iq = load i32, ptr %i.hi, align 8, !tbaa !3070
  %i.ir = icmp ult i32 %i.ip, %i.iq
  br i1 %i.ir, label %bb.y, label %._crit_edge387, !llvm.loop !3180

.lr.ph383:                                        ; preds = %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit67, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE4pushIJRS4_EEEPS4_DpOT_.exit
  %.0382 = phi ptr [ %i.jc, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE4pushIJRS4_EEEPS4_DpOT_.exit ], [ %i.ik, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit67 ] ; 2 uses
  %i.is = load i16, ptr %.0382, align 1
  %i.it = load i32, ptr %i.hs, align 4, !tbaa !726 ; 3 uses
  %i.iu = load i32, ptr %i.hn, align 8, !tbaa !725
  %.not.i69 = icmp slt i32 %i.it, %i.iu
  br i1 %.not.i69, label %.critedge.i71, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph383
  %i.iv = add i32 %i.it, 1
  %i.iw = call noundef zeroext i1 @_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i32 noundef %i.iv, i1 noundef zeroext false)
  br i1 %i.iw, label %..critedge_crit_edge.i, label %bb.ae, !prof !142

..critedge_crit_edge.i:                           ; preds = %bb.ad
  %.pre.i = load i32, ptr %i.hs, align 4, !tbaa !726
  br label %.critedge.i71

bb.ae:                                            ; preds = %bb.ad
  store i16 %i.ht, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE4pushIJRS4_EEEPS4_DpOT_.exit

.critedge.i71:                                    ; preds = %..critedge_crit_edge.i, %.lr.ph383
  %i.ix = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.it, %.lr.ph383 ] ; 2 uses
  %i.iy = load ptr, ptr %i.hu, align 8, !tbaa !727
  %i.iz = add i32 %i.ix, 1
  store i32 %i.iz, ptr %i.hs, align 4, !tbaa !726
  %i.ja = zext i32 %i.ix to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %i.ja
  store i16 %i.is, ptr %i.jb, align 1
  br label %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE4pushIJRS4_EEEPS4_DpOT_.exit

_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE4pushIJRS4_EEEPS4_DpOT_.exit: ; preds = %bb.ae, %.critedge.i71
  %i.jc = getelementptr inbounds nuw i8, ptr %.0382, i64 2 ; 2 uses
  %.not44 = icmp eq ptr %i.jc, %i.in
  br i1 %.not44, label %._crit_edge.loopexit, label %.lr.ph383

"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit.thread": ; preds = %.lr.ph.split.us.split.us.split.us.i.i, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EE14realloc_vectorIS9_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS9_j11hb_priorityILj0EE.exit.thread53.i134, %.critedge.i139, %._crit_edge387, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit, %"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit"
  %.sroa.49.4321 = phi ptr [ %.sroa.49.3, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EE14realloc_vectorIS9_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS9_j11hb_priorityILj0EE.exit.thread53.i134 ], [ %.sroa.49.12.ph, %"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit" ], [ %.sroa.49.12.ph, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit ], [ %.sroa.49.12.ph, %._crit_edge387 ], [ %.sroa.49.3, %.critedge.i139 ], [ %.sroa.49.3, %.lr.ph.split.us.split.us.split.us.i.i ]
  %.sroa.0187.4320 = phi i32 [ %i.gi, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EE14realloc_vectorIS9_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS9_j11hb_priorityILj0EE.exit.thread53.i134 ], [ %.sroa.0187.8.ph, %"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit" ], [ %.sroa.0187.8.ph, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit ], [ %.sroa.0187.8.ph, %._crit_edge387 ], [ %i.fy, %.critedge.i139 ], [ %.sroa.0187.3, %.lr.ph.split.us.split.us.split.us.i.i ]
  %.6 = phi i1 [ false, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EE14realloc_vectorIS9_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS9_j11hb_priorityILj0EE.exit.thread53.i134 ], [ true, %"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit" ], [ false, %_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEixEi.exit ], [ true, %._crit_edge387 ], [ false, %.critedge.i139 ], [ false, %.lr.ph.split.us.split.us.split.us.i.i ] ; 2 uses
  %i.jd = add i32 %.sroa.0187.4320, -1
  %spec.select.i.i.i = icmp ult i32 %i.jd, -2
  br i1 %spec.select.i.i.i, label %bb.af, label %.critedge

bb.af:                                            ; preds = %"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit.thread"
  call void @hb_free(ptr noundef %.sroa.49.4321) #18
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEERSC_EppEv.exit.i.us.i.i.i.i.i, %.preheader.i.preheader.us.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEERSC_EppEv.exit.i.i.i.i.i.us.i.i, %bb.a, %bb.p, %bb.af, %"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit.thread", %.critedge47
  %.7 = phi i1 [ false, %.critedge47 ], [ true, %bb.p ], [ %.6, %"_ZN11hb_vector_tI9hb_pair_tIPKS_IN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjELb0EEC2I16hb_filter_iter_tI13hb_map_iter_tISC_I10hb_array_tIN12hb_hashmap_tIS8_jLb0EE6item_tEEMSH_KFbvERK4$_19LPv0EEMSH_KFS9_vEL24hb_function_sortedness_t0ELSO_0EEZNS1_18glyph_variations_tINS3_ILb1EtLj2EEEE21compile_shared_tuplesERK8hb_map_tSZ_EUlRKS9_E_SN_LSO_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSO_0EEERKS15_.exit.thread" ], [ false, %bb.a ], [ %.6, %bb.af ], [ true, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEERSC_EppEv.exit.i.us.i.i.i.i.i ], [ true, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS3_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_tEERSC_EppEv.exit.i.i.i.i.i.us.i.i ], [ true, %.preheader.i.preheader.us.i.i ], [ false, %.lr.ph ]
  store atomic i32 -57005, ptr %4 monotonic, align 8
  %i.je = load atomic ptr, ptr %i.c acquire, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEvPT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(56) %i.je)
  %i.jg = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.je) #18 ; 0 uses
  call void @hb_free(ptr noundef nonnull %i.je) #18
  store atomic ptr null, ptr %i.c monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEvPT_.exit.i.i

_ZL14hb_object_finiI12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEvPT_.exit.i.i: ; preds = %bb.ag, %.critedge
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !3029 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i72, label %_ZN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EED2Ev.exit, label %bb.ah, !prof !21

bb.ah:                                            ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEvPT_.exit.i.i
  call void @hb_free(ptr noundef nonnull %i.jh) #18
  br label %_ZN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EED2Ev.exit

_ZN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EED2Ev.exit: ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS2_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEEvPT_.exit.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t13compile_bytesERK8hb_map_tS7_bbPK12hb_hashmap_tIPK11hb_vector_tINS_7HBFixedINS1_ILb1EsLj2EEELj14EEELb0EEjLb0EEP15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(126) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %struct.hb_vector_t.19, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !392
  %.not40 = icmp eq i32 %i.b, 0
  br i1 %.not40, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t22compile_all_point_setsEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br i1 %i.c, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3068
  %i.f = add i32 %i.e, 4
  store i32 %i.f, ptr %i.d, align 8, !tbaa !3068
  br i1 %3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t18find_shared_pointsEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3181 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !411
  %i.k = load i32, ptr %i.d, align 8, !tbaa !3068
  %i.l = add i32 %i.k, %i.j
  store i32 %i.l, ptr %i.d, align 8, !tbaa !3068
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !542  ; 2 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !392  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = mul nuw nsw i64 %i.p, 160
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not3158 = icmp eq i32 %i.o, 0
  br i1 %.not3158, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.r
  %.02559 = phi ptr [ %i.n, %.lr.ph ], [ %i.dt, %bb.r ] ; 11 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !538  ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %bb.h, !prof !268

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %.02559, i64 52
  %.val.val.i = load i32, ptr %i.w, align 4, !tbaa !664 ; 4 uses
  %i.x = getelementptr i8, ptr %.02559, i64 56
  %.val.val5.i = load ptr, ptr %i.x, align 8, !tbaa !663 ; 4 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.val.i to i64 ; 4 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.val.val.i, 0  ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h
  %xtraiter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 3 ; 3 uses
  %i.y = icmp ult i32 %.val.val.i, 4
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %.01012.i.i.i.i.i = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i ]
  %.010.val.i.i.i.i.i = load i8, ptr %.01012.i.i.i.i.i, align 1, !tbaa !226, !range !132, !noundef !198
  %i.z = zext nneg i8 %.010.val.i.i.i.i.i to i32
  %i.aa = mul nuw nsw i32 %i.z, -1640531535
  %i.ab = xor i32 %i.aa, %.013.i.i.i.i.i
  %i.ac = mul i32 %i.ab, 16777619
  %i.ad = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 1
  %.010.val.i.i.i.i.i.1 = load i8, ptr %i.ad, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ae = zext nneg i8 %.010.val.i.i.i.i.i.1 to i32
  %i.af = mul nuw nsw i32 %i.ae, -1640531535
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = mul i32 %i.ag, 16777619
  %i.ai = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 2
  %.010.val.i.i.i.i.i.2 = load i8, ptr %i.ai, align 1, !tbaa !226, !range !132, !noundef !198
  %i.aj = zext nneg i8 %.010.val.i.i.i.i.i.2 to i32
  %i.ak = mul nuw nsw i32 %i.aj, -1640531535
  %i.al = xor i32 %i.ak, %i.ah
  %i.am = mul i32 %i.al, 16777619
  %i.an = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 3
  %.010.val.i.i.i.i.i.3 = load i8, ptr %i.an, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ao = zext nneg i8 %.010.val.i.i.i.i.i.3 to i32
  %i.ap = mul nuw nsw i32 %i.ao, -1640531535
  %i.aq = xor i32 %i.ap, %i.am
  %i.ar = mul i32 %i.aq, 16777619                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", label %.lr.ph.i.i.i.i.i

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %.01012.i.i.i.i.i.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.epil = phi i32 [ %i.aw, %.lr.ph.i.i.i.i.i.epil ], [ %.013.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.01012.i.i.i.i.i.epil = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.epil ], [ %.01012.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.010.val.i.i.i.i.i.epil = load i8, ptr %.01012.i.i.i.i.i.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.at = zext nneg i8 %.010.val.i.i.i.i.i.epil to i32
  %i.au = mul nuw nsw i32 %i.at, -1640531535
  %i.av = xor i32 %i.au, %.013.i.i.i.i.i.epil
  %i.aw = mul i32 %i.av, 16777619                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !3182

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i.epil, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa"
  %.lcssa = phi i32 [ %i.ar, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ], [ %i.aw, %.lr.ph.i.i.i.i.i.epil ]
  %i.ay = and i32 %.lcssa, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", %bb.h
  %.0.lcssa.i.i.i.i.i = phi i32 [ 69346085, %bb.h ], [ %i.ay, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i" ] ; 3 uses
  %i.az = load i32, ptr %i.s, align 8, !tbaa !3183
  %i.ba = urem i32 %.0.lcssa.i.i.i.i.i, %i.az     ; 3 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8            ; 3 uses
  %i.bf = and i32 %i.be, 2
  %.not22.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not22.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %.lr.ph.i.i.i, !prof !268

.lr.ph.i.i.i:                                     ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"
  %i.bg = load i32, ptr %i.t, align 4             ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i.i.split.us, label %.lr.ph.i.i.i.split

.lr.ph.i.i.i.split.us:                            ; preds = %.lr.ph.i.i.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us
  %i.bh = phi i32 [ %i.bu, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ %i.be, %.lr.ph.i.i.i ] ; 2 uses
  %i.bi = phi ptr [ %i.bs, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ %i.bc, %.lr.ph.i.i.i ] ; 2 uses
  %.024.i.i.i.us = phi i32 [ %i.bo, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ 0, %.lr.ph.i.i.i ]
  %.01223.i.i.i.us = phi i32 [ %i.bq, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ %i.ba, %.lr.ph.i.i.i ]
  %i.bj = lshr i32 %i.bh, 2
  %i.bk = icmp eq i32 %i.bj, %.0.lcssa.i.i.i.i.i
  br i1 %i.bk, label %bb.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us

bb.i:                                             ; preds = %.lr.ph.i.i.i.split.us
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !3184
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !664
  %.not.i.i.i.i.i.i.us = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us: ; preds = %bb.i, %.lr.ph.i.i.i.split.us
  %i.bo = add i32 %.024.i.i.i.us, 1               ; 2 uses
  %i.bp = add i32 %i.bo, %.01223.i.i.i.us
  %i.bq = and i32 %i.bp, %i.bg                    ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.bv = and i32 %i.bu, 2
  %.not.i.i.i.us = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.us, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %.lr.ph.i.i.i.split.us, !prof !268, !llvm.loop !3187

.lr.ph.i.i.i.split:                               ; preds = %.lr.ph.i.i.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i
  %i.bw = phi i32 [ %i.cp, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.be, %.lr.ph.i.i.i ] ; 2 uses
  %i.bx = phi ptr [ %i.cn, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.bc, %.lr.ph.i.i.i ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.cj, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %.01223.i.i.i = phi i32 [ %i.cl, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.ba, %.lr.ph.i.i.i ]
  %i.by = lshr i32 %i.bw, 2
  %i.bz = icmp eq i32 %i.by, %.0.lcssa.i.i.i.i.i
  br i1 %i.bz, label %bb.j, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.split
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !3184 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !663
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !664
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.val.i, %i.ce
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3188

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %bb.k
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.i.i.i.i.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !226, !range !132, !noundef !198
  %.not10.i.i.i.i.i.i = icmp eq i8 %i.cg, %i.ci
  br i1 %.not10.i.i.i.i.i.i, label %bb.k, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i.split
  %i.cj = add i32 %.024.i.i.i, 1                  ; 2 uses
  %i.ck = add i32 %i.cj, %.01223.i.i.i
  %i.cl = and i32 %i.ck, %i.bg                    ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %i.cq = and i32 %i.cp, 2
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %.lr.ph.i.i.i.split, !prof !268, !llvm.loop !3187

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %bb.i, %bb.k
  %i.cr = phi i32 [ %i.bw, %bb.k ], [ %i.bh, %bb.i ]
  %i.cs = phi ptr [ %i.bx, %bb.k ], [ %i.bi, %bb.i ] ; 2 uses
  %i.ct = trunc i32 %i.cr to i1
  br i1 %i.ct, label %bb.l, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread

bb.l:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 20 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !411
  %.not32 = icmp eq i32 %i.cw, 0
  br i1 %.not32, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %.02559, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !660
  %i.cz = getelementptr inbounds nuw i8, ptr %.02559, i64 68
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !579
  %.sroa.2.8.insert.ext.i.i.i.i8.i = zext i32 %i.da to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.02559, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !660
  %i.dd = getelementptr inbounds nuw i8, ptr %.02559, i64 84
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !579
  %.sroa.2.8.insert.ext.i.i.i.i11.i = zext i32 %i.de to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.02559, i64 112
  %i.dg = call noundef zeroext i1 @_ZN2OT13tuple_delta_t14compile_deltasE10hb_array_tIKbES1_IKfES5_R11hb_vector_tIhLb0EERS6_IiLb0EEP15hb_alloc_pool_t(ptr %.val.val5.i, i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, ptr %i.cy, i64 %.sroa.2.8.insert.ext.i.i.i.i8.i, ptr %i.dc, i64 %.sroa.2.8.insert.ext.i.i.i.i11.i, ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %6)
  br i1 %i.dg, label %bb.n, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %i.u, align 8, !tbaa !3181
  %.not33 = icmp eq ptr %i.cu, %i.dh
  br i1 %.not33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = load i32, ptr %i.cv, align 4, !tbaa !411
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.dj = phi i32 [ %i.di, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.dk = call noundef zeroext i1 @_ZN2OT13tuple_delta_t24compile_tuple_var_headerERK8hb_map_tjS3_PK12hb_hashmap_tIPK11hb_vector_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEP15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(160) %.02559, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.dj, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %5, ptr noundef %6)
  br i1 %i.dk, label %bb.q, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %.02559, i64 100
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3189
  %i.dn = add i32 %i.dm, %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %.02559, i64 116
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3190
  %i.dq = add i32 %i.dn, %i.dp
  %i.dr = load i32, ptr %i.d, align 8, !tbaa !3068
  %i.ds = add i32 %i.dq, %i.dr
  store i32 %i.ds, ptr %i.d, align 8, !tbaa !3068
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %.02559, i64 160 ; 2 uses
  %.not31 = icmp eq ptr %i.dt, %i.q
  br i1 %.not31, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.r, %bb.f
  br i1 %4, label %bb.s, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread

bb.s:                                             ; preds = %.critedge
  %i.du = load i32, ptr %i.d, align 8, !tbaa !3068 ; 2 uses
  %i.dv = and i32 %i.du, 1
  %.not34 = icmp eq i32 %i.dv, 0
  br i1 %.not34, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 1, ptr %i.dw, align 4, !tbaa !3191
  %i.dx = add i32 %i.du, 1
  store i32 %i.dx, ptr %i.d, align 8, !tbaa !3068
  br label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread: ; preds = %bb.p, %bb.m, %bb.g, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us, %.critedge, %bb.s, %bb.t
  %.not3151 = phi i1 [ false, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ true, %bb.t ], [ true, %.critedge ], [ true, %bb.s ], [ false, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ false, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i ], [ false, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i" ], [ false, %bb.g ], [ false, %bb.m ], [ false, %bb.p ]
  %i.dy = load i32, ptr %7, align 8, !tbaa !417
  %i.dz = add i32 %i.dy, -1
end_hunk_15
begin_hunk_16_@_ZN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE13set_with_hashIRKS8_RjEEbOT_jOT0_b:bb.a
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !726 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !727
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !726 ; 2 uses
  %.sroa.2.8.insert.ext.i.i3.i.i = zext i32 %i.ai to i64
  %.not.i.i.i = icmp eq i32 %i.ai, %i.ae
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_teqERKS8_.exit

.preheader.i.i.i:                                 ; preds = %bb.d
  %i.aj = icmp eq i32 %i.ae, 0
  br i1 %i.aj, label %.loopexit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %.sroa.2.8.insert.ext.i.i3.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !3139

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.e
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.e ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i
  %i.am = load i16, ptr %i.ak, align 1, !tbaa !264
  %i.an = load i16, ptr %i.al, align 1, !tbaa !264
  %.not10.i.i.i = icmp eq i16 %i.am, %i.an
  br i1 %.not10.i.i.i, label %bb.e, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_teqERKS8_.exit

.loopexit:                                        ; preds = %.preheader.i.i.i, %bb.e
  br i1 %4, label %.loopexit40, label %bb.j

_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_teqERKS8_.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.lr.ph
  %i.ao = trunc i32 %i.v to i1
  %i.ap = icmp ne i32 %.03257, -1
  %or.cond.not = select i1 %i.ao, i1 true, i1 %i.ap
  %spec.select = select i1 %or.cond.not, i32 %.03257, i32 %.03158 ; 2 uses
  %i.aq = add i32 %.060, 1                        ; 3 uses
  %i.ar = add i32 %i.aq, %.03158
  %i.as = load i32, ptr %i.h, align 4, !tbaa !3142
  %i.at = and i32 %i.as, %i.ar                    ; 3 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = and i32 %i.ax, 2
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.loopexit40, label %.lr.ph, !llvm.loop !3200

.loopexit40:                                      ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_teqERKS8_.exit, %.loopexit
  %.03254 = phi i32 [ %.03257, %.loopexit ], [ %spec.select, %_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_teqERKS8_.exit ]
  %.03150 = phi i32 [ %.03158, %.loopexit ], [ %i.at, %_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_teqERKS8_.exit ]
  %.03046 = phi i32 [ %.060, %.loopexit ], [ %i.aq, %_ZNK12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE6item_teqERKS8_.exit ]
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
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !3141
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !3141
  %i.bi = load i32, ptr %i.bd, align 8
  %i.bj = and i32 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3144
  %i.bm = sub i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !3144
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit40.thread
  %i.bn = load ptr, ptr %1, align 8, !tbaa !3172
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !3136
  %i.bo = load i32, ptr %3, align 4, !tbaa !137
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3145
  %i.bq = shl nuw i32 %i.k, 2
  %i.br = or disjoint i32 %i.bq, 3
  store i32 %i.br, ptr %i.bd, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !137
  %i.bu = add <2 x i32> %i.bt, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !137
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !3146
  %i.bx = zext i16 %i.bw to i32
  %i.by = icmp ugt i32 %.0304681, %i.bx
  br i1 %i.by, label %bb.h, label %bb.j, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.bz = extractelement <2 x i32> %i.bu, i64 1
  %i.ca = shl i32 %i.bz, 3
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !3142 ; 2 uses
  %i.cc = icmp ugt i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = add i32 %i.cb, -8
  %i.ce = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIN2OT7HBFixedINS1_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.cd) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i, %bb.h, %bb.g, %bb.c, %bb.a
  %.134 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %.loopexit ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  ret i1 %.134
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t22compile_all_point_setsEv(ptr noundef nonnull align 8 dereferenceable(126) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %1 = alloca %struct.hb_vector_t.284, align 8    ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !542  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !392  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = mul nuw nsw i64 %i.h, 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not107 = icmp eq i32 %i.g, 0
  br i1 %.not107, label %.loopexit88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.011108 = phi ptr [ %i.e, %.lr.ph ], [ %i.ia, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.t = getelementptr inbounds nuw i8, ptr %.011108, i64 48 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !3201
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !538  ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %.011108, i64 52
  %.val.val.i = load i32, ptr %i.v, align 4, !tbaa !664 ; 7 uses
  %i.w = getelementptr i8, ptr %.011108, i64 56
  %.val.val5.i = load ptr, ptr %i.w, align 8, !tbaa !663 ; 8 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.val.i to i64 ; 8 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.val.val.i, 0  ; 4 uses
  br i1 %.not11.i.i.i.i.i, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %xtraiter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 3 ; 3 uses
  %i.x = icmp ult i32 %.val.val.i, 4
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %.01012.i.i.i.i.i = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i ]
  %.010.val.i.i.i.i.i = load i8, ptr %.01012.i.i.i.i.i, align 1, !tbaa !226, !range !132, !noundef !198
  %i.y = zext nneg i8 %.010.val.i.i.i.i.i to i32
  %i.z = mul nuw nsw i32 %i.y, -1640531535
  %i.aa = xor i32 %i.z, %.013.i.i.i.i.i
  %i.ab = mul i32 %i.aa, 16777619
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 1
  %.010.val.i.i.i.i.i.1 = load i8, ptr %i.ac, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ad = zext nneg i8 %.010.val.i.i.i.i.i.1 to i32
  %i.ae = mul nuw nsw i32 %i.ad, -1640531535
  %i.af = xor i32 %i.ae, %i.ab
  %i.ag = mul i32 %i.af, 16777619
  %i.ah = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 2
  %.010.val.i.i.i.i.i.2 = load i8, ptr %i.ah, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ai = zext nneg i8 %.010.val.i.i.i.i.i.2 to i32
  %i.aj = mul nuw nsw i32 %i.ai, -1640531535
  %i.ak = xor i32 %i.aj, %i.ag
  %i.al = mul i32 %i.ak, 16777619
  %i.am = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 3
  %.010.val.i.i.i.i.i.3 = load i8, ptr %i.am, align 1, !tbaa !226, !range !132, !noundef !198
  %i.an = zext nneg i8 %.010.val.i.i.i.i.i.3 to i32
  %i.ao = mul nuw nsw i32 %i.an, -1640531535
  %i.ap = xor i32 %i.ao, %i.al
  %i.aq = mul i32 %i.ap, 16777619                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", label %.lr.ph.i.i.i.i.i

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %.01012.i.i.i.i.i.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.epil = phi i32 [ %i.av, %.lr.ph.i.i.i.i.i.epil ], [ %.013.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.01012.i.i.i.i.i.epil = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.epil ], [ %.01012.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.010.val.i.i.i.i.i.epil = load i8, ptr %.01012.i.i.i.i.i.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.as = zext nneg i8 %.010.val.i.i.i.i.i.epil to i32
  %i.at = mul nuw nsw i32 %i.as, -1640531535
  %i.au = xor i32 %i.at, %.013.i.i.i.i.i.epil
  %i.av = mul i32 %i.au, 16777619                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !3202

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i.epil, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa"
  %.lcssa = phi i32 [ %i.aq, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ], [ %i.av, %.lr.ph.i.i.i.i.i.epil ]
  %i.ax = and i32 %.lcssa, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", %bb.c
  %.0.lcssa.i.i.i.i.i = phi i32 [ 69346085, %bb.c ], [ %i.ax, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i" ] ; 2 uses
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !3183
  %i.az = urem i32 %.0.lcssa.i.i.i.i.i, %i.ay     ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = and i32 %i.bd, 2
  %.not22.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not22.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"
  %i.bf = load i32, ptr %i.m, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i, %.lr.ph.i.i.i
  %i.bg = phi i32 [ %i.bd, %.lr.ph.i.i.i ], [ %i.bz, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ] ; 2 uses
  %i.bh = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %i.bx, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ]
  %.024.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.bt, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ]
  %.01223.i.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i ], [ %i.bv, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ]
  %i.bi = lshr i32 %i.bg, 2
  %i.bj = icmp eq i32 %i.bi, %.0.lcssa.i.i.i.i.i
  br i1 %i.bj, label %bb.e, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !3184 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !663
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !664
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.val.i, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.e
  br i1 %.not11.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit, label %.lr.ph.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3188

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.f
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.f ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i.i.i.i.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !226, !range !132, !noundef !198
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !226, !range !132, !noundef !198
  %.not10.i.i.i.i.i.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not10.i.i.i.i.i.i, label %bb.f, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.d
  %i.bt = add i32 %.024.i.i.i, 1                  ; 2 uses
  %i.bu = add i32 %i.bt, %.01223.i.i.i
  %i.bv = and i32 %i.bu, %i.bf                    ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = and i32 %i.bz, 2
  %.not.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread, label %bb.d, !llvm.loop !3187

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit: ; preds = %.preheader.i.i.i.i.i.i, %bb.f
  %i.cb = trunc i32 %i.bg to i1
  br i1 %i.cb, label %bb.g, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread

bb.g:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !544 ; 3 uses
  %.not.i17 = icmp eq ptr %i.cc, null
  br i1 %.not.i17, label %.thread82, label %bb.h, !prof !268

bb.h:                                             ; preds = %bb.g
  br i1 %.not11.i.i.i.i.i, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i29", label %.lr.ph.i.i.i.i.i23.preheader

.lr.ph.i.i.i.i.i23.preheader:                     ; preds = %bb.h
  %xtraiter178 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 3 ; 3 uses
  %i.cd = icmp ult i32 %.val.val.i, 4
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i23.epil.preheader, label %.lr.ph.i.i.i.i.i23.preheader.new

.lr.ph.i.i.i.i.i23.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i23.preheader
  %unroll_iter183 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %.lr.ph.i.i.i.i.i23, %.lr.ph.i.i.i.i.i23.preheader.new
  %.013.i.i.i.i.i24 = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i23.preheader.new ], [ %i.cw, %.lr.ph.i.i.i.i.i23 ]
  %.01012.i.i.i.i.i25 = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i23.preheader.new ], [ %i.cx, %.lr.ph.i.i.i.i.i23 ] ; 5 uses
  %niter184 = phi i64 [ 0, %.lr.ph.i.i.i.i.i23.preheader.new ], [ %niter184.next.3, %.lr.ph.i.i.i.i.i23 ]
  %.010.val.i.i.i.i.i26 = load i8, ptr %.01012.i.i.i.i.i25, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ce = zext nneg i8 %.010.val.i.i.i.i.i26 to i32
  %i.cf = mul nuw nsw i32 %i.ce, -1640531535
  %i.cg = xor i32 %i.cf, %.013.i.i.i.i.i24
  %i.ch = mul i32 %i.cg, 16777619
  %i.ci = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i25, i64 1
  %.010.val.i.i.i.i.i26.1 = load i8, ptr %i.ci, align 1, !tbaa !226, !range !132, !noundef !198
  %i.cj = zext nneg i8 %.010.val.i.i.i.i.i26.1 to i32
  %i.ck = mul nuw nsw i32 %i.cj, -1640531535
  %i.cl = xor i32 %i.ck, %i.ch
  %i.cm = mul i32 %i.cl, 16777619
  %i.cn = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i25, i64 2
  %.010.val.i.i.i.i.i26.2 = load i8, ptr %i.cn, align 1, !tbaa !226, !range !132, !noundef !198
  %i.co = zext nneg i8 %.010.val.i.i.i.i.i26.2 to i32
  %i.cp = mul nuw nsw i32 %i.co, -1640531535
  %i.cq = xor i32 %i.cp, %i.cm
  %i.cr = mul i32 %i.cq, 16777619
  %i.cs = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i25, i64 3
  %.010.val.i.i.i.i.i26.3 = load i8, ptr %i.cs, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ct = zext nneg i8 %.010.val.i.i.i.i.i26.3 to i32
  %i.cu = mul nuw nsw i32 %i.ct, -1640531535
  %i.cv = xor i32 %i.cu, %i.cr
  %i.cw = mul i32 %i.cv, 16777619                 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i25, i64 4 ; 2 uses
  %niter184.next.3 = add nuw i64 %niter184, 4     ; 2 uses
  %niter184.ncmp.3 = icmp eq i64 %niter184.next.3, %unroll_iter183
  br i1 %niter184.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28.unr-lcssa", label %.lr.ph.i.i.i.i.i23

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i23
  %lcmp.mod180.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod180.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28", label %.lr.ph.i.i.i.i.i23.epil.preheader

.lr.ph.i.i.i.i.i23.epil.preheader:                ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28.unr-lcssa", %.lr.ph.i.i.i.i.i23.preheader
  %.013.i.i.i.i.i24.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.cw, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28.unr-lcssa" ]
  %.01012.i.i.i.i.i25.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.cx, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28.unr-lcssa" ]
  %lcmp.mod182 = icmp ne i64 %xtraiter178, 0
  call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.i.i.i.i.i23.epil

.lr.ph.i.i.i.i.i23.epil:                          ; preds = %.lr.ph.i.i.i.i.i23.epil, %.lr.ph.i.i.i.i.i23.epil.preheader
  %.013.i.i.i.i.i24.epil = phi i32 [ %i.db, %.lr.ph.i.i.i.i.i23.epil ], [ %.013.i.i.i.i.i24.epil.init, %.lr.ph.i.i.i.i.i23.epil.preheader ]
  %.01012.i.i.i.i.i25.epil = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i23.epil ], [ %.01012.i.i.i.i.i25.epil.init, %.lr.ph.i.i.i.i.i23.epil.preheader ] ; 2 uses
  %epil.iter179 = phi i64 [ %epil.iter179.next, %.lr.ph.i.i.i.i.i23.epil ], [ 0, %.lr.ph.i.i.i.i.i23.epil.preheader ]
  %.010.val.i.i.i.i.i26.epil = load i8, ptr %.01012.i.i.i.i.i25.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.cy = zext nneg i8 %.010.val.i.i.i.i.i26.epil to i32
  %i.cz = mul nuw nsw i32 %i.cy, -1640531535
  %i.da = xor i32 %i.cz, %.013.i.i.i.i.i24.epil
  %i.db = mul i32 %i.da, 16777619                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i25.epil, i64 1
  %epil.iter179.next = add i64 %epil.iter179, 1   ; 2 uses
  %epil.iter179.cmp.not = icmp eq i64 %epil.iter179.next, %xtraiter178
  br i1 %epil.iter179.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28", label %.lr.ph.i.i.i.i.i23.epil, !llvm.loop !3203

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28": ; preds = %.lr.ph.i.i.i.i.i23.epil, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28.unr-lcssa"
  %.lcssa166 = phi i32 [ %i.cw, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28.unr-lcssa" ], [ %i.db, %.lr.ph.i.i.i.i.i23.epil ]
  %i.dd = and i32 %.lcssa166, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i29"

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i29": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28", %bb.h
  %.0.lcssa.i.i.i.i.i30 = phi i32 [ 69346085, %bb.h ], [ %i.dd, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i28" ] ; 2 uses
  %i.de = load i32, ptr %i.p, align 8, !tbaa !3204
  %i.df = urem i32 %.0.lcssa.i.i.i.i.i30, %i.de   ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %i.dk = and i32 %i.dj, 2
  %.not22.i.i.i31 = icmp eq i32 %i.dk, 0
  br i1 %.not22.i.i.i31, label %.thread82, label %.lr.ph.i.i.i32, !prof !268

.lr.ph.i.i.i32:                                   ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i29"
  %i.dl = load i32, ptr %i.q, align 4
  br label %bb.i

bb.i:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i, %.lr.ph.i.i.i32
  %i.dm = phi i32 [ %i.dj, %.lr.ph.i.i.i32 ], [ %i.ef, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ] ; 3 uses
  %i.dn = phi ptr [ %i.dh, %.lr.ph.i.i.i32 ], [ %i.ed, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ] ; 3 uses
  %.024.i.i.i33 = phi i32 [ 0, %.lr.ph.i.i.i32 ], [ %i.dz, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %.01223.i.i.i34 = phi i32 [ %i.df, %.lr.ph.i.i.i32 ], [ %i.eb, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %i.do = lshr i32 %i.dm, 2
  %i.dp = icmp eq i32 %i.do, %.0.lcssa.i.i.i.i.i30
  br i1 %i.dp, label %bb.j, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !3205 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !663
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !664
  %.not.i.i.i.i.i.i37 = icmp eq i32 %.val.val.i, %i.du
  br i1 %.not.i.i.i.i.i.i37, label %.preheader.i.i.i.i.i.i38, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

.preheader.i.i.i.i.i.i38:                         ; preds = %bb.j
  br i1 %.not11.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i.thread, label %.lr.ph.i.i.i.i.i.i39

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i39
  %indvars.iv.next.i.i.i.i.i.i42 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i40, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i43 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i42, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i43, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i39, !llvm.loop !3188

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.preheader.i.i.i.i.i.i38, %bb.k
  %indvars.iv.i.i.i.i.i.i40 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i42, %bb.k ], [ 0, %.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.i.i.i.i.i.i40
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !226, !range !132, !noundef !198
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i40
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !226, !range !132, !noundef !198
  %.not10.i.i.i.i.i.i41 = icmp eq i8 %i.dw, %i.dy
  br i1 %.not10.i.i.i.i.i.i41, label %bb.k, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i39, %bb.j, %bb.i
  %i.dz = add i32 %.024.i.i.i33, 1                ; 2 uses
  %i.ea = add i32 %i.dz, %.01223.i.i.i34
  %i.eb = and i32 %i.ea, %i.dl                    ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.ee, align 8            ; 2 uses
  %i.eg = and i32 %i.ef, 2
  %.not.i.i.i35 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i35, label %.thread82, label %bb.i, !prof !268, !llvm.loop !3207

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %bb.k
  %i.eh = trunc i32 %i.dm to i1
  br i1 %i.eh, label %bb.l, label %.thread82

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i.thread: ; preds = %.preheader.i.i.i.i.i.i38
  %i.ei = trunc i32 %i.dm to i1
  br i1 %i.ei, label %.thread, label %.thread82

.thread:                                          ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !137
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.b, align 4, !tbaa !137
  br label %.loopexit

bb.l:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.en = load i32, ptr %i.em, align 4, !tbaa !137
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.b, align 4, !tbaa !137
  %xtraiter185 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 3 ; 3 uses
  %i.ep = icmp ult i32 %.val.val.i, 4
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i48.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter190 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48, %.new
  %.013.i.i.i.i.i49 = phi i32 [ -2078137563, %.new ], [ %i.fi, %.lr.ph.i.i.i.i.i48 ]
  %.01012.i.i.i.i.i50 = phi ptr [ %.val.val5.i, %.new ], [ %i.fj, %.lr.ph.i.i.i.i.i48 ] ; 5 uses
  %niter191 = phi i64 [ 0, %.new ], [ %niter191.next.3, %.lr.ph.i.i.i.i.i48 ]
  %.010.val.i.i.i.i.i51 = load i8, ptr %.01012.i.i.i.i.i50, align 1, !tbaa !226, !range !132, !noundef !198
  %i.eq = zext nneg i8 %.010.val.i.i.i.i.i51 to i32
  %i.er = mul nuw nsw i32 %i.eq, -1640531535
  %i.es = xor i32 %i.er, %.013.i.i.i.i.i49
  %i.et = mul i32 %i.es, 16777619
  %i.eu = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i50, i64 1
  %.010.val.i.i.i.i.i51.1 = load i8, ptr %i.eu, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ev = zext nneg i8 %.010.val.i.i.i.i.i51.1 to i32
  %i.ew = mul nuw nsw i32 %i.ev, -1640531535
  %i.ex = xor i32 %i.ew, %i.et
  %i.ey = mul i32 %i.ex, 16777619
  %i.ez = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i50, i64 2
  %.010.val.i.i.i.i.i51.2 = load i8, ptr %i.ez, align 1, !tbaa !226, !range !132, !noundef !198
  %i.fa = zext nneg i8 %.010.val.i.i.i.i.i51.2 to i32
  %i.fb = mul nuw nsw i32 %i.fa, -1640531535
  %i.fc = xor i32 %i.fb, %i.ey
  %i.fd = mul i32 %i.fc, 16777619
  %i.fe = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i50, i64 3
  %.010.val.i.i.i.i.i51.3 = load i8, ptr %i.fe, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ff = zext nneg i8 %.010.val.i.i.i.i.i51.3 to i32
  %i.fg = mul nuw nsw i32 %i.ff, -1640531535
  %i.fh = xor i32 %i.fg, %i.fd
  %i.fi = mul i32 %i.fh, 16777619                 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i50, i64 4 ; 2 uses
  %niter191.next.3 = add nuw i64 %niter191, 4     ; 2 uses
  %niter191.ncmp.3 = icmp eq i64 %niter191.next.3, %unroll_iter190
  br i1 %niter191.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i48

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i.i.i48
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod187.not, label %.loopexit, label %.lr.ph.i.i.i.i.i48.epil.preheader

.lr.ph.i.i.i.i.i48.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %bb.l
  %.013.i.i.i.i.i49.epil.init = phi i32 [ -2078137563, %bb.l ], [ %i.fi, %.loopexit.loopexit.unr-lcssa ]
  %.01012.i.i.i.i.i50.epil.init = phi ptr [ %.val.val5.i, %bb.l ], [ %i.fj, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod189 = icmp ne i64 %xtraiter185, 0
  call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i.i.i.i.i48.epil

.lr.ph.i.i.i.i.i48.epil:                          ; preds = %.lr.ph.i.i.i.i.i48.epil, %.lr.ph.i.i.i.i.i48.epil.preheader
  %.013.i.i.i.i.i49.epil = phi i32 [ %i.fn, %.lr.ph.i.i.i.i.i48.epil ], [ %.013.i.i.i.i.i49.epil.init, %.lr.ph.i.i.i.i.i48.epil.preheader ]
  %.01012.i.i.i.i.i50.epil = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i48.epil ], [ %.01012.i.i.i.i.i50.epil.init, %.lr.ph.i.i.i.i.i48.epil.preheader ] ; 2 uses
  %epil.iter186 = phi i64 [ %epil.iter186.next, %.lr.ph.i.i.i.i.i48.epil ], [ 0, %.lr.ph.i.i.i.i.i48.epil.preheader ]
  %.010.val.i.i.i.i.i51.epil = load i8, ptr %.01012.i.i.i.i.i50.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.fk = zext nneg i8 %.010.val.i.i.i.i.i51.epil to i32
  %i.fl = mul nuw nsw i32 %i.fk, -1640531535
  %i.fm = xor i32 %i.fl, %.013.i.i.i.i.i49.epil
  %i.fn = mul i32 %i.fm, 16777619                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i50.epil, i64 1
  %epil.iter186.next = add i64 %epil.iter186, 1   ; 2 uses
  %epil.iter186.cmp.not = icmp eq i64 %epil.iter186.next, %xtraiter185
  br i1 %epil.iter186.cmp.not, label %.loopexit, label %.lr.ph.i.i.i.i.i48.epil, !llvm.loop !3208

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i48.epil, %.thread
  %.0.lcssa.i.i.i.i.i54 = phi i32 [ -2078137563, %.thread ], [ %i.fi, %.loopexit.loopexit.unr-lcssa ], [ %i.fn, %.lr.ph.i.i.i.i.i48.epil ]
  %i.fp = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE13set_with_hashIRKS3_jEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0.lcssa.i.i.i.i.i54, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br i1 %i.fp, label %.thread84, label %.thread82, !prof !134

.thread84:                                        ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

.thread82:                                        ; preds = %bb.g, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i29", %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, %.loopexit, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i.thread, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit88

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread: ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", %bb.b, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.fq = call noundef zeroext i1 @_ZN2OT13tuple_delta_t17compile_point_setERK11hb_vector_tIbLb0EERS1_IhLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.fq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread
  %.val.i55 = load ptr, ptr %i.a, align 8, !tbaa !3201 ; 2 uses
  %i.fr = getelementptr i8, ptr %.val.i55, i64 4
  %.val.val.i56 = load i32, ptr %i.fr, align 4, !tbaa !664 ; 3 uses
  %i.fs = getelementptr i8, ptr %.val.i55, i64 8
  %.val.val4.i57 = load ptr, ptr %i.fs, align 8, !tbaa !663 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i58 = zext i32 %.val.val.i56 to i64 ; 2 uses
  %.not11.i.i.i.i.i59 = icmp eq i32 %.val.val.i56, 0
  br i1 %.not11.i.i.i.i.i59, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %bb.m
  %xtraiter192 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i58, 3 ; 3 uses
  %i.ft = icmp ult i32 %.val.val.i56, 4
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i60.epil.preheader, label %.lr.ph.i.i.i.i.i60.preheader.new

.lr.ph.i.i.i.i.i60.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %unroll_iter197 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i58, 4294967292
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60, %.lr.ph.i.i.i.i.i60.preheader.new
  %.013.i.i.i.i.i61 = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i60.preheader.new ], [ %i.gm, %.lr.ph.i.i.i.i.i60 ]
  %.01012.i.i.i.i.i62 = phi ptr [ %.val.val4.i57, %.lr.ph.i.i.i.i.i60.preheader.new ], [ %i.gn, %.lr.ph.i.i.i.i.i60 ] ; 5 uses
  %niter198 = phi i64 [ 0, %.lr.ph.i.i.i.i.i60.preheader.new ], [ %niter198.next.3, %.lr.ph.i.i.i.i.i60 ]
  %.010.val.i.i.i.i.i63 = load i8, ptr %.01012.i.i.i.i.i62, align 1, !tbaa !226, !range !132, !noundef !198
  %i.fu = zext nneg i8 %.010.val.i.i.i.i.i63 to i32
  %i.fv = mul nuw nsw i32 %i.fu, -1640531535
  %i.fw = xor i32 %i.fv, %.013.i.i.i.i.i61
  %i.fx = mul i32 %i.fw, 16777619
  %i.fy = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 1
  %.010.val.i.i.i.i.i63.1 = load i8, ptr %i.fy, align 1, !tbaa !226, !range !132, !noundef !198
  %i.fz = zext nneg i8 %.010.val.i.i.i.i.i63.1 to i32
  %i.ga = mul nuw nsw i32 %i.fz, -1640531535
  %i.gb = xor i32 %i.ga, %i.fx
  %i.gc = mul i32 %i.gb, 16777619
  %i.gd = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 2
  %.010.val.i.i.i.i.i63.2 = load i8, ptr %i.gd, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ge = zext nneg i8 %.010.val.i.i.i.i.i63.2 to i32
  %i.gf = mul nuw nsw i32 %i.ge, -1640531535
  %i.gg = xor i32 %i.gf, %i.gc
  %i.gh = mul i32 %i.gg, 16777619
  %i.gi = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 3
  %.010.val.i.i.i.i.i63.3 = load i8, ptr %i.gi, align 1, !tbaa !226, !range !132, !noundef !198
  %i.gj = zext nneg i8 %.010.val.i.i.i.i.i63.3 to i32
  %i.gk = mul nuw nsw i32 %i.gj, -1640531535
  %i.gl = xor i32 %i.gk, %i.gh
  %i.gm = mul i32 %i.gl, 16777619                 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62, i64 4 ; 2 uses
  %niter198.next.3 = add nuw i64 %niter198, 4     ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i60

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i60
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i60.epil.preheader

.lr.ph.i.i.i.i.i60.epil.preheader:                ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i60.preheader
  %.013.i.i.i.i.i61.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.gm, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %.01012.i.i.i.i.i62.epil.init = phi ptr [ %.val.val4.i57, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.gn, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph.i.i.i.i.i60.epil

.lr.ph.i.i.i.i.i60.epil:                          ; preds = %.lr.ph.i.i.i.i.i60.epil, %.lr.ph.i.i.i.i.i60.epil.preheader
  %.013.i.i.i.i.i61.epil = phi i32 [ %i.gr, %.lr.ph.i.i.i.i.i60.epil ], [ %.013.i.i.i.i.i61.epil.init, %.lr.ph.i.i.i.i.i60.epil.preheader ]
  %.01012.i.i.i.i.i62.epil = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i60.epil ], [ %.01012.i.i.i.i.i62.epil.init, %.lr.ph.i.i.i.i.i60.epil.preheader ] ; 2 uses
  %epil.iter193 = phi i64 [ %epil.iter193.next, %.lr.ph.i.i.i.i.i60.epil ], [ 0, %.lr.ph.i.i.i.i.i60.epil.preheader ]
  %.010.val.i.i.i.i.i63.epil = load i8, ptr %.01012.i.i.i.i.i62.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.go = zext nneg i8 %.010.val.i.i.i.i.i63.epil to i32
  %i.gp = mul nuw nsw i32 %i.go, -1640531535
  %i.gq = xor i32 %i.gp, %.013.i.i.i.i.i61.epil
  %i.gr = mul i32 %i.gq, 16777619                 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i62.epil, i64 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i60.epil, !llvm.loop !3209

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit: ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i60.epil, %bb.m
  %.0.lcssa.i.i.i.i.i66 = phi i32 [ -2078137563, %bb.m ], [ %i.gm, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit.loopexit.unr-lcssa ], [ %i.gr, %.lr.ph.i.i.i.i.i60.epil ]
  %i.gt = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE13set_with_hashIRKS3_S4_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0.lcssa.i.i.i.i.i66, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  br i1 %i.gt, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit
  store i32 1, ptr %i.c, align 4, !tbaa !137
  %.val.i67 = load ptr, ptr %i.a, align 8, !tbaa !3201 ; 2 uses
  %i.gu = getelementptr i8, ptr %.val.i67, i64 4
  %.val.val.i68 = load i32, ptr %i.gu, align 4, !tbaa !664 ; 3 uses
  %i.gv = getelementptr i8, ptr %.val.i67, i64 8
  %.val.val4.i69 = load ptr, ptr %i.gv, align 8, !tbaa !663 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i70 = zext i32 %.val.val.i68 to i64 ; 2 uses
  %.not11.i.i.i.i.i71 = icmp eq i32 %.val.val.i68, 0
  br i1 %.not11.i.i.i.i.i71, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i72.preheader

.lr.ph.i.i.i.i.i72.preheader:                     ; preds = %bb.n
  %xtraiter199 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i70, 3 ; 3 uses
  %i.gw = icmp ult i32 %.val.val.i68, 4
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i72.epil.preheader, label %.lr.ph.i.i.i.i.i72.preheader.new

.lr.ph.i.i.i.i.i72.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i72.preheader
  %unroll_iter204 = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i70, 4294967292
  br label %.lr.ph.i.i.i.i.i72

.lr.ph.i.i.i.i.i72:                               ; preds = %.lr.ph.i.i.i.i.i72, %.lr.ph.i.i.i.i.i72.preheader.new
  %.013.i.i.i.i.i73 = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i72.preheader.new ], [ %i.hp, %.lr.ph.i.i.i.i.i72 ]
  %.01012.i.i.i.i.i74 = phi ptr [ %.val.val4.i69, %.lr.ph.i.i.i.i.i72.preheader.new ], [ %i.hq, %.lr.ph.i.i.i.i.i72 ] ; 5 uses
  %niter205 = phi i64 [ 0, %.lr.ph.i.i.i.i.i72.preheader.new ], [ %niter205.next.3, %.lr.ph.i.i.i.i.i72 ]
  %.010.val.i.i.i.i.i75 = load i8, ptr %.01012.i.i.i.i.i74, align 1, !tbaa !226, !range !132, !noundef !198
  %i.gx = zext nneg i8 %.010.val.i.i.i.i.i75 to i32
  %i.gy = mul nuw nsw i32 %i.gx, -1640531535
  %i.gz = xor i32 %i.gy, %.013.i.i.i.i.i73
  %i.ha = mul i32 %i.gz, 16777619
  %i.hb = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 1
  %.010.val.i.i.i.i.i75.1 = load i8, ptr %i.hb, align 1, !tbaa !226, !range !132, !noundef !198
  %i.hc = zext nneg i8 %.010.val.i.i.i.i.i75.1 to i32
  %i.hd = mul nuw nsw i32 %i.hc, -1640531535
  %i.he = xor i32 %i.hd, %i.ha
  %i.hf = mul i32 %i.he, 16777619
  %i.hg = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 2
  %.010.val.i.i.i.i.i75.2 = load i8, ptr %i.hg, align 1, !tbaa !226, !range !132, !noundef !198
  %i.hh = zext nneg i8 %.010.val.i.i.i.i.i75.2 to i32
  %i.hi = mul nuw nsw i32 %i.hh, -1640531535
  %i.hj = xor i32 %i.hi, %i.hf
  %i.hk = mul i32 %i.hj, 16777619
  %i.hl = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 3
  %.010.val.i.i.i.i.i75.3 = load i8, ptr %i.hl, align 1, !tbaa !226, !range !132, !noundef !198
  %i.hm = zext nneg i8 %.010.val.i.i.i.i.i75.3 to i32
  %i.hn = mul nuw nsw i32 %i.hm, -1640531535
  %i.ho = xor i32 %i.hn, %i.hk
  %i.hp = mul i32 %i.ho, 16777619                 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74, i64 4 ; 2 uses
  %niter205.next.3 = add nuw i64 %niter205, 4     ; 2 uses
  %niter205.ncmp.3 = icmp eq i64 %niter205.next.3, %unroll_iter204
  br i1 %niter205.ncmp.3, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i72

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i72
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i72.epil.preheader

.lr.ph.i.i.i.i.i72.epil.preheader:                ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i72.preheader
  %.013.i.i.i.i.i73.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i72.preheader ], [ %i.hp, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %.01012.i.i.i.i.i74.epil.init = phi ptr [ %.val.val4.i69, %.lr.ph.i.i.i.i.i72.preheader ], [ %i.hq, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.i.i.i.i.i72.epil

.lr.ph.i.i.i.i.i72.epil:                          ; preds = %.lr.ph.i.i.i.i.i72.epil, %.lr.ph.i.i.i.i.i72.epil.preheader
  %.013.i.i.i.i.i73.epil = phi i32 [ %i.hu, %.lr.ph.i.i.i.i.i72.epil ], [ %.013.i.i.i.i.i73.epil.init, %.lr.ph.i.i.i.i.i72.epil.preheader ]
  %.01012.i.i.i.i.i74.epil = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i72.epil ], [ %.01012.i.i.i.i.i74.epil.init, %.lr.ph.i.i.i.i.i72.epil.preheader ] ; 2 uses
  %epil.iter200 = phi i64 [ %epil.iter200.next, %.lr.ph.i.i.i.i.i72.epil ], [ 0, %.lr.ph.i.i.i.i.i72.epil.preheader ]
  %.010.val.i.i.i.i.i75.epil = load i8, ptr %.01012.i.i.i.i.i74.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.hr = zext nneg i8 %.010.val.i.i.i.i.i75.epil to i32
  %i.hs = mul nuw nsw i32 %i.hr, -1640531535
  %i.ht = xor i32 %i.hs, %.013.i.i.i.i.i73.epil
  %i.hu = mul i32 %i.ht, 16777619                 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i74.epil, i64 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit, label %.lr.ph.i.i.i.i.i72.epil, !llvm.loop !3210

_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit: ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i72.epil, %bb.n
  %.0.lcssa.i.i.i.i.i78 = phi i32 [ -2078137563, %bb.n ], [ %i.hp, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit.loopexit.unr-lcssa ], [ %i.hu, %.lr.ph.i.i.i.i.i72.epil ]
  %i.hw = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE13set_with_hashIRKS3_iEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %.0.lcssa.i.i.i.i.i78, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit
  %.1.ph = phi i1 [ %i.hw, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3setIiEEbRKS3_OT_b.exit ], [ false, %_ZN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3setIS4_EEbRKS3_OT_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread
  %.1 = phi i1 [ false, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE3hasIS4_EEbRKS3_PPT_.exit.thread ], [ %.1.ph, %.sink.split ]
  %i.hx = load i32, ptr %1, align 8, !tbaa !409
  %i.hy = add i32 %i.hx, -1
  %spec.select.i.i.i = icmp ult i32 %i.hy, -2
  br i1 %spec.select.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.r, align 4, !tbaa !411
  %i.hz = load ptr, ptr %i.s, align 8, !tbaa !412
  call void @hb_free(ptr noundef %i.hz) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.1, label %bb.r, label %.loopexit88

bb.r:                                             ; preds = %bb.q, %.thread84
  %i.ia = getelementptr inbounds nuw i8, ptr %.011108, i64 160 ; 2 uses
  %.not = icmp eq ptr %i.ia, %i.i
  br i1 %.not, label %.loopexit88, label %bb.b

.loopexit88:                                      ; preds = %bb.r, %bb.q, %bb.a, %.thread82
  %.not105 = phi i1 [ false, %.thread82 ], [ true, %bb.a ], [ true, %bb.r ], [ false, %bb.q ]
  ret i1 %.not105
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t18find_shared_pointsEv(ptr noundef nonnull align 8 dereferenceable(126) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.val = load i32, ptr %i.a, align 4, !tbaa !733
  %i.b = add i32 %.val, 1                         ; 2 uses
  %.not15.i.i.i.i.i = icmp ult i32 %i.b, 2
  br i1 %.not15.i.i.i.i.i, label %.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !538
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i
  %.sroa.5.sroa.0.0.i = phi i32 [ %i.g, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i ], [ %i.b, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 3 uses
  %.sroa.02.0.i = phi ptr [ %i.h, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i ], [ %.val21, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %i.e = load i32, ptr %i.d, align 8, !noalias !3211
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i
  %i.g = add i32 %.sroa.5.sroa.0.0.i, -1          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i, !llvm.loop !3220

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EdeEv.exit.i.us.i.i.i.i
  %i.j = zext i32 %.sroa.5.sroa.0.0.i to i64
  %i.k = shl nuw nsw i64 %i.j, 5
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit"
  %.01563 = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ], [ %.3.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit" ] ; 3 uses
  %.sroa.031.062 = phi ptr [ %.sroa.02.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ], [ %.sroa.031.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit" ] ; 4 uses
  %.sroa.732.061 = phi i32 [ %.sroa.5.sroa.0.0.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_E3endEv.exit" ], [ %.sroa.732.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit" ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.732.061, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit", !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit": ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %.sroa.031.062, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.r = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !3201 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !411  ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit"
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !544  ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.r, i64 4
  %.val.val.i = load i32, ptr %i.v, align 4, !tbaa !664 ; 4 uses
  %i.w = getelementptr i8, ptr %i.r, i64 8
  %.val.val5.i = load ptr, ptr %i.w, align 8, !tbaa !663 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.val.i to i64 ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.val.val.i, 0  ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 3 ; 3 uses
  %i.x = icmp ult i32 %.val.val.i, 4
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %.01012.i.i.i.i.i = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i ]
  %.010.val.i.i.i.i.i = load i8, ptr %.01012.i.i.i.i.i, align 1, !tbaa !226, !range !132, !noundef !198
  %i.y = zext nneg i8 %.010.val.i.i.i.i.i to i32
  %i.z = mul nuw nsw i32 %i.y, -1640531535
  %i.aa = xor i32 %i.z, %.013.i.i.i.i.i
  %i.ab = mul i32 %i.aa, 16777619
  %i.ac = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 1
  %.010.val.i.i.i.i.i.1 = load i8, ptr %i.ac, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ad = zext nneg i8 %.010.val.i.i.i.i.i.1 to i32
  %i.ae = mul nuw nsw i32 %i.ad, -1640531535
  %i.af = xor i32 %i.ae, %i.ab
  %i.ag = mul i32 %i.af, 16777619
  %i.ah = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 2
  %.010.val.i.i.i.i.i.2 = load i8, ptr %i.ah, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ai = zext nneg i8 %.010.val.i.i.i.i.i.2 to i32
  %i.aj = mul nuw nsw i32 %i.ai, -1640531535
  %i.ak = xor i32 %i.aj, %i.ag
  %i.al = mul i32 %i.ak, 16777619
  %i.am = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 3
  %.010.val.i.i.i.i.i.3 = load i8, ptr %i.am, align 1, !tbaa !226, !range !132, !noundef !198
  %i.an = zext nneg i8 %.010.val.i.i.i.i.i.3 to i32
  %i.ao = mul nuw nsw i32 %i.an, -1640531535
  %i.ap = xor i32 %i.ao, %i.al
  %i.aq = mul i32 %i.ap, 16777619                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", label %.lr.ph.i.i.i.i.i

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %.01012.i.i.i.i.i.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod172 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.epil = phi i32 [ %i.av, %.lr.ph.i.i.i.i.i.epil ], [ %.013.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.01012.i.i.i.i.i.epil = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.epil ], [ %.01012.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.010.val.i.i.i.i.i.epil = load i8, ptr %.01012.i.i.i.i.i.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.as = zext nneg i8 %.010.val.i.i.i.i.i.epil to i32
  %i.at = mul nuw nsw i32 %i.as, -1640531535
  %i.au = xor i32 %i.at, %.013.i.i.i.i.i.epil
  %i.av = mul i32 %i.au, 16777619                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !3221

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i.epil, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa"
  %.lcssa = phi i32 [ %i.aq, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ], [ %i.av, %.lr.ph.i.i.i.i.i.epil ]
  %i.ax = and i32 %.lcssa, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", %bb.e
  %.0.lcssa.i.i.i.i.i = phi i32 [ 69346085, %bb.e ], [ %i.ax, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i" ] ; 2 uses
  %i.ay = load i32, ptr %i.n, align 8, !tbaa !3204
  %i.az = urem i32 %.0.lcssa.i.i.i.i.i, %i.ay     ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.be = and i32 %i.bd, 2
  %.not22.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not22.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %.lr.ph.i.i.i, !prof !268

.lr.ph.i.i.i:                                     ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"
  %i.bf = load i32, ptr %i.o, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i, %.lr.ph.i.i.i
  %i.bg = phi i32 [ %i.bd, %.lr.ph.i.i.i ], [ %i.bz, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ] ; 2 uses
  %i.bh = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %i.bx, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ] ; 2 uses
  %.024.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.bt, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %.01223.i.i.i = phi i32 [ %i.az, %.lr.ph.i.i.i ], [ %i.bv, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i ]
  %i.bi = lshr i32 %i.bg, 2
  %i.bj = icmp eq i32 %i.bi, %.0.lcssa.i.i.i.i.i
  br i1 %i.bj, label %bb.g, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !3205 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !663
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !664
  %.not.i.i.i.i.i.i28 = icmp eq i32 %.val.val.i, %i.bo
  br i1 %.not.i.i.i.i.i.i28, label %.preheader.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g
  br i1 %.not11.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3188

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i.i.i.i.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !226, !range !132, !noundef !198
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !226, !range !132, !noundef !198
  %.not10.i.i.i.i.i.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not10.i.i.i.i.i.i, label %bb.h, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.f
  %i.bt = add i32 %.024.i.i.i, 1                  ; 2 uses
  %i.bu = add i32 %i.bt, %.01223.i.i.i
  %i.bv = and i32 %i.bu, %i.bf                    ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = and i32 %i.bz, 2
  %.not.i.i.i27 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i27, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.f, !prof !268, !llvm.loop !3207

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %i.cb = trunc i32 %i.bg to i1
  br i1 %i.cb, label %bb.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread

bb.i:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !137 ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 2
  br i1 %i.ce, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.cf = add i32 %i.cd, -1
  %i.cg = mul i32 %i.cf, %i.t                     ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, %.01563
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.q, ptr %i.p, align 8, !tbaa !3181
  br label %bb.l

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread: ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE10fetch_itemERKS3_j.exit.i.i, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", %bb.d, %bb.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_teqERKS3_.exit.i.i.i
  store ptr null, ptr %i.p, align 8, !tbaa !3181
  br label %.loopexit

bb.l:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit", %bb.k, %bb.j
  %.3.ph = phi i32 [ %.01563, %bb.j ], [ %i.cg, %bb.k ], [ %.01563, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EdeEv.exit" ]
  %i.ci = zext i32 %.sroa.732.061 to i64
  %i.cj = shl nuw nsw i64 %i.ci, 5
  %scevgep = getelementptr i8, ptr %.sroa.031.062, i64 %i.cj
  %scevgep119 = getelementptr i8, ptr %.sroa.031.062, i64 32
  %i.ck = add i32 %.sroa.732.061, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 5
  %scevgep120 = getelementptr i8, ptr %scevgep119, i64 %i.cm
  %.not.i.i.i.i.i.i29149 = icmp eq i32 %.sroa.732.061, 0
  br i1 %.not.i.i.i.i.i.i29149, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i, !prof !796

bb.m:                                             ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i, !llvm.loop !3222

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i: ; preds = %bb.l, %bb.m
  %.sroa.031.1151 = phi ptr [ %i.co, %bb.m ], [ %.sroa.031.062, %bb.l ] ; 2 uses
  %.sroa.732.1150 = phi i32 [ %i.cn, %bb.m ], [ %.sroa.732.061, %bb.l ]
  %i.cn = add i32 %.sroa.732.1150, -1             ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", label %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.031.1151, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.031.1151, i64 40
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = trunc i32 %i.cq to i1
  br i1 %i.cr, label %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge", label %bb.m, !llvm.loop !3222

"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", !llvm.loop !3222

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge", %bb.l
  %.sroa.732.2 = phi i32 [ 0, %bb.l ], [ %i.cn, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i ] ; 2 uses
  %.sroa.031.2 = phi ptr [ %scevgep, %bb.l ], [ %i.co, %"_ZNK4$_23clIRMN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEKFbvERS8_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSE_OSF_.exit.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit_crit_edge" ], [ %scevgep120, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp ne ptr %.sroa.031.2, %i.l
  %i.cs = icmp ne i32 %.sroa.732.2, 0
  %i.ct = or i1 %i.cs, %.not.i.i.i
  br i1 %i.ct, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES2_IhLb0EELb0EE6item_tEERS8_EppEv.exit.i.us.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIPK11hb_vector_tIbLb0EES4_IhLb0EELb0EE6item_tEEMSA_KFbvERK4$_19LPv0EEMSA_F9hb_pair_tIRKS7_RS8_EvEL24hb_function_sortedness_t0ELSH_0EESN_EppEv.exit", %bb.a, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT13tuple_delta_t24compile_tuple_var_headerERK8hb_map_tjS3_PK12hb_hashmap_tIPK11hb_vector_tINS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEELb0EEjLb0EEP15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !411
  %.not50 = icmp eq i32 %i.d, 0
  br i1 %.not50, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !468
  %i.g = mul i32 %i.f, 6
  %i.h = add i32 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIhLb0EE18allocate_from_poolI15hb_alloc_pool_tEEbPT_jj(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %5, i32 noundef %i.h, i32 noundef 0)
  br i1 %i.j, label %bb.c, label %bb.m, !prof !142

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !412
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !411
  %i.p = zext i32 %i.o to i64
  %gepdiff = add nuw nsw i64 %i.p, 8589934588
  %i.q = lshr i64 %gepdiff, 1                     ; 2 uses
  %.sroa.6.8.insert.ext = and i64 %i.q, 4294967295 ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge, label %.critedge32

.critedge:                                        ; preds = %bb.c
  %i.r = tail call noundef zeroext i1 @_ZN2OT13tuple_delta_t14compile_coordsERK8hb_map_tS3_P15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
end_hunk_16
begin_hunk_17_@_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tbRKNS3_18tuple_variations_tE:bb.a
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.cw to i64 ; 3 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !106 ; 4 uses
  %i.cy = icmp ugt i32 %i.cw, 2147483646
  br i1 %i.cy, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread.sink.split.i, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cz
  %i.dd = icmp slt i64 %i.dc, %.sroa.2.8.insert.ext.i.i.i
  br i1 %i.dd, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread.sink.split.i, label %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i.i, !prof !21

_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i.i: ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.2.8.insert.ext.i.i.i
  store ptr %i.de, ptr %i.c, align 8, !tbaa !106
  %.not.i.i19 = icmp eq ptr %i.cx, null
  %.not.i.i.i = icmp eq i32 %i.cw, 0
  %or.cond.i = or i1 %.not.i.i19, %.not.i.i.i
  br i1 %or.cond.i, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread41.i, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.i, !prof !3260

_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.i: ; preds = %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr readonly align 1 %i.cu, i64 %.sroa.2.8.insert.ext.i.i.i, i1 false), !alias.scope !3261
  %.pr.pre.i = load i32, ptr %i.e, align 4, !tbaa !105
  %i.df = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.df, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread41.i, label %select.unfold

_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread41.i: ; preds = %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.i, %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i.i
  %i.dg = load i32, ptr %i.cv, align 4, !tbaa !3189
  %i.dh = add i32 %i.dg, %.034                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01732.i, i64 160 ; 2 uses
  %.not.i20 = icmp eq ptr %i.di, %i.cc
  br i1 %.not.i20, label %_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t21serialize_var_headersEP22hb_serialize_context_tRj.exit, label %bb.i, !llvm.loop !3265

_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread.sink.split.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sink.i = phi i32 [ 1, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ], [ 4, %bb.j ]
  store i32 %.sink.i, ptr %i.e, align 4, !tbaa !105
  br label %select.unfold

_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t21serialize_var_headersEP22hb_serialize_context_tRj.exit: ; preds = %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread41.i, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread41.i.peel, %bb.f
  %.135 = phi i32 [ 0, %bb.f ], [ %i.cr, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread41.i.peel ], [ %i.dh, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread41.i ]
  %spec.select.v = select i1 %2, i32 4, i32 8
  %spec.select = add i32 %.135, %spec.select.v    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.dk = trunc i32 %spec.select to i16
  %i.dl = tail call i16 @llvm.bswap.i16(i16 %i.dk)
  store i16 %i.dl, ptr %i.dj, align 1, !tbaa !331
  %.not.i.i21 = icmp ult i32 %spec.select, 65536
  br i1 %.not.i.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t21serialize_var_headersEP22hb_serialize_context_tRj.exit
  %i.dm = load i32, ptr %i.e, align 4, !tbaa !105
  %i.dn = or i32 %i.dm, 8
  store i32 %i.dn, ptr %i.e, align 4, !tbaa !105
  br label %select.unfold

bb.l:                                             ; preds = %_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t21serialize_var_headersEP22hb_serialize_context_tRj.exit
  %i.do = tail call noundef zeroext i1 @_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t18serialize_var_dataEP22hb_serialize_context_tb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull %1, i1 noundef zeroext %2)
  br label %select.unfold

select.unfold:                                    ; preds = %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.i, %.lr.ph.i18, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.i.peel, %_ZL9hb_memsetPvij.exit.i.i.i, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread.sink.split.i, %bb.l, %bb.k, %.critedge.i.i.i, %bb.b, %bb.a, %bb.e
  %.3 = phi i1 [ false, %bb.k ], [ true, %bb.a ], [ false, %bb.e ], [ false, %bb.b ], [ false, %.critedge.i.i.i ], [ false, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.thread.sink.split.i ], [ %i.do, %bb.l ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %.lr.ph.i18 ], [ false, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.i.peel ], [ false, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_t18serialize_var_dataEP22hb_serialize_context_tb(ptr noundef nonnull align 8 dereferenceable(126) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3181 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !412
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !411  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106  ; 4 uses
  %i.i = zext i32 %i.f to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105
  %.not11.i.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i.i, label %bb.d, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit, !prof !142

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %i.f, 2147483646
  br i1 %i.l, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.j, align 4, !tbaa !105
  br label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.m
  %i.r = icmp slt i64 %i.q, %i.i
  br i1 %i.r, label %.critedge.i.i.i, label %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i, !prof !21

.critedge.i.i.i:                                  ; preds = %bb.f
  store i32 4, ptr %i.j, align 4, !tbaa !105
  br label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit

_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store ptr %i.s, ptr %i.g, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.h, null
  %.not.i.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not.i.i, !prof !3260
  br i1 %or.cond, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit, label %bb.g, !prof !3260

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %i.d, i64 %i.i, i1 false), !alias.scope !3267
  br label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit

_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit: ; preds = %bb.g, %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i, %.critedge.i.i.i, %bb.e, %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !542  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !392  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx = mul nuw nsw i64 %i.x, 160
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not32114 = icmp eq i32 %i.w, 0
  br i1 %.not32114, label %.thread83, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.h

_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit59.thread: ; preds = %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i50, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit59
  %i.ag = getelementptr inbounds nuw i8, ptr %.028115, i64 160 ; 2 uses
  %.not32 = icmp eq ptr %i.ag, %i.y
  br i1 %.not32, label %.thread83, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit59.thread
  %.028115 = phi ptr [ %i.u, %.lr.ph ], [ %i.ag, %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit59.thread ] ; 5 uses
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !538 ; 4 uses
  %.not.i35 = icmp eq ptr %i.ah, null
  br i1 %.not.i35, label %.thread87, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %.028115, i64 52
  %.val.val.i = load i32, ptr %i.ai, align 4, !tbaa !664 ; 4 uses
  %i.aj = getelementptr i8, ptr %.028115, i64 56
  %.val.val5.i = load ptr, ptr %i.aj, align 8, !tbaa !663 ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i.i = zext i32 %.val.val.i to i64 ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i32 %.val.val.i, 0  ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i", label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %xtraiter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 3 ; 3 uses
  %i.ak = icmp ult i32 %.val.val.i, 4
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i, 4294967292
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.013.i.i.i.i.i = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %.01012.i.i.i.i.i = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.be, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i ]
  %.010.val.i.i.i.i.i = load i8, ptr %.01012.i.i.i.i.i, align 1, !tbaa !226, !range !132, !noundef !198
  %i.al = zext nneg i8 %.010.val.i.i.i.i.i to i32
  %i.am = mul nuw nsw i32 %i.al, -1640531535
  %i.an = xor i32 %i.am, %.013.i.i.i.i.i
  %i.ao = mul i32 %i.an, 16777619
  %i.ap = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 1
  %.010.val.i.i.i.i.i.1 = load i8, ptr %i.ap, align 1, !tbaa !226, !range !132, !noundef !198
  %i.aq = zext nneg i8 %.010.val.i.i.i.i.i.1 to i32
  %i.ar = mul nuw nsw i32 %i.aq, -1640531535
  %i.as = xor i32 %i.ar, %i.ao
  %i.at = mul i32 %i.as, 16777619
  %i.au = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 2
  %.010.val.i.i.i.i.i.2 = load i8, ptr %i.au, align 1, !tbaa !226, !range !132, !noundef !198
  %i.av = zext nneg i8 %.010.val.i.i.i.i.i.2 to i32
  %i.aw = mul nuw nsw i32 %i.av, -1640531535
  %i.ax = xor i32 %i.aw, %i.at
  %i.ay = mul i32 %i.ax, 16777619
  %i.az = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 3
  %.010.val.i.i.i.i.i.3 = load i8, ptr %i.az, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ba = zext nneg i8 %.010.val.i.i.i.i.i.3 to i32
  %i.bb = mul nuw nsw i32 %i.ba, -1640531535
  %i.bc = xor i32 %i.bb, %i.ay
  %i.bd = mul i32 %i.bc, 16777619                 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", label %.lr.ph.i.i.i.i.i

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa": ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa", %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.epil.init = phi i32 [ -2078137563, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %.01012.i.i.i.i.i.epil.init = phi ptr [ %.val.val5.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ]
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.013.i.i.i.i.i.epil = phi i32 [ %i.bi, %.lr.ph.i.i.i.i.i.epil ], [ %.013.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.01012.i.i.i.i.i.epil = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.epil ], [ %.01012.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.010.val.i.i.i.i.i.epil = load i8, ptr %.01012.i.i.i.i.i.epil, align 1, !tbaa !226, !range !132, !noundef !198
  %i.bf = zext nneg i8 %.010.val.i.i.i.i.i.epil to i32
  %i.bg = mul nuw nsw i32 %i.bf, -1640531535
  %i.bh = xor i32 %i.bg, %.013.i.i.i.i.i.epil
  %i.bi = mul i32 %i.bh, 16777619                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01012.i.i.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !3271

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i": ; preds = %.lr.ph.i.i.i.i.i.epil, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa"
  %.lcssa = phi i32 [ %i.bd, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i.unr-lcssa" ], [ %i.bi, %.lr.ph.i.i.i.i.i.epil ]
  %i.bk = and i32 %.lcssa, 1073741823
  br label %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"

"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i": ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i", %bb.i
  %.0.lcssa.i.i.i.i.i = phi i32 [ 69346085, %bb.i ], [ %i.bk, %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.loopexit.i" ] ; 3 uses
  %i.bl = load i32, ptr %i.aa, align 8, !tbaa !3183
  %i.bm = urem i32 %.0.lcssa.i.i.i.i.i, %i.bl     ; 3 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8            ; 3 uses
  %i.br = and i32 %i.bq, 2
  %.not22.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not22.i.i.i, label %.thread87, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZNK3$_4clIPK11hb_vector_tIbLb0EEEEN10_hb_head_tIjJDTcl4implfp_cv11hb_priorityILj16EE_EEEEE4typeERKT_.exit.i"
  %i.bs = load i32, ptr %i.ab, align 4            ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i.i.split.us, label %.lr.ph.i.i.i.split

.lr.ph.i.i.i.split.us:                            ; preds = %.lr.ph.i.i.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us
  %i.bt = phi i32 [ %i.cg, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ %i.bq, %.lr.ph.i.i.i ] ; 2 uses
  %i.bu = phi ptr [ %i.ce, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ %i.bo, %.lr.ph.i.i.i ] ; 2 uses
  %.024.i.i.i.us = phi i32 [ %i.ca, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ 0, %.lr.ph.i.i.i ]
  %.01223.i.i.i.us = phi i32 [ %i.cc, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us ], [ %i.bm, %.lr.ph.i.i.i ]
  %i.bv = lshr i32 %i.bt, 2
  %i.bw = icmp eq i32 %i.bv, %.0.lcssa.i.i.i.i.i
  br i1 %i.bw, label %bb.j, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us

bb.j:                                             ; preds = %.lr.ph.i.i.i.split.us
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !3184
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !664
  %.not.i.i.i.i.i.i.us = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i.us: ; preds = %bb.j, %.lr.ph.i.i.i.split.us
  %i.ca = add i32 %.024.i.i.i.us, 1               ; 2 uses
  %i.cb = add i32 %i.ca, %.01223.i.i.i.us
  %i.cc = and i32 %i.cb, %i.bs                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8            ; 2 uses
  %i.ch = and i32 %i.cg, 2
  %.not.i.i.i.us = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.us, label %.thread87, label %.lr.ph.i.i.i.split.us, !llvm.loop !3187

.lr.ph.i.i.i.split:                               ; preds = %.lr.ph.i.i.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i
  %i.ci = phi i32 [ %i.db, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.bq, %.lr.ph.i.i.i ] ; 2 uses
  %i.cj = phi ptr [ %i.cz, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.bo, %.lr.ph.i.i.i ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.cv, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %.01223.i.i.i = phi i32 [ %i.cx, %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i ], [ %i.bm, %.lr.ph.i.i.i ]
  %i.ck = lshr i32 %i.ci, 2
  %i.cl = icmp eq i32 %i.ck, %.0.lcssa.i.i.i.i.i
  br i1 %i.cl, label %bb.k, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.split
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !3184 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !663
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !664
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.val.i, %i.cq
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3188

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %bb.l
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.i.i.i.i.i.i
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !226, !range !132, !noundef !198
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.val5.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !226, !range !132, !noundef !198
  %.not10.i.i.i.i.i.i = icmp eq i8 %i.cs, %i.cu
  br i1 %.not10.i.i.i.i.i.i, label %bb.l, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_teqERKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i.split
  %i.cv = add i32 %.024.i.i.i, 1                  ; 2 uses
  %i.cw = add i32 %i.cv, %.01223.i.i.i
  %i.cx = and i32 %i.cw, %i.bs                    ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i32, ptr %i.da, align 8            ; 2 uses
  %i.dc = and i32 %i.db, 2
  %.not.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i, label %.thread87, label %.lr.ph.i.i.i.split, !llvm.loop !3187

_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i: ; preds = %bb.j, %bb.l
  %i.dd = phi i32 [ %i.ci, %bb.l ], [ %i.bt, %bb.j ]
  %i.de = phi ptr [ %i.cj, %bb.l ], [ %i.bu, %bb.j ] ; 3 uses
  %i.df = trunc i32 %i.dd to i1
  br i1 %i.df, label %bb.m, label %.thread87

bb.m:                                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE10fetch_itemERKS3_j.exit.i.i
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.ac, align 8, !tbaa !3181
  %.not33 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not33, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit47, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !412
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !411 ; 3 uses
  %i.dm = load ptr, ptr %i.ad, align 8, !tbaa !106 ; 4 uses
  %i.dn = zext i32 %i.dl to i64                   ; 3 uses
  %i.do = load i32, ptr %i.ae, align 4, !tbaa !105
  %.not11.i.i36 = icmp eq i32 %i.do, 0
  br i1 %.not11.i.i36, label %bb.p, label %.thread87, !prof !142

bb.p:                                             ; preds = %bb.o
  %i.dp = icmp ugt i32 %i.dl, 2147483646
  br i1 %i.dp, label %bb.q, label %bb.r, !prof !21

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.ae, align 4, !tbaa !105
  br label %.thread87

bb.r:                                             ; preds = %bb.p
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = load ptr, ptr %i.af, align 8, !tbaa !107
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.dq
  %i.du = icmp slt i64 %i.dt, %i.dn
  br i1 %i.du, label %.critedge.i.i.i46, label %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i38, !prof !21

.critedge.i.i.i46:                                ; preds = %bb.r
  store i32 4, ptr %i.ae, align 4, !tbaa !105
  br label %.thread87

_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i38: ; preds = %bb.r
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  store ptr %i.dv, ptr %i.ad, align 8, !tbaa !106
  %.not.i39 = icmp eq ptr %i.dm, null
  %.not.i.i40 = icmp eq i32 %i.dl, 0
  %or.cond97 = select i1 %.not.i39, i1 true, i1 %.not.i.i40, !prof !3260
  br i1 %or.cond97, label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit47, label %bb.s, !prof !3260

bb.s:                                             ; preds = %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr readonly align 1 %i.dj, i64 %i.dn, i1 false), !alias.scope !3272
  br label %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit47

_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit47: ; preds = %bb.s, %_ZN22hb_serialize_context_t11extend_sizeIhEEPT_S2_mb.exit.i38, %bb.n
  %.pr139 = load i32, ptr %i.ae, align 4, !tbaa !105
  %i.dw = getelementptr inbounds nuw i8, ptr %.028115, i64 120
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !412
  %i.dy = getelementptr inbounds nuw i8, ptr %.028115, i64 116
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !411 ; 3 uses
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.dz to i64 ; 3 uses
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !106 ; 4 uses
  %.not11.i.i48 = icmp eq i32 %.pr139, 0
  br i1 %.not11.i.i48, label %bb.t, label %.thread87, !prof !134

bb.t:                                             ; preds = %_ZNK10hb_array_tIKhE4copyI22hb_serialize_context_tS0_TnPN12hb_enable_ifIXaaltstT0_Lm8EL_ZNSt17integral_constantIbLb1EE5valueEEEvE4typeELPv0EEES1_PT_.exit47
  %i.eb = icmp ugt i32 %i.dz, 2147483646
  br i1 %i.eb, label %bb.u, label %bb.v, !prof !21

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.ae, align 4, !tbaa !105
  br label %.thread87

bb.v:                                             ; preds = %bb.t
  %i.ec = ptrtoint ptr %i.ea to i64
end_hunk_17
begin_hunk_18_@_ZNK2OT4avar13_subset_avar2EP19hb_subset_context_tRK11hb_vector_tIS3_INS_12AxisValueMapELb0EELb0EE:bb.a

bb.m:                                             ; preds = %bb.l
  %i.by = shl nuw i32 %i.bu, 3
  %i.bz = zext i32 %i.by to i64
  %i.ca = tail call ptr @hb_malloc(i64 noundef %i.bz) #18 ; 4 uses
  %.not10.i.i.i542 = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i542, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539, label %bb.n, !prof !21

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i543 = icmp eq i32 %.sroa.11.0945, 0
  br i1 %.not.i.i.i.i543, label %.critedge.i254, label %bb.o, !prof !21

bb.o:                                             ; preds = %bb.n
  %i.cb = zext i32 %.sroa.11.0945 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.sroa.20.0943, i64 %i.cc, i1 false), !alias.scope !3377
  br label %.critedge.i254

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532: ; preds = %bb.l, %bb.k
  %i.cd = phi ptr [ null, %bb.l ], [ %.sroa.20.0943, %bb.k ]
  %i.ce = shl nuw i32 %i.bu, 3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = tail call ptr @hb_realloc(ptr noundef %i.cd, i64 noundef %i.cf) #18 ; 2 uses
  %.not22.i533 = icmp eq ptr %i.cg, null
  br i1 %.not22.i533, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539, label %.critedge.i254, !prof !118

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539: ; preds = %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532, %bb.m
  %i.ch = xor i32 %.sroa.0696.0947, -1
  br label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545: ; preds = %bb.i, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539, %.critedge.i544
  %.sroa.0696.5 = phi i32 [ %.sroa.0696.0947, %bb.i ], [ %i.ch, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539 ], [ %i.bx, %.critedge.i544 ]
  store i64 %i.s, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit

.critedge.i254:                                   ; preds = %bb.h, %bb.n, %bb.o, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532, %bb.j
  %.pre-phi = phi i32 [ %.pre1105, %bb.j ], [ 1, %bb.n ], [ %.pre1105, %bb.o ], [ %.pre1105, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532 ], [ %.pre1105, %bb.h ]
  %.sroa.20.4 = phi ptr [ %.sroa.20.0943, %bb.j ], [ %i.ca, %bb.n ], [ %i.ca, %bb.o ], [ %i.cg, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532 ], [ %.sroa.20.0943, %bb.h ] ; 2 uses
  %.sroa.0696.3 = phi i32 [ %.sroa.0696.0947, %bb.j ], [ %i.bu, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532 ], [ %.sroa.0696.0947, %bb.h ]
  %i.ci = zext i32 %.sroa.11.0945 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.20.4, i64 %i.ci
  store ptr %.0739944, ptr %i.cj, align 8, !tbaa !3381
  br label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit: ; preds = %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545, %.critedge.i254
  %.sroa.20.5 = phi ptr [ %.sroa.20.4, %.critedge.i254 ], [ %.sroa.20.0943, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545 ] ; 2 uses
  %.sroa.11.1 = phi i32 [ %.pre-phi, %.critedge.i254 ], [ %.sroa.11.0945, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545 ] ; 2 uses
  %.sroa.0696.4 = phi i32 [ %.sroa.0696.3, %.critedge.i254 ], [ %.sroa.0696.5, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545 ] ; 2 uses
  %i.ck = load i16, ptr %.0739944, align 1, !tbaa !264
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.0739944, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2 ; 2 uses
  %i.cq = add nuw nsw i32 %.0209948, 1            ; 2 uses
  %i.cr = load i16, ptr %i.e, align 1, !tbaa !264
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext i16 %i.cs to i32
  %i.cu = icmp samesign ult i32 %i.cq, %i.ct
  br i1 %i.cu, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !3383

bb.p:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %i.cv = shl nuw nsw i32 %i.bj, 2
  %i.cw = zext nneg i32 %i.cv to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %i.cw, i1 false)
  %.pre1084 = load i16, ptr %i.e, align 1, !tbaa !264 ; 2 uses
  %.not996 = icmp eq i16 %.pre1084, 0
  br i1 %.not996, label %._crit_edge957, label %.lr.ph956

.lr.ph956:                                        ; preds = %bb.p
  %i.cx = tail call noundef i16 @llvm.bswap.i16(i16 %.pre1084)
  %i.cy = load ptr, ptr %i.af, align 8, !tbaa !128 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2696
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 2688
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 2684
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 2552
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 2544
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 2540
  %i.df = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.dg = zext i16 %i.bi to i64                   ; 2 uses
  %wide.trip.count = zext i16 %i.cx to i64
  %.pre1085 = load ptr, ptr %i.cz, align 8, !tbaa !335 ; 4 uses
  %.not.i259 = icmp eq ptr %.pre1085, null
  br label %bb.s

._crit_edge957:                                   ; preds = %bb.ad, %.loopexit888, %bb.p
  %.sroa.14.1750.ph1189 = phi ptr [ null, %.loopexit888 ], [ %i.bq, %bb.p ], [ %i.bq, %bb.ad ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 2 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !266 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 %i.dl
  %.0.i.i.i255 = select i1 %i.dj, ptr @_hb_NullPool, ptr %i.dm, !prof !21
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i255, i64 2
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !264 ; 2 uses
  %i.dp = tail call noundef i16 @llvm.bswap.i16(i16 %i.do) ; 3 uses
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.i, label %.loopexit886, label %bb.q

bb.q:                                             ; preds = %._crit_edge957
  %i.dr = zext i16 %i.dp to i64                   ; 5 uses
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 4
  %i.du = tail call ptr @hb_malloc(i64 noundef %i.dt) #18 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.du, null
  br i1 %.not16.i.i, label %.loopexit886, label %bb.r, !prof !21

bb.r:                                             ; preds = %bb.q
  store i32 %i.dq, ptr %i.du, align 4, !tbaa !3384
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 12 uses
  %i.dw = icmp ugt i16 %i.dp, 3
  br i1 %i.dw, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.r
  %i.dx = add nsw i64 %i.dr, -4                   ; 2 uses
  %i.dy = lshr i64 %i.dx, 2                       ; 2 uses
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.dz, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.eb = and i64 %i.dx, 4
  %lcmp.mod.not.not = icmp eq i64 %i.eb, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1396 = trunc i64 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod1396)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.ec monotonic, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store atomic i32 -2147483648, ptr %i.ed monotonic, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store atomic i32 -2147483648, ptr %i.ee monotonic, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.eg = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.r
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.r ], [ %i.eg, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.eh = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.dq
  br i1 %i.eh, label %.lr.ph18.preheader.i19.i.i, label %.loopexit886

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.ei = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.ej = sub nsw i64 %i.dr, %i.ei
  %xtraiter1397 = and i64 %i.ej, 7                ; 2 uses
  %lcmp.mod1398.not = icmp eq i64 %xtraiter1397, 0
  br i1 %lcmp.mod1398.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.ei, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.ek monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1397
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !3386

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.ei, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.el = sub nsw i64 %i.ei, %i.dr
  %i.em = icmp ugt i64 %i.el, -8
  br i1 %i.em, label %.loopexit886, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.en monotonic, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store atomic i32 -2147483648, ptr %i.eo monotonic, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store atomic i32 -2147483648, ptr %i.ep monotonic, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store atomic i32 -2147483648, ptr %i.eq monotonic, align 4
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store atomic i32 -2147483648, ptr %i.es monotonic, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  store atomic i32 -2147483648, ptr %i.et monotonic, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store atomic i32 -2147483648, ptr %i.eu monotonic, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  store atomic i32 -2147483648, ptr %i.ev monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !3387

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.ew monotonic, align 4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store atomic i32 -2147483648, ptr %i.ey monotonic, align 4
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store atomic i32 -2147483648, ptr %i.fa monotonic, align 4
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store atomic i32 -2147483648, ptr %i.fc monotonic, align 4
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store atomic i32 -2147483648, ptr %i.fe monotonic, align 4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  store atomic i32 -2147483648, ptr %i.fg monotonic, align 4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store atomic i32 -2147483648, ptr %i.fi monotonic, align 4
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  store atomic i32 -2147483648, ptr %i.fk monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.dr
  br i1 %exitcond.not.i24.i.i.7, label %.loopexit886, label %.lr.ph18.i21.i.i, !llvm.loop !3388

.loopexit886:                                     ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %.preheader.i17.i.i, %bb.q, %._crit_edge957
  %.1.i.i256 = phi ptr [ @_hb_NullPool, %._crit_edge957 ], [ @_hb_NullPool, %bb.q ], [ %i.du, %.preheader.i17.i.i ], [ %i.du, %.lr.ph18.i21.i.i ], [ %i.du, %.lr.ph18.i21.i.i.prol.loopexit ] ; 5 uses
  %i.fl = load i16, ptr %i.e, align 1, !tbaa !264 ; 2 uses
  %i.fm = tail call noundef i16 @llvm.bswap.i16(i16 %i.fl) ; 2 uses
  %i.fn = zext i16 %i.fm to i32                   ; 2 uses
  %.not.i546.not.not = icmp eq i16 %i.fl, 0       ; 2 uses
  br i1 %.not.i546.not.not, label %._crit_edge961, label %.preheader.i548, !prof !142

.preheader.i548:                                  ; preds = %.loopexit886, %.preheader.i548
  %.043.i549 = phi i32 [ %i.fq, %.preheader.i548 ], [ 0, %.loopexit886 ] ; 2 uses
  %i.fo = lshr i32 %.043.i549, 1
  %i.fp = add nuw nsw i32 %.043.i549, 8
  %i.fq = add nuw nsw i32 %i.fp, %i.fo            ; 3 uses
  %i.fr = icmp samesign ult i32 %i.fq, %i.fn
  br i1 %i.fr, label %.preheader.i548, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i, !llvm.loop !658

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i548
  %i.fs = shl nuw nsw i32 %i.fq, 2
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ft) #18 ; 6 uses
  %.not22.i553 = icmp eq ptr %i.fu, null
  br i1 %.not22.i553, label %bb.ae, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit, !prof !118

_ZN11hb_vector_tIfLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i
  %i.fv = shl nuw nsw i32 %i.fn, 2
  %i.fw = zext nneg i32 %i.fv to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fu, i8 0, i64 %i.fw, i1 false)
  %.pre1086 = load i16, ptr %i.e, align 1, !tbaa !264
  %i.fx = icmp eq i16 %.pre1086, 0
  %i.fy = zext i16 %i.fm to i64                   ; 4 uses
  br i1 %i.fx, label %._crit_edge961, label %.lr.ph960

.lr.ph960:                                        ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 6
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 8
  %i.gb = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  br label %bb.ah

bb.s:                                             ; preds = %.lr.ph956, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph956 ], [ %indvars.iv.next, %bb.ad ] ; 8 uses
  br i1 %.not.i259, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gc = trunc nuw nsw i64 %indvars.iv to i32
  %i.gd = mul i32 %i.gc, 506952113
  %i.ge = and i32 %i.gd, 1073741823
  %i.gf = load i32, ptr %i.da, align 8, !tbaa !465
  %i.gg = urem i32 %i.ge, %i.gf                   ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %.pre1085, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  %i.gl = and i32 %i.gk, 2
  %.not15.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %bb.t
  %i.gm = load i32, ptr %i.db, align 4
  %i.gn = load i32, ptr %i.gi, align 4, !tbaa !137
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp eq i64 %indvars.iv, %i.go
  br i1 %i.gp, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.gq = load i32, ptr %i.gx, align 4, !tbaa !137
  %i.gr = zext i32 %i.gq to i64
  %i.gs = icmp eq i64 %indvars.iv, %i.gr
  br i1 %i.gs, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !466

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i260, %bb.u
  %.01016.i20.i.i = phi i32 [ %i.gv, %bb.u ], [ %i.gg, %.lr.ph.i.i.i260 ]
  %.017.i19.i.i = phi i32 [ %i.gt, %bb.u ], [ 0, %.lr.ph.i.i.i260 ]
  %i.gt = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.gu = add i32 %i.gt, %.01016.i20.i.i
  %i.gv = and i32 %i.gu, %i.gm                    ; 2 uses
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %.pre1085, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4            ; 2 uses
  %i.ha = and i32 %i.gz, 2
  %.not.i.i.i261 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i.i261, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.u, !llvm.loop !466

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.u, %.lr.ph.i.i.i260
  %.lcssa17.i.i = phi i32 [ %i.gk, %.lr.ph.i.i.i260 ], [ %i.gz, %bb.u ]
  %i.hb = phi i64 [ %i.gh, %.lr.ph.i.i.i260 ], [ %i.gw, %bb.u ]
  %i.hc = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.hc, label %bb.v, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread

bb.v:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  %i.hd = load ptr, ptr %i.dc, align 8, !tbaa !430 ; 5 uses
  %.not.i263 = icmp eq ptr %i.hd, null
  br i1 %.not.i263, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %.pre1085, i64 %i.hb
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.val.i264 = load i32, ptr %i.hf, align 4, !tbaa !137 ; 4 uses
  %i.hg = mul i32 %.val.i264, 506952113
  %i.hh = and i32 %i.hg, 1073741823
  %i.hi = load i32, ptr %i.dd, align 8, !tbaa !689
  %i.hj = urem i32 %i.hh, %i.hi                   ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64              ; 2 uses
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4            ; 3 uses
  %i.ho = and i32 %i.hn, 2
  %.not15.i.i.i265 = icmp eq i32 %i.ho, 0
  br i1 %.not15.i.i.i265, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i266

.lr.ph.i.i.i266:                                  ; preds = %bb.w
  %i.hp = load i32, ptr %i.de, align 4            ; 2 uses
  %i.hq = load i32, ptr %i.hl, align 4, !tbaa !137
  %i.hr = icmp eq i32 %i.hq, %.val.i264
  br i1 %i.hr, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i267

bb.x:                                             ; preds = %.lr.ph.i.i267
  %i.hs = load i32, ptr %i.hy, align 4, !tbaa !137
  %i.ht = icmp eq i32 %i.hs, %.val.i264
  br i1 %i.ht, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, label %.lr.ph.i.i267, !llvm.loop !771

.lr.ph.i.i267:                                    ; preds = %.lr.ph.i.i.i266, %bb.x
  %.01016.i20.i.i268 = phi i32 [ %i.hw, %bb.x ], [ %i.hj, %.lr.ph.i.i.i266 ]
  %.017.i19.i.i269 = phi i32 [ %i.hu, %bb.x ], [ 0, %.lr.ph.i.i.i266 ]
  %i.hu = add i32 %.017.i19.i.i269, 1             ; 2 uses
  %i.hv = add i32 %i.hu, %.01016.i20.i.i268
  %i.hw = and i32 %i.hv, %i.hp                    ; 2 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.hx ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4            ; 2 uses
  %i.ib = and i32 %i.ia, 2
  %.not.i.i.i270 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i.i270, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.x, !llvm.loop !771

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit: ; preds = %bb.x
  %i.ic = trunc i32 %i.ia to i1
  br i1 %i.ic, label %.lr.ph.i.i277, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread: ; preds = %.lr.ph.i.i.i266
  %i.id = trunc i32 %i.hn to i1
  br i1 %i.id, label %._crit_edge.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread

bb.y:                                             ; preds = %.lr.ph.i.i277
  %i.ie = load i32, ptr %i.io, align 4, !tbaa !137
  %i.if = icmp eq i32 %i.ie, %.val.i264
  br i1 %i.if, label %._crit_edge.i.i, label %.lr.ph.i.i277, !llvm.loop !771

._crit_edge.i.i:                                  ; preds = %bb.y, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread
  %.lcssa10.i.i = phi i32 [ %i.hn, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.iq, %bb.y ]
  %i.ig = phi i64 [ %i.hk, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.in, %bb.y ]
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.ig
  %i.ii = trunc i32 %.lcssa10.i.i to i1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %spec.select.i.i = select i1 %i.ii, ptr %i.ij, ptr @_hb_NullPool
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3getERKj.exit

.lr.ph.i.i277:                                    ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, %bb.y
  %.01016.i13.i.i = phi i32 [ %i.im, %bb.y ], [ %i.hj, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit ]
  %.017.i12.i.i = phi i32 [ %i.ik, %bb.y ], [ 0, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit ]
  %i.ik = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.il = add i32 %i.ik, %.01016.i13.i.i
  %i.im = and i32 %i.il, %i.hp                    ; 2 uses
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.iq = load i32, ptr %i.ip, align 4            ; 2 uses
  %i.ir = and i32 %i.iq, 2
end_hunk_18
