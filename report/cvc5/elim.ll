Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/elim?download=true
inline.NumInlined: 979
inline.NumDeleted: 383
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL4heapINS_9elim_moreEE9pop_frontEv:bb.a
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !167
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !167
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !167
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !167
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !167
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !167
  %i.an = load i32, ptr %i.ac, align 4, !tbaa !167
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !167
  store i32 %i.am, ptr %i.ac, align 4, !tbaa !167
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN7CaDiCaL4heapINS_9elim_moreEE8exchangeEjj.exit
  %.pre-phi = phi i64 [ %.pre8, %._crit_edge ], [ %i.k, %_ZN7CaDiCaL4heapINS_9elim_moreEE8exchangeEjj.exit ] ; 3 uses
  %i.ao = phi ptr [ %i.a, %._crit_edge ], [ %i.af, %_ZN7CaDiCaL4heapINS_9elim_moreEE8exchangeEjj.exit ]
  %i.ap = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %_ZN7CaDiCaL4heapINS_9elim_moreEE8exchangeEjj.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !174 ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 2 uses
  %.not.i = icmp ugt i64 %i.av, %.pre-phi
  br i1 %.not.i, label %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = add nuw nsw i64 %.pre-phi, 1
  %i.ay = sub nuw nsw i64 %i.ax, %i.av
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr %i.ar, i64 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i5 = load ptr, ptr %i.aw, align 8, !tbaa !175
  %.pre7 = load ptr, ptr %0, align 8, !tbaa !175
  br label %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit

_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit:    ; preds = %bb.e, %bb.f
  %i.az = phi ptr [ %.pre7, %bb.f ], [ %i.ao, %bb.e ]
  %i.ba = phi ptr [ %.pre.i5, %bb.f ], [ %i.ap, %bb.e ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.pre-phi
  store i32 -1, ptr %i.bb, align 4, !tbaa !167
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !174
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !174
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.az to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ugt i64 %i.bg, 4
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit
  tail call void @_ZN7CaDiCaL4heapINS_9elim_moreEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7CaDiCaL4heapINS_9elim_moreEE5indexEj.exit
  ret i32 %i.b
}

declare void @_ZN7CaDiCaL8Internal18garbage_collectionEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal32collect_instantiation_candidatesERNS_12InstantiatorE(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal11reset_noccsEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704), i8 noundef signext, i32 noundef) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal11instantiateERNS_12InstantiatorE(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7CaDiCaL10EliminatorD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal26increase_elimination_boundEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2952 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !189  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3396
  %i.d = load i32, ptr %i.c, align 4, !tbaa !231
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %.not = icmp slt i64 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.b, 0
  %.not6 = icmp eq i64 %i.b, 0
  %i.g = shl nuw nsw i64 %i.b, 1
  %spec.select = select i1 %.not6, i64 1, i64 %i.g
  %.sink = select i1 %i.f, i64 0, i64 %spec.select
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %.sink, i64 %i.e)
  store i64 %spec.store.select, ptr %i.a, align 8, !tbaa !189
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201, !nonnull !160, !align !202
  %i.j = load i32, ptr %i.i, align 4, !tbaa !167  ; 2 uses
  %.not1112 = icmp eq i32 %i.j, 0
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %.pre14 = load ptr, ptr %i.k, align 8, !tbaa !168
  br label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.b
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 94, i32 noundef 0)
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi ptr [ %.pre14, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %.sroa.08.013 = phi i32 [ 1, %.lr.ph ], [ %i.x, %bb.d ] ; 3 uses
  %i.n = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.08.013, i1 true)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = and i32 %i.q, 117440768
  %or.cond = icmp eq i32 %i.r, 16777216
  br i1 %or.cond, label %_ZN7CaDiCaL8Internal9mark_elimEi.exit, label %bb.d

_ZN7CaDiCaL8Internal9mark_elimEi.exit:            ; preds = %bb.c
  %i.s = load i64, ptr %i.l, align 8, !tbaa !166
  %i.t = add nsw i64 %i.s, 1
  store i64 %i.t, ptr %i.l, align 8, !tbaa !166
  %i.u = load i32, ptr %i.p, align 1
  %i.v = or i32 %i.u, 256
  store i32 %i.v, ptr %i.p, align 1
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !168
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN7CaDiCaL8Internal9mark_elimEi.exit
  %i.w = phi ptr [ %i.m, %bb.c ], [ %.pre, %_ZN7CaDiCaL8Internal9mark_elimEi.exit ]
  %i.x = add i32 %.sroa.08.013, 1
  %.not11 = icmp eq i32 %.sroa.08.013, %i.j
  br i1 %.not11, label %._crit_edge, label %bb.c

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal4elimEb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !182, !range !159, !noundef !160
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.g = load i32, ptr %i.f, align 4, !tbaa !281
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.al

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4880 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !282
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !282
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !283, !range !159, !noundef !160
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.o, align 2, !tbaa !284
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.r = load i64, ptr %i.q, align 8, !tbaa !230
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4832
  %i.t = load i64, ptr %i.s, align 8, !tbaa !229
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN7CaDiCaL8Internal7subsumeEb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i1 noundef zeroext %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !190
  %i.v = load i8, ptr %i.c, align 4, !tbaa !182, !range !159, !noundef !160
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.y, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3440
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.v
  %.01023 = phi i32 [ 1, %.lr.ph ], [ %i.av, %bb.v ] ; 2 uses
  %i.ad = load volatile i8, ptr %i.x, align 8, !tbaa !203, !range !159, !noundef !160
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.critedge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %i.z, align 4, !tbaa !204 ; 3 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !204
  %i.ah = icmp eq i32 %i.af, 1
  br i1 %i.ah, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !191
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 360
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !223 ; 3 uses
  %.not3.i = icmp eq ptr %i.ak, null
  br i1 %.not3.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.y, align 8, !tbaa !224 ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.y, align 8, !tbaa !224
  %.not4.i = icmp eq i32 %i.al, 0
  br i1 %.not4.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ab, align 8, !tbaa !225
  store i32 %i.an, ptr %i.y, align 8, !tbaa !224
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !227
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.ak), !inline_history !0
  br i1 %i.ar, label %.sink.split.i, label %bb.q

.sink.split.i:                                    ; preds = %bb.p, %bb.m
  store volatile i8 1, ptr %i.x, align 8, !tbaa !203
  br label %.critedge.thread

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.as = call noundef i32 @_ZN7CaDiCaL8Internal10elim_roundERbS1_(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  %i.at = load i8, ptr %i.b, align 1, !tbaa !190, !range !159, !noundef !160
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.av = add nuw nsw i32 %.01023, 1
  %i.aw = load i32, ptr %i.ac, align 8, !tbaa !285
  %.not12 = icmp slt i32 %.01023, %i.aw
  br i1 %.not12, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal13subsume_roundEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ax, label %bb.v, label %bb.t, !llvm.loop !280

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal5blockEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ay, label %bb.v, label %bb.u, !llvm.loop !280

bb.u:                                             ; preds = %bb.t
  %i.az = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal5coverEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %not. = xor i1 %i.az, true
  %.0. = zext i1 %not. to i8
  br label %bb.v, !llvm.loop !280

.thread:                                          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge.thread

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.1 = phi i8 [ %.0., %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.ba = load i8, ptr %i.c, align 4, !tbaa !182, !range !159, !noundef !160
  %i.bb = or i8 %i.ba, %.1
  %or.cond.not = icmp eq i8 %i.bb, 0
  br i1 %or.cond.not, label %bb.k, label %.critedge

.critedge:                                        ; preds = %bb.v
  %i.bc = trunc nuw i8 %.1 to i1
  br i1 %i.bc, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4888 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !286
  %i.bf = add nsw i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !286
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k, %.sink.split.i, %.thread, %.critedge, %bb.w
  %.ph = phi i1 [ true, %bb.w ], [ false, %.sink.split.i ], [ false, %.thread ], [ false, %.critedge ], [ false, %bb.k ] ; 2 uses
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !190
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.critedge.thread
  tail call void @_ZN7CaDiCaL8Internal22delete_garbage_clausesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.x, %.critedge.thread
  %2 = phi i1 [ %.ph, %.critedge.thread ], [ %.ph, %bb.x ], [ false, %bb.j ]
  tail call void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  tail call void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(5704) %0, i1 noundef zeroext false)
  %i.bi = load i8, ptr %i.c, align 4, !tbaa !182, !range !159, !noundef !160
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !287
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !184
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !183
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  %i.bu = icmp ult i64 %i.bl, %i.bt
  br i1 %i.bu, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bv = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.bv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.aa, %bb.y
  br i1 %2, label %bb.ad, label %_ZN7CaDiCaL8Internal26increase_elimination_boundEv.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2952 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !189 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3396
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !231
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %.not.i13 = icmp slt i64 %i.bx, %i.ca
  br i1 %.not.i13, label %bb.ae, label %_ZN7CaDiCaL8Internal26increase_elimination_boundEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cb = icmp slt i64 %i.bx, 0
  %.not6.i = icmp eq i64 %i.bx, 0
  %i.cc = shl nuw nsw i64 %i.bx, 1
  %spec.select.i = select i1 %.not6.i, i64 1, i64 %i.cc
  %.sink.i = select i1 %i.cb, i64 0, i64 %spec.select.i
  %spec.store.select.i = tail call i64 @llvm.smin.i64(i64 %.sink.i, i64 %i.ca)
  store i64 %spec.store.select.i, ptr %i.bw, align 8, !tbaa !189
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !201, !nonnull !160, !align !202
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !167 ; 2 uses
  %.not1112.i = icmp eq i32 %i.cf, 0
  br i1 %.not1112.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %.pre14.i = load ptr, ptr %i.cg, align 8, !tbaa !168
  br label %bb.af

._crit_edge.i:                                    ; preds = %bb.ag, %bb.ae
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 94, i32 noundef 0)
  br label %_ZN7CaDiCaL8Internal26increase_elimination_boundEv.exit

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i
  %i.ci = phi ptr [ %.pre14.i, %.lr.ph.i ], [ %i.cs, %bb.ag ] ; 2 uses
  %.sroa.08.013.i = phi i32 [ 1, %.lr.ph.i ], [ %i.ct, %bb.ag ] ; 3 uses
  %i.cj = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.08.013.i, i1 true)
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ck ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = and i32 %i.cm, 117440768
  %or.cond.i = icmp eq i32 %i.cn, 16777216
  br i1 %or.cond.i, label %_ZN7CaDiCaL8Internal9mark_elimEi.exit.i, label %bb.ag

_ZN7CaDiCaL8Internal9mark_elimEi.exit.i:          ; preds = %bb.af
  %i.co = load i64, ptr %i.ch, align 8, !tbaa !166
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !166
  %i.cq = load i32, ptr %i.cl, align 1
  %i.cr = or i32 %i.cq, 256
  store i32 %i.cr, ptr %i.cl, align 1
  %.pre.i = load ptr, ptr %i.cg, align 8, !tbaa !168
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN7CaDiCaL8Internal9mark_elimEi.exit.i, %bb.af
  %i.cs = phi ptr [ %i.ci, %bb.af ], [ %.pre.i, %_ZN7CaDiCaL8Internal9mark_elimEi.exit.i ]
  %i.ct = add i32 %.sroa.08.013.i, 1
  %.not11.i = icmp eq i32 %.sroa.08.013.i, %i.cf
  br i1 %.not11.i, label %._crit_edge.i, label %bb.af

_ZN7CaDiCaL8Internal26increase_elimination_boundEv.exit: ; preds = %._crit_edge.i, %bb.ad, %bb.ac
  %i.cu = load i8, ptr %i.l, align 2, !tbaa !283, !range !159, !noundef !160
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN7CaDiCaL8Internal26increase_elimination_boundEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.cw, align 2, !tbaa !284
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN7CaDiCaL8Internal26increase_elimination_boundEv.exit
  br i1 %1, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3416
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !288
  %i.cz = sext i32 %i.cy to i64
  %i.da = load i64, ptr %i.i, align 8, !tbaa !282
  %i.db = add nsw i64 %i.da, 1
  %i.dc = mul nsw i64 %i.db, %i.cz
  %i.dd = sitofp i64 %i.dc to double
  %i.de = tail call noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(5704) %0, double noundef %i.dd)
  %i.df = fptosi double %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3920
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !162
  %i.di = add nsw i64 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2856
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !161
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5448
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !164
  store i64 %i.dl, ptr %i.p, align 8, !tbaa !163
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak, %bb.e
  ret void
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal7subsumeEb(ptr noundef nonnull align 8 dereferenceable(5704), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal13subsume_roundEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal5blockEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal5coverEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal22delete_garbage_clausesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(5704), i1 noundef zeroext) local_unnamed_addr #4

declare noundef double @_ZNK7CaDiCaL8Internal5scaleEd(ptr noundef nonnull align 8 dereferenceable(5704), double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare void @_ZN7CaDiCaL10Eliminator7enqueueEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL4heapINS_9elim_moreEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !175    ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit2

_ZNSt6vectorIjSaIjEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  ret void
}

end_hunk_0
