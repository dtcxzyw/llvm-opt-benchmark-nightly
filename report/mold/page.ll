Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/page?download=true
inline.NumInlined: 141
inline.NumDeleted: 62
begin_hunk_0_@_mi_page_free_collect:bb.a

.sink.split:                                      ; preds = %bb.e, %bb.g
  store ptr %i.k, ptr %i.l, align 8, !tbaa !33
  store ptr null, ptr %i.j, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.q, align 1, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %mi_page_thread_free_collect.exit
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_free_collect_partly(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_mi_page_free_collect.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.b = inttoptr i64 %.val to ptr                ; 3 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i16, ptr %i.c, align 4, !tbaa !37   ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %.0.val23.i = load i64, ptr %i.b, align 8, !tbaa !35 ; 2 uses
  %i.f = icmp ne i64 %.0.val23.i, 0
  %i.g = icmp ne i16 %i.d, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.val25.i = phi i64 [ %.0.val.i, %.lr.ph.i ], [ %.0.val23.i, %bb.c ]
  %.02024.i = phi i64 [ %i.j, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  %i.i = inttoptr i64 %.0.val25.i to ptr          ; 2 uses
  %i.j = add nuw nsw i64 %.02024.i, 1             ; 2 uses
  %.0.val.i = load i64, ptr %i.i, align 8, !tbaa !35 ; 2 uses
  %i.k = icmp ne i64 %.0.val.i, 0
  %i.l = icmp samesign ult i64 %.02024.i, %i.e
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.020.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.b, %bb.c ], [ %i.i, %.lr.ph.i ]
  %i.n = icmp samesign ugt i64 %.020.lcssa.i, %i.e
  br i1 %i.n, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %._crit_edge.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.1) #13
  br label %mi_page_thread_collect_to_local.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ugt i64 %.020.lcssa.i, %i.q
  br i1 %i.r, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.2) #13
  br label %mi_page_thread_collect_to_local.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %.0.lcssa.i, align 8, !tbaa !35
  store ptr %i.b, ptr %i.s, align 8, !tbaa !32
  %i.v = trunc nuw nsw i64 %.020.lcssa.i to i32
  %i.w = sub nuw i32 %i.p, %i.v
  store i32 %i.w, ptr %i.o, align 8, !tbaa !38
  br label %mi_page_thread_collect_to_local.exit

mi_page_thread_collect_to_local.exit:             ; preds = %bb.d, %bb.f, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %.not18 = icmp eq ptr %i.y, null
  br i1 %.not18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_collect_to_local.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.y, ptr %i.z, align 8, !tbaa !33
  store ptr null, ptr %i.x, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.ac, align 1, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %mi_page_thread_collect_to_local.exit, %bb.h, %bb.i, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.k, label %_mi_page_free_collect.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.0.i.i = phi i64 [ %i.ah, %bb.k ], [ %i.an, %bb.m ] ; 3 uses
  %i.ai = and i64 %.0.i.i, -2                     ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %mi_page_thread_free_collect.exit.i, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.ak = and i64 %.0.i.i, 1
  %i.al = cmpxchg weak ptr %i.ag, i64 %.0.i.i, i64 %i.ak acq_rel acquire, align 8 ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.l, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  %i.ao = inttoptr i64 %i.ai to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.ao) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.l, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.o

bb.o:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !12

.sink.split.i:                                    ; preds = %bb.o
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !33
  store ptr null, ptr %i.ap, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.au, align 1, !tbaa !36
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %.sink.split.i, %mi_page_thread_free_collect.exit.i, %bb.o, %bb.j, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_page_thread_collect_to_local(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %.0.val23 = load i64, ptr %1, align 8, !tbaa !35 ; 2 uses
  %i.d = icmp ne i64 %.0.val23, 0
  %i.e = icmp ne i16 %i.b, 0
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.val25 = phi i64 [ %.0.val, %.lr.ph ], [ %.0.val23, %bb.a ]
  %.02024 = phi i64 [ %i.h, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.g = inttoptr i64 %.0.val25 to ptr            ; 2 uses
  %i.h = add nuw nsw i64 %.02024, 1               ; 2 uses
  %.0.val = load i64, ptr %i.g, align 8, !tbaa !35 ; 2 uses
  %i.i = icmp ne i64 %.0.val, 0
  %i.j = icmp samesign ult i64 %.02024, %i.c
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.020.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.g, %.lr.ph ]
  %i.l = icmp samesign ugt i64 %.020.lcssa, %i.c
  br i1 %i.l, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.1) #13
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ugt i64 %.020.lcssa, %i.o
  br i1 %i.p, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.2) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.s = ptrtoint ptr %i.r to i64
  store i64 %i.s, ptr %.0.lcssa, align 8, !tbaa !35
  store ptr %1, ptr %i.q, align 8, !tbaa !32
  %i.t = trunc nuw nsw i64 %.020.lcssa to i32
  %i.u = sub i32 %i.n, %i.t
  store i32 %i.u, ptr %i.m, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_theap_page_reclaim(ptr noundef %0, ptr noundef initializes((56, 64)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !39
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !47
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = load atomic i64, ptr %1 monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.g = and i64 %.0.i, 3
  %i.h = or i64 %i.g, %i.e
  %i.i = cmpxchg weak ptr %1, i64 %.0.i, i64 %i.h release monotonic, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0
  br i1 %i.j, label %mi_page_set_theap.exit, label %bb.d, !llvm.loop !2

mi_page_set_theap.exit:                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %mi_page_set_theap.exit
  %.0.i.i = phi i64 [ %i.m, %mi_page_set_theap.exit ], [ %i.s, %bb.f ] ; 3 uses
  %i.n = and i64 %.0.i.i, -2                      ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %.0.i.i, 1
  %i.q = cmpxchg weak ptr %i.l, i64 %.0.i.i, i64 %i.p acq_rel acquire, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.e, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  %i.t = inttoptr i64 %i.n to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %1, ptr noundef %i.t) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !12

.sink.split.i:                                    ; preds = %bb.h
  store ptr %i.v, ptr %i.w, align 8, !tbaa !33
  store ptr null, ptr %i.u, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.z, align 1, !tbaa !36
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.h, %mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.aa = load atomic i64, ptr %1 monotonic, align 8
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %mi_theap_page_queue_of.exit, label %bb.i

bb.i:                                             ; preds = %_mi_page_free_collect.exit
  %i.ac = getelementptr i8, ptr %1, i64 54
  %.val.i.i.i = load i16, ptr %i.ac, align 2, !tbaa !28
  %i.ad = icmp eq i16 %.val.i.i.i, 1
  %i.ae = getelementptr i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  br i1 %i.ad, label %bb.j, label %mi_page_is_huge.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp ugt i64 %i.af, 524288
  br i1 %i.ag, label %mi_theap_page_queue_of.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !30
  %i.aj = add i32 %i.ai, -4
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %mi_page_is_huge.exit.i.i, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.i.i:                         ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.an = icmp ult ptr %i.am, %1
  br i1 %i.an, label %mi_theap_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.thread.i.i:                  ; preds = %mi_page_is_huge.exit.i.i, %bb.k, %bb.i
  %i.ao = tail call fastcc i64 @mi_bin(i64 noundef %i.af) #12
  %i.ap = shl nuw nsw i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, 1312
  br label %mi_theap_page_queue_of.exit

mi_theap_page_queue_of.exit:                      ; preds = %_mi_page_free_collect.exit, %bb.j, %mi_page_is_huge.exit.i.i, %mi_page_is_huge.exit.thread.i.i
  %.idx = phi i64 [ 3680, %_mi_page_free_collect.exit ], [ %i.aq, %mi_page_is_huge.exit.thread.i.i ], [ 3648, %mi_page_is_huge.exit.i.i ], [ 3648, %bb.j ] ; 2 uses
  %.ptr9 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.ar = getelementptr i8, ptr %.ptr9, i64 24    ; 2 uses
  %.val.i = load i64, ptr %i.ar, align 8, !tbaa !18
  %i.as = icmp eq i64 %.val.i, 524304
  br i1 %i.as, label %mi_page_flags_set.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %mi_theap_page_queue_of.exit
  %i.at = atomicrmw and ptr %1, i64 -2 monotonic, align 8
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %.thread.i.i, label %mi_page_set_in_full.exit.i

mi_page_flags_set.exit.i.i:                       ; preds = %mi_theap_page_queue_of.exit
  %i.av = atomicrmw or ptr %1, i64 1 monotonic, align 8
  %i.aw = and i64 %i.av, 1
  %.not15.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not15.i.i, label %bb.l, label %mi_page_set_in_full.exit.i

bb.l:                                             ; preds = %mi_page_flags_set.exit.i.i
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %mi_page_set_in_full.exit.i, label %bb.m

.thread.i.i:                                      ; preds = %.split.i.i
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ay, null
  br i1 %.not12.i.i, label %mi_page_set_in_full.exit.i, label %.thread13.i.i

.thread13.i.i:                                    ; preds = %.thread.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !28
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr i8, ptr %1, i64 40
  %.val14.i.i = load i64, ptr %i.bc, align 8, !tbaa !29
  %i.bd = mul i64 %.val14.i.i, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 208 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !51
  %i.bg = sub i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %1, i64 40
  %.val.i.i = load i64, ptr %i.bh, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !28
  %i.bk = zext i16 %i.bj to i64
  %i.bl = mul i64 %.val.i.i, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 208 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !51
  %i.bo = add i64 %i.bl, %i.bn
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !51
  br label %mi_page_set_in_full.exit.i

mi_page_set_in_full.exit.i:                       ; preds = %bb.m, %.thread13.i.i, %.thread.i.i, %bb.l, %mi_page_flags_set.exit.i.i, %.split.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.ptr9, i64 8 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !52 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !53
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.bs, align 8, !tbaa !54
  %.not.i8 = icmp eq ptr %i.bq, null
  br i1 %.not.i8, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %mi_page_set_in_full.exit.i
  store ptr %1, ptr %.ptr9, align 8, !tbaa !55
  store ptr %1, ptr %i.bp, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !56
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !56
  br label %bb.o

bb.n:                                             ; preds = %mi_page_set_in_full.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store ptr %1, ptr %i.bw, align 8, !tbaa !54
  %.pre.i = load ptr, ptr %.ptr9, align 8, !tbaa !55 ; 2 uses
  store ptr %1, ptr %i.bp, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %.ptr9, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !56
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !56
  %i.ca = icmp eq ptr %.pre.i, %1
  br i1 %i.ca, label %bb.o, label %mi_page_queue_push_at_end.exit

bb.o:                                             ; preds = %bb.n, %.thread.i
  %i.cb = phi ptr [ %1, %.thread.i ], [ %.pre.i, %bb.n ] ; 3 uses
end_hunk_0
