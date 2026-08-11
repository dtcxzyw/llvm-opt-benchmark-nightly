inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z21_mi_page_queue_appendP9mi_heap_sP15mi_page_queue_sS2_:bb.a
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 0, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 2, label %bb.d
  ], !prof !299

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  %i.s = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.2.i

bb.d:                                             ; preds = %.critedge.1.i
  %i.t = and i64 %i.p, -4
  %i.u = cmpxchg weak ptr %i.j, i64 %i.p, i64 %i.t release monotonic, align 8
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit, label %.critedge.1.i, !llvm.loop !33

.critedge.2.i:                                    ; preds = %bb.e, %.critedge.outer.2.i
  %i.w = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 3
  switch i32 %i.y, label %.critedge.2.i.unreachabledefault [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 0, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 2, label %bb.e
  ], !prof !299

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  %i.z = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.3.i

bb.e:                                             ; preds = %.critedge.2.i
  %i.aa = and i64 %i.w, -4
  %i.ab = cmpxchg weak ptr %i.j, i64 %i.w, i64 %i.aa release monotonic, align 8
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  br i1 %i.ac, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit, label %.critedge.2.i, !llvm.loop !33

.critedge.3.i:                                    ; preds = %bb.f, %.critedge.outer.3.i
  %i.ad = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 3
  switch i32 %i.af, label %.critedge.3.i.unreachabledefault [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 0, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 2, label %bb.f
  ], !prof !299

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  %i.ag = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.4.i

bb.f:                                             ; preds = %.critedge.3.i
  %i.ah = and i64 %i.ad, -4
  %i.ai = cmpxchg weak ptr %i.j, i64 %i.ad, i64 %i.ah release monotonic, align 8
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit, label %.critedge.3.i, !llvm.loop !33

.critedge.4.i:                                    ; preds = %bb.g, %.critedge.outer.4.i
  %i.ak = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 3
  switch i32 %i.am, label %.critedge.4.i.unreachabledefault [
    i32 1, label %.lr.ph.i
    i32 3, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 0, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
    i32 2, label %bb.g
  ], !prof !299

bb.g:                                             ; preds = %.critedge.4.i
  %i.an = and i64 %i.ak, -4
  %i.ao = cmpxchg weak ptr %i.j, i64 %i.ak, i64 %i.an release monotonic, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit, label %.critedge.4.i, !llvm.loop !33

.critedge.4.i.unreachabledefault:                 ; preds = %.critedge.4.i
  unreachable

.critedge.3.i.unreachabledefault:                 ; preds = %.critedge.3.i
  unreachable

.critedge.2.i.unreachabledefault:                 ; preds = %.critedge.2.i
  unreachable

.critedge.1.i.unreachabledefault:                 ; preds = %.critedge.1.i
  unreachable

.critedge.i.unreachabledefault:                   ; preds = %.critedge.i
  unreachable

bb.h:                                             ; preds = %.critedge.i
  %i.aq = and i64 %i.l, -4
  %i.ar = cmpxchg weak ptr %i.j, i64 %i.l, i64 %i.aq release monotonic, align 8
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit, label %.critedge.i, !llvm.loop !33

_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit: ; preds = %.critedge.i, %.critedge.i, %bb.h, %.critedge.1.i, %.critedge.1.i, %bb.d, %.critedge.2.i, %.critedge.2.i, %bb.e, %.critedge.3.i, %.critedge.3.i, %bb.f, %.critedge.4.i, %.critedge.4.i, %bb.g, %bb.c
  %i.at = add i64 %.02238, 1                      ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.039, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !221 ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !300

bb.i:                                             ; preds = %bb.b
  store ptr %i.g, ptr %1, align 8, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !298
  store ptr %i.ax, ptr %i.d, align 8, !tbaa !298
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !65 ; 4 uses
  %i.ba = icmp ugt i64 %i.az, 1024
  br i1 %i.ba, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = icmp eq ptr %i.g, null
  %spec.store.select.i = select i1 %i.bb, ptr @_mi_page_empty, ptr %i.g ; 3 uses
  %i.bc = add nuw nsw i64 %i.az, 7
  %i.bd = lshr i64 %i.bc, 3                       ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bh = icmp eq ptr %i.bg, %spec.store.select.i
  br i1 %i.bh, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i64 %i.az, 9
  br i1 %i.bi, label %.lr.ph.preheader.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp samesign ult i64 %i.az, 65
  br i1 %i.bj, label %bb.m, label %bb.n, !prof !26

bb.m:                                             ; preds = %bb.l
  %i.bk = add nuw nsw i64 %i.bd, 1
  %i.bl = and i64 %i.bk, 30
  br label %_ZL6mi_binm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bm = add nsw i64 %i.bd, -1                   ; 2 uses
  %i.bn = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 false) ; 2 uses
  %i.bo = sub nuw nsw i64 61, %i.bn
  %i.bp = lshr i64 %i.bm, %i.bo
  %i.bq = and i64 %i.bp, 3
  %i.br = shl nuw nsw i64 %i.bn, 2
  %reass.sub = sub nsw i64 %i.bq, %i.br
  %i.bs = add nsw i64 %reass.sub, 249
  br label %_ZL6mi_binm.exit.i

_ZL6mi_binm.exit.i:                               ; preds = %bb.n, %bb.m
  %.0.i.i = phi i64 [ %i.bl, %bb.m ], [ %i.bs, %bb.n ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %bb.o

bb.o:                                             ; preds = %_ZL6mi_binm.exit36.i, %_ZL6mi_binm.exit.i
  %.pn.i = phi ptr [ %1, %_ZL6mi_binm.exit.i ], [ %.027.i, %_ZL6mi_binm.exit36.i ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.bw = add i64 %i.bv, 7                        ; 4 uses
  %i.bx = lshr i64 %i.bw, 3                       ; 4 uses
  %i.by = icmp ult i64 %i.bw, 72
  br i1 %i.by, label %bb.p, label %bb.q, !prof !26

bb.p:                                             ; preds = %bb.o
  %i.bz = add nuw nsw i64 %i.bx, 1
  %i.ca = and i64 %i.bz, 30
  %.inv.i35.i = icmp samesign ugt i64 %i.bw, 15
  %i.cb = select i1 %.inv.i35.i, i64 %i.ca, i64 1
  br label %_ZL6mi_binm.exit36.i

bb.q:                                             ; preds = %bb.o
  %i.cc = icmp ugt i64 %i.bw, 65543
  br i1 %i.cc, label %_ZL6mi_binm.exit36.i, label %bb.r, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.cd = add nsw i64 %i.bx, -1                   ; 2 uses
  %i.ce = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 false) ; 2 uses
  %i.cf = sub nuw nsw i64 61, %i.ce
  %i.cg = lshr i64 %i.cd, %i.cf
  %i.ch = and i64 %i.cg, 3
  %i.ci = shl nuw nsw i64 %i.ce, 2
  %reass.sub41 = sub nsw i64 %i.ch, %i.ci
  %i.cj = add nsw i64 %reass.sub41, 249
  br label %_ZL6mi_binm.exit36.i

_ZL6mi_binm.exit36.i:                             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i34.i = phi i64 [ %i.cb, %bb.p ], [ %i.cj, %bb.r ], [ 73, %bb.q ]
  %i.ck = icmp eq i64 %.0.i.i, %.0.i34.i
  %i.cl = icmp ugt ptr %.027.i, %i.bt
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.o, label %bb.s, !llvm.loop !301

bb.s:                                             ; preds = %_ZL6mi_binm.exit36.i
  %i.cn = add nuw nsw i64 %i.bx, 1
  %.not.i = icmp samesign ult i64 %i.bx, %i.bd
  %spec.select.i = select i1 %.not.i, i64 %i.cn, i64 %i.bd ; 2 uses
  %.not3238.i = icmp samesign ugt i64 %spec.select.i, %i.bd
  br i1 %.not3238.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s, %bb.k
  %.147.i = phi i64 [ %spec.select.i, %bb.s ], [ 0, %bb.k ] ; 4 uses
  %3 = add nuw nsw i64 %i.bd, 1
  %4 = sub nsw i64 %3, %.147.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i26.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.co = add i64 %.147.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.147.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.cq, align 8, !tbaa !39
  store <2 x ptr> %broadcast.splat, ptr %i.cr, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %.039.i.ph = phi i64 [ %.147.i, %.lr.ph.preheader.i ], [ %i.co, %middle.block ]
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26.preheader, %.lr.ph.i26
  %.039.i = phi i64 [ %i.cu, %.lr.ph.i26 ], [ %.039.i.ph, %.lr.ph.i26.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.039.i
  store ptr %spec.store.select.i, ptr %i.ct, align 8, !tbaa !39
  %i.cu = add nuw nsw i64 %.039.i, 1
  %exitcond.not.i = icmp eq i64 %.039.i, %i.bd
  br i1 %exitcond.not.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i26, !llvm.loop !303

bb.t:                                             ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.g, ptr %i.cv, align 8, !tbaa !221
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %i.e, ptr %i.cw, align 8, !tbaa !304
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !298
  store ptr %i.cy, ptr %i.d, align 8, !tbaa !298
  br label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit

_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit: ; preds = %.lr.ph.i26, %middle.block, %bb.s, %bb.j, %bb.i, %bb.t, %bb.a
  %.023 = phi i64 [ 0, %bb.a ], [ %i.at, %bb.t ], [ %i.at, %bb.i ], [ %i.at, %bb.j ], [ %i.at, %bb.s ], [ %i.at, %middle.block ], [ %i.at, %.lr.ph.i26 ]
  ret i64 %.023
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = tail call noundef i32 @sched_yield() #55 ; 0 uses
  %i.c = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  br i1 %i.c, label %._crit_edge, label %.lr.ph, !llvm.loop !222

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z16_mi_page_reclaimP9mi_heap_sP9mi_page_s(ptr nofree noundef captures(address) %0, ptr noundef initializes((72, 88)) %1) local_unnamed_addr #39 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !20
  %i.b = add i64 %.val, 7                         ; 4 uses
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = icmp ult i64 %i.b, 72
  br i1 %i.d, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 1
  %i.f = and i64 %i.e, 30
  %.inv.i.i.i = icmp samesign ugt i64 %i.b, 15
  %i.g = select i1 %.inv.i.i.i, i64 %i.f, i64 1
  br label %_ZL13mi_page_queuePK9mi_heap_sm.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.b, 65543
  br i1 %i.h, label %_ZL13mi_page_queuePK9mi_heap_sm.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.c, -1                     ; 2 uses
  %i.j = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 false) ; 2 uses
  %i.k = sub nuw nsw i64 61, %i.j
  %i.l = lshr i64 %i.i, %i.k
  %i.m = and i64 %i.l, 3
  %i.n = shl nuw nsw i64 %i.j, 2
  %reass.sub = sub nsw i64 %i.m, %i.n
  %i.o = add nsw i64 %reass.sub, 249
  br label %_ZL13mi_page_queuePK9mi_heap_sm.exit

_ZL13mi_page_queuePK9mi_heap_sm.exit:             ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ 73, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.0.i.i.i
  tail call fastcc void @_ZL18mi_page_queue_pushP9mi_heap_sP15mi_page_queue_sP9mi_page_s(ptr noundef %0, ptr noundef nonnull %i.q, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL18mi_page_queue_pushP9mi_heap_sP15mi_page_queue_sP9mi_page_s(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef initializes((72, 88)) %2) unnamed_addr #39 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !65
  %i.b = icmp eq i64 %.val, 65552
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = and i8 %i.e, -2
  %i.g = or disjoint i8 %i.f, %i.c
  store i8 %i.g, ptr %i.d, align 2
  %i.h = load ptr, ptr %1, align 8, !tbaa !220    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.h, ptr %i.i, align 8, !tbaa !221
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.j, align 8, !tbaa !304
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %2, ptr %i.k, align 8, !tbaa !304
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !298
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %2, ptr %1, align 8, !tbaa !220
  %i.m = load i64, ptr %i.a, align 8, !tbaa !65   ; 4 uses
  %i.n = icmp ugt i64 %i.m, 1024
  br i1 %i.n, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %i.m, 7
  %i.p = lshr i64 %i.o, 3                         ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = icmp eq ptr %i.s, %2
  br i1 %i.t, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i64 %i.m, 9
  br i1 %i.u, label %.lr.ph.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ult i64 %i.m, 65
  br i1 %i.v, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw nsw i64 %i.p, 1
  %i.x = and i64 %i.w, 30
  br label %_ZL6mi_binm.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = add nsw i64 %i.p, -1                     ; 2 uses
  %i.z = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 false) ; 2 uses
  %i.aa = sub nuw nsw i64 61, %i.z
  %i.ab = lshr i64 %i.y, %i.aa
  %i.ac = and i64 %i.ab, 3
  %i.ad = shl nuw nsw i64 %i.z, 2
  %reass.sub = sub nsw i64 %i.ac, %i.ad
  %i.ae = add nsw i64 %reass.sub, 249
  br label %_ZL6mi_binm.exit.i

_ZL6mi_binm.exit.i:                               ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.x, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1280
  br label %bb.j

bb.j:                                             ; preds = %_ZL6mi_binm.exit36.i, %_ZL6mi_binm.exit.i
  %.pn.i = phi ptr [ %1, %_ZL6mi_binm.exit.i ], [ %.027.i, %_ZL6mi_binm.exit36.i ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !65
  %i.ai = add i64 %i.ah, 7                        ; 4 uses
  %i.aj = lshr i64 %i.ai, 3                       ; 4 uses
  %i.ak = icmp ult i64 %i.ai, 72
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw nsw i64 %i.aj, 1
  %i.am = and i64 %i.al, 30
  %.inv.i35.i = icmp samesign ugt i64 %i.ai, 15
  %i.an = select i1 %.inv.i35.i, i64 %i.am, i64 1
  br label %_ZL6mi_binm.exit36.i

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp ugt i64 %i.ai, 65543
  br i1 %i.ao, label %_ZL6mi_binm.exit36.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.aq = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false) ; 2 uses
  %i.ar = sub nuw nsw i64 61, %i.aq
  %i.as = lshr i64 %i.ap, %i.ar
  %i.at = and i64 %i.as, 3
  %i.au = shl nuw nsw i64 %i.aq, 2
  %reass.sub18 = sub nsw i64 %i.at, %i.au
  %i.av = add nsw i64 %reass.sub18, 249
  br label %_ZL6mi_binm.exit36.i

_ZL6mi_binm.exit36.i:                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i34.i = phi i64 [ %i.an, %bb.k ], [ %i.av, %bb.m ], [ 73, %bb.l ]
  %i.aw = icmp eq i64 %.0.i.i, %.0.i34.i
  %i.ax = icmp ugt ptr %.027.i, %i.af
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.j, label %bb.n, !llvm.loop !301

bb.n:                                             ; preds = %_ZL6mi_binm.exit36.i
  %i.az = add nuw nsw i64 %i.aj, 1
  %.not.i = icmp samesign ult i64 %i.aj, %i.p
  %spec.select.i = select i1 %.not.i, i64 %i.az, i64 %i.p ; 2 uses
  %.not3238.i = icmp samesign ugt i64 %spec.select.i, %i.p
  br i1 %.not3238.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n, %bb.f
  %.147.i = phi i64 [ %spec.select.i, %bb.n ], [ 0, %bb.f ] ; 4 uses
  %3 = add nuw nsw i64 %i.p, 1
  %4 = sub nsw i64 %3, %.147.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.ba = add i64 %.147.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.147.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bc, align 8, !tbaa !39
  store <2 x ptr> %broadcast.splat, ptr %i.bd, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.039.i.ph = phi i64 [ %.147.i, %.lr.ph.preheader.i ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i = phi i64 [ %i.bg, %.lr.ph.i ], [ %.039.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.039.i
  store ptr %2, ptr %i.bf, align 8, !tbaa !39
  %i.bg = add nuw nsw i64 %.039.i, 1
  %exitcond.not.i = icmp eq i64 %.039.i, %i.p
  br i1 %exitcond.not.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i, !llvm.loop !306

_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d, %bb.e, %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !219
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z25_mi_heap_delayed_free_allP9mi_heap_s(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i15 = icmp eq ptr %i.b, null
  br i1 %.old1.not.i15, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %.023.i = phi ptr [ %.023.i.be, %.preheader.i.backedge ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = cmpxchg weak ptr %i.a, ptr %.023.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  br i1 %i.d, label %.lr.ph.i, label %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i

_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i: ; preds = %.preheader.i
  %i.e = extractvalue { ptr, i1 } %i.c, 0         ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_Z29_mi_heap_delayed_free_partialP9mi_heap_s.exit.thread, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i, %bb.s
  %.023.i.be = phi ptr [ %i.e, %_ZNSt6atomicIP10mi_block_sE21compare_exchange_weakERS1_S1_St12memory_orderS4_.exit.i ], [ %i.ek, %bb.s ]
  br label %.preheader.i, !llvm.loop !307

.lr.ph.i:                                         ; preds = %.preheader.i, %.loopexit.i
  %.032.i = phi i1 [ %.1.i, %.loopexit.i ], [ true, %.preheader.i ] ; 3 uses
  %.231.i = phi ptr [ %i.g, %.loopexit.i ], [ %.023.i, %.preheader.i ] ; 8 uses
  %.val.i = load i64, ptr %.231.i, align 8, !tbaa !22 ; 2 uses
  %i.g = inttoptr i64 %.val.i to ptr
  %i.h = ptrtoint ptr %.231.i to i64              ; 2 uses
  %i.i = add i64 %i.h, -1                         ; 2 uses
  %i.j = and i64 %i.i, -33554432
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp slt i64 %i.i, 33554432
  %i.m = select i1 %i.l, ptr null, ptr %i.k       ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.h, %i.n
  %i.p = lshr i64 %i.o, 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = zext i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 14 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %.lr.ph.i
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 3
  switch i32 %i.aa, label %.critedge.i.unreachabledefault [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.f
  ], !prof !299

.critedge.outer.1.i:                              ; preds = %.critedge.i
  %i.ab = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.b, %.critedge.outer.1.i
  %i.ac = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 3
  switch i32 %i.ae, label %.critedge.1.i.unreachabledefault [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.b
  ], !prof !299

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  %i.af = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.2.i

bb.b:                                             ; preds = %.critedge.1.i
  %i.ag = and i64 %i.ac, -4
  %i.ah = cmpxchg weak ptr %i.x, i64 %i.ac, i64 %i.ag release monotonic, align 8
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit, label %.critedge.1.i, !llvm.loop !33

.critedge.2.i:                                    ; preds = %bb.c, %.critedge.outer.2.i
  %i.aj = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 3
  switch i32 %i.al, label %.critedge.2.i.unreachabledefault [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.c
  ], !prof !299

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  %i.am = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.3.i

bb.c:                                             ; preds = %.critedge.2.i
  %i.an = and i64 %i.aj, -4
  %i.ao = cmpxchg weak ptr %i.x, i64 %i.aj, i64 %i.an release monotonic, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %.loopexit, label %.critedge.2.i, !llvm.loop !33

.critedge.3.i:                                    ; preds = %bb.d, %.critedge.outer.3.i
  %i.aq = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 3
  switch i32 %i.as, label %.critedge.3.i.unreachabledefault [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.d
  ], !prof !299

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  %i.at = tail call noundef i32 @sched_yield() #55 ; 0 uses
  br label %.critedge.4.i

bb.d:                                             ; preds = %.critedge.3.i
  %i.au = and i64 %i.aq, -4
  %i.av = cmpxchg weak ptr %i.x, i64 %i.aq, i64 %i.au release monotonic, align 8
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit, label %.critedge.3.i, !llvm.loop !33

.critedge.4.i:                                    ; preds = %bb.e, %.critedge.outer.4.i
  %i.ax = load atomic i64, ptr %i.x acquire, align 8 ; 3 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 3
  switch i32 %i.az, label %.critedge.4.i.unreachabledefault [
    i32 1, label %_Z22_mi_free_delayed_blockP10mi_block_s.exit
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.e
  ], !prof !299

bb.e:                                             ; preds = %.critedge.4.i
  %i.ba = and i64 %i.ax, -4
  %i.bb = cmpxchg weak ptr %i.x, i64 %i.ax, i64 %i.ba release monotonic, align 8
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %.loopexit, label %.critedge.4.i, !llvm.loop !33

.critedge.4.i.unreachabledefault:                 ; preds = %.critedge.4.i
  unreachable

.critedge.3.i.unreachabledefault:                 ; preds = %.critedge.3.i
  unreachable

.critedge.2.i.unreachabledefault:                 ; preds = %.critedge.2.i
  unreachable

.critedge.1.i.unreachabledefault:                 ; preds = %.critedge.1.i
  unreachable

.critedge.i.unreachabledefault:                   ; preds = %.critedge.i
end_hunk_0
begin_hunk_1_@_Z16_mi_page_abandonP9mi_page_sP15mi_page_queue_s:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 5 uses
  %i.r = icmp uge ptr %i.q, @_mi_stats_main
  %i.s = icmp ult ptr %i.q, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 168 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 2 uses
  %i.x = add nsw i64 %i.v, 1
  %i.y = load atomic i64, ptr %i.w monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not.i = icmp sgt i64 %i.y, %i.v
  br i1 %.old3.i.i.i.not.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.b, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.ab, %.preheader.i.i.i.i ], [ %i.y, %bb.b ]
  %i.z = cmpxchg weak ptr %i.w, i64 %.0.i.i.i.i, i64 %i.x release monotonic, align 8 ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  %i.ab = extractvalue { i64, i1 } %i.z, 0        ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, %i.v
  %or.cond.not.i.i.i.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond.not.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i:     ; preds = %.preheader.i.i.i.i, %bb.b
  %i.ad = atomicrmw add ptr %i.q, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i = load i64, ptr %i.l, align 8, !tbaa !226
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !154 ; 2 uses
  %i.af = add nsw i64 %i.ae, 1                    ; 2 uses
  store i64 %i.af, ptr %i.u, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 160 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !156
  %.not.i = icmp slt i64 %i.ae, %i.ah
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !157
  %i.aj = add nsw i64 %i.ai, 1
  store i64 %i.aj, ptr %i.q, align 8, !tbaa !157
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i:  ; preds = %bb.e, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i
  %i.ak = phi i64 [ %.pre.i, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i ], [ %i.n, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.am = load i64, ptr %i.al, align 8, !tbaa !225
  %i.an = icmp eq i64 %i.am, %i.ak
  br i1 %i.an, label %bb.f, label %_Z24_mi_segment_page_abandonP9mi_page_sP17mi_segments_tld_s.exit

bb.f:                                             ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i
  tail call fastcc void @_ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e)
  br label %_Z24_mi_segment_page_abandonP9mi_page_sP17mi_segments_tld_s.exit

_Z24_mi_segment_page_abandonP9mi_page_sP17mi_segments_tld_s.exit: ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL20mi_page_queue_removeP15mi_page_queue_sP9mi_page_s(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !221 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %.pre, ptr %i.f, align 8, !tbaa !221
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.not22 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  store ptr %i.e, ptr %i.g, align 8, !tbaa !304
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !304
  store ptr %i.k, ptr %i.h, align 8, !tbaa !298
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !220
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.g, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %0, align 8, !tbaa !220
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !65   ; 4 uses
  %i.p = icmp ugt i64 %i.o, 1024
  br i1 %i.p, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not22, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.q = add nuw nsw i64 %i.o, 7
  %i.r = lshr i64 %i.q, 3                         ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq ptr %i.u, %spec.store.select.i
  br i1 %i.v, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp samesign ult i64 %i.o, 9
  br i1 %i.w, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp samesign ult i64 %i.o, 65
  br i1 %i.x, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.y = add nuw nsw i64 %i.r, 1
  %i.z = and i64 %i.y, 30
  br label %_ZL6mi_binm.exit.i

bb.l:                                             ; preds = %bb.j
  %i.aa = add nsw i64 %i.r, -1                    ; 2 uses
  %i.ab = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 false) ; 2 uses
  %i.ac = sub nuw nsw i64 61, %i.ab
  %i.ad = lshr i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, 3
  %i.af = shl nuw nsw i64 %i.ab, 2
  %reass.sub = sub nsw i64 %i.ae, %i.af
  %i.ag = add nsw i64 %reass.sub, 249
  br label %_ZL6mi_binm.exit.i

_ZL6mi_binm.exit.i:                               ; preds = %bb.l, %bb.k
  %.0.i.i = phi i64 [ %i.z, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 1280
  br label %bb.m

bb.m:                                             ; preds = %_ZL6mi_binm.exit36.i, %_ZL6mi_binm.exit.i
  %.pn.i = phi ptr [ %0, %_ZL6mi_binm.exit.i ], [ %.027.i, %_ZL6mi_binm.exit36.i ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !65
  %i.ak = add i64 %i.aj, 7                        ; 4 uses
  %i.al = lshr i64 %i.ak, 3                       ; 4 uses
  %i.am = icmp ult i64 %i.ak, 72
  br i1 %i.am, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.an = add nuw nsw i64 %i.al, 1
  %i.ao = and i64 %i.an, 30
  %.inv.i35.i = icmp samesign ugt i64 %i.ak, 15
  %i.ap = select i1 %.inv.i35.i, i64 %i.ao, i64 1
  br label %_ZL6mi_binm.exit36.i

bb.o:                                             ; preds = %bb.m
  %i.aq = icmp ugt i64 %i.ak, 65543
  br i1 %i.aq, label %_ZL6mi_binm.exit36.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.ar = add nsw i64 %i.al, -1                   ; 2 uses
  %i.as = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ar, i1 false) ; 2 uses
  %i.at = sub nuw nsw i64 61, %i.as
  %i.au = lshr i64 %i.ar, %i.at
  %i.av = and i64 %i.au, 3
  %i.aw = shl nuw nsw i64 %i.as, 2
  %reass.sub25 = sub nsw i64 %i.av, %i.aw
  %i.ax = add nsw i64 %reass.sub25, 249
  br label %_ZL6mi_binm.exit36.i

_ZL6mi_binm.exit36.i:                             ; preds = %bb.p, %bb.o, %bb.n
  %.0.i34.i = phi i64 [ %i.ap, %bb.n ], [ %i.ax, %bb.p ], [ 73, %bb.o ]
  %i.ay = icmp eq i64 %.0.i.i, %.0.i34.i
  %i.az = icmp ugt ptr %.027.i, %i.ah
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.m, label %bb.q, !llvm.loop !301

bb.q:                                             ; preds = %_ZL6mi_binm.exit36.i
  %i.bb = add nuw nsw i64 %i.al, 1
  %.not.i = icmp samesign ult i64 %i.al, %i.r
  %spec.select.i = select i1 %.not.i, i64 %i.bb, i64 %i.r ; 2 uses
  %.not3238.i = icmp samesign ugt i64 %spec.select.i, %i.r
  br i1 %.not3238.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.q, %bb.i
  %.147.i = phi i64 [ %spec.select.i, %bb.q ], [ 0, %bb.i ] ; 4 uses
  %2 = add nuw nsw i64 %i.r, 1
  %3 = sub nsw i64 %2, %.147.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.bc = add i64 %.147.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.147.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.be, align 8, !tbaa !39
  store <2 x ptr> %broadcast.splat, ptr %i.bf, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.039.i.ph = phi i64 [ %.147.i, %.lr.ph.preheader.i ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.039.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.039.i
  store ptr %spec.store.select.i, ptr %i.bh, align 8, !tbaa !39
  %i.bi = add nuw nsw i64 %.039.i, 1
  %exitcond.not.i = icmp eq i64 %.039.i, %i.r
  br i1 %exitcond.not.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i, !llvm.loop !309

_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit: ; preds = %.lr.ph.i, %middle.block, %bb.q, %bb.h, %bb.g, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !219
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !219
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bo = load i8, ptr %i.bn, align 2
  %i.bp = and i8 %i.bo, -2
  store i8 %i.bp, ptr %i.bn, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24_mi_segment_page_abandonP9mi_page_sP17mi_segments_tld_s(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1                         ; 2 uses
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = icmp slt i64 %i.b, 33554432
  %i.f = select i1 %i.e, ptr null, ptr %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !226
  %i.i = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !226
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !227  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152 ; 5 uses
  %i.m = icmp uge ptr %i.l, @_mi_stats_main
  %i.n = icmp ult ptr %i.l, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 168 ; 3 uses
  br i1 %i.o, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.s = add nsw i64 %i.q, 1
  %i.t = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %.old3.i.i.i.not = icmp sgt i64 %i.t, %i.q
  br i1 %.old3.i.i.i.not, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.w, %.preheader.i.i.i ], [ %i.t, %bb.b ]
  %i.u = cmpxchg weak ptr %i.r, i64 %.0.i.i.i, i64 %i.s release monotonic, align 8 ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %i.x = icmp sgt i64 %i.w, %i.q
  %or.cond.not.i.i.i = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.b
  %i.y = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  %.pre = load i64, ptr %i.g, align 8, !tbaa !226
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.c:                                             ; preds = %bb.a
  %i.z = load i64, ptr %i.p, align 8, !tbaa !154  ; 2 uses
  %i.aa = add nsw i64 %i.z, 1                     ; 2 uses
  store i64 %i.aa, ptr %i.p, align 8, !tbaa !154
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !156
  %.not = icmp slt i64 %i.z, %i.ac
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !157
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.l, align 8, !tbaa !157
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.e
  %i.af = phi i64 [ %.pre, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i ], [ %i.i, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !225
  %i.ai = icmp eq i64 %i.ah, %i.af
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  tail call fastcc void @_ZL18mi_segment_abandonP12mi_segment_sP17mi_segments_tld_s(ptr noundef nonnull %i.d, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z22_mi_page_force_abandonP9mi_page_s(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef %0, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.d, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = tail call noundef i32 @sched_yield() #55 ; 0 uses
  %i.f = tail call noundef zeroext i1 @_Z29_mi_page_try_use_delayed_freeP9mi_page_s12mi_delayed_eb(ptr noundef nonnull %0, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.f, label %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit, label %.lr.ph.i, !llvm.loop !222

_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit: ; preds = %.lr.ph.i, %bb.a
  tail call void @_Z25_mi_heap_delayed_free_allP9mi_heap_s(ptr noundef %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !30
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %_Z13_mi_page_freeP9mi_page_sP15mi_page_queue_sb.exit, label %bb.b

bb.b:                                             ; preds = %_Z25_mi_page_use_delayed_freeP9mi_page_s12mi_delayed_eb.exit
  %i.j = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %.val3.i.i = load i8, ptr %i.j, align 2         ; 2 uses
  %i.k = trunc i8 %.val3.i.i to i1
  br i1 %i.k, label %_ZL21mi_heap_page_queue_ofP9mi_heap_sPK9mi_page_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 8
  %.val4.i.i = load i8, ptr %i.l, align 8
  %i.m = and i8 %.val4.i.i, 4
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %bb.d, label %_ZL21mi_heap_page_queue_ofP9mi_heap_sPK9mi_page_s.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load i64, ptr %i.n, align 8, !tbaa !20
  %i.o = add i64 %.val.i.i, 7                     ; 4 uses
  %i.p = lshr i64 %i.o, 3                         ; 2 uses
  %i.q = icmp ult i64 %i.o, 72
  br i1 %i.q, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw nsw i64 %i.p, 1
  %i.s = and i64 %i.r, 30
  %.inv.i.i.i = icmp samesign ugt i64 %i.o, 15
  %i.t = select i1 %.inv.i.i.i, i64 %i.s, i64 1
  br label %_ZL21mi_heap_page_queue_ofP9mi_heap_sPK9mi_page_s.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %i.o, 65543
  br i1 %i.u, label %_ZL21mi_heap_page_queue_ofP9mi_heap_sPK9mi_page_s.exit, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i64 %i.p, -1                     ; 2 uses
  %i.w = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 false) ; 2 uses
  %i.x = sub nuw nsw i64 61, %i.w
  %i.y = lshr i64 %i.v, %i.x
  %i.z = and i64 %i.y, 3
  %i.aa = shl nuw nsw i64 %i.w, 2
  %reass.sub = sub nsw i64 %i.z, %i.aa
  %i.ab = add nsw i64 %reass.sub, 249
  br label %_ZL21mi_heap_page_queue_ofP9mi_heap_sPK9mi_page_s.exit

_ZL21mi_heap_page_queue_ofP9mi_heap_sPK9mi_page_s.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %i.ac = phi i64 [ 74, %bb.b ], [ 73, %bb.c ], [ %i.t, %bb.e ], [ %i.ab, %bb.g ], [ 73, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 1280
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 32
  %.val = load i16, ptr %i.af, align 8, !tbaa !24
  %i.ag = icmp eq i16 %.val, 0
end_hunk_1
begin_hunk_2_@_ZL10mi_out_bufPKcPv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr @_ZL7out_len monotonic, align 8
  %i.c = icmp ugt i64 %i.b, 16383
  br i1 %i.c, label %bb.e, label %_Z10_mi_strlenPKc.exit

_Z10_mi_strlenPKc.exit:                           ; preds = %bb.b
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.d = icmp eq i64 %strlen.i, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_Z10_mi_strlenPKc.exit
  %i.e = atomicrmw add ptr @_ZL7out_len, i64 %strlen.i acq_rel, align 8 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 16383
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %i.e, %strlen.i
  %i.h = icmp ugt i64 %i.g, 16383
  %i.i = sub nuw nsw i64 16383, %i.e
  %spec.select = select i1 %i.h, i64 %i.i, i64 %strlen.i
  %i.j = getelementptr inbounds nuw i8, ptr @_ZL7out_buf, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %0, i64 %spec.select, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_Z10_mi_strlenPKc.exit, %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv() unnamed_addr #49 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZL7recurse) ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !93, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL20mi_recurse_exit_primv() unnamed_addr #50 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZL7recurse)
  store i8 0, ptr %i.a, align 1, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #51

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #41

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #41

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL29mi_page_queue_enqueue_from_exP15mi_page_queue_sS0_bP9mi_page_s(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !221 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %.pre, ptr %i.f, align 8, !tbaa !221
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not59 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  store ptr %i.e, ptr %i.h, align 8, !tbaa !304
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !298
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !304
  store ptr %i.l, ptr %i.i, align 8, !tbaa !298
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %1, align 8, !tbaa !220
  %i.n = icmp eq ptr %2, %i.m
  br i1 %i.n, label %bb.g, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %1, align 8, !tbaa !220
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !65   ; 4 uses
  %i.q = icmp ugt i64 %i.p, 1024
  br i1 %i.q, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not59, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.r = add nuw nsw i64 %i.p, 7
  %i.s = lshr i64 %i.r, 3                         ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.w = icmp eq ptr %i.v, %spec.store.select.i
  br i1 %i.w, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp samesign ult i64 %i.p, 9
  br i1 %i.x, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp samesign ult i64 %i.p, 65
  br i1 %i.y, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.z = add nuw nsw i64 %i.s, 1
  %i.aa = and i64 %i.z, 30
  br label %_ZL6mi_binm.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ab = add nsw i64 %i.s, -1                    ; 2 uses
  %i.ac = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 false) ; 2 uses
  %i.ad = sub nuw nsw i64 61, %i.ac
  %i.ae = lshr i64 %i.ab, %i.ad
  %i.af = and i64 %i.ae, 3
  %i.ag = shl nuw nsw i64 %i.ac, 2
  %reass.sub = sub nsw i64 %i.af, %i.ag
  %i.ah = add nsw i64 %reass.sub, 249
  br label %_ZL6mi_binm.exit.i

_ZL6mi_binm.exit.i:                               ; preds = %bb.l, %bb.k
  %.0.i.i = phi i64 [ %i.aa, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1280
  br label %bb.m

bb.m:                                             ; preds = %_ZL6mi_binm.exit36.i, %_ZL6mi_binm.exit.i
  %.pn.i = phi ptr [ %1, %_ZL6mi_binm.exit.i ], [ %.027.i, %_ZL6mi_binm.exit36.i ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.al = add i64 %i.ak, 7                        ; 4 uses
  %i.am = lshr i64 %i.al, 3                       ; 4 uses
  %i.an = icmp ult i64 %i.al, 72
  br i1 %i.an, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.ao = add nuw nsw i64 %i.am, 1
  %i.ap = and i64 %i.ao, 30
  %.inv.i35.i = icmp samesign ugt i64 %i.al, 15
  %i.aq = select i1 %.inv.i35.i, i64 %i.ap, i64 1
  br label %_ZL6mi_binm.exit36.i

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp ugt i64 %i.al, 65543
  br i1 %i.ar, label %_ZL6mi_binm.exit36.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  %i.as = add nsw i64 %i.am, -1                   ; 2 uses
  %i.at = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false) ; 2 uses
  %i.au = sub nuw nsw i64 61, %i.at
  %i.av = lshr i64 %i.as, %i.au
  %i.aw = and i64 %i.av, 3
  %i.ax = shl nuw nsw i64 %i.at, 2
  %reass.sub86 = sub nsw i64 %i.aw, %i.ax
  %i.ay = add nsw i64 %reass.sub86, 249
  br label %_ZL6mi_binm.exit36.i

_ZL6mi_binm.exit36.i:                             ; preds = %bb.p, %bb.o, %bb.n
  %.0.i34.i = phi i64 [ %i.aq, %bb.n ], [ %i.ay, %bb.p ], [ 73, %bb.o ]
  %i.az = icmp eq i64 %.0.i.i, %.0.i34.i
  %i.ba = icmp ugt ptr %.027.i, %i.ai
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.m, label %bb.q, !llvm.loop !301

bb.q:                                             ; preds = %_ZL6mi_binm.exit36.i
  %i.bc = add nuw nsw i64 %i.am, 1
  %.not.i = icmp samesign ult i64 %i.am, %i.s
  %spec.select.i = select i1 %.not.i, i64 %i.bc, i64 %i.s ; 2 uses
  %.not3238.i = icmp samesign ugt i64 %spec.select.i, %i.s
  br i1 %.not3238.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.q, %bb.i
  %.147.i = phi i64 [ %spec.select.i, %bb.q ], [ 0, %bb.i ] ; 4 uses
  %3 = add nuw nsw i64 %i.s, 1
  %4 = sub nsw i64 %3, %.147.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.bd = add i64 %.147.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.147.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bf, align 8, !tbaa !39
  store <2 x ptr> %broadcast.splat, ptr %i.bg, align 8, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.039.i.ph = phi i64 [ %.147.i, %.lr.ph.preheader.i ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.039.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.039.i
  store ptr %spec.store.select.i, ptr %i.bi, align 8, !tbaa !39
  %i.bj = add nuw nsw i64 %.039.i, 1
  %exitcond.not.i = icmp eq i64 %.039.i, %i.s
  br i1 %exitcond.not.i, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit, label %.lr.ph.i, !llvm.loop !387

_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit: ; preds = %.lr.ph.i, %middle.block, %bb.q, %bb.h, %bb.g, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !298 ; 3 uses
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !304
  store ptr null, ptr %i.g, align 8, !tbaa !221
  %.not60 = icmp eq ptr %i.bl, null
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  store ptr %2, ptr %i.bm, align 8, !tbaa !221
  store ptr %2, ptr %i.bk, align 8, !tbaa !298
  %.phi.trans.insert90 = getelementptr i8, ptr %0, i64 16
  %.val61.pre = load i64, ptr %.phi.trans.insert90, align 8, !tbaa !65
  br label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit80

bb.s:                                             ; preds = %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit
  store ptr %2, ptr %0, align 8, !tbaa !220
  store ptr %2, ptr %i.bk, align 8, !tbaa !298
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !65 ; 9 uses
  %i.bp = icmp ugt i64 %i.bo, 1024
  br i1 %i.bp, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit80, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = add nuw nsw i64 %i.bo, 7
  %i.br = lshr i64 %i.bq, 3                       ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39
  %i.bv = icmp eq ptr %i.bu, %2
  br i1 %i.bv, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit80, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = icmp samesign ult i64 %i.bo, 9
  br i1 %i.bw, label %.lr.ph.preheader.i74, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = icmp samesign ult i64 %i.bo, 65
  br i1 %i.bx, label %bb.w, label %bb.x, !prof !26

bb.w:                                             ; preds = %bb.v
  %i.by = add nuw nsw i64 %i.br, 1
  %i.bz = and i64 %i.by, 30
  br label %_ZL6mi_binm.exit.i64

bb.x:                                             ; preds = %bb.v
  %i.ca = add nsw i64 %i.br, -1                   ; 2 uses
  %i.cb = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ca, i1 false) ; 2 uses
  %i.cc = sub nuw nsw i64 61, %i.cb
  %i.cd = lshr i64 %i.ca, %i.cc
  %i.ce = and i64 %i.cd, 3
  %i.cf = shl nuw nsw i64 %i.cb, 2
  %reass.sub87 = sub nsw i64 %i.ce, %i.cf
  %i.cg = add nsw i64 %reass.sub87, 249
  br label %_ZL6mi_binm.exit.i64

_ZL6mi_binm.exit.i64:                             ; preds = %bb.x, %bb.w
  %.0.i.i65 = phi i64 [ %i.bz, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 1280
  br label %bb.y

bb.y:                                             ; preds = %_ZL6mi_binm.exit36.i69, %_ZL6mi_binm.exit.i64
  %.pn.i66 = phi ptr [ %0, %_ZL6mi_binm.exit.i64 ], [ %.027.i67, %_ZL6mi_binm.exit36.i69 ] ; 2 uses
  %.027.i67 = getelementptr inbounds i8, ptr %.pn.i66, i64 -24 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.pn.i66, i64 -8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !65
  %i.ck = add i64 %i.cj, 7                        ; 4 uses
  %i.cl = lshr i64 %i.ck, 3                       ; 4 uses
  %i.cm = icmp ult i64 %i.ck, 72
  br i1 %i.cm, label %bb.z, label %bb.aa, !prof !26

bb.z:                                             ; preds = %bb.y
  %i.cn = add nuw nsw i64 %i.cl, 1
  %i.co = and i64 %i.cn, 30
  %.inv.i35.i79 = icmp samesign ugt i64 %i.ck, 15
  %i.cp = select i1 %.inv.i35.i79, i64 %i.co, i64 1
  br label %_ZL6mi_binm.exit36.i69

bb.aa:                                            ; preds = %bb.y
  %i.cq = icmp ugt i64 %i.ck, 65543
  br i1 %i.cq, label %_ZL6mi_binm.exit36.i69, label %bb.ab, !prof !19

bb.ab:                                            ; preds = %bb.aa
  %i.cr = add nsw i64 %i.cl, -1                   ; 2 uses
  %i.cs = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cr, i1 false) ; 2 uses
  %i.ct = sub nuw nsw i64 61, %i.cs
  %i.cu = lshr i64 %i.cr, %i.ct
  %i.cv = and i64 %i.cu, 3
  %i.cw = shl nuw nsw i64 %i.cs, 2
  %reass.sub88 = sub nsw i64 %i.cv, %i.cw
  %i.cx = add nsw i64 %reass.sub88, 249
  br label %_ZL6mi_binm.exit36.i69

_ZL6mi_binm.exit36.i69:                           ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i34.i70 = phi i64 [ %i.cp, %bb.z ], [ %i.cx, %bb.ab ], [ 73, %bb.aa ]
  %i.cy = icmp eq i64 %.0.i.i65, %.0.i34.i70
  %i.cz = icmp ugt ptr %.027.i67, %i.ch
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %bb.y, label %bb.ac, !llvm.loop !301

bb.ac:                                            ; preds = %_ZL6mi_binm.exit36.i69
  %i.db = add nuw nsw i64 %i.cl, 1
  %.not.i71 = icmp samesign ult i64 %i.cl, %i.br
  %spec.select.i72 = select i1 %.not.i71, i64 %i.db, i64 %i.br ; 2 uses
  %.not3238.i73 = icmp samesign ugt i64 %spec.select.i72, %i.br
  br i1 %.not3238.i73, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit80, label %.lr.ph.preheader.i74

.lr.ph.preheader.i74:                             ; preds = %bb.ac, %bb.u
  %.147.i75 = phi i64 [ %spec.select.i72, %bb.ac ], [ 0, %bb.u ] ; 4 uses
  %5 = add nuw nsw i64 %i.br, 1
  %6 = sub nsw i64 %5, %.147.i75                  ; 3 uses
  %min.iters.check3 = icmp ult i64 %6, 4
  br i1 %min.iters.check3, label %.lr.ph.i76.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph.preheader.i74
  %n.vec5 = and i64 %6, -4                        ; 3 uses
  %i.dc = add i64 %.147.i75, %n.vec5
  %broadcast.splatinsert6 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat7 = shufflevector <2 x ptr> %broadcast.splatinsert6, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.147.i75
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph4
  %index9 = phi i64 [ 0, %vector.ph4 ], [ %index.next10, %vector.body8 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index9 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x ptr> %broadcast.splat7, ptr %i.de, align 8, !tbaa !39
  store <2 x ptr> %broadcast.splat7, ptr %i.df, align 8, !tbaa !39
  %index.next10 = add nuw i64 %index9, 4          ; 2 uses
  %i.dg = icmp eq i64 %index.next10, %n.vec5
  br i1 %i.dg, label %middle.block11, label %vector.body8, !llvm.loop !388

middle.block11:                                   ; preds = %vector.body8
  %cmp.n12 = icmp eq i64 %6, %n.vec5
  br i1 %cmp.n12, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit80, label %.lr.ph.i76.preheader

.lr.ph.i76.preheader:                             ; preds = %.lr.ph.preheader.i74, %middle.block11
  %.039.i77.ph = phi i64 [ %.147.i75, %.lr.ph.preheader.i74 ], [ %i.dc, %middle.block11 ]
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.preheader, %.lr.ph.i76
  %.039.i77 = phi i64 [ %i.di, %.lr.ph.i76 ], [ %.039.i77.ph, %.lr.ph.i76.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.039.i77
  store ptr %2, ptr %i.dh, align 8, !tbaa !39
  %i.di = add nuw nsw i64 %.039.i77, 1
  %exitcond.not.i78 = icmp eq i64 %.039.i77, %i.br
  br i1 %exitcond.not.i78, label %_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit80, label %.lr.ph.i76, !llvm.loop !389

_ZL26mi_heap_queue_first_updateP9mi_heap_sPK15mi_page_queue_s.exit80: ; preds = %.lr.ph.i76, %middle.block11, %bb.ac, %bb.t, %bb.s, %bb.r
  %.val61 = phi i64 [ %.val61.pre, %bb.r ], [ %i.bo, %bb.ac ], [ %i.bo, %bb.t ], [ %i.bo, %bb.s ], [ %i.bo, %middle.block11 ], [ %i.bo, %.lr.ph.i76 ]
  %i.dj = icmp eq i64 %.val61, 65552
  %i.dk = zext i1 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 2
  %i.dn = and i8 %i.dm, -2
  %i.do = or disjoint i8 %i.dn, %i.dk
  store i8 %i.do, ptr %i.dl, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL24mi_large_huge_page_allocP9mi_heap_smm(ptr noundef %0, i64 noundef range(i64 0, 281474976579585) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 524288
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @_ZL16mi_os_mem_config, align 8, !tbaa !67
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i64 %1, 2097152
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i64 %1, 8388608
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i64 %1, 33554432
  %..i = select i1 %i.e, i64 1048576, i64 4194304
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i = phi i64 [ %i.b, %bb.b ], [ 262144, %bb.d ], [ 65536, %bb.c ], [ %..i, %bb.e ] ; 5 uses
  %i.f = xor i64 %.0.i, -1
  %.not.i = icmp ult i64 %1, %i.f
  br i1 %.not.i, label %bb.g, label %_Z22_mi_os_good_alloc_sizem.exit, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add nsw i64 %1, -1
  %i.j = add i64 %i.i, %.0.i                      ; 3 uses
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = sub i64 0, %.0.i
  %i.l = and i64 %i.j, %i.k
  br label %_Z22_mi_os_good_alloc_sizem.exit

bb.i:                                             ; preds = %bb.g
  %i.m = urem i64 %i.j, %.0.i
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_Z22_mi_os_good_alloc_sizem.exit

_Z22_mi_os_good_alloc_sizem.exit:                 ; preds = %bb.f, %bb.h, %bb.i
  %.010.i = phi i64 [ %1, %bb.f ], [ %i.l, %bb.h ], [ %i.n, %bb.i ] ; 3 uses
  %i.o = icmp ugt i64 %.010.i, 16777216
  %i.p = icmp ne i64 %2, 0
  %i.q = or i1 %i.p, %i.o
  %i.r = add i64 %.010.i, 7
  %i.s = select i1 %i.q, i64 16777224, i64 %i.r   ; 4 uses
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  %i.u = icmp ult i64 %i.s, 72
  br i1 %i.u, label %bb.j, label %bb.k, !prof !26

bb.j:                                             ; preds = %_Z22_mi_os_good_alloc_sizem.exit
  %i.v = add nuw nsw i64 %i.t, 1
  %i.w = and i64 %i.v, 30
  %.inv.i.i.i = icmp samesign ugt i64 %i.s, 15
  %i.x = select i1 %.inv.i.i.i, i64 %i.w, i64 1
  br label %_ZL13mi_page_queuePK9mi_heap_sm.exit

bb.k:                                             ; preds = %_Z22_mi_os_good_alloc_sizem.exit
  %i.y = icmp ugt i64 %i.s, 65543
  br i1 %i.y, label %_ZL13mi_page_queuePK9mi_heap_sm.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i64 %i.t, -1                     ; 2 uses
  %i.aa = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = sub nuw nsw i64 61, %i.aa
  %i.ac = lshr i64 %i.z, %i.ab
  %i.ad = and i64 %i.ac, 3
  %i.ae = shl nuw nsw i64 %i.aa, 2
  %reass.sub = sub nsw i64 %i.ad, %i.ae
  %i.af = add nsw i64 %reass.sub, 249
  br label %_ZL13mi_page_queuePK9mi_heap_sm.exit

_ZL13mi_page_queuePK9mi_heap_sm.exit:             ; preds = %bb.j, %bb.k, %bb.l
  %.0.i.i.i = phi i64 [ %i.x, %bb.j ], [ %i.af, %bb.l ], [ 73, %bb.k ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.0.i.i.i
  %i.ai = tail call fastcc noundef ptr @_ZL19mi_page_fresh_allocP9mi_heap_sP15mi_page_queue_smm(ptr noundef %0, ptr noundef nonnull %i.ah, i64 noundef %.010.i, i64 noundef %2) ; 3 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_Z25_mi_stat_counter_increaseP17mi_stat_counter_sm.exit, label %bb.m

bb.m:                                             ; preds = %_ZL13mi_page_queuePK9mi_heap_sm.exit
  %i.aj = getelementptr i8, ptr %i.ai, i64 40
  %.val = load i64, ptr %i.aj, align 8, !tbaa !20 ; 8 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !204   ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1176 ; 5 uses
  %i.am = icmp eq i64 %.val, 0
  br i1 %i.am, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = icmp uge ptr %i.al, @_mi_stats_main
  %i.ao = icmp ult ptr %i.al, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 4184)
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1192 ; 3 uses
  br i1 %i.ap, label %bb.o, label %bb.q, !prof !19

bb.o:                                             ; preds = %bb.n
  %i.ar = atomicrmw add ptr %i.aq, i64 %.val monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 1184 ; 2 uses
  %i.at = add nsw i64 %i.ar, %.val                ; 3 uses
  %i.au = load atomic i64, ptr %i.as monotonic, align 8 ; 2 uses
  %.old3.i.i.i = icmp slt i64 %i.au, %i.at
  br i1 %.old3.i.i.i, label %.preheader.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.o, %.preheader.i.i.i
  %.0.i.i.i15 = phi i64 [ %i.ax, %.preheader.i.i.i ], [ %i.au, %bb.o ]
  %i.av = cmpxchg weak ptr %i.as, i64 %.0.i.i.i15, i64 %i.at release monotonic, align 8 ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = extractvalue { i64, i1 } %i.av, 0       ; 2 uses
  %i.ay = icmp sge i64 %i.ax, %i.at
  %or.cond.not.i.i.i = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond.not.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, label %.preheader.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i:       ; preds = %.preheader.i.i.i, %bb.o
  %i.az = icmp sgt i64 %.val, 0
  br i1 %i.az, label %bb.p, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.p:                                             ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i
  %i.ba = atomicrmw add ptr %i.al, i64 %.val monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.q:                                             ; preds = %bb.n
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !154
  %i.bc = add nsw i64 %i.bb, %.val                ; 3 uses
  store i64 %i.bc, ptr %i.aq, align 8, !tbaa !154
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 1184 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !156
  %i.bf = icmp sgt i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !156
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = icmp sgt i64 %.val, 0
  br i1 %i.bg, label %bb.t, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

bb.t:                                             ; preds = %bb.s
  %i.bh = load i64, ptr %i.al, align 8, !tbaa !157
  %i.bi = add nsw i64 %i.bh, %.val
  store i64 %i.bi, ptr %i.al, align 8, !tbaa !157
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit:    ; preds = %bb.m, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i, %bb.p, %bb.s, %bb.t
end_hunk_2
