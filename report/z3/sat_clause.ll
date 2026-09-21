Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_clause?download=true
inline.NumInlined: 210
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3sat16clause_allocator10del_clauseEPNS_6clauseE:bb.a
  store i32 %i.a, ptr %i.o, align 4, !tbaa !19
  %i.p = add i32 %i.k, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !19
  br label %_ZN6id_gen7recycleEj.exit

_ZN6id_gen7recycleEj.exit:                        ; preds = %bb.a, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12   ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !37
  %.neg7 = add i64 %i.v, -20
  %i.w = sub i64 %.neg7, %i.t
  store i64 %i.w, ptr %i.u, align 8, !tbaa !37
  %i.x = icmp ugt i32 %i.r, 122
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6id_gen7recycleEj.exit
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %1)
  br label %_ZN13sat_allocator10deallocateEmPv.exit

bb.f:                                             ; preds = %_ZN6id_gen7recycleEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = add nuw nsw i64 %i.t, 24
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %_ZN6vectorIPvLb0EjE9push_backERKS0_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6vectorIPvLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %.pre.i.i4 = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %.phi.trans.insert.i.i5 = getelementptr inbounds i8, ptr %.pre.i.i4, i64 -4
  %.pre2.i.i6 = load i32, ptr %.phi.trans.insert.i.i5, align 4, !tbaa !19
  br label %_ZN6vectorIPvLb0EjE9push_backERKS0_.exit.i

_ZN6vectorIPvLb0EjE9push_backERKS0_.exit.i:       ; preds = %bb.h, %bb.g
  %i.aj = phi i32 [ %.pre2.i.i6, %bb.h ], [ %i.af, %bb.g ]
  %i.ak = phi ptr [ %.pre.i.i4, %bb.h ], [ %i.ac, %bb.g ]
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  store ptr %1, ptr %i.am, align 8, !tbaa !42
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !19
  br label %_ZN13sat_allocator10deallocateEmPv.exit

_ZN13sat_allocator10deallocateEmPv.exit:          ; preds = %bb.e, %_ZN6vectorIPvLb0EjE9push_backERKS0_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_6clauseE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.0.0.copyload.peel.pre = load i32, ptr %i.d, align 4, !tbaa !19 ; 4 uses
  %i.e = icmp eq i32 %.sroa.0.0.copyload.peel.pre, -2
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i32 %.sroa.0.0.copyload.peel.pre to i1
  %i.g = select i1 %i.f, ptr @.str.13, ptr @.str.14
  %.mask.i.peel = and i32 %.sroa.0.0.copyload.peel.pre, 1
  %i.h = zext nneg i32 %.mask.i.peel to i64
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.g, i64 noundef %i.h) ; 0 uses
  %i.j = lshr i32 %.sroa.0.0.copyload.peel.pre, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.k) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit.peel

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit.peel

_ZN3satlsERSoNS_7literalE.exit.peel:              ; preds = %bb.d, %bb.c
  %i.n = load i32, ptr %i.b, align 4, !tbaa !11
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN3satlsERSoNS_7literalE.exit, %_ZN3satlsERSoNS_7literalE.exit.peel, %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = and i32 %i.r, 2
  %.not16 = icmp eq i32 %i.s, 0
  br i1 %.not16, label %bb.h, label %bb.g

.peel.next:                                       ; preds = %_ZN3satlsERSoNS_7literalE.exit.peel, %_ZN3satlsERSoNS_7literalE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN3satlsERSoNS_7literalE.exit ], [ 1, %_ZN3satlsERSoNS_7literalE.exit.peel ] ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.u, align 4, !tbaa !19 ; 4 uses
  %i.v = icmp eq i32 %.sroa.0.0.copyload, -2
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.peel.next
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

bb.f:                                             ; preds = %.peel.next
  %i.x = trunc i32 %.sroa.0.0.copyload to i1
  %i.y = select i1 %i.x, ptr @.str.13, ptr @.str.14
  %.mask.i = and i32 %.sroa.0.0.copyload, 1
  %i.z = zext nneg i32 %.mask.i to i64
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.y, i64 noundef %i.z) ; 0 uses
  %i.ab = lshr i32 %.sroa.0.0.copyload, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ac) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !11
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.peel.next, label %._crit_edge, !llvm.loop !82

bb.g:                                             ; preds = %._crit_edge
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %.pre = load i32, ptr %i.q, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ai = phi i32 [ %.pre, %bb.g ], [ %i.r, %._crit_edge ] ; 2 uses
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %.pre24 = load i32, ptr %i.q, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi i32 [ %.pre24, %bb.i ], [ %i.ai, %bb.h ]
  %i.am = and i32 %i.al, 4
  %.not17 = icmp eq i32 %i.am, 0
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRK10ptr_vectorINS_6clauseEE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !86     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit

_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit:      ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit
  ret ptr %0

.lr.ph:                                           ; preds = %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit, %.lr.ph
  %.011 = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %_ZNK6vectorIPN3sat6clauseELb0EjE3endEv.exit ] ; 2 uses
  %i.h = load ptr, ptr %.011, align 8, !tbaa !87
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.h) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3sat14clause_wrapper8containsENS_7literalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq i32 %i.b, -2
  %2 = load ptr, ptr %0, align 8                  ; 2 uses
  br i1 %.not.i, label %_ZNK3sat14clause_wrapper4sizeEv.exit, label %.lr.ph.split

_ZNK3sat14clause_wrapper4sizeEv.exit:             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 3 uses
  %.not10.not = icmp eq i32 %i.d, 0
  br i1 %.not10.not, label %.critedge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNK3sat14clause_wrapper4sizeEv.exit
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %.sroa.0.0.copyload.i.us17 = load i32, ptr %i.f, align 4, !tbaa !19
  %i.g = icmp eq i32 %.sroa.0.0.copyload.i.us17, %1
  br i1 %i.g, label %.critedge, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.lr.ph.split.us
  %wide.trip.count = zext i32 %i.d to i64
  %exitcond23.not.not32 = icmp eq i32 %i.d, 1
  br i1 %exitcond23.not.not32, label %.critedge, label %_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph, !llvm.loop !88

_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph:       ; preds = %.lr.ph18.preheader
  br label %_ZNK3sat14clause_wrapperixEj.exit.us, !llvm.loop !88

_ZNK3sat14clause_wrapperixEj.exit.us:             ; preds = %_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph, %.lr.ph18
  %indvars.iv33 = phi i64 [ 1, %_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph ], [ %indvars.iv.next, %.lr.ph18 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv33
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.h, align 4, !tbaa !19
  %i.i = icmp eq i32 %.sroa.0.0.copyload.i.us, %1
  br i1 %i.i, label %_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge, label %.lr.ph18, !llvm.loop !88

.lr.ph18:                                         ; preds = %_ZNK3sat14clause_wrapperixEj.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond23.not.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond23.not.not, label %.lr.ph18..critedge.loopexit_crit_edge, label %_ZNK3sat14clause_wrapperixEj.exit.us, !llvm.loop !88

.lr.ph.split:                                     ; preds = %bb.a
  %3 = ptrtoint ptr %2 to i64
  %4 = trunc i64 %3 to i32
  %i.j = icmp eq i32 %1, %4
  %i.k = icmp eq i32 %i.b, %1
  %spec.select = or i1 %i.j, %i.k
  br label %.critedge

.lr.ph18..critedge.loopexit_crit_edge:            ; preds = %.lr.ph18
  br label %.critedge, !llvm.loop !88

_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge: ; preds = %_ZNK3sat14clause_wrapperixEj.exit.us
  br label %.critedge, !llvm.loop !88

.critedge:                                        ; preds = %.lr.ph.split, %.lr.ph18.preheader, %.lr.ph18..critedge.loopexit_crit_edge, %_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge, %.lr.ph.split.us, %_ZNK3sat14clause_wrapper4sizeEv.exit
  %.not.lcssa = phi i1 [ false, %_ZNK3sat14clause_wrapper4sizeEv.exit ], [ true, %.lr.ph.split.us ], [ %spec.select, %.lr.ph.split ], [ false, %.lr.ph18.preheader ], [ false, %.lr.ph18..critedge.loopexit_crit_edge ], [ true, %_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3sat14clause_wrapper8containsEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq i32 %i.b, -2
  %2 = load ptr, ptr %0, align 8                  ; 2 uses
  br i1 %.not.i, label %_ZNK3sat14clause_wrapper4sizeEv.exit, label %.lr.ph.split

_ZNK3sat14clause_wrapper4sizeEv.exit:             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 3 uses
  %.not10.not = icmp eq i32 %i.d, 0
  br i1 %.not10.not, label %.critedge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %_ZNK3sat14clause_wrapper4sizeEv.exit
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %.sroa.0.0.copyload.i.us17 = load i32, ptr %i.f, align 4, !tbaa !19
  %i.g = lshr i32 %.sroa.0.0.copyload.i.us17, 1
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %.critedge, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.lr.ph.split.us
  %wide.trip.count = zext i32 %i.d to i64
  %exitcond23.not.not32 = icmp eq i32 %i.d, 1
  br i1 %exitcond23.not.not32, label %.critedge, label %_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph, !llvm.loop !89

_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph:       ; preds = %.lr.ph18.preheader
  br label %_ZNK3sat14clause_wrapperixEj.exit.us, !llvm.loop !89

_ZNK3sat14clause_wrapperixEj.exit.us:             ; preds = %_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph, %.lr.ph18
  %indvars.iv33 = phi i64 [ 1, %_ZNK3sat14clause_wrapperixEj.exit.us.lr.ph ], [ %indvars.iv.next, %.lr.ph18 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv33
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.i, align 4, !tbaa !19
  %i.j = lshr i32 %.sroa.0.0.copyload.i.us, 1
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge, label %.lr.ph18, !llvm.loop !89

.lr.ph18:                                         ; preds = %_ZNK3sat14clause_wrapperixEj.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond23.not.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond23.not.not, label %.lr.ph18..critedge.loopexit_crit_edge, label %_ZNK3sat14clause_wrapperixEj.exit.us, !llvm.loop !89

.lr.ph.split:                                     ; preds = %bb.a
  %3 = ptrtoint ptr %2 to i64
  %4 = trunc i64 %3 to i32
  %i.l = lshr i32 %4, 1
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %.critedge, label %_ZNK3sat14clause_wrapperixEj.exit

_ZNK3sat14clause_wrapperixEj.exit:                ; preds = %.lr.ph.split
  %i.n = lshr i32 %i.b, 1
  %i.o = icmp eq i32 %i.n, %1
  br label %.critedge

.lr.ph18..critedge.loopexit_crit_edge:            ; preds = %.lr.ph18
  br label %.critedge, !llvm.loop !89

_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge: ; preds = %_ZNK3sat14clause_wrapperixEj.exit.us
  br label %.critedge, !llvm.loop !89

.critedge:                                        ; preds = %.lr.ph18.preheader, %.lr.ph18..critedge.loopexit_crit_edge, %_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge, %_ZNK3sat14clause_wrapperixEj.exit, %.lr.ph.split.us, %.lr.ph.split, %_ZNK3sat14clause_wrapper4sizeEv.exit
  %.not.lcssa = phi i1 [ false, %_ZNK3sat14clause_wrapper4sizeEv.exit ], [ true, %.lr.ph.split.us ], [ true, %.lr.ph.split ], [ %i.o, %_ZNK3sat14clause_wrapperixEj.exit ], [ false, %.lr.ph18..critedge.loopexit_crit_edge ], [ true, %_ZNK3sat14clause_wrapperixEj.exit.us..critedge.loopexit_crit_edge ], [ false, %.lr.ph18.preheader ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_14clause_wrapperE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %.not = icmp eq i32 %i.b, -2
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !44
  %.not.i = icmp eq i32 %i.d, -2
  br i1 %.not.i, label %bb.c, label %_ZNK3sat14clause_wrapperixEj.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  br label %_ZNK3sat14clause_wrapperixEj.exit

_ZNK3sat14clause_wrapperixEj.exit:                ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.in = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %.sroa.0.0.i = load i32, ptr %.sroa.0.0.i.in, align 4 ; 4 uses
  %i.g = icmp eq i32 %.sroa.0.0.i, -2
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK3sat14clause_wrapperixEj.exit
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

bb.e:                                             ; preds = %_ZNK3sat14clause_wrapperixEj.exit
  %i.i = trunc i32 %.sroa.0.0.i to i1
  %i.j = select i1 %i.i, ptr @.str.13, ptr @.str.14
  %.mask.i = and i32 %.sroa.0.0.i, 1
  %i.k = zext nneg i32 %.mask.i to i64
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.j, i64 noundef %i.k) ; 0 uses
  %i.m = lshr i32 %.sroa.0.0.i, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.n) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit

_ZN3satlsERSoNS_7literalE.exit:                   ; preds = %bb.d, %bb.e
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i9 = icmp eq i32 %i.q, -2
  br i1 %.not.i9, label %_ZNK3sat14clause_wrapperixEj.exit12, label %_ZNK3sat14clause_wrapperixEj.exit12.thread

_ZNK3sat14clause_wrapperixEj.exit12:              ; preds = %_ZN3satlsERSoNS_7literalE.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.s, align 4, !tbaa !19 ; 2 uses
  %i.t = icmp eq i32 %.sroa.0.0.copyload.i11, -2
  br i1 %i.t, label %bb.f, label %_ZNK3sat14clause_wrapperixEj.exit12.thread

bb.f:                                             ; preds = %_ZNK3sat14clause_wrapperixEj.exit12
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 4) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit14

_ZNK3sat14clause_wrapperixEj.exit12.thread:       ; preds = %_ZN3satlsERSoNS_7literalE.exit, %_ZNK3sat14clause_wrapperixEj.exit12
  %.sroa.0.0.i1016 = phi i32 [ %.sroa.0.0.copyload.i11, %_ZNK3sat14clause_wrapperixEj.exit12 ], [ %i.q, %_ZN3satlsERSoNS_7literalE.exit ] ; 3 uses
  %i.v = trunc i32 %.sroa.0.0.i1016 to i1
  %i.w = select i1 %i.v, ptr @.str.13, ptr @.str.14
  %.mask.i13 = and i32 %.sroa.0.0.i1016, 1
  %i.x = zext nneg i32 %.mask.i13 to i64
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.w, i64 noundef %i.x) ; 0 uses
  %i.z = lshr i32 %.sroa.0.0.i1016, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 0 uses
  br label %_ZN3satlsERSoNS_7literalE.exit14

_ZN3satlsERSoNS_7literalE.exit14:                 ; preds = %bb.f, %_ZNK3sat14clause_wrapperixEj.exit12.thread
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %1, align 8, !tbaa !45
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.af) ; 2 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.8, i64 noundef 2) ; 0 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !45
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoRKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 4 dereferenceable(20) %i.ai) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3satlsERSoNS_7literalE.exit14
  ret ptr %0
}

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIPN13sat_allocator5chunkELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !32
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !49
  %i.r = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !51
  %i.y = load i64, ptr %i.s, align 8, !tbaa !45
  store i64 %i.y, ptr %i.q, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !52
  store ptr %i.s, ptr %1, align 8, !tbaa !51
  store i64 0, ptr %i.aa, align 8, !tbaa !52
  store i8 0, ptr %i.s, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !45
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
end_hunk_0
