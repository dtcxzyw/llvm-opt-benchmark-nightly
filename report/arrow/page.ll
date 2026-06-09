inline.NumInlined: 133
inline.NumDeleted: 55
begin_hunk_0_@mi_good_size:bb.a
  %i.c = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_mi_heap_empty, i64 1264), i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  br label %_mi_align_up.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @_mi_os_page_size() #14    ; 4 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.h = icmp samesign ult i64 %i.g, 2
  %i.i = add i64 %0, -1
  %i.j = add i64 %i.i, %i.f                       ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %i.f
  %i.l = and i64 %i.j, %i.k
  br label %_mi_align_up.exit

bb.e:                                             ; preds = %bb.c
  %i.m = urem i64 %i.j, %i.f
  %i.n = sub nuw i64 %i.j, %i.m
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  ret i64 %.0
}

declare i64 @_mi_os_page_size() local_unnamed_addr #3

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_mi_page_queue_is_valid(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.012 = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %.loopexit, label %mi_page_is_huge.exit

mi_page_is_huge.exit:                             ; preds = %.preheader, %mi_page_is_huge.exit
  %.014 = phi ptr [ %.0, %mi_page_is_huge.exit ], [ %.012, %.preheader ] ; 2 uses
  %i.b = load atomic i64, ptr %.014 monotonic, align 8 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 72
  %.0 = load ptr, ptr %i.c, align 8, !tbaa !14    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %mi_page_is_huge.exit, !llvm.loop !15

.loopexit:                                        ; preds = %mi_page_is_huge.exit, %.preheader, %bb.a
  ret i1 %i.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i64 -3, 75) i64 @_mi_page_bin(ptr nofree noundef captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %mi_page_is_huge.exit.thread3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %.val.i = load i16, ptr %i.c, align 4, !tbaa !17
  %i.d = icmp eq i16 %.val.i, 1
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  br i1 %i.d, label %bb.c, label %mi_page_is_huge.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 65536
  br i1 %i.g, label %mi_page_is_huge.exit.thread3, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = add i32 %i.i, -4
  %i.k = icmp ult i32 %i.j, 3
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
  %3 = sub nsw i64 %i.ag, %.138.i
  %4 = add i64 %3, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.ax = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ah, i64 %.138.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.az, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.ba, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.034.i.ph = phi i64 [ %.138.i, %.lr.ph.preheader.i ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.034.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %.034.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.034.i
  store ptr %spec.store.select.i, ptr %i.bc, align 8, !tbaa !14
  %i.bd = add nuw nsw i64 %.034.i, 1
  %exitcond.not.i = icmp eq i64 %.034.i, %i.ag
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !51

bb.h:                                             ; preds = %.split.us
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr %i.n, ptr %i.be, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.l, ptr %i.bf, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  store ptr %i.bh, ptr %i.k, align 8, !tbaa !32
  br label %mi_heap_queue_first_update.exit

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.g, %bb.c, %bb.b, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, %i.bj
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !53
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
  %.0.i = phi i64 [ %i.b, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %i.c = and i64 %.0.i, -2                        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_page_thread_free_collect.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.0.i, 1
  %i.f = cmpxchg weak ptr %i.a, i64 %.0.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !54

bb.d:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.c to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.i)
  br label %mi_page_thread_free_collect.exit

mi_page_thread_free_collect.exit:                 ; preds = %bb.b, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_page_thread_free_collect.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.sink.split, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  br i1 %1, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0 = phi ptr [ %i.o, %.preheader ], [ %i.k, %bb.f ] ; 2 uses
  %.0.val = load i64, ptr %.0, align 8, !tbaa !57 ; 2 uses
  %i.o = inttoptr i64 %.0.val to ptr
  %.not20 = icmp eq i64 %.0.val, 0
  br i1 %.not20, label %bb.g, label %.preheader, !llvm.loop !59

bb.g:                                             ; preds = %.preheader
  %i.p = ptrtoint ptr %i.m to i64
  store i64 %i.p, ptr %.0, align 8, !tbaa !57
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  store ptr %i.k, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.j, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.q, align 1, !tbaa !60
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
end_hunk_0
begin_hunk_1_@mi_page_thread_collect_to_local:bb.a
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
  %.0.i.i = phi i64 [ %i.n, %mi_page_set_heap.exit ], [ %i.t, %bb.e ] ; 3 uses
  %i.o = and i64 %.0.i.i, -2                      ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %mi_page_thread_free_collect.exit.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = and i64 %.0.i.i, 1
  %i.r = cmpxchg weak ptr %i.m, i64 %.0.i.i, i64 %i.q acq_rel acquire, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.d, !llvm.loop !54

bb.f:                                             ; preds = %bb.e
  %i.u = inttoptr i64 %i.o to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %1, ptr noundef %i.u)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.d, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.g

bb.g:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !7

.sink.split.i:                                    ; preds = %bb.g
  store ptr %i.w, ptr %i.x, align 8, !tbaa !56
  store ptr null, ptr %i.v, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.aa, align 1, !tbaa !60
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.g, %mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ab = load atomic i64, ptr %1 monotonic, align 8
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %mi_heap_page_queue_of.exit, label %bb.h

bb.h:                                             ; preds = %_mi_page_free_collect.exit
  %i.ad = getelementptr i8, ptr %1, i64 20
  %.val.i.i.i = load i16, ptr %i.ad, align 4, !tbaa !17
  %i.ae = icmp eq i16 %.val.i.i.i, 1
  %i.af = getelementptr i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  br i1 %i.ae, label %bb.i, label %mi_page_is_huge.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ugt i64 %i.ag, 65536
  br i1 %i.ah, label %mi_heap_page_queue_of.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !26
  %i.ak = add i32 %i.aj, -4
  %i.al = icmp ult i32 %i.ak, 3
  br i1 %i.al, label %mi_page_is_huge.exit.i.i, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.i.i:                         ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.ao = icmp ult ptr %i.an, %1
  br i1 %i.ao, label %mi_heap_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.thread.i.i:                  ; preds = %mi_page_is_huge.exit.i.i, %bb.j, %bb.h
  %i.ap = tail call fastcc i64 @mi_bin(i64 noundef %i.ag)
  %i.aq = shl nuw nsw i64 %i.ap, 5
  %i.ar = add nuw nsw i64 %i.aq, 1264
  br label %mi_heap_page_queue_of.exit

mi_heap_page_queue_of.exit:                       ; preds = %_mi_page_free_collect.exit, %bb.i, %mi_page_is_huge.exit.i.i, %mi_page_is_huge.exit.thread.i.i
  %.idx = phi i64 [ 3632, %_mi_page_free_collect.exit ], [ %i.ar, %mi_page_is_huge.exit.thread.i.i ], [ 3600, %mi_page_is_huge.exit.i.i ], [ 3600, %bb.i ] ; 2 uses
  %.ptr9 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.as = getelementptr i8, ptr %.ptr9, i64 24    ; 2 uses
  %.val.i = load i64, ptr %i.as, align 8, !tbaa !9
  %i.at = icmp eq i64 %.val.i, 65552
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %mi_heap_page_queue_of.exit
  %i.au = atomicrmw or ptr %1, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit.i

bb.l:                                             ; preds = %mi_heap_page_queue_of.exit
  %i.av = atomicrmw and ptr %1, i64 -2 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit.i

mi_page_set_in_full.exit.i:                       ; preds = %bb.l, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.ptr9, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.az, align 8, !tbaa !30
  %.not.i8 = icmp eq ptr %i.ax, null
  br i1 %.not.i8, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %mi_page_set_in_full.exit.i
  store ptr %1, ptr %.ptr9, align 8, !tbaa !28
  store ptr %1, ptr %i.aw, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !53
  br label %bb.n

bb.m:                                             ; preds = %mi_page_set_in_full.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %1, ptr %i.bd, align 8, !tbaa !30
  %.pre.i = load ptr, ptr %.ptr9, align 8, !tbaa !28 ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !53
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !53
  %i.bh = icmp eq ptr %.pre.i, %1
  br i1 %i.bh, label %bb.n, label %mi_page_queue_push_at_end.exit

bb.n:                                             ; preds = %bb.m, %.thread.i
  %i.bi = phi ptr [ %1, %.thread.i ], [ %.pre.i, %bb.m ] ; 3 uses
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !9  ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, 1024
  br i1 %i.bk, label %mi_page_queue_push_at_end.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = add nuw nsw i64 %i.bj, 7
  %i.bm = lshr i64 %i.bl, 3                       ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !14
  %i.bq = icmp eq ptr %i.bp, %i.bi
  br i1 %i.bq, label %mi_page_queue_push_at_end.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = icmp samesign ult i64 %i.bj, 9
  br i1 %i.br, label %.lr.ph.preheader.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = tail call fastcc i64 @mi_bin(i64 noundef %i.bj)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.pn.i.i.idx = phi i64 [ %.idx, %bb.q ], [ %.pn.i.i.add, %bb.r ] ; 3 uses
  %.pn.i.i.ptr = getelementptr inbounds i8, ptr %0, i64 %.pn.i.i.idx
  %.pn.i.i.add = add nsw i64 %.pn.i.i.idx, -32
  %i.bt = getelementptr inbounds i8, ptr %.pn.i.i.ptr, i64 -8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !9  ; 2 uses
  %i.bv = tail call fastcc i64 @mi_bin(i64 noundef %i.bu)
  %i.bw = icmp eq i64 %i.bs, %i.bv
  %i.bx = icmp samesign ugt i64 %.pn.i.i.idx, 1296
  %i.by = and i1 %i.bx, %i.bw
  br i1 %i.by, label %bb.r, label %bb.s, !llvm.loop !47

bb.s:                                             ; preds = %bb.r
  %i.bz = add i64 %i.bu, 7
  %i.ca = lshr i64 %i.bz, 3                       ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, 1
  %.not.i.i = icmp samesign ult i64 %i.ca, %i.bm
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.cb, i64 %i.bm ; 2 uses
  %.not3233.i.i = icmp samesign ugt i64 %spec.select.i.i, %i.bm
  br i1 %.not3233.i.i, label %mi_page_queue_push_at_end.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.s, %bb.p
  %.138.i.i = phi i64 [ %spec.select.i.i, %bb.s ], [ 0, %bb.p ] ; 4 uses
  %2 = sub nsw i64 %i.bm, %.138.i.i
  %3 = add i64 %2, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.cc = add i64 %.138.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bi, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.bn, i64 %.138.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ce, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.cf, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %mi_page_queue_push_at_end.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.034.i.i.ph = phi i64 [ %.138.i.i, %.lr.ph.preheader.i.i ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.034.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.034.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.034.i.i
  store ptr %i.bi, ptr %i.ch, align 8, !tbaa !14
  %i.ci = add nuw nsw i64 %.034.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.034.i.i, %i.bm
  br i1 %exitcond.not.i.i, label %mi_page_queue_push_at_end.exit, label %.lr.ph.i.i, !llvm.loop !65

mi_page_queue_push_at_end.exit:                   ; preds = %.lr.ph.i.i, %middle.block, %bb.m, %bb.n, %bb.o, %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !66
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_abandon(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i.i = phi i64 [ %i.b, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %i.c = and i64 %.0.i.i, -2                      ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_page_thread_free_collect.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.0.i.i, 1
  %i.f = cmpxchg weak ptr %i.a, i64 %.0.i.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !54

bb.d:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.c to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.i)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.b, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.e

bb.e:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !7

.sink.split.i:                                    ; preds = %bb.e
  store ptr %i.k, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.j, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.o, align 1, !tbaa !60
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.e, %mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.p = getelementptr i8, ptr %0, i64 16
  %.val = load i16, ptr %i.p, align 8, !tbaa !63
  %i.q = icmp eq i16 %.val, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_mi_page_free_collect.exit
  %i.r = atomicrmw and ptr %0, i64 -3 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef nonnull %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.v = load atomic i64, ptr %0 monotonic, align 8
  store ptr null, ptr %i.s, align 8, !tbaa !29
  %i.w = and i64 %i.v, 3
  store atomic i64 %i.w, ptr %0 release, align 8
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %0, ptr noundef %i.u) #14
  br label %bb.h

bb.g:                                             ; preds = %_mi_page_free_collect.exit
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef nonnull %0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 3 uses
  %i.z = load atomic i64, ptr %0 monotonic, align 8
  store ptr null, ptr %i.x, align 8, !tbaa !29
  %i.aa = and i64 %i.z, 3
  store atomic i64 %i.aa, ptr %0 release, align 8
  store ptr %i.y, ptr %i.x, align 8, !tbaa !29
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !33
  tail call void @_mi_arenas_page_abandon(ptr noundef nonnull %0, ptr noundef %i.ab) #14
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ %i.ac, %bb.g ], [ %i.u, %bb.f ]
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
  %2 = sub nsw i64 %i.p, %.138.i
  %3 = add i64 %2, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ag = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.q, i64 %.138.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ai, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.aj, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.034.i.ph = phi i64 [ %.138.i, %.lr.ph.preheader.i ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.034.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.034.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.034.i
  store ptr %spec.store.select.i, ptr %i.al, align 8, !tbaa !14
  %i.am = add nuw nsw i64 %.034.i, 1
  %exitcond.not.i = icmp eq i64 %.034.i, %i.p
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !68

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.l, %bb.h, %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !66
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !53
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.au = atomicrmw and ptr %1, i64 -2 monotonic, align 8 ; 0 uses
  ret void
}

declare void @_mi_arenas_page_abandon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_mi_arenas_collect(i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_page_unfull(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 3632
  %i.e = atomicrmw and ptr %0, i64 -2 monotonic, align 8 ; 0 uses
  %i.f = load atomic i64, ptr %0 monotonic, align 8
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %mi_heap_page_queue_of.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 20
  %.val.i.i.i = load i16, ptr %i.h, align 4, !tbaa !17
  %i.i = icmp eq i16 %.val.i.i.i, 1
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  br i1 %i.i, label %bb.d, label %mi_page_is_huge.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.k, 65536
  br i1 %i.l, label %mi_heap_page_queue_of.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !26
  %i.o = add i32 %i.n, -4
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %mi_page_is_huge.exit.i.i, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.i.i:                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = icmp ult ptr %i.r, %0
  br i1 %i.s, label %mi_heap_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.thread.i.i:                  ; preds = %mi_page_is_huge.exit.i.i, %bb.e, %bb.c
  %i.t = tail call fastcc i64 @mi_bin(i64 noundef %i.k)
  br label %mi_heap_page_queue_of.exit

mi_heap_page_queue_of.exit:                       ; preds = %bb.b, %bb.d, %mi_page_is_huge.exit.i.i, %mi_page_is_huge.exit.thread.i.i
  %i.u = phi i64 [ 74, %bb.b ], [ %i.t, %mi_page_is_huge.exit.thread.i.i ], [ 73, %mi_page_is_huge.exit.i.i ], [ 73, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 1264
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.u
  %i.x = atomicrmw or ptr %0, i64 1 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_enqueue_from_ex(ptr noundef nonnull %i.w, ptr noundef nonnull %i.d, ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %mi_heap_page_queue_of.exit
  ret void
}

declare void @_mi_arenas_page_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_retire(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = atomicrmw and ptr %0, i64 -3 monotonic, align 8 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !29 ; 3 uses
  %i.c = load atomic i64, ptr %0 monotonic, align 8
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %.mi_page_queue_of.exit_crit_edge, label %bb.b

.mi_page_queue_of.exit_crit_edge:                 ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 40
  %.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %mi_page_queue_of.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 20
  %.val.i.i.i.i = load i16, ptr %i.e, align 4, !tbaa !17
  %i.f = icmp eq i16 %.val.i.i.i.i, 1
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25   ; 5 uses
  br i1 %i.f, label %bb.c, label %mi_page_is_huge.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.h, 65536
  br i1 %i.i, label %mi_page_queue_of.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %i.l = add i32 %i.k, -4
  %i.m = icmp ult i32 %i.l, 3
  br i1 %i.m, label %mi_page_is_huge.exit.i.i.i, label %mi_page_is_huge.exit.thread.i.i.i

mi_page_is_huge.exit.i.i.i:                       ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = icmp ult ptr %i.o, %0
  br i1 %i.p, label %mi_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i.i

mi_page_is_huge.exit.thread.i.i.i:                ; preds = %mi_page_is_huge.exit.i.i.i, %bb.d, %bb.b
  %i.q = tail call fastcc i64 @mi_bin(i64 noundef %i.h)
  br label %mi_page_queue_of.exit

mi_page_queue_of.exit:                            ; preds = %.mi_page_queue_of.exit_crit_edge, %bb.c, %mi_page_is_huge.exit.i.i.i, %mi_page_is_huge.exit.thread.i.i.i
  %.val = phi i64 [ %.val.pre, %.mi_page_queue_of.exit_crit_edge ], [ %i.h, %mi_page_is_huge.exit.thread.i.i.i ], [ %i.h, %mi_page_is_huge.exit.i.i.i ], [ %i.h, %bb.c ]
  %i.r = phi i64 [ 74, %.mi_page_queue_of.exit_crit_edge ], [ %i.q, %mi_page_is_huge.exit.thread.i.i.i ], [ 73, %mi_page_is_huge.exit.i.i.i ], [ 73, %bb.c ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 1264
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.r ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %.val24 = load i64, ptr %i.u, align 8, !tbaa !9
  %i.v = icmp ugt i64 %.val24, 65536
  br i1 %i.v, label %bb.k, label %bb.e, !prof !8

bb.e:                                             ; preds = %mi_page_queue_of.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = icmp eq ptr %i.x, %0
  br i1 %i.y, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.aa = icmp eq ptr %i.z, %0
  br i1 %i.aa, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %.val, 8177
  %i.ac = select i1 %i.ab, i8 16, i8 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !69
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 176 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !70
  %i.ag = icmp ult i64 %i.r, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.r, ptr %i.ae, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 184 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !71
  %i.aj = icmp ugt i64 %i.r, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.l

end_hunk_1
begin_hunk_2_@_mi_malloc_generic:bb.a
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w
  %.0.i.i.i = phi i64 [ %i.bx, %bb.w ], [ %i.cd, %bb.y ] ; 3 uses
  %i.by = and i64 %.0.i.i.i, -2                   ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %mi_page_thread_free_collect.exit.i.i, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.ca = and i64 %.0.i.i.i, 1
  %i.cb = cmpxchg weak ptr %i.bw, i64 %.0.i.i.i, i64 %i.ca acq_rel acquire, align 8 ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  %i.cd = extractvalue { i64, i1 } %i.cb, 0
  br i1 %i.cc, label %bb.z, label %bb.x, !llvm.loop !54

bb.z:                                             ; preds = %bb.y
  %i.ce = inttoptr i64 %i.by to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.03950, ptr noundef %i.ce)
  br label %mi_page_thread_free_collect.exit.i.i

mi_page_thread_free_collect.exit.i.i:             ; preds = %bb.x, %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %.03950, i64 24 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !55 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i45, label %mi_page_to_full.exit, label %bb.aa

bb.aa:                                            ; preds = %mi_page_thread_free_collect.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.03950, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !56
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.sink.split.i.i, label %mi_page_to_full.exit, !prof !7

.sink.split.i.i:                                  ; preds = %bb.aa
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !56
  store ptr null, ptr %i.cf, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %.03950, i64 57
  store i8 0, ptr %i.ck, align 1, !tbaa !60
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
  %3 = sub nsw i64 %i.q, %.138.i
  %4 = add i64 %3, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.ah = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.r, i64 %.138.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.aj, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.ak, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.034.i.ph = phi i64 [ %.138.i, %.lr.ph.preheader.i ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.034.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.034.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.034.i
  store ptr %spec.store.select.i, ptr %i.am, align 8, !tbaa !14
  %i.an = add nuw nsw i64 %.034.i, 1
  %exitcond.not.i = icmp eq i64 %.034.i, %i.q
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !87

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.l, %bb.h, %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !53
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32 ; 3 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !52
  store ptr null, ptr %i.e, align 8, !tbaa !30
  %.not62 = icmp eq ptr %i.av, null
  br i1 %.not62, label %bb.n, label %bb.m

bb.m:                                             ; preds = %mi_heap_queue_first_update.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store ptr %2, ptr %i.aw, align 8, !tbaa !30
  store ptr %2, ptr %i.au, align 8, !tbaa !32
  %.phi.trans.insert79 = getelementptr i8, ptr %0, i64 24
  %.val63.pre = load i64, ptr %.phi.trans.insert79, align 8, !tbaa !9
  br label %mi_heap_queue_first_update.exit76

bb.n:                                             ; preds = %mi_heap_queue_first_update.exit
  store ptr %2, ptr %0, align 8, !tbaa !28
  store ptr %2, ptr %i.au, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9  ; 5 uses
  %i.az = icmp ugt i64 %i.ay, 1024
  br i1 %i.az, label %mi_heap_queue_first_update.exit76, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i64 %i.ay, 7
  %i.bb = lshr i64 %i.ba, 3                       ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val64, i64 232 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.bf = icmp eq ptr %i.be, %2
  br i1 %i.bf, label %mi_heap_queue_first_update.exit76.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = icmp samesign ult i64 %i.ay, 9
  br i1 %i.bg, label %.lr.ph.preheader.i71, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = tail call fastcc i64 @mi_bin(i64 noundef %i.ay)
  %i.bi = getelementptr inbounds nuw i8, ptr %.val64, i64 1264
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.pn.i66 = phi ptr [ %0, %bb.q ], [ %.027.i67, %bb.r ] ; 2 uses
  %.027.i67 = getelementptr inbounds i8, ptr %.pn.i66, i64 -32 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.pn.i66, i64 -8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !9  ; 2 uses
  %i.bl = tail call fastcc i64 @mi_bin(i64 noundef %i.bk)
  %i.bm = icmp eq i64 %i.bh, %i.bl
  %i.bn = icmp ugt ptr %.027.i67, %i.bi
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.r, label %bb.s, !llvm.loop !47

bb.s:                                             ; preds = %bb.r
  %i.bp = add i64 %i.bk, 7
  %i.bq = lshr i64 %i.bp, 3                       ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, 1
  %.not.i68 = icmp samesign ult i64 %i.bq, %i.bb
  %spec.select.i69 = select i1 %.not.i68, i64 %i.br, i64 %i.bb ; 2 uses
  %.not3233.i70 = icmp samesign ugt i64 %spec.select.i69, %i.bb
  br i1 %.not3233.i70, label %mi_heap_queue_first_update.exit76.thread, label %.lr.ph.preheader.i71

.lr.ph.preheader.i71:                             ; preds = %bb.s, %bb.p
  %.138.i72 = phi i64 [ %spec.select.i69, %bb.s ], [ 0, %bb.p ] ; 4 uses
  %5 = sub nsw i64 %i.bb, %.138.i72
  %6 = add i64 %5, 1                              ; 3 uses
  %min.iters.check3 = icmp ult i64 %6, 4
  br i1 %min.iters.check3, label %.lr.ph.i73.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph.preheader.i71
  %n.vec6 = and i64 %6, -4                        ; 3 uses
  %i.bs = add i64 %.138.i72, %n.vec6
  %broadcast.splatinsert7 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat8 = shufflevector <2 x ptr> %broadcast.splatinsert7, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %i.bc, i64 %.138.i72
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph4
  %index10 = phi i64 [ 0, %vector.ph4 ], [ %index.next11, %vector.body9 ] ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %index10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x ptr> %broadcast.splat8, ptr %i.bu, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat8, ptr %i.bv, align 8, !tbaa !14
  %index.next11 = add nuw i64 %index10, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.bw, label %middle.block12, label %vector.body9, !llvm.loop !88

middle.block12:                                   ; preds = %vector.body9
  %cmp.n13 = icmp eq i64 %6, %n.vec6
  br i1 %cmp.n13, label %mi_heap_queue_first_update.exit76.thread, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %.lr.ph.preheader.i71, %middle.block12
  %.034.i74.ph = phi i64 [ %.138.i72, %.lr.ph.preheader.i71 ], [ %i.bs, %middle.block12 ]
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader, %.lr.ph.i73
  %.034.i74 = phi i64 [ %i.by, %.lr.ph.i73 ], [ %.034.i74.ph, %.lr.ph.i73.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.034.i74
  store ptr %2, ptr %i.bx, align 8, !tbaa !14
  %i.by = add nuw nsw i64 %.034.i74, 1
  %exitcond.not.i75 = icmp eq i64 %.034.i74, %i.bb
  br i1 %exitcond.not.i75, label %mi_heap_queue_first_update.exit76.thread, label %.lr.ph.i73, !llvm.loop !89

mi_heap_queue_first_update.exit76:                ; preds = %bb.n, %bb.m
  %.val63 = phi i64 [ %.val63.pre, %bb.m ], [ %i.ay, %bb.n ]
  %i.bz = icmp eq i64 %.val63, 65552
  br i1 %i.bz, label %bb.t, label %mi_heap_queue_first_update.exit76.thread

bb.t:                                             ; preds = %mi_heap_queue_first_update.exit76
  %i.ca = atomicrmw or ptr %2, i64 1 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit

mi_heap_queue_first_update.exit76.thread:         ; preds = %.lr.ph.i73, %middle.block12, %bb.o, %bb.s, %mi_heap_queue_first_update.exit76
  %i.cb = atomicrmw and ptr %2, i64 -2 monotonic, align 8 ; 0 uses
  br label %mi_page_set_in_full.exit

mi_page_set_in_full.exit:                         ; preds = %bb.t, %mi_heap_queue_first_update.exit76.thread
  ret void
}

declare zeroext i1 @_mi_os_commit(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_free_list_extend(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef range(i64 0, 4097) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.c = load i16, ptr %i.b, align 2, !tbaa !61
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = mul i64 %1, %i.d                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e ; 2 uses
  %i.g = add nsw i64 %2, -1
  %i.h = add nsw i64 %i.g, %i.d
  %i.i = mul i64 %i.h, %1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i ; 2 uses
  %.not1 = icmp samesign ugt i64 %i.e, %i.i
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %i.k, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02, i64 %1 ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  store i64 %i.l, ptr %.02, align 8, !tbaa !57
  %.not = icmp ugt ptr %i.k, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = ptrtoint ptr %i.n to i64
  store i64 %i.o, ptr %i.j, align 8, !tbaa !57
  store ptr %i.f, ptr %i.m, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_huge_page_alloc(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @_mi_os_good_alloc_size(i64 noundef %1) #14
  %i.b = tail call fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr noundef %3, i64 noundef %i.a, i64 noundef %2) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = getelementptr i8, ptr %i.b, i64 40
  %.val = load i64, ptr %i.e, align 8, !tbaa !25
  tail call void @__mi_stat_increase(ptr noundef nonnull %i.d, i64 noundef %.val) #14
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.g, i64 noundef 1) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

declare i64 @_mi_os_good_alloc_size(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_page_fresh_alloc(ptr noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_mi_arenas_page_alloc(ptr noundef %0, i64 noundef %2, i64 noundef %3) #14 ; 18 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %mi_page_extend_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr %i.a monotonic, align 8
  %i.d = and i64 %i.c, -4
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  tail call void @_mi_heap_page_reclaim(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !56
  %.not20 = icmp eq ptr %.val, null
  br i1 %.not20, label %bb.d, label %mi_page_extend_free.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.a, i64 18       ; 3 uses
  %.val18 = load i16, ptr %i.g, align 2, !tbaa !61 ; 3 uses
  %i.h = getelementptr i8, ptr %i.a, i64 20
  %.val19 = load i16, ptr %i.h, align 4, !tbaa !17 ; 2 uses
  %i.i = icmp ult i16 %.val18, %.val19
  br i1 %i.i, label %bb.e, label %mi_page_extend_free.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.a, i64 40
  %.val4.i.i = load i64, ptr %i.j, align 8, !tbaa !25 ; 4 uses
  %i.k = getelementptr i8, ptr %i.a, i64 48
  %i.l = zext i16 %.val18 to i64
  %narrow.i = sub nuw i16 %.val19, %.val18
  %i.m = zext i16 %narrow.i to i64
  %i.n = icmp ugt i64 %.val4.i.i, 4095
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.rhs.trunc.i = trunc nuw nsw i64 %.val4.i.i to i16
  %i.o = udiv i16 4096, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi i64 [ %.zext.i, %bb.f ], [ 1, %bb.e ]
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.m) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !73   ; 4 uses
  %.not41.i = icmp eq i64 %i.r, 0
  br i1 %.not41.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw nsw i64 %spec.select.i, %i.l
  %i.t = mul i64 %i.s, %.val4.i.i
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.a to i64
  %reass.sub = sub i64 %i.t, %i.w
  %i.x = add i64 %reass.sub, 65535
  %i.y = add i64 %i.x, %i.v
  %i.z = and i64 %i.y, -65536                     ; 3 uses
  %i.aa = icmp ugt i64 %i.z, %i.r
  br i1 %i.aa, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.ac = sub nuw i64 %i.z, %i.r
  %i.ad = tail call zeroext i1 @_mi_os_commit(ptr noundef nonnull %i.ab, i64 noundef %i.ac, ptr noundef null) #14
  br i1 %i.ad, label %bb.j, label %mi_page_extend_free.exit

bb.j:                                             ; preds = %bb.i
  store i64 %i.z, ptr %i.q, align 8, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  tail call fastcc void @mi_page_free_list_extend(ptr noundef nonnull %i.a, i64 noundef %.val4.i.i, i64 noundef %spec.select.i)
  %i.ae = trunc nuw nsw i64 %spec.select.i to i16
  %i.af = load i16, ptr %i.g, align 2, !tbaa !61
  %i.ag = add i16 %i.af, %i.ae
  store i16 %i.ag, ptr %i.g, align 2, !tbaa !61
  br label %mi_page_extend_free.exit

bb.l:                                             ; preds = %bb.b
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
  %3 = sub nsw i64 %i.p, %.138.i
  %4 = add i64 %3, 1                              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.ag = add i64 %.138.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.q, i64 %.138.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.ai, align 8, !tbaa !14
  store <2 x ptr> %broadcast.splat, ptr %i.aj, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.034.i.ph = phi i64 [ %.138.i, %.lr.ph.preheader.i ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.034.i = phi i64 [ %i.am, %.lr.ph.i ], [ %.034.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.034.i
  store ptr %2, ptr %i.al, align 8, !tbaa !14
  %i.am = add nuw nsw i64 %.034.i, 1
  %exitcond.not.i = icmp eq i64 %.034.i, %i.p
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !92

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.f, %bb.g, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !66
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !66
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
  %.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.t, %bb.f ] ; 3 uses
  %i.o = and i64 %.0.i.i, -2                      ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.q = and i64 %.0.i.i, 1
  %i.r = cmpxchg weak ptr %i.m, i64 %.0.i.i, i64 %i.q acq_rel acquire, align 8 ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.e, !llvm.loop !54

bb.g:                                             ; preds = %bb.f
  %i.u = inttoptr i64 %i.o to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056127, ptr noundef %i.u)
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.056127, i64 24 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  %.056.val.pr = load ptr, ptr %i.l, align 8, !tbaa !56
  %.not100 = icmp eq ptr %.056.val.pr, null       ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not100, label %.sink.split.i, label %.thread, !prof !7

.sink.split.i:                                    ; preds = %bb.h
  store ptr %i.w, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.v, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %.056127, i64 57
  store i8 0, ptr %i.x, align 1, !tbaa !60
  br label %.thread

bb.i:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not100, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %.056127, i64 18
  %.056.val80 = load i16, ptr %i.y, align 2, !tbaa !61
  %i.z = getelementptr i8, ptr %.056127, i64 20
  %.056.val81 = load i16, ptr %i.z, align 4, !tbaa !17
  %i.aa = icmp ult i16 %.056.val80, %.056.val81
  br i1 %i.aa, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i64 %.063125, -1                ; 6 uses
  %i.ac = icmp slt i64 %.063125, 1
  br i1 %i.ac, label %bb.l, label %mi_page_to_full.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %.056127, i64 64
  %.val9.i = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val9.i, i64 225
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !85, !range !78, !noundef !79
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_mi_page_abandon(ptr noundef nonnull %.056127, ptr noundef nonnull %1)
  br label %mi_page_to_full.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = load atomic i64, ptr %.056127 monotonic, align 8
  %i.ai = trunc i64 %i.ah to i1
  br i1 %i.ai, label %mi_page_to_full.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.val9.i, i64 3632
  tail call fastcc void @mi_page_queue_enqueue_from_ex(ptr noundef nonnull %i.aj, ptr noundef nonnull %1, ptr noundef nonnull %.056127)
  %i.ak = load atomic i64, ptr %i.m monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.0.i.i.i = phi i64 [ %i.ak, %bb.o ], [ %i.aq, %bb.q ] ; 3 uses
  %i.al = and i64 %.0.i.i.i, -2                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %mi_page_thread_free_collect.exit.i.i, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.an = and i64 %.0.i.i.i, 1
  %i.ao = cmpxchg weak ptr %i.m, i64 %.0.i.i.i, i64 %i.an acq_rel acquire, align 8 ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = extractvalue { i64, i1 } %i.ao, 0
  br i1 %i.ap, label %bb.r, label %bb.p, !llvm.loop !54

bb.r:                                             ; preds = %bb.q
  %i.ar = inttoptr i64 %i.al to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.056127, ptr noundef %i.ar)
  br label %mi_page_thread_free_collect.exit.i.i

mi_page_thread_free_collect.exit.i.i:             ; preds = %bb.p, %bb.r
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %mi_page_to_full.exit, label %bb.s

bb.s:                                             ; preds = %mi_page_thread_free_collect.exit.i.i
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.sink.split.i.i, label %mi_page_to_full.exit, !prof !7

.sink.split.i.i:                                  ; preds = %bb.s
  store ptr %i.as, ptr %i.l, align 8, !tbaa !56
  store ptr null, ptr %i.v, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %.056127, i64 57
  store i8 0, ptr %i.av, align 1, !tbaa !60
  br label %mi_page_to_full.exit

.thread:                                          ; preds = %bb.h, %.sink.split.i, %.lr.ph, %bb.j, %bb.i
  %.054.in86 = phi i1 [ true, %.lr.ph ], [ false, %bb.j ], [ true, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.h ]
end_hunk_2
