inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_page_retire:bb.a
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp ult i32 %.pre, 9
  br i1 %i.h, label %mi_page_queue_of.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %.pre, 65
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i64 %i.g, 1
  %i.k = and i64 %i.j, 30
  br label %mi_page_queue_of.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %.pre, 131072
  br i1 %i.l, label %mi_page_queue_of.exit.thread30, label %bb.f

mi_page_queue_of.exit.thread30:                   ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 2792
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %i.g, -1                     ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false) ; 2 uses
  %i.s = sub nsw i64 61, %i.r
  %i.t = and i64 %i.s, 4294967295
  %i.u = lshr i64 %i.q, %i.t
  %i.v = and i64 %i.u, 3
  %i.w = shl nuw nsw i64 %i.r, 2
  %reass.sub = sub nsw i64 %i.v, %i.w
  %i.x = add nsw i64 %reass.sub, 249
  %i.y = and i64 %i.x, 255
  br label %mi_page_queue_of.exit.thread

mi_page_queue_of.exit.thread:                     ; preds = %bb.f, %bb.d, %bb.b
  %.ph = phi i64 [ 1, %bb.b ], [ %i.k, %bb.d ], [ %i.y, %bb.f ]
  %i.z = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 1040
  %i.ad = getelementptr [24 x i8], ptr %i.ac, i64 %.ph
  br label %bb.g

mi_page_queue_of.exit:                            ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 2816   ; 2 uses
  %i.ai = icmp ult i32 %.pre, 131073
  br i1 %i.ai, label %bb.g, label %.critedge, !prof !49

bb.g:                                             ; preds = %mi_page_queue_of.exit.thread, %mi_page_queue_of.exit
  %i.aj = phi ptr [ %i.ad, %mi_page_queue_of.exit.thread ], [ %i.ah, %mi_page_queue_of.exit ] ; 7 uses
  %i.ak = phi ptr [ %i.z, %mi_page_queue_of.exit.thread ], [ %i.ae, %mi_page_queue_of.exit ] ; 4 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 16
  %.val = load i64, ptr %i.al, align 8, !tbaa !61
  %i.am = icmp ult i64 %.val, 131073
  br i1 %i.am, label %bb.h, label %.critedge, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.ar = icmp eq ptr %i.aq, %0
  br i1 %i.ar, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.as = icmp samesign ult i32 %.pre, 16385
  %i.at = select i1 %i.as, i8 34, i8 10
  %i.au = getelementptr i8, ptr %0, i64 15        ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 1
  %i.ax = or disjoint i8 %i.aw, %i.at
  store i8 %i.ax, ptr %i.au, align 1
  %i.ay = load atomic i64, ptr %i.ak monotonic, align 8
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 1040
  %i.bb = ptrtoint ptr %i.aj to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 24                ; 4 uses
  %i.bf = getelementptr i8, ptr %i.az, i64 3032   ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !65
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = getelementptr i8, ptr %i.az, i64 3040   ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !66
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.m, label %_PyMem_mi_page_maybe_free.exit

bb.m:                                             ; preds = %bb.l
  store i64 %i.be, ptr %i.bi, align 8, !tbaa !66
  br label %_PyMem_mi_page_maybe_free.exit

.critedge:                                        ; preds = %mi_page_queue_of.exit.thread30, %mi_page_queue_of.exit, %bb.h, %bb.i, %bb.g
  %i.bl = phi ptr [ %i.ah, %mi_page_queue_of.exit ], [ %i.aj, %bb.h ], [ %i.aj, %bb.i ], [ %i.aj, %bb.g ], [ %i.p, %mi_page_queue_of.exit.thread30 ]
  %i.bm = phi ptr [ %i.ae, %mi_page_queue_of.exit ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ %i.ak, %bb.g ], [ %i.m, %mi_page_queue_of.exit.thread30 ] ; 2 uses
  store i8 %i.c, ptr %i.a, align 2
  %i.bn = load atomic i64, ptr %i.bm monotonic, align 8
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bq = getelementptr i8, ptr %i.bp, i64 32     ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %i.bl, ptr noundef nonnull %0)
  store atomic i64 0, ptr %i.bm release, align 8
  %i.br = ptrtoint ptr %0 to i64
  %i.bs = add i64 %i.br, -1
  %i.bt = and i64 %i.bs, -33554432
  %i.bu = inttoptr i64 %i.bt to ptr               ; 4 uses
  %i.bv = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %0, ptr noundef %i.bq) ; 0 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 208
  %i.bx = load i64, ptr %i.bw, align 16, !tbaa !67 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.bu, ptr noundef %i.bq)
  br label %_PyMem_mi_page_maybe_free.exit

bb.o:                                             ; preds = %.critedge
  %i.bz = getelementptr i8, ptr %i.bu, i64 192
  %i.ca = load i64, ptr %i.bz, align 64, !tbaa !72
  %i.cb = icmp eq i64 %i.bx, %i.ca
  br i1 %i.cb, label %bb.p, label %_PyMem_mi_page_maybe_free.exit

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.bu, ptr noundef %i.bq)
  br label %_PyMem_mi_page_maybe_free.exit

_PyMem_mi_page_maybe_free.exit:                   ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_free_delayed_block(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432                  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = sub i64 %i.a, %i.c
  %i.f = lshr i64 %i.e, 16
  %i.g = getelementptr i8, ptr %i.d, i64 264
  %i.h = getelementptr [80 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = zext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l     ; 12 uses
  %i.n = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef %i.m, i32 noundef 0, i1 noundef zeroext false) ; 2 uses
  br i1 %i.n, label %bb.b, label %_mi_free_block.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.m, i64 40       ; 3 uses
  %i.p = load atomic i64, ptr %i.o monotonic, align 8
  %.not.i = icmp ult i64 %i.p, 4
  br i1 %.not.i, label %_mi_page_thread_free_collect.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load atomic i64, ptr %i.o monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.q, %bb.c ], [ %i.u, %bb.d ] ; 3 uses
  %i.r = and i64 %.0.i.i, 3
  %i.s = cmpxchg weak ptr %i.o, i64 %.0.i.i, i64 %i.r acq_rel acquire, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.d, !llvm.loop !73

bb.e:                                             ; preds = %bb.d
  %i.v = and i64 %.0.i.i, -4                      ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %_mi_page_thread_free_collect.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.m, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !74   ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = load atomic i64, ptr %i.w monotonic, align 8 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = icmp ne i16 %i.z, 0
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.af = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %bb.f ]
  %.02934.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ 1, %bb.f ]
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = add nuw nsw i32 %.02934.i.i, 1          ; 3 uses
  %i.ai = load atomic i64, ptr %i.ag monotonic, align 8 ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %1 = icmp samesign ule i32 %i.ah, %i.aa
  %i.ak = select i1 %i.aj, i1 %1, i1 false
  br i1 %i.ak, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %.029.lcssa.i.i = phi i32 [ 1, %bb.f ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %.028.lcssa.i.i = phi ptr [ %i.w, %bb.f ], [ %i.ag, %.lr.ph.i.i ]
  %i.al = icmp samesign ugt i32 %.029.lcssa.i.i, %i.aa
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.am = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ao = ptrtoint ptr %i.an to i64
  store atomic i64 %i.ao, ptr %.028.lcssa.i.i monotonic, align 8
  store ptr %i.w, ptr %i.am, align 8, !tbaa !57
  %i.ap = getelementptr i8, ptr %i.m, i64 24      ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !18
  %i.ar = sub i32 %i.aq, %.029.lcssa.i.i
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i

_mi_page_thread_free_collect.exit.i:              ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  %i.as = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 3 uses
  %.not22.i = icmp eq ptr %i.at, null
  br i1 %.not22.i, label %_mi_page_free_collect.exit, label %bb.i

bb.i:                                             ; preds = %_mi_page_thread_free_collect.exit.i
  %i.au = getelementptr i8, ptr %i.m, i64 16      ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !55

.sink.split.i:                                    ; preds = %bb.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.m, i64 15      ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = and i8 %i.ay, -2
  store i8 %i.az, ptr %i.ax, align 1
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.i, %_mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ba = phi ptr [ %i.at, %bb.i ], [ null, %_mi_page_thread_free_collect.exit.i ], [ null, %.sink.split.i ]
  %i.bb = ptrtoint ptr %i.ba to i64
  store atomic i64 %i.bb, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.as, align 8, !tbaa !57
  %i.bc = getelementptr i8, ptr %i.m, i64 24      ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !18
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !18
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.j, label %bb.k, !prof !17

bb.j:                                             ; preds = %_mi_page_free_collect.exit
  tail call void @_mi_page_retire(ptr noundef nonnull %i.m)
  br label %_mi_free_block.exit

bb.k:                                             ; preds = %_mi_page_free_collect.exit
  %i.bg = getelementptr i8, ptr %i.m, i64 14
  %.val16.i = load i8, ptr %i.bg, align 2
  %i.bh = trunc i8 %.val16.i to i1
  br i1 %i.bh, label %bb.l, label %_mi_free_block.exit, !prof !17

bb.l:                                             ; preds = %bb.k
  tail call void @_mi_page_unfull(ptr noundef nonnull %i.m)
  br label %_mi_free_block.exit

_mi_free_block.exit:                              ; preds = %bb.l, %bb.k, %bb.j, %bb.a
  ret i1 %i.n
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_page_try_use_delayed_free(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
.critedge.outer:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 10 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.outer, %bb.j
  %i.c = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.d = and i64 %i.c, -4
  %i.e = or i64 %i.d, %i.b
  %i.f = trunc i64 %i.c to i32
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %.not.not = icmp eq i32 %i.g, 1
  br i1 %.not.not, label %.critedge.outer.1, label %bb.a, !prof !17

.critedge.outer.1:                                ; preds = %.critedge
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1

bb.a:                                             ; preds = %.critedge
  %i.h = icmp ne i32 %1, %i.g
  %i.i = icmp ne i32 %i.g, 3
  %or.cond.not = or i1 %2, %i.i
  %or.cond = and i1 %i.h, %or.cond.not
  br i1 %or.cond, label %bb.j, label %.loopexit

.critedge.1:                                      ; preds = %bb.c, %.critedge.outer.1
  %i.j = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.k = and i64 %i.j, -4
  %i.l = or i64 %i.k, %i.b
  %i.m = trunc i64 %i.j to i32
  %i.n = and i32 %i.m, 3                          ; 3 uses
  %.not.1.not = icmp eq i32 %i.n, 1
  br i1 %.not.1.not, label %.critedge.outer.2, label %bb.b, !prof !17

.critedge.outer.2:                                ; preds = %.critedge.1
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2

bb.b:                                             ; preds = %.critedge.1
  %i.o = icmp ne i32 %1, %i.n
  %i.p = icmp ne i32 %i.n, 3
  %or.cond.not.1 = or i1 %2, %i.p
  %or.cond.1 = and i1 %i.o, %or.cond.not.1
  br i1 %or.cond.1, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.q = cmpxchg weak ptr %i.a, i64 %i.j, i64 %i.l release monotonic, align 8
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.loopexit, label %.critedge.1, !llvm.loop !76

.critedge.2:                                      ; preds = %bb.e, %.critedge.outer.2
  %i.s = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.t = and i64 %i.s, -4
  %i.u = or i64 %i.t, %i.b
  %i.v = trunc i64 %i.s to i32
  %i.w = and i32 %i.v, 3                          ; 3 uses
  %.not.2.not = icmp eq i32 %i.w, 1
  br i1 %.not.2.not, label %.critedge.outer.3, label %bb.d, !prof !17

.critedge.outer.3:                                ; preds = %.critedge.2
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3

bb.d:                                             ; preds = %.critedge.2
  %i.x = icmp ne i32 %1, %i.w
  %i.y = icmp ne i32 %i.w, 3
  %or.cond.not.2 = or i1 %2, %i.y
  %or.cond.2 = and i1 %i.x, %or.cond.not.2
  br i1 %or.cond.2, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.z = cmpxchg weak ptr %i.a, i64 %i.s, i64 %i.u release monotonic, align 8
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %.loopexit, label %.critedge.2, !llvm.loop !76

.critedge.3:                                      ; preds = %bb.g, %.critedge.outer.3
  %i.ab = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.ac = and i64 %i.ab, -4
  %i.ad = or i64 %i.ac, %i.b
  %i.ae = trunc i64 %i.ab to i32
  %i.af = and i32 %i.ae, 3                        ; 3 uses
  %.not.3.not = icmp eq i32 %i.af, 1
  br i1 %.not.3.not, label %.critedge.outer.4, label %bb.f, !prof !17

.critedge.outer.4:                                ; preds = %.critedge.3
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4

bb.f:                                             ; preds = %.critedge.3
  %i.ag = icmp ne i32 %1, %i.af
  %i.ah = icmp ne i32 %i.af, 3
  %or.cond.not.3 = or i1 %2, %i.ah
  %or.cond.3 = and i1 %i.ag, %or.cond.not.3
  br i1 %or.cond.3, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ai = cmpxchg weak ptr %i.a, i64 %i.ab, i64 %i.ad release monotonic, align 8
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %.loopexit, label %.critedge.3, !llvm.loop !76

.critedge.4:                                      ; preds = %bb.i, %.critedge.outer.4
  %i.ak = load atomic i64, ptr %i.a acquire, align 8 ; 3 uses
  %i.al = and i64 %i.ak, -4
  %i.am = or i64 %i.al, %i.b
  %i.an = trunc i64 %i.ak to i32
  %i.ao = and i32 %i.an, 3                        ; 3 uses
  %.not.4.not.not = icmp ne i32 %i.ao, 1          ; 4 uses
  br i1 %.not.4.not.not, label %bb.h, label %.loopexit, !prof !55

bb.h:                                             ; preds = %.critedge.4
  %i.ap = icmp ne i32 %1, %i.ao
  %i.aq = icmp ne i32 %i.ao, 3
  %or.cond.not.4 = or i1 %2, %i.aq
  %or.cond.4 = and i1 %i.ap, %or.cond.not.4
  br i1 %or.cond.4, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ar = cmpxchg weak ptr %i.a, i64 %i.ak, i64 %i.am release monotonic, align 8
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %.loopexit, label %.critedge.4, !llvm.loop !76

bb.j:                                             ; preds = %bb.a
  %i.at = cmpxchg weak ptr %i.a, i64 %i.c, i64 %i.e release monotonic, align 8
  %i.au = extractvalue { i64, i1 } %i.at, 1
  br i1 %i.au, label %.loopexit, label %.critedge, !llvm.loop !76

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %.critedge.4, %bb.h, %bb.i
  %.not28 = phi i1 [ true, %bb.b ], [ %.not.4.not.not, %.critedge.4 ], [ true, %bb.d ], [ true, %bb.f ], [ %.not.4.not.not, %bb.i ], [ %.not.4.not.not, %bb.h ], [ true, %bb.g ], [ true, %bb.e ], [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.j ]
  ret i1 %.not28
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_free_collect(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %.not = icmp ult i64 %i.b, 4
  br i1 %.not, label %_mi_page_thread_free_collect.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %i.e = and i64 %.0.i, 3
  %i.f = cmpxchg weak ptr %i.c, i64 %.0.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d, !llvm.loop !73

bb.e:                                             ; preds = %bb.d
  %i.i = and i64 %.0.i, -4                        ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_mi_page_thread_free_collect.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 10
  %i.m = load i16, ptr %i.l, align 2, !tbaa !74   ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = icmp ne i16 %i.m, 0
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.s = phi i64 [ %i.v, %.lr.ph.i ], [ %i.o, %bb.f ]
  %.02934.i = phi i32 [ %i.u, %.lr.ph.i ], [ 1, %bb.f ]
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.u = add nuw nsw i32 %.02934.i, 1             ; 3 uses
  %i.v = load atomic i64, ptr %i.t monotonic, align 8 ; 2 uses
  %i.w = icmp ne i64 %i.v, 0
  %2 = icmp samesign ule i32 %i.u, %i.n
  %i.x = select i1 %i.w, i1 %2, i1 false
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.029.lcssa.i = phi i32 [ 1, %bb.f ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.028.lcssa.i = phi ptr [ %i.j, %bb.f ], [ %i.t, %.lr.ph.i ]
  %i.y = icmp samesign ugt i32 %.029.lcssa.i, %i.n
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.z = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = ptrtoint ptr %i.aa to i64
  store atomic i64 %i.ab, ptr %.028.lcssa.i monotonic, align 8
  store ptr %i.j, ptr %i.z, align 8, !tbaa !57
  %i.ac = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.ae = sub i32 %i.ad, %.029.lcssa.i
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit

_mi_page_thread_free_collect.exit:                ; preds = %bb.h, %bb.g, %bb.e, %bb.b
  %i.af = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57 ; 3 uses
  %.not22 = icmp eq ptr %i.ag, null
  br i1 %.not22, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_mi_page_thread_free_collect.exit
  %i.ah = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.sink.split, label %bb.j, !prof !55

bb.j:                                             ; preds = %bb.i
  br i1 %1, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.j, %.preheader
  %.0 = phi ptr [ %i.al, %.preheader ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ak = load atomic i64, ptr %.0 monotonic, align 8 ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %.not23 = icmp eq i64 %i.ak, 0
  br i1 %.not23, label %bb.k, label %.preheader, !llvm.loop !77

bb.k:                                             ; preds = %.preheader
  %i.am = ptrtoint ptr %i.ai to i64
  store atomic i64 %i.am, ptr %.0 monotonic, align 8
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !57
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.k
  %.sink = phi ptr [ %i.an, %bb.k ], [ %i.ag, %bb.i ]
  store ptr %.sink, ptr %i.ah, align 8, !tbaa !11
  store ptr null, ptr %i.af, align 8, !tbaa !57
  %i.ao = getelementptr i8, ptr %0, i64 15        ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = and i8 %i.ap, -2
  store i8 %i.aq, ptr %i.ao, align 1
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %_mi_page_thread_free_collect.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_usable_size(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_mi_usable_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = sub i64 %i.b, %i.d
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr i8, ptr %i.e, i64 264
  %i.i = getelementptr [80 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %i.l = zext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 14
  %.val.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i, 2
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %bb.c, label %bb.e, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %_mi_segment_page_start.exit.i.i.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  br label %_mi_usable_size.exit

_mi_segment_page_start.exit.i.i.i.i:              ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !52
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  br label %_mi_usable_size.exit

bb.e:                                             ; preds = %bb.b
  %i.x = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef %0)
  br label %_mi_usable_size.exit

_mi_usable_size.exit:                             ; preds = %bb.a, %bb.d, %_mi_segment_page_start.exit.i.i.i.i, %bb.e
  %.1.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ], [ %i.t, %bb.d ], [ %i.w, %_mi_segment_page_start.exit.i.i.i.i ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_free.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 6 uses
  br i1 %i.j, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !60
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  store atomic i64 %i.y, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.w, align 8, !tbaa !57
  %i.z = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !18
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free_size_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_free_size.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 256
  %i.i = load atomic i64, ptr %i.h monotonic, align 256
  %i.j = icmp eq i64 %i.i, %i.g
  %i.k = sub i64 %i.b, %i.d
  %i.l = lshr i64 %i.k, 16
  %i.m = getelementptr i8, ptr %i.e, i64 264
  %i.n = getelementptr [80 x i8], ptr %i.m, i64 %i.l ; 2 uses
end_hunk_0
begin_hunk_1_@_mi_bitmap_is_any_claimed_across:bb.a
  br label %mi_bitmap_is_claimedx_across.exit

mi_bitmap_is_claimedx_across.exit:                ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.e
  %.326.i = phi i1 [ %.124.lcssa.i, %._crit_edge.i ], [ %spec.select39.i, %bb.e ], [ %.not2964.i, %._crit_edge.thread.i ]
  ret i1 %.326.i
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_collect_abandon(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @mi_heap_collect_ex(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_heap_collect_ex(ptr noundef %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %0, @_mi_heap_empty
  %or.cond43 = and i1 %i.a, %i.b
  br i1 %or.cond43, label %bb.b, label %.critedge28

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %1, 0                        ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_mi_deferred_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_mi_deferred_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.h, align 8, !tbaa !41
  %i.k = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %i.l = load atomic ptr, ptr @deferred_arg monotonic, align 8
  tail call void %i.k(i1 noundef zeroext %i.c, i64 noundef %i.f, ptr noundef %i.l) #55, !inline_history !44
  %i.m = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !41
  br label %_mi_deferred_free.exit

_mi_deferred_free.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_mi_is_main_thread.exit.thread, label %_mi_is_main_thread.exit

_mi_is_main_thread.exit:                          ; preds = %_mi_deferred_free.exit
  %i.r = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = icmp eq i64 %i.p, %i.s
  br i1 %i.t, label %_mi_is_main_thread.exit.thread, label %.thread

.thread:                                          ; preds = %_mi_is_main_thread.exit
  %i.u = icmp eq i32 %1, 1
  br label %.critedge

_mi_is_main_thread.exit.thread:                   ; preds = %_mi_deferred_free.exit, %_mi_is_main_thread.exit
  %i.v = getelementptr i8, ptr %0, i64 2848
  %i.w = load i64, ptr %i.v, align 8, !tbaa !193
  %i.x = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = icmp eq i64 %i.w, %i.y                   ; 2 uses
  %i.aa = icmp eq i32 %1, 1                       ; 2 uses
  %or.cond = select i1 %i.aa, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_mi_is_main_thread.exit.thread
  %i.ab = getelementptr i8, ptr %i.o, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %0, i64 3056
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !195, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.o, i64 32
  tail call void @_mi_abandoned_reclaim_all(ptr noundef nonnull %0, ptr noundef %i.ah)
  br label %.critedge.thread

.critedge:                                        ; preds = %.thread, %_mi_is_main_thread.exit.thread
  %i.ai = phi i1 [ %i.u, %.thread ], [ %i.aa, %_mi_is_main_thread.exit.thread ] ; 3 uses
  %i.aj = phi i1 [ false, %.thread ], [ %i.z, %_mi_is_main_thread.exit.thread ] ; 3 uses
  %i.ak = icmp eq i32 %1, 2
  br i1 %i.ak, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %.critedge
  %i.al = getelementptr i8, ptr %0, i64 3024
  %i.am = load i64, ptr %i.al, align 8, !tbaa !196
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.critedge.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %0, i64 1040
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %.preheader.i
  %.02229.i = phi i64 [ 0, %.preheader.i ], [ %i.av, %.critedge.i ] ; 2 uses
  %i.ap = getelementptr [24 x i8], ptr %i.ao, i64 %.02229.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64 ; 2 uses
  %.not.i2946 = icmp eq ptr %i.aq, null
  br i1 %.not.i2946, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %mi_heap_page_never_delayed_free.exit
  %.020.i47 = phi ptr [ %i.as, %mi_heap_page_never_delayed_free.exit ], [ %i.aq, %bb.i ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.020.i47, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !197 ; 2 uses
  %i.at = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef nonnull %.020.i47, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.at, label %mi_heap_page_never_delayed_free.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  tail call void @llvm.x86.sse2.pause()
  %i.au = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef nonnull %.020.i47, i32 noundef 3, i1 noundef zeroext false)
  br i1 %i.au, label %mi_heap_page_never_delayed_free.exit, label %.lr.ph.i.i, !llvm.loop !198

mi_heap_page_never_delayed_free.exit:             ; preds = %.lr.ph.i.i, %.lr.ph
  %.not.i29 = icmp eq ptr %i.as, null
  br i1 %.not.i29, label %.critedge.i, label %.lr.ph, !llvm.loop !199

.critedge.i:                                      ; preds = %mi_heap_page_never_delayed_free.exit, %bb.i
  %i.av = add nuw nsw i64 %.02229.i, 1            ; 2 uses
  %exitcond.i = icmp eq i64 %i.av, 75
  br i1 %exitcond.i, label %.critedge.thread, label %bb.i, !llvm.loop !200

.critedge.thread:                                 ; preds = %.critedge.i, %bb.f, %bb.g, %bb.e, %.critedge, %bb.h
  %i.aw = phi i1 [ false, %bb.f ], [ false, %.critedge ], [ true, %bb.h ], [ false, %bb.e ], [ false, %bb.g ], [ true, %.critedge.i ]
  %i.ax = phi i1 [ true, %bb.f ], [ %i.aj, %.critedge ], [ %i.aj, %bb.h ], [ true, %bb.e ], [ true, %bb.g ], [ %i.aj, %.critedge.i ]
  %i.ay = phi i1 [ true, %bb.f ], [ %i.ai, %.critedge ], [ %i.ai, %bb.h ], [ true, %bb.e ], [ true, %bb.g ], [ %i.ai, %.critedge.i ]
  tail call void @_mi_heap_delayed_free_all(ptr noundef nonnull %0)
  tail call void @_mi_heap_collect_retired(ptr noundef nonnull %0, i1 noundef zeroext %i.c)
  %i.az = getelementptr i8, ptr %0, i64 3024
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !196
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %mi_heap_visit_pages.exit37, label %.preheader.i30

.preheader.i30:                                   ; preds = %.critedge.thread
  %i.bc = getelementptr i8, ptr %0, i64 1040
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i35, %.preheader.i30
  %.02229.i31 = phi i64 [ 0, %.preheader.i30 ], [ %i.fi, %.critedge.i35 ] ; 2 uses
  %i.bd = getelementptr [24 x i8], ptr %i.bc, i64 %.02229.i31 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64 ; 2 uses
  %.not.i3348 = icmp eq ptr %i.be, null
  br i1 %.not.i3348, label %.critedge.i35, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.j, %mi_heap_page_collect.exit
  %.020.i3249 = phi ptr [ %i.bg, %mi_heap_page_collect.exit ], [ %i.be, %bb.j ] ; 19 uses
  %i.bf = getelementptr i8, ptr %.020.i3249, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !197 ; 2 uses
  br i1 %i.c, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph50
  %i.bh = getelementptr i8, ptr %.020.i3249, i64 40
  %i.bi = load atomic i64, ptr %i.bh monotonic, align 8
  %.not.i.i = icmp ult i64 %i.bi, 4
  br i1 %.not.i.i, label %_mi_page_thread_free_collect.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph50
  %i.bj = getelementptr i8, ptr %.020.i3249, i64 40 ; 2 uses
  %i.bk = load atomic i64, ptr %i.bj monotonic, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi i64 [ %i.bk, %bb.l ], [ %i.bo, %bb.m ] ; 3 uses
  %i.bl = and i64 %.0.i.i.i, 3
  %i.bm = cmpxchg weak ptr %i.bj, i64 %.0.i.i.i, i64 %i.bl acq_rel acquire, align 8 ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  %i.bo = extractvalue { i64, i1 } %i.bm, 0
  br i1 %i.bn, label %bb.n, label %bb.m, !llvm.loop !73

bb.n:                                             ; preds = %bb.m
  %i.bp = and i64 %.0.i.i.i, -4                   ; 2 uses
  %i.bq = inttoptr i64 %i.bp to ptr               ; 3 uses
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_mi_page_thread_free_collect.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr i8, ptr %.020.i3249, i64 10
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !74 ; 2 uses
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = load atomic i64, ptr %i.bq monotonic, align 8 ; 2 uses
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = icmp ne i16 %i.bt, 0
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %i.bz = phi i64 [ %i.cc, %.lr.ph.i.i.i ], [ %i.bv, %bb.o ]
  %.02934.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i ], [ 1, %bb.o ]
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %i.cb = add nuw nsw i32 %.02934.i.i.i, 1        ; 3 uses
  %i.cc = load atomic i64, ptr %i.ca monotonic, align 8 ; 2 uses
  %i.cd = icmp ne i64 %i.cc, 0
  %2 = icmp samesign ule i32 %i.cb, %i.bu
  %i.ce = select i1 %i.cd, i1 %2, i1 false
  br i1 %i.ce, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.o
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.o ], [ %i.cb, %.lr.ph.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.bq, %bb.o ], [ %i.ca, %.lr.ph.i.i.i ]
  %i.cf = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.bu
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = getelementptr i8, ptr %.020.i3249, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.ci = ptrtoint ptr %i.ch to i64
  store atomic i64 %i.ci, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.bq, ptr %i.cg, align 8, !tbaa !57
  %i.cj = getelementptr i8, ptr %.020.i3249, i64 24 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !18
  %i.cl = sub i32 %i.ck, %.029.lcssa.i.i.i
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.q, %bb.p, %bb.n, %bb.k
  %i.cm = getelementptr i8, ptr %.020.i3249, i64 32 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.cn, null
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.r

bb.r:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  %i.co = getelementptr i8, ptr %.020.i3249, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !11 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.sink.split.i.i, label %bb.s, !prof !55

bb.s:                                             ; preds = %bb.r
  br i1 %i.c, label %.preheader.i.i, label %_mi_page_free_collect.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cs, %.preheader.i.i ], [ %i.cn, %bb.s ] ; 2 uses
  %i.cr = load atomic i64, ptr %.0.i.i monotonic, align 8 ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr
  %.not23.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not23.i.i, label %bb.t, label %.preheader.i.i, !llvm.loop !77

bb.t:                                             ; preds = %.preheader.i.i
  %i.ct = ptrtoint ptr %i.cp to i64
  store atomic i64 %i.ct, ptr %.0.i.i monotonic, align 8
  %i.cu = load ptr, ptr %i.cm, align 8, !tbaa !57
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.t, %bb.r
  %.sink.i.i = phi ptr [ %i.cu, %bb.t ], [ %i.cn, %bb.r ]
  store ptr %.sink.i.i, ptr %i.co, align 8, !tbaa !11
  store ptr null, ptr %i.cm, align 8, !tbaa !57
  %i.cv = getelementptr i8, ptr %.020.i3249, i64 15 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = and i8 %i.cw, -2
  store i8 %i.cx, ptr %i.cv, align 1
  br label %_mi_page_free_collect.exit.i

_mi_page_free_collect.exit.i:                     ; preds = %.sink.split.i.i, %_mi_page_thread_free_collect.exit.i.i
  %i.cy = getelementptr i8, ptr %.020.i3249, i64 24
  %.val.i = load i32, ptr %i.cy, align 8, !tbaa !18
  %i.cz = icmp eq i32 %.val.i, 0
  br i1 %i.cz, label %bb.u, label %bb.y

_mi_page_free_collect.exit.thread.i:              ; preds = %bb.s
  %i.da = getelementptr i8, ptr %.020.i3249, i64 24
  %.val17.i = load i32, ptr %i.da, align 8, !tbaa !18
  %i.db = icmp eq i32 %.val17.i, 0
  br i1 %i.db, label %bb.u, label %mi_heap_page_collect.exit

bb.u:                                             ; preds = %_mi_page_free_collect.exit.thread.i, %_mi_page_free_collect.exit.i
  %i.dc = getelementptr i8, ptr %.020.i3249, i64 14 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 2
  %i.de = and i8 %i.dd, -3
  store i8 %i.de, ptr %i.dc, align 2
  %i.df = getelementptr i8, ptr %.020.i3249, i64 48 ; 2 uses
  %i.dg = load atomic i64, ptr %i.df monotonic, align 8
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !22
  %i.dj = getelementptr i8, ptr %i.di, i64 32     ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %i.bd, ptr noundef nonnull %.020.i3249)
  store atomic i64 0, ptr %i.df release, align 8
  %i.dk = ptrtoint ptr %.020.i3249 to i64
  %i.dl = add i64 %i.dk, -1
  %i.dm = and i64 %i.dl, -33554432
  %i.dn = inttoptr i64 %i.dm to ptr               ; 4 uses
  %i.do = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %.020.i3249, ptr noundef %i.dj) ; 0 uses
  %i.dp = getelementptr i8, ptr %i.dn, i64 208
  %i.dq = load i64, ptr %i.dp, align 16, !tbaa !67 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.dn, ptr noundef %i.dj)
  br label %mi_heap_page_collect.exit

bb.w:                                             ; preds = %bb.u
  %i.ds = getelementptr i8, ptr %i.dn, i64 192
  %i.dt = load i64, ptr %i.ds, align 64, !tbaa !72
  %i.du = icmp eq i64 %i.dq, %i.dt
  br i1 %i.du, label %bb.x, label %mi_heap_page_collect.exit

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.dn, ptr noundef %i.dj)
  br label %mi_heap_page_collect.exit

bb.y:                                             ; preds = %_mi_page_free_collect.exit.i
  br i1 %i.aw, label %bb.z, label %mi_heap_page_collect.exit

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr i8, ptr %.020.i3249, i64 48 ; 2 uses
  %i.dw = load atomic i64, ptr %i.dv monotonic, align 8
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !22 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 32
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %i.bd, ptr noundef nonnull %.020.i3249)
  store atomic i64 0, ptr %i.dv release, align 8
  %i.ea = ptrtoint ptr %.020.i3249 to i64
  %i.eb = add i64 %i.ea, -1
  %i.ec = and i64 %i.eb, -33554432
  %i.ed = inttoptr i64 %i.ec to ptr               ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 192    ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 64, !tbaa !72
  %i.eg = add i64 %i.ef, 1                        ; 2 uses
  store i64 %i.eg, ptr %i.ee, align 64, !tbaa !72
  %i.eh = getelementptr i8, ptr %i.dy, i64 928
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !201 ; 4 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 256    ; 5 uses
  %i.ek = icmp uge ptr %i.ej, @_mi_stats_main
  %i.el = icmp ult ptr %i.ej, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.em = select i1 %i.ek, i1 %i.el, i1 false
  %i.en = getelementptr i8, ptr %i.ei, i64 280    ; 3 uses
  br i1 %i.em, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8
  %i.ep = getelementptr i8, ptr %i.ei, i64 272    ; 2 uses
  %i.eq = add i64 %i.eo, 1                        ; 2 uses
  %i.er = load atomic i64, ptr %i.ep monotonic, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.0.i.i.i.i.i.i = phi i64 [ %i.er, %bb.aa ], [ %i.ev, %bb.ac ] ; 2 uses
  %i.es = icmp slt i64 %.0.i.i.i.i.i.i, %i.eq
  br i1 %i.es, label %bb.ac, label %mi_atomic_maxi64_relaxed.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.et = cmpxchg weak ptr %i.ep, i64 %.0.i.i.i.i.i.i, i64 %i.eq release monotonic, align 8 ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 1
  %i.ev = extractvalue { i64, i1 } %i.et, 0
  br i1 %i.eu, label %mi_atomic_maxi64_relaxed.exit.i.i.i.i.i, label %bb.ab, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i.i.i.i:          ; preds = %bb.ac, %bb.ab
  %i.ew = atomicrmw add ptr %i.ej, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i.i.i = load i64, ptr %i.ee, align 64, !tbaa !72
  br label %_mi_stat_increase.exit.i.i.i

bb.ad:                                            ; preds = %bb.z
  %i.ex = load i64, ptr %i.en, align 8, !tbaa !127
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.en, align 8, !tbaa !127
  %i.ez = getelementptr i8, ptr %i.ei, i64 272    ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !128
  %i.fb = icmp sgt i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !128
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fc = load i64, ptr %i.ej, align 8, !tbaa !129
  %i.fd = add i64 %i.fc, 1
  store i64 %i.fd, ptr %i.ej, align 8, !tbaa !129
  br label %_mi_stat_increase.exit.i.i.i

_mi_stat_increase.exit.i.i.i:                     ; preds = %bb.af, %mi_atomic_maxi64_relaxed.exit.i.i.i.i.i
  %i.fe = phi i64 [ %.pre.i.i.i, %mi_atomic_maxi64_relaxed.exit.i.i.i.i.i ], [ %i.eg, %bb.af ]
  %i.ff = getelementptr i8, ptr %i.ed, i64 208
  %i.fg = load i64, ptr %i.ff, align 16, !tbaa !67
  %i.fh = icmp eq i64 %i.fg, %i.fe
  br i1 %i.fh, label %bb.ag, label %mi_heap_page_collect.exit

bb.ag:                                            ; preds = %_mi_stat_increase.exit.i.i.i
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.ed, ptr noundef %i.dz)
  br label %mi_heap_page_collect.exit

mi_heap_page_collect.exit:                        ; preds = %_mi_page_free_collect.exit.thread.i, %bb.v, %bb.w, %bb.x, %bb.y, %_mi_stat_increase.exit.i.i.i, %bb.ag
  %.not.i33 = icmp eq ptr %i.bg, null
  br i1 %.not.i33, label %.critedge.i35, label %.lr.ph50, !llvm.loop !199

.critedge.i35:                                    ; preds = %mi_heap_page_collect.exit, %bb.j
  %i.fi = add nuw nsw i64 %.02229.i31, 1          ; 2 uses
  %exitcond.i36 = icmp eq i64 %i.fi, 75
  br i1 %exitcond.i36, label %mi_heap_visit_pages.exit37, label %bb.j, !llvm.loop !200
end_hunk_1
begin_hunk_2_@_mi_heap_area_visit_blocks:bb.a
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 80
  %i.aj = shl i64 %i.ai, 16
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 %.0.i.i.i ; 4 uses
  %i.am = getelementptr i8, ptr %1, i64 48
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = getelementptr i8, ptr %1, i64 10        ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !74 ; 5 uses
  %i.ar = icmp eq i16 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_mi_page_start.exit
  %i.as = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %i.al, i64 noundef %.0.i.i125, ptr noundef %3) #55
  br label %.critedge

bb.h:                                             ; preds = %_mi_page_start.exit
  %i.at = zext i16 %i.aq to i32
  %i.au = icmp eq i32 %i.e, %i.at
  br i1 %i.au, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h
  %.not111.not150.not = icmp eq i16 %i.aq, 0
  br i1 %.not111.not150.not, label %.critedge, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader, %bb.i
  %.0101152 = phi ptr [ %i.aw, %bb.i ], [ %i.al, %.preheader ] ; 2 uses
  %.0102151 = phi i64 [ %i.ax, %bb.i ], [ 0, %.preheader ]
  %i.av = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %.0101152, i64 noundef %.0.i.i125, ptr noundef %3) #55 ; 3 uses
  br i1 %i.av, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph153
  %i.aw = getelementptr i8, ptr %.0101152, i64 %.0.i.i125
  %i.ax = add nuw nsw i64 %.0102151, 1            ; 2 uses
  %i.ay = load i16, ptr %i.ap, align 2, !tbaa !74
  %i.az = zext i16 %i.ay to i64
  %.not111.not = icmp samesign ult i64 %i.ax, %i.az
  br i1 %.not111.not, label %.lr.ph153, label %.critedge, !llvm.loop !213

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ba = zext i16 %i.aq to i64
  %i.bb = add nuw nsw i64 %i.ba, 63
  %i.bc = lshr i64 %i.bb, 6                       ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bd, i1 false)
  %i.be = and i16 %i.aq, 63                       ; 2 uses
  %.not = icmp eq i16 %i.be, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = shl nsw i64 -1, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.a, i64 %i.bc
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !105
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = add nsw i64 %.0.i.i125, -1
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 false)
  %i.bl = sub nuw nsw i64 64, %i.bk               ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = sub i64 %i.bm, %.0.i.i125
  %i.bo = shl i64 %i.bn, 32
  %i.bp = udiv i64 %i.bo, %.0.i.i125
  %i.bq = add nuw i64 %i.bp, 1
  %i.br = getelementptr i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %.not108141 = icmp eq ptr %i.bs, null
  br i1 %.not108141, label %.preheader135, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bt = ptrtoint ptr %i.al to i64
  br label %bb.m

.preheader135:                                    ; preds = %bb.m, %bb.l
  %.not110145 = icmp eq i64 %i.bc, 0
  br i1 %.not110145, label %.critedge115, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader135
  %i.bu = shl nuw nsw i64 %.0.i.i125, 6
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.0103142 = phi ptr [ %i.bs, %.lr.ph ], [ %i.ci, %bb.m ] ; 2 uses
  %i.bv = ptrtoint ptr %.0103142 to i64
  %i.bw = sub i64 %i.bv, %i.bt                    ; 2 uses
  %i.bx = mul i64 %i.bw, %i.bq
  %i.by = lshr i64 %i.bx, 32
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = lshr i64 %i.bz, %i.bl                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = and i64 %i.ca, 63
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = getelementptr [8 x i8], ptr %i.a, i64 %i.cb ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !105
  %i.cg = or i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !105
  %i.ch = load atomic i64, ptr %.0103142 monotonic, align 8 ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %.not108 = icmp eq i64 %i.ch, 0
  br i1 %.not108, label %.preheader135, label %bb.m, !llvm.loop !214

bb.n:                                             ; preds = %.lr.ph149, %.critedge113
  %.091147 = phi i64 [ 0, %.lr.ph149 ], [ %i.cx, %.critedge113 ] ; 2 uses
  %.092146 = phi ptr [ %i.al, %.lr.ph149 ], [ %.395, %.critedge113 ] ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %i.a, i64 %.091147
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !105 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.preheader133, label %bb.p

.preheader133:                                    ; preds = %bb.n, %bb.o
  %.090144 = phi i64 [ %i.co, %bb.o ], [ 0, %bb.n ]
  %.193143 = phi ptr [ %i.cn, %bb.o ], [ %.092146, %bb.n ] ; 2 uses
  %i.cm = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %.193143, i64 noundef %.0.i.i125, ptr noundef %3) #55
  br i1 %i.cm, label %bb.o, label %.critedge115

bb.o:                                             ; preds = %.preheader133
  %i.cn = getelementptr i8, ptr %.193143, i64 %.0.i.i125 ; 2 uses
  %i.co = add nuw nsw i64 %.090144, 1             ; 2 uses
  %exitcond = icmp eq i64 %i.co, 64
  br i1 %exitcond, label %.critedge113, label %.preheader133, !llvm.loop !215

bb.p:                                             ; preds = %bb.n
  %i.cp = xor i64 %i.ck, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.088 = phi i64 [ %i.cp, %bb.p ], [ %i.cv, %bb.r ] ; 4 uses
  %.not109 = icmp eq i64 %.088, 0
  br i1 %.not109, label %.thread131, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.088, i1 true)
  %i.cr = mul nuw nsw i64 %i.cq, %.0.i.i125
  %i.cs = getelementptr i8, ptr %.092146, i64 %i.cr
  %i.ct = tail call zeroext i1 %2(ptr noundef %i.ao, ptr noundef nonnull %0, ptr noundef %i.cs, i64 noundef %.0.i.i125, ptr noundef %3) #55
  %i.cu = add i64 %.088, -1
  %i.cv = and i64 %i.cu, %.088
  br i1 %i.ct, label %bb.q, label %.critedge115, !llvm.loop !216

.thread131:                                       ; preds = %bb.q
  %i.cw = getelementptr i8, ptr %.092146, i64 %i.bu
  br label %.critedge113

.critedge113:                                     ; preds = %bb.o, %.thread131
  %.395 = phi ptr [ %i.cw, %.thread131 ], [ %i.cn, %bb.o ]
  %i.cx = add nuw nsw i64 %.091147, 1             ; 2 uses
  %exitcond159.not = icmp eq i64 %i.cx, %i.bc
  br i1 %exitcond159.not, label %.critedge115, label %bb.n, !llvm.loop !217

.critedge115:                                     ; preds = %.critedge113, %bb.r, %.preheader133, %.preheader135
  %.not110140 = phi i1 [ false, %bb.r ], [ false, %.preheader133 ], [ true, %.preheader135 ], [ true, %.critedge113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.lr.ph153, %.preheader, %bb.g, %.critedge115, %bb.b, %bb.a
  %.11 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.as, %bb.g ], [ %.not110140, %.critedge115 ], [ true, %.preheader ], [ %i.av, %.lr.ph153 ], [ %i.av, %bb.i ]
  ret i1 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_area_init(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ %i.b, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  %i.c = and i64 %.0.i.i, 3
  %i.d = cmpxchg weak ptr %i.a, i64 %.0.i.i, i64 %i.c acq_rel acquire, align 8 ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b, !llvm.loop !73

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %.0.i.i, -4                      ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_mi_page_thread_free_collect.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 10
  %i.k = load i16, ptr %i.j, align 2, !tbaa !74   ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = load atomic i64, ptr %i.h monotonic, align 8 ; 2 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ne i16 %i.k, 0
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.q = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.m, %bb.d ]
  %.02934.i.i = phi i32 [ %i.s, %.lr.ph.i.i ], [ 1, %bb.d ]
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = add nuw nsw i32 %.02934.i.i, 1           ; 3 uses
  %i.t = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.u = icmp ne i64 %i.t, 0
  %2 = icmp samesign ule i32 %i.s, %i.l
  %i.v = select i1 %i.u, i1 %2, i1 false
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.d
  %.029.lcssa.i.i = phi i32 [ 1, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.028.lcssa.i.i = phi ptr [ %i.h, %bb.d ], [ %i.r, %.lr.ph.i.i ]
  %i.w = icmp samesign ugt i32 %.029.lcssa.i.i, %i.l
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.x = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = ptrtoint ptr %i.y to i64
  store atomic i64 %i.z, ptr %.028.lcssa.i.i monotonic, align 8
  store ptr %i.h, ptr %i.x, align 8, !tbaa !57
  %i.aa = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !18
  %i.ac = sub i32 %i.ab, %.029.lcssa.i.i
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i

_mi_page_thread_free_collect.exit.i:              ; preds = %bb.f, %bb.e, %bb.c
  %i.ad = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57 ; 3 uses
  %.not22.i = icmp eq ptr %i.ae, null
  br i1 %.not22.i, label %_mi_page_free_collect.exit, label %bb.g

bb.g:                                             ; preds = %_mi_page_thread_free_collect.exit.i
  %i.af = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.sink.split.i, label %.preheader.i, !prof !55

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %.0.i = phi ptr [ %i.aj, %.preheader.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ai = load atomic i64, ptr %.0.i monotonic, align 8 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  %.not23.i = icmp eq i64 %i.ai, 0
  br i1 %.not23.i, label %bb.h, label %.preheader.i, !llvm.loop !77

bb.h:                                             ; preds = %.preheader.i
  %i.ak = ptrtoint ptr %i.ag to i64
  store atomic i64 %i.ak, ptr %.0.i monotonic, align 8
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !57
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.al, %bb.h ], [ %i.ae, %bb.g ]
  store ptr %.sink.i, ptr %i.af, align 8, !tbaa !11
  store ptr null, ptr %i.ad, align 8, !tbaa !57
  %i.am = getelementptr i8, ptr %1, i64 15        ; 2 uses
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, -2
  store i8 %i.ao, ptr %i.am, align 1
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %_mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ap = getelementptr i8, ptr %1, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21 ; 6 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.i, label %_mi_segment_page_start.exit.i.i, !prof !55

bb.i:                                             ; preds = %_mi_page_free_collect.exit
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  br label %mi_page_usable_block_size.exit

_mi_segment_page_start.exit.i.i:                  ; preds = %_mi_page_free_collect.exit
  %i.at = load i32, ptr %1, align 8, !tbaa !52
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 16
  %.pre = zext i32 %i.aq to i64
  br label %mi_page_usable_block_size.exit

mi_page_usable_block_size.exit:                   ; preds = %bb.i, %_mi_segment_page_start.exit.i.i
  %.pre-phi = phi i64 [ %i.as, %bb.i ], [ %.pre, %_mi_segment_page_start.exit.i.i ] ; 2 uses
  %.0.i1721 = phi i64 [ %i.as, %bb.i ], [ %i.av, %_mi_segment_page_start.exit.i.i ] ; 4 uses
  %i.aw = getelementptr i8, ptr %1, i64 12
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !218
  %i.ay = zext i16 %i.ax to i64
  %i.az = mul nuw i64 %.0.i1721, %i.ay
  %i.ba = getelementptr i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !219
  %i.bb = getelementptr i8, ptr %1, i64 10
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !74
  %i.bd = zext i16 %i.bc to i64
  %i.be = mul nuw i64 %.0.i1721, %i.bd
  %i.bf = getelementptr i8, ptr %0, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !221
  %i.bg = icmp ugt i32 %i.aq, 7
  br i1 %i.bg, label %bb.j, label %_mi_page_start.exit

bb.j:                                             ; preds = %mi_page_usable_block_size.exit
  %i.bh = icmp ult i32 %i.aq, 65
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = mul nuw nsw i64 %.pre-phi, 3
  br label %_mi_page_start.exit

bb.l:                                             ; preds = %bb.j
  %i.bj = icmp ult i32 %i.aq, 513
  %spec.select.i.i.i = select i1 %i.bj, i64 %.pre-phi, i64 0
  br label %_mi_page_start.exit

_mi_page_start.exit:                              ; preds = %mi_page_usable_block_size.exit, %bb.k, %bb.l
  %.0.i.i.i = phi i64 [ %i.bi, %bb.k ], [ 0, %mi_page_usable_block_size.exit ], [ %spec.select.i.i.i, %bb.l ]
  %i.bk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bl = add i64 %i.bk, -1
  %i.bm = and i64 %i.bl, -33554432
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 264
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bk, %i.bp
  %i.br = sdiv exact i64 %i.bq, 80
  %i.bs = shl i64 %i.br, 16
  %i.bt = getelementptr i8, ptr %i.bn, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 %.0.i.i.i
  store ptr %i.bu, ptr %0, align 8, !tbaa !222
  %i.bv = getelementptr i8, ptr %1, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !18
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr i8, ptr %0, i64 24
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !223
  %i.bz = getelementptr i8, ptr %0, i64 32
  store i64 %.0.i1721, ptr %i.bz, align 8, !tbaa !224
  %i.ca = getelementptr i8, ptr %0, i64 40
  store i64 %.0.i1721, ptr %i.ca, align 8, !tbaa !225
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_heap_visit_blocks(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.mi_heap_area_ex_s, align 8  ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 2840       ; 4 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.b, null
  br i1 %.old1.not.i, label %_mi_heap_delayed_free_partial.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi ptr [ %i.e, %.preheader.i ], [ %i.b, %bb.a ]
  %i.c = cmpxchg weak ptr %i.a, ptr %.0.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  %i.e = extractvalue { ptr, i1 } %i.c, 0         ; 3 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond.not.i = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.not.i, label %.critedge.i, label %.preheader.i, !llvm.loop !45

.critedge.i:                                      ; preds = %.preheader.i
  br i1 %i.f, label %_mi_heap_delayed_free_partial.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.loopexit.i
  %.334.i = phi ptr [ %i.h, %.loopexit.i ], [ %i.e, %.critedge.i ] ; 4 uses
  %i.g = load atomic i64, ptr %.334.i monotonic, align 8 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call zeroext i1 @_mi_free_delayed_block(ptr noundef nonnull %.334.i)
  br i1 %i.i, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = load atomic ptr, ptr %i.a monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.027.i = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.k = ptrtoint ptr %.027.i to i64
  store atomic i64 %i.k, ptr %.334.i monotonic, align 8
  %i.l = cmpxchg weak ptr %i.a, ptr %.027.i, ptr %.334.i release monotonic, align 8 ; 2 uses
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  %i.n = extractvalue { ptr, i1 } %i.l, 0
  br i1 %i.m, label %.loopexit.i, label %bb.c, !llvm.loop !47

.loopexit.i:                                      ; preds = %bb.c, %.lr.ph.i
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_mi_heap_delayed_free_partial.exit, label %.lr.ph.i, !llvm.loop !48

_mi_heap_delayed_free_partial.exit:               ; preds = %.loopexit.i
  %i.o = icmp eq ptr %0, null
  br i1 %i.o, label %mi_heap_visit_areas.exit, label %_mi_heap_delayed_free_partial.exit.thread

_mi_heap_delayed_free_partial.exit.thread:        ; preds = %.critedge.i, %bb.a, %_mi_heap_delayed_free_partial.exit
  %i.p = getelementptr i8, ptr %0, i64 3024
  %i.q = load i64, ptr %i.p, align 8, !tbaa !196
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %mi_heap_visit_areas.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_mi_heap_delayed_free_partial.exit.thread
  %i.s = getelementptr i8, ptr %0, i64 1040       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br i1 %1, label %.preheader.i.i.split.us, label %.preheader.i.i.split

.preheader.i.i.split.us:                          ; preds = %.preheader.i.i, %.critedge.i.i.us
  %.02229.i.i.us = phi i64 [ %i.x, %.critedge.i.i.us ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.v = getelementptr [24 x i8], ptr %i.s, i64 %.02229.i.i.us
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64   ; 2 uses
  %.not.i3.i.us = icmp eq ptr %i.w, null
end_hunk_2
begin_hunk_3_@_mi_bin:bb.a
bb.a:
  %i.a = add i64 %0, 7                            ; 4 uses
  %i.b = lshr i64 %i.a, 3                         ; 2 uses
  %i.c = icmp ult i64 %i.a, 16
  br i1 %i.c, label %mi_bin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 72
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %i.b to i8
  %i.f = add nuw nsw i8 %i.e, 1
  %i.g = and i8 %i.f, 30
  br label %mi_bin.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.a, 131079
  br i1 %i.h, label %mi_bin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i64 %i.b, -1                     ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 false) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = sub nsw i64 61, %i.j
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.i, %i.m
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 3
  %i.q = shl i8 %i.k, 2
  %reass.sub = sub i8 %i.p, %i.q
  %i.r = add i8 %reass.sub, -7
  br label %mi_bin.exit

mi_bin.exit:                                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i8 [ %i.r, %bb.e ], [ %i.g, %bb.c ], [ 1, %bb.a ], [ 73, %bb.d ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @_mi_bin_size(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_page_queue_append(ptr noundef %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %mi_heap_queue_first_update.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.c

bb.b:                                             ; preds = %_mi_page_use_delayed_free.exit
  %i.d = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = load ptr, ptr %2, align 8, !tbaa !64     ; 5 uses
  br i1 %i.f, label %bb.i, label %bb.u

bb.c:                                             ; preds = %.preheader, %_mi_page_use_delayed_free.exit
  %.02340 = phi ptr [ %i.a, %.preheader ], [ %i.aq, %_mi_page_use_delayed_free.exit ] ; 4 uses
  %.02439 = phi i64 [ 0, %.preheader ], [ %i.ao, %_mi_page_use_delayed_free.exit ]
  %i.h = getelementptr i8, ptr %.02340, i64 48
  store atomic i64 %i.c, ptr %i.h release, align 8
  %i.i = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef nonnull %.02340, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.i, label %_mi_page_use_delayed_free.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.02340, i64 40    ; 10 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.4.i, %.lr.ph.i.preheader
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %.lr.ph.i
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 3
  switch i32 %i.m, label %.critedge.i.unreachabledefault [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.h
  ], !prof !259

.critedge.outer.1.i:                              ; preds = %.critedge.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.d, %.critedge.outer.1.i
  %i.n = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  switch i32 %i.p, label %.critedge.1.i.unreachabledefault [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.d
  ], !prof !259

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i

bb.d:                                             ; preds = %.critedge.1.i
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
  %i.ao = add i64 %.02439, 1                      ; 6 uses
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
  %i.ay = lshr i64 %i.ax, 3                       ; 6 uses
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
  %i.bw = lshr i64 %i.bv, 3                       ; 3 uses
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
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.ay)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t, %bb.k
  %.145.i = phi i64 [ %spec.select.i, %bb.t ], [ 0, %bb.k ] ; 4 uses
  %3 = add nuw nsw i64 %i.ay, 1
  %4 = sub nsw i64 %3, %.145.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i27.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.cr = add nsw i64 %.145.i, %n.vec
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
  %.038.i = phi i64 [ %i.cx, %.lr.ph.i27 ], [ %.038.i.ph, %.lr.ph.i27.preheader ] ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %i.az, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.cw, align 8, !tbaa !53
  %i.cx = add nuw nsw i64 %.038.i, 1              ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.cx, %i.ay
  br i1 %.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i27, !llvm.loop !263

bb.u:                                             ; preds = %bb.b
  %i.cy = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.g, ptr %i.cy, align 8, !tbaa !197
  %i.cz = getelementptr i8, ptr %i.g, i64 64
  store ptr %i.e, ptr %i.cz, align 8, !tbaa !264
  %i.da = getelementptr i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  store ptr %i.db, ptr %i.d, align 8, !tbaa !63
  br label %mi_heap_queue_first_update.exit

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i27, %middle.block, %bb.j, %bb.i, %bb.u, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.u ], [ %i.ao, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph.i27 ]
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
  %i.p = lshr i64 %i.o, 3                         ; 6 uses
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
  %i.an = lshr i64 %i.am, 3                       ; 3 uses
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
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.p)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o, %bb.f
  %.145.i = phi i64 [ %spec.select.i, %bb.o ], [ 0, %bb.f ] ; 4 uses
  %3 = add nuw nsw i64 %i.p, 1
  %4 = sub nsw i64 %3, %.145.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.bi = add nsw i64 %.145.i, %n.vec
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
  %.038.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.q, i64 %.038.i
  store ptr %2, ptr %i.bn, align 8, !tbaa !53
  %i.bo = add nuw nsw i64 %.038.i, 1              ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.bo, %i.p
  br i1 %.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !266

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.d, %bb.e
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
  %.0.i.be = phi ptr [ %i.e, %.preheader.i ], [ %i.dy, %_mi_heap_delayed_free_partial.exit.thread33 ]
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
  %.02934.i.i.i = phi i32 [ %i.bs, %.lr.ph.i.i.i ], [ 1, %bb.j ]
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %i.bs = add nuw nsw i32 %.02934.i.i.i, 1        ; 3 uses
  %i.bt = load atomic i64, ptr %i.br monotonic, align 8 ; 2 uses
  %i.bu = icmp ne i64 %i.bt, 0
  %1 = icmp samesign ule i32 %i.bs, %i.bl
  %i.bv = select i1 %i.bu, i1 %1, i1 false
  br i1 %i.bv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.j
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.j ], [ %i.bs, %.lr.ph.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.bh, %bb.j ], [ %i.br, %.lr.ph.i.i.i ]
  %i.bw = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.bl
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = getelementptr i8, ptr %i.u, i64 32      ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !57
  %i.bz = ptrtoint ptr %i.by to i64
  store atomic i64 %i.bz, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.bh, ptr %i.bx, align 8, !tbaa !57
  %i.ca = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !18
  %i.cc = sub i32 %i.cb, %.029.lcssa.i.i.i
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.l, %bb.k, %bb.i, %.loopexit
  %i.cd = getelementptr i8, ptr %i.u, i64 32      ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !57 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.ce, null
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.m

bb.m:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  %i.cf = getelementptr i8, ptr %i.u, i64 16      ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !11
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.sink.split.i.i, label %_mi_page_free_collect.exit.i, !prof !55

.sink.split.i.i:                                  ; preds = %bb.m
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %i.u, i64 15      ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = and i8 %i.cj, -2
  store i8 %i.ck, ptr %i.ci, align 1
  br label %_mi_page_free_collect.exit.i

_mi_page_free_collect.exit.i:                     ; preds = %.sink.split.i.i, %bb.m, %_mi_page_thread_free_collect.exit.i.i
  %i.cl = phi ptr [ %i.ce, %bb.m ], [ null, %_mi_page_thread_free_collect.exit.i.i ], [ null, %.sink.split.i.i ]
  %i.cm = ptrtoint ptr %i.cl to i64
  store atomic i64 %i.cm, ptr %.334.i monotonic, align 8
  store ptr %.334.i, ptr %i.cd, align 8, !tbaa !57
  %i.cn = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !18
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !18
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.n, label %bb.o, !prof !17

bb.n:                                             ; preds = %_mi_page_free_collect.exit.i
  tail call void @_mi_page_retire(ptr noundef nonnull %i.u)
  br label %.loopexit.i

bb.o:                                             ; preds = %_mi_page_free_collect.exit.i
  %i.cr = getelementptr i8, ptr %i.u, i64 14      ; 2 uses
  %.val16.i.i = load i8, ptr %i.cr, align 2       ; 2 uses
  %i.cs = trunc i8 %.val16.i.i to i1
  br i1 %i.cs, label %bb.p, label %.loopexit.i, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr i8, ptr %i.u, i64 48
  %i.cu = load atomic i64, ptr %i.ct monotonic, align 8
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 2816
  %i.cx = getelementptr i8, ptr %i.u, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !21 ; 4 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cz, 7
  %i.db = lshr i64 %i.da, 3                       ; 2 uses
  %i.dc = icmp ult i32 %i.cy, 9
  br i1 %i.dc, label %_mi_page_unfull.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = icmp ult i32 %i.cy, 65
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.de = add nuw nsw i64 %i.db, 1
  %i.df = and i64 %i.de, 30
  br label %_mi_page_unfull.exit

bb.s:                                             ; preds = %bb.q
  %i.dg = icmp ugt i32 %i.cy, 131072
  br i1 %i.dg, label %_mi_page_unfull.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = add nsw i64 %i.db, -1                   ; 2 uses
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dh, i1 false) ; 2 uses
  %i.dj = sub nsw i64 61, %i.di
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = lshr i64 %i.dh, %i.dk
  %i.dm = and i64 %i.dl, 3
  %i.dn = shl nuw nsw i64 %i.di, 2
  %reass.sub = sub nsw i64 %i.dm, %i.dn
  %i.do = add nsw i64 %reass.sub, 249
  %i.dp = and i64 %i.do, 255
  br label %_mi_page_unfull.exit

_mi_page_unfull.exit:                             ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %i.dq = phi i64 [ 73, %bb.s ], [ %i.dp, %bb.t ], [ %i.df, %bb.r ], [ 1, %bb.p ]
  %i.dr = getelementptr i8, ptr %i.cv, i64 1040
  %i.ds = getelementptr [24 x i8], ptr %i.dr, i64 %i.dq
  store i8 %.val16.i.i, ptr %i.cr, align 2
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.ds, ptr noundef %i.cw, ptr noundef nonnull %i.u)
  br label %.loopexit.i

_mi_free_delayed_block.exit:                      ; preds = %.critedge.4.i
  %i.dt = load atomic ptr, ptr %i.a monotonic, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_mi_free_delayed_block.exit
  %.027.i = phi ptr [ %i.dt, %_mi_free_delayed_block.exit ], [ %i.dx, %bb.u ] ; 2 uses
  %i.du = ptrtoint ptr %.027.i to i64
  store atomic i64 %i.du, ptr %.334.i monotonic, align 8
  %i.dv = cmpxchg weak ptr %i.a, ptr %.027.i, ptr %.334.i release monotonic, align 8 ; 2 uses
  %i.dw = extractvalue { ptr, i1 } %i.dv, 1
  %i.dx = extractvalue { ptr, i1 } %i.dv, 0
  br i1 %i.dw, label %.loopexit.i.thread, label %bb.u, !llvm.loop !47

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
  %i.dy = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.dy, null
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
  %i.s = lshr i64 %i.r, 3                         ; 6 uses
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
  %i.aq = lshr i64 %i.ap, 3                       ; 3 uses
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
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.s)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %3 = add nuw nsw i64 %i.s, 1
  %4 = sub nsw i64 %3, %.145.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.bl = add nsw i64 %.145.i, %n.vec
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
  %.038.i = phi i64 [ %i.br, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.t, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bq, align 8, !tbaa !53
  %i.br = add nuw nsw i64 %.038.i, 1              ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.br, %i.s
  br i1 %.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !269

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.h, %bb.g, %bb.f
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
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !61 ; 8 uses
  %i.bx = icmp ugt i64 %i.bw, 1024
  br i1 %i.bx, label %mi_heap_queue_first_update.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = add nuw nsw i64 %i.bw, 7
  %i.bz = lshr i64 %i.by, 3                       ; 6 uses
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
  %i.cx = lshr i64 %i.cw, 3                       ; 3 uses
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
  %spec.select.i46 = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.bz)
  br label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %bb.ae, %bb.v
  %.145.i50 = phi i64 [ %spec.select.i46, %bb.ae ], [ 0, %bb.v ] ; 4 uses
  %5 = add nuw nsw i64 %i.bz, 1
  %6 = sub nsw i64 %5, %.145.i50                  ; 3 uses
  %min.iters.check76 = icmp ult i64 %6, 4
  br i1 %min.iters.check76, label %.lr.ph.i51.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i49
  %n.vec79 = and i64 %6, -4                       ; 3 uses
  %i.ds = add nsw i64 %.145.i50, %n.vec79
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
  %.038.i52 = phi i64 [ %i.dy, %.lr.ph.i51 ], [ %.038.i52.ph, %.lr.ph.i51.preheader ] ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.ca, i64 %.038.i52
  store ptr %2, ptr %i.dx, align 8, !tbaa !53
  %i.dy = add nuw nsw i64 %.038.i52, 1            ; 2 uses
  %.not.i49 = icmp samesign ugt i64 %i.dy, %i.bz
  br i1 %.not.i49, label %mi_heap_queue_first_update.exit54, label %.lr.ph.i51, !llvm.loop !271

mi_heap_queue_first_update.exit54:                ; preds = %.lr.ph.i51, %middle.block85, %bb.u, %bb.t, %bb.s
  %.val = phi i64 [ %.val.pre, %bb.s ], [ %i.bw, %bb.u ], [ %i.bw, %bb.t ], [ %i.bw, %middle.block85 ], [ %i.bw, %.lr.ph.i51 ]
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
  %i.r = lshr i64 %i.q, 3                         ; 6 uses
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
  %i.ap = lshr i64 %i.ao, 3                       ; 3 uses
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
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.r)
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %2 = add nuw nsw i64 %i.r, 1
  %3 = sub nsw i64 %2, %.145.i                    ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.bk = add nsw i64 %.145.i, %n.vec
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
  %.038.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.s, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bp, align 8, !tbaa !53
  %i.bq = add nuw nsw i64 %.038.i, 1              ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.bq, %i.r
  br i1 %.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !273

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.h, %bb.g, %bb.f
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

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_collect_retired(ptr nofree noundef captures(address) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3032       ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 3040       ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %.not33 = icmp ugt i64 %i.b, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1040
  br label %bb.b

._crit_edge:                                      ; preds = %_PyMem_mi_page_maybe_free.exit, %bb.a
  %.026.lcssa = phi i64 [ 0, %bb.a ], [ %.127, %_PyMem_mi_page_maybe_free.exit ]
  %.0.lcssa = phi i64 [ 74, %bb.a ], [ %.2, %_PyMem_mi_page_maybe_free.exit ]
  store i64 %.0.lcssa, ptr %i.a, align 8, !tbaa !65
  store i64 %.026.lcssa, ptr %i.c, align 8, !tbaa !66
  ret void

bb.b:                                             ; preds = %.lr.ph, %_PyMem_mi_page_maybe_free.exit
  %.036 = phi i64 [ 74, %.lr.ph ], [ %.2, %_PyMem_mi_page_maybe_free.exit ] ; 7 uses
  %.02635 = phi i64 [ 0, %.lr.ph ], [ %.127, %_PyMem_mi_page_maybe_free.exit ] ; 7 uses
  %.02834 = phi i64 [ %i.b, %.lr.ph ], [ %i.ah, %_PyMem_mi_page_maybe_free.exit ] ; 4 uses
  %i.f = getelementptr [24 x i8], ptr %i.e, i64 %.02834 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 8 uses
  %.not30 = icmp eq ptr %i.g, null
  br i1 %.not30, label %_PyMem_mi_page_maybe_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 15       ; 3 uses
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %.not31 = icmp ult i8 %i.i, 2
  br i1 %.not31, label %_PyMem_mi_page_maybe_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %.val = load i32, ptr %i.j, align 8, !tbaa !18
  %i.k = icmp eq i32 %.val, 0
  br i1 %i.k, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.i, -2                          ; 2 uses
  store i8 %i.l, ptr %i.h, align 1
  %i.m = icmp ult i8 %i.l, 2
  %or.cond = or i1 %1, %i.m
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.g, i64 14       ; 2 uses
  %i.o = load i8, ptr %i.n, align 2
  %i.p = and i8 %i.o, -3
  store i8 %i.p, ptr %i.n, align 2
  %i.q = getelementptr i8, ptr %i.g, i64 48       ; 2 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr i8, ptr %i.t, i64 32       ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  store atomic i64 0, ptr %i.q release, align 8
  %i.v = ptrtoint ptr %i.g to i64
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, -33554432
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %i.g, ptr noundef %i.u) ; 0 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 208
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !67 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.y, ptr noundef %i.u)
  br label %_PyMem_mi_page_maybe_free.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.y, i64 192
  %i.ae = load i64, ptr %i.ad, align 64, !tbaa !72
  %i.af = icmp eq i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.i, label %_PyMem_mi_page_maybe_free.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.y, ptr noundef %i.u)
  br label %_PyMem_mi_page_maybe_free.exit

bb.j:                                             ; preds = %bb.e
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.02834, i64 %.036)
  %spec.select32 = tail call i64 @llvm.umax.i64(i64 %.02834, i64 %.02635)
  br label %_PyMem_mi_page_maybe_free.exit

bb.k:                                             ; preds = %bb.d
  %i.ag = and i8 %i.i, 1
  store i8 %i.ag, ptr %i.h, align 1
  br label %_PyMem_mi_page_maybe_free.exit

_PyMem_mi_page_maybe_free.exit:                   ; preds = %bb.i, %bb.h, %bb.g, %bb.j, %bb.k, %bb.c, %bb.b
  %.127 = phi i64 [ %.02635, %bb.c ], [ %.02635, %bb.b ], [ %spec.select32, %bb.j ], [ %.02635, %bb.k ], [ %.02635, %bb.g ], [ %.02635, %bb.h ], [ %.02635, %bb.i ] ; 2 uses
  %.2 = phi i64 [ %.036, %bb.c ], [ %.036, %bb.b ], [ %spec.select, %bb.j ], [ %.036, %bb.k ], [ %.036, %bb.g ], [ %.036, %bb.h ], [ %.036, %bb.i ] ; 2 uses
  %i.ah = add i64 %.02834, 1                      ; 2 uses
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !66
  %.not = icmp ugt i64 %i.ah, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !274
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_deferred_free(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !29
  %i.d = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !41, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8, !tbaa !41
  %i.h = load volatile ptr, ptr @deferred_free, align 8, !tbaa !40
  %i.i = load atomic ptr, ptr @deferred_arg monotonic, align 8
  tail call void %i.h(i1 noundef zeroext %1, i64 noundef %i.c, ptr noundef %i.i) #55
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden void @mi_register_deferred_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  store volatile ptr %0, ptr @deferred_free, align 8, !tbaa !40
  store atomic ptr %1, ptr @deferred_arg release, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_find_page(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i64 %1, 131072
  %i.b = icmp ne i64 %2, 0
  %i.c = or i1 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 75, ptr noundef nonnull @.str.101, i64 noundef %1)
  br label %mi_find_free_page.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @mi_large_huge_page_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %mi_find_free_page.exit

bb.e:                                             ; preds = %bb.a
  %i.f = add nuw nsw i64 %1, 7
  %i.g = lshr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp samesign ult i64 %1, 9
  br i1 %i.h, label %mi_page_queue.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ult i64 %1, 65
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = add nuw nsw i64 %i.g, 1
  %i.k = and i64 %i.j, 30
  br label %mi_page_queue.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = add nsw i64 %i.g, -1                     ; 2 uses
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 false) ; 2 uses
  %i.n = sub nsw i64 61, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = lshr i64 %i.l, %i.o
  %i.q = and i64 %i.p, 3
  %i.r = shl nuw nsw i64 %i.m, 2
  %reass.sub = sub nsw i64 %i.q, %i.r
  %i.s = add nsw i64 %reass.sub, 249
  %i.t = and i64 %i.s, 255
  br label %mi_page_queue.exit.i

mi_page_queue.exit.i:                             ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i.i.i = phi i64 [ %i.t, %bb.h ], [ %i.k, %bb.g ], [ 1, %bb.e ]
  %i.u = getelementptr i8, ptr %0, i64 1040
  %i.v = getelementptr [24 x i8], ptr %i.u, i64 %.0.i.i.i.i ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64   ; 11 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %mi_page_queue.exit.i
  %i.x = getelementptr i8, ptr %i.w, i64 40       ; 3 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %.not.i.i = icmp ult i64 %i.y, 4
  br i1 %.not.i.i, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load atomic i64, ptr %i.x monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.z, %bb.j ], [ %i.ad, %bb.k ] ; 3 uses
  %i.aa = and i64 %.0.i.i.i, 3
  %i.ab = cmpxchg weak ptr %i.x, i64 %.0.i.i.i, i64 %i.aa acq_rel acquire, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1
  %i.ad = extractvalue { i64, i1 } %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.k, !llvm.loop !73

bb.l:                                             ; preds = %bb.k
  %i.ae = and i64 %.0.i.i.i, -4                   ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %_mi_page_thread_free_collect.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr i8, ptr %i.w, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !74 ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load atomic i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = icmp ne i16 %i.ai, 0
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %i.ao = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %i.ak, %bb.m ]
  %.02934.i.i.i = phi i32 [ %i.aq, %.lr.ph.i.i.i ], [ 1, %bb.m ]
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = add nuw nsw i32 %.02934.i.i.i, 1        ; 3 uses
  %i.ar = load atomic i64, ptr %i.ap monotonic, align 8 ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  %3 = icmp samesign ule i32 %i.aq, %i.aj
  %i.at = select i1 %i.as, i1 %3, i1 false
  br i1 %i.at, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.m
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.m ], [ %i.aq, %.lr.ph.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.af, %bb.m ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.au = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.aj
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.av = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = ptrtoint ptr %i.aw to i64
  store atomic i64 %i.ax, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.af, ptr %i.av, align 8, !tbaa !57
  %i.ay = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !18
  %i.ba = sub i32 %i.az, %.029.lcssa.i.i.i
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.o, %bb.n, %bb.l, %bb.i
  %i.bb = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bc, null
  %.phi.trans.insert.i = getelementptr i8, ptr %i.w, i64 16 ; 2 uses
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  %i.bd = icmp eq ptr %.val.pre.i, null           ; 2 uses
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.p

bb.p:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  br i1 %i.bd, label %.sink.split.i.i, label %mi_page_queue_find_free_ex.exit.sink.split.i, !prof !55

.sink.split.i.i:                                  ; preds = %bb.p
  store ptr %i.bc, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  store ptr null, ptr %i.bb, align 8, !tbaa !57
  %i.be = getelementptr i8, ptr %i.w, i64 15      ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 1
  br label %mi_page_queue_find_free_ex.exit.sink.split.i

_mi_page_free_collect.exit.i:                     ; preds = %_mi_page_thread_free_collect.exit.i.i
  br i1 %i.bd, label %bb.q, label %mi_page_queue_find_free_ex.exit.sink.split.i

bb.q:                                             ; preds = %_mi_page_free_collect.exit.i, %mi_page_queue.exit.i
  %i.bh = getelementptr i8, ptr %i.v, i64 16
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %._crit_edge.i.i, %bb.q
  %.tr34.i.i = phi i1 [ true, %bb.q ], [ false, %._crit_edge.i.i ]
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !64  ; 2 uses
  %.not46.i.i = icmp eq ptr %i.bi, null
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %tailrecurse.i.i, %mi_page_to_full.exit.i.i
  %.02647.i.i = phi ptr [ %i.bk, %mi_page_to_full.exit.i.i ], [ %i.bi, %tailrecurse.i.i ] ; 22 uses
  %i.bj = getelementptr i8, ptr %.02647.i.i, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !197 ; 2 uses
  %i.bl = getelementptr i8, ptr %.02647.i.i, i64 40 ; 6 uses
  %i.bm = load atomic i64, ptr %i.bl monotonic, align 8
  %.not.i.i.i = icmp ult i64 %i.bm, 4
  br i1 %.not.i.i.i, label %_mi_page_thread_free_collect.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bn = load atomic i64, ptr %i.bl monotonic, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i.i.i12.i = phi i64 [ %i.bn, %bb.r ], [ %i.br, %bb.s ] ; 3 uses
  %i.bo = and i64 %.0.i.i.i12.i, 3
  %i.bp = cmpxchg weak ptr %i.bl, i64 %.0.i.i.i12.i, i64 %i.bo acq_rel acquire, align 8 ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  %i.br = extractvalue { i64, i1 } %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.s, !llvm.loop !73

bb.t:                                             ; preds = %bb.s
  %i.bs = and i64 %.0.i.i.i12.i, -4               ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 3 uses
  %i.bu = icmp eq i64 %i.bs, 0
  br i1 %i.bu, label %_mi_page_thread_free_collect.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %.02647.i.i, i64 10
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !74 ; 2 uses
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = load atomic i64, ptr %i.bt monotonic, align 8 ; 2 uses
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = icmp ne i16 %i.bw, 0
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %.lr.ph.i.i.i.i
  %i.cc = phi i64 [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.by, %bb.u ]
  %.02934.i.i.i.i = phi i32 [ %i.ce, %.lr.ph.i.i.i.i ], [ 1, %bb.u ]
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = add nuw nsw i32 %.02934.i.i.i.i, 1      ; 3 uses
  %i.cf = load atomic i64, ptr %i.cd monotonic, align 8 ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0
  %4 = icmp samesign ule i32 %i.ce, %i.bx
  %i.ch = select i1 %i.cg, i1 %4, i1 false
  br i1 %i.ch, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !75

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.u
  %.029.lcssa.i.i.i.i = phi i32 [ 1, %bb.u ], [ %i.ce, %.lr.ph.i.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i.i = phi ptr [ %i.bt, %bb.u ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %i.ci = icmp samesign ugt i32 %.029.lcssa.i.i.i.i, %i.bx
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100), !inline_history !275
  br label %_mi_page_thread_free_collect.exit.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cj = getelementptr i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !57
  %i.cl = ptrtoint ptr %i.ck to i64
  store atomic i64 %i.cl, ptr %.028.lcssa.i.i.i.i monotonic, align 8
  store ptr %i.bt, ptr %i.cj, align 8, !tbaa !57
  %i.cm = getelementptr i8, ptr %.02647.i.i, i64 24 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !18
  %i.co = sub i32 %i.cn, %.029.lcssa.i.i.i.i
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i.i

_mi_page_thread_free_collect.exit.i.i.i:          ; preds = %bb.w, %bb.v, %bb.t, %.lr.ph.i.i
  %i.cp = getelementptr i8, ptr %.02647.i.i, i64 32 ; 6 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !57 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.cq, null
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.02647.i.i, i64 16 ; 4 uses
  %.026.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  %i.cr = icmp eq ptr %.026.val.pre.i.i, null     ; 2 uses
  br i1 %.not22.i.i.i, label %_mi_page_free_collect.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i.i
  br i1 %i.cr, label %.sink.split.i.i.i, label %mi_page_queue_find_free_ex.exit.sink.split.i, !prof !55

.sink.split.i.i.i:                                ; preds = %bb.x
  store ptr %i.cq, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  store ptr null, ptr %i.cp, align 8, !tbaa !57
  %i.cs = getelementptr i8, ptr %.02647.i.i, i64 15 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = and i8 %i.ct, -2
  store i8 %i.cu, ptr %i.cs, align 1
  br label %mi_page_queue_find_free_ex.exit.sink.split.i

_mi_page_free_collect.exit.i.i:                   ; preds = %_mi_page_thread_free_collect.exit.i.i.i
  br i1 %i.cr, label %bb.y, label %mi_page_queue_find_free_ex.exit.sink.split.i

bb.y:                                             ; preds = %_mi_page_free_collect.exit.i.i
  %i.cv = getelementptr i8, ptr %.02647.i.i, i64 10 ; 4 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !74 ; 2 uses
  %i.cx = getelementptr i8, ptr %.02647.i.i, i64 12
  %i.cy = load i16, ptr %i.cx, align 4, !tbaa !218 ; 2 uses
  %i.cz = icmp ult i16 %i.cw, %i.cy
  br i1 %i.cz, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr i8, ptr %.02647.i.i, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !21 ; 5 uses
  %i.dc = zext i32 %i.db to i64                   ; 3 uses
  %i.dd = load i32, ptr %.02647.i.i, align 8, !tbaa !52
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 16
  %i.dg = icmp ugt i32 %i.db, 7
  br i1 %i.dg, label %bb.aa, label %_mi_page_start.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dh = icmp ult i32 %i.db, 65
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = mul nuw nsw i64 %i.dc, 3
  br label %_mi_page_start.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dj = icmp ult i32 %i.db, 513
  %spec.select.i.i.i.i.i.i = select i1 %i.dj, i64 %i.dc, i64 0
  br label %_mi_page_start.exit.i.i.i

_mi_page_start.exit.i.i.i:                        ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i.i.i.i = phi i64 [ %i.di, %bb.ab ], [ 0, %bb.z ], [ %spec.select.i.i.i.i.i.i, %bb.ac ]
  %i.dk = sub nsw i64 %i.df, %.0.i.i.i.i.i.i
  %i.dl = icmp slt i32 %i.db, 0
  %i.dm = select i1 %i.dl, i64 %i.dk, i64 %i.dc   ; 3 uses
  %i.dn = zext i16 %i.cy to i64
  %i.do = zext i16 %i.cw to i64
  %i.dp = sub nsw i64 %i.dn, %i.do
  %i.dq = icmp ugt i64 %i.dm, 4095
  br i1 %i.dq, label %mi_page_extend_free.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_mi_page_start.exit.i.i.i
  %.rhs.trunc.i.i.i = trunc nuw nsw i64 %i.dm to i16
  %i.dr = udiv i16 4096, %.rhs.trunc.i.i.i
  %i.ds = tail call i16 @llvm.umax.i16(i16 %i.dr, i16 4)
  %i.dt = zext nneg i16 %i.ds to i64
  br label %mi_page_extend_free.exit.i.i

mi_page_extend_free.exit.i.i:                     ; preds = %bb.ad, %_mi_page_start.exit.i.i.i
  %spec.store.select.i.i.i = phi i64 [ %i.dt, %bb.ad ], [ 4, %_mi_page_start.exit.i.i.i ]
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %spec.store.select.i.i.i) ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %.02647.i.i, i64 noundef %i.dm, i64 noundef %spec.select.i.i.i), !inline_history !275
  %i.du = trunc nuw nsw i64 %spec.select.i.i.i to i16
  %i.dv = load i16, ptr %i.cv, align 2, !tbaa !74
  %i.dw = add i16 %i.dv, %i.du
  store i16 %i.dw, ptr %i.cv, align 2, !tbaa !74
  br label %mi_page_queue_find_free_ex.exit.sink.split.i

bb.ae:                                            ; preds = %bb.y
  %i.dx = getelementptr i8, ptr %.02647.i.i, i64 14
  %.val.i.i.i = load i8, ptr %i.dx, align 2
  %i.dy = trunc i8 %.val.i.i.i to i1
  br i1 %i.dy, label %mi_page_to_full.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = getelementptr i8, ptr %.02647.i.i, i64 48
  %i.ea = load atomic i64, ptr %i.dz monotonic, align 8
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = getelementptr i8, ptr %i.eb, i64 2816
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.ec, ptr noundef nonnull %i.v, ptr noundef nonnull %.02647.i.i), !inline_history !275
  %i.ed = load atomic i64, ptr %i.bl monotonic, align 8
  %.not.i.i.i.i = icmp ult i64 %i.ed, 4
  br i1 %.not.i.i.i.i, label %_mi_page_thread_free_collect.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = load atomic i64, ptr %i.bl monotonic, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i = phi i64 [ %i.ee, %bb.ag ], [ %i.ei, %bb.ah ] ; 3 uses
  %i.ef = and i64 %.0.i.i.i.i.i, 3
  %i.eg = cmpxchg weak ptr %i.bl, i64 %.0.i.i.i.i.i, i64 %i.ef acq_rel acquire, align 8 ; 2 uses
  %i.eh = extractvalue { i64, i1 } %i.eg, 1
  %i.ei = extractvalue { i64, i1 } %i.eg, 0
  br i1 %i.eh, label %bb.ai, label %bb.ah, !llvm.loop !73

bb.ai:                                            ; preds = %bb.ah
  %i.ej = and i64 %.0.i.i.i.i.i, -4               ; 2 uses
  %i.ek = inttoptr i64 %i.ej to ptr               ; 4 uses
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %_mi_page_thread_free_collect.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = load i16, ptr %i.cv, align 2, !tbaa !74 ; 2 uses
  %i.en = zext i16 %i.em to i32                   ; 2 uses
  %i.eo = load atomic i64, ptr %i.ek monotonic, align 8 ; 2 uses
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = icmp ne i16 %i.em, 0
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %i.er, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aj, %.lr.ph.i.i.i.i.i
  %i.es = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %i.eo, %bb.aj ]
  %.02934.i.i.i.i.i = phi i32 [ %i.eu, %.lr.ph.i.i.i.i.i ], [ 1, %bb.aj ]
  %i.et = inttoptr i64 %i.es to ptr               ; 2 uses
  %i.eu = add nuw nsw i32 %.02934.i.i.i.i.i, 1    ; 3 uses
  %i.ev = load atomic i64, ptr %i.et monotonic, align 8 ; 2 uses
  %i.ew = icmp ne i64 %i.ev, 0
  %5 = icmp samesign ule i32 %i.eu, %i.en
  %i.ex = select i1 %i.ew, i1 %5, i1 false
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !75

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.aj
  %.029.lcssa.i.i.i.i.i = phi i32 [ 1, %bb.aj ], [ %i.eu, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i.i.i = phi ptr [ %i.ek, %bb.aj ], [ %i.et, %.lr.ph.i.i.i.i.i ]
  %i.ey = icmp samesign ugt i32 %.029.lcssa.i.i.i.i.i, %i.en
  br i1 %i.ey, label %bb.ak, label %_mi_page_thread_free_collect.exit.i.i.thread.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100), !inline_history !275
  br label %_mi_page_thread_free_collect.exit.i.i.i.i

_mi_page_thread_free_collect.exit.i.i.thread.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.ez = load ptr, ptr %i.cp, align 8, !tbaa !57
  %i.fa = ptrtoint ptr %i.ez to i64
  store atomic i64 %i.fa, ptr %.028.lcssa.i.i.i.i.i monotonic, align 8
  store ptr %i.ek, ptr %i.cp, align 8, !tbaa !57
  %i.fb = getelementptr i8, ptr %.02647.i.i, i64 24 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !18
  %i.fd = sub i32 %i.fc, %.029.lcssa.i.i.i.i.i
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !18
  br label %bb.al

_mi_page_thread_free_collect.exit.i.i.i.i:        ; preds = %bb.ak, %bb.ai, %bb.af
  %.pr.i.i = load ptr, ptr %i.cp, align 8, !tbaa !57 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not22.i.i.i.i, label %mi_page_to_full.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_mi_page_thread_free_collect.exit.i.i.i.i, %_mi_page_thread_free_collect.exit.i.i.thread.i.i
  %i.fe = phi ptr [ %i.ek, %_mi_page_thread_free_collect.exit.i.i.thread.i.i ], [ %.pr.i.i, %_mi_page_thread_free_collect.exit.i.i.i.i ]
  %i.ff = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %.sink.split.i.i.i.i, label %mi_page_to_full.exit.i.i, !prof !55

.sink.split.i.i.i.i:                              ; preds = %bb.al
  store ptr %i.fe, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  store ptr null, ptr %i.cp, align 8, !tbaa !57
  %i.fh = getelementptr i8, ptr %.02647.i.i, i64 15 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = and i8 %i.fi, -2
  store i8 %i.fj, ptr %i.fh, align 1
  br label %mi_page_to_full.exit.i.i

mi_page_to_full.exit.i.i:                         ; preds = %.sink.split.i.i.i.i, %bb.al, %_mi_page_thread_free_collect.exit.i.i.i.i, %bb.ae
  %.not.i13.i = icmp eq ptr %i.bk, null
  br i1 %.not.i13.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %mi_page_to_full.exit.i.i, %tailrecurse.i.i
  tail call void @_mi_heap_collect_retired(ptr noundef %0, i1 noundef zeroext false), !inline_history !275
  %i.fk = load i64, ptr %i.bh, align 8, !tbaa !61
  %i.fl = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef nonnull %i.v, i64 noundef %i.fk, i64 noundef 0), !inline_history !275 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  %or.cond.i.i = and i1 %.tr34.i.i, %i.fm
  br i1 %or.cond.i.i, label %tailrecurse.i.i, label %mi_find_free_page.exit

mi_page_queue_find_free_ex.exit.sink.split.i:     ; preds = %_mi_page_free_collect.exit.i.i, %mi_page_extend_free.exit.i.i, %.sink.split.i.i.i, %bb.x, %_mi_page_free_collect.exit.i, %.sink.split.i.i, %bb.p
  %.02647.i86.sink.i = phi ptr [ %i.w, %_mi_page_free_collect.exit.i ], [ %i.w, %.sink.split.i.i ], [ %i.w, %bb.p ], [ %.02647.i.i, %bb.x ], [ %.02647.i.i, %mi_page_extend_free.exit.i.i ], [ %.02647.i.i, %.sink.split.i.i.i ], [ %.02647.i.i, %_mi_page_free_collect.exit.i.i ] ; 2 uses
  %i.fn = getelementptr i8, ptr %.02647.i86.sink.i, i64 15 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = and i8 %i.fo, 1
  store i8 %i.fp, ptr %i.fn, align 1
  br label %mi_find_free_page.exit

mi_find_free_page.exit:                           ; preds = %._crit_edge.i.i, %mi_page_queue_find_free_ex.exit.sink.split.i, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.d ], [ %.02647.i86.sink.i, %mi_page_queue_find_free_ex.exit.sink.split.i ], [ %i.fl, %._crit_edge.i.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_os_random_weak(i64 noundef %0) #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = xor i64 %0, ptrtoint (ptr @_mi_os_random_weak to i64)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #55 ; 0 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !138
  %i.d = mul i64 %i.c, 1000
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !140
  %i.g = sdiv i64 %i.f, 1000000
  %i.h = add i64 %i.g, %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  %i.i = xor i64 %i.a, %i.h                       ; 4 uses
  %i.j = lshr i64 %i.i, 17
  %i.k = xor i64 %i.j, %i.i                       ; 2 uses
  %i.l = and i64 %i.k, 15                         ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.m, 30
  br label %bb.c

.unr-lcssa:                                       ; preds = %bb.c
  %i.o = and i64 %i.k, 1
  %lcmp.mod.not.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %bb.b

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.0910.epil.init = phi i64 [ %i.i, %bb.a ], [ %i.ao, %.unr-lcssa ] ; 2 uses
  %lcmp.mod13 = trunc i64 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod13)
  %i.p = icmp eq i64 %.0910.epil.init, 0
  %spec.store.select.i.epil = select i1 %i.p, i64 17, i64 %.0910.epil.init ; 2 uses
  %i.q = lshr i64 %spec.store.select.i.epil, 30
  %i.r = xor i64 %i.q, %spec.store.select.i.epil
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 27
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7723592293110705685       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ao, %.unr-lcssa ], [ %i.x, %.epil.preheader ]
  ret i64 %.lcssa

bb.c:                                             ; preds = %bb.c, %.new
  %.0910 = phi i64 [ %i.i, %.new ], [ %i.ao, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.y = icmp eq i64 %.0910, 0
  %spec.store.select.i = select i1 %i.y, i64 17, i64 %.0910 ; 2 uses
  %i.z = lshr i64 %spec.store.select.i, 30
  %i.aa = xor i64 %i.z, %spec.store.select.i
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 27
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -7723592293110705685     ; 2 uses
  %i.af = lshr i64 %i.ae, 31
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 30
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 27
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -7723592293110705685     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am                    ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !276
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_prim_clock_now() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #55
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #55 ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !138
  %i.c = mul i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !140
  %i.f = sdiv i64 %i.e, 1000000
  %i.g = add i64 %i.f, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #55
  ret i64 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_random_init_ex(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br i1 %1, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call zeroext i1 @_mi_prim_random_buf(ptr noundef nonnull %i.a, i64 noundef 32)
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.102)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #55
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #55, !inline_history !277 ; 0 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !138
  %i.e = mul i64 %i.d, 1000
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !140
  %i.h = sdiv i64 %i.g, 1000000
  %i.i = add i64 %i.h, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #55
  %i.j = xor i64 %i.i, ptrtoint (ptr @_mi_os_random_weak to i64) ; 4 uses
  %i.k = lshr i64 %i.j, 17
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = and i64 %i.l, 15                         ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.epil.preheader, label %.critedge.new

.critedge.new:                                    ; preds = %.critedge
  %unroll_iter = and i64 %i.n, 30
  br label %bb.d
end_hunk_3
begin_hunk_4_@mi_segment_reclaim:bb.a

.critedge.outer.2.i62:                            ; preds = %.critedge.1.i60
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i63

bb.t:                                             ; preds = %.critedge.1.i60
  %i.cn = and i64 %i.ck, -4
  %i.co = cmpxchg weak ptr %i.cg, i64 %i.ck, i64 %i.cn release monotonic, align 8
  %i.cp = extractvalue { i64, i1 } %i.co, 1
  br i1 %i.cp, label %_mi_page_use_delayed_free.exit, label %.critedge.1.i60, !llvm.loop !76

.critedge.2.i63:                                  ; preds = %bb.u, %.critedge.outer.2.i62
  %i.cq = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 3
  switch i32 %i.cs, label %bb.u [
    i32 1, label %.critedge.outer.3.i65
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

.critedge.outer.3.i65:                            ; preds = %.critedge.2.i63
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i66

bb.u:                                             ; preds = %.critedge.2.i63
  %i.ct = and i64 %i.cq, -4
  %i.cu = cmpxchg weak ptr %i.cg, i64 %i.cq, i64 %i.ct release monotonic, align 8
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cv, label %_mi_page_use_delayed_free.exit, label %.critedge.2.i63, !llvm.loop !76

.critedge.3.i66:                                  ; preds = %bb.v, %.critedge.outer.3.i65
  %i.cw = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i32 %i.cx, 3
  switch i32 %i.cy, label %bb.v [
    i32 1, label %.critedge.outer.4.i68
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

.critedge.outer.4.i68:                            ; preds = %.critedge.3.i66
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i69

bb.v:                                             ; preds = %.critedge.3.i66
  %i.cz = and i64 %i.cw, -4
  %i.da = cmpxchg weak ptr %i.cg, i64 %i.cw, i64 %i.cz release monotonic, align 8
  %i.db = extractvalue { i64, i1 } %i.da, 1
  br i1 %i.db, label %_mi_page_use_delayed_free.exit, label %.critedge.3.i66, !llvm.loop !76

.critedge.4.i69:                                  ; preds = %bb.w, %.critedge.outer.4.i68
  %i.dc = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 3
  switch i32 %i.de, label %bb.w [
    i32 1, label %.lr.ph.i53
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

bb.w:                                             ; preds = %.critedge.4.i69
  %i.df = and i64 %i.dc, -4
  %i.dg = cmpxchg weak ptr %i.cg, i64 %i.dc, i64 %i.df release monotonic, align 8
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  br i1 %i.dh, label %_mi_page_use_delayed_free.exit, label %.critedge.4.i69, !llvm.loop !76

bb.x:                                             ; preds = %.critedge.i56
  %i.di = and i64 %i.ch, -4
  %i.dj = cmpxchg weak ptr %i.cg, i64 %i.ch, i64 %i.di release monotonic, align 8
  %i.dk = extractvalue { i64, i1 } %i.dj, 1
  br i1 %i.dk, label %_mi_page_use_delayed_free.exit, label %.critedge.i56, !llvm.loop !76

.lr.ph.i53:                                       ; preds = %.critedge.4.i, %.critedge.4.i69
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac, %.lr.ph.i53
  %i.dl = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = and i32 %i.dm, 3
  switch i32 %i.dn, label %bb.ac [
    i32 1, label %.critedge.outer.1.i
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

.critedge.outer.1.i:                              ; preds = %.critedge.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.y, %.critedge.outer.1.i
  %i.do = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dp, 3
  switch i32 %i.dq, label %bb.y [
    i32 1, label %.critedge.outer.2.i
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i

bb.y:                                             ; preds = %.critedge.1.i
  %i.dr = and i64 %i.do, -4
  %i.ds = cmpxchg weak ptr %i.cg, i64 %i.do, i64 %i.dr release monotonic, align 8
  %i.dt = extractvalue { i64, i1 } %i.ds, 1
  br i1 %i.dt, label %_mi_page_use_delayed_free.exit, label %.critedge.1.i, !llvm.loop !76

.critedge.2.i:                                    ; preds = %bb.z, %.critedge.outer.2.i
  %i.du = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = and i32 %i.dv, 3
  switch i32 %i.dw, label %bb.z [
    i32 1, label %.critedge.outer.3.i
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.z:                                             ; preds = %.critedge.2.i
  %i.dx = and i64 %i.du, -4
  %i.dy = cmpxchg weak ptr %i.cg, i64 %i.du, i64 %i.dx release monotonic, align 8
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  br i1 %i.dz, label %_mi_page_use_delayed_free.exit, label %.critedge.2.i, !llvm.loop !76

.critedge.3.i:                                    ; preds = %bb.aa, %.critedge.outer.3.i
  %i.ea = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 3
  switch i32 %i.ec, label %bb.aa [
    i32 1, label %.critedge.outer.4.i
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i

bb.aa:                                            ; preds = %.critedge.3.i
  %i.ed = and i64 %i.ea, -4
  %i.ee = cmpxchg weak ptr %i.cg, i64 %i.ea, i64 %i.ed release monotonic, align 8
  %i.ef = extractvalue { i64, i1 } %i.ee, 1
  br i1 %i.ef, label %_mi_page_use_delayed_free.exit, label %.critedge.3.i, !llvm.loop !76

.critedge.4.i:                                    ; preds = %bb.ab, %.critedge.outer.4.i
  %i.eg = load atomic i64, ptr %i.cg acquire, align 8 ; 3 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 3
  switch i32 %i.ei, label %bb.ab [
    i32 1, label %.lr.ph.i53
    i32 0, label %_mi_page_use_delayed_free.exit
  ], !prof !208

bb.ab:                                            ; preds = %.critedge.4.i
  %i.ej = and i64 %i.eg, -4
  %i.ek = cmpxchg weak ptr %i.cg, i64 %i.eg, i64 %i.ej release monotonic, align 8
  %i.el = extractvalue { i64, i1 } %i.ek, 1
  br i1 %i.el, label %_mi_page_use_delayed_free.exit, label %.critedge.4.i, !llvm.loop !76

bb.ac:                                            ; preds = %.critedge.i
  %i.em = and i64 %i.dl, -4
  %i.en = cmpxchg weak ptr %i.cg, i64 %i.dl, i64 %i.em release monotonic, align 8
  %i.eo = extractvalue { i64, i1 } %i.en, 1
  br i1 %i.eo, label %_mi_page_use_delayed_free.exit, label %.critedge.i, !llvm.loop !76

_mi_page_use_delayed_free.exit:                   ; preds = %.critedge.i56, %bb.x, %.critedge.1.i60, %bb.t, %.critedge.2.i63, %bb.u, %.critedge.3.i66, %bb.v, %.critedge.4.i69, %bb.w, %.critedge.i, %bb.ac, %.critedge.1.i, %bb.y, %.critedge.2.i, %bb.z, %.critedge.3.i, %bb.aa, %.critedge.4.i, %bb.ab
  %i.ep = load atomic i64, ptr %i.cg monotonic, align 8
  %.not.i54 = icmp ult i64 %i.ep, 4
  br i1 %.not.i54, label %_mi_page_thread_free_collect.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_mi_page_use_delayed_free.exit
  %i.eq = load atomic i64, ptr %i.cg monotonic, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi i64 [ %i.eq, %bb.ad ], [ %i.eu, %bb.ae ] ; 3 uses
  %i.er = and i64 %.0.i.i, 3
  %i.es = cmpxchg weak ptr %i.cg, i64 %.0.i.i, i64 %i.er acq_rel acquire, align 8 ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  %i.eu = extractvalue { i64, i1 } %i.es, 0
  br i1 %i.et, label %bb.af, label %bb.ae, !llvm.loop !73

bb.af:                                            ; preds = %bb.ae
  %i.ev = and i64 %.0.i.i, -4                     ; 2 uses
  %i.ew = inttoptr i64 %i.ev to ptr               ; 3 uses
  %i.ex = icmp eq i64 %i.ev, 0
  br i1 %i.ex, label %_mi_page_thread_free_collect.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr i8, ptr %.04494, i64 10
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !74 ; 2 uses
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = load atomic i64, ptr %i.ew monotonic, align 8 ; 2 uses
  %i.fc = icmp ne i64 %i.fb, 0
  %i.fd = icmp ne i16 %i.ez, 0
  %i.fe = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %i.fe, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.i.i
  %i.ff = phi i64 [ %i.fi, %.lr.ph.i.i ], [ %i.fb, %bb.ag ]
  %.02934.i.i = phi i32 [ %i.fh, %.lr.ph.i.i ], [ 1, %bb.ag ]
  %i.fg = inttoptr i64 %i.ff to ptr               ; 2 uses
  %i.fh = add nuw nsw i32 %.02934.i.i, 1          ; 3 uses
  %i.fi = load atomic i64, ptr %i.fg monotonic, align 8 ; 2 uses
  %i.fj = icmp ne i64 %i.fi, 0
  %5 = icmp samesign ule i32 %i.fh, %i.fa
  %i.fk = select i1 %i.fj, i1 %5, i1 false
  br i1 %i.fk, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ag
  %.029.lcssa.i.i = phi i32 [ 1, %bb.ag ], [ %i.fh, %.lr.ph.i.i ] ; 2 uses
  %.028.lcssa.i.i = phi ptr [ %i.ew, %bb.ag ], [ %i.fg, %.lr.ph.i.i ]
  %i.fl = icmp samesign ugt i32 %.029.lcssa.i.i, %i.fa
  br i1 %i.fl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.fm = getelementptr i8, ptr %.04494, i64 32   ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !57
  %i.fo = ptrtoint ptr %i.fn to i64
  store atomic i64 %i.fo, ptr %.028.lcssa.i.i monotonic, align 8
  store ptr %i.ew, ptr %i.fm, align 8, !tbaa !57
  %i.fp = getelementptr i8, ptr %.04494, i64 24   ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !18
  %i.fr = sub i32 %i.fq, %.029.lcssa.i.i
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i

_mi_page_thread_free_collect.exit.i:              ; preds = %bb.ai, %bb.ah, %bb.af, %_mi_page_use_delayed_free.exit
  %i.fs = getelementptr i8, ptr %.04494, i64 32   ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !57 ; 2 uses
  %.not22.i = icmp eq ptr %i.ft, null
  br i1 %.not22.i, label %_mi_page_free_collect.exit, label %bb.aj

bb.aj:                                            ; preds = %_mi_page_thread_free_collect.exit.i
  %i.fu = getelementptr i8, ptr %.04494, i64 16   ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !11
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !55

.sink.split.i:                                    ; preds = %bb.aj
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !11
  store ptr null, ptr %i.fs, align 8, !tbaa !57
  %i.fx = getelementptr i8, ptr %.04494, i64 15   ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = and i8 %i.fy, -2
  store i8 %i.fz, ptr %i.fx, align 1
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.aj, %_mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ga = getelementptr i8, ptr %.04494, i64 24   ; 2 uses
  %.val = load i32, ptr %i.ga, align 8, !tbaa !18
  %i.gb = icmp eq i32 %.val, 0
  br i1 %i.gb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_mi_page_free_collect.exit
  %i.gc = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %.04494, ptr noundef %4)
  br label %bb.av

bb.al:                                            ; preds = %_mi_page_free_collect.exit
  %i.gd = load i32, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %bb.am, label %_mi_segment_page_start.exit.i.i, !prof !55

bb.am:                                            ; preds = %bb.al
  %i.gf = zext nneg i32 %i.gd to i64
  br label %mi_page_block_size.exit.i

_mi_segment_page_start.exit.i.i:                  ; preds = %bb.al
  %i.gg = load i32, ptr %.04494, align 8, !tbaa !52
  %i.gh = zext i32 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 16
  br label %mi_page_block_size.exit.i

mi_page_block_size.exit.i:                        ; preds = %_mi_segment_page_start.exit.i.i, %bb.am
  %.0.i.i55 = phi i64 [ %i.gf, %bb.am ], [ %i.gi, %_mi_segment_page_start.exit.i.i ] ; 4 uses
  %i.gj = add nuw nsw i64 %.0.i.i55, 7
  %i.gk = lshr i64 %i.gj, 3                       ; 2 uses
  %i.gl = icmp samesign ult i64 %.0.i.i55, 9
  br i1 %i.gl, label %_mi_page_reclaim.exit, label %bb.an

bb.an:                                            ; preds = %mi_page_block_size.exit.i
  %i.gm = icmp samesign ult i64 %.0.i.i55, 65
  br i1 %i.gm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gn = add nuw nsw i64 %i.gk, 1
  %i.go = and i64 %i.gn, 30
  br label %_mi_page_reclaim.exit

bb.ap:                                            ; preds = %bb.an
  %i.gp = icmp samesign ugt i64 %.0.i.i55, 131072
  br i1 %i.gp, label %_mi_page_reclaim.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gq = add nsw i64 %i.gk, -1                   ; 2 uses
  %i.gr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gq, i1 false) ; 2 uses
  %i.gs = sub nsw i64 61, %i.gr
  %i.gt = and i64 %i.gs, 4294967295
  %i.gu = lshr i64 %i.gq, %i.gt
  %i.gv = and i64 %i.gu, 3
  %i.gw = shl nuw nsw i64 %i.gr, 2
  %reass.sub = sub nsw i64 %i.gv, %i.gw
  %i.gx = add nsw i64 %reass.sub, 249
  %i.gy = and i64 %i.gx, 255
  br label %_mi_page_reclaim.exit

_mi_page_reclaim.exit:                            ; preds = %mi_page_block_size.exit.i, %bb.ao, %bb.ap, %bb.aq
  %.0.i.i.i.i = phi i64 [ %i.gy, %bb.aq ], [ %i.go, %bb.ao ], [ 1, %mi_page_block_size.exit.i ], [ 73, %bb.ap ]
  %i.gz = getelementptr i8, ptr %.1.i, i64 1040
  %i.ha = getelementptr [24 x i8], ptr %i.gz, i64 %.0.i.i.i.i
  tail call fastcc void @mi_page_queue_push(ptr noundef %.1.i, ptr noundef %i.ha, ptr noundef nonnull %.04494)
  %i.hb = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.hc = zext i32 %i.hb to i64
  %i.hd = icmp eq i64 %2, %i.hc
  br i1 %i.hd, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %_mi_page_reclaim.exit
  %i.he = load i32, ptr %i.ga, align 8, !tbaa !18
  %i.hf = getelementptr i8, ptr %.04494, i64 12
  %i.hg = load i16, ptr %i.hf, align 4, !tbaa !218
  %i.hh = zext i16 %i.hg to i32
  %i.hi = icmp ult i32 %i.he, %i.hh
  br i1 %i.hi, label %mi_page_has_any_available.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hj = load atomic i64, ptr %i.cg monotonic, align 8
  %i.hk = icmp ugt i64 %i.hj, 3
  %i.hl = select i1 %i.hk, i1 %i.aq, i1 false
  br label %mi_page_has_any_available.exit

mi_page_has_any_available.exit:                   ; preds = %bb.ar, %bb.as
  %or.cond = phi i1 [ %i.aq, %bb.ar ], [ %i.hl, %bb.as ]
  %i.hm = icmp eq ptr %1, %.1.i
  %i.hn = and i1 %i.hm, %or.cond
  %or.cond48 = and i1 %i.a, %i.hn
  br i1 %or.cond48, label %bb.at, label %bb.av

bb.at:                                            ; preds = %mi_page_has_any_available.exit
  store i8 1, ptr %3, align 1, !tbaa !125
  br label %bb.av

bb.au:                                            ; preds = %bb.j
  %i.ho = tail call fastcc ptr @mi_segment_span_free_coalesce(ptr noundef nonnull %.04494, ptr noundef %4)
  br label %bb.av

bb.av:                                            ; preds = %bb.ak, %bb.at, %mi_page_has_any_available.exit, %_mi_page_reclaim.exit, %bb.au
  %.2 = phi ptr [ %i.ho, %bb.au ], [ %i.gc, %bb.ak ], [ %.04494, %bb.at ], [ %.04494, %_mi_page_reclaim.exit ], [ %.04494, %mi_page_has_any_available.exit ] ; 2 uses
  %i.hp = load i32, ptr %.2, align 8, !tbaa !52
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr [80 x i8], ptr %.2, i64 %i.hq ; 2 uses
  %i.hs = icmp ult ptr %i.hr, %i.aj
  br i1 %i.hs, label %bb.j, label %._crit_edge, !llvm.loop !305

._crit_edge:                                      ; preds = %bb.av, %_mi_stat_decrease.exit
  %i.ht = getelementptr i8, ptr %0, i64 208
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !67
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %0, ptr noundef %4)
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge, %bb.aw
  %.0 = phi ptr [ null, %bb.aw ], [ %0, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_abandoned_collect(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 912
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294  ; 15 uses
  br i1 %1, label %bb.b, label %mi_abandoned_visited_revisit.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic ptr, ptr %i.b monotonic, align 64
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %mi_abandoned_visited_revisit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw xchg ptr %i.b, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i = icmp eq ptr %i.e, null
  br i1 %.not54.i, label %mi_abandoned_visited_revisit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 64       ; 4 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 64 ; 3 uses
  %i.h = icmp ult i64 %i.g, 33554432
  br i1 %i.h, label %bb.e, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %bb.e, %bb.d
  br label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.j = load atomic i64, ptr %i.i monotonic, align 64 ; 2 uses
  %i.k = add nuw nsw i64 %i.g, 1
  %i.l = and i64 %i.k, 33554431
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = or i64 %i.l, %i.m
  %i.o = cmpxchg ptr %i.f, i64 %i.g, i64 %i.n acq_rel acquire, align 64
end_hunk_4
begin_hunk_5_@_mi_abandoned_collect:bb.a

bb.j:                                             ; preds = %mi_abandoned_visited_revisit.exit, %bb.w
  %i.ar = phi i32 [ %i.al, %mi_abandoned_visited_revisit.exit ], [ %i.cy, %bb.w ] ; 2 uses
  %i.as = load atomic i64, ptr %i.am monotonic, align 64
  %i.at = icmp ult i64 %i.as, 33554432
  br i1 %i.at, label %bb.k, label %mi_abandoned_visited_revisit.exit.thread.i, !prof !55

bb.k:                                             ; preds = %bb.j
  %i.au = load atomic ptr, ptr %i.b monotonic, align 64
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = atomicrmw xchg ptr %i.b, ptr null acq_rel, align 64 ; 4 uses
  %.not54.i.i = icmp eq ptr %i.aw, null
  br i1 %.not54.i.i, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load atomic i64, ptr %i.am monotonic, align 64 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 33554432
  br i1 %i.ay, label %bb.n, label %.critedge.i.i.preheader

bb.n:                                             ; preds = %bb.m
  %i.az = load atomic i64, ptr %i.an monotonic, align 64
  %i.ba = add nuw nsw i64 %i.ax, 1
  %i.bb = and i64 %i.ba, 33554431
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = or i64 %i.bb, %i.bc
  %i.be = cmpxchg ptr %i.am, i64 %i.ax, i64 %i.bd acq_rel acquire, align 64
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %mi_abandoned_visited_revisit.exit.thread.i.sink.split, label %.critedge.i.i.preheader, !prof !299

.critedge.i.i.preheader:                          ; preds = %bb.n, %bb.m
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %.critedge.i.i
  %.050.i.i = phi ptr [ %i.bh, %.critedge.i.i ], [ %i.aw, %.critedge.i.i.preheader ] ; 2 uses
  %i.bg = getelementptr i8, ptr %.050.i.i, i64 176
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %bb.o, label %.critedge.i.i, !llvm.loop !300

bb.o:                                             ; preds = %.critedge.i.i
  %i.bi = getelementptr i8, ptr %.050.i.i, i64 176
  %i.bj = load atomic i64, ptr %i.am monotonic, align 64
  %i.bk = ptrtoint ptr %i.aw to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.051.i.i = phi i64 [ %i.bj, %bb.o ], [ %i.bt, %bb.p ] ; 3 uses
  %i.bl = load atomic i64, ptr %i.an monotonic, align 64
  %i.bm = and i64 %.051.i.i, -33554432
  %i.bn = inttoptr i64 %i.bm to ptr
  store atomic ptr %i.bn, ptr %i.bi release, align 8
  %i.bo = add i64 %.051.i.i, 1
  %i.bp = and i64 %i.bo, 33554431
  %i.bq = or i64 %i.bp, %i.bk
  %i.br = cmpxchg weak ptr %i.am, i64 %.051.i.i, i64 %i.bq release monotonic, align 64 ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  %i.bt = extractvalue { i64, i1 } %i.br, 0
  br i1 %i.bs, label %mi_abandoned_visited_revisit.exit.thread.i.sink.split, label %bb.p, !prof !299, !llvm.loop !301

mi_abandoned_visited_revisit.exit.thread.i.sink.split: ; preds = %bb.p, %bb.n
  %.lcssa37.sink42 = phi i64 [ %i.az, %bb.n ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bu = atomicrmw add ptr %i.ao, i64 %.lcssa37.sink42 monotonic, align 64 ; 0 uses
  %i.bv = atomicrmw sub ptr %i.an, i64 %.lcssa37.sink42 monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit.thread.i

mi_abandoned_visited_revisit.exit.thread.i:       ; preds = %mi_abandoned_visited_revisit.exit.thread.i.sink.split, %bb.j
  %i.bw = atomicrmw add ptr %i.ap, i64 1 monotonic, align 64 ; 0 uses
  %i.bx = load atomic i64, ptr %i.am acquire, align 64
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %mi_abandoned_visited_revisit.exit.thread.i
  %.029.i = phi i64 [ %i.bx, %mi_abandoned_visited_revisit.exit.thread.i ], [ %i.cj, %bb.r ] ; 3 uses
  %i.by = and i64 %.029.i, -33554432              ; 2 uses
  %.not.i17 = icmp eq i64 %i.by, 0
  br i1 %.not.i17, label %mi_abandoned_pop.exit.thread21, label %bb.r

mi_abandoned_pop.exit.thread21:                   ; preds = %bb.q
  %i.bz = atomicrmw sub ptr %i.ap, i64 1 monotonic, align 64 ; 0 uses
  br label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ca = inttoptr i64 %i.by to ptr               ; 7 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 176
  %i.cc = load atomic ptr, ptr %i.cb monotonic, align 16
  %i.cd = add i64 %.029.i, 1
  %i.ce = and i64 %i.cd, 33554431
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = or i64 %i.ce, %i.cf
  %i.ch = cmpxchg weak ptr %i.am, i64 %.029.i, i64 %i.cg acq_rel acquire, align 64 ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0
  br i1 %i.ci, label %bb.s, label %bb.q, !llvm.loop !302

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr i8, ptr %i.ca, i64 176    ; 2 uses
  %i.cl = atomicrmw sub ptr %i.ap, i64 1 monotonic, align 64 ; 0 uses
  store atomic ptr null, ptr %i.ck release, align 8
  %i.cm = atomicrmw sub ptr %i.ao, i64 1 monotonic, align 64 ; 0 uses
  %i.cn = tail call fastcc zeroext i1 @mi_segment_check_free(ptr noundef %i.ca, i64 noundef 0, i64 noundef 0, ptr noundef %2) ; 0 uses
  %i.co = getelementptr i8, ptr %i.ca, i64 208
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !67
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cr = tail call fastcc ptr @mi_segment_reclaim(ptr noundef %i.ca, ptr noundef %0, i64 noundef 0, ptr noundef null, ptr noundef %2) ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.aq, align 8, !tbaa !201
  tail call fastcc void @mi_segment_try_purge(ptr noundef nonnull %i.ca, i1 noundef zeroext %1, ptr noundef %i.cs)
  %i.ct = load atomic ptr, ptr %i.b monotonic, align 64
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.0.i18 = phi ptr [ %i.ct, %bb.u ], [ %i.cw, %bb.v ] ; 2 uses
  store atomic ptr %.0.i18, ptr %i.ck release, align 8
  %i.cu = cmpxchg weak ptr %i.b, ptr %.0.i18, ptr %i.ca release monotonic, align 64 ; 2 uses
  %i.cv = extractvalue { ptr, i1 } %i.cu, 1
  %i.cw = extractvalue { ptr, i1 } %i.cu, 0
  br i1 %i.cv, label %mi_abandoned_visited_push.exit, label %bb.v, !llvm.loop !306

mi_abandoned_visited_push.exit:                   ; preds = %bb.v
  %i.cx = atomicrmw add ptr %i.an, i64 1 monotonic, align 64 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %mi_abandoned_visited_push.exit, %bb.t
  %i.cy = add nsw i32 %i.ar, -1
  %i.cz = icmp sgt i32 %i.ar, 0
  br i1 %i.cz, label %bb.j, label %.critedge, !llvm.loop !307

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.w, %mi_abandoned_pop.exit.thread21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @mi_segment_check_free(ptr noundef nonnull %0, i64 noundef range(i64 0, 281474976710656) %1, i64 noundef range(i64 0, 16777217) %2, ptr nofree noundef captures(address) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !285
  %i.d = getelementptr [80 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !52
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr [80 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = icmp ult ptr %i.g, %i.d
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 896
  %i.j = getelementptr i8, ptr %0, i64 192        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.030 = phi i1 [ false, %.lr.ph ], [ %.2, %bb.u ] ; 4 uses
  %.02029 = phi ptr [ %i.g, %.lr.ph ], [ %i.cp, %bb.u ] ; 16 uses
  %i.k = getelementptr i8, ptr %.02029, i64 28    ; 2 uses
  %.020.val = load i32, ptr %i.k, align 4, !tbaa !21
  %.not27 = icmp eq i32 %.020.val, 0
  br i1 %.not27, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.02029, i64 40    ; 4 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %.not.i = icmp ult i64 %i.m, 4
  br i1 %.not.i, label %_mi_page_thread_free_collect.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load atomic i64, ptr %i.l monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  %i.o = and i64 %.0.i.i, 3
  %i.p = cmpxchg weak ptr %i.l, i64 %.0.i.i, i64 %i.o acq_rel acquire, align 8 ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e, !llvm.loop !73

bb.f:                                             ; preds = %bb.e
  %i.s = and i64 %.0.i.i, -4                      ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_mi_page_thread_free_collect.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %.02029, i64 10
  %i.w = load i16, ptr %i.v, align 2, !tbaa !74   ; 2 uses
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = load atomic i64, ptr %i.t monotonic, align 8 ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ne i16 %i.w, 0
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ac = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.y, %bb.g ]
  %.02934.i.i = phi i32 [ %i.ae, %.lr.ph.i.i ], [ 1, %bb.g ]
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = add nuw nsw i32 %.02934.i.i, 1          ; 3 uses
  %i.af = load atomic i64, ptr %i.ad monotonic, align 8 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  %4 = icmp samesign ule i32 %i.ae, %i.x
  %i.ah = select i1 %i.ag, i1 %4, i1 false
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.g
  %.029.lcssa.i.i = phi i32 [ 1, %bb.g ], [ %i.ae, %.lr.ph.i.i ] ; 2 uses
  %.028.lcssa.i.i = phi ptr [ %i.t, %bb.g ], [ %i.ad, %.lr.ph.i.i ]
  %i.ai = icmp samesign ugt i32 %.029.lcssa.i.i, %i.x
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aj = getelementptr i8, ptr %.02029, i64 32   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !57
  %i.al = ptrtoint ptr %i.ak to i64
  store atomic i64 %i.al, ptr %.028.lcssa.i.i monotonic, align 8
  store ptr %i.t, ptr %i.aj, align 8, !tbaa !57
  %i.am = getelementptr i8, ptr %.02029, i64 24   ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !18
  %i.ao = sub i32 %i.an, %.029.lcssa.i.i
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i

_mi_page_thread_free_collect.exit.i:              ; preds = %bb.i, %bb.h, %bb.f, %bb.c
  %i.ap = getelementptr i8, ptr %.02029, i64 32   ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  %.not22.i = icmp eq ptr %i.aq, null
  br i1 %.not22.i, label %_mi_page_free_collect.exit, label %bb.j

bb.j:                                             ; preds = %_mi_page_thread_free_collect.exit.i
  %i.ar = getelementptr i8, ptr %.02029, i64 16   ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !55

.sink.split.i:                                    ; preds = %bb.j
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !11
  store ptr null, ptr %i.ap, align 8, !tbaa !57
  %i.au = getelementptr i8, ptr %.02029, i64 15   ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.au, align 1
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.j, %_mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ax = getelementptr i8, ptr %.02029, i64 24
  %.val = load i32, ptr %i.ax, align 8, !tbaa !18 ; 2 uses
  %i.ay = icmp eq i32 %.val, 0
  br i1 %i.ay, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_mi_page_free_collect.exit
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !201 ; 6 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 256    ; 2 uses
  %i.bb = icmp uge ptr %i.ba, @_mi_stats_main
  %i.bc = icmp ult ptr %i.ba, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  %i.be = getelementptr i8, ptr %i.az, i64 280    ; 3 uses
  br i1 %i.bd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bf = atomicrmw sub ptr %i.be, i64 1 monotonic, align 8
  %i.bg = getelementptr i8, ptr %i.az, i64 272    ; 2 uses
  %i.bh = add i64 %i.bf, -1                       ; 2 uses
  %i.bi = load atomic i64, ptr %i.bg monotonic, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.0.i.i.i = phi i64 [ %i.bi, %bb.l ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bj = icmp slt i64 %.0.i.i.i, %i.bh
  br i1 %i.bj, label %bb.n, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bk = cmpxchg weak ptr %i.bg, i64 %.0.i.i.i, i64 %i.bh release monotonic, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  br i1 %i.bl, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.m, !llvm.loop !124

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.n, %bb.m
  %i.bn = getelementptr i8, ptr %i.az, i64 264
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8 ; 0 uses
  br label %_mi_stat_decrease.exit

bb.o:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %i.be, align 8, !tbaa !127
  %i.bq = add i64 %i.bp, -1                       ; 3 uses
  store i64 %i.bq, ptr %i.be, align 8, !tbaa !127
  %i.br = getelementptr i8, ptr %i.az, i64 272    ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !128
  %i.bt = icmp sgt i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !128
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bu = getelementptr i8, ptr %i.az, i64 264    ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !130
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !130
  br label %_mi_stat_decrease.exit

_mi_stat_decrease.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.q
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !72
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.j, align 8, !tbaa !72
  %i.bz = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %.02029, ptr noundef %3) ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !52
  %i.cb = zext i32 %i.ca to i64
  %.not23 = icmp samesign ule i64 %1, %i.cb
  %spec.select25 = select i1 %.not23, i1 true, i1 %.030
  br label %bb.u

bb.r:                                             ; preds = %_mi_page_free_collect.exit
  %i.cc = load i32, ptr %i.k, align 4, !tbaa !21
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp eq i64 %2, %i.cd
  br i1 %i.ce, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %.02029, i64 12
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !218
  %i.ch = zext i16 %i.cg to i32
  %i.ci = icmp ult i32 %.val, %i.ch
  br i1 %i.ci, label %mi_page_has_any_available.exit.thread, label %mi_page_has_any_available.exit

mi_page_has_any_available.exit:                   ; preds = %bb.s
  %i.cj = load atomic i64, ptr %i.l monotonic, align 8
  %.fr = freeze i64 %i.cj
  %i.ck = icmp ugt i64 %.fr, 3
  br i1 %i.ck, label %mi_page_has_any_available.exit.thread, label %bb.u

mi_page_has_any_available.exit.thread:            ; preds = %bb.s, %mi_page_has_any_available.exit
  br label %bb.u

bb.t:                                             ; preds = %bb.b
  %i.cl = load i32, ptr %.02029, align 8, !tbaa !52
  %i.cm = zext i32 %i.cl to i64
  %.not = icmp samesign ule i64 %1, %i.cm
  %spec.select24 = select i1 %.not, i1 true, i1 %.030
  br label %bb.u

bb.u:                                             ; preds = %mi_page_has_any_available.exit.thread, %mi_page_has_any_available.exit, %_mi_stat_decrease.exit, %bb.t, %bb.r
  %.222 = phi ptr [ %i.bz, %_mi_stat_decrease.exit ], [ %.02029, %bb.r ], [ %.02029, %bb.t ], [ %.02029, %mi_page_has_any_available.exit ], [ %.02029, %mi_page_has_any_available.exit.thread ] ; 2 uses
  %.2 = phi i1 [ %spec.select25, %_mi_stat_decrease.exit ], [ %.030, %bb.r ], [ %spec.select24, %bb.t ], [ %.030, %mi_page_has_any_available.exit ], [ true, %mi_page_has_any_available.exit.thread ] ; 2 uses
  %i.cn = load i32, ptr %.222, align 8, !tbaa !52
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr [80 x i8], ptr %.222, i64 %i.co ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %i.d
  br i1 %i.cq, label %bb.b, label %._crit_edge, !llvm.loop !308

._crit_edge:                                      ; preds = %bb.u, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.2, %bb.u ]
  ret i1 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_segment_try_purge(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(address) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.mi_commit_mask_s, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !309, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !105
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %mi_commit_mask_is_empty.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !105
  %.not.1.i = icmp eq i64 %i.g, 0
  br i1 %.not.1.i, label %bb.d, label %mi_commit_mask_is_empty.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !105
  %.not.2.i = icmp eq i64 %i.i, 0
  br i1 %.not.2.i, label %bb.e, label %mi_commit_mask_is_empty.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !105
  %.not.3.i = icmp eq i64 %i.k, 0
  br i1 %.not.3.i, label %bb.f, label %mi_commit_mask_is_empty.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 80
  %i.m = load i64, ptr %i.l, align 8, !tbaa !105
  %.not.4.i = icmp eq i64 %i.m, 0
  br i1 %.not.4.i, label %bb.g, label %mi_commit_mask_is_empty.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 88
end_hunk_5
begin_hunk_6_@PyObject_Malloc:bb.a
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8, !tbaa !516
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !549
  %i.d = tail call ptr %i.b(ptr noundef %i.c, i64 noundef %0) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyObject_Calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = udiv i64 9223372036854775807, %1
  %i.b = icmp ugt i64 %0, %i.a
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1040), align 8, !tbaa !550
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !549
  %i.e = tail call ptr %i.c(ptr noundef %i.d, i64 noundef %0, i64 noundef %1) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyObject_Realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1048), align 8, !tbaa !551
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !549
  %i.d = tail call ptr %i.b(ptr noundef %i.c, ptr noundef %0, i64 noundef %1) #55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @PyObject_Free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1056), align 8, !tbaa !552
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1024), align 8, !tbaa !549
  tail call void %i.a(ptr noundef %i.b, ptr noundef %0) #55
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @_PyInterpreterState_GetAllocatedBlocks(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  %.not.i = icmp eq i32 %i.a, 0
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8
  %.val1.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1176), align 8
  %.0.in.in.i = select i1 %.not.i, ptr %.val.i, ptr %.val1.i
  %.0.in.i.not = icmp eq ptr %.0.in.in.i, @_PyObject_MiMalloc
  br i1 %.0.in.i.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  tail call void @mi_process_init(), !inline_history !203
  %i.b = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !203
  br i1 %i.b, label %mi_heap_get_default.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.i, %bb.e ] ; 2 uses
  %i.f = icmp slt i64 %.0.i.i.i.i.i, %i.d
  br i1 %i.f, label %bb.e, label %_mi_stat_increase.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.g = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i, i64 %i.d release monotonic, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  br i1 %i.h, label %_mi_stat_increase.exit.i.i, label %bb.d, !llvm.loop !124

_mi_stat_increase.exit.i.i:                       ; preds = %bb.e, %bb.d
  %i.j = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.k = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_default.exit.i

mi_heap_get_default.exit.i:                       ; preds = %_mi_stat_increase.exit.i.i, %bb.b
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 2840     ; 4 uses
  %i.o = load atomic ptr, ptr %i.n monotonic, align 8 ; 2 uses
  %.old1.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.old1.not.i.i.i, label %_mi_heap_delayed_free_partial.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %mi_heap_get_default.exit.i, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.r, %.preheader.i.i.i ], [ %i.o, %mi_heap_get_default.exit.i ]
  %i.p = cmpxchg weak ptr %i.n, ptr %.0.i.i.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.q = extractvalue { ptr, i1 } %i.p, 1
  %i.r = extractvalue { ptr, i1 } %i.p, 0         ; 3 uses
  %i.s = icmp eq ptr %i.r, null                   ; 2 uses
  %or.cond.not.i.i.i = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i.i, label %.preheader.i.i.i, !llvm.loop !45

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i
  br i1 %i.s, label %_mi_heap_delayed_free_partial.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %.loopexit.i.i.i
  %.334.i.i.i = phi ptr [ %i.u, %.loopexit.i.i.i ], [ %i.r, %.critedge.i.i.i ] ; 4 uses
  %i.t = load atomic i64, ptr %.334.i.i.i monotonic, align 8 ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = tail call zeroext i1 @_mi_free_delayed_block(ptr noundef nonnull %.334.i.i.i)
  br i1 %i.v, label %.loopexit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.w = load atomic ptr, ptr %i.n monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.027.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %i.x = ptrtoint ptr %.027.i.i.i to i64
  store atomic i64 %i.x, ptr %.334.i.i.i monotonic, align 8
  %i.y = cmpxchg weak ptr %i.n, ptr %.027.i.i.i, ptr %.334.i.i.i release monotonic, align 8 ; 2 uses
  %i.z = extractvalue { ptr, i1 } %i.y, 1
  %i.aa = extractvalue { ptr, i1 } %i.y, 0
  br i1 %i.z, label %.loopexit.i.i.i, label %bb.g, !llvm.loop !47

.loopexit.i.i.i:                                  ; preds = %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %_mi_heap_delayed_free_partial.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !48

_mi_heap_delayed_free_partial.exit.i.i:           ; preds = %.loopexit.i.i.i
  %i.ab = icmp eq ptr %i.m, null
  br i1 %i.ab, label %get_mimalloc_allocated_blocks.exit, label %_mi_heap_delayed_free_partial.exit.thread.i.i

_mi_heap_delayed_free_partial.exit.thread.i.i:    ; preds = %_mi_heap_delayed_free_partial.exit.i.i, %.critedge.i.i.i, %mi_heap_get_default.exit.i
  %i.ac = getelementptr i8, ptr %i.m, i64 3024
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !196
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %get_mimalloc_allocated_blocks.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_mi_heap_delayed_free_partial.exit.thread.i.i
  %i.af = getelementptr i8, ptr %i.m, i64 1040
  br label %.preheader.i.i.split.i.i

.preheader.i.i.split.i.i:                         ; preds = %.critedge.i.i.i.i, %.preheader.i.i.i.i
  %.0.i27 = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.2.i, %.critedge.i.i.i.i ] ; 2 uses
  %.02229.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.cd, %.critedge.i.i.i.i ] ; 2 uses
  %i.ag = getelementptr [24 x i8], ptr %i.af, i64 %.02229.i.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i3.i.i.i, label %.critedge.i.i.i.i, label %mi_heap_area_visitor.exit.i.i.i

mi_heap_area_visitor.exit.i.i.i:                  ; preds = %.preheader.i.i.split.i.i, %_mi_page_free_collect.exit.i
  %.1.i = phi i64 [ %i.cc, %_mi_page_free_collect.exit.i ], [ %.0.i27, %.preheader.i.i.split.i.i ]
  %.020.i4.i.i.i = phi ptr [ %i.aj, %_mi_page_free_collect.exit.i ], [ %i.ah, %.preheader.i.i.split.i.i ] ; 9 uses
  %i.ai = getelementptr i8, ptr %.020.i4.i.i.i, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !197 ; 2 uses
  %i.ak = getelementptr i8, ptr %.020.i4.i.i.i, i64 40 ; 2 uses
  %i.al = load atomic i64, ptr %i.ak monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %mi_heap_area_visitor.exit.i.i.i
  %.0.i.i.i29 = phi i64 [ %i.al, %mi_heap_area_visitor.exit.i.i.i ], [ %i.ap, %bb.h ] ; 3 uses
  %i.am = and i64 %.0.i.i.i29, 3
  %i.an = cmpxchg weak ptr %i.ak, i64 %.0.i.i.i29, i64 %i.am acq_rel acquire, align 8 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  br i1 %i.ao, label %bb.i, label %bb.h, !llvm.loop !73

bb.i:                                             ; preds = %bb.h
  %i.aq = and i64 %.0.i.i.i29, -4                 ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %.020.i4.i.i.i, i64 10
  %i.au = load i16, ptr %i.at, align 2, !tbaa !74 ; 2 uses
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = load atomic i64, ptr %i.ar monotonic, align 8 ; 2 uses
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = icmp ne i16 %i.au, 0
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph.i.i.i30, label %._crit_edge.i.i.i

.lr.ph.i.i.i30:                                   ; preds = %bb.j, %.lr.ph.i.i.i30
  %i.ba = phi i64 [ %i.bd, %.lr.ph.i.i.i30 ], [ %i.aw, %bb.j ]
  %.02934.i.i.i = phi i32 [ %i.bc, %.lr.ph.i.i.i30 ], [ 1, %bb.j ]
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = add nuw nsw i32 %.02934.i.i.i, 1        ; 3 uses
  %i.bd = load atomic i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.be = icmp ne i64 %i.bd, 0
  %1 = icmp samesign ule i32 %i.bc, %i.av
  %i.bf = select i1 %i.be, i1 %1, i1 false
  br i1 %i.bf, label %.lr.ph.i.i.i30, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i30, %bb.j
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.j ], [ %i.bc, %.lr.ph.i.i.i30 ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.ar, %bb.j ], [ %i.bb, %.lr.ph.i.i.i30 ]
  %i.bg = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.av
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = getelementptr i8, ptr %.020.i4.i.i.i, i64 32 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  %i.bj = ptrtoint ptr %i.bi to i64
  store atomic i64 %i.bj, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.ar, ptr %i.bh, align 8, !tbaa !57
  %i.bk = getelementptr i8, ptr %.020.i4.i.i.i, i64 24 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !18
  %i.bm = sub i32 %i.bl, %.029.lcssa.i.i.i
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.l, %bb.k, %bb.i
  %i.bn = getelementptr i8, ptr %.020.i4.i.i.i, i64 32 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !57 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.bo, null
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.m

bb.m:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  %i.bp = getelementptr i8, ptr %.020.i4.i.i.i, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.sink.split.i.i, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bt, %.preheader.i.i ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bs = load atomic i64, ptr %.0.i.i monotonic, align 8 ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr
  %.not23.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not23.i.i, label %bb.n, label %.preheader.i.i, !llvm.loop !77

bb.n:                                             ; preds = %.preheader.i.i
  %i.bu = ptrtoint ptr %i.bq to i64
  store atomic i64 %i.bu, ptr %.0.i.i monotonic, align 8
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !57
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.n, %bb.m
  %.sink.i.i = phi ptr [ %i.bv, %bb.n ], [ %i.bo, %bb.m ]
  store ptr %.sink.i.i, ptr %i.bp, align 8, !tbaa !11
  store ptr null, ptr %i.bn, align 8, !tbaa !57
  %i.bw = getelementptr i8, ptr %.020.i4.i.i.i, i64 15 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 1
  br label %_mi_page_free_collect.exit.i

_mi_page_free_collect.exit.i:                     ; preds = %.sink.split.i.i, %_mi_page_thread_free_collect.exit.i.i
  %i.bz = getelementptr i8, ptr %.020.i4.i.i.i, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !18
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add i64 %.1.i, %i.cb                    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %mi_heap_area_visitor.exit.i.i.i, !llvm.loop !199

.critedge.i.i.i.i:                                ; preds = %_mi_page_free_collect.exit.i, %.preheader.i.i.split.i.i
  %.2.i = phi i64 [ %.0.i27, %.preheader.i.i.split.i.i ], [ %i.cc, %_mi_page_free_collect.exit.i ] ; 2 uses
  %i.cd = add nuw nsw i64 %.02229.i.i.i.i, 1      ; 2 uses
  %exitcond.i.i.i.i = icmp eq i64 %i.cd, 75
  br i1 %exitcond.i.i.i.i, label %get_mimalloc_allocated_blocks.exit, label %.preheader.i.i.split.i.i, !llvm.loop !200

bb.o:                                             ; preds = %bb.a
  %i.ce = tail call ptr @_PyInterpreterState_Main() #55
  %.not.i28 = icmp eq ptr %0, %i.ce
  br i1 %.not.i28, label %has_own_state.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr i8, ptr %0, i64 8536
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !553
  %i.ch = and i64 %i.cg, 32
  %.not3.i = icmp eq i64 %i.ch, 0
  br i1 %.not3.i, label %has_own_state.exit.thread, label %has_own_state.exit

has_own_state.exit:                               ; preds = %bb.p
  %i.ci = tail call i32 @_Py_IsMainInterpreterFinalizing(ptr noundef nonnull %0) #55
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %bb.q, label %has_own_state.exit.thread

bb.q:                                             ; preds = %has_own_state.exit
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyInterpreterState_GetAllocatedBlocks, ptr noundef nonnull @.str.44) #62
  unreachable

has_own_state.exit.thread:                        ; preds = %bb.o, %bb.p, %has_own_state.exit
  %i.cj = getelementptr i8, ptr %0, i64 10952
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !554 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %get_mimalloc_allocated_blocks.exit, label %bb.r

bb.r:                                             ; preds = %has_own_state.exit.thread
  %i.cm = getelementptr i8, ptr %i.ck, i64 1088
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !555 ; 2 uses
  %i.co = getelementptr i8, ptr %i.ck, i64 520
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !562 ; 2 uses
  %.not48 = icmp eq i32 %i.cp, 0
  br i1 %.not48, label %get_mimalloc_allocated_blocks.exit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.r
  %i.cq = getelementptr i8, ptr %i.ck, i64 512
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !563
  %wide.trip.count = zext i32 %i.cp to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph46, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.02244 = phi i64 [ %i.cn, %.lr.ph46 ], [ %.2, %.loopexit ] ; 3 uses
  %i.cs = getelementptr [48 x i8], ptr %i.cr, i64 %indvars.iv ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !564 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = add i64 %i.ct, 16383
  %i.cw = and i64 %i.cv, -16384                   ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !567
  %i.cz = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.da = icmp ult i64 %i.cw, %i.cz
  br i1 %i.da, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.t, %.lr.ph
  %.02043 = phi i64 [ %i.df, %.lr.ph ], [ %i.cw, %bb.t ] ; 2 uses
  %.12342 = phi i64 [ %i.de, %.lr.ph ], [ %.02244, %bb.t ]
  %i.db = inttoptr i64 %.02043 to ptr
  %i.dc = load i32, ptr %i.db, align 16384, !tbaa !60
  %i.dd = zext i32 %i.dc to i64
  %i.de = add i64 %.12342, %i.dd                  ; 2 uses
  %i.df = add i64 %.02043, 16384                  ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.cz
  br i1 %i.dg, label %.lr.ph, label %.loopexit, !llvm.loop !568

.loopexit:                                        ; preds = %.lr.ph, %bb.t, %bb.s
  %.2 = phi i64 [ %.02244, %bb.s ], [ %.02244, %bb.t ], [ %i.de, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %get_mimalloc_allocated_blocks.exit, label %bb.s, !llvm.loop !569

get_mimalloc_allocated_blocks.exit:               ; preds = %.loopexit, %.critedge.i.i.i.i, %bb.r, %_mi_heap_delayed_free_partial.exit.thread.i.i, %_mi_heap_delayed_free_partial.exit.i.i, %has_own_state.exit.thread
  %.1 = phi i64 [ %.2.i, %.critedge.i.i.i.i ], [ 0, %has_own_state.exit.thread ], [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %i.cn, %bb.r ], [ %.2, %.loopexit ]
  ret i64 %.1
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #47

; Function Attrs: nounwind uwtable
define hidden void @_PyInterpreterState_FinalizeAllocatedBlocks(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  %.not.i = icmp eq i32 %i.a, 0
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8
  %.val1.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1176), align 8
  %.0.in.in.i = select i1 %.not.i, ptr %.val.i, ptr %.val1.i
  %.0.in.i.not = icmp eq ptr %.0.in.in.i, @_PyObject_MiMalloc
  br i1 %.0.in.i.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @_PyInterpreterState_GetAllocatedBlocks(ptr noundef %0)
  %i.c = getelementptr i8, ptr %0, i64 7376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !570
  %i.e = getelementptr i8, ptr %i.d, i64 1248     ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !571
  %i.g = add i64 %i.f, %i.b
  store i64 %i.g, ptr %i.e, align 8, !tbaa !571
  br label %free_obmalloc_arenas.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @_PyInterpreterState_Main() #55
  %.not.i13 = icmp eq ptr %0, %i.h
  br i1 %.not.i13, label %has_own_state.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 8536
  %i.j = load i64, ptr %i.i, align 8, !tbaa !553
  %i.k = and i64 %i.j, 32
  %.not3.i = icmp eq i64 %i.k, 0
  br i1 %.not3.i, label %has_own_state.exit.thread, label %has_own_state.exit

has_own_state.exit:                               ; preds = %bb.d
  %i.l = tail call i32 @_Py_IsMainInterpreterFinalizing(ptr noundef nonnull %0) #55
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %free_obmalloc_arenas.exit, label %has_own_state.exit.thread

has_own_state.exit.thread:                        ; preds = %bb.c, %bb.d, %has_own_state.exit
  %i.m = getelementptr i8, ptr %0, i64 10952      ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !554
  %.not12 = icmp eq ptr %i.n, null
  br i1 %.not12, label %free_obmalloc_arenas.exit, label %bb.e
end_hunk_6
begin_hunk_7_@_PyMem_init_obmalloc:bb.a
  store ptr %i.aa, ptr %.sroa.42.0..sroa_idx.i28, align 8
  store ptr %i.ab, ptr %i.ac, align 8
  %.sroa.44.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  store ptr %i.ab, ptr %.sroa.44.0..sroa_idx.i29, align 8
  store ptr %i.ac, ptr %i.ad, align 8
  %.sroa.46.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  store ptr %i.ac, ptr %.sroa.46.0..sroa_idx.i30, align 8
  store ptr %i.ad, ptr %i.ae, align 8
  %.sroa.48.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  store ptr %i.ad, ptr %.sroa.48.0..sroa_idx.i31, align 8
  store ptr %i.ae, ptr %i.af, align 8
  %.sroa.50.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  store ptr %i.ae, ptr %.sroa.50.0..sroa_idx.i32, align 8
  store ptr %i.af, ptr %i.ag, align 8
  %.sroa.52.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  store ptr %i.af, ptr %.sroa.52.0..sroa_idx.i33, align 8
  store ptr %i.ag, ptr %i.ah, align 8
  %.sroa.54.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  store ptr %i.ag, ptr %.sroa.54.0..sroa_idx.i34, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %.sroa.56.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  store ptr %i.ah, ptr %.sroa.56.0..sroa_idx.i35, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  %.sroa.58.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  store ptr %i.ai, ptr %.sroa.58.0..sroa_idx.i36, align 8
  store ptr %i.aj, ptr %i.ak, align 8
  %.sroa.60.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  store ptr %i.aj, ptr %.sroa.60.0..sroa_idx.i37, align 8
  store ptr %i.ak, ptr %i.al, align 8
  %.sroa.62.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  store ptr %i.ak, ptr %.sroa.62.0..sroa_idx.i38, align 8
  store ptr %i.al, ptr %i.am, align 8
  %.sroa.64.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  store ptr %i.al, ptr %.sroa.64.0..sroa_idx.i39, align 8
  store ptr %i.am, ptr %i.an, align 8
  %.sroa.66.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  store ptr %i.am, ptr %.sroa.66.0..sroa_idx.i40, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @_PyInterpreterState_HasFeature(ptr noundef, i64 noundef) local_unnamed_addr #48

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_PyObject_DebugMallocStats(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = alloca [32 x i64], align 16              ; 5 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1208), align 8, !tbaa !350
  %.not.i = icmp eq i32 %i.e, 0
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1032), align 8
  %.val1.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 1176), align 8
  %.0.in.in.i = select i1 %.not.i, ptr %.val.i, ptr %.val1.i ; 2 uses
  %.0.in.i.not = icmp eq ptr %.0.in.in.i, @_PyObject_MiMalloc
  br i1 %.0.in.i.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.181, i64 noundef 16384, i32 noundef 73) #55 ; 0 uses
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.182, i64 noundef 131072) #55 ; 0 uses
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.183, i64 noundef 16777216) #55 ; 0 uses
  tail call void @mi_process_init(), !inline_history !203
  %i.i = tail call fastcc zeroext i1 @_mi_heap_init(), !inline_history !203
  br i1 %i.i, label %mi_heap_get_default.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 312), i64 1 monotonic, align 8
  %i.k = add i64 %i.j, 1                          ; 2 uses
  %i.l = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304) monotonic, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.p, %bb.e ] ; 2 uses
  %i.m = icmp slt i64 %.0.i.i.i.i.i, %i.k
  br i1 %i.m, label %bb.e, label %_mi_stat_increase.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 304), i64 %.0.i.i.i.i.i, i64 %i.k release monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0
  br i1 %i.o, label %_mi_stat_increase.exit.i.i, label %bb.d, !llvm.loop !124

_mi_stat_increase.exit.i.i:                       ; preds = %bb.e, %bb.d
  %i.q = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 288), i64 1 monotonic, align 8 ; 0 uses
  %i.r = atomicrmw add ptr @thread_count, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_heap_get_default.exit.i

mi_heap_get_default.exit.i:                       ; preds = %_mi_stat_increase.exit.i.i, %bb.b
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 2840     ; 4 uses
  %i.v = load atomic ptr, ptr %i.u monotonic, align 8 ; 2 uses
  %.old1.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.old1.not.i.i.i, label %_mi_heap_delayed_free_partial.exit.thread.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %mi_heap_get_default.exit.i, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.y, %.preheader.i.i.i ], [ %i.v, %mi_heap_get_default.exit.i ]
  %i.w = cmpxchg weak ptr %i.u, ptr %.0.i.i.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  %i.y = extractvalue { ptr, i1 } %i.w, 0         ; 3 uses
  %i.z = icmp eq ptr %i.y, null                   ; 2 uses
  %or.cond.not.i.i.i = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i.i, label %.preheader.i.i.i, !llvm.loop !45

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i
  br i1 %i.z, label %_mi_heap_delayed_free_partial.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %.loopexit.i.i.i
  %.334.i.i.i = phi ptr [ %i.ab, %.loopexit.i.i.i ], [ %i.y, %.critedge.i.i.i ] ; 4 uses
  %i.aa = load atomic i64, ptr %.334.i.i.i monotonic, align 8 ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call zeroext i1 @_mi_free_delayed_block(ptr noundef nonnull %.334.i.i.i)
  br i1 %i.ac, label %.loopexit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = load atomic ptr, ptr %i.u monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.027.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ah, %bb.g ] ; 2 uses
  %i.ae = ptrtoint ptr %.027.i.i.i to i64
  store atomic i64 %i.ae, ptr %.334.i.i.i monotonic, align 8
  %i.af = cmpxchg weak ptr %i.u, ptr %.027.i.i.i, ptr %.334.i.i.i release monotonic, align 8 ; 2 uses
  %i.ag = extractvalue { ptr, i1 } %i.af, 1
  %i.ah = extractvalue { ptr, i1 } %i.af, 0
  br i1 %i.ag, label %.loopexit.i.i.i, label %bb.g, !llvm.loop !47

.loopexit.i.i.i:                                  ; preds = %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %_mi_heap_delayed_free_partial.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !48

_mi_heap_delayed_free_partial.exit.i.i:           ; preds = %.loopexit.i.i.i
  %i.ai = icmp eq ptr %i.t, null
  br i1 %i.ai, label %py_mimalloc_print_stats.exit, label %_mi_heap_delayed_free_partial.exit.thread.i.i

_mi_heap_delayed_free_partial.exit.thread.i.i:    ; preds = %_mi_heap_delayed_free_partial.exit.i.i, %.critedge.i.i.i, %mi_heap_get_default.exit.i
  %i.aj = getelementptr i8, ptr %i.t, i64 3024
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !196
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %py_mimalloc_print_stats.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_mi_heap_delayed_free_partial.exit.thread.i.i
  %i.am = getelementptr i8, ptr %i.t, i64 1040
  br label %.preheader.i.i.split.i.i

.preheader.i.i.split.i.i:                         ; preds = %.critedge.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.0.0.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.0.2.i, %.critedge.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.6.2.i, %.critedge.i.i.i.i ] ; 2 uses
  %.sroa.9.0.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.9.2.i, %.critedge.i.i.i.i ] ; 2 uses
  %.sroa.12.0.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.12.2.i, %.critedge.i.i.i.i ] ; 2 uses
  %.sroa.15.0.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.15.2.i, %.critedge.i.i.i.i ] ; 2 uses
  %.02229.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.do, %.critedge.i.i.i.i ] ; 2 uses
  %i.an = getelementptr [24 x i8], ptr %i.am, i64 %.02229.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i3.i.i.i, label %.critedge.i.i.i.i, label %mi_heap_area_visitor.exit.i.i.i

mi_heap_area_visitor.exit.i.i.i:                  ; preds = %.preheader.i.i.split.i.i, %_mi_heap_area_init.exit
  %.sroa.0.1.i = phi i64 [ %i.di, %_mi_heap_area_init.exit ], [ %.sroa.0.0.i, %.preheader.i.i.split.i.i ]
  %.sroa.6.1.i = phi i64 [ %i.dk, %_mi_heap_area_init.exit ], [ %.sroa.6.0.i, %.preheader.i.i.split.i.i ]
  %.sroa.9.1.i = phi i64 [ %i.dl, %_mi_heap_area_init.exit ], [ %.sroa.9.0.i, %.preheader.i.i.split.i.i ]
  %.sroa.12.1.i = phi i64 [ %i.dm, %_mi_heap_area_init.exit ], [ %.sroa.12.0.i, %.preheader.i.i.split.i.i ]
  %.sroa.15.1.i = phi i64 [ %i.dn, %_mi_heap_area_init.exit ], [ %.sroa.15.0.i, %.preheader.i.i.split.i.i ]
  %.020.i4.i.i.i = phi ptr [ %i.aq, %_mi_heap_area_init.exit ], [ %i.ao, %.preheader.i.i.split.i.i ] ; 15 uses
  %i.ap = getelementptr i8, ptr %.020.i4.i.i.i, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !197 ; 2 uses
  %i.ar = getelementptr i8, ptr %.020.i4.i.i.i, i64 40 ; 2 uses
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %mi_heap_area_visitor.exit.i.i.i
  %.0.i.i.i10 = phi i64 [ %i.as, %mi_heap_area_visitor.exit.i.i.i ], [ %i.aw, %bb.h ] ; 3 uses
  %i.at = and i64 %.0.i.i.i10, 3
  %i.au = cmpxchg weak ptr %i.ar, i64 %.0.i.i.i10, i64 %i.at acq_rel acquire, align 8 ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.h, !llvm.loop !73

bb.i:                                             ; preds = %bb.h
  %i.ax = and i64 %.0.i.i.i10, -4                 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %.020.i4.i.i.i, i64 10
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !74 ; 2 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = load atomic i64, ptr %i.ay monotonic, align 8 ; 2 uses
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = icmp ne i16 %i.bb, 0
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph.i.i.i11, label %._crit_edge.i.i.i

.lr.ph.i.i.i11:                                   ; preds = %bb.j, %.lr.ph.i.i.i11
  %i.bh = phi i64 [ %i.bk, %.lr.ph.i.i.i11 ], [ %i.bd, %bb.j ]
  %.02934.i.i.i = phi i32 [ %i.bj, %.lr.ph.i.i.i11 ], [ 1, %bb.j ]
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = add nuw nsw i32 %.02934.i.i.i, 1        ; 3 uses
  %i.bk = load atomic i64, ptr %i.bi monotonic, align 8 ; 2 uses
  %i.bl = icmp ne i64 %i.bk, 0
  %1 = icmp samesign ule i32 %i.bj, %i.bc
  %i.bm = select i1 %i.bl, i1 %1, i1 false
  br i1 %i.bm, label %.lr.ph.i.i.i11, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i11, %bb.j
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.j ], [ %i.bj, %.lr.ph.i.i.i11 ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.ay, %bb.j ], [ %i.bi, %.lr.ph.i.i.i11 ]
  %i.bn = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.bc
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bo = getelementptr i8, ptr %.020.i4.i.i.i, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bq = ptrtoint ptr %i.bp to i64
  store atomic i64 %i.bq, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.ay, ptr %i.bo, align 8, !tbaa !57
  %i.br = getelementptr i8, ptr %.020.i4.i.i.i, i64 24 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !18
  %i.bt = sub i32 %i.bs, %.029.lcssa.i.i.i
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.l, %bb.k, %bb.i
  %i.bu = getelementptr i8, ptr %.020.i4.i.i.i, i64 32 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.bv, null
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.m

bb.m:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  %i.bw = getelementptr i8, ptr %.020.i4.i.i.i, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.sink.split.i.i, label %.preheader.i.i, !prof !55

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.ca, %.preheader.i.i ], [ %i.bv, %bb.m ] ; 2 uses
  %i.bz = load atomic i64, ptr %.0.i.i monotonic, align 8 ; 2 uses
  %i.ca = inttoptr i64 %i.bz to ptr
  %.not23.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not23.i.i, label %bb.n, label %.preheader.i.i, !llvm.loop !77

bb.n:                                             ; preds = %.preheader.i.i
  %i.cb = ptrtoint ptr %i.bx to i64
  store atomic i64 %i.cb, ptr %.0.i.i monotonic, align 8
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !57
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.n, %bb.m
  %.sink.i.i = phi ptr [ %i.cc, %bb.n ], [ %i.bv, %bb.m ]
  store ptr %.sink.i.i, ptr %i.bw, align 8, !tbaa !11
  store ptr null, ptr %i.bu, align 8, !tbaa !57
  %i.cd = getelementptr i8, ptr %.020.i4.i.i.i, i64 15 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = and i8 %i.ce, -2
  store i8 %i.cf, ptr %i.cd, align 1
  br label %_mi_page_free_collect.exit.i

_mi_page_free_collect.exit.i:                     ; preds = %.sink.split.i.i, %_mi_page_thread_free_collect.exit.i.i
  %i.cg = getelementptr i8, ptr %.020.i4.i.i.i, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !21 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %mi_page_usable_block_size.exit.i, label %.thread, !prof !55

.thread:                                          ; preds = %_mi_page_free_collect.exit.i
  %i.cj = load i32, ptr %.020.i4.i.i.i, align 8, !tbaa !52
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 16               ; 3 uses
  %i.cm = getelementptr i8, ptr %.020.i4.i.i.i, i64 12
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !218
  %i.co = zext i16 %i.cn to i64
  %i.cp = mul nuw i64 %i.cl, %i.co
  %i.cq = getelementptr i8, ptr %.020.i4.i.i.i, i64 10
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !74
  %i.cs = zext i16 %i.cr to i64
  %i.ct = mul nuw i64 %i.cl, %i.cs
  br label %_mi_heap_area_init.exit

mi_page_usable_block_size.exit.i:                 ; preds = %_mi_page_free_collect.exit.i
  %i.cu = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.cv = getelementptr i8, ptr %.020.i4.i.i.i, i64 12
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !218
  %i.cx = zext i16 %i.cw to i64
  %i.cy = mul nuw nsw i64 %i.cx, %i.cu
  %i.cz = getelementptr i8, ptr %.020.i4.i.i.i, i64 10
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !74
  %i.db = zext i16 %i.da to i64
  %i.dc = mul nuw nsw i64 %i.db, %i.cu
  br label %_mi_heap_area_init.exit

_mi_heap_area_init.exit:                          ; preds = %mi_page_usable_block_size.exit.i, %.thread
  %i.dd = phi i64 [ %i.ct, %.thread ], [ %i.dc, %mi_page_usable_block_size.exit.i ]
  %i.de = phi i64 [ %i.cp, %.thread ], [ %i.cy, %mi_page_usable_block_size.exit.i ]
  %.0.i1721.i15 = phi i64 [ %i.cl, %.thread ], [ %i.cu, %mi_page_usable_block_size.exit.i ]
  %i.df = getelementptr i8, ptr %.020.i4.i.i.i, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !18
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = add i64 %.sroa.0.1.i, %i.dh             ; 2 uses
  %i.dj = mul i64 %.0.i1721.i15, %i.dh            ; 2 uses
  %i.dk = add i64 %i.dj, %.sroa.6.1.i             ; 2 uses
  %i.dl = add i64 %i.dj, %.sroa.9.1.i             ; 2 uses
  %i.dm = add i64 %i.de, %.sroa.12.1.i            ; 2 uses
  %i.dn = add i64 %i.dd, %.sroa.15.1.i            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %mi_heap_area_visitor.exit.i.i.i, !llvm.loop !199

.critedge.i.i.i.i:                                ; preds = %_mi_heap_area_init.exit, %.preheader.i.i.split.i.i
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.i, %.preheader.i.i.split.i.i ], [ %i.di, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.6.2.i = phi i64 [ %.sroa.6.0.i, %.preheader.i.i.split.i.i ], [ %i.dk, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.i, %.preheader.i.i.split.i.i ], [ %i.dl, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.12.0.i, %.preheader.i.i.split.i.i ], [ %i.dm, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.15.2.i = phi i64 [ %.sroa.15.0.i, %.preheader.i.i.split.i.i ], [ %i.dn, %_mi_heap_area_init.exit ] ; 2 uses
  %i.do = add nuw nsw i64 %.02229.i.i.i.i, 1      ; 2 uses
  %exitcond.i.i.i.i = icmp eq i64 %i.do, 75
  br i1 %exitcond.i.i.i.i, label %py_mimalloc_print_stats.exit, label %.preheader.i.i.split.i.i, !llvm.loop !200

py_mimalloc_print_stats.exit:                     ; preds = %.critedge.i.i.i.i, %_mi_heap_delayed_free_partial.exit.i.i, %_mi_heap_delayed_free_partial.exit.thread.i.i
  %.sroa.0.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.0.2.i, %.critedge.i.i.i.i ]
  %.sroa.6.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.6.2.i, %.critedge.i.i.i.i ]
  %.sroa.9.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.9.2.i, %.critedge.i.i.i.i ]
  %.sroa.12.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.12.2.i, %.critedge.i.i.i.i ]
  %.sroa.15.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.15.2.i, %.critedge.i.i.i.i ]
  %i.dp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.184, i64 noundef %.sroa.0.3.i) #55 ; 0 uses
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.185, i64 noundef %.sroa.6.3.i) #55 ; 0 uses
  %i.dr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.186, i64 noundef %.sroa.9.3.i) #55 ; 0 uses
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.187, i64 noundef %.sroa.12.3.i) #55 ; 0 uses
  %i.dt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.188, i64 noundef %.sroa.15.3.i) #55 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  %.0.in.i7.not = icmp eq ptr %.0.in.in.i, @_PyObject_Malloc
  br i1 %.0.in.i7.not, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.du = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !582
  %i.dw = getelementptr i8, ptr %i.dv, i64 10952
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !554 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.dy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.189, i32 noundef 512, i32 noundef 32) #55 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false), !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !105
  %i.dz = getelementptr i8, ptr %i.dx, i64 520
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !562 ; 2 uses
  %.not142.i = icmp eq i32 %i.ea, 0
  br i1 %.not142.i, label %._crit_edge.i, label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %bb.p
  %i.eb = getelementptr i8, ptr %i.dx, i64 512
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !563
  %wide.trip.count.i = zext i32 %i.ea to i64
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph134.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph134.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.0113132.i = phi i32 [ 0, %.lr.ph134.i ], [ %.1114.i, %.loopexit.i ] ; 2 uses
  %.0115131.i = phi i64 [ 0, %.lr.ph134.i ], [ %.2117.i, %.loopexit.i ] ; 3 uses
  %.0124130.i = phi i64 [ 0, %.lr.ph134.i ], [ %.1125.i, %.loopexit.i ] ; 2 uses
  %i.ed = getelementptr [48 x i8], ptr %i.ec, i64 %indvars.iv.i ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !564 ; 3 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eg = add i64 %.0124130.i, 1                  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ed, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !613
  %i.ej = add i32 %i.ei, %.0113132.i              ; 2 uses
  %i.ek = and i64 %i.ee, 16383
  %.not.i9 = icmp eq i64 %i.ek, 0
  %i.el = add i64 %.0115131.i, 16384
  %.biased.i = add i64 %i.ee, 16383
  %.0122.i = and i64 %.biased.i, -16384           ; 2 uses
  %.1116.i = select i1 %.not.i9, i64 %.0115131.i, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %i.ed, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !567
  %i.eo = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.ep = icmp ult i64 %.0122.i, %i.eo
  br i1 %i.ep, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %.1123129.i = phi i64 [ %i.fl, %bb.t ], [ %.0122.i, %bb.r ] ; 2 uses
  %i.eq = inttoptr i64 %.1123129.i to ptr         ; 2 uses
  %i.er = load i32, ptr %i.eq, align 16384, !tbaa !60 ; 3 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.et = getelementptr i8, ptr %i.eq, i64 36
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !594 ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %i.a, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !105
  %i.ey = add i64 %i.ex, 1
end_hunk_7
