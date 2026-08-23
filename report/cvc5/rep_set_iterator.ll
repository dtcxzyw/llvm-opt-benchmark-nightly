Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rep_set_iterator?download=true
inline.NumInlined: 1200
inline.NumDeleted: 497
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory14RepSetIterator13setIndexOrderERSt6vectorImSaImEE:bb.a
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !106
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = icmp ugt i64 %i.j, %i.b
  br i1 %i.k, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE5clearEv.exit43
  %storemerge98 = phi i64 [ %i.t, %_ZNSt6vectorIiSaIiEE5clearEv.exit43 ], [ %i.b, %bb.a ] ; 4 uses
  %i.l = tail call noundef i32 @_ZN4cvc58internal6theory14RepSetIterator10resetIndexEmb(ptr noundef nonnull align 8 dereferenceable(169) %0, i64 noundef %storemerge98, i1 noundef zeroext %2)
  switch i32 %i.l, label %_ZNSt6vectorIiSaIiEE5clearEv.exit43 [
    i32 -1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !84
  %.not.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i, label %bb.f, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.m, ptr %i.d, align 8, !tbaa !84
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %storemerge98, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc i64 %storemerge98 to i32
  %i.p = add i32 %i.o, -1
  %i.q = tail call noundef i32 @_ZN4cvc58internal6theory14RepSetIterator16incrementAtIndexEi(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %i.p)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !84
  %.not.i.i41 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i41, label %.thread, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42:      ; preds = %bb.e
  store ptr %i.r, ptr %i.d, align 8, !tbaa !84
  br label %.thread

_ZNSt6vectorIiSaIiEE5clearEv.exit43:              ; preds = %.lr.ph
  %i.t = add nuw i64 %storemerge98, 1             ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %.lr.ph, label %.thread, !llvm.loop !109

bb.f:                                             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.ab, align 8, !tbaa !92
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit43, %bb.a, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42, %bb.f
  %.3 = phi i32 [ -1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i42 ], [ %1, %bb.f ], [ %i.q, %bb.d ], [ -1, %bb.e ], [ %1, %bb.a ], [ %1, %_ZNSt6vectorIiSaIiEE5clearEv.exit43 ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN4cvc58internal6theory14RepSetIterator10resetIndexEmb(ptr noundef nonnull align 8 dereferenceable(169) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1
  store i32 0, ptr %i.c, align 4, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !44
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = lshr i64 %i.l, 40
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 1048575                    ; 3 uses
  %i.p = icmp samesign ult i32 %i.o, 1048574
  br i1 %i.p, label %bb.c, label %bb.d, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw nsw i32 %i.o, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = and i64 %i.l, -1152920405095219201
  %i.u = or i64 %i.s, %i.t
  store i64 %i.u, ptr %i.k, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %i.o, 1048574
  br i1 %i.v, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !54

bb.e:                                             ; preds = %bb.d
  %i.w = or i64 %i.l, 1152920405095219200
  store i64 %i.w, ptr %i.k, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.g
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %0, ptr noundef nonnull align 8 %3, i64 noundef %i.g, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ae = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = and i64 %i.af, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ag, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !54

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.af, 1152920405095219200
  %i.ai = and i64 %i.ah, 1152920405095219200      ; 2 uses
  %i.aj = and i64 %i.af, -1152920405095219201
  %i.ak = or disjoint i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ae, align 8
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !54

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.f, %bb.g, %bb.h
  br i1 %i.ad, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  resume { ptr, i32 } %i.ao

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.g ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100
  %i.av = icmp ne ptr %i.as, %i.au
  %i.aw = zext i1 %i.av to i32
  br label %bb.l

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.k
  %.0 = phi i32 [ %i.aw, %bb.k ], [ -1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory14RepSetIterator16incrementAtIndexEi(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.09396 = phi i32 [ %1, %.lr.ph ], [ %3, %bb.c ] ; 4 uses
  %2 = zext nneg i32 %.09396 to i64               ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %2
  %i.i = load i32, ptr %i.h, align 4, !tbaa !85
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %2
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -1
  %.not = icmp slt i32 %i.i, %i.u
  br i1 %.not, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = add nsw i32 %.09396, -1
  %i.v = icmp sgt i32 %.09396, 0
  br i1 %i.v, label %bb.b, label %.critedge.thread100, !llvm.loop !115

.critedge:                                        ; preds = %bb.a
  %i.w = icmp eq i32 %1, -1
  br i1 %i.w, label %.critedge.thread100, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.critedge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %.critedge.thread

.critedge.thread100:                              ; preds = %bb.c, %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !84
  %.not.i.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.critedge.thread100
  store ptr %i.y, ptr %i.z, align 8, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.critedge.thread:                                 ; preds = %bb.b, %.critedge..critedge.thread_crit_edge
  %4 = phi ptr [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.c, %bb.b ]
  %.09395.a = phi i32 [ %1, %.critedge..critedge.thread_crit_edge ], [ %.09396, %bb.b ] ; 2 uses
  %5 = sext i32 %.09395.a to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5 ; 2 uses
  %7 = load i32, ptr %6, align 4, !tbaa !85
  %i.ab = add nsw i32 %7, 1
  store i32 %i.ab, ptr %6, align 4, !tbaa !85
  %i.ac = tail call noundef i32 @_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %.09395.a, i1 noundef zeroext false)
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %.critedge.thread100, %.critedge.thread
  %.0 = phi i32 [ %i.ac, %.critedge.thread ], [ -1, %.critedge.thread100 ], [ -1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory14RepSetIterator9incrementEv(ptr noundef nonnull align 8 dereferenceable(169) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN4cvc58internal6theory14RepSetIterator16incrementAtIndexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = add i32 %i.j, -1                         ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.09396.i = phi i32 [ %i.k, %.lr.ph.i ], [ %2, %bb.d ] ; 4 uses
  %1 = zext nneg i32 %.09396.i to i64             ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %1
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -1
  %.not.i = icmp slt i32 %i.r, %i.ad
  br i1 %.not.i, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = add nsw i32 %.09396.i, -1
  %i.ae = icmp sgt i32 %.09396.i, 0
  br i1 %i.ae, label %bb.c, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, !llvm.loop !115

.critedge.i:                                      ; preds = %bb.b
  %i.af = icmp eq i32 %i.j, 0
  br i1 %i.af, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, label %.critedge.thread.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d, %.critedge.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !84
  br label %_ZN4cvc58internal6theory14RepSetIterator16incrementAtIndexEi.exit

.critedge.thread.i:                               ; preds = %bb.c, %.critedge.i
  %.09395.i = phi i32 [ %i.k, %.critedge.i ], [ %.09396.i, %bb.c ] ; 2 uses
  %3 = sext i32 %.09395.i to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3 ; 2 uses
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %i.ag = add nsw i32 %5, 1
  store i32 %i.ag, ptr %4, align 4, !tbaa !85
  %i.ah = tail call noundef i32 @_ZN4cvc58internal6theory14RepSetIterator16doResetIncrementEib(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %.09395.i, i1 noundef zeroext false) #26, !inline_history !117
  br label %_ZN4cvc58internal6theory14RepSetIterator16incrementAtIndexEi.exit

_ZN4cvc58internal6theory14RepSetIterator16incrementAtIndexEi.exit: ; preds = %.critedge.thread.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.ah, %.critedge.thread.i ], [ -1, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory14RepSetIterator10isFinishedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  %i.e = icmp eq ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory14RepSetIterator14getCurrentTermEmb(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(169) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.d
  %i.h = load i32, ptr %i.g, align 4, !tbaa !85
  %i.i = sext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %2
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 10 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !44
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = lshr i64 %i.p, 40
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = and i32 %i.r, 1048575                    ; 3 uses
  %i.t = icmp samesign ult i32 %i.s, 1048574
  br i1 %i.t, label %bb.b, label %bb.c, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.u = add nuw nsw i32 %i.s, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 40
  %i.x = and i64 %i.p, -1152920405095219201
  %i.y = or i64 %i.w, %i.x
  store i64 %i.y, ptr %i.o, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.z = icmp eq i32 %i.s, 1048574
  br i1 %i.z, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.aa = or i64 %i.p, 1152920405095219200
  store i64 %i.aa, ptr %i.o, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  br i1 %3, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  store ptr %i.o, ptr %5, align 8, !tbaa !44
  %i.ad = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ae = lshr i64 %i.ad, 40
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1048575                  ; 3 uses
  %i.ah = icmp samesign ult i32 %i.ag, 1048574
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !69

bb.f:                                             ; preds = %bb.e
  %i.ai = add nuw nsw i32 %i.ag, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 40
  %i.al = and i64 %i.ad, -1152920405095219201
  %i.am = or i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.o, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57

bb.g:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %i.ag, 1048574
  br i1 %i.an, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57, !prof !54

bb.h:                                             ; preds = %bb.g
  %i.ao = or i64 %i.ad, 1152920405095219200
  store i64 %i.ao, ptr %i.o, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57 unwind label %bb.q

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57: ; preds = %bb.g, %bb.f, %bb.h
  invoke void @_ZNK4cvc58internal6theory6RepSet24getTermForRepresentativeENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %i.ac, ptr noundef nonnull align 8 %5)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57
  %i.ap = load ptr, ptr %5, align 8, !tbaa !44    ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = and i64 %i.aq, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ar, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.j, !prof !54

bb.j:                                             ; preds = %bb.i
  %i.as = add i64 %i.aq, 1152920405095219200
  %i.at = and i64 %i.as, 1152920405095219200      ; 2 uses
  %i.au = and i64 %i.aq, -1152920405095219201
  %i.av = or disjoint i64 %i.at, %i.au
  store i64 %i.av, ptr %i.ap, align 8
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.k, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !54

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.i, %bb.j, %bb.k
  %i.az = load ptr, ptr %0, align 8, !tbaa !44
  %i.ba = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.p, !prof !41

bb.m:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i.i58 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i58, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.o unwind label %.body      ; 3 uses

bb.o:                                             ; preds = %bb.n
  store i64 1152920405095219200, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store ptr %i.bd, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !42
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %bb.p

.body:                                            ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  br label %bb.ab

bb.p:                                             ; preds = %bb.o, %bb.m, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bg = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !42
  %i.bh = icmp eq ptr %i.az, %i.bg
  br i1 %i.bh, label %.critedge15, label %..critedge14_crit_edge

..critedge14_crit_edge:                           ; preds = %bb.p
  %.pre = load ptr, ptr %4, align 8, !tbaa !44
  br label %.critedge14

bb.q:                                             ; preds = %bb.x, %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit57
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #21
  br label %bb.ab

.critedge15:                                      ; preds = %bb.p
  %i.bk = load ptr, ptr %0, align 8, !tbaa !44    ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = and i64 %i.bl, 1152920405095219200
  %.not.i.i74 = icmp eq i64 %i.bm, 1152920405095219200
  br i1 %.not.i.i74, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75, label %bb.s, !prof !54

bb.s:                                             ; preds = %.critedge15
  %i.bn = add i64 %i.bl, 1152920405095219200
  %i.bo = and i64 %i.bn, 1152920405095219200      ; 2 uses
  %i.bp = and i64 %i.bl, -1152920405095219201
  %i.bq = or disjoint i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bk, align 8
  %i.br = icmp eq i64 %i.bo, 0
  br i1 %i.br, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75, !prof !54

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
end_hunk_0
