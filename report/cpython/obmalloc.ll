inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_mi_free_generic:bb.a
  %i.g = zext i32 %i.f to i64
  %i.h = icmp ugt i32 %i.d, 7
  br i1 %i.h, label %bb.c, label %_mi_page_start.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i32 %i.d, 65
  br i1 %i.i, label %bb.d, label %_mi_page_start.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = mul nuw nsw i64 %i.e, 3
  br label %_mi_page_start.exit.thread.i

_mi_page_start.exit.thread.i:                     ; preds = %bb.d, %bb.b
  %.0.i.i.i.ph.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ]
  %i.k = ptrtoint ptr %1 to i64
  %i.l = getelementptr i8, ptr %0, i64 264
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.k, %i.m
  %i.o = sdiv exact i64 %i.n, 80
  %i.p = shl i64 %i.o, 16
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 %.0.i.i.i.ph.i
  %i.s = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  br label %_mi_page_ptr_unalign.exit

_mi_page_start.exit.i:                            ; preds = %bb.c
  %i.v = icmp ult i32 %i.d, 513
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.e, i64 0
  %i.w = ptrtoint ptr %1 to i64
  %i.x = getelementptr i8, ptr %0, i64 264
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.w, %i.y
  %i.aa = sdiv exact i64 %i.z, 80
  %i.ab = shl i64 %i.aa, 16
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 %spec.select.i.i.i.i
  %i.ae = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i32 %i.d, -1
  br i1 %i.ah, label %_mi_page_ptr_unalign.exit, label %_mi_segment_page_start.exit.i.i, !prof !56

_mi_segment_page_start.exit.i.i:                  ; preds = %_mi_page_start.exit.i
  %i.ai = shl nuw nsw i64 %i.g, 16
  br label %_mi_page_ptr_unalign.exit

_mi_page_ptr_unalign.exit:                        ; preds = %_mi_page_start.exit.thread.i, %_mi_page_start.exit.i, %_mi_segment_page_start.exit.i.i
  %i.aj = phi i64 [ %i.ag, %_mi_segment_page_start.exit.i.i ], [ %i.u, %_mi_page_start.exit.thread.i ], [ %i.ag, %_mi_page_start.exit.i ]
  %i.ak = phi i64 [ %i.ae, %_mi_segment_page_start.exit.i.i ], [ %i.s, %_mi_page_start.exit.thread.i ], [ %i.ae, %_mi_page_start.exit.i ]
  %.0.i.i = phi i64 [ %i.ai, %_mi_segment_page_start.exit.i.i ], [ %i.e, %_mi_page_start.exit.thread.i ], [ %i.e, %_mi_page_start.exit.i ]
  %i.al = urem i64 %i.aj, %.0.i.i
  %i.am = sub i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_mi_page_ptr_unalign.exit
  %i.ao = phi ptr [ %i.an, %_mi_page_ptr_unalign.exit ], [ %3, %bb.a ] ; 3 uses
  br i1 %2, label %bb.f, label %bb.j, !prof !55

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = ptrtoint ptr %i.aq to i64
  store atomic i64 %i.ar, ptr %i.ao monotonic, align 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !57
  %i.as = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !18
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.g, label %bb.h, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void @_mi_page_retire(ptr noundef nonnull %1)
  br label %_mi_free_block.exit

bb.h:                                             ; preds = %bb.f
  %.val16.i = load i8, ptr %i.a, align 2
  %i.aw = trunc i8 %.val16.i to i1
  br i1 %i.aw, label %bb.i, label %_mi_free_block.exit, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void @_mi_page_unfull(ptr noundef nonnull %1)
  br label %_mi_free_block.exit

bb.j:                                             ; preds = %bb.e
  tail call fastcc void @_mi_free_block_mt(ptr noundef nonnull %1, ptr noundef %i.ao)
  br label %_mi_free_block.exit

_mi_free_block.exit:                              ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b, !prof !17

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
  br i1 %i.ac, label %bb.e, label %bb.h, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.s)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.e, ptr noundef %i.s, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_retire(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14         ; 3 uses
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  %i.c = and i8 %i.b, -3                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 2
  %i.d = trunc i8 %i.b to i1
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21 ; 6 uses
  br i1 %i.d, label %mi_page_queue_of.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %.pre to i64
  %i.f = add nuw nsw i64 %i.e, 7
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
  %1 = and i64 %i.s, 4294967295
  %i.t = lshr i64 %i.q, %1
  %i.u = and i64 %i.t, 3
  %i.v = shl nuw nsw i64 %i.r, 2
  %reass.sub = sub nsw i64 %i.u, %i.v
  %i.w = add nsw i64 %reass.sub, 249
  %i.x = and i64 %i.w, 255
  br label %mi_page_queue_of.exit.thread

mi_page_queue_of.exit.thread:                     ; preds = %bb.f, %bb.d, %bb.b
  %.ph = phi i64 [ 1, %bb.b ], [ %i.k, %bb.d ], [ %i.x, %bb.f ]
  %i.y = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.z = load atomic i64, ptr %i.y monotonic, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr i8, ptr %i.aa, i64 1040
  %i.ac = getelementptr [24 x i8], ptr %i.ab, i64 %.ph
  br label %bb.g

mi_page_queue_of.exit:                            ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 2816   ; 2 uses
  %i.ah = icmp ult i32 %.pre, 131073
  br i1 %i.ah, label %bb.g, label %.critedge, !prof !49

bb.g:                                             ; preds = %mi_page_queue_of.exit.thread, %mi_page_queue_of.exit
  %i.ai = phi ptr [ %i.ac, %mi_page_queue_of.exit.thread ], [ %i.ag, %mi_page_queue_of.exit ] ; 7 uses
  %i.aj = phi ptr [ %i.y, %mi_page_queue_of.exit.thread ], [ %i.ad, %mi_page_queue_of.exit ] ; 4 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val = load i64, ptr %i.ak, align 8, !tbaa !61
  %i.al = icmp ult i64 %.val, 131073
  br i1 %i.al, label %bb.h, label %.critedge, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.ai, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ao = icmp eq ptr %i.an, %0
  br i1 %i.ao, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.aq = icmp eq ptr %i.ap, %0
  br i1 %i.aq, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp samesign ult i32 %.pre, 16385
  %i.as = select i1 %i.ar, i8 34, i8 10
  %i.at = getelementptr i8, ptr %0, i64 15        ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = and i8 %i.au, 1
  %i.aw = or disjoint i8 %i.av, %i.as
  store i8 %i.aw, ptr %i.at, align 1
  %i.ax = load atomic i64, ptr %i.aj monotonic, align 8
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 1040
  %i.ba = ptrtoint ptr %i.ai to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 24                ; 4 uses
  %i.be = getelementptr i8, ptr %i.ay, i64 3032   ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !65
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bh = getelementptr i8, ptr %i.ay, i64 3040   ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !66
  %i.bj = icmp ugt i64 %i.bd, %i.bi
  br i1 %i.bj, label %bb.m, label %_PyMem_mi_page_maybe_free.exit

bb.m:                                             ; preds = %bb.l
  store i64 %i.bd, ptr %i.bh, align 8, !tbaa !66
  br label %_PyMem_mi_page_maybe_free.exit

.critedge:                                        ; preds = %mi_page_queue_of.exit.thread30, %mi_page_queue_of.exit, %bb.h, %bb.i, %bb.g
  %i.bk = phi ptr [ %i.ag, %mi_page_queue_of.exit ], [ %i.ai, %bb.h ], [ %i.ai, %bb.i ], [ %i.ai, %bb.g ], [ %i.p, %mi_page_queue_of.exit.thread30 ]
  %i.bl = phi ptr [ %i.ad, %mi_page_queue_of.exit ], [ %i.aj, %bb.h ], [ %i.aj, %bb.i ], [ %i.aj, %bb.g ], [ %i.m, %mi_page_queue_of.exit.thread30 ] ; 2 uses
  store i8 %i.c, ptr %i.a, align 2
  %i.bm = load atomic i64, ptr %i.bl monotonic, align 8
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22
  %i.bp = getelementptr i8, ptr %i.bo, i64 32     ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %i.bk, ptr noundef nonnull %0)
  store atomic i64 0, ptr %i.bl release, align 8
  %i.bq = ptrtoint ptr %0 to i64
  %i.br = add i64 %i.bq, -1
  %i.bs = and i64 %i.br, -33554432
  %i.bt = inttoptr i64 %i.bs to ptr               ; 4 uses
  %i.bu = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %0, ptr noundef %i.bp) ; 0 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 208
  %i.bw = load i64, ptr %i.bv, align 16, !tbaa !67 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.bt, ptr noundef %i.bp)
  br label %_PyMem_mi_page_maybe_free.exit

bb.o:                                             ; preds = %.critedge
  %i.by = getelementptr i8, ptr %i.bt, i64 192
  %i.bz = load i64, ptr %i.by, align 64, !tbaa !72
  %i.ca = icmp eq i64 %i.bw, %i.bz
  br i1 %i.ca, label %bb.p, label %_PyMem_mi_page_maybe_free.exit

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.bt, ptr noundef %i.bp)
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
  %.02934.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ 1, %bb.f ] ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = add nuw nsw i32 %.02934.i.i, 1          ; 2 uses
  %i.ai = load atomic i64, ptr %i.ag monotonic, align 8 ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = icmp samesign ult i32 %.02934.i.i, %i.aa
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %.029.lcssa.i.i = phi i32 [ 1, %bb.f ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %.028.lcssa.i.i = phi ptr [ %i.w, %bb.f ], [ %i.ag, %.lr.ph.i.i ]
  %i.am = icmp samesign ugt i32 %.029.lcssa.i.i, %i.aa
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.an = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57
  %i.ap = ptrtoint ptr %i.ao to i64
  store atomic i64 %i.ap, ptr %.028.lcssa.i.i monotonic, align 8
  store ptr %i.w, ptr %i.an, align 8, !tbaa !57
  %i.aq = getelementptr i8, ptr %i.m, i64 24      ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !18
  %i.as = sub i32 %i.ar, %.029.lcssa.i.i
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i
end_hunk_0
begin_hunk_1_@mi_rezalloc_aligned:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext true)
  br label %mi_heap_rezalloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext true)
  br label %mi_heap_rezalloc_aligned.exit

mi_heap_rezalloc_aligned.exit:                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_recalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned_at.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  br label %mi_heap_recalloc_aligned_at.exit

mi_heap_recalloc_aligned_at.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_recalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = icmp ult i64 %3, 9
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext true)
  br label %mi_heap_recalloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %0 to i64
  %i.i = urem i64 %i.h, %3
  %i.j = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %i.i, i1 noundef zeroext true)
  br label %mi_heap_recalloc_aligned.exit

mi_heap_recalloc_aligned.exit:                    ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.d ], [ %i.j, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_malloc_size(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_usable_size.exit, label %bb.b

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
  %.val.i.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %_mi_segment_page_start.exit.i.i.i.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  br label %mi_usable_size.exit

_mi_segment_page_start.exit.i.i.i.i.i:            ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !52
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  br label %mi_usable_size.exit

bb.e:                                             ; preds = %bb.b
  %i.x = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef %0)
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.a, %bb.d, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.e
  %.1.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ], [ %i.t, %bb.d ], [ %i.w, %_mi_segment_page_start.exit.i.i.i.i.i ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_malloc_usable_size(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_usable_size.exit, label %bb.b

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
  %.val.i.i = load i8, ptr %i.o, align 2
  %i.p = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %bb.e, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %_mi_segment_page_start.exit.i.i.i.i.i, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.r to i64
  br label %mi_usable_size.exit

_mi_segment_page_start.exit.i.i.i.i.i:            ; preds = %bb.c
  %i.u = load i32, ptr %i.n, align 8, !tbaa !52
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 16
  br label %mi_usable_size.exit

bb.e:                                             ; preds = %bb.b
  %i.x = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.e, ptr noundef %i.n, ptr noundef %0)
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.a, %bb.d, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.e
  %.1.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.e ], [ %i.t, %bb.d ], [ %i.w, %_mi_segment_page_start.exit.i.i.i.i.i ]
  ret i64 %.1.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_malloc_good_size(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ult i64 %0, 131073
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 7
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = icmp samesign ult i64 %0, 9
  br i1 %i.d, label %mi_bin.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %0, 65
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw nsw i64 %i.c, 1
  %i.g = and i64 %i.f, 30
  br label %mi_bin.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false) ; 2 uses
  %i.j = sub nsw i64 61, %i.i
  %1 = and i64 %i.j, 4294967295
  %i.k = lshr i64 %i.h, %1
  %i.l = and i64 %i.k, 3
  %i.m = shl nuw nsw i64 %i.i, 2
  %reass.sub = sub nsw i64 %i.l, %i.m
  %i.n = add nsw i64 %reass.sub, 249
  %i.o = and i64 %i.n, 255
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i64 [ %i.o, %bb.e ], [ %i.g, %bb.d ], [ 1, %bb.b ]
  %i.p = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 %.0.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  br label %mi_good_size.exit

bb.f:                                             ; preds = %bb.a
  %i.s = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = icmp samesign ult i64 %i.t, 2
  %i.v = add i64 %0, -1
  %i.w = add i64 %i.v, %i.s                       ; 3 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = sub i64 0, %i.s
  %i.y = and i64 %i.w, %i.x
  br label %mi_good_size.exit

bb.h:                                             ; preds = %bb.f
  %i.z = urem i64 %i.w, %i.s
  %i.aa = sub nuw i64 %i.w, %i.z
  br label %mi_good_size.exit

mi_good_size.exit:                                ; preds = %mi_bin.exit.i, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.r, %mi_bin.exit.i ], [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @mi_good_size(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp ult i64 %0, 131073
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %0, 7
  %i.c = lshr i64 %i.b, 3                         ; 2 uses
  %i.d = icmp samesign ult i64 %0, 9
  br i1 %i.d, label %mi_bin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i64 %0, 65
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw nsw i64 %i.c, 1
  %i.g = and i64 %i.f, 30
  br label %mi_bin.exit

bb.e:                                             ; preds = %bb.c
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false) ; 2 uses
  %i.j = sub nsw i64 61, %i.i
  %1 = and i64 %i.j, 4294967295
  %i.k = lshr i64 %i.h, %1
  %i.l = and i64 %i.k, 3
  %i.m = shl nuw nsw i64 %i.i, 2
  %reass.sub = sub nsw i64 %i.l, %i.m
  %i.n = add nsw i64 %reass.sub, 249
  %i.o = and i64 %i.n, 255
  br label %mi_bin.exit

mi_bin.exit:                                      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %i.g, %bb.d ], [ 1, %bb.b ]
  %i.p = getelementptr [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1040), i64 %.0.i
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !61
  br label %_mi_align_up.exit

bb.f:                                             ; preds = %bb.a
  %i.s = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91 ; 4 uses
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = icmp samesign ult i64 %i.t, 2
  %i.v = add i64 %0, -1
  %i.w = add i64 %i.v, %i.s                       ; 3 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = sub i64 0, %i.s
  %i.y = and i64 %i.w, %i.x
  br label %_mi_align_up.exit

bb.h:                                             ; preds = %bb.f
  %i.z = urem i64 %i.w, %i.s
  %i.aa = sub nuw i64 %i.w, %i.z
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.h, %bb.g, %mi_bin.exit
  %.0 = phi i64 [ %i.r, %mi_bin.exit ], [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @mi_cfree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @mi_is_in_heap_region(ptr noundef %0)
  %i.b = icmp ne ptr %0, null
  %or.cond.not = and i1 %i.b, %i.a
  br i1 %or.cond.not, label %bb.b, label %mi_free.exit, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = add i64 %i.c, -1
  %i.e = and i64 %i.d, -33554432                  ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #60, !srcloc !58
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr i8, ptr %i.f, i64 256
  %i.j = load atomic i64, ptr %i.i monotonic, align 256
  %i.k = icmp eq i64 %i.j, %i.h
  %i.l = sub i64 %i.c, %i.e
  %i.m = lshr i64 %i.l, 16
  %i.n = getelementptr i8, ptr %i.f, i64 264
  %i.o = getelementptr [80 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s     ; 6 uses
  br i1 %i.k, label %bb.c, label %bb.g, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.t, i64 14
  %i.v = load i8, ptr %i.u, align 2, !tbaa !60
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.f, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.t, i64 32       ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = ptrtoint ptr %i.y to i64
  store atomic i64 %i.z, ptr %0 monotonic, align 8
  store ptr %0, ptr %i.x, align 8, !tbaa !57
  %i.aa = getelementptr i8, ptr %i.t, i64 24      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !18
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !18
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %mi_free.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_mi_page_retire(ptr noundef %i.t)
  br label %mi_free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_mi_free_generic(ptr noundef nonnull %i.f, ptr noundef %i.t, i1 noundef zeroext true, ptr noundef nonnull %0)
  br label %mi_free.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_mi_free_generic(ptr noundef nonnull %i.f, ptr noundef %i.t, i1 noundef zeroext false, ptr noundef nonnull %0)
  br label %mi_free.exit

mi_free.exit:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define hidden noundef zeroext i1 @mi_is_in_heap_region(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_mi_segment_of.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = add i64 %i.b, -1                         ; 4 uses
  %i.d = and i64 %i.c, -33554432                  ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = icmp ugt i64 %i.c, 43980465111039
  %i.g = lshr i64 %i.c, 25
  %i.h = and i64 %i.g, 63
  %.sink.i.i.i = select i1 %i.f, i64 0, i64 %i.h  ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 43980465111040)
  %.0.i.i.i = lshr i64 %i.i, 31                   ; 6 uses
  %i.j = getelementptr [8 x i8], ptr @mi_segment_map, i64 %.0.i.i.i
  %i.k = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = shl nuw i64 1, %.sink.i.i.i              ; 2 uses
  %i.m = and i64 %i.k, %i.l
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %_mi_segment_of.exit.i, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %.0.i.i.i, 20480
  br i1 %i.n, label %_mi_segment_of.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %i.l, -1
  %i.p = and i64 %i.k, %i.o                       ; 2 uses
  %.not45.i.i = icmp eq i64 %i.p, 0
  br i1 %.not45.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.q, label %_mi_segment_of.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.039.i.i = phi i64 [ %i.r, %.preheader.i.i ], [ %.0.i.i.i, %bb.e ]
  %i.r = add nsw i64 %.039.i.i, -1                ; 4 uses
  %i.s = getelementptr [8 x i8], ptr @mi_segment_map, i64 %i.r
  %i.t = load atomic i64, ptr %i.s monotonic, align 8 ; 3 uses
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp ne i64 %i.r, 0
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %.preheader.i.i, label %bb.f, !llvm.loop !94

bb.f:                                             ; preds = %.preheader.i.i
  %.not46.i.i = icmp eq i64 %i.t, 0
  br i1 %.not46.i.i, label %_mi_segment_of.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.lcssa.sink.i.i = phi i64 [ %i.p, %bb.d ], [ %i.t, %bb.f ]
  %.140.i.i = phi i64 [ %.0.i.i.i, %bb.d ], [ %i.r, %bb.f ]
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.sink.i.i, i1 true)
  %.138.i.i = xor i64 %i.x, 63
  %.neg58.i.i = sub i64 %.140.i.i, %.0.i.i.i
  %.neg56.i.i = sub nsw i64 %.138.i.i, %.sink.i.i.i
  %i.y = shl i64 %.neg58.i.i, 31
  %i.z = shl nsw i64 %.neg56.i.i, 25
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z   ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_mi_segment_of.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2864), align 8, !tbaa !95
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = getelementptr i8, ptr %i.ab, i64 216
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96
  %.not50.i.i = icmp eq i64 %i.af, %i.ah
  br i1 %.not50.i.i, label %bb.i, label %_mi_segment_of.exit.thread.i, !prof !55

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.ab, i64 224
  %.val.i.i = load i64, ptr %i.ai, align 32, !tbaa !97
  %i.aj = shl i64 %.val.i.i, 16
  %i.ak = getelementptr i8, ptr %i.ab, i64 %i.aj
  %.not51.i.i = icmp ugt ptr %i.ak, %0
  br i1 %.not51.i.i, label %mi_is_valid_pointer.exit, label %_mi_segment_of.exit.thread.i

_mi_segment_of.exit.i:                            ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_mi_segment_of.exit.thread.i, label %mi_is_valid_pointer.exit

_mi_segment_of.exit.thread.i:                     ; preds = %_mi_segment_of.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.al = load atomic i64, ptr @mi_arena_count monotonic, align 64 ; 2 uses
  %.not2124.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not2124.not.i.i, label %mi_is_valid_pointer.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_mi_segment_of.exit.thread.i, %.critedge.i.i
  %.01525.i.i = phi i64 [ %i.aw, %.critedge.i.i ], [ 0, %_mi_segment_of.exit.thread.i ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr @mi_arenas, i64 %.01525.i.i
  %i.an = load atomic ptr, ptr %i.am acquire, align 8 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.an, null
  br i1 %.not.i2.i, label %.critedge.i.i, label %bb.j

end_hunk_1
begin_hunk_2_@_mi_prim_alloc_huge_os_pages:bb.a
; Function Attrs: nounwind uwtable
define hidden i64 @_mi_clock_end(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #55 ; 0 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !138
  %i.c = mul i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !140
  %i.f = sdiv i64 %i.e, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  %i.g = load i64, ptr @mi_clock_diff, align 8, !tbaa !105
  %i.h = add i64 %i.c, %i.f
  %i.i = add i64 %0, %i.g
  %i.j = sub i64 %i.h, %i.i
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define hidden range(i64 1, 0) i64 @_mi_os_numa_node_count_get() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = load atomic i64, ptr @_mi_numa_node_count acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 520), align 8, !tbaa !111
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %mi_option_get.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 512)), !inline_history !113
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.b, %bb.c
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 512), align 16, !tbaa !114 ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %mi_option_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %exitcond.not.i = icmp eq i32 %i.h, 256
  br i1 %exitcond.not.i, label %_mi_prim_numa_node_count.exit, label %bb.f, !llvm.loop !258

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.i13 = phi i32 [ 0, %bb.d ], [ %i.h, %bb.e ]
  %i.h = add nuw nsw i32 %.0.i13, 1               ; 4 uses
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 127, ptr noundef nonnull @.str.33, i32 noundef %i.h) #55 ; 0 uses
  %i.j = call i64 (i64, ...) @syscall(i64 noundef 21, ptr noundef nonnull %i.a, i32 noundef 4) #55
  %i.k = and i64 %i.j, 4294967295
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.e, label %split.i, !llvm.loop !258

split.i:                                          ; preds = %bb.f
  %i.l = zext nneg i32 %i.h to i64
  br label %_mi_prim_numa_node_count.exit

_mi_prim_numa_node_count.exit:                    ; preds = %bb.e, %split.i
  %.0.lcssa.i = phi i64 [ %i.l, %split.i ], [ 257, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.g

bb.g:                                             ; preds = %mi_option_get.exit, %_mi_prim_numa_node_count.exit
  %.0 = phi i64 [ %.0.lcssa.i, %_mi_prim_numa_node_count.exit ], [ %i.f, %mi_option_get.exit ] ; 3 uses
  store atomic i64 %.0, ptr @_mi_numa_node_count release, align 8
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.30, i64 noundef %.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.1 = phi i64 [ %.0, %bb.g ], [ %i.b, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i64 1, 4294967296) i64 @_mi_prim_numa_node_count() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %exitcond.not = icmp eq i32 %i.b, 256
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !258

bb.c:                                             ; preds = %bb.a, %bb.b
  %.08 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.b = add nuw nsw i32 %.08, 1                  ; 3 uses
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 127, ptr noundef nonnull @.str.33, i32 noundef %i.b) #55 ; 0 uses
  %i.d = call i64 (i64, ...) @syscall(i64 noundef 21, ptr noundef nonnull %i.a, i32 noundef 4) #55
  %i.e = and i64 %i.d, 4294967295
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %split, !llvm.loop !258

split:                                            ; preds = %bb.c
  %i.f = add nuw nsw i32 %.08, 1
  %i.g = zext nneg i32 %i.f to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %split
  %.0.lcssa = phi i64 [ %i.g, %split ], [ 257, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define hidden i32 @_mi_os_numa_node_get(ptr nofree readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_mi_os_numa_node_count.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @_mi_os_numa_node_count_get()
  br label %_mi_os_numa_node_count.exit

_mi_os_numa_node_count.exit:                      ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.e = icmp ult i64 %.0.i, 2
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_mi_os_numa_node_count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 0, ptr %i.a, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 0, ptr %i.b, align 8, !tbaa !105
  %i.f = call i64 (i64, ...) @syscall(i64 noundef 309, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null) #55
  %.not.i10 = icmp eq i64 %i.f, 0
  %i.g = load i64, ptr %i.a, align 8
  %.0.i11 = select i1 %.not.i10, i64 %i.g, i64 0  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %.not = icmp ult i64 %.0.i11, %.0.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = urem i64 %.0.i11, %.0.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.h, %bb.d ], [ %.0.i11, %bb.c ]
  %i.i = trunc i64 %.0 to i32
  br label %bb.f

bb.f:                                             ; preds = %_mi_os_numa_node_count.exit, %bb.e
  %.07 = phi i32 [ %i.i, %bb.e ], [ 0, %_mi_os_numa_node_count.exit ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_prim_numa_node() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 0, ptr %i.a, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 0, ptr %i.b, align 8, !tbaa !105
  %i.c = call i64 (i64, ...) @syscall(i64 noundef 309, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null) #55
  %.not = icmp eq i64 %i.c, 0
  %i.d = load i64, ptr %i.a, align 8
  %.0 = select i1 %.not, i64 %i.d, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext i8 @_mi_bin(i64 noundef %0) local_unnamed_addr #3 {
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
  %1 = and i64 %i.l, 4294967295
  %i.m = lshr i64 %i.i, %1
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 3
  %i.p = shl i8 %i.k, 2
  %reass.sub = sub i8 %i.o, %i.p
  %i.q = add i8 %reass.sub, -7
  br label %mi_bin.exit

mi_bin.exit:                                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i8 [ %i.q, %bb.e ], [ %i.g, %bb.c ], [ 1, %bb.a ], [ 73, %bb.d ]
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
  %3 = and i64 %i.bl, 4294967295
  %i.bm = lshr i64 %i.bi, %3
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %i.bo = and i8 %i.bn, 3
  %i.bp = shl i8 %i.bk, 2
  %reass.sub = sub i8 %i.bo, %i.bp
  %i.bq = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.n, %bb.m
  %.0.i.i = phi i8 [ %i.bq, %bb.n ], [ %i.bh, %bb.m ]
  %i.br = getelementptr i8, ptr %0, i64 1040
  br label %bb.o

bb.o:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.bs = getelementptr i8, ptr %.pn.i, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !61
  %i.bu = add i64 %i.bt, 7                        ; 4 uses
  %i.bv = lshr i64 %i.bu, 3                       ; 4 uses
  %i.bw = icmp ult i64 %i.bu, 16
  br i1 %i.bw, label %mi_bin.exit35.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp ult i64 %i.bu, 72
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = trunc nuw nsw i64 %i.bv to i8
  %i.bz = add nuw nsw i8 %i.by, 1
  %i.ca = and i8 %i.bz, 30
  br label %mi_bin.exit35.i

bb.r:                                             ; preds = %bb.p
  %i.cb = icmp ugt i64 %i.bu, 131079
  br i1 %i.cb, label %mi_bin.exit35.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false) ; 2 uses
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  %i.cf = sub nsw i64 61, %i.cd
  %4 = and i64 %i.cf, 4294967295
  %i.cg = lshr i64 %i.cc, %4
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = and i8 %i.ch, 3
  %i.cj = shl i8 %i.ce, 2
  %reass.sub42 = sub i8 %i.ci, %i.cj
  %i.ck = add i8 %reass.sub42, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.0.i34.i = phi i8 [ %i.ck, %bb.s ], [ %i.ca, %bb.q ], [ 1, %bb.o ], [ 73, %bb.r ]
  %i.cl = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.cm = icmp ugt ptr %.027.i, %i.br
  %i.cn = and i1 %i.cm, %i.cl
  br i1 %i.cn, label %bb.o, label %bb.t, !llvm.loop !261

bb.t:                                             ; preds = %mi_bin.exit35.i
  %i.co = add nuw nsw i64 %i.bv, 1
  %.not.i = icmp samesign ult i64 %i.bv, %i.ay
  %spec.select.i = select i1 %.not.i, i64 %i.co, i64 %i.ay ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.ay
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t, %bb.k
  %.145.i = phi i64 [ %spec.select.i, %bb.t ], [ 0, %bb.k ] ; 4 uses
  %i.cp = sub nsw i64 %i.ay, %.145.i
  %i.cq = add i64 %i.cp, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check, label %.lr.ph.i27.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cq, -4                      ; 3 uses
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
  %cmp.n = icmp eq i64 %i.cq, %n.vec
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
  %2 = and i64 %i.q, 4294967295
  %i.r = lshr i64 %i.o, %2
  %i.s = and i64 %i.r, 3
  %i.t = shl nuw nsw i64 %i.p, 2
  %reass.sub = sub nsw i64 %i.s, %i.t
  %i.u = add nsw i64 %reass.sub, 249
  %i.v = and i64 %i.u, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %mi_page_block_size.exit, %bb.d, %bb.e, %bb.f
  %.0.i.i.i = phi i64 [ %i.v, %bb.f ], [ %i.m, %bb.d ], [ 1, %mi_page_block_size.exit ], [ 73, %bb.e ]
  %i.w = getelementptr i8, ptr %0, i64 1040
  %i.x = getelementptr [24 x i8], ptr %i.w, i64 %.0.i.i.i
  tail call fastcc void @mi_page_queue_push(ptr noundef %0, ptr noundef %i.x, ptr noundef nonnull %1)
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
  %3 = and i64 %i.ac, 4294967295
  %i.ad = lshr i64 %i.z, %3
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = and i8 %i.ae, 3
  %i.ag = shl i8 %i.ab, 2
  %reass.sub = sub i8 %i.af, %i.ag
  %i.ah = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.i, %bb.h
  %.0.i.i = phi i8 [ %i.ah, %bb.i ], [ %i.y, %bb.h ]
  %i.ai = getelementptr i8, ptr %0, i64 1040
  br label %bb.j

bb.j:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.aj = getelementptr i8, ptr %.pn.i, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !61
  %i.al = add i64 %i.ak, 7                        ; 4 uses
  %i.am = lshr i64 %i.al, 3                       ; 4 uses
  %i.an = icmp ult i64 %i.al, 16
  br i1 %i.an, label %mi_bin.exit35.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp ult i64 %i.al, 72
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = trunc nuw nsw i64 %i.am to i8
  %i.aq = add nuw nsw i8 %i.ap, 1
  %i.ar = and i8 %i.aq, 30
  br label %mi_bin.exit35.i

bb.m:                                             ; preds = %bb.k
  %i.as = icmp ugt i64 %i.al, 131079
  br i1 %i.as, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add nsw i64 %i.am, -1                   ; 2 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false) ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i8
  %i.aw = sub nsw i64 61, %i.au
  %4 = and i64 %i.aw, 4294967295
  %i.ax = lshr i64 %i.at, %4
  %i.ay = trunc i64 %i.ax to i8
  %i.az = and i8 %i.ay, 3
  %i.ba = shl i8 %i.av, 2
  %reass.sub18 = sub i8 %i.az, %i.ba
  %i.bb = add i8 %reass.sub18, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.0.i34.i = phi i8 [ %i.bb, %bb.n ], [ %i.ar, %bb.l ], [ 1, %bb.j ], [ 73, %bb.m ]
  %i.bc = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bd = icmp ugt ptr %.027.i, %i.ai
  %i.be = and i1 %i.bd, %i.bc
  br i1 %i.be, label %bb.j, label %bb.o, !llvm.loop !261

bb.o:                                             ; preds = %mi_bin.exit35.i
  %i.bf = add nuw nsw i64 %i.am, 1
  %.not.i = icmp samesign ult i64 %i.am, %i.p
  %spec.select.i = select i1 %.not.i, i64 %i.bf, i64 %i.p ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.p
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o, %bb.f
  %.145.i = phi i64 [ %spec.select.i, %bb.o ], [ 0, %bb.f ] ; 4 uses
  %i.bg = sub nsw i64 %i.p, %.145.i
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
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
  %cmp.n = icmp eq i64 %i.bh, %n.vec
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
  %i.cs = getelementptr i8, ptr %i.u, i64 14
  %.val16.i.i = load i8, ptr %i.cs, align 2
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
  %1 = and i64 %i.dk, 4294967295
  %i.dl = lshr i64 %i.di, %1
  %i.dm = and i64 %i.dl, 3
  %i.dn = shl nuw nsw i64 %i.dj, 2
  %reass.sub = sub nsw i64 %i.dm, %i.dn
  %i.do = add nsw i64 %reass.sub, 249
  %i.dp = and i64 %i.do, 255
  br label %_mi_page_unfull.exit

_mi_page_unfull.exit:                             ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %i.dq = phi i64 [ 73, %bb.s ], [ %i.dp, %bb.t ], [ %i.dg, %bb.r ], [ 1, %bb.p ]
  %i.dr = getelementptr i8, ptr %i.cw, i64 1040
  %i.ds = getelementptr [24 x i8], ptr %i.dr, i64 %i.dq
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.ds, ptr noundef %i.cx, ptr noundef nonnull %i.u)
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
  %i.a = getelementptr i8, ptr %0, i64 14
  %.val = load i8, ptr %i.a, align 2
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
  %1 = and i64 %i.s, 4294967295
  %i.t = lshr i64 %i.q, %1
  %i.u = and i64 %i.t, 3
  %i.v = shl nuw nsw i64 %i.r, 2
  %reass.sub = sub nsw i64 %i.u, %i.v
  %i.w = add nsw i64 %reass.sub, 249
  %i.x = and i64 %i.w, 255
  br label %mi_heap_page_queue_of.exit

mi_heap_page_queue_of.exit:                       ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.y = phi i64 [ 73, %bb.e ], [ %i.x, %bb.f ], [ %i.o, %bb.d ], [ 1, %bb.b ]
  %i.z = getelementptr i8, ptr %i.e, i64 1040
  %i.aa = getelementptr [24 x i8], ptr %i.z, i64 %i.y
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.aa, ptr noundef %i.f, ptr noundef nonnull %0)
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
  %3 = and i64 %i.af, 4294967295
  %i.ag = lshr i64 %i.ac, %3
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 3
  %i.aj = shl i8 %i.ae, 2
  %reass.sub = sub i8 %i.ai, %i.aj
  %i.ak = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.ak, %bb.l ], [ %i.ab, %bb.k ]
  %i.al = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
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
  %4 = and i64 %i.az, 4294967295
  %i.ba = lshr i64 %i.aw, %4
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 3
  %i.bd = shl i8 %i.ay, 2
  %reass.sub60 = sub i8 %i.bc, %i.bd
  %i.be = add i8 %reass.sub60, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.be, %bb.q ], [ %i.au, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.bf = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bg = icmp ugt ptr %.027.i, %i.al
  %i.bh = and i1 %i.bg, %i.bf
  br i1 %i.bh, label %bb.m, label %bb.r, !llvm.loop !261

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bi = add nuw nsw i64 %i.ap, 1
  %.not.i = icmp samesign ult i64 %i.ap, %i.s
  %spec.select.i = select i1 %.not.i, i64 %i.bi, i64 %i.s ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.s
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.bj = sub nsw i64 %i.s, %.145.i
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bk, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bk, -4                      ; 3 uses
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
  %cmp.n = icmp eq i64 %i.bk, %n.vec
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
  %5 = and i64 %i.cm, 4294967295
  %i.cn = lshr i64 %i.cj, %5
  %i.co = trunc nuw nsw i64 %i.cn to i8
  %i.cp = and i8 %i.co, 3
  %i.cq = shl i8 %i.cl, 2
  %reass.sub61 = sub i8 %i.cp, %i.cq
  %i.cr = add i8 %reass.sub61, -7
  br label %mi_bin.exit.i39

mi_bin.exit.i39:                                  ; preds = %bb.y, %bb.x
  %.0.i.i40 = phi i8 [ %i.cr, %bb.y ], [ %i.ci, %bb.x ]
  %i.cs = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.z

bb.z:                                             ; preds = %mi_bin.exit35.i44, %mi_bin.exit.i39
  %.pn.i41 = phi ptr [ %0, %mi_bin.exit.i39 ], [ %.027.i42, %mi_bin.exit35.i44 ] ; 2 uses
  %.027.i42 = getelementptr i8, ptr %.pn.i41, i64 -24 ; 2 uses
  %i.ct = getelementptr i8, ptr %.pn.i41, i64 -8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !61
  %i.cv = add i64 %i.cu, 7                        ; 4 uses
  %i.cw = lshr i64 %i.cv, 3                       ; 4 uses
  %i.cx = icmp ult i64 %i.cv, 16
  br i1 %i.cx, label %mi_bin.exit35.i44, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = icmp ult i64 %i.cv, 72
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = trunc nuw nsw i64 %i.cw to i8
  %i.da = add nuw nsw i8 %i.cz, 1
  %i.db = and i8 %i.da, 30
  br label %mi_bin.exit35.i44

bb.ac:                                            ; preds = %bb.aa
  %i.dc = icmp ugt i64 %i.cv, 131079
  br i1 %i.dc, label %mi_bin.exit35.i44, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.de = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dd, i1 false) ; 2 uses
  %i.df = trunc nuw nsw i64 %i.de to i8
  %i.dg = sub nsw i64 61, %i.de
  %6 = and i64 %i.dg, 4294967295
  %i.dh = lshr i64 %i.dd, %6
  %i.di = trunc i64 %i.dh to i8
  %i.dj = and i8 %i.di, 3
  %i.dk = shl i8 %i.df, 2
  %reass.sub62 = sub i8 %i.dj, %i.dk
  %i.dl = add i8 %reass.sub62, -7
  br label %mi_bin.exit35.i44

mi_bin.exit35.i44:                                ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.0.i34.i45 = phi i8 [ %i.dl, %bb.ad ], [ %i.db, %bb.ab ], [ 1, %bb.z ], [ 73, %bb.ac ]
  %i.dm = icmp eq i8 %.0.i.i40, %.0.i34.i45
  %i.dn = icmp ugt ptr %.027.i42, %i.cs
  %i.do = and i1 %i.dn, %i.dm
  br i1 %i.do, label %bb.z, label %bb.ae, !llvm.loop !261

bb.ae:                                            ; preds = %mi_bin.exit35.i44
  %i.dp = add nuw nsw i64 %i.cw, 1
  %.not.i46 = icmp samesign ult i64 %i.cw, %i.bz
  %spec.select.i47 = select i1 %.not.i46, i64 %i.dp, i64 %i.bz ; 2 uses
  %.not3237.i48 = icmp samesign ugt i64 %spec.select.i47, %i.bz
  br i1 %.not3237.i48, label %mi_heap_queue_first_update.exit54, label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %bb.ae, %bb.v
  %.145.i50 = phi i64 [ %spec.select.i47, %bb.ae ], [ 0, %bb.v ] ; 4 uses
  %i.dq = sub nsw i64 %i.bz, %.145.i50
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.dr, 4
  br i1 %min.iters.check76, label %.lr.ph.i51.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i49
  %n.vec79 = and i64 %i.dr, -4                    ; 3 uses
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
  %cmp.n86 = icmp eq i64 %i.dr, %n.vec79
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
  %2 = and i64 %i.ae, 4294967295
  %i.af = lshr i64 %i.ab, %2
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = and i8 %i.ag, 3
  %i.ai = shl i8 %i.ad, 2
  %reass.sub = sub i8 %i.ah, %i.ai
  %i.aj = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.aj, %bb.l ], [ %i.aa, %bb.k ]
  %i.ak = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %0, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.al = getelementptr i8, ptr %.pn.i, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61
  %i.an = add i64 %i.am, 7                        ; 4 uses
  %i.ao = lshr i64 %i.an, 3                       ; 4 uses
  %i.ap = icmp ult i64 %i.an, 16
  br i1 %i.ap, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp ult i64 %i.an, 72
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = trunc nuw nsw i64 %i.ao to i8
  %i.as = add nuw nsw i8 %i.ar, 1
  %i.at = and i8 %i.as, 30
  br label %mi_bin.exit35.i

bb.p:                                             ; preds = %bb.n
  %i.au = icmp ugt i64 %i.an, 131079
  br i1 %i.au, label %mi_bin.exit35.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false) ; 2 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  %i.ay = sub nsw i64 61, %i.aw
  %3 = and i64 %i.ay, 4294967295
  %i.az = lshr i64 %i.av, %3
  %i.ba = trunc i64 %i.az to i8
  %i.bb = and i8 %i.ba, 3
  %i.bc = shl i8 %i.ax, 2
  %reass.sub25 = sub i8 %i.bb, %i.bc
  %i.bd = add i8 %reass.sub25, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.bd, %bb.q ], [ %i.at, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.be = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bf = icmp ugt ptr %.027.i, %i.ak
  %i.bg = and i1 %i.bf, %i.be
  br i1 %i.bg, label %bb.m, label %bb.r, !llvm.loop !261

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bh = add nuw nsw i64 %i.ao, 1
  %.not.i = icmp samesign ult i64 %i.ao, %i.r
  %spec.select.i = select i1 %.not.i, i64 %i.bh, i64 %i.r ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.r
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.bi = sub nsw i64 %i.r, %.145.i
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
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
  %cmp.n = icmp eq i64 %i.bj, %n.vec
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
end_hunk_2
begin_hunk_3_@_mi_segment_page_free:bb.a
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
  %3 = and i64 %i.n, 4294967295
  %i.o = lshr i64 %i.l, %3
  %i.p = and i64 %i.o, 3
  %i.q = shl nuw nsw i64 %i.m, 2
  %reass.sub = sub nsw i64 %i.p, %i.q
  %i.r = add nsw i64 %reass.sub, 249
  %i.s = and i64 %i.r, 255
  br label %mi_page_queue.exit.i

mi_page_queue.exit.i:                             ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i.i.i = phi i64 [ %i.s, %bb.h ], [ %i.k, %bb.g ], [ 1, %bb.e ]
  %i.t = getelementptr i8, ptr %0, i64 1040
  %i.u = getelementptr [24 x i8], ptr %i.t, i64 %.0.i.i.i.i ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64   ; 11 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %mi_page_queue.exit.i
  %i.w = getelementptr i8, ptr %i.v, i64 40       ; 3 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %.not.i.i = icmp ult i64 %i.x, 4
  br i1 %.not.i.i, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load atomic i64, ptr %i.w monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.y, %bb.j ], [ %i.ac, %bb.k ] ; 3 uses
  %i.z = and i64 %.0.i.i.i, 3
  %i.aa = cmpxchg weak ptr %i.w, i64 %.0.i.i.i, i64 %i.z acq_rel acquire, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.k, !llvm.loop !73

bb.l:                                             ; preds = %bb.k
  %i.ad = and i64 %.0.i.i.i, -4                   ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %_mi_page_thread_free_collect.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %i.v, i64 10
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !74 ; 2 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = load atomic i64, ptr %i.ae monotonic, align 8 ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp ne i16 %i.ah, 0
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %i.an = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ %i.aj, %bb.m ]
  %.02934.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i ], [ 1, %bb.m ] ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = add nuw nsw i32 %.02934.i.i.i, 1        ; 2 uses
  %i.aq = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = icmp samesign ult i32 %.02934.i.i.i, %i.ai
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !75

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.m
  %.029.lcssa.i.i.i = phi i32 [ 1, %bb.m ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i = phi ptr [ %i.ae, %bb.m ], [ %i.ao, %.lr.ph.i.i.i ]
  %i.au = icmp samesign ugt i32 %.029.lcssa.i.i.i, %i.ai
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.av = getelementptr i8, ptr %i.v, i64 32      ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = ptrtoint ptr %i.aw to i64
  store atomic i64 %i.ax, ptr %.028.lcssa.i.i.i monotonic, align 8
  store ptr %i.ae, ptr %i.av, align 8, !tbaa !57
  %i.ay = getelementptr i8, ptr %i.v, i64 24      ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !18
  %i.ba = sub i32 %i.az, %.029.lcssa.i.i.i
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.o, %bb.n, %bb.l, %bb.i
  %i.bb = getelementptr i8, ptr %i.v, i64 32      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bc, null
  %.phi.trans.insert.i = getelementptr i8, ptr %i.v, i64 16 ; 2 uses
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  %i.bd = icmp eq ptr %.val.pre.i, null           ; 2 uses
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.p

bb.p:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  br i1 %i.bd, label %.sink.split.i.i, label %mi_page_queue_find_free_ex.exit.sink.split.i, !prof !55

.sink.split.i.i:                                  ; preds = %bb.p
  store ptr %i.bc, ptr %.phi.trans.insert.i, align 8, !tbaa !11
  store ptr null, ptr %i.bb, align 8, !tbaa !57
  %i.be = getelementptr i8, ptr %i.v, i64 15      ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 1
  br label %mi_page_queue_find_free_ex.exit.sink.split.i

_mi_page_free_collect.exit.i:                     ; preds = %_mi_page_thread_free_collect.exit.i.i
  br i1 %i.bd, label %bb.q, label %mi_page_queue_find_free_ex.exit.sink.split.i

bb.q:                                             ; preds = %_mi_page_free_collect.exit.i, %mi_page_queue.exit.i
  %i.bh = getelementptr i8, ptr %i.u, i64 16
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %._crit_edge.i.i, %bb.q
  %.tr34.i.i = phi i1 [ true, %bb.q ], [ false, %._crit_edge.i.i ]
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !64  ; 2 uses
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
  %.02934.i.i.i.i = phi i32 [ %i.ce, %.lr.ph.i.i.i.i ], [ 1, %bb.u ] ; 2 uses
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = add nuw nsw i32 %.02934.i.i.i.i, 1      ; 2 uses
  %i.cf = load atomic i64, ptr %i.cd monotonic, align 8 ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = icmp samesign ult i32 %.02934.i.i.i.i, %i.bx
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !75

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.u
  %.029.lcssa.i.i.i.i = phi i32 [ 1, %bb.u ], [ %i.ce, %.lr.ph.i.i.i.i ] ; 2 uses
  %.028.lcssa.i.i.i.i = phi ptr [ %i.bt, %bb.u ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %i.cj = icmp samesign ugt i32 %.029.lcssa.i.i.i.i, %i.bx
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100), !inline_history !275
  br label %_mi_page_thread_free_collect.exit.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ck = getelementptr i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57
  %i.cm = ptrtoint ptr %i.cl to i64
  store atomic i64 %i.cm, ptr %.028.lcssa.i.i.i.i monotonic, align 8
  store ptr %i.bt, ptr %i.ck, align 8, !tbaa !57
  %i.cn = getelementptr i8, ptr %.02647.i.i, i64 24 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !18
  %i.cp = sub i32 %i.co, %.029.lcssa.i.i.i.i
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i.i.i

_mi_page_thread_free_collect.exit.i.i.i:          ; preds = %bb.w, %bb.v, %bb.t, %.lr.ph.i.i
  %i.cq = getelementptr i8, ptr %.02647.i.i, i64 32 ; 6 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.cr, null
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.02647.i.i, i64 16 ; 4 uses
  %.026.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  %i.cs = icmp eq ptr %.026.val.pre.i.i, null     ; 2 uses
  br i1 %.not22.i.i.i, label %_mi_page_free_collect.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i.i
  br i1 %i.cs, label %.sink.split.i.i.i, label %mi_page_queue_find_free_ex.exit.sink.split.i, !prof !55

.sink.split.i.i.i:                                ; preds = %bb.x
  store ptr %i.cr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
end_hunk_3
begin_hunk_4_@mi_segment_reclaim:bb.a
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
  %.02934.i.i = phi i32 [ %i.fh, %.lr.ph.i.i ], [ 1, %bb.ag ] ; 2 uses
  %i.fg = inttoptr i64 %i.ff to ptr               ; 2 uses
  %i.fh = add nuw nsw i32 %.02934.i.i, 1          ; 2 uses
  %i.fi = load atomic i64, ptr %i.fg monotonic, align 8 ; 2 uses
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = icmp samesign ult i32 %.02934.i.i, %i.fa
  %i.fl = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %i.fl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ag
  %.029.lcssa.i.i = phi i32 [ 1, %bb.ag ], [ %i.fh, %.lr.ph.i.i ] ; 2 uses
  %.028.lcssa.i.i = phi ptr [ %i.ew, %bb.ag ], [ %i.fg, %.lr.ph.i.i ]
  %i.fm = icmp samesign ugt i32 %.029.lcssa.i.i, %i.fa
  br i1 %i.fm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.fn = getelementptr i8, ptr %.04494, i64 32   ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !57
  %i.fp = ptrtoint ptr %i.fo to i64
  store atomic i64 %i.fp, ptr %.028.lcssa.i.i monotonic, align 8
  store ptr %i.ew, ptr %i.fn, align 8, !tbaa !57
  %i.fq = getelementptr i8, ptr %.04494, i64 24   ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !18
  %i.fs = sub i32 %i.fr, %.029.lcssa.i.i
  store i32 %i.fs, ptr %i.fq, align 8, !tbaa !18
  br label %_mi_page_thread_free_collect.exit.i

_mi_page_thread_free_collect.exit.i:              ; preds = %bb.ai, %bb.ah, %bb.af, %_mi_page_use_delayed_free.exit
  %i.ft = getelementptr i8, ptr %.04494, i64 32   ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !57 ; 2 uses
  %.not22.i = icmp eq ptr %i.fu, null
  br i1 %.not22.i, label %_mi_page_free_collect.exit, label %bb.aj

bb.aj:                                            ; preds = %_mi_page_thread_free_collect.exit.i
  %i.fv = getelementptr i8, ptr %.04494, i64 16   ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !11
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !55

.sink.split.i:                                    ; preds = %bb.aj
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !11
  store ptr null, ptr %i.ft, align 8, !tbaa !57
  %i.fy = getelementptr i8, ptr %.04494, i64 15   ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = and i8 %i.fz, -2
  store i8 %i.ga, ptr %i.fy, align 1
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.aj, %_mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.gb = getelementptr i8, ptr %.04494, i64 24   ; 2 uses
  %.val = load i32, ptr %i.gb, align 8, !tbaa !18
  %i.gc = icmp eq i32 %.val, 0
  br i1 %i.gc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_mi_page_free_collect.exit
  %i.gd = tail call fastcc ptr @mi_segment_page_clear(ptr noundef nonnull %.04494, ptr noundef %4)
  br label %bb.av

bb.al:                                            ; preds = %_mi_page_free_collect.exit
  %i.ge = load i32, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  br i1 %i.gf, label %bb.am, label %_mi_segment_page_start.exit.i.i, !prof !55

bb.am:                                            ; preds = %bb.al
  %i.gg = zext nneg i32 %i.ge to i64
  br label %mi_page_block_size.exit.i

_mi_segment_page_start.exit.i.i:                  ; preds = %bb.al
  %i.gh = load i32, ptr %.04494, align 8, !tbaa !52
  %i.gi = zext i32 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 16
  br label %mi_page_block_size.exit.i

mi_page_block_size.exit.i:                        ; preds = %_mi_segment_page_start.exit.i.i, %bb.am
  %.0.i.i55 = phi i64 [ %i.gg, %bb.am ], [ %i.gj, %_mi_segment_page_start.exit.i.i ] ; 4 uses
  %i.gk = add nuw nsw i64 %.0.i.i55, 7
  %i.gl = lshr i64 %i.gk, 3                       ; 2 uses
  %i.gm = icmp samesign ult i64 %.0.i.i55, 9
  br i1 %i.gm, label %_mi_page_reclaim.exit, label %bb.an

bb.an:                                            ; preds = %mi_page_block_size.exit.i
  %i.gn = icmp samesign ult i64 %.0.i.i55, 65
  br i1 %i.gn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.go = add nuw nsw i64 %i.gl, 1
  %i.gp = and i64 %i.go, 30
  br label %_mi_page_reclaim.exit

bb.ap:                                            ; preds = %bb.an
  %i.gq = icmp samesign ugt i64 %.0.i.i55, 131072
  br i1 %i.gq, label %_mi_page_reclaim.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gr = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gr, i1 false) ; 2 uses
  %i.gt = sub nsw i64 61, %i.gs
  %5 = and i64 %i.gt, 4294967295
  %i.gu = lshr i64 %i.gr, %5
  %i.gv = and i64 %i.gu, 3
  %i.gw = shl nuw nsw i64 %i.gs, 2
  %reass.sub = sub nsw i64 %i.gv, %i.gw
  %i.gx = add nsw i64 %reass.sub, 249
  %i.gy = and i64 %i.gx, 255
  br label %_mi_page_reclaim.exit

_mi_page_reclaim.exit:                            ; preds = %mi_page_block_size.exit.i, %bb.ao, %bb.ap, %bb.aq
  %.0.i.i.i.i = phi i64 [ %i.gy, %bb.aq ], [ %i.gp, %bb.ao ], [ 1, %mi_page_block_size.exit.i ], [ 73, %bb.ap ]
  %i.gz = getelementptr i8, ptr %.1.i, i64 1040
  %i.ha = getelementptr [24 x i8], ptr %i.gz, i64 %.0.i.i.i.i
  tail call fastcc void @mi_page_queue_push(ptr noundef %.1.i, ptr noundef %i.ha, ptr noundef nonnull %.04494)
  %i.hb = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.hc = zext i32 %i.hb to i64
  %i.hd = icmp eq i64 %2, %i.hc
  br i1 %i.hd, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %_mi_page_reclaim.exit
  %i.he = load i32, ptr %i.gb, align 8, !tbaa !18
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
  %.2 = phi ptr [ %i.ho, %bb.au ], [ %i.gd, %bb.ak ], [ %.04494, %bb.at ], [ %.04494, %_mi_page_reclaim.exit ], [ %.04494, %mi_page_has_any_available.exit ] ; 2 uses
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
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.f, label %.critedge.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.b, i64 128
  %i.r = atomicrmw add ptr %i.q, i64 %i.j monotonic, align 64 ; 0 uses
  %i.s = atomicrmw sub ptr %i.i, i64 %i.j monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit

.critedge.i:                                      ; preds = %.critedge.i.preheader, %.critedge.i
  %.050.i = phi ptr [ %i.u, %.critedge.i ], [ %i.e, %.critedge.i.preheader ] ; 2 uses
  %i.t = getelementptr i8, ptr %.050.i, i64 176
  %i.u = load atomic ptr, ptr %i.t monotonic, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.g, label %.critedge.i, !llvm.loop !300

bb.g:                                             ; preds = %.critedge.i
  %i.v = getelementptr i8, ptr %.050.i, i64 176
  %i.w = load atomic i64, ptr %i.f monotonic, align 64
  %i.x = getelementptr i8, ptr %i.b, i64 192      ; 2 uses
  %i.y = ptrtoint ptr %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.051.i = phi i64 [ %i.w, %bb.g ], [ %i.ah, %bb.h ] ; 3 uses
  %i.z = load atomic i64, ptr %i.x monotonic, align 64 ; 2 uses
  %i.aa = and i64 %.051.i, -33554432
  %i.ab = inttoptr i64 %i.aa to ptr
  store atomic ptr %i.ab, ptr %i.v release, align 8
  %i.ac = add i64 %.051.i, 1
  %i.ad = and i64 %i.ac, 33554431
  %i.ae = or i64 %i.ad, %i.y
  %i.af = cmpxchg weak ptr %i.f, i64 %.051.i, i64 %i.ae release monotonic, align 64 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.h, !llvm.loop !301

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.b, i64 128
  %i.aj = atomicrmw add ptr %i.ai, i64 %i.z monotonic, align 64 ; 0 uses
  %i.ak = atomicrmw sub ptr %i.x, i64 %i.z monotonic, align 64 ; 0 uses
  br label %mi_abandoned_visited_revisit.exit

mi_abandoned_visited_revisit.exit:                ; preds = %bb.i, %bb.f, %bb.c, %bb.b, %bb.a
  %i.al = phi i32 [ 16383, %bb.i ], [ 16383, %bb.f ], [ 16383, %bb.c ], [ 16383, %bb.b ], [ 1023, %bb.a ]
  %i.am = getelementptr i8, ptr %i.b, i64 64      ; 7 uses
  %i.an = getelementptr i8, ptr %i.b, i64 192     ; 4 uses
  %i.ao = getelementptr i8, ptr %i.b, i64 128     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 256     ; 3 uses
  %i.aq = getelementptr i8, ptr %2, i64 896
  br label %bb.j

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
end_hunk_4
begin_hunk_5_@mi_process_done:bb.a

bb.m:                                             ; preds = %mi_stats_print.exit, %mi_option_is_enabled.exit3
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_main, i64 2848), align 8, !tbaa !193
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.53, i64 noundef %i.ad)
  store i1 false, ptr @os_preloading, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mi_out_buf_stderr(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mi_out_buf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !60
  %.not3.i = icmp eq i8 %i.a, 0
  br i1 %.not3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.c = tail call i32 @fputs(ptr noundef nonnull readonly %0, ptr noundef %i.b) #64 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = load atomic i64, ptr @out_len monotonic, align 8
  %i.e = icmp ugt i64 %i.d, 32767
  br i1 %i.e, label %mi_out_buf.exit, label %_mi_strlen.exit.i

_mi_strlen.exit.i:                                ; preds = %bb.d
  %strlen.i.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.f = icmp eq i64 %strlen.i.i, 0
  br i1 %i.f, label %mi_out_buf.exit, label %bb.e

bb.e:                                             ; preds = %_mi_strlen.exit.i
  %i.g = atomicrmw add ptr @out_len, i64 %strlen.i.i acq_rel, align 8 ; 4 uses
  %i.h = icmp ugt i64 %i.g, 32767
  br i1 %i.h, label %mi_out_buf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %i.g, %strlen.i.i
  %i.j = icmp ugt i64 %i.i, 32767
  %i.k = sub nuw nsw i64 32767, %i.g
  %spec.select.i = select i1 %i.j, i64 %i.k, i64 %strlen.i.i
  %i.l = getelementptr i8, ptr @out_buf, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull readonly align 1 %0, i64 %spec.select.i, i1 false)
  br label %mi_out_buf.exit

mi_out_buf.exit:                                  ; preds = %bb.a, %bb.d, %_mi_strlen.exit.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal void @mi_out_buf(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readnone captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr @out_len monotonic, align 8
  %i.c = icmp ugt i64 %i.b, 32767
  br i1 %i.c, label %bb.e, label %_mi_strlen.exit

_mi_strlen.exit:                                  ; preds = %bb.b
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %0) ; 4 uses
  %i.d = icmp eq i64 %strlen.i, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_mi_strlen.exit
  %i.e = atomicrmw add ptr @out_len, i64 %strlen.i acq_rel, align 8 ; 4 uses
  %i.f = icmp ugt i64 %i.e, 32767
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %i.e, %strlen.i
  %i.h = icmp ugt i64 %i.g, 32767
  %i.i = sub nuw nsw i64 32767, %i.e
  %spec.select = select i1 %i.h, i64 %i.i, i64 %strlen.i
  %i.j = getelementptr i8, ptr @out_buf, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull readonly align 1 %0, i64 %spec.select, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_mi_strlen.exit, %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @mi_recurse_enter_prim() unnamed_addr #53 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse) ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !125, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !125
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.c, true
  ret i1 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_recurse_exit_prim() unnamed_addr #54 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @recurse)
  store i8 0, ptr %i.a, align 1, !tbaa !125
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #37

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #55

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_large_huge_page_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 524288
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @mi_os_mem_config.0, align 8, !tbaa !91
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
  br i1 %.not.i, label %bb.g, label %_mi_os_good_alloc_size.exit, !prof !55

bb.g:                                             ; preds = %bb.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add nsw i64 %1, -1
  %i.j = add i64 %i.i, %.0.i                      ; 3 uses
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = sub i64 0, %.0.i
  %i.l = and i64 %i.j, %i.k
  br label %_mi_os_good_alloc_size.exit

bb.i:                                             ; preds = %bb.g
  %i.m = urem i64 %i.j, %.0.i
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_mi_os_good_alloc_size.exit

_mi_os_good_alloc_size.exit:                      ; preds = %bb.f, %bb.h, %bb.i
  %.010.i = phi i64 [ %1, %bb.f ], [ %i.l, %bb.h ], [ %i.n, %bb.i ] ; 3 uses
  %i.o = icmp ugt i64 %.010.i, 16777216
  %i.p = icmp ne i64 %2, 0
  %i.q = or i1 %i.p, %i.o
  %i.r = add i64 %.010.i, 7
  %i.s = select i1 %i.q, i64 2147483655, i64 %i.r ; 4 uses
  %i.t = lshr i64 %i.s, 3                         ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %mi_page_queue.exit, label %bb.j

bb.j:                                             ; preds = %_mi_os_good_alloc_size.exit
  %i.v = icmp ult i64 %i.s, 72
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = add nuw nsw i64 %i.t, 1
  %i.x = and i64 %i.w, 30
  br label %mi_page_queue.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp ugt i64 %i.s, 131079
  br i1 %i.y, label %mi_page_queue.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i64 %i.t, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = sub nsw i64 61, %i.aa
  %3 = and i64 %i.ab, 4294967295
  %i.ac = lshr i64 %i.z, %3
  %i.ad = and i64 %i.ac, 3
  %i.ae = shl nuw nsw i64 %i.aa, 2
  %reass.sub = sub nsw i64 %i.ad, %i.ae
  %i.af = add nsw i64 %reass.sub, 249
  %i.ag = and i64 %i.af, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %_mi_os_good_alloc_size.exit, %bb.k, %bb.l, %bb.m
  %.0.i.i.i = phi i64 [ %i.ag, %bb.m ], [ %i.x, %bb.k ], [ 1, %_mi_os_good_alloc_size.exit ], [ 73, %bb.l ]
  %i.ah = getelementptr i8, ptr %0, i64 1040
  %i.ai = getelementptr [24 x i8], ptr %i.ah, i64 %.0.i.i.i
  %i.aj = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef %i.ai, i64 noundef %.010.i, i64 noundef %2)
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = getelementptr i8, ptr %i.a, i64 952
  %i.d = tail call ptr @_mi_segment_page_alloc(ptr noundef nonnull %0, i64 noundef %2, i64 noundef %3, ptr noundef %i.b, ptr noundef %i.c) ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !61
  %i.h = icmp eq i64 %.val, 131080
  br i1 %i.h, label %bb.d, label %mi_page_block_size.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21   ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %_mi_segment_page_start.exit.i, !prof !55

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.d
  %i.m = load i32, ptr %i.d, align 8, !tbaa !52
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %_mi_segment_page_start.exit.i, %bb.e, %bb.c
  %i.p = phi i64 [ %2, %bb.c ], [ %i.l, %bb.e ], [ %i.o, %_mi_segment_page_start.exit.i ] ; 7 uses
  %i.q = getelementptr i8, ptr %i.d, i64 48
  %i.r = ptrtoint ptr %0 to i64
  store atomic i64 %i.r, ptr %i.q release, align 8
  %i.s = getelementptr i8, ptr %0, i64 3057
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205
  %i.u = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.v = load i8, ptr %i.u, align 8               ; 2 uses
  %i.w = shl i8 %i.t, 3
  %i.x = and i8 %i.w, 120
  %i.y = and i8 %i.v, -121
  %i.z = or disjoint i8 %i.y, %i.x                ; 2 uses
  store i8 %i.z, ptr %i.u, align 8
  %i.aa = getelementptr i8, ptr %0, i64 3059
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !632, !range !42, !noundef !43
  %i.ac = shl nuw nsw i8 %i.ab, 2
  %i.ad = and i8 %i.z, -5
  %i.ae = or disjoint i8 %i.ad, %i.ac
  store i8 %i.ae, ptr %i.u, align 8
  %i.af = getelementptr i8, ptr %0, i64 3058
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !633
  %i.ah = getelementptr i8, ptr %i.d, i64 9
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !634
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2147483648) ; 6 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = getelementptr i8, ptr %i.d, i64 28
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !21
  %i.al = load i32, ptr %i.d, align 8, !tbaa !52
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16               ; 2 uses
  %i.ao = icmp ugt i64 %i.p, 7                    ; 2 uses
  br i1 %i.ao, label %bb.f, label %_mi_segment_page_start.exit.i21

bb.f:                                             ; preds = %mi_page_block_size.exit
  %i.ap = icmp ult i64 %i.p, 65
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = mul nuw nsw i64 %i.ai, 3
  br label %_mi_segment_page_start.exit.i21

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %i.p, 513
  %spec.select.i.i.i = select i1 %i.ar, i64 %i.ai, i64 0
  br label %_mi_segment_page_start.exit.i21

_mi_segment_page_start.exit.i21:                  ; preds = %bb.h, %bb.g, %mi_page_block_size.exit
  %.0.i.i.i = phi i64 [ %i.aq, %bb.g ], [ 0, %mi_page_block_size.exit ], [ %spec.select.i.i.i, %bb.h ]
  %i.as = sub nsw i64 %i.an, %.0.i.i.i
  %i.at = udiv i64 %i.as, %i.p                    ; 2 uses
  %i.au = trunc i64 %i.at to i16                  ; 2 uses
  %i.av = getelementptr i8, ptr %i.d, i64 12
  store i16 %i.au, ptr %i.av, align 4, !tbaa !218
  %i.aw = lshr i8 %i.v, 1
  %i.ax = and i8 %i.aw, 1
  %i.ay = getelementptr i8, ptr %i.d, i64 15      ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, -2
  %i.bb = or disjoint i8 %i.ba, %i.ax
  store i8 %i.bb, ptr %i.ay, align 1
  %i.bc = getelementptr i8, ptr %i.d, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.i, label %mi_page_init.exit

bb.i:                                             ; preds = %_mi_segment_page_start.exit.i21
  %i.be = getelementptr i8, ptr %i.d, i64 10      ; 3 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !74 ; 2 uses
  %.not24.i.i = icmp ult i16 %i.bf, %i.au
  br i1 %.not24.i.i, label %bb.j, label %mi_page_init.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.k, label %_mi_page_start.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp ult i64 %i.p, 65
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = mul nuw nsw i64 %i.ai, 3
  br label %_mi_page_start.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i64 %i.p, 513
  %spec.select.i.i.i.i.i = select i1 %i.bi, i64 %i.ai, i64 0
  br label %_mi_page_start.exit.i.i

_mi_page_start.exit.i.i:                          ; preds = %bb.m, %bb.l, %bb.j
  %.0.i.i.i.i.i = phi i64 [ %i.bh, %bb.l ], [ 0, %bb.j ], [ %spec.select.i.i.i.i.i, %bb.m ]
  %i.bj = sub nsw i64 %i.an, %.0.i.i.i.i.i
  %i.bk = icmp slt i32 %i.aj, 0
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 %i.ai   ; 3 uses
  %i.bm = and i64 %i.at, 65535
  %i.bn = zext i16 %i.bf to i64
  %i.bo = sub nsw i64 %i.bm, %i.bn
  %i.bp = icmp ugt i64 %i.bl, 4095
  br i1 %i.bp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_mi_page_start.exit.i.i
  %.rhs.trunc.i.i = trunc nuw nsw i64 %i.bl to i16
  %i.bq = udiv i16 4096, %.rhs.trunc.i.i
  %i.br = tail call i16 @llvm.umax.i16(i16 %i.bq, i16 4)
  %i.bs = zext nneg i16 %i.br to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_mi_page_start.exit.i.i
  %spec.store.select.i.i = phi i64 [ %i.bs, %bb.n ], [ 4, %_mi_page_start.exit.i.i ]
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %spec.store.select.i.i) ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %i.d, i64 noundef %i.bl, i64 noundef %spec.select.i.i)
  %i.bt = trunc nuw nsw i64 %spec.select.i.i to i16
  %i.bu = load i16, ptr %i.be, align 2, !tbaa !74
  %i.bv = add i16 %i.bu, %i.bt
  store i16 %i.bv, ptr %i.be, align 2, !tbaa !74
  br label %mi_page_init.exit

mi_page_init.exit:                                ; preds = %_mi_segment_page_start.exit.i21, %bb.i, %bb.o
  br i1 %i.f, label %bb.q, label %bb.p

bb.p:                                             ; preds = %mi_page_init.exit
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d)
  br label %bb.q

bb.q:                                             ; preds = %mi_page_init.exit, %bb.p, %bb.a
  ret ptr %i.d
}

; Function Attrs: noinline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_free_list_extend(ptr noundef nonnull %0, i64 noundef %1, i64 noundef range(i64 0, 4097) %2) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 4 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp ugt i32 %i.f, 7
  br i1 %i.h, label %bb.b, label %_mi_page_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.f, 65
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = mul nuw nsw i64 %i.g, 3
  br label %_mi_page_start.exit

bb.d:                                             ; preds = %bb.b
end_hunk_5
