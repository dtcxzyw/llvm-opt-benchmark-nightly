inline.NumInlined: 133
inline.NumDeleted: 55
begin_hunk_0_@_mi_page_bin:bb.a
  br i1 %i.k, label %mi_page_is_huge.exit, label %mi_page_is_huge.exit.thread

mi_page_is_huge.exit:                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = icmp ult ptr %i.m, %0
  br i1 %i.n, label %mi_page_is_huge.exit.thread3, label %mi_page_is_huge.exit.thread

mi_page_is_huge.exit.thread:                      ; preds = %bb.b, %bb.d, %mi_page_is_huge.exit
  %i.o = tail call fastcc i64 @mi_bin(i64 noundef %i.f)
  br label %mi_page_is_huge.exit.thread3

mi_page_is_huge.exit.thread3:                     ; preds = %bb.c, %mi_page_is_huge.exit.thread, %mi_page_is_huge.exit, %bb.a
  %i.p = phi i64 [ 74, %bb.a ], [ %i.o, %mi_page_is_huge.exit.thread ], [ 73, %mi_page_is_huge.exit ], [ 73, %bb.c ]
  ret i64 %i.p
}

; Function Attrs: norecurse nounwind uwtable
define hidden i64 @_mi_page_queue_append(ptr noundef %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 226
  br i1 %i.c, label %mi_page_set_heap.exit.us, label %mi_page_set_heap.exit

mi_page_set_heap.exit.us:                         ; preds = %.preheader, %mi_page_set_heap.exit.us
  %.028.us = phi ptr [ %i.j, %mi_page_set_heap.exit.us ], [ %i.a, %.preheader ] ; 4 uses
  %.02327.us = phi i64 [ %i.h, %mi_page_set_heap.exit.us ], [ 0, %.preheader ]
  %i.e = load atomic i64, ptr %.028.us monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.028.us, i64 64
  store ptr null, ptr %i.f, align 8, !tbaa !29
  %i.g = and i64 %i.e, 3
  store atomic i64 %i.g, ptr %.028.us release, align 8
  %i.h = add i64 %.02327.us, 1                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.028.us, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not.us = icmp eq ptr %i.j, null
  br i1 %.not.us, label %.split.us, label %mi_page_set_heap.exit.us, !llvm.loop !31

.split.us:                                        ; preds = %mi_page_set_heap.exit, %mi_page_set_heap.exit.us
  %.us-phi = phi i64 [ %i.h, %mi_page_set_heap.exit.us ], [ %i.w, %mi_page_set_heap.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = load ptr, ptr %2, align 8, !tbaa !28     ; 5 uses
  br i1 %i.m, label %bb.b, label %bb.h

mi_page_set_heap.exit:                            ; preds = %.preheader, %mi_page_set_heap.exit
  %.028 = phi ptr [ %i.y, %mi_page_set_heap.exit ], [ %i.a, %.preheader ] ; 5 uses
  %.02327 = phi i64 [ %i.w, %mi_page_set_heap.exit ], [ 0, %.preheader ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !33
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38
  %i.q = load atomic i64, ptr %.028 monotonic, align 8
  %i.r = load i8, ptr %i.d, align 2, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 56
  store i8 %i.r, ptr %i.s, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 64
  store ptr %0, ptr %i.t, align 8, !tbaa !29
  %i.u = and i64 %i.q, 3
  %i.v = or i64 %i.p, %i.u
  store atomic i64 %i.v, ptr %.028 release, align 8
  %i.w = add i64 %.02327, 1                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.028, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.split.us, label %mi_page_set_heap.exit, !llvm.loop !31

bb.b:                                             ; preds = %.split.us
  store ptr %i.n, ptr %1, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9  ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 1024
  br i1 %i.ad, label %mi_heap_queue_first_update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp eq ptr %i.n, null
  %spec.store.select.i = select i1 %i.ae, ptr @_mi_page_empty, ptr %i.n ; 3 uses
  %i.af = add nuw nsw i64 %i.ac, 7
  %i.ag = lshr i64 %i.af, 3                       ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = icmp eq ptr %i.aj, %spec.store.select.i
  br i1 %i.ak, label %mi_heap_queue_first_update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = icmp samesign ult i64 %i.ac, 9
  br i1 %i.al, label %.lr.ph.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = tail call fastcc i64 @mi_bin(i64 noundef %i.ac)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi ptr [ %1, %bb.e ], [ %.027.i, %bb.f ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !9  ; 2 uses
  %i.aq = tail call fastcc i64 @mi_bin(i64 noundef %i.ap)
  %i.ar = icmp eq i64 %i.am, %i.aq
  %i.as = icmp ugt ptr %.027.i, %i.an
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %bb.f, label %bb.g, !llvm.loop !47

bb.g:                                             ; preds = %bb.f
  %i.au = add i64 %i.ap, 7
  %i.av = lshr i64 %i.au, 3                       ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, 1
  %.not.i = icmp samesign ult i64 %i.av, %i.ag
  %spec.select.i = select i1 %.not.i, i64 %i.aw, i64 %i.ag ; 2 uses
  %.not3233.i = icmp samesign ugt i64 %spec.select.i, %i.ag
  br i1 %.not3233.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g, %bb.d
  %.138.i = phi i64 [ %spec.select.i, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %i.ax = sub nsw i64 %i.ag, %.138.i
  %i.ay = add i64 %i.ax, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.az = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ah, i64 %.138.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bb, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.bc, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.034.i.ph = phi i64 [ %.138.i, %.lr.ph.preheader.i ], [ %i.az, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.034.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.034.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.034.i
  store ptr %spec.store.select.i, ptr %i.be, align 8, !tbaa !14
  %i.bf = add nuw nsw i64 %.034.i, 1
  %exitcond.not.i = icmp eq i64 %.034.i, %i.ag
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !51

bb.h:                                             ; preds = %.split.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.n, ptr %i.bg, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.l, ptr %i.bh, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32
  store ptr %i.bj, ptr %i.k, align 8, !tbaa !32
  br label %mi_heap_queue_first_update.exit

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.g, %bb.c, %bb.b, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !53
  %i.bo = add i64 %i.bn, %i.bl
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %mi_heap_queue_first_update.exit
  %.024 = phi i64 [ %.us-phi, %mi_heap_queue_first_update.exit ], [ 0, %bb.a ]
  ret i64 %.024
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_free_collect(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi i64 [ %i.b, %bb.a ], [ %i.g, %bb.c ] ; 3 uses
  %i.c = and i64 %.0.i, -2                        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_page_thread_free_collect.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = cmpxchg weak ptr %i.a, i64 %.0.i, i64 %.0.i acq_rel acquire, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b, !llvm.loop !54

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %i.c to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.h)
  br label %mi_page_thread_free_collect.exit

mi_page_thread_free_collect.exit:                 ; preds = %bb.b, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_page_thread_free_collect.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.sink.split, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  br i1 %1, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0 = phi ptr [ %i.n, %.preheader ], [ %i.j, %bb.f ] ; 2 uses
  %.0.val = load i64, ptr %.0, align 8, !tbaa !57 ; 2 uses
  %i.n = inttoptr i64 %.0.val to ptr
  %.not20 = icmp eq i64 %.0.val, 0
  br i1 %.not20, label %bb.g, label %.preheader, !llvm.loop !59

bb.g:                                             ; preds = %.preheader
  %i.o = ptrtoint ptr %i.l to i64
  store i64 %i.o, ptr %.0, align 8, !tbaa !57
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  store ptr %i.j, ptr %i.k, align 8, !tbaa !56
  store ptr null, ptr %i.i, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.p, align 1, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %mi_page_thread_free_collect.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_free_collect_partly(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_mi_page_free_collect.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !57    ; 2 uses
  %i.b = inttoptr i64 %.val to ptr                ; 4 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !61   ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %.018.val21.i = load i64, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %i.f = icmp ne i64 %.018.val21.i, 0
  %i.g = icmp ne i16 %i.d, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.018.val23.i = phi i64 [ %.018.val.i, %.lr.ph.i ], [ %.018.val21.i, %bb.c ]
  %.022.i = phi i64 [ %i.j, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  %i.i = inttoptr i64 %.018.val23.i to ptr        ; 2 uses
  %i.j = add nuw nsw i64 %.022.i, 1               ; 2 uses
  %.018.val.i = load i64, ptr %i.i, align 8, !tbaa !57 ; 2 uses
  %i.k = icmp ne i64 %.018.val.i, 0
  %i.l = icmp samesign ult i64 %.022.i, %i.e
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.018.lcssa.i = phi ptr [ %i.b, %bb.c ], [ %i.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %i.n = icmp samesign ugt i64 %.0.lcssa.i, %i.e
  br i1 %i.n, label %mi_page_thread_collect_to_local.exit, label %mi_page_thread_collect_to_local.exit.thread

mi_page_thread_collect_to_local.exit.thread:      ; preds = %._crit_edge.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.q = ptrtoint ptr %i.p to i64
  store i64 %i.q, ptr %.018.lcssa.i, align 8, !tbaa !57
  store ptr %i.b, ptr %i.o, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !63
  %i.t = trunc nuw i64 %.0.lcssa.i to i16
  %i.u = sub i16 %i.s, %i.t
  store i16 %i.u, ptr %i.r, align 8, !tbaa !63
  br label %bb.d

mi_page_thread_collect_to_local.exit:             ; preds = %._crit_edge.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.1) #14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55 ; 2 uses
  %.not18 = icmp eq ptr %.pre, null
  br i1 %.not18, label %bb.f, label %bb.d

bb.d:                                             ; preds = %mi_page_thread_collect_to_local.exit.thread, %mi_page_thread_collect_to_local.exit
  %i.v = phi ptr [ %i.b, %mi_page_thread_collect_to_local.exit.thread ], [ %.pre, %mi_page_thread_collect_to_local.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !56
  store ptr null, ptr %i.z, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.aa, align 1, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %mi_page_thread_collect_to_local.exit, %bb.d, %bb.e, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !63
  %i.ad = icmp eq i16 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %_mi_page_free_collect.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.0.i.i = phi i64 [ %i.af, %bb.g ], [ %i.ak, %bb.i ] ; 3 uses
  %i.ag = and i64 %.0.i.i, -2                     ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %mi_page_thread_free_collect.exit.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.ai = cmpxchg weak ptr %i.ae, i64 %.0.i.i, i64 %.0.i.i acq_rel acquire, align 8 ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.h, !llvm.loop !54

bb.j:                                             ; preds = %bb.i
  %i.al = inttoptr i64 %i.ag to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.al)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.h, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.k

bb.k:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !7

.sink.split.i:                                    ; preds = %bb.k
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !56
  store ptr null, ptr %i.am, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ar, align 1, !tbaa !60
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %.sink.split.i, %mi_page_thread_free_collect.exit.i, %bb.k, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_page_thread_collect_to_local(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = load i16, ptr %i.a, align 2, !tbaa !61   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %.018.val21 = load i64, ptr %1, align 8, !tbaa !57 ; 2 uses
  %i.d = icmp ne i64 %.018.val21, 0
  %i.e = icmp ne i16 %i.b, 0
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018.val23 = phi i64 [ %.018.val, %.lr.ph ], [ %.018.val21, %bb.a ]
  %.022 = phi i64 [ %i.h, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.g = inttoptr i64 %.018.val23 to ptr          ; 2 uses
  %i.h = add nuw nsw i64 %.022, 1                 ; 2 uses
  %.018.val = load i64, ptr %i.g, align 8, !tbaa !57 ; 2 uses
  %i.i = icmp ne i64 %.018.val, 0
  %i.j = icmp samesign ult i64 %.022, %i.c
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.018.lcssa = phi ptr [ %1, %bb.a ], [ %i.g, %.lr.ph ]
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.l = icmp samesign ugt i64 %.0.lcssa, %i.c
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.1) #14
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %.018.lcssa, align 8, !tbaa !57
  store ptr %1, ptr %i.m, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !63
  %i.r = trunc nuw i64 %.0.lcssa to i16
  %i.s = sub i16 %i.q, %i.r
  store i16 %i.s, ptr %i.p, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_page_reclaim(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !33
  %i.c = load i64, ptr %i.b, align 8, !tbaa !38
  %i.d = load atomic i64, ptr %1 monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.f = load i8, ptr %i.e, align 2, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.f, ptr %i.g, align 8, !tbaa !46
  br label %mi_page_set_heap.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load atomic i64, ptr %1 monotonic, align 8
  br label %mi_page_set_heap.exit

mi_page_set_heap.exit:                            ; preds = %bb.b, %bb.c
  %.in.i = phi i64 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi i64 [ 0, %bb.c ], [ %i.c, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %0, ptr %i.j, align 8, !tbaa !29
  %i.k = and i64 %.in.i, 3
  %i.l = or i64 %i.i, %i.k
  store atomic i64 %i.l, ptr %1 release, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %mi_page_set_heap.exit
  %.0.i.i = phi i64 [ %i.n, %mi_page_set_heap.exit ], [ %i.s, %bb.e ] ; 3 uses
  %i.o = and i64 %.0.i.i, -2                      ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %mi_page_thread_free_collect.exit.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = cmpxchg weak ptr %i.m, i64 %.0.i.i, i64 %.0.i.i acq_rel acquire, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.d, !llvm.loop !54

bb.f:                                             ; preds = %bb.e
  %i.t = inttoptr i64 %i.o to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %1, ptr noundef %i.t)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.d, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.g

bb.g:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !7

.sink.split.i:                                    ; preds = %bb.g
  store ptr %i.v, ptr %i.w, align 8, !tbaa !56
  store ptr null, ptr %i.u, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.z, align 1, !tbaa !60
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.g, %mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.aa = load atomic i64, ptr %1 monotonic, align 8
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %mi_heap_page_queue_of.exit, label %bb.h

bb.h:                                             ; preds = %_mi_page_free_collect.exit
  %i.ac = getelementptr i8, ptr %1, i64 20
  %.val.i.i.i = load i16, ptr %i.ac, align 4, !tbaa !17
  %i.ad = icmp eq i16 %.val.i.i.i, 1
  %i.ae = getelementptr i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  br i1 %i.ad, label %bb.i, label %mi_page_is_huge.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ugt i64 %i.af, 65536
  br i1 %i.ag, label %mi_heap_page_queue_of.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26
  %i.aj = add i32 %i.ai, -4
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %mi_page_is_huge.exit.i.i, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.i.i:                         ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  %i.an = icmp ult ptr %i.am, %1
  br i1 %i.an, label %mi_heap_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.thread.i.i:                  ; preds = %mi_page_is_huge.exit.i.i, %bb.j, %bb.h
  %i.ao = tail call fastcc i64 @mi_bin(i64 noundef %i.af)
  %i.ap = shl nuw nsw i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, 1264
  br label %mi_heap_page_queue_of.exit

mi_heap_page_queue_of.exit:                       ; preds = %_mi_page_free_collect.exit, %bb.i, %mi_page_is_huge.exit.i.i, %mi_page_is_huge.exit.thread.i.i
  %.idx = phi i64 [ 3632, %_mi_page_free_collect.exit ], [ %i.aq, %mi_page_is_huge.exit.thread.i.i ], [ 3600, %mi_page_is_huge.exit.i.i ], [ 3600, %bb.i ] ; 2 uses
  %.ptr9 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.ar = getelementptr i8, ptr %.ptr9, i64 24    ; 2 uses
  %.val.i = load i64, ptr %i.ar, align 8, !tbaa !9
  %i.as = icmp eq i64 %.val.i, 65552
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %mi_heap_page_queue_of.exit
  %i.at = atomicrmw or ptr %1, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit.i

bb.l:                                             ; preds = %mi_heap_page_queue_of.exit
  %i.au = atomicrmw and ptr %1, i64 -2 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit.i

mi_page_set_in_full.exit.i:                       ; preds = %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.ptr9, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.ay, align 8, !tbaa !30
  %.not.i8 = icmp eq ptr %i.aw, null
  br i1 %.not.i8, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %mi_page_set_in_full.exit.i
  store ptr %1, ptr %.ptr9, align 8, !tbaa !28
  store ptr %1, ptr %i.av, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !53
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !53
  br label %bb.n

bb.m:                                             ; preds = %mi_page_set_in_full.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store ptr %1, ptr %i.bc, align 8, !tbaa !30
  %.pre.i = load ptr, ptr %.ptr9, align 8, !tbaa !28 ; 2 uses
  store ptr %1, ptr %i.av, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !53
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !53
  %i.bg = icmp eq ptr %.pre.i, %1
  br i1 %i.bg, label %bb.n, label %mi_page_queue_push_at_end.exit

bb.n:                                             ; preds = %bb.m, %.thread.i
  %i.bh = phi ptr [ %1, %.thread.i ], [ %.pre.i, %bb.m ] ; 3 uses
  %i.bi = load i64, ptr %i.ar, align 8, !tbaa !9  ; 4 uses
  %i.bj = icmp ugt i64 %i.bi, 1024
  br i1 %i.bj, label %mi_page_queue_push_at_end.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = add nuw nsw i64 %i.bi, 7
  %i.bl = lshr i64 %i.bk, 3                       ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !14
  %i.bp = icmp eq ptr %i.bo, %i.bh
  br i1 %i.bp, label %mi_page_queue_push_at_end.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp samesign ult i64 %i.bi, 9
  br i1 %i.bq, label %.lr.ph.preheader.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = tail call fastcc i64 @mi_bin(i64 noundef %i.bi)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.pn.i.i.idx = phi i64 [ %.idx, %bb.q ], [ %.pn.i.i.add, %bb.r ] ; 3 uses
  %.pn.i.i.ptr = getelementptr inbounds i8, ptr %0, i64 %.pn.i.i.idx
  %.pn.i.i.add = add nsw i64 %.pn.i.i.idx, -32
  %i.bs = getelementptr inbounds i8, ptr %.pn.i.i.ptr, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !9  ; 2 uses
  %i.bu = tail call fastcc i64 @mi_bin(i64 noundef %i.bt)
  %i.bv = icmp eq i64 %i.br, %i.bu
  %i.bw = icmp samesign ugt i64 %.pn.i.i.idx, 1296
  %i.bx = and i1 %i.bw, %i.bv
  br i1 %i.bx, label %bb.r, label %bb.s, !llvm.loop !47

bb.s:                                             ; preds = %bb.r
  %i.by = add i64 %i.bt, 7
  %i.bz = lshr i64 %i.by, 3                       ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1
  %.not.i.i = icmp samesign ult i64 %i.bz, %i.bl
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.ca, i64 %i.bl ; 2 uses
  %.not3233.i.i = icmp samesign ugt i64 %spec.select.i.i, %i.bl
  br i1 %.not3233.i.i, label %mi_page_queue_push_at_end.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.s, %bb.p
  %.138.i.i = phi i64 [ %spec.select.i.i, %bb.s ], [ 0, %bb.p ] ; 4 uses
  %i.cb = sub nsw i64 %i.bl, %.138.i.i
  %i.cc = add i64 %i.cb, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.cc, -4                      ; 3 uses
  %i.cd = add i64 %.138.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bh, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bm, i64 %.138.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.cf, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.cg, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %mi_page_queue_push_at_end.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.034.i.i.ph = phi i64 [ %.138.i.i, %.lr.ph.preheader.i.i ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.034.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.034.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.034.i.i
  store ptr %i.bh, ptr %i.ci, align 8, !tbaa !14
  %i.cj = add nuw nsw i64 %.034.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.034.i.i, %i.bl
  br i1 %exitcond.not.i.i, label %mi_page_queue_push_at_end.exit, label %.lr.ph.i.i, !llvm.loop !65

mi_page_queue_push_at_end.exit:                   ; preds = %.lr.ph.i.i, %middle.block, %bb.m, %bb.n, %bb.o, %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !66
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_abandon(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi i64 [ %i.b, %bb.a ], [ %i.g, %bb.c ] ; 3 uses
  %i.c = and i64 %.0.i.i, -2                      ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_page_thread_free_collect.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = cmpxchg weak ptr %i.a, i64 %.0.i.i, i64 %.0.i.i acq_rel acquire, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b, !llvm.loop !54

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %i.c to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.h)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.b, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.e

bb.e:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !7

.sink.split.i:                                    ; preds = %bb.e
  store ptr %i.j, ptr %i.k, align 8, !tbaa !56
  store ptr null, ptr %i.i, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 1, !tbaa !60
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.e, %mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val = load i16, ptr %i.o, align 8, !tbaa !63
  %i.p = icmp eq i16 %.val, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_mi_page_free_collect.exit
  %i.q = atomicrmw and ptr %0, i64 -3 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef nonnull %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %i.u = load atomic i64, ptr %0 monotonic, align 8
  store ptr null, ptr %i.r, align 8, !tbaa !29
  %i.v = and i64 %i.u, 3
  store atomic i64 %i.v, ptr %0 release, align 8
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %0, ptr noundef %i.t) #14
  br label %bb.h

bb.g:                                             ; preds = %_mi_page_free_collect.exit
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef nonnull %0)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 3 uses
  %i.y = load atomic i64, ptr %0 monotonic, align 8
  store ptr null, ptr %i.w, align 8, !tbaa !29
  %i.z = and i64 %i.y, 3
  store atomic i64 %i.z, ptr %0 release, align 8
  store ptr %i.x, ptr %i.w, align 8, !tbaa !29
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !33
  tail call void @_mi_arenas_page_abandon(ptr noundef nonnull %0, ptr noundef %i.aa) #14
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ %i.ab, %bb.g ], [ %i.t, %bb.f ]
  tail call void @_mi_arenas_collect(i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %.sink) #14
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_free(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = atomicrmw and ptr %0, i64 -3 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = load atomic i64, ptr %0 monotonic, align 8
  store ptr null, ptr %i.b, align 8, !tbaa !29
  %i.f = and i64 %i.e, 3
  store atomic i64 %i.f, ptr %0 release, align 8
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %0, ptr noundef %i.d) #14
  tail call void @_mi_arenas_collect(i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.d) #14
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_remove(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %.pre, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.not23 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  store ptr %i.c, ptr %i.e, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !52
  store ptr %i.i, ptr %i.f, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !28
  %i.k = icmp eq ptr %1, %i.j
  br i1 %i.k, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %0, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9    ; 4 uses
  %i.n = icmp ugt i64 %i.m, 1024
  br i1 %i.n, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not23, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.o = add nuw nsw i64 %i.m, 7
  %i.p = lshr i64 %i.o, 3                         ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 232 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = icmp eq ptr %i.s, %spec.store.select.i
  br i1 %i.t, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = icmp samesign ult i64 %i.m, 9
  br i1 %i.u, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call fastcc i64 @mi_bin(i64 noundef %i.m)
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 1264
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi ptr [ %0, %bb.j ], [ %.027.i, %bb.k ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  %i.z = tail call fastcc i64 @mi_bin(i64 noundef %i.y)
  %i.aa = icmp eq i64 %i.v, %i.z
  %i.ab = icmp ugt ptr %.027.i, %i.w
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.k, label %bb.l, !llvm.loop !47

bb.l:                                             ; preds = %bb.k
  %i.ad = add i64 %i.y, 7
  %i.ae = lshr i64 %i.ad, 3                       ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 1
  %.not.i = icmp samesign ult i64 %i.ae, %i.p
  %spec.select.i = select i1 %.not.i, i64 %i.af, i64 %i.p ; 2 uses
  %.not3233.i = icmp samesign ugt i64 %spec.select.i, %i.p
  br i1 %.not3233.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l, %bb.i
  %.138.i = phi i64 [ %spec.select.i, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %i.ag = sub nsw i64 %i.p, %.138.i
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.ai = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.q, i64 %.138.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ak, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.al, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader
end_hunk_0
begin_hunk_1_@_mi_malloc_generic:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.040 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]  ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.040, i64 192 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80   ; 2 uses
  %i.j = add nsw i64 %i.i, 1                      ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !80
  %i.k = icmp sgt i64 %i.i, 998
  br i1 %i.k, label %bb.d, label %bb.f, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.040, i64 200 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = add nsw i64 %i.m, %i.j
  store i64 %i.n, ptr %i.l, align 8, !tbaa !81
  store i64 0, ptr %i.h, align 8, !tbaa !80
  tail call void @_mi_deferred_free(ptr noundef nonnull %.040, i1 noundef zeroext false)
  %i.o = tail call i64 @mi_option_get_clamp(i32 noundef 34, i64 noundef 1, i64 noundef 1000000) #14
  %i.p = load i64, ptr %i.l, align 8, !tbaa !81
  %.not = icmp slt i64 %i.p, %i.o
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.l, align 8, !tbaa !81
  tail call void @mi_heap_collect(ptr noundef nonnull %.040, i1 noundef zeroext false) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.q = icmp slt i64 %1, 0
  br i1 %i.q, label %mi_find_page.exit.thread, label %bb.g, !prof !8

mi_find_page.exit.thread:                         ; preds = %bb.f
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 75, ptr noundef nonnull @.str.2, i64 noundef %1) #14
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %3, 0
  %i.r = select i1 %.not.i, i64 %1, i64 65537
  %i.s = getelementptr inbounds nuw i8, ptr %.040, i64 1264
  %i.t = tail call fastcc range(i64 -3, 74) i64 @mi_bin(i64 noundef range(i64 0, -9223372036854775808) %i.r)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.t ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !9
  %i.w = icmp eq i64 %.val.i, 65544
  br i1 %i.w, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.x = tail call fastcc ptr @mi_huge_page_alloc(ptr noundef nonnull %.040, i64 noundef %1, i64 noundef %3, ptr noundef nonnull %i.u)
  br label %mi_find_page.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !28   ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val.i.i = load ptr, ptr %i.z, align 8, !tbaa !56
  %.not9.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not9.i.i, label %.critedge.i.i, label %mi_find_page.exit.thread47, !prof !8

mi_find_page.exit.thread47:                       ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 23
  store i8 0, ptr %i.aa, align 1, !tbaa !69
  br label %.thread

.critedge.i.i:                                    ; preds = %bb.j, %bb.i
  %i.ab = tail call fastcc ptr @mi_page_queue_find_free_ex(ptr noundef nonnull %.040, ptr noundef nonnull %i.u, i1 noundef zeroext true)
  br label %mi_find_page.exit

mi_find_page.exit:                                ; preds = %bb.h, %.critedge.i.i
  %.1.i = phi ptr [ %i.ab, %.critedge.i.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.ac = icmp eq ptr %.1.i, null
  br i1 %i.ac, label %bb.k, label %.thread, !prof !82

bb.k:                                             ; preds = %mi_find_page.exit, %mi_find_page.exit.thread
  tail call void @mi_heap_collect(ptr noundef nonnull %.040, i1 noundef zeroext true) #14
  %i.ad = tail call fastcc ptr @mi_find_page(ptr noundef nonnull %.040, i64 noundef %1, i64 noundef %3) ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.l, label %.thread, !prof !83

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str, i64 noundef %1) #14
  br label %mi_page_to_full.exit

.thread:                                          ; preds = %mi_find_page.exit.thread47, %mi_find_page.exit, %bb.k
  %.03950 = phi ptr [ %i.ad, %bb.k ], [ %i.y, %mi_find_page.exit.thread47 ], [ %.1.i, %mi_find_page.exit ] ; 23 uses
  br i1 %2, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.thread
  %i.af = getelementptr i8, ptr %.03950, i64 20
  %.val.i43 = load i16, ptr %i.af, align 4, !tbaa !17
  %i.ag = icmp eq i16 %.val.i43, 1
  br i1 %i.ag, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %.03950, i64 40   ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25
  %i.aj = icmp ugt i64 %i.ai, 65536
  br i1 %i.aj, label %mi_page_is_huge.exit.thread52, label %bb.o, !prof !84

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.03950, i64 112
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  %i.am = add i32 %i.al, -4
  %i.an = icmp ult i32 %i.am, 3
  br i1 %i.an, label %mi_page_is_huge.exit, label %.critedge

mi_page_is_huge.exit:                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %.03950, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27
  %i.aq = icmp ult ptr %i.ap, %.03950
  br i1 %i.aq, label %mi_page_is_huge.exit.thread52, label %.critedge, !prof !82

mi_page_is_huge.exit.thread52:                    ; preds = %bb.n, %mi_page_is_huge.exit
  %i.ar = tail call ptr @_mi_page_malloc(ptr noundef nonnull %.040, ptr noundef nonnull %.03950, i64 noundef %1) #14 ; 3 uses
  %.039.val = load i64, ptr %i.ah, align 8, !tbaa !25
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %.039.val, i1 false)
  br label %bb.p

.critedge:                                        ; preds = %bb.o, %bb.m, %.thread, %mi_page_is_huge.exit
  %i.as = tail call ptr @_mi_page_malloc_zero(ptr noundef nonnull %.040, ptr noundef nonnull %.03950, i64 noundef %1, i1 noundef zeroext %2) #14
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %mi_page_is_huge.exit.thread52
  %.0 = phi ptr [ %i.ar, %mi_page_is_huge.exit.thread52 ], [ %i.as, %.critedge ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03950, i64 20
  %i.au = load i16, ptr %i.at, align 4, !tbaa !17 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03950, i64 16
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !63
  %i.ax = icmp eq i16 %i.au, %i.aw
  br i1 %i.ax, label %bb.q, label %mi_page_to_full.exit

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr i8, ptr %.03950, i64 64
  %.val.i44 = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 3 uses
  %i.az = load atomic i64, ptr %.03950 monotonic, align 8
  %i.ba = trunc i64 %i.az to i1
  br i1 %i.ba, label %mi_page_queue_of.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp eq i16 %i.au, 1
  %i.bc = getelementptr i8, ptr %.03950, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  br i1 %i.bb, label %bb.s, label %mi_page_is_huge.exit.thread.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.be = icmp ugt i64 %i.bd, 65536
  br i1 %i.be, label %mi_page_queue_of.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %.03950, i64 112
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !26
  %i.bh = add i32 %i.bg, -4
  %i.bi = icmp ult i32 %i.bh, 3
  br i1 %i.bi, label %mi_page_is_huge.exit.i.i.i, label %mi_page_is_huge.exit.thread.i.i.i

mi_page_is_huge.exit.i.i.i:                       ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.03950, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  %i.bl = icmp ult ptr %i.bk, %.03950
  br i1 %i.bl, label %mi_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i.i

mi_page_is_huge.exit.thread.i.i.i:                ; preds = %mi_page_is_huge.exit.i.i.i, %bb.t, %bb.r
  %i.bm = tail call fastcc i64 @mi_bin(i64 noundef %i.bd)
  br label %mi_page_queue_of.exit

mi_page_queue_of.exit:                            ; preds = %bb.q, %bb.s, %mi_page_is_huge.exit.i.i.i, %mi_page_is_huge.exit.thread.i.i.i
  %i.bn = phi i64 [ 74, %bb.q ], [ %i.bm, %mi_page_is_huge.exit.thread.i.i.i ], [ 73, %mi_page_is_huge.exit.i.i.i ], [ 73, %bb.s ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i44, i64 1264
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i44, i64 225
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !85, !range !78, !noundef !79
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %mi_page_queue_of.exit
  tail call void @_mi_page_abandon(ptr noundef nonnull %.03950, ptr noundef nonnull %i.bp)
  br label %mi_page_to_full.exit

bb.v:                                             ; preds = %mi_page_queue_of.exit
  %i.bt = load atomic i64, ptr %.03950 monotonic, align 8
  %i.bu = trunc i64 %i.bt to i1
  br i1 %i.bu, label %mi_page_to_full.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i44, i64 3632
  tail call fastcc void @mi_page_queue_enqueue_from_ex(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bp, ptr noundef nonnull %.03950)
  %i.bw = getelementptr inbounds nuw i8, ptr %.03950, i64 32 ; 2 uses
  %i.bx = load atomic i64, ptr %i.bw monotonic, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.0.i.i.i = phi i64 [ %i.bx, %bb.w ], [ %i.cc, %bb.y ] ; 3 uses
  %i.by = and i64 %.0.i.i.i, -2                   ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %mi_page_thread_free_collect.exit.i.i, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.ca = cmpxchg weak ptr %i.bw, i64 %.0.i.i.i, i64 %.0.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  br i1 %i.cb, label %bb.z, label %bb.x, !llvm.loop !54

bb.z:                                             ; preds = %bb.y
  %i.cd = inttoptr i64 %i.by to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.03950, ptr noundef %i.cd)
  br label %mi_page_thread_free_collect.exit.i.i

mi_page_thread_free_collect.exit.i.i:             ; preds = %bb.x, %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %.03950, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !55 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i45, label %mi_page_to_full.exit, label %bb.aa

bb.aa:                                            ; preds = %mi_page_thread_free_collect.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.03950, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !56
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.sink.split.i.i, label %mi_page_to_full.exit, !prof !7

.sink.split.i.i:                                  ; preds = %bb.aa
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !56
  store ptr null, ptr %i.ce, align 8, !tbaa !55
  %i.cj = getelementptr inbounds nuw i8, ptr %.03950, i64 57
  store i8 0, ptr %i.cj, align 1, !tbaa !60
  br label %mi_page_to_full.exit

mi_page_to_full.exit:                             ; preds = %.sink.split.i.i, %bb.aa, %mi_page_thread_free_collect.exit.i.i, %bb.v, %bb.u, %bb.l, %bb.p, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.l ], [ %.0, %bb.p ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ %.0, %mi_page_thread_free_collect.exit.i.i ], [ %.0, %bb.aa ], [ %.0, %.sink.split.i.i ]
  ret ptr %.1
}

declare ptr @mi_heap_get_default() local_unnamed_addr #3

declare i64 @mi_option_get_clamp(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @mi_heap_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_find_page(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 75, ptr noundef nonnull @.str.2, i64 noundef %1) #14
  br label %mi_find_free_page.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  %i.b = select i1 %.not, i64 %1, i64 65537
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.d = tail call fastcc range(i64 -3, 74) i64 @mi_bin(i64 noundef range(i64 0, -9223372036854775808) %i.b)
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val = load i64, ptr %i.f, align 8, !tbaa !9
  %i.g = icmp eq i64 %.val, 65544
  br i1 %i.g, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc ptr @mi_huge_page_alloc(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.e)
  br label %mi_find_free_page.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !28   ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !56
  %.not9.i = icmp eq ptr %.val.i, null
  br i1 %.not9.i, label %.critedge.i, label %bb.g, !prof !8

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  store i8 0, ptr %i.k, align 1, !tbaa !69
  br label %mi_find_free_page.exit

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.l = tail call fastcc ptr @mi_page_queue_find_free_ex(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i1 noundef zeroext true)
  br label %mi_find_free_page.exit

mi_find_free_page.exit:                           ; preds = %.critedge.i, %bb.g, %bb.d, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.h, %bb.d ], [ %i.i, %bb.g ], [ %i.l, %.critedge.i ]
  ret ptr %.1
}

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @_mi_page_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @_mi_page_malloc_zero(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_enqueue_from_ex(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 64
  %.val64 = load ptr, ptr %i.a, align 8, !tbaa !29 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %.pre, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not61 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not61, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  store ptr %i.c, ptr %i.f, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp eq ptr %2, %i.h
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !52
  store ptr %i.j, ptr %i.g, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !28
  %i.l = icmp eq ptr %2, %i.k
  br i1 %i.l, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %1, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 4 uses
  %i.o = icmp ugt i64 %i.n, 1024
  br i1 %i.o, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not61, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.p = add nuw nsw i64 %i.n, 7
  %i.q = lshr i64 %i.p, 3                         ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val64, i64 232 ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = icmp eq ptr %i.t, %spec.store.select.i
  br i1 %i.u, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ult i64 %i.n, 9
  br i1 %i.v, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call fastcc i64 @mi_bin(i64 noundef %i.n)
  %i.x = getelementptr inbounds nuw i8, ptr %.val64, i64 1264
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi ptr [ %1, %bb.j ], [ %.027.i, %bb.k ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !9    ; 2 uses
  %i.aa = tail call fastcc i64 @mi_bin(i64 noundef %i.z)
  %i.ab = icmp eq i64 %i.w, %i.aa
  %i.ac = icmp ugt ptr %.027.i, %i.x
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.k, label %bb.l, !llvm.loop !47

bb.l:                                             ; preds = %bb.k
  %i.ae = add i64 %i.z, 7
  %i.af = lshr i64 %i.ae, 3                       ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1
  %.not.i = icmp samesign ult i64 %i.af, %i.q
  %spec.select.i = select i1 %.not.i, i64 %i.ag, i64 %i.q ; 2 uses
  %.not3233.i = icmp samesign ugt i64 %spec.select.i, %i.q
  br i1 %.not3233.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l, %bb.i
  %.138.i = phi i64 [ %spec.select.i, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %i.ah = sub nsw i64 %i.q, %.138.i
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.aj = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.r, i64 %.138.i
end_hunk_1
begin_hunk_2_@mi_page_fresh_alloc:bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %mi_page_extend_free.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @mi_page_queue_push(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a)
  br label %mi_page_extend_free.exit

mi_page_extend_free.exit:                         ; preds = %bb.k, %bb.i, %bb.c, %bb.m, %bb.l, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.a, %bb.l ], [ %i.a, %bb.m ], [ %i.a, %bb.c ], [ %i.a, %bb.i ], [ %i.a, %bb.k ]
  ret ptr %.0
}

declare void @__mi_stat_increase(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @__mi_stat_counter_increase(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @_mi_arenas_page_alloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: norecurse nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_push(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef nonnull %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !9
  %i.b = icmp eq i64 %.val, 65552
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw or ptr %2, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit

bb.c:                                             ; preds = %bb.a
  %i.d = atomicrmw and ptr %2, i64 -2 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit

mi_page_set_in_full.exit:                         ; preds = %bb.b, %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !28     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.e, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr null, ptr %i.g, align 8, !tbaa !52
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mi_page_set_in_full.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %2, ptr %i.h, align 8, !tbaa !52
  br label %bb.f

bb.e:                                             ; preds = %mi_page_set_in_full.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %2, ptr %1, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !53
  %i.m = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.n = icmp ugt i64 %i.m, 1024
  br i1 %i.n, label %mi_heap_queue_first_update.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw nsw i64 %i.m, 7
  %i.p = lshr i64 %i.o, 3                         ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = icmp eq ptr %i.s, %2
  br i1 %i.t, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp samesign ult i64 %i.m, 9
  br i1 %i.u, label %.lr.ph.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call fastcc i64 @mi_bin(i64 noundef %i.m)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.pn.i = phi ptr [ %1, %bb.i ], [ %.027.i, %bb.j ] ; 2 uses
  %.027.i = getelementptr inbounds i8, ptr %.pn.i, i64 -32 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  %i.z = tail call fastcc i64 @mi_bin(i64 noundef %i.y)
  %i.aa = icmp eq i64 %i.v, %i.z
  %i.ab = icmp ugt ptr %.027.i, %i.w
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.j, label %bb.k, !llvm.loop !47

bb.k:                                             ; preds = %bb.j
  %i.ad = add i64 %i.y, 7
  %i.ae = lshr i64 %i.ad, 3                       ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 1
  %.not.i = icmp samesign ult i64 %i.ae, %i.p
  %spec.select.i = select i1 %.not.i, i64 %i.af, i64 %i.p ; 2 uses
  %.not3233.i = icmp samesign ugt i64 %spec.select.i, %i.p
  br i1 %.not3233.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k, %bb.h
  %.138.i = phi i64 [ %spec.select.i, %bb.k ], [ 0, %bb.h ] ; 4 uses
  %i.ag = sub nsw i64 %i.p, %.138.i
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.ai = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.q, i64 %.138.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ak, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.al, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.034.i.ph = phi i64 [ %.138.i, %.lr.ph.preheader.i ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.034.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.034.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.034.i
  store ptr %2, ptr %i.an, align 8, !tbaa !14
  %i.ao = add nuw nsw i64 %.034.i, 1
  %exitcond.not.i = icmp eq i64 %.034.i, %i.p
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !92

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.f, %bb.g, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !66
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_page_queue_find_free_ex(ptr noundef %0, ptr nofree noundef captures(address) %1, i1 noundef zeroext %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %tailrecurse

tailrecurse:                                      ; preds = %mi_page_extend_free.exit, %bb.a
  %.tr104 = phi i1 [ %2, %bb.a ], [ false, %mi_page_extend_free.exit ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !9
  %i.d = icmp ugt i64 %i.c, 8176
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.e = load i64, ptr %i.b, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %tailrecurse ]
  %i.g = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not123 = icmp eq ptr %i.g, null
  br i1 %.not123, label %mi_page_to_full.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %mi_page_to_full.exit
  %.055128 = phi i64 [ %i.j, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %.056127 = phi ptr [ %i.i, %mi_page_to_full.exit ], [ %i.g, %bb.c ] ; 20 uses
  %.058126 = phi ptr [ %.361, %mi_page_to_full.exit ], [ null, %bb.c ] ; 16 uses
  %.063125 = phi i64 [ %.265, %mi_page_to_full.exit ], [ %i.f, %bb.c ] ; 3 uses
  %.066124 = phi i64 [ %.369, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.056127, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = add i64 %.055128, 1                      ; 3 uses
  %i.k = add nsw i64 %.066124, -1                 ; 9 uses
  %i.l = getelementptr i8, ptr %.056127, i64 8    ; 5 uses
  %.056.val79 = load ptr, ptr %i.l, align 8, !tbaa !56
  %.not99 = icmp eq ptr %.056.val79, null
  br i1 %.not99, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.056127, i64 32 ; 4 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.s, %bb.f ] ; 3 uses
  %i.o = and i64 %.0.i.i, -2                      ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.q = cmpxchg weak ptr %i.m, i64 %.0.i.i, i64 %.0.i.i acq_rel acquire, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.e, !llvm.loop !54

bb.g:                                             ; preds = %bb.f
  %i.t = inttoptr i64 %i.o to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056127, ptr noundef %i.t)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.056127, i64 24 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  %.056.val.pr = load ptr, ptr %i.l, align 8, !tbaa !56
  %.not100 = icmp eq ptr %.056.val.pr, null       ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not100, label %.sink.split.i, label %.thread, !prof !7

.sink.split.i:                                    ; preds = %bb.h
  store ptr %i.v, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %.056127, i64 57
  store i8 0, ptr %i.w, align 1, !tbaa !60
  br label %.thread

bb.i:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not100, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %.056127, i64 18
  %.056.val80 = load i16, ptr %i.x, align 2, !tbaa !61
  %i.y = getelementptr i8, ptr %.056127, i64 20
  %.056.val81 = load i16, ptr %i.y, align 4, !tbaa !17
  %i.z = icmp ult i16 %.056.val80, %.056.val81
  br i1 %i.z, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i64 %.063125, -1                ; 6 uses
  %i.ab = icmp slt i64 %.063125, 1
  br i1 %i.ab, label %bb.l, label %mi_page_to_full.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %.056127, i64 64
  %.val9.i = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val9.i, i64 225
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !85, !range !78, !noundef !79
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_mi_page_abandon(ptr noundef nonnull %.056127, ptr noundef nonnull %1)
  br label %mi_page_to_full.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = load atomic i64, ptr %.056127 monotonic, align 8
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %mi_page_to_full.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i, i64 3632
  tail call fastcc void @mi_page_queue_enqueue_from_ex(ptr noundef nonnull %i.ai, ptr noundef nonnull %1, ptr noundef nonnull %.056127)
  %i.aj = load atomic i64, ptr %i.m monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.0.i.i.i = phi i64 [ %i.aj, %bb.o ], [ %i.ao, %bb.q ] ; 3 uses
  %i.ak = and i64 %.0.i.i.i, -2                   ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %mi_page_thread_free_collect.exit.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.am = cmpxchg weak ptr %i.m, i64 %.0.i.i.i, i64 %.0.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  %i.ao = extractvalue { i64, i1 } %i.am, 0
  br i1 %i.an, label %bb.r, label %bb.p, !llvm.loop !54

bb.r:                                             ; preds = %bb.q
  %i.ap = inttoptr i64 %i.ak to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056127, ptr noundef %i.ap)
  br label %mi_page_thread_free_collect.exit.i.i

mi_page_thread_free_collect.exit.i.i:             ; preds = %bb.p, %bb.r
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %mi_page_to_full.exit, label %bb.s

bb.s:                                             ; preds = %mi_page_thread_free_collect.exit.i.i
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.sink.split.i.i, label %mi_page_to_full.exit, !prof !7

.sink.split.i.i:                                  ; preds = %bb.s
  store ptr %i.aq, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.u, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %.056127, i64 57
  store i8 0, ptr %i.at, align 1, !tbaa !60
  br label %mi_page_to_full.exit

.thread:                                          ; preds = %bb.h, %.sink.split.i, %.lr.ph, %bb.j, %bb.i
  %.054.in86 = phi i1 [ true, %.lr.ph ], [ false, %bb.j ], [ true, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.h ]
  %i.au = icmp eq ptr %.058126, null
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.av = tail call i64 @_mi_option_get_fast(i32 noundef 37) #14
  br label %bb.y

bb.u:                                             ; preds = %.thread
  %i.aw = getelementptr i8, ptr %.058126, i64 16
  %.058.val = load i16, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  %i.ax = icmp eq i16 %.058.val, 0
  br i1 %i.ax, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ay = atomicrmw and ptr %.058126, i64 -3 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %.058126)
  %i.az = getelementptr inbounds nuw i8, ptr %.058126, i64 64 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %i.bc = load atomic i64, ptr %.058126 monotonic, align 8
  store ptr null, ptr %i.az, align 8, !tbaa !29
  %i.bd = and i64 %i.bc, 3
  store atomic i64 %i.bd, ptr %.058126 release, align 8
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %.058126, ptr noundef %i.bb) #14
  tail call void @_mi_arenas_collect(i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.bb) #14
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %.056127, i64 16
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !63 ; 2 uses
  %.not72 = icmp ult i16 %i.bf, %.058.val
  br i1 %.not72, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr i8, ptr %.056127, i64 20
  %.056.val83 = load i16, ptr %i.bg, align 4, !tbaa !17 ; 2 uses
  %i.bh = zext i16 %.056.val83 to i32
  %i.bi = zext i16 %i.bf to i32
  %i.bj = sub nsw i32 %i.bh, %i.bi
  %i.bk = lshr i16 %.056.val83, 3
  %i.bl = zext nneg i16 %i.bk to i32
  %.not101 = icmp sgt i32 %i.bj, %i.bl
  %spec.select = select i1 %.not101, ptr %.056127, ptr %.058126
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.w, %bb.t
  %.167 = phi i64 [ %i.av, %bb.t ], [ %i.k, %bb.v ], [ %i.k, %bb.x ], [ %i.k, %bb.w ] ; 2 uses
  %.159 = phi ptr [ %.056127, %bb.t ], [ %.056127, %bb.v ], [ %spec.select, %bb.x ], [ %.058126, %bb.w ] ; 2 uses
  %i.bm = icmp slt i64 %.167, 1
  %or.cond = select i1 %.054.in86, i1 true, i1 %i.bm
  br i1 %or.cond, label %mi_page_to_full.exit.thread, label %mi_page_to_full.exit

mi_page_to_full.exit:                             ; preds = %bb.y, %.sink.split.i.i, %bb.s, %mi_page_thread_free_collect.exit.i.i, %bb.n, %bb.m, %bb.k
  %.369 = phi i64 [ %.167, %bb.y ], [ %i.k, %bb.k ], [ %i.k, %bb.m ], [ %i.k, %bb.n ], [ %i.k, %mi_page_thread_free_collect.exit.i.i ], [ %i.k, %bb.s ], [ %i.k, %.sink.split.i.i ]
  %.265 = phi i64 [ %.063125, %bb.y ], [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ], [ %i.aa, %mi_page_thread_free_collect.exit.i.i ], [ %i.aa, %bb.s ], [ %i.aa, %.sink.split.i.i ]
  %.361 = phi ptr [ %.159, %bb.y ], [ %.058126, %bb.k ], [ %.058126, %bb.m ], [ %.058126, %bb.n ], [ %.058126, %mi_page_thread_free_collect.exit.i.i ], [ %.058126, %bb.s ], [ %.058126, %.sink.split.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %mi_page_to_full.exit.thread, label %.lr.ph

mi_page_to_full.exit.thread:                      ; preds = %mi_page_to_full.exit, %bb.y, %bb.c
  %.462 = phi ptr [ null, %bb.c ], [ %.159, %bb.y ], [ %.361, %mi_page_to_full.exit ] ; 2 uses
  %.2 = phi ptr [ null, %bb.c ], [ %.056127, %bb.y ], [ null, %mi_page_to_full.exit ]
  %.1 = phi i64 [ 0, %bb.c ], [ %i.j, %bb.y ], [ %i.j, %mi_page_to_full.exit ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 432
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.bo, i64 noundef %.1) #14
  %.not73 = icmp eq ptr %.462, null
  %spec.select75 = select i1 %.not73, ptr %.2, ptr %.462 ; 17 uses
  %.not74 = icmp eq ptr %spec.select75, null
  br i1 %.not74, label %mi_page_extend_free.exit, label %bb.z

bb.z:                                             ; preds = %mi_page_to_full.exit.thread
  %i.bp = getelementptr i8, ptr %spec.select75, i64 8
  %spec.select75.val = load ptr, ptr %i.bp, align 8, !tbaa !56
  %.not102 = icmp eq ptr %spec.select75.val, null
  br i1 %.not102, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select75, i64 18
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !61 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select75, i64 20
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !17 ; 2 uses
  %.not40.i = icmp ult i16 %i.br, %i.bt
  br i1 %.not40.i, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.bu = getelementptr i8, ptr %spec.select75, i64 40
  %.val4.i.i = load i64, ptr %i.bu, align 8, !tbaa !25 ; 4 uses
  %i.bv = getelementptr i8, ptr %spec.select75, i64 48
  %i.bw = zext i16 %i.br to i64
  %narrow.i = sub nuw i16 %i.bt, %i.br
  %i.bx = zext i16 %narrow.i to i64
  %i.by = icmp ugt i64 %.val4.i.i, 4095
  br i1 %i.by, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.rhs.trunc.i = trunc nuw nsw i64 %.val4.i.i to i16
  %i.bz = udiv i16 4096, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.bz to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ca = phi i64 [ %.zext.i, %bb.ac ], [ 1, %bb.ab ]
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bx) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %spec.select75, i64 88
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !73 ; 4 uses
  %.not41.i = icmp eq i64 %i.cc, 0
  br i1 %.not41.i, label %.loopexit105, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = add nuw nsw i64 %spec.select.i, %i.bw
  %i.ce = mul i64 %i.cd, %.val4.i.i
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !74
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %spec.select75 to i64
  %reass.sub = sub i64 %i.ce, %i.ch
  %i.ci = add i64 %reass.sub, 65535
  %i.cj = add i64 %i.ci, %i.cg
  %i.ck = and i64 %i.cj, -65536                   ; 3 uses
  %i.cl = icmp ugt i64 %i.ck, %i.cc
  br i1 %i.cl, label %bb.af, label %.loopexit105

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %spec.select75, i64 %i.cc
  %i.cn = sub nuw i64 %i.ck, %i.cc
  %i.co = tail call zeroext i1 @_mi_os_commit(ptr noundef nonnull %i.cm, i64 noundef %i.cn, ptr noundef null) #14
  br i1 %i.co, label %bb.ag, label %mi_page_extend_free.exit

bb.ag:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw i8, ptr %spec.select75, i64 88
  store i64 %i.ck, ptr %i.cp, align 8, !tbaa !73
  br label %.loopexit105

.loopexit105:                                     ; preds = %bb.ae, %bb.ad, %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %spec.select75, i64 18 ; 2 uses
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %spec.select75, i64 noundef %.val4.i.i, i64 noundef %spec.select.i)
  %i.cr = trunc nuw nsw i64 %spec.select.i to i16
  %i.cs = load i16, ptr %i.cq, align 2, !tbaa !61
  %i.ct = add i16 %i.cs, %i.cr
  store i16 %i.ct, ptr %i.cq, align 2, !tbaa !61
  br label %.loopexit

mi_page_extend_free.exit:                         ; preds = %mi_page_to_full.exit.thread, %bb.af
  tail call void @_mi_heap_collect_retired(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !9
  %i.cv = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.cu, i64 noundef 0) ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  %or.cond3 = and i1 %.tr104, %i.cw
  br i1 %or.cond3, label %tailrecurse, label %.loopexit106

.loopexit:                                        ; preds = %bb.z, %bb.aa, %.loopexit105
  %i.cx = load ptr, ptr %1, align 8, !tbaa !28
  %i.cy = icmp eq ptr %i.cx, %spec.select75
  br i1 %i.cy, label %mi_page_queue_move_to_front.exit, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %spec.select75)
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %spec.select75)
  br label %mi_page_queue_move_to_front.exit

mi_page_queue_move_to_front.exit:                 ; preds = %.loopexit, %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %spec.select75, i64 23
  store i8 0, ptr %i.cz, align 1, !tbaa !69
  br label %.loopexit106

.loopexit106:                                     ; preds = %mi_page_extend_free.exit, %mi_page_queue_move_to_front.exit
  %.5 = phi ptr [ %spec.select75, %mi_page_queue_move_to_front.exit ], [ %i.cv, %mi_page_extend_free.exit ]
  ret ptr %.5
}

declare i64 @_mi_option_get_fast(i32 noundef) local_unnamed_addr #3

end_hunk_2
