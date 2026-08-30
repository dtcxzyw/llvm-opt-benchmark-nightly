Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/page?download=true
begin_hunk_0_@mi_good_size:bb.a
bb.g:                                             ; preds = %bb.f
  %i.z = sub i64 0, %i.u
  %i.aa = and i64 %i.y, %i.z
  br label %_mi_align_up.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = urem i64 %i.y, %i.u
  %i.ac = sub nuw i64 %i.y, %i.ab
  br label %_mi_align_up.exit

_mi_align_up.exit:                                ; preds = %bb.h, %bb.g, %bb.e, %mi_bin.exit
  %.0 = phi i64 [ %i.s, %mi_bin.exit ], [ %0, %bb.e ], [ %i.aa, %bb.g ], [ %i.ac, %bb.h ]
  ret i64 %.0
}

declare i64 @_mi_os_page_size() local_unnamed_addr #2

; Function Attrs: nooutline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_mi_page_queue_is_valid(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.012 = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %.loopexit, label %mi_page_is_huge.exit

mi_page_is_huge.exit:                             ; preds = %.preheader, %mi_page_is_huge.exit
  %.014 = phi ptr [ %.0, %mi_page_is_huge.exit ], [ %.012, %.preheader ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 88
  %.0 = load ptr, ptr %i.d, align 8, !tbaa !15    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %mi_page_is_huge.exit, !llvm.loop !16

.loopexit:                                        ; preds = %mi_page_is_huge.exit, %.preheader, %bb.a
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 -3, 74) i64 @_mi_page_stats_bin(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 58
  %.val.i = load i16, ptr %i.a, align 2, !tbaa !18
  %i.b = icmp eq i16 %.val.i, 1
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  br i1 %i.b, label %bb.b, label %mi_page_is_huge.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.d, 524288
  br i1 %i.e, label %mi_bin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = add i32 %i.g, -3
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %mi_page_is_huge.exit, label %mi_page_is_huge.exit.thread

mi_page_is_huge.exit:                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = icmp ult ptr %i.k, %0
  br i1 %i.l, label %mi_bin.exit, label %mi_page_is_huge.exit.thread

mi_page_is_huge.exit.thread:                      ; preds = %bb.a, %bb.c, %mi_page_is_huge.exit
  %i.m = add i64 %i.d, 7                          ; 4 uses
  %i.n = lshr i64 %i.m, 3                         ; 2 uses
  %i.o = icmp ult i64 %i.m, 72
  br i1 %i.o, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %mi_page_is_huge.exit.thread
  %i.p = add nuw nsw i64 %i.n, 1
  %i.q = and i64 %i.p, 30
  %.inv.i = icmp samesign ugt i64 %i.m, 15
  %i.r = select i1 %.inv.i, i64 %i.q, i64 1
  br label %mi_bin.exit

bb.e:                                             ; preds = %mi_page_is_huge.exit.thread
  %i.s = icmp ugt i64 %i.m, 524295
  br i1 %i.s, label %mi_bin.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i64 %i.n, -1                     ; 2 uses
  %i.u = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.t, i1 true) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = sub nuw nsw i64 61, %i.u
  %i.x = lshr i64 %i.t, %i.w
  %i.y = and i64 %i.x, 3
  %i.z = or disjoint i64 %i.y, %i.v
  %i.aa = xor i64 %i.z, 252
  %i.ab = add nsw i64 %i.aa, -3
  br label %mi_bin.exit

mi_bin.exit:                                      ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %mi_page_is_huge.exit
  %i.ac = phi i64 [ 73, %bb.e ], [ 73, %mi_page_is_huge.exit ], [ %i.r, %bb.d ], [ %i.ab, %bb.f ], [ 73, %bb.b ]
  ret i64 %i.ac
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_free_collect(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi i64 [ %i.b, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %i.c = and i64 %.0.i, -2                        ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_page_thread_free_collect.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %.0.i, 1
  %i.f = cmpxchg weak ptr %i.a, i64 %.0.i, i64 %i.e acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b, !llvm.loop !29

bb.d:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.c to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.i) #12
  br label %mi_page_thread_free_collect.exit

mi_page_thread_free_collect.exit:                 ; preds = %bb.b, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %mi_page_thread_free_collect.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.sink.split, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  br i1 %1, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.f, %.preheader
  %.0 = phi ptr [ %i.o, %.preheader ], [ %i.k, %bb.f ] ; 2 uses
  %.0.val = load i64, ptr %.0, align 8, !tbaa !32 ; 2 uses
  %i.o = inttoptr i64 %.0.val to ptr
  %.not20 = icmp eq i64 %.0.val, 0
  br i1 %.not20, label %bb.g, label %.preheader, !llvm.loop !34

bb.g:                                             ; preds = %.preheader
  %i.p = ptrtoint ptr %i.m to i64
  store i64 %i.p, ptr %.0, align 8, !tbaa !32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.g
  store ptr %i.k, ptr %i.l, align 8, !tbaa !31
  store ptr null, ptr %i.j, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 0, ptr %i.q, align 1, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f, %mi_page_thread_free_collect.exit
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_free_collect_partly(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_mi_page_free_collect.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.b = inttoptr i64 %.val to ptr                ; 3 uses
  %.not = icmp eq i64 %.val, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i16, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %.020.val23.i = load i64, ptr %i.b, align 8, !tbaa !32 ; 2 uses
  %i.f = icmp ne i64 %.020.val23.i, 0
  %i.g = icmp ne i16 %i.d, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.020.val25.i = phi i64 [ %.020.val.i, %.lr.ph.i ], [ %.020.val23.i, %bb.c ]
  %.024.i = phi i64 [ %i.j, %.lr.ph.i ], [ 1, %bb.c ] ; 2 uses
  %i.i = inttoptr i64 %.020.val25.i to ptr        ; 2 uses
  %i.j = add nuw nsw i64 %.024.i, 1               ; 2 uses
  %.020.val.i = load i64, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  %i.k = icmp ne i64 %.020.val.i, 0
  %i.l = icmp samesign ult i64 %.024.i, %i.e
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.020.lcssa.i = phi ptr [ %i.b, %bb.c ], [ %i.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %i.n = icmp samesign ugt i64 %.0.lcssa.i, %i.e
  br i1 %i.n, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %._crit_edge.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str) #11
  br label %mi_page_thread_collect_to_local.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.q = icmp ugt i64 %.0.lcssa.i, %i.p
  br i1 %i.q, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.1) #11
  br label %mi_page_thread_collect_to_local.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %.020.lcssa.i, align 8, !tbaa !32
  store ptr %i.b, ptr %i.r, align 8, !tbaa !30
  %i.u = sub nuw i64 %i.p, %.0.lcssa.i
  store i64 %i.u, ptr %i.o, align 8, !tbaa !38
  br label %mi_page_thread_collect_to_local.exit

mi_page_thread_collect_to_local.exit:             ; preds = %bb.d, %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %.not18 = icmp eq ptr %i.w, null
  br i1 %.not18, label %bb.j, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_collect_to_local.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.w, ptr %i.x, align 8, !tbaa !31
  store ptr null, ptr %i.v, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 0, ptr %i.aa, align 1, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %mi_page_thread_collect_to_local.exit, %bb.h, %bb.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %_mi_page_free_collect.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.0.i.i = phi i64 [ %i.af, %bb.k ], [ %i.al, %bb.m ] ; 3 uses
  %i.ag = and i64 %.0.i.i, -2                     ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %mi_page_thread_free_collect.exit.i, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.ai = and i64 %.0.i.i, 1
  %i.aj = cmpxchg weak ptr %i.ae, i64 %.0.i.i, i64 %i.ai acq_rel acquire, align 8 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.l, !llvm.loop !29

bb.n:                                             ; preds = %bb.m
  %i.am = inttoptr i64 %i.ag to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %0, ptr noundef %i.am) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.l, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.o

bb.o:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !8

.sink.split.i:                                    ; preds = %bb.o
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !31
  store ptr null, ptr %i.an, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 0, ptr %i.as, align 1, !tbaa !35
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %.sink.split.i, %mi_page_thread_free_collect.exit.i, %bb.o, %bb.j, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_page_thread_collect_to_local(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i16, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %.020.val23 = load i64, ptr %1, align 8, !tbaa !32 ; 2 uses
  %i.d = icmp ne i64 %.020.val23, 0
  %i.e = icmp ne i16 %i.b, 0
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.020.val25 = phi i64 [ %.020.val, %.lr.ph ], [ %.020.val23, %bb.a ]
  %.024 = phi i64 [ %i.h, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %i.g = inttoptr i64 %.020.val25 to ptr          ; 2 uses
  %i.h = add nuw nsw i64 %.024, 1                 ; 2 uses
  %.020.val = load i64, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.i = icmp ne i64 %.020.val, 0
  %i.j = icmp samesign ult i64 %.024, %i.c
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.g, %.lr.ph ]
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.l = icmp samesign ugt i64 %.0.lcssa, %i.c
  br i1 %i.l, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str) #11
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = icmp ugt i64 %.0.lcssa, %i.n
  br i1 %i.o, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.1) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = ptrtoint ptr %i.q to i64
  store i64 %i.r, ptr %.020.lcssa, align 8, !tbaa !32
  store ptr %1, ptr %i.p, align 8, !tbaa !30
  %i.s = sub nuw i64 %i.n, %.0.lcssa
  store i64 %i.s, ptr %i.m, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_theap_page_reclaim(ptr noundef %0, ptr noundef initializes((72, 80)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !39
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = and i64 %.0.i, 3
  %i.j = or i64 %i.i, %i.f
  %i.k = cmpxchg weak ptr %i.g, i64 %.0.i, i64 %i.j release monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %mi_page_set_theap.exit, label %bb.d, !llvm.loop !52

mi_page_set_theap.exit:                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %mi_page_set_theap.exit
  %.0.i.i = phi i64 [ %i.o, %mi_page_set_theap.exit ], [ %i.u, %bb.f ] ; 3 uses
  %i.p = and i64 %.0.i.i, -2                      ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %.0.i.i, 1
  %i.s = cmpxchg weak ptr %i.n, i64 %.0.i.i, i64 %i.r acq_rel acquire, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e, !llvm.loop !29

bb.g:                                             ; preds = %bb.f
  %i.v = inttoptr i64 %i.p to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef %1, ptr noundef %i.v) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_mi_page_free_collect.exit, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.sink.split.i, label %_mi_page_free_collect.exit, !prof !8

.sink.split.i:                                    ; preds = %bb.h
  store ptr %i.x, ptr %i.y, align 8, !tbaa !31
  store ptr null, ptr %i.w, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  br label %_mi_page_free_collect.exit

_mi_page_free_collect.exit:                       ; preds = %bb.h, %mi_page_thread_free_collect.exit.i, %.sink.split.i
  %i.ac = load atomic i64, ptr %i.g monotonic, align 8
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %mi_theap_page_queue_of.exit, label %bb.i

bb.i:                                             ; preds = %_mi_page_free_collect.exit
  %i.ae = getelementptr i8, ptr %1, i64 58
  %.val.i.i.i = load i16, ptr %i.ae, align 2, !tbaa !18
  %i.af = icmp eq i16 %.val.i.i.i, 1
  %i.ag = getelementptr i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  br i1 %i.af, label %bb.j, label %mi_page_is_huge.exit.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ugt i64 %i.ah, 524288
  br i1 %i.ai, label %mi_theap_page_queue_of.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.al = add i32 %i.ak, -3
  %i.am = icmp ult i32 %i.al, 3
  br i1 %i.am, label %mi_page_is_huge.exit.i.i, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.i.i:                         ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ap = icmp ult ptr %i.ao, %1
  br i1 %i.ap, label %mi_theap_page_queue_of.exit, label %mi_page_is_huge.exit.thread.i.i

mi_page_is_huge.exit.thread.i.i:                  ; preds = %mi_page_is_huge.exit.i.i, %bb.k, %bb.i
  %i.aq = add i64 %i.ah, 7                        ; 4 uses
  %i.ar = lshr i64 %i.aq, 3                       ; 2 uses
  %i.as = icmp ult i64 %i.aq, 72
  br i1 %i.as, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %mi_page_is_huge.exit.thread.i.i
  %i.at = add nuw nsw i64 %i.ar, 1
  %i.au = and i64 %i.at, 30
  %.inv.i.i.i = icmp samesign ugt i64 %i.aq, 15
  %i.av = select i1 %.inv.i.i.i, i64 %i.au, i64 1
  br label %mi_theap_page_queue_of.exit

bb.m:                                             ; preds = %mi_page_is_huge.exit.thread.i.i
  %i.aw = icmp ugt i64 %i.aq, 524295
  br i1 %i.aw, label %mi_theap_page_queue_of.exit, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.ax = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ay = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.ax, i1 true) ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = sub nuw nsw i64 61, %i.ay
  %i.bb = lshr i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, 3
  %i.bd = or disjoint i64 %i.bc, %i.az
  %i.be = xor i64 %i.bd, 252
  %i.bf = add nsw i64 %i.be, -3
  br label %mi_theap_page_queue_of.exit

mi_theap_page_queue_of.exit:                      ; preds = %_mi_page_free_collect.exit, %bb.j, %mi_page_is_huge.exit.i.i, %bb.l, %bb.m, %bb.n
  %i.bg = phi i64 [ 74, %_mi_page_free_collect.exit ], [ 73, %bb.m ], [ 73, %mi_page_is_huge.exit.i.i ], [ %i.av, %bb.l ], [ %i.bf, %bb.n ], [ 73, %bb.j ]
  %.idx = shl nuw nsw i64 %i.bg, 5
  %.add = add nuw nsw i64 %.idx, 1312             ; 2 uses
  %.ptr9 = getelementptr inbounds nuw i8, ptr %0, i64 %.add ; 6 uses
  %i.bh = getelementptr i8, ptr %.ptr9, i64 24    ; 2 uses
  %.val.i = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bi = icmp eq i64 %.val.i, 524304
  br i1 %i.bi, label %mi_page_flags_set.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %mi_theap_page_queue_of.exit
  %i.bj = atomicrmw and ptr %i.g, i64 -2 monotonic, align 8
  %i.bk = trunc i64 %i.bj to i1
  br i1 %i.bk, label %.thread.i.i, label %mi_page_set_in_full.exit.i

mi_page_flags_set.exit.i.i:                       ; preds = %mi_theap_page_queue_of.exit
  %i.bl = atomicrmw or ptr %i.g, i64 1 monotonic, align 8
  %i.bm = and i64 %i.bl, 1
  %.not15.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not15.i.i, label %bb.o, label %mi_page_set_in_full.exit.i

bb.o:                                             ; preds = %mi_page_flags_set.exit.i.i
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %mi_page_set_in_full.exit.i, label %bb.p

.thread.i.i:                                      ; preds = %.split.i.i
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.bo, null
  br i1 %.not12.i.i, label %mi_page_set_in_full.exit.i, label %.thread13.i.i

.thread13.i.i:                                    ; preds = %.thread.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !18
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr i8, ptr %1, i64 40
  %.val14.i.i = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.bt = mul i64 %.val14.i.i, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 1240 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !53
  %i.bw = sub i64 %i.bv, %i.bt
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !53
  br label %mi_page_set_in_full.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %1, i64 40
  %.val.i.i = load i64, ptr %i.bx, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !18
  %i.ca = zext i16 %i.bz to i64
  %i.cb = mul i64 %.val.i.i, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 1240 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !53
  %i.ce = add i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !53
  br label %mi_page_set_in_full.exit.i

mi_page_set_in_full.exit.i:                       ; preds = %bb.p, %.thread13.i.i, %.thread.i.i, %bb.o, %mi_page_flags_set.exit.i.i, %.split.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.ptr9, i64 8 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !54 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !55
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 88
end_hunk_0
begin_hunk_1_@mi_page_queue_enqueue_from_ex:bb.a
  %i.cz = icmp ult i64 %i.cx, 72
  br i1 %i.cz, label %bb.ab, label %bb.ac, !prof !8

bb.ab:                                            ; preds = %bb.aa
  %i.da = add nuw nsw i64 %i.cy, 1
  %i.db = and i64 %i.da, 30
  %.inv.i36.i80 = icmp samesign ugt i64 %i.cx, 15
  %i.dc = select i1 %.inv.i36.i80, i64 %i.db, i64 1
  br label %mi_bin.exit37.i70

bb.ac:                                            ; preds = %bb.aa
  %i.dd = icmp ugt i64 %i.cx, 524295
  br i1 %i.dd, label %mi_bin.exit37.i70, label %bb.ad, !prof !9

bb.ad:                                            ; preds = %bb.ac
  %i.de = add nsw i64 %i.cy, -1                   ; 2 uses
  %i.df = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.de, i1 true) ; 2 uses
  %i.dg = shl nuw nsw i64 %i.df, 2
  %i.dh = sub nuw nsw i64 61, %i.df
  %i.di = lshr i64 %i.de, %i.dh
  %i.dj = and i64 %i.di, 3
  %i.dk = or disjoint i64 %i.dj, %i.dg
  %i.dl = xor i64 %i.dk, 252
  %i.dm = add nsw i64 %i.dl, -3
  br label %mi_bin.exit37.i70

mi_bin.exit37.i70:                                ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.i35.i71 = phi i64 [ %i.dc, %bb.ab ], [ %i.dm, %bb.ad ], [ 73, %bb.ac ]
  %i.dn = icmp eq i64 %.0.i.i67, %.0.i35.i71
  %i.do = icmp ugt ptr %.027.i69, %i.cu
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %bb.aa, label %bb.ae, !llvm.loop !59

bb.ae:                                            ; preds = %mi_bin.exit37.i70
  %i.dq = add nuw nsw i64 %i.cy, 1
  %.not.i72 = icmp samesign ult i64 %i.cy, %i.cc
  %spec.select.i73 = select i1 %.not.i72, i64 %i.dq, i64 %i.cc ; 2 uses
  %.not3438.i74 = icmp samesign ugt i64 %spec.select.i73, %i.cc
  br i1 %.not3438.i74, label %mi_theap_queue_first_update.exit81, label %.lr.ph.preheader.i75

.lr.ph.preheader.i75:                             ; preds = %bb.ae, %bb.w
  %.146.i76 = phi i64 [ %spec.select.i73, %bb.ae ], [ 0, %bb.w ] ; 4 uses
  %i.dr = add nuw nsw i64 %i.cc, 1
  %i.ds = sub nsw i64 %i.dr, %.146.i76            ; 3 uses
  %min.iters.check3 = icmp ult i64 %i.ds, 4
  br i1 %min.iters.check3, label %.lr.ph.i77.preheader, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph.preheader.i75
  %n.vec5 = and i64 %i.ds, -4                     ; 3 uses
  %i.dt = add i64 %.146.i76, %n.vec5
  %broadcast.splatinsert6 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat7 = shufflevector <2 x ptr> %broadcast.splatinsert6, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %.146.i76
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph4
  %index9 = phi i64 [ 0, %vector.ph4 ], [ %index.next10, %vector.body8 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index9 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <2 x ptr> %broadcast.splat7, ptr %i.dv, align 8, !tbaa !15
  store <2 x ptr> %broadcast.splat7, ptr %i.dw, align 8, !tbaa !15
  %index.next10 = add nuw i64 %index9, 4          ; 2 uses
  %i.dx = icmp eq i64 %index.next10, %n.vec5
  br i1 %i.dx, label %middle.block11, label %vector.body8, !llvm.loop !90

middle.block11:                                   ; preds = %vector.body8
  %cmp.n12 = icmp eq i64 %i.ds, %n.vec5
  br i1 %cmp.n12, label %mi_theap_queue_first_update.exit81, label %.lr.ph.i77.preheader

.lr.ph.i77.preheader:                             ; preds = %.lr.ph.preheader.i75, %middle.block11
  %.039.i78.ph = phi i64 [ %.146.i76, %.lr.ph.preheader.i75 ], [ %i.dt, %middle.block11 ]
  br label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.i77.preheader, %.lr.ph.i77
  %.039.i78 = phi i64 [ %i.dz, %.lr.ph.i77 ], [ %.039.i78.ph, %.lr.ph.i77.preheader ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %.039.i78
  store ptr %2, ptr %i.dy, align 8, !tbaa !15
  %i.dz = add nuw nsw i64 %.039.i78, 1
  %exitcond.not.i79 = icmp eq i64 %.039.i78, %i.cc
  br i1 %exitcond.not.i79, label %mi_theap_queue_first_update.exit81, label %.lr.ph.i77, !llvm.loop !91

mi_theap_queue_first_update.exit81:               ; preds = %.lr.ph.i77, %middle.block11, %bb.ae, %bb.u, %bb.t
  %.val63 = phi i64 [ %.val63.pre, %bb.t ], [ %i.bz, %bb.ae ], [ %i.bz, %bb.u ], [ %i.bz, %middle.block11 ], [ %i.bz, %.lr.ph.i77 ]
  %i.ea = icmp eq i64 %.val63, 524304
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.ea, label %mi_page_flags_set.exit.i, label %.split.i

.split.i:                                         ; preds = %mi_theap_queue_first_update.exit81.thread, %mi_theap_queue_first_update.exit81
  %i.ec = phi ptr [ %i.cg, %mi_theap_queue_first_update.exit81.thread ], [ %i.eb, %mi_theap_queue_first_update.exit81 ]
  %i.ed = atomicrmw and ptr %i.ec, i64 -2 monotonic, align 8
  %i.ee = trunc i64 %i.ed to i1
  br i1 %i.ee, label %.thread.i, label %mi_page_set_in_full.exit

mi_page_flags_set.exit.i:                         ; preds = %mi_theap_queue_first_update.exit81
  %i.ef = atomicrmw or ptr %i.eb, i64 1 monotonic, align 8
  %i.eg = and i64 %i.ef, 1
  %.not15.i = icmp eq i64 %i.eg, 0
  br i1 %.not15.i, label %bb.af, label %mi_page_set_in_full.exit

bb.af:                                            ; preds = %mi_page_flags_set.exit.i
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %.not.i82 = icmp eq ptr %i.eh, null
  br i1 %.not.i82, label %mi_page_set_in_full.exit, label %bb.ag

.thread.i:                                        ; preds = %.split.i
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %.not12.i = icmp eq ptr %i.ei, null
  br i1 %.not12.i, label %mi_page_set_in_full.exit, label %.thread13.i

.thread13.i:                                      ; preds = %.thread.i
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !18
  %i.el = zext i16 %i.ek to i64
  %.val14.i = load i64, ptr %i.a, align 8, !tbaa !26
  %i.em = mul i64 %.val14.i, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 1240 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !53
  %i.ep = sub i64 %i.eo, %i.em
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !53
  br label %mi_page_set_in_full.exit

bb.ag:                                            ; preds = %bb.af
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !18
  %i.es = zext i16 %i.er to i64
  %i.et = mul i64 %.val.i, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 1240 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !53
  %i.ew = add i64 %i.et, %i.ev
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !53
  br label %mi_page_set_in_full.exit

mi_page_set_in_full.exit:                         ; preds = %.split.i, %mi_page_flags_set.exit.i, %bb.af, %.thread.i, %.thread13.i, %bb.ag
  ret void
}

declare zeroext i1 @_mi_os_commit(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nooutline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mi_page_free_list_extend(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i16, ptr %i.d, align 8, !tbaa !36
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = mul i64 %1, %i.f                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g ; 2 uses
  %i.i = add i64 %2, -1
  %i.j = add i64 %i.i, %i.f
  %i.k = mul i64 %i.j, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k ; 2 uses
  %.not24 = icmp samesign ugt i64 %i.g, %i.k
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi ptr [ %i.m, %.lr.ph ], [ %i.h, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.025, i64 %1 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  store i64 %i.n, ptr %.025, align 8, !tbaa !32
  %.not = icmp ugt ptr %i.m, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = ptrtoint ptr %i.p to i64
  store i64 %i.q, ptr %i.l, align 8, !tbaa !32
  store ptr %i.h, ptr %i.o, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_page_queue_find_free_ex(ptr noundef %0, ptr nofree noundef captures(address) %1, i1 noundef zeroext %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4088
  br label %tailrecurse

tailrecurse:                                      ; preds = %mi_page_fresh.exit, %bb.a
  %.tr107 = phi i1 [ %2, %bb.a ], [ false, %mi_page_fresh.exit ]
  %i.e = load i64, ptr %i.a, align 8, !tbaa !10
  %i.f = icmp ugt i64 %i.e, 10240
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.g = load i64, ptr %i.b, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %tailrecurse ]
  %i.i = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %.not113 = icmp eq ptr %i.i, null
  br i1 %.not113, label %mi_page_to_full.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %mi_page_to_full.exit
  %.056118 = phi i64 [ %i.l, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %.057117 = phi ptr [ %i.k, %mi_page_to_full.exit ], [ %i.i, %bb.c ] ; 20 uses
  %.059116 = phi ptr [ %.362, %mi_page_to_full.exit ], [ null, %bb.c ] ; 14 uses
  %.064115 = phi i64 [ %.266, %mi_page_to_full.exit ], [ %i.h, %bb.c ] ; 3 uses
  %.067114 = phi i64 [ %.370, %mi_page_to_full.exit ], [ 0, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.057117, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = add i64 %.056118, 1                      ; 3 uses
  %i.m = add nsw i64 %.067114, -1                 ; 9 uses
  %i.n = getelementptr i8, ptr %.057117, i64 16   ; 5 uses
  %.057.val80 = load ptr, ptr %i.n, align 8, !tbaa !31
  %.not102 = icmp eq ptr %.057.val80, null
  br i1 %.not102, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.057117, i64 64 ; 4 uses
  %i.p = load atomic i64, ptr %i.o monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0.i.i = phi i64 [ %i.p, %bb.d ], [ %i.v, %bb.f ] ; 3 uses
  %i.q = and i64 %.0.i.i, -2                      ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %mi_page_thread_free_collect.exit.i, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.s = and i64 %.0.i.i, 1
  %i.t = cmpxchg weak ptr %i.o, i64 %.0.i.i, i64 %i.s acq_rel acquire, align 8 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.e, !llvm.loop !29

bb.g:                                             ; preds = %bb.f
  %i.w = inttoptr i64 %i.q to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.057117, ptr noundef %i.w) #12
  br label %mi_page_thread_free_collect.exit.i

mi_page_thread_free_collect.exit.i:               ; preds = %bb.e, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.057117, i64 32 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  %.057.val.pr = load ptr, ptr %i.n, align 8, !tbaa !31
  %.not103 = icmp eq ptr %.057.val.pr, null       ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not103, label %.sink.split.i, label %.thread, !prof !8

.sink.split.i:                                    ; preds = %bb.h
  store ptr %i.y, ptr %i.n, align 8, !tbaa !31
  store ptr null, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %.057117, i64 63
  store i8 0, ptr %i.z, align 1, !tbaa !35
  br label %.thread

bb.i:                                             ; preds = %mi_page_thread_free_collect.exit.i
  br i1 %.not103, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %.057117, i64 56
  %.057.val81 = load i16, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr i8, ptr %.057117, i64 58
  %.057.val82 = load i16, ptr %i.ab, align 2, !tbaa !18
  %i.ac = icmp ult i16 %.057.val81, %.057.val82
  br i1 %i.ac, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add nsw i64 %.064115, -1                ; 6 uses
  %i.ae = icmp slt i64 %.064115, 1
  br i1 %i.ae, label %bb.l, label %mi_page_to_full.exit

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %.057117, i64 72
  %.val9.i = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val9.i, i64 1305
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !70, !range !71, !noundef !72
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_mi_page_abandon(ptr noundef nonnull %.057117, ptr noundef nonnull %1) #12
  br label %mi_page_to_full.exit

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.057117, i64 8
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 8
  %i.al = trunc i64 %i.ak to i1
  br i1 %i.al, label %mi_page_to_full.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val9.i, i64 3680
  tail call fastcc void @mi_page_queue_enqueue_from_ex(ptr noundef nonnull %i.am, ptr noundef nonnull %1, ptr noundef nonnull %.057117) #12
  %i.an = load atomic i64, ptr %i.o monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.0.i.i.i = phi i64 [ %i.an, %bb.o ], [ %i.at, %bb.q ] ; 3 uses
  %i.ao = and i64 %.0.i.i.i, -2                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %mi_page_thread_free_collect.exit.i.i, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.aq = and i64 %.0.i.i.i, 1
  %i.ar = cmpxchg weak ptr %i.o, i64 %.0.i.i.i, i64 %i.aq acq_rel acquire, align 8 ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  %i.at = extractvalue { i64, i1 } %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.p, !llvm.loop !29

bb.r:                                             ; preds = %bb.q
  %i.au = inttoptr i64 %i.ao to ptr
  tail call fastcc void @mi_page_thread_collect_to_local(ptr noundef nonnull %.057117, ptr noundef %i.au) #12
  br label %mi_page_thread_free_collect.exit.i.i

mi_page_thread_free_collect.exit.i.i:             ; preds = %bb.p, %bb.r
  %i.av = load ptr, ptr %i.x, align 8, !tbaa !30  ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %mi_page_to_full.exit, label %bb.s

bb.s:                                             ; preds = %mi_page_thread_free_collect.exit.i.i
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.sink.split.i.i, label %mi_page_to_full.exit, !prof !8

.sink.split.i.i:                                  ; preds = %bb.s
  store ptr %i.av, ptr %i.n, align 8, !tbaa !31
  store ptr null, ptr %i.x, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %.057117, i64 63
  store i8 0, ptr %i.ay, align 1, !tbaa !35
  br label %mi_page_to_full.exit

.thread:                                          ; preds = %bb.h, %.sink.split.i, %.lr.ph, %bb.j, %bb.i
  %.055.in88 = phi i1 [ true, %.lr.ph ], [ false, %bb.j ], [ true, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.h ]
  %i.az = icmp eq ptr %.059116, null
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.ba = tail call i64 @_mi_option_get_fast(i32 noundef 37) #11
  br label %bb.z

bb.u:                                             ; preds = %.thread
  %i.bb = getelementptr i8, ptr %.059116, i64 24
  %.059.val = load i64, ptr %i.bb, align 8, !tbaa !38 ; 2 uses
  %i.bc = icmp eq i64 %.059.val, 0
  br i1 %i.bc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %.059116, i64 8 ; 3 uses
  %i.be = atomicrmw and ptr %i.bd, i64 -3 monotonic, align 8 ; 0 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %.059116) #12
  %i.bf = getelementptr i8, ptr %.059116, i64 72  ; 2 uses
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !39
  store ptr null, ptr %i.bf, align 8, !tbaa !39
  %i.bg = load atomic i64, ptr %i.bd monotonic, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.0.i.i85 = phi i64 [ %i.bg, %bb.v ], [ %i.bk, %bb.w ] ; 2 uses
  %i.bh = and i64 %.0.i.i85, 3
  %i.bi = cmpxchg weak ptr %i.bd, i64 %.0.i.i85, i64 %i.bh release monotonic, align 8 ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  br i1 %i.bj, label %_mi_page_free.exit, label %bb.w, !llvm.loop !52

_mi_page_free.exit:                               ; preds = %bb.w
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %.059116, ptr noundef %.val.i) #11
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %.057117, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !38 ; 2 uses
  %.not73 = icmp ult i64 %i.bm, %.059.val
  br i1 %.not73, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr i8, ptr %.057117, i64 58
  %.057.val84 = load i16, ptr %i.bn, align 2, !tbaa !18 ; 2 uses
  %i.bo = zext i16 %.057.val84 to i64
  %i.bp = sub i64 %i.bo, %i.bm
  %i.bq = lshr i16 %.057.val84, 3
  %i.br = zext nneg i16 %i.bq to i64
  %.not104 = icmp ugt i64 %i.bp, %i.br
  %spec.select = select i1 %.not104, ptr %.057117, ptr %.059116
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_mi_page_free.exit, %bb.x, %bb.t
  %.168 = phi i64 [ %i.ba, %bb.t ], [ %i.m, %_mi_page_free.exit ], [ %i.m, %bb.y ], [ %i.m, %bb.x ] ; 2 uses
  %.160 = phi ptr [ %.057117, %bb.t ], [ %.057117, %_mi_page_free.exit ], [ %spec.select, %bb.y ], [ %.059116, %bb.x ] ; 2 uses
  %i.bs = icmp slt i64 %.168, 1
  %or.cond = select i1 %.055.in88, i1 true, i1 %i.bs
  br i1 %or.cond, label %mi_page_to_full.exit.thread, label %mi_page_to_full.exit

mi_page_to_full.exit:                             ; preds = %bb.z, %.sink.split.i.i, %bb.s, %mi_page_thread_free_collect.exit.i.i, %bb.n, %bb.m, %bb.k
  %.370 = phi i64 [ %.168, %bb.z ], [ %i.m, %bb.k ], [ %i.m, %bb.m ], [ %i.m, %bb.n ], [ %i.m, %mi_page_thread_free_collect.exit.i.i ], [ %i.m, %bb.s ], [ %i.m, %.sink.split.i.i ]
  %.266 = phi i64 [ %.064115, %bb.z ], [ %i.ad, %bb.k ], [ %i.ad, %bb.m ], [ %i.ad, %bb.n ], [ %i.ad, %mi_page_thread_free_collect.exit.i.i ], [ %i.ad, %bb.s ], [ %i.ad, %.sink.split.i.i ]
  %.362 = phi ptr [ %.160, %bb.z ], [ %.059116, %bb.k ], [ %.059116, %bb.m ], [ %.059116, %bb.n ], [ %.059116, %mi_page_thread_free_collect.exit.i.i ], [ %.059116, %bb.s ], [ %.059116, %.sink.split.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %mi_page_to_full.exit.thread, label %.lr.ph

mi_page_to_full.exit.thread:                      ; preds = %mi_page_to_full.exit, %bb.z, %bb.c
  %.463 = phi ptr [ null, %bb.c ], [ %.160, %bb.z ], [ %.362, %mi_page_to_full.exit ] ; 2 uses
  %.2.a = phi ptr [ null, %bb.c ], [ %.057117, %bb.z ], [ null, %mi_page_to_full.exit ]
  %.1 = phi i64 [ 0, %bb.c ], [ %i.l, %bb.z ], [ %i.l, %mi_page_to_full.exit ]
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.c, i64 noundef %.1) #11
  tail call void @__mi_stat_counter_increase(ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not74 = icmp eq ptr %.463, null
  %spec.select76 = select i1 %.not74, ptr %.2.a, ptr %.463 ; 8 uses
  %.not75 = icmp eq ptr %spec.select76, null
  br i1 %.not75, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %mi_page_to_full.exit.thread
  %i.bt = getelementptr i8, ptr %spec.select76, i64 16
  %spec.select76.val = load ptr, ptr %i.bt, align 8, !tbaa !31
  %.not105 = icmp eq ptr %spec.select76.val, null
  br i1 %.not105, label %bb.ab, label %select.unfold96

bb.ab:                                            ; preds = %bb.aa
  %i.bu = tail call fastcc zeroext i1 @mi_page_extend_free(ptr noundef nonnull %0, ptr noundef nonnull %spec.select76) #12
  br i1 %i.bu, label %select.unfold96, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %mi_page_to_full.exit.thread
  tail call void @_mi_theap_collect_retired(ptr noundef nonnull %0, i1 noundef zeroext false) #12
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !10
  %i.bw = tail call ptr @_mi_arenas_page_alloc(ptr noundef nonnull %0, i64 noundef %i.bv, i64 noundef 0) #11 ; 12 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %mi_page_fresh.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load atomic i64, ptr %i.by monotonic, align 8
  %i.ca = and i64 %i.bz, -4
  %i.cb = icmp ult i64 %i.ca, 5
  br i1 %i.cb, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  tail call void @_mi_theap_page_reclaim(ptr noundef nonnull %0, ptr noundef nonnull %i.bw) #12
  %i.cc = getelementptr i8, ptr %i.bw, i64 16
  %.val.i.i = load ptr, ptr %i.cc, align 8, !tbaa !31
  %.not22.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not22.i.i, label %bb.af, label %mi_page_fresh.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr i8, ptr %i.bw, i64 56
  %.val20.i.i = load i16, ptr %i.cd, align 8, !tbaa !36
  %i.ce = getelementptr i8, ptr %i.bw, i64 58
  %.val21.i.i = load i16, ptr %i.ce, align 2, !tbaa !18
  %i.cf = icmp ult i16 %.val20.i.i, %.val21.i.i
  br i1 %i.cf, label %bb.ag, label %mi_page_fresh.exit

bb.ag:                                            ; preds = %bb.af
  %i.cg = tail call fastcc zeroext i1 @mi_page_extend_free(ptr noundef nonnull %0, ptr noundef nonnull %i.bw) #12
  br i1 %i.cg, label %mi_page_fresh.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_mi_page_abandon(ptr noundef nonnull %i.bw, ptr noundef nonnull %1) #12
  br label %mi_page_fresh.exit

bb.ai:                                            ; preds = %bb.ad
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.bw) #12
  br label %mi_page_fresh.exit.thread

mi_page_fresh.exit:                               ; preds = %bb.ac, %bb.af, %bb.ah
  br i1 %.tr107, label %tailrecurse, label %mi_page_fresh.exit.thread

select.unfold96:                                  ; preds = %bb.ab, %bb.aa
  %i.ch = load ptr, ptr %1, align 8, !tbaa !57
  %i.ci = icmp eq ptr %i.ch, %spec.select76
  br i1 %i.ci, label %mi_page_queue_move_to_front.exit, label %bb.aj

bb.aj:                                            ; preds = %select.unfold96
  tail call fastcc void @mi_page_queue_remove(ptr noundef nonnull %1, ptr noundef nonnull %spec.select76) #12
  tail call fastcc void @mi_page_queue_push(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %spec.select76) #12
  br label %mi_page_queue_move_to_front.exit

mi_page_queue_move_to_front.exit:                 ; preds = %select.unfold96, %bb.aj
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select76, i64 62
  store i8 0, ptr %i.cj, align 2, !tbaa !67
  br label %mi_page_fresh.exit.thread

mi_page_fresh.exit.thread:                        ; preds = %bb.ae, %bb.ag, %mi_page_fresh.exit, %bb.ai, %mi_page_queue_move_to_front.exit
  %.5 = phi ptr [ %spec.select76, %mi_page_queue_move_to_front.exit ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ag ], [ null, %mi_page_fresh.exit ], [ %i.bw, %bb.ae ]
  ret ptr %.5
}

declare i64 @_mi_option_get_fast(i32 noundef) local_unnamed_addr #2

declare ptr @_mi_arenas_page_alloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nooutline norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_push(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef nonnull %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = icmp eq i64 %.val, 524304
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.b, label %mi_page_flags_set.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.d = atomicrmw and ptr %i.c, i64 -2 monotonic, align 8
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.thread.i, label %mi_page_set_in_full.exit

mi_page_flags_set.exit.i:                         ; preds = %bb.a
  %i.f = atomicrmw or ptr %i.c, i64 1 monotonic, align 8
  %i.g = and i64 %i.f, 1
  %.not15.i = icmp eq i64 %i.g, 0
  br i1 %.not15.i, label %bb.b, label %mi_page_set_in_full.exit

bb.b:                                             ; preds = %mi_page_flags_set.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %mi_page_set_in_full.exit, label %bb.c

.thread.i:                                        ; preds = %.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %.not12.i = icmp eq ptr %i.k, null
  br i1 %.not12.i, label %mi_page_set_in_full.exit, label %.thread13.i

.thread13.i:                                      ; preds = %.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.m = load i16, ptr %i.l, align 2, !tbaa !18
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr i8, ptr %2, i64 40
  %.val14.i = load i64, ptr %i.o, align 8, !tbaa !26
  %i.p = mul i64 %.val14.i, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1240 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !53
  %i.s = sub i64 %i.r, %i.p
  store i64 %i.s, ptr %i.q, align 8, !tbaa !53
  br label %mi_page_set_in_full.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %2, i64 40
  %.val.i = load i64, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.v = load i16, ptr %i.u, align 2, !tbaa !18
  %i.w = zext i16 %i.v to i64
  %i.x = mul i64 %.val.i, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1240 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53
  %i.aa = add i64 %i.x, %i.z
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !53
  br label %mi_page_set_in_full.exit

mi_page_set_in_full.exit:                         ; preds = %.split.i, %mi_page_flags_set.exit.i, %bb.b, %.thread.i, %.thread13.i, %bb.c
  %i.ab = load ptr, ptr %1, align 8, !tbaa !57    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr null, ptr %i.ad, align 8, !tbaa !55
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mi_page_set_in_full.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store ptr %2, ptr %i.ae, align 8, !tbaa !55
  br label %bb.f

bb.e:                                             ; preds = %mi_page_set_in_full.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.af, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %2, ptr %1, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !58
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !58
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 1024
  br i1 %i.ak, label %mi_theap_queue_first_update.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw nsw i64 %i.aj, 7
  %i.am = lshr i64 %i.al, 3                       ; 8 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = icmp eq ptr %i.ao, %2
  br i1 %i.ap, label %mi_theap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp samesign ult i64 %i.aj, 9
  br i1 %i.aq, label %.lr.ph.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp samesign ult i64 %i.aj, 65
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.as = add nuw nsw i64 %i.am, 1
  %i.at = and i64 %i.as, 30
  br label %mi_bin.exit.i

bb.k:                                             ; preds = %bb.i
  %i.au = add nsw i64 %i.am, -1                   ; 2 uses
  %i.av = tail call range(i64 48, 61) i64 @llvm.ctlz.i64(i64 range(i64 8, 65536) %i.au, i1 true) ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = sub nuw nsw i64 61, %i.av
  %i.ay = lshr i64 %i.au, %i.ax
  %i.az = and i64 %i.ay, 3
  %i.ba = or disjoint i64 %i.az, %i.aw
  %i.bb = xor i64 %i.ba, 252
  %i.bc = add nsw i64 %i.bb, -3
  br label %mi_bin.exit.i
end_hunk_1
