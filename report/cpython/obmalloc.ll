inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_page_queue_append:bb.a
  %i.q = and i64 %i.n, -4
  %i.r = cmpxchg weak ptr %i.j, i64 %i.n, i64 %i.q release monotonic, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %_mi_page_use_delayed_free.exit, label %.critedge.1.i, !llvm.loop !76

.critedge.2.i:                                    ; preds = %bb.e, %.critedge.outer.2.i
  %i.t = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 3
  switch i32 %i.v, label %.critedge.2.i.unreachabledefault [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.e
  ], !prof !259

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.e:                                             ; preds = %.critedge.2.i
  %i.w = and i64 %i.t, -4
  %i.x = cmpxchg weak ptr %i.j, i64 %i.t, i64 %i.w release monotonic, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %_mi_page_use_delayed_free.exit, label %.critedge.2.i, !llvm.loop !76

.critedge.3.i:                                    ; preds = %bb.f, %.critedge.outer.3.i
  %i.z = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  switch i32 %i.ab, label %.critedge.3.i.unreachabledefault [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.f
  ], !prof !259

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i

bb.f:                                             ; preds = %.critedge.3.i
  %i.ac = and i64 %i.z, -4
  %i.ad = cmpxchg weak ptr %i.j, i64 %i.z, i64 %i.ac release monotonic, align 8
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %_mi_page_use_delayed_free.exit, label %.critedge.3.i, !llvm.loop !76

.critedge.4.i:                                    ; preds = %bb.g, %.critedge.outer.4.i
  %i.af = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3
  switch i32 %i.ah, label %.critedge.4.i.unreachabledefault [
    i32 1, label %.lr.ph.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.g
  ], !prof !259

bb.g:                                             ; preds = %.critedge.4.i
  %i.ai = and i64 %i.af, -4
  %i.aj = cmpxchg weak ptr %i.j, i64 %i.af, i64 %i.ai release monotonic, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %_mi_page_use_delayed_free.exit, label %.critedge.4.i, !llvm.loop !76

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
  %i.al = and i64 %i.k, -4
  %i.am = cmpxchg weak ptr %i.j, i64 %i.k, i64 %i.al release monotonic, align 8
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %_mi_page_use_delayed_free.exit, label %.critedge.i, !llvm.loop !76

_mi_page_use_delayed_free.exit:                   ; preds = %.critedge.i, %.critedge.i, %bb.h, %.critedge.1.i, %.critedge.1.i, %bb.d, %.critedge.2.i, %.critedge.2.i, %bb.e, %.critedge.3.i, %.critedge.3.i, %bb.f, %.critedge.4.i, %.critedge.4.i, %bb.g, %bb.c
  %i.ao = add i64 %.02439, 1                      ; 7 uses
  %i.ap = getelementptr i8, ptr %.02340, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !197 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !260

bb.i:                                             ; preds = %bb.b
  store ptr %i.g, ptr %1, align 8, !tbaa !64
  %i.ar = getelementptr i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  store ptr %i.as, ptr %i.d, align 8, !tbaa !63
  %i.at = getelementptr i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !61 ; 4 uses
  %i.av = icmp ugt i64 %i.au, 1024
  br i1 %i.av, label %mi_heap_queue_first_update.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %i.g, null
  %spec.store.select.i = select i1 %i.aw, ptr @_mi_page_empty, ptr %i.g ; 3 uses
  %i.ax = add nuw nsw i64 %i.au, 7
  %i.ay = lshr i64 %i.ax, 3                       ; 8 uses
  %i.az = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bc = icmp eq ptr %i.bb, %spec.store.select.i
  br i1 %i.bc, label %mi_heap_queue_first_update.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp samesign ult i64 %i.au, 9
  br i1 %i.bd, label %.lr.ph.preheader.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = icmp samesign ult i64 %i.au, 65
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = trunc nuw nsw i64 %i.ay to i8
  %i.bg = add nuw nsw i8 %i.bf, 1
  %i.bh = and i8 %i.bg, 30
  br label %mi_bin.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bi = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false) ; 2 uses
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  %i.bl = sub nsw i64 61, %i.bj
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = lshr i64 %i.bi, %i.bm
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = and i8 %i.bo, 3
  %i.bq = shl i8 %i.bk, 2
  %reass.sub = sub i8 %i.bp, %i.bq
  %i.br = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.n, %bb.m
  %.0.i.i = phi i8 [ %i.br, %bb.n ], [ %i.bh, %bb.m ]
  %i.bs = getelementptr i8, ptr %0, i64 1040
  br label %bb.o

bb.o:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.bt = getelementptr i8, ptr %.pn.i, i64 -8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !61
  %i.bv = add i64 %i.bu, 7                        ; 4 uses
  %i.bw = lshr i64 %i.bv, 3                       ; 4 uses
  %i.bx = icmp ult i64 %i.bv, 16
  br i1 %i.bx, label %mi_bin.exit35.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = icmp ult i64 %i.bv, 72
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = trunc nuw nsw i64 %i.bw to i8
  %i.ca = add nuw nsw i8 %i.bz, 1
  %i.cb = and i8 %i.ca, 30
  br label %mi_bin.exit35.i

bb.r:                                             ; preds = %bb.p
  %i.cc = icmp ugt i64 %i.bv, 131079
  br i1 %i.cc, label %mi_bin.exit35.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 false) ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  %i.cg = sub nsw i64 61, %i.ce
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = lshr i64 %i.cd, %i.ch
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = and i8 %i.cj, 3
  %i.cl = shl i8 %i.cf, 2
  %reass.sub42 = sub i8 %i.ck, %i.cl
  %i.cm = add i8 %reass.sub42, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.0.i34.i = phi i8 [ %i.cm, %bb.s ], [ %i.cb, %bb.q ], [ 1, %bb.o ], [ 73, %bb.r ]
  %i.cn = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.co = icmp ugt ptr %.027.i, %i.bs
  %i.cp = and i1 %i.co, %i.cn
  br i1 %i.cp, label %bb.o, label %bb.t, !llvm.loop !261

bb.t:                                             ; preds = %mi_bin.exit35.i
  %i.cq = add nuw nsw i64 %i.bw, 1
  %.not.i = icmp samesign ult i64 %i.bw, %i.ay
  %spec.select.i = select i1 %.not.i, i64 %i.cq, i64 %i.ay ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.ay
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t, %bb.k
  %.145.i = phi i64 [ %spec.select.i, %bb.t ], [ 0, %bb.k ] ; 4 uses
  %3 = sub nsw i64 %i.ay, %.145.i
  %4 = add i64 %3, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i27.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.cr = add i64 %.145.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.az, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ct, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.cu, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27
  %.038.i = phi i64 [ %i.cx, %.lr.ph.i27 ], [ %.038.i.ph, %.lr.ph.i27.preheader ] ; 3 uses
  %i.cw = getelementptr [8 x i8], ptr %i.az, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.cw, align 8, !tbaa !53
  %i.cx = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.ay
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i27, !llvm.loop !263

bb.u:                                             ; preds = %bb.b
  %i.cy = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.g, ptr %i.cy, align 8, !tbaa !197
  %i.cz = getelementptr i8, ptr %i.g, i64 64
  store ptr %i.e, ptr %i.cz, align 8, !tbaa !264
  %i.da = getelementptr i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  store ptr %i.db, ptr %i.d, align 8, !tbaa !63
  br label %mi_heap_queue_first_update.exit

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i27, %middle.block, %bb.t, %bb.j, %bb.i, %bb.u, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.u ], [ %i.ao, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.t ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph.i27 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_use_delayed_free(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.b = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_page_reclaim(ptr nofree noundef captures(address) %0, ptr noundef initializes((56, 72)) %1) local_unnamed_addr #34 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %_mi_segment_page_start.exit.i, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !52
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %bb.b, %_mi_segment_page_start.exit.i
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.g, %_mi_segment_page_start.exit.i ] ; 4 uses
  %i.h = add nuw nsw i64 %.0.i, 7
  %i.i = lshr i64 %i.h, 3                         ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 9
  br i1 %i.j, label %mi_page_queue.exit, label %bb.c

bb.c:                                             ; preds = %mi_page_block_size.exit
  %i.k = icmp samesign ult i64 %.0.i, 65
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.i, 1
  %i.m = and i64 %i.l, 30
  br label %mi_page_queue.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %.0.i, 131072
  br i1 %i.n, label %mi_page_queue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i64 %i.i, -1                     ; 2 uses
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false) ; 2 uses
  %i.q = sub nsw i64 61, %i.p
  %i.r = and i64 %i.q, 4294967295
  %i.s = lshr i64 %i.o, %i.r
  %i.t = and i64 %i.s, 3
  %i.u = shl nuw nsw i64 %i.p, 2
  %reass.sub = sub nsw i64 %i.t, %i.u
  %i.v = add nsw i64 %reass.sub, 249
  %i.w = and i64 %i.v, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %mi_page_block_size.exit, %bb.d, %bb.e, %bb.f
  %.0.i.i.i = phi i64 [ %i.w, %bb.f ], [ %i.m, %bb.d ], [ 1, %mi_page_block_size.exit ], [ 73, %bb.e ]
  %i.x = getelementptr i8, ptr %0, i64 1040
  %i.y = getelementptr [24 x i8], ptr %i.x, i64 %.0.i.i.i
  tail call fastcc void @mi_page_queue_push(ptr noundef %0, ptr noundef %i.y, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_push(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef initializes((56, 72)) %2) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !61
  %i.b = icmp eq i64 %.val, 131088
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr i8, ptr %2, i64 14         ; 2 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = and i8 %i.e, -2
  %i.g = or disjoint i8 %i.f, %i.c
  store i8 %i.g, ptr %i.d, align 2
  %i.h = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !197
  %i.j = getelementptr i8, ptr %2, i64 64
  store ptr null, ptr %i.j, align 8, !tbaa !264
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 64
  store ptr %2, ptr %i.k, align 8, !tbaa !264
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %2, ptr %1, align 8, !tbaa !64
  %i.m = load i64, ptr %i.a, align 8, !tbaa !61   ; 4 uses
  %i.n = icmp ugt i64 %i.m, 1024
  br i1 %i.n, label %mi_heap_queue_first_update.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %i.m, 7
  %i.p = lshr i64 %i.o, 3                         ; 8 uses
  %i.q = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = icmp eq ptr %i.s, %2
  br i1 %i.t, label %mi_heap_queue_first_update.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i64 %i.m, 9
  br i1 %i.u, label %.lr.ph.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ult i64 %i.m, 65
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = trunc nuw nsw i64 %i.p to i8
  %i.x = add nuw nsw i8 %i.w, 1
  %i.y = and i8 %i.x, 30
  br label %mi_bin.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = add nsw i64 %i.p, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = sub nsw i64 61, %i.aa
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = lshr i64 %i.z, %i.ad
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = and i8 %i.af, 3
  %i.ah = shl i8 %i.ab, 2
  %reass.sub = sub i8 %i.ag, %i.ah
  %i.ai = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.i, %bb.h
  %.0.i.i = phi i8 [ %i.ai, %bb.i ], [ %i.y, %bb.h ]
  %i.aj = getelementptr i8, ptr %0, i64 1040
  br label %bb.j

bb.j:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.ak = getelementptr i8, ptr %.pn.i, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !61
  %i.am = add i64 %i.al, 7                        ; 4 uses
  %i.an = lshr i64 %i.am, 3                       ; 4 uses
  %i.ao = icmp ult i64 %i.am, 16
  br i1 %i.ao, label %mi_bin.exit35.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp ult i64 %i.am, 72
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = trunc nuw nsw i64 %i.an to i8
  %i.ar = add nuw nsw i8 %i.aq, 1
  %i.as = and i8 %i.ar, 30
  br label %mi_bin.exit35.i

bb.m:                                             ; preds = %bb.k
  %i.at = icmp ugt i64 %i.am, 131079
  br i1 %i.at, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i64 %i.an, -1                   ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false) ; 2 uses
  %i.aw = trunc nuw nsw i64 %i.av to i8
  %i.ax = sub nsw i64 61, %i.av
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = lshr i64 %i.au, %i.ay
  %i.ba = trunc i64 %i.az to i8
  %i.bb = and i8 %i.ba, 3
  %i.bc = shl i8 %i.aw, 2
  %reass.sub18 = sub i8 %i.bb, %i.bc
  %i.bd = add i8 %reass.sub18, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.0.i34.i = phi i8 [ %i.bd, %bb.n ], [ %i.as, %bb.l ], [ 1, %bb.j ], [ 73, %bb.m ]
  %i.be = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bf = icmp ugt ptr %.027.i, %i.aj
  %i.bg = and i1 %i.bf, %i.be
  br i1 %i.bg, label %bb.j, label %bb.o, !llvm.loop !261

bb.o:                                             ; preds = %mi_bin.exit35.i
  %i.bh = add nuw nsw i64 %i.an, 1
  %.not.i = icmp samesign ult i64 %i.an, %i.p
  %spec.select.i = select i1 %.not.i, i64 %i.bh, i64 %i.p ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.p
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o, %bb.f
  %.145.i = phi i64 [ %spec.select.i, %bb.o ], [ 0, %bb.f ] ; 4 uses
  %3 = sub nsw i64 %i.p, %.145.i
  %4 = add i64 %3, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.bi = add i64 %.145.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.q, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bk, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.bl, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bn = getelementptr [8 x i8], ptr %i.q, i64 %.038.i
  store ptr %2, ptr %i.bn, align 8, !tbaa !53
  %i.bo = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.p
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !266

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.d, %bb.e, %bb.o
  %i.bp = getelementptr i8, ptr %0, i64 3024      ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !196
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !196
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_delayed_free_all(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2840       ; 5 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i16 = icmp eq ptr %i.b, null
  br i1 %.old1.not.i16, label %_mi_heap_delayed_free_partial.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %.0.i = phi ptr [ %.0.i.be, %.preheader.i.backedge ], [ %i.b, %bb.a ]
  %i.c = cmpxchg weak ptr %i.a, ptr %.0.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  %i.e = extractvalue { ptr, i1 } %i.c, 0         ; 3 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond.not.i = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.not.i, label %.critedge.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %.preheader.i, %_mi_heap_delayed_free_partial.exit.thread33
  %.0.i.be = phi ptr [ %i.e, %.preheader.i ], [ %i.dz, %_mi_heap_delayed_free_partial.exit.thread33 ]
  br label %.preheader.i, !llvm.loop !267

.critedge.i:                                      ; preds = %.preheader.i
  br i1 %i.f, label %_mi_heap_delayed_free_partial.exit.thread, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.critedge.i, %.loopexit.i.thread
  %.334.i.ph = phi ptr [ %i.h, %.loopexit.i.thread ], [ %i.e, %.critedge.i ]
  %.02533.i.ph = phi i1 [ false, %.loopexit.i.thread ], [ true, %.critedge.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %.loopexit.i
  %.334.i = phi ptr [ %i.h, %.loopexit.i ], [ %.334.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %i.g = load atomic i64, ptr %.334.i monotonic, align 8 ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = ptrtoint ptr %.334.i to i64              ; 2 uses
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, -33554432                  ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = sub i64 %i.i, %i.k
  %i.n = lshr i64 %i.m, 16
  %i.o = getelementptr i8, ptr %i.l, i64 264
  %i.p = getelementptr [80 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t     ; 13 uses
  %i.v = getelementptr i8, ptr %i.u, i64 40       ; 13 uses
  br label %.critedge.i1

.critedge.i1:                                     ; preds = %bb.f, %.lr.ph.i
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 3
  switch i32 %i.y, label %.critedge.i1.unreachabledefault [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.f
  ], !prof !259

.critedge.outer.1.i:                              ; preds = %.critedge.i1
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.b, %.critedge.outer.1.i
  %i.z = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  switch i32 %i.ab, label %.critedge.1.i.unreachabledefault [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.b
  ], !prof !259

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i

bb.b:                                             ; preds = %.critedge.1.i
  %i.ac = and i64 %i.z, -4
  %i.ad = cmpxchg weak ptr %i.v, i64 %i.z, i64 %i.ac release monotonic, align 8
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %.loopexit, label %.critedge.1.i, !llvm.loop !76

.critedge.2.i:                                    ; preds = %bb.c, %.critedge.outer.2.i
  %i.af = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3
  switch i32 %i.ah, label %.critedge.2.i.unreachabledefault [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.c
  ], !prof !259

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.c:                                             ; preds = %.critedge.2.i
  %i.ai = and i64 %i.af, -4
  %i.aj = cmpxchg weak ptr %i.v, i64 %i.af, i64 %i.ai release monotonic, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %.loopexit, label %.critedge.2.i, !llvm.loop !76

.critedge.3.i:                                    ; preds = %bb.d, %.critedge.outer.3.i
  %i.al = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 3
  switch i32 %i.an, label %.critedge.3.i.unreachabledefault [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.d
  ], !prof !259

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i

bb.d:                                             ; preds = %.critedge.3.i
  %i.ao = and i64 %i.al, -4
  %i.ap = cmpxchg weak ptr %i.v, i64 %i.al, i64 %i.ao release monotonic, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %.loopexit, label %.critedge.3.i, !llvm.loop !76

.critedge.4.i:                                    ; preds = %bb.e, %.critedge.outer.4.i
  %i.ar = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %.critedge.4.i.unreachabledefault [
    i32 1, label %_mi_free_delayed_block.exit
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.e
  ], !prof !259

bb.e:                                             ; preds = %.critedge.4.i
  %i.au = and i64 %i.ar, -4
  %i.av = cmpxchg weak ptr %i.v, i64 %i.ar, i64 %i.au release monotonic, align 8
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit, label %.critedge.4.i, !llvm.loop !76

.critedge.4.i.unreachabledefault:                 ; preds = %.critedge.4.i
  unreachable

.critedge.3.i.unreachabledefault:                 ; preds = %.critedge.3.i
  unreachable

.critedge.2.i.unreachabledefault:                 ; preds = %.critedge.2.i
  unreachable

.critedge.1.i.unreachabledefault:                 ; preds = %.critedge.1.i
  unreachable
end_hunk_0
begin_hunk_1_@_mi_page_unfull:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 2816
  %i.g = getelementptr i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 4 uses
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 7
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %i.l = icmp ult i32 %i.h, 9
  br i1 %i.l, label %mi_heap_page_queue_of.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %i.h, 65
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.k, 1
  %i.o = and i64 %i.n, 30
  br label %mi_heap_page_queue_of.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ugt i32 %i.h, 131072
  br i1 %i.p, label %mi_heap_page_queue_of.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %i.k, -1                     ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false) ; 2 uses
  %i.s = sub nsw i64 61, %i.r
  %i.t = and i64 %i.s, 4294967295
  %i.u = lshr i64 %i.q, %i.t
  %i.v = and i64 %i.u, 3
  %i.w = shl nuw nsw i64 %i.r, 2
  %reass.sub = sub nsw i64 %i.v, %i.w
  %i.x = add nsw i64 %reass.sub, 249
  %i.y = and i64 %i.x, 255
  br label %mi_heap_page_queue_of.exit

mi_heap_page_queue_of.exit:                       ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.z = phi i64 [ 73, %bb.e ], [ %i.y, %bb.f ], [ %i.o, %bb.d ], [ 1, %bb.b ]
  %i.aa = getelementptr i8, ptr %i.e, i64 1040
  %i.ab = getelementptr [24 x i8], ptr %i.aa, i64 %i.z
  store i8 %.val, ptr %i.a, align 2
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.ab, ptr noundef %i.f, ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %mi_heap_page_queue_of.exit
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_enqueue_from(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 48
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr i8, ptr %2, i64 64         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 56
  store ptr %.pre, ptr %i.f, align 8, !tbaa !197
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %2, i64 56
  %.not35 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = getelementptr i8, ptr %.pre, i64 64
  store ptr %i.e, ptr %i.h, align 8, !tbaa !264
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !264
  store ptr %i.l, ptr %i.i, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %1, align 8, !tbaa !64
  %i.n = icmp eq ptr %2, %i.m
  br i1 %i.n, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %1, align 8, !tbaa !64
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61   ; 4 uses
  %i.q = icmp ugt i64 %i.p, 1024
  br i1 %i.q, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not35, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.r = add nuw nsw i64 %i.p, 7
  %i.s = lshr i64 %i.r, 3                         ; 8 uses
  %i.t = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.w = icmp eq ptr %i.v, %spec.store.select.i
  br i1 %i.w, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp samesign ult i64 %i.p, 9
  br i1 %i.x, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp samesign ult i64 %i.p, 65
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = trunc nuw nsw i64 %i.s to i8
  %i.aa = add nuw nsw i8 %i.z, 1
  %i.ab = and i8 %i.aa, 30
  br label %mi_bin.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ac = add nsw i64 %i.s, -1                    ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false) ; 2 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = sub nsw i64 61, %i.ad
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = lshr i64 %i.ac, %i.ag
  %i.ai = trunc nuw nsw i64 %i.ah to i8
  %i.aj = and i8 %i.ai, 3
  %i.ak = shl i8 %i.ae, 2
  %reass.sub = sub i8 %i.aj, %i.ak
  %i.al = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.al, %bb.l ], [ %i.ab, %bb.k ]
  %i.am = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.an = getelementptr i8, ptr %.pn.i, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !61
  %i.ap = add i64 %i.ao, 7                        ; 4 uses
  %i.aq = lshr i64 %i.ap, 3                       ; 4 uses
  %i.ar = icmp ult i64 %i.ap, 16
  br i1 %i.ar, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp ult i64 %i.ap, 72
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = trunc nuw nsw i64 %i.aq to i8
  %i.au = add nuw nsw i8 %i.at, 1
  %i.av = and i8 %i.au, 30
  br label %mi_bin.exit35.i

bb.p:                                             ; preds = %bb.n
  %i.aw = icmp ugt i64 %i.ap, 131079
  br i1 %i.aw, label %mi_bin.exit35.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 false) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i8
  %i.ba = sub nsw i64 61, %i.ay
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = lshr i64 %i.ax, %i.bb
  %i.bd = trunc i64 %i.bc to i8
  %i.be = and i8 %i.bd, 3
  %i.bf = shl i8 %i.az, 2
  %reass.sub60 = sub i8 %i.be, %i.bf
  %i.bg = add i8 %reass.sub60, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.bg, %bb.q ], [ %i.av, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.bh = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bi = icmp ugt ptr %.027.i, %i.am
  %i.bj = and i1 %i.bi, %i.bh
  br i1 %i.bj, label %bb.m, label %bb.r, !llvm.loop !261

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bk = add nuw nsw i64 %i.aq, 1
  %.not.i = icmp samesign ult i64 %i.aq, %i.s
  %spec.select.i = select i1 %.not.i, i64 %i.bk, i64 %i.s ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.s
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %3 = sub nsw i64 %i.s, %.145.i
  %4 = add i64 %3, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.bl = add i64 %.145.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.t, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bn, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.bo, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.br, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %i.t, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bq, align 8, !tbaa !53
  %i.br = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.s
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !269

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.r, %bb.h, %bb.g, %bb.f
  %i.bs = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !63 ; 3 uses
  store ptr %i.bt, ptr %i.d, align 8, !tbaa !264
  store ptr null, ptr %i.g, align 8, !tbaa !197
  %.not36 = icmp eq ptr %i.bt, null
  br i1 %.not36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mi_heap_queue_first_update.exit
  %i.bu = getelementptr i8, ptr %i.bt, i64 56
  store ptr %2, ptr %i.bu, align 8, !tbaa !197
  store ptr %2, ptr %i.bs, align 8, !tbaa !63
  %.phi.trans.insert64 = getelementptr i8, ptr %0, i64 16
  %.val.pre = load i64, ptr %.phi.trans.insert64, align 8, !tbaa !61
  br label %mi_heap_queue_first_update.exit54

bb.t:                                             ; preds = %mi_heap_queue_first_update.exit
  store ptr %2, ptr %0, align 8, !tbaa !64
  store ptr %2, ptr %i.bs, align 8, !tbaa !63
  %i.bv = getelementptr i8, ptr %0, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !61 ; 9 uses
  %i.bx = icmp ugt i64 %i.bw, 1024
  br i1 %i.bx, label %mi_heap_queue_first_update.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = add nuw nsw i64 %i.bw, 7
  %i.bz = lshr i64 %i.by, 3                       ; 8 uses
  %i.ca = getelementptr i8, ptr %i.c, i64 8       ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = icmp eq ptr %i.cc, %2
  br i1 %i.cd, label %mi_heap_queue_first_update.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = icmp samesign ult i64 %i.bw, 9
  br i1 %i.ce, label %.lr.ph.preheader.i49, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = icmp samesign ult i64 %i.bw, 65
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = trunc nuw nsw i64 %i.bz to i8
  %i.ch = add nuw nsw i8 %i.cg, 1
  %i.ci = and i8 %i.ch, 30
  br label %mi_bin.exit.i39

bb.y:                                             ; preds = %bb.w
  %i.cj = add nsw i64 %i.bz, -1                   ; 2 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 false) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i8
  %i.cm = sub nsw i64 61, %i.ck
  %i.cn = and i64 %i.cm, 4294967295
  %i.co = lshr i64 %i.cj, %i.cn
  %i.cp = trunc nuw nsw i64 %i.co to i8
  %i.cq = and i8 %i.cp, 3
  %i.cr = shl i8 %i.cl, 2
  %reass.sub61 = sub i8 %i.cq, %i.cr
  %i.cs = add i8 %reass.sub61, -7
  br label %mi_bin.exit.i39

mi_bin.exit.i39:                                  ; preds = %bb.y, %bb.x
  %.0.i.i40 = phi i8 [ %i.cs, %bb.y ], [ %i.ci, %bb.x ]
  %i.ct = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.z

bb.z:                                             ; preds = %mi_bin.exit35.i44, %mi_bin.exit.i39
  %.pn.i41 = phi ptr [ %0, %mi_bin.exit.i39 ], [ %.027.i42, %mi_bin.exit35.i44 ] ; 2 uses
  %.027.i42 = getelementptr i8, ptr %.pn.i41, i64 -24 ; 2 uses
  %i.cu = getelementptr i8, ptr %.pn.i41, i64 -8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !61
  %i.cw = add i64 %i.cv, 7                        ; 4 uses
  %i.cx = lshr i64 %i.cw, 3                       ; 4 uses
  %i.cy = icmp ult i64 %i.cw, 16
  br i1 %i.cy, label %mi_bin.exit35.i44, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = icmp ult i64 %i.cw, 72
  br i1 %i.cz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.da = trunc nuw nsw i64 %i.cx to i8
  %i.db = add nuw nsw i8 %i.da, 1
  %i.dc = and i8 %i.db, 30
  br label %mi_bin.exit35.i44

bb.ac:                                            ; preds = %bb.aa
  %i.dd = icmp ugt i64 %i.cw, 131079
  br i1 %i.dd, label %mi_bin.exit35.i44, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = add nsw i64 %i.cx, -1                   ; 2 uses
  %i.df = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.de, i1 false) ; 2 uses
  %i.dg = trunc nuw nsw i64 %i.df to i8
  %i.dh = sub nsw i64 61, %i.df
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = lshr i64 %i.de, %i.di
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = and i8 %i.dk, 3
  %i.dm = shl i8 %i.dg, 2
  %reass.sub62 = sub i8 %i.dl, %i.dm
  %i.dn = add i8 %reass.sub62, -7
  br label %mi_bin.exit35.i44

mi_bin.exit35.i44:                                ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.0.i34.i45 = phi i8 [ %i.dn, %bb.ad ], [ %i.dc, %bb.ab ], [ 1, %bb.z ], [ 73, %bb.ac ]
  %i.do = icmp eq i8 %.0.i.i40, %.0.i34.i45
  %i.dp = icmp ugt ptr %.027.i42, %i.ct
  %i.dq = and i1 %i.dp, %i.do
  br i1 %i.dq, label %bb.z, label %bb.ae, !llvm.loop !261

bb.ae:                                            ; preds = %mi_bin.exit35.i44
  %i.dr = add nuw nsw i64 %i.cx, 1
  %.not.i46 = icmp samesign ult i64 %i.cx, %i.bz
  %spec.select.i47 = select i1 %.not.i46, i64 %i.dr, i64 %i.bz ; 2 uses
  %.not3237.i48 = icmp samesign ugt i64 %spec.select.i47, %i.bz
  br i1 %.not3237.i48, label %mi_heap_queue_first_update.exit54, label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %bb.ae, %bb.v
  %.145.i50 = phi i64 [ %spec.select.i47, %bb.ae ], [ 0, %bb.v ] ; 4 uses
  %5 = sub nsw i64 %i.bz, %.145.i50
  %6 = add i64 %5, 1                              ; 3 uses
  %min.iters.check76 = icmp ult i64 %6, 4
  br i1 %min.iters.check76, label %.lr.ph.i51.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i49
  %n.vec79 = and i64 %6, -4                       ; 3 uses
  %i.ds = add i64 %.145.i50, %n.vec79
  %broadcast.splatinsert80 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat81 = shufflevector <2 x ptr> %broadcast.splatinsert80, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %i.ca, i64 %.145.i50
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph77
  %index83 = phi i64 [ 0, %vector.ph77 ], [ %index.next84, %vector.body82 ] ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.dt, i64 %index83 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  store <2 x ptr> %broadcast.splat81, ptr %i.du, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat81, ptr %i.dv, align 8, !tbaa !53
  %index.next84 = add nuw i64 %index83, 4         ; 2 uses
  %i.dw = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.dw, label %middle.block85, label %vector.body82, !llvm.loop !270

middle.block85:                                   ; preds = %vector.body82
  %cmp.n86 = icmp eq i64 %6, %n.vec79
  br i1 %cmp.n86, label %mi_heap_queue_first_update.exit54, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %.lr.ph.preheader.i49, %middle.block85
  %.038.i52.ph = phi i64 [ %.145.i50, %.lr.ph.preheader.i49 ], [ %i.ds, %middle.block85 ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %.lr.ph.i51
  %.038.i52 = phi i64 [ %i.dy, %.lr.ph.i51 ], [ %.038.i52.ph, %.lr.ph.i51.preheader ] ; 3 uses
  %i.dx = getelementptr [8 x i8], ptr %i.ca, i64 %.038.i52
  store ptr %2, ptr %i.dx, align 8, !tbaa !53
  %i.dy = add nuw nsw i64 %.038.i52, 1
  %exitcond.not.i53 = icmp eq i64 %.038.i52, %i.bz
  br i1 %exitcond.not.i53, label %mi_heap_queue_first_update.exit54, label %.lr.ph.i51, !llvm.loop !271

mi_heap_queue_first_update.exit54:                ; preds = %.lr.ph.i51, %middle.block85, %bb.ae, %bb.u, %bb.t, %bb.s
  %.val = phi i64 [ %.val.pre, %bb.s ], [ %i.bw, %bb.ae ], [ %i.bw, %bb.u ], [ %i.bw, %bb.t ], [ %i.bw, %middle.block85 ], [ %i.bw, %.lr.ph.i51 ]
  %i.dz = icmp eq i64 %.val, 131088
  %i.ea = zext i1 %i.dz to i8
  %i.eb = getelementptr i8, ptr %2, i64 14        ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 2
  %i.ed = and i8 %i.ec, -2
  %i.ee = or disjoint i8 %i.ed, %i.ea
  store i8 %i.ee, ptr %i.eb, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_abandon(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef %0)
  store atomic i64 0, ptr %i.a release, align 8
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -1
  %i.h = and i64 %i.g, -33554432
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 192      ; 3 uses
  %i.k = load i64, ptr %i.j, align 64, !tbaa !72
  %i.l = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.l, ptr %i.j, align 64, !tbaa !72
  %i.m = getelementptr i8, ptr %i.d, i64 928
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !201  ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 256      ; 5 uses
  %i.p = icmp uge ptr %i.o, @_mi_stats_main
  %i.q = icmp ult ptr %i.o, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  %i.s = getelementptr i8, ptr %i.n, i64 280      ; 3 uses
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.u = getelementptr i8, ptr %i.n, i64 272      ; 2 uses
  %i.v = add i64 %i.t, 1                          ; 2 uses
  %i.w = load atomic i64, ptr %i.u monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.w, %bb.b ], [ %i.aa, %bb.d ] ; 2 uses
  %i.x = icmp slt i64 %.0.i.i.i.i, %i.v
  br i1 %i.x, label %bb.d, label %mi_atomic_maxi64_relaxed.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = cmpxchg weak ptr %i.u, i64 %.0.i.i.i.i, i64 %i.v release monotonic, align 8 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  br i1 %i.z, label %mi_atomic_maxi64_relaxed.exit.i.i.i, label %bb.c, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i.i:              ; preds = %bb.d, %bb.c
  %i.ab = atomicrmw add ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i = load i64, ptr %i.j, align 64, !tbaa !72
  br label %_mi_stat_increase.exit.i

bb.e:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !127
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !127
  %i.ae = getelementptr i8, ptr %i.n, i64 272     ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !128
  %i.ag = icmp sgt i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !129
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !129
  br label %_mi_stat_increase.exit.i

_mi_stat_increase.exit.i:                         ; preds = %bb.g, %mi_atomic_maxi64_relaxed.exit.i.i.i
  %i.aj = phi i64 [ %.pre.i, %mi_atomic_maxi64_relaxed.exit.i.i.i ], [ %i.l, %bb.g ]
  %i.ak = getelementptr i8, ptr %i.i, i64 208
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !67
  %i.am = icmp eq i64 %i.al, %i.aj
  br i1 %i.am, label %bb.h, label %_mi_segment_page_abandon.exit

bb.h:                                             ; preds = %_mi_stat_increase.exit.i
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.i, ptr noundef %i.e)
  br label %_mi_segment_page_abandon.exit

_mi_segment_page_abandon.exit:                    ; preds = %_mi_stat_increase.exit.i, %bb.h
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_remove(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !197 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 56
  store ptr %.pre, ptr %i.f, align 8, !tbaa !197
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.not22 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %.pre, i64 64
  store ptr %i.e, ptr %i.g, align 8, !tbaa !264
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !264
  store ptr %i.k, ptr %i.h, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !64
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %0, align 8, !tbaa !64
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 4 uses
  %i.p = icmp ugt i64 %i.o, 1024
  br i1 %i.p, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not22, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.q = add nuw nsw i64 %i.o, 7
  %i.r = lshr i64 %i.q, 3                         ; 8 uses
  %i.s = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.v = icmp eq ptr %i.u, %spec.store.select.i
  br i1 %i.v, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp samesign ult i64 %i.o, 9
  br i1 %i.w, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp samesign ult i64 %i.o, 65
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = trunc nuw nsw i64 %i.r to i8
  %i.z = add nuw nsw i8 %i.y, 1
  %i.aa = and i8 %i.z, 30
  br label %mi_bin.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ab = add nsw i64 %i.r, -1                    ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 false) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = sub nsw i64 61, %i.ac
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = lshr i64 %i.ab, %i.af
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 3
  %i.aj = shl i8 %i.ad, 2
  %reass.sub = sub i8 %i.ai, %i.aj
  %i.ak = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.ak, %bb.l ], [ %i.aa, %bb.k ]
  %i.al = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %0, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.am = getelementptr i8, ptr %.pn.i, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !61
  %i.ao = add i64 %i.an, 7                        ; 4 uses
  %i.ap = lshr i64 %i.ao, 3                       ; 4 uses
  %i.aq = icmp ult i64 %i.ao, 16
  br i1 %i.aq, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp ult i64 %i.ao, 72
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = trunc nuw nsw i64 %i.ap to i8
  %i.at = add nuw nsw i8 %i.as, 1
  %i.au = and i8 %i.at, 30
  br label %mi_bin.exit35.i

bb.p:                                             ; preds = %bb.n
  %i.av = icmp ugt i64 %i.ao, 131079
  br i1 %i.av, label %mi_bin.exit35.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false) ; 2 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = sub nsw i64 61, %i.ax
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = lshr i64 %i.aw, %i.ba
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = and i8 %i.bc, 3
  %i.be = shl i8 %i.ay, 2
  %reass.sub25 = sub i8 %i.bd, %i.be
  %i.bf = add i8 %reass.sub25, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.bf, %bb.q ], [ %i.au, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.bg = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bh = icmp ugt ptr %.027.i, %i.al
  %i.bi = and i1 %i.bh, %i.bg
  br i1 %i.bi, label %bb.m, label %bb.r, !llvm.loop !261

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bj = add nuw nsw i64 %i.ap, 1
  %.not.i = icmp samesign ult i64 %i.ap, %i.r
  %spec.select.i = select i1 %.not.i, i64 %i.bj, i64 %i.r ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.r
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %2 = sub nsw i64 %i.r, %.145.i
  %3 = add i64 %2, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.bk = add i64 %.145.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.s, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bm, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.bn, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bp = getelementptr [8 x i8], ptr %i.s, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bp, align 8, !tbaa !53
  %i.bq = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.r
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !273

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.r, %bb.h, %bb.g, %bb.f
  %i.br = getelementptr i8, ptr %1, i64 56
  %i.bs = getelementptr i8, ptr %i.c, i64 3024    ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !196
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !196
  %i.bv = getelementptr i8, ptr %1, i64 14        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %i.bw = load i8, ptr %i.bv, align 2
  %i.bx = and i8 %i.bw, -2
  store i8 %i.bx, ptr %i.bv, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_segment_page_abandon(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 192      ; 3 uses
  %i.f = load i64, ptr %i.e, align 64, !tbaa !72
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.e, align 64, !tbaa !72
  %i.h = getelementptr i8, ptr %1, i64 896
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201  ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 256      ; 5 uses
  %i.k = icmp uge ptr %i.j, @_mi_stats_main
  %i.l = icmp ult ptr %i.j, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr i8, ptr %i.i, i64 280      ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 272      ; 2 uses
  %i.q = add i64 %i.o, 1                          ; 2 uses
  %i.r = load atomic i64, ptr %i.p monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i = phi i64 [ %i.r, %bb.b ], [ %i.v, %bb.d ] ; 2 uses
  %i.s = icmp slt i64 %.0.i.i.i, %i.q
  br i1 %i.s, label %bb.d, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = cmpxchg weak ptr %i.p, i64 %.0.i.i.i, i64 %i.q release monotonic, align 8 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  br i1 %i.u, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.c, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.d, %bb.c
  %i.w = atomicrmw add ptr %i.j, i64 1 monotonic, align 8 ; 0 uses
  %.pre = load i64, ptr %i.e, align 64, !tbaa !72
  br label %_mi_stat_increase.exit

bb.e:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.n, align 8, !tbaa !127
  %i.y = add i64 %i.x, 1                          ; 3 uses
  store i64 %i.y, ptr %i.n, align 8, !tbaa !127
  %i.z = getelementptr i8, ptr %i.i, i64 272      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !128
  %i.ab = icmp sgt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.y, ptr %i.z, align 8, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !129
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.j, align 8, !tbaa !129
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.g
  %i.ae = phi i64 [ %.pre, %mi_atomic_maxi64_relaxed.exit.i.i ], [ %i.g, %bb.g ]
  %i.af = getelementptr i8, ptr %i.d, i64 208
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !67
  %i.ah = icmp eq i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_mi_stat_increase.exit
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.d, ptr noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_mi_stat_increase.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_free(ptr noundef %0, ptr nofree noundef captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, -3
  store i8 %i.c, ptr %i.a, align 2
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef %0)
  store atomic i64 0, ptr %i.d release, align 8
  %i.i = ptrtoint ptr %0 to i64
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, -33554432
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr noundef %i.h) ; 0 uses
  %i.n = getelementptr i8, ptr %i.l, i64 208
  %i.o = load i64, ptr %i.n, align 16, !tbaa !67  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.l, ptr noundef %i.h)
  br label %_mi_segment_page_free.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.l, i64 192
  %i.r = load i64, ptr %i.q, align 64, !tbaa !72
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %bb.d, label %_mi_segment_page_free.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.l, ptr noundef %i.h)
  br label %_mi_segment_page_free.exit

_mi_segment_page_free.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_segment_page_free(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr noundef %2) ; 0 uses
  %i.f = getelementptr i8, ptr %i.d, i64 208
  %i.g = load i64, ptr %i.f, align 16, !tbaa !67  ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.d, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 192
  %i.j = load i64, ptr %i.i, align 64, !tbaa !72
  %i.k = icmp eq i64 %i.g, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.d, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}
end_hunk_1
