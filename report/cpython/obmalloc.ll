inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_heap_delayed_free_all:bb.a
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

.critedge.i1.unreachabledefault:                  ; preds = %.critedge.i1
  unreachable

bb.f:                                             ; preds = %.critedge.i1
  %i.ax = and i64 %i.w, -4
  %i.ay = cmpxchg weak ptr %i.v, i64 %i.w, i64 %i.ax release monotonic, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %.loopexit, label %.critedge.i1, !llvm.loop !76

.loopexit:                                        ; preds = %.critedge.i1, %.critedge.i1, %bb.f, %.critedge.1.i, %.critedge.1.i, %bb.b, %.critedge.2.i, %.critedge.2.i, %bb.c, %.critedge.3.i, %.critedge.3.i, %bb.d, %.critedge.4.i, %.critedge.4.i, %bb.e
  %i.ba = load atomic i64, ptr %i.v monotonic, align 8
  %.not.i.i = icmp ult i64 %i.ba, 4
  br i1 %.not.i.i, label %_mi_page_thread_free_collect.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bb = load atomic i64, ptr %i.v monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i64 [ %i.bb, %bb.g ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bc = and i64 %.0.i.i.i, 3
  %i.bd = cmpxchg weak ptr %i.v, i64 %.0.i.i.i, i64 %i.bc acq_rel acquire, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  br i1 %i.be, label %bb.i, label %bb.h, !llvm.loop !73

bb.i:                                             ; preds = %bb.h
  %i.bg = and i64 %.0.i.i.i, -4                   ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr i8, ptr %i.u, i64 10
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !74 ; 2 uses
  %i.bl = zext i16 %i.bk to i32                   ; 2 uses
  %i.bm = load atomic i64, ptr %i.bh monotonic, align 8 ; 2 uses
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = icmp ne i16 %i.bk, 0
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.bq = phi i64 [ %i.bt, %.lr.ph.i.i.i ], [ %i.bm, %bb.j ]
  %.02934.i.i.i = phi i32 [ %i.bs, %.lr.ph.i.i.i ], [ 1, %bb.j ] ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = add nuw nsw i32 %.02934.i.i.i, 1        ; 2 uses
  %i.bt = load atomic i64, ptr %i.br monotonic, align 8 ; 2 uses
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = icmp samesign ult i32 %.02934.i.i.i, %i.bl
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.j
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.j ], [ %i.bs, %.lr.ph.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.bh, %bb.j ], [ %i.br, %.lr.ph.i.i.i ]
  %i.bx = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.bl
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.by = getelementptr i8, ptr %i.u, i64 32      ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ca = ptrtoint ptr %i.bz to i64
  store atomic i64 %i.ca, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.bh, ptr %i.by, align 8, !tbaa !57
  %i.cb = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !18
  %i.cd = sub i32 %i.cc, %.029.lcssa.i.i.i
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.l, %bb.k, %bb.i, %.loopexit
  %i.ce = getelementptr i8, ptr %i.u, i64 32      ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.cf, null
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.m

bb.m:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  %i.cg = getelementptr i8, ptr %i.u, i64 16      ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.sink.split.i.i, label %_mi_page_free_collect.exit.i, !prof !55

.sink.split.i.i:                                  ; preds = %bb.m
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !11
  %i.cj = getelementptr i8, ptr %i.u, i64 15      ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = and i8 %i.ck, -2
  store i8 %i.cl, ptr %i.cj, align 1
  br label %_mi_page_free_collect.exit.i

_mi_page_free_collect.exit.i:                     ; preds = %.sink.split.i.i, %bb.m, %_mi_page_thread_free_collect.exit.i.i
  %i.cm = phi ptr [ %i.cf, %bb.m ], [ null, %_mi_page_thread_free_collect.exit.i.i ], [ null, %.sink.split.i.i ]
  %i.cn = ptrtoint ptr %i.cm to i64
  store atomic i64 %i.cn, ptr %.334.i monotonic, align 8
  store ptr %.334.i, ptr %i.ce, align 8, !tbaa !57
  %i.co = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !18
  %i.cq = add i32 %i.cp, -1                       ; 2 uses
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !18
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %bb.o, !prof !17

bb.n:                                             ; preds = %_mi_page_free_collect.exit.i
  tail call void @_mi_page_retire(ptr noundef nonnull %i.u)
  br label %.loopexit.i

bb.o:                                             ; preds = %_mi_page_free_collect.exit.i
  %i.cs = getelementptr i8, ptr %i.u, i64 14      ; 2 uses
  %.val16.i.i = load i8, ptr %i.cs, align 2       ; 2 uses
  %i.ct = trunc i8 %.val16.i.i to i1
  br i1 %i.ct, label %bb.p, label %.loopexit.i, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr i8, ptr %i.u, i64 48
  %i.cv = load atomic i64, ptr %i.cu monotonic, align 8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 2816
  %i.cy = getelementptr i8, ptr %i.u, i64 28
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !21 ; 4 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 7
  %i.dc = lshr i64 %i.db, 3                       ; 2 uses
  %i.dd = icmp ult i32 %i.cz, 9
  br i1 %i.dd, label %_mi_page_unfull.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = icmp ult i32 %i.cz, 65
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = add nuw nsw i64 %i.dc, 1
  %i.dg = and i64 %i.df, 30
  br label %_mi_page_unfull.exit

bb.s:                                             ; preds = %bb.q
  %i.dh = icmp ugt i32 %i.cz, 131072
  br i1 %i.dh, label %_mi_page_unfull.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = add nsw i64 %i.dc, -1                   ; 2 uses
  %i.dj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 false) ; 2 uses
  %i.dk = sub nsw i64 61, %i.dj
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = lshr i64 %i.di, %i.dl
  %i.dn = and i64 %i.dm, 3
  %i.do = shl nuw nsw i64 %i.dj, 2
  %reass.sub = sub nsw i64 %i.dn, %i.do
  %i.dp = add nsw i64 %reass.sub, 249
  %i.dq = and i64 %i.dp, 255
  br label %_mi_page_unfull.exit

_mi_page_unfull.exit:                             ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %i.dr = phi i64 [ 73, %bb.s ], [ %i.dq, %bb.t ], [ %i.dg, %bb.r ], [ 1, %bb.p ]
  %i.ds = getelementptr i8, ptr %i.cw, i64 1040
  %i.dt = getelementptr [24 x i8], ptr %i.ds, i64 %i.dr
  store i8 %.val16.i.i, ptr %i.cs, align 2
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.dt, ptr noundef %i.cx, ptr noundef nonnull %i.u)
  br label %.loopexit.i

_mi_free_delayed_block.exit:                      ; preds = %.critedge.4.i
  %i.du = load atomic ptr, ptr %i.a monotonic, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_mi_free_delayed_block.exit
  %.027.i = phi ptr [ %i.du, %_mi_free_delayed_block.exit ], [ %i.dy, %bb.u ] ; 2 uses
  %i.dv = ptrtoint ptr %.027.i to i64
  store atomic i64 %i.dv, ptr %.334.i monotonic, align 8
  %i.dw = cmpxchg weak ptr %i.a, ptr %.027.i, ptr %.334.i release monotonic, align 8 ; 2 uses
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  %i.dy = extractvalue { ptr, i1 } %i.dw, 0
  br i1 %i.dx, label %.loopexit.i.thread, label %bb.u, !llvm.loop !47

.loopexit.i:                                      ; preds = %bb.o, %bb.n, %_mi_page_unfull.exit
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_mi_heap_delayed_free_partial.exit, label %.lr.ph.i, !llvm.loop !48

.loopexit.i.thread:                               ; preds = %bb.u
  %.not.i31 = icmp eq i64 %i.g, 0
  br i1 %.not.i31, label %_mi_heap_delayed_free_partial.exit.thread33, label %.lr.ph.i.outer, !llvm.loop !48

_mi_heap_delayed_free_partial.exit:               ; preds = %.loopexit.i
  br i1 %.02533.i.ph, label %_mi_heap_delayed_free_partial.exit.thread, label %_mi_heap_delayed_free_partial.exit.thread33

_mi_heap_delayed_free_partial.exit.thread33:      ; preds = %.loopexit.i.thread, %_mi_heap_delayed_free_partial.exit
  tail call void @llvm.x86.sse2.pause()
  %i.dz = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.dz, null
  br i1 %.old1.not.i, label %_mi_heap_delayed_free_partial.exit.thread, label %.preheader.i.backedge

_mi_heap_delayed_free_partial.exit.thread:        ; preds = %_mi_heap_delayed_free_partial.exit, %.critedge.i, %_mi_heap_delayed_free_partial.exit.thread33, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_page_unfull(ptr noundef %0) local_unnamed_addr #35 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %.val = load i8, ptr %i.a, align 2              ; 2 uses
  %i.b = trunc i8 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.g

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
  %i.bl = sub nsw i64 %i.s, %.145.i
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bm, -4                      ; 3 uses
  %i.bn = add i64 %.145.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.t, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bp, align 8, !tbaa !53
  store <2 x ptr> %broadcast.splat, ptr %i.bq, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.t, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bs, align 8, !tbaa !53
  %i.bt = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.s
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !269

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.r, %bb.h, %bb.g, %bb.f
  %i.bu = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !63 ; 3 uses
  store ptr %i.bv, ptr %i.d, align 8, !tbaa !264
  store ptr null, ptr %i.g, align 8, !tbaa !197
  %.not36 = icmp eq ptr %i.bv, null
end_hunk_0
