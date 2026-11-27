Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/arena?download=true
inline.NumInlined: 213
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_mi_arenas_alloc:bb.a
  %i.b = add i64 %1, -33554433
  %i.c = icmp ult i64 %i.b, -33488897
  %or.cond3.i.not = or i1 %i.c, %i.a
  br i1 %or.cond3.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %1, 65535
  %i.e = lshr i64 %i.d, 16
  %i.f = tail call fastcc ptr @mi_arenas_try_alloc(ptr noundef %0, i64 noundef %i.e, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef %7) ; 2 uses
  %.not34.not.i = icmp eq ptr %i.f, null
  br i1 %.not34.not.i, label %bb.c, label %_mi_arenas_alloc_aligned.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 17) #13
  %.not.i.i = icmp ne ptr %4, null
  %or.cond.not.i.i = or i1 %.not.i.i, %i.g
  br i1 %or.cond.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #14
  store i32 12, ptr %i.h, align 4, !tbaa !11
  br label %_mi_arenas_alloc_aligned.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr @_mi_os_alloc_aligned(i64 noundef %1, i64 noundef 65536, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %7) #13
  br label %_mi_arenas_alloc_aligned.exit

_mi_arenas_alloc_aligned.exit:                    ; preds = %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.d ], [ %i.i, %bb.e ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_mi_arenas_page_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 !guid !136 {
bb.a:
  %i.a = icmp ugt i64 %2, 65536
  br i1 %i.a, label %bb.b, label %bb.c, !prof !137

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @mi_arenas_page_singleton_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  br label %mi_arenas_page_singleton_alloc.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 8177
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc ptr @mi_arenas_page_regular_alloc(ptr noundef %0, i64 noundef 1, i64 noundef %1)
  br label %mi_arenas_page_singleton_alloc.exit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %1, 65537
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc ptr @mi_arenas_page_regular_alloc(ptr noundef %0, i64 noundef 8, i64 noundef %1)
  br label %mi_arenas_page_singleton_alloc.exit

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = load ptr, ptr %0, align 8, !tbaa !68
  %i.j = add i64 %1, 65663
  %i.k = lshr i64 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !69
  %i.n = tail call fastcc ptr @mi_arenas_page_alloc_fresh(i64 noundef %i.k, i64 noundef %1, i64 noundef %2, ptr noundef %i.h, i32 noundef %i.m, i1 noundef zeroext true, ptr noundef %i.i) ; 10 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %mi_arenas_page_singleton_alloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call zeroext i1 @_mi_page_init(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #13
  br i1 %i.p, label %mi_arenas_page_singleton_alloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %i.n, i64 112
  %i.r = load i32, ptr %i.q, align 8, !tbaa !75
  switch i32 %i.r, label %mi_page_full_size.exit.i [
    i32 7, label %bb.j
    i32 6, label %bb.k
    i32 5, label %bb.k
    i32 4, label %bb.k
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 16
  br label %mi_page_full_size.exit.i

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = ptrtoint ptr %i.n to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ad = icmp sgt i64 %i.aa, %i.ac
  %i.ae = sub i64 %i.ac, %i.aa
  %spec.select.i.i = select i1 %i.ad, i64 0, i64 %i.ae
  br label %mi_page_full_size.exit.i

mi_page_full_size.exit.i:                         ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.v, %bb.j ], [ %spec.select.i.i, %bb.k ], [ 0, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  tail call void @_mi_arenas_free(ptr noundef nonnull %i.n, i64 noundef %.0.i.i, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.af)
  br label %mi_arenas_page_singleton_alloc.exit

mi_arenas_page_singleton_alloc.exit:              ; preds = %mi_page_full_size.exit.i, %bb.h, %bb.g, %bb.d, %bb.f, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ %i.f, %bb.f ], [ null, %mi_page_full_size.exit.i ], [ null, %bb.g ], [ %i.n, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_arenas_page_singleton_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 !guid !138 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = load ptr, ptr %0, align 8, !tbaa !68
  %i.d = icmp ugt i64 %2, 65536
  %spec.select = select i1 %i.d, i64 65536, i64 128
  %i.e = add i64 %1, 65535
  %i.f = add i64 %i.e, %spec.select
  %i.g = lshr i64 %i.f, 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69
  %i.j = tail call fastcc ptr @mi_arenas_page_alloc_fresh(i64 noundef %i.g, i64 noundef %1, i64 noundef %2, ptr noundef %i.b, i32 noundef %i.i, i1 noundef zeroext true, ptr noundef %i.c) ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call zeroext i1 @_mi_page_init(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #13
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.j, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !75
  switch i32 %i.n, label %mi_page_full_size.exit [
    i32 7, label %bb.d
    i32 6, label %bb.e
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 16
  br label %mi_page_full_size.exit

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.z = icmp sgt i64 %i.w, %i.y
  %i.aa = sub i64 %i.y, %i.w
  %spec.select.i = select i1 %i.z, i64 0, i64 %i.aa
  br label %mi_page_full_size.exit

mi_page_full_size.exit:                           ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.r, %bb.d ], [ %spec.select.i, %bb.e ], [ 0, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  tail call void @_mi_arenas_free(ptr noundef nonnull %i.j, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %mi_page_full_size.exit
  %.0 = phi ptr [ null, %mi_page_full_size.exit ], [ null, %bb.a ], [ %i.j, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_arenas_page_regular_alloc(ptr noundef %0, i64 noundef range(i64 0, 18014398509481984) %1, i64 noundef range(i64 0, 65537) %2) unnamed_addr #4 !guid !140 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.h = load i8, ptr %i.g, align 2, !tbaa !141   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82   ; 3 uses
  %i.k = tail call i64 @_mi_bin(i64 noundef range(i64 0, 65537) %2) #13 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1336
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %mi_arenas_page_try_find_abandoned.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i64, ptr %i.f monotonic, align 8 ; 4 uses
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 %i.p, i64 1) ; 4 uses
  %i.r = icmp ult i64 %i.p, 3
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = urem i64 %i.j, %i.q
  br label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %.not97.i = icmp eq i64 %i.p, 0
  br i1 %.not97.i, label %mi_arenas_page_try_find_abandoned.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.c
  %3 = phi i64 [ %i.s, %bb.c ], [ 0, %bb.d ]
  %.not.i = icmp eq ptr %i.c, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %mi_arena_is_suitable.exit.thread78.us.i
  %.05695.us.i = phi i64 [ %i.ag, %mi_arena_is_suitable.exit.thread78.us.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.u = icmp ult i64 %.05695.us.i, %i.q
  %i.v = add i64 %.05695.us.i, %3                 ; 2 uses
  %.not62.us.i = icmp ult i64 %i.v, %i.q
  %i.w = select i1 %.not62.us.i, i64 0, i64 %i.q
  %spec.select.us.i = sub nuw i64 %i.v, %i.w
  %.054.us.i = select i1 %i.u, i64 %spec.select.us.i, i64 %.05695.us.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.054.us.i
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8 ; 5 uses
  %.not64.us.i = icmp eq ptr %i.y, null
  br i1 %.not64.us.i, label %mi_arena_is_suitable.exit.thread78.us.i, label %mi_arena_id_is_suitable.exit.i.us.i

mi_arena_id_is_suitable.exit.i.us.i:              ; preds = %.lr.ph.split.us.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !56, !range !57, !noundef !58
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %mi_arena_is_suitable.exit.thread78.us.i, label %.thread71.us.i

.thread71.us.i:                                   ; preds = %mi_arena_id_is_suitable.exit.i.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.k
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = call zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef %i.ae, i64 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull @mi_arena_try_claim_abandoned, ptr noundef nonnull %i.y, i8 noundef zeroext %i.h) #13
  br i1 %i.af, label %mi_arenas_page_try_find_abandoned.exit, label %mi_arena_is_suitable.exit.thread87.us.i

mi_arena_is_suitable.exit.thread87.us.i:          ; preds = %.thread71.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %mi_arena_is_suitable.exit.thread78.us.i

mi_arena_is_suitable.exit.thread78.us.i:          ; preds = %mi_arena_is_suitable.exit.thread87.us.i, %mi_arena_id_is_suitable.exit.i.us.i, %.lr.ph.split.us.i
  %i.ag = add nuw i64 %.05695.us.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.p
  br i1 %exitcond.not.i, label %mi_arenas_page_try_find_abandoned.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !139

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  %i.ak = call zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef %i.aj, i64 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull @mi_arena_try_claim_abandoned, ptr noundef nonnull %i.c, i8 noundef zeroext %i.h) #13
  br i1 %i.ak, label %mi_arenas_page_try_find_abandoned.exit, label %mi_arenas_page_try_find_abandoned.exit.thread31

mi_arenas_page_try_find_abandoned.exit.thread31:  ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %mi_arenas_page_try_find_abandoned.exit.thread

mi_arenas_page_try_find_abandoned.exit:           ; preds = %.thread71.us.i, %.lr.ph.split.i
  %.us-phi.i = phi ptr [ %i.c, %.lr.ph.split.i ], [ %i.y, %.thread71.us.i ]
  %i.al = load i64, ptr %i.a, align 8, !tbaa !59
  %i.am = shl i64 %i.al, 16
  %i.an = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 %i.am ; 2 uses
  %i.ao = atomicrmw add ptr %i.m, i64 -1 monotonic, align 8 ; 0 uses
  %i.ap = call ptr @_mi_thread_tld() #13          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  call void @__mi_stat_decrease(ptr noundef nonnull %i.aq, i64 noundef 1) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 536
  call void @__mi_stat_counter_increase(ptr noundef nonnull %i.ar, i64 noundef 1) #13
  call void @_mi_page_free_collect(ptr noundef nonnull %i.an, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.m

mi_arenas_page_try_find_abandoned.exit.thread:    ; preds = %mi_arena_is_suitable.exit.thread78.us.i, %bb.d, %bb.a, %mi_arenas_page_try_find_abandoned.exit.thread31
  %i.as = call i64 @mi_option_get(i32 noundef 40) #13 ; 2 uses
  %.not28 = icmp samesign ugt i64 %1, 1
  br i1 %.not28, label %bb.e, label %bb.h

bb.e:                                             ; preds = %mi_arenas_page_try_find_abandoned.exit.thread
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = call zeroext i1 @_mi_os_has_overcommit() #13
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = icmp eq i64 %i.as, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %mi_arenas_page_try_find_abandoned.exit.thread
  %i.aw = phi i1 [ true, %bb.f ], [ true, %mi_arenas_page_try_find_abandoned.exit.thread ], [ %i.av, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !69
  %i.az = call fastcc ptr @mi_arenas_page_alloc_fresh(i64 noundef %1, i64 noundef %2, i64 noundef 1, ptr noundef %i.c, i32 noundef %i.ay, i1 noundef zeroext %i.aw, ptr noundef %i.d) ; 10 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = call zeroext i1 @_mi_page_init(ptr noundef nonnull %0, ptr noundef nonnull %i.az) #13
  br i1 %i.bb, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.az, i64 112
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !75
  switch i32 %i.bd, label %mi_page_full_size.exit [
    i32 7, label %bb.k
    i32 6, label %bb.l
    i32 5, label %bb.l
    i32 4, label %bb.l
    i32 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 108
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !49
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 16
  br label %mi_page_full_size.exit

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !49
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %i.bp = icmp sgt i64 %i.bm, %i.bo
  %i.bq = sub i64 %i.bo, %i.bm
  %spec.select.i = select i1 %i.bp, i64 0, i64 %i.bq
  br label %mi_page_full_size.exit

mi_page_full_size.exit:                           ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.bh, %bb.k ], [ %spec.select.i, %bb.l ], [ 0, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  call void @_mi_arenas_free(ptr noundef nonnull %i.az, i64 noundef %.0.i, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.br)
  br label %bb.m

bb.m:                                             ; preds = %mi_arenas_page_try_find_abandoned.exit, %mi_page_full_size.exit, %bb.h, %bb.i
  %.1 = phi ptr [ %i.an, %mi_arenas_page_try_find_abandoned.exit ], [ null, %mi_page_full_size.exit ], [ null, %bb.h ], [ %i.az, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arenas_page_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !guid !142 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2472
  %i.b = tail call i64 @_mi_page_bin(ptr noundef %0) #13
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b
  tail call void @__mi_stat_decrease(ptr noundef nonnull %i.c, i64 noundef 1) #13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @__mi_stat_decrease(ptr noundef nonnull %i.d, i64 noundef 1) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @_mi_subproc() #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4416
  %i.g = tail call i64 @_mi_page_bin(ptr noundef %0) #13
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.h, i64 noundef 1) #13
  %i.i = tail call ptr @_mi_subproc() #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2016
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.j, i64 noundef 1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_mi_page_map_unregister(ptr noundef %0) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %i.n = icmp eq i32 %i.m, 7
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !49
  %i.t = zext i32 %i.s to i64
  %i.u = tail call zeroext i1 @mi_bitmap_clear(ptr noundef %i.q, i64 noundef %i.t) #13 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !86   ; 3 uses
  %.not24 = icmp eq i64 %i.w, 0
  br i1 %.not24, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %i.w, 16                        ; 2 uses
  %.not25 = icmp eq i64 %i.x, 0
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !49
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call zeroext i1 @mi_bitmap_setN(ptr noundef %i.z, i64 noundef %i.ab, i64 noundef %i.x, ptr noundef null) #13 ; 0 uses
  %.pre = load i64, ptr %i.v, align 8, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_0
begin_hunk_1_@mi_arena_unload:bb.a
  %i.af = atomicrmw add ptr %i.ae, i64 -1 acq_rel, align 8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ag = add nuw nsw i64 %.04758, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, 75
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !188

bb.s:                                             ; preds = %.lr.ph, %bb.v
  %.04660 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.v ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.04660
  %i.ai = load atomic ptr, ptr %i.ah monotonic, align 8
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.04660
  store atomic ptr null, ptr %i.ak release, align 8
  %i.al = add nuw i64 %.04660, 1
  %i.am = icmp eq i64 %i.al, %i.z
  br i1 %i.am, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.an = add i64 %i.z, -1
  %i.ao = cmpxchg ptr %i.w, i64 %i.z, i64 %i.an acq_rel acquire, align 8 ; 0 uses
  br label %.loopexit

bb.v:                                             ; preds = %bb.s
  %i.ap = add nuw i64 %.04660, 1                  ; 2 uses
  %exitcond63.not = icmp eq i64 %i.ap, %i.z
  br i1 %exitcond63.not, label %.loopexit, label %bb.s, !llvm.loop !189

.loopexit:                                        ; preds = %bb.v, %bb.o, %bb.u, %bb.t, %bb.a, %bb.e, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.o ], [ true, %bb.v ]
  ret i1 %.0
}

declare i64 @mi_bitmap_popcount(ptr noundef) local_unnamed_addr #5

declare void @_mi_page_map_unregister_range(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_arena_reload(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #4 !guid !192 {
bb.a:
  %.not = icmp eq ptr %4, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !110
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !49 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  %.not37 = icmp eq i32 %.sroa.5.0.copyload, 1
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.8, ptr noundef nonnull %0) #13
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !49
  %.not38 = icmp eq ptr %.sroa.0.0.copyload, %0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.9, ptr noundef nonnull %0, ptr noundef nonnull %0) #13
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %.not39 = icmp eq i64 %.sroa.4.0.copyload, %1
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.10, i64 noundef %.sroa.4.0.copyload, i64 noundef %1) #13
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i8, ptr %i.c, align 4, !tbaa !56, !range !57, !noundef !58
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.11) #13
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %3, ptr %i.g, align 8, !tbaa !102
  %i.h = tail call ptr @_mi_subproc() #13         ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !94
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %4, align 8, !tbaa !110
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.j = load atomic i64, ptr %i.h monotonic, align 8 ; 2 uses
  %.not40.i = icmp eq i64 %i.j, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.03339.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %.critedge.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03339.i ; 2 uses
  %i.m = load atomic ptr, ptr %i.l monotonic, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.o = cmpxchg ptr %i.l, ptr null, ptr %0 release monotonic, align 8
  %i.p = extractvalue { ptr, i1 } %i.o, 1
  br i1 %i.p, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  br i1 %.not, label %bb.s, label %.sink.split

.critedge.i:                                      ; preds = %bb.p, %bb.o
  %i.q = add nuw i64 %.03339.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.n
  %i.r = atomicrmw add ptr %i.h, i64 1 acq_rel, align 8 ; 2 uses
  %i.s = icmp ugt i64 %i.r, 159
  br i1 %i.s, label %mi_arenas_add.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2312
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.u, i64 noundef 1) #13
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.r
  store atomic ptr %0, ptr %i.w release, align 8
  br i1 %.not, label %bb.s, label %.sink.split

mi_arenas_add.exit:                               ; preds = %._crit_edge.i
  %i.x = atomicrmw add ptr %i.h, i64 -1 acq_rel, align 8 ; 0 uses
  store ptr null, ptr %i.i, align 8, !tbaa !94
  br label %.loopexit

.sink.split:                                      ; preds = %bb.r, %bb.q
  store ptr %0, ptr %4, align 8, !tbaa !110
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r, %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85
  %i.aa = tail call zeroext i1 @_mi_bitmap_forall_set(ptr noundef %i.z, ptr noundef nonnull @mi_arena_page_register, ptr noundef nonnull %0, ptr noundef null) #13 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.v
  %.03342 = phi i64 [ 0, %bb.s ], [ %i.aj, %bb.v ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.03342
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.ae = tail call i64 @mi_bitmap_popcount(ptr noundef %i.ad) #13
  %.not40 = icmp eq i64 %i.ae, 0
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1336
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.03342
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 acq_rel, align 8 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aj = add nuw nsw i64 %.03342, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, 75
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !191

.loopexit:                                        ; preds = %bb.v, %mi_arenas_add.exit, %bb.e, %bb.g, %bb.i, %bb.k, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %mi_arenas_add.exit ], [ false, %bb.k ], [ true, %bb.v ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_arenas_try_find_free(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 18014398509481984) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #6 !guid !195 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 4 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1) ; 4 uses
  %i.c = icmp ult i64 %i.a, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = urem i64 %5, %i.b
  br label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %.not185 = icmp eq i64 %i.a, 0
  br i1 %.not185, label %.thread147, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %8 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ]
  %.not = icmp eq ptr %4, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = icmp slt i32 %6, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread137.us
  %.091171.us = phi i64 [ %i.w, %.thread137.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.g = icmp ult i64 %.091171.us, %i.b
  %i.h = add i64 %.091171.us, %8                  ; 2 uses
  %.not111.us = icmp ult i64 %i.h, %i.b
  %i.i = select i1 %.not111.us, i64 0, i64 %i.b
  %spec.select.us = sub nuw i64 %i.h, %i.i
  %.088.us = select i1 %i.g, i64 %spec.select.us, i64 %.091171.us
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.088.us
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8 ; 5 uses
  %.not113.us = icmp eq ptr %i.k, null
  br i1 %.not113.us, label %.thread137.us, label %.thread.us

.thread.us:                                       ; preds = %.lr.ph.split.us
  br i1 %3, label %mi_arena_id_is_suitable.exit.i.us, label %bb.d

bb.d:                                             ; preds = %.thread.us
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !89, !range !57, !noundef !58
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread137.us, label %mi_arena_id_is_suitable.exit.i.us

mi_arena_id_is_suitable.exit.i.us:                ; preds = %.thread.us, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.p = load i8, ptr %i.o, align 4, !tbaa !56, !range !57, !noundef !58
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread137.us, label %.thread.i.us

.thread.i.us:                                     ; preds = %mi_arena_id_is_suitable.exit.i.us
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread.i.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = icmp eq i32 %i.s, %6
  %spec.select.i.us = or i1 %i.t, %i.u
  br i1 %spec.select.i.us, label %bb.f, label %.thread137.us

bb.f:                                             ; preds = %bb.e, %.thread.i.us
  %i.v = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.k, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not114.us = icmp eq ptr %i.v, null
  br i1 %.not114.us, label %.thread137.us, label %.thread167

.thread137.us:                                    ; preds = %bb.f, %bb.e, %mi_arena_id_is_suitable.exit.i.us, %bb.d, %.lr.ph.split.us
  %i.w = add nuw i64 %.091171.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.a
  br i1 %exitcond.not, label %.thread147, label %.lr.ph.split.us, !llvm.loop !193

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.y = load i8, ptr %i.x, align 4, !tbaa !89, !range !57, !noundef !58
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.thread147, label %bb.g

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.aa = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %4, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not114.us175 = icmp eq ptr %i.aa, null
  br i1 %.not114.us175, label %.thread147, label %.thread167

bb.g:                                             ; preds = %.lr.ph.split.split.preheader
  %i.ab = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %4, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not114 = icmp eq ptr %i.ab, null
  br i1 %.not114, label %.thread147, label %.thread167

.thread147:                                       ; preds = %.thread137.us, %bb.g, %.lr.ph.split.split.preheader, %.lr.ph.split.split.us.preheader, %bb.c
  %i.ac = icmp slt i32 %6, 0
  br i1 %i.ac, label %.thread167, label %bb.h

bb.h:                                             ; preds = %.thread147
  %i.ad = load atomic i64, ptr %0 monotonic, align 8 ; 6 uses
  %i.ae = tail call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1) ; 6 uses
  %i.af = icmp ult i64 %i.ad, 3
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = urem i64 %5, %i.ae
  br label %.lr.ph180

bb.j:                                             ; preds = %bb.h
  %.not188 = icmp eq i64 %i.ad, 0
  br i1 %.not188, label %.thread167, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.i, %bb.j
  %9 = phi i64 [ %i.ag, %bb.i ], [ 0, %bb.j ]     ; 3 uses
  %.not115 = icmp eq ptr %4, null                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not115, label %bb.k, label %.thread151.peel

bb.k:                                             ; preds = %.lr.ph180
  %.not214 = icmp eq i64 %i.ad, 1
  %.not116.peel = icmp ult i64 %9, %i.ae
  %i.ai = select i1 %.not116.peel, i64 0, i64 %i.ae
  %spec.select120.peel = sub nuw i64 %9, %i.ai
  %.0.peel = select i1 %.not214, i64 0, i64 %spec.select120.peel
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0.peel
  %i.ak = load atomic ptr, ptr %i.aj monotonic, align 8 ; 2 uses
  %.not118.peel = icmp eq ptr %i.ak, null
  br i1 %.not118.peel, label %.thread157.peel, label %.thread151.peel

.thread151.peel:                                  ; preds = %.lr.ph180, %bb.k
  %.086154.peel = phi ptr [ %i.ak, %bb.k ], [ %4, %.lr.ph180 ] ; 5 uses
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread151.peel
  %i.al = getelementptr inbounds nuw i8, ptr %.086154.peel, i64 20
  %i.am = load i8, ptr %i.al, align 4, !tbaa !89, !range !57, !noundef !58
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.thread157.peel, label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread151.peel
  %i.ao = icmp eq ptr %.086154.peel, %4
  br i1 %i.ao, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not115, label %mi_arena_id_is_suitable.exit.i127.peel, label %.thread157.peel

mi_arena_id_is_suitable.exit.i127.peel:           ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.086154.peel, i64 52
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !56, !range !57, !noundef !58
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread157.peel, label %.thread.i128.peel

.thread.i128.peel:                                ; preds = %mi_arena_id_is_suitable.exit.i127.peel
  %i.as = getelementptr inbounds nuw i8, ptr %.086154.peel, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !113 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  %i.av = icmp eq i32 %i.at, %6
  %spec.select.i129.peel = or i1 %i.au, %i.av
  br i1 %spec.select.i129.peel, label %.thread157.peel, label %bb.o

bb.o:                                             ; preds = %.thread.i128.peel, %bb.m
  %i.aw = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %.086154.peel, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not119.peel = icmp eq ptr %i.aw, null
  br i1 %.not119.peel, label %.thread157.peel, label %.thread167

.thread157.peel:                                  ; preds = %bb.o, %.thread.i128.peel, %mi_arena_id_is_suitable.exit.i127.peel, %bb.n, %bb.l, %bb.k
  %exitcond196.peel.not = icmp eq i64 %i.ad, 1
  br i1 %exitcond196.peel.not, label %.thread167, label %.peel.next

.peel.next:                                       ; preds = %.thread157.peel, %.thread157
  %.087179 = phi i64 [ %i.bn, %.thread157 ], [ 1, %.thread157.peel ] ; 4 uses
  br i1 %.not115, label %bb.p, label %.thread167

bb.p:                                             ; preds = %.peel.next
  %i.ax = icmp ult i64 %.087179, %i.ae
  %i.ay = add i64 %.087179, %9                    ; 2 uses
  %.not116 = icmp ult i64 %i.ay, %i.ae
  %i.az = select i1 %.not116, i64 0, i64 %i.ae
  %spec.select120 = sub nuw i64 %i.ay, %i.az
  %.0 = select i1 %i.ax, i64 %spec.select120, i64 %.087179
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 5 uses
  %.not118 = icmp eq ptr %i.bb, null
  br i1 %.not118, label %.thread157, label %.thread151

.thread151:                                       ; preds = %bb.p
  br i1 %3, label %mi_arena_id_is_suitable.exit.i127, label %bb.q

bb.q:                                             ; preds = %.thread151
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !89, !range !57, !noundef !58
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread157, label %mi_arena_id_is_suitable.exit.i127

mi_arena_id_is_suitable.exit.i127:                ; preds = %.thread151, %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !56, !range !57, !noundef !58
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.thread157, label %.thread.i128

.thread.i128:                                     ; preds = %mi_arena_id_is_suitable.exit.i127
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !113 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = icmp eq i32 %i.bj, %6
  %spec.select.i129 = or i1 %i.bk, %i.bl
  br i1 %spec.select.i129, label %.thread157, label %bb.r

bb.r:                                             ; preds = %.thread.i128
  %i.bm = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.bb, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) ; 2 uses
  %.not119 = icmp eq ptr %i.bm, null
  br i1 %.not119, label %.thread157, label %.thread167

.thread157:                                       ; preds = %.thread.i128, %mi_arena_id_is_suitable.exit.i127, %bb.q, %bb.p, %bb.r
  %i.bn = add nuw i64 %.087179, 1                 ; 2 uses
  %exitcond196.not = icmp eq i64 %i.bn, %i.ad
  br i1 %exitcond196.not, label %.thread167, label %.peel.next, !llvm.loop !194

.thread167:                                       ; preds = %bb.f, %.peel.next, %.thread157, %bb.r, %bb.g, %.lr.ph.split.split.us.preheader, %bb.o, %.thread157.peel, %bb.j, %.thread147
  %.10 = phi ptr [ %i.aa, %.lr.ph.split.split.us.preheader ], [ null, %.thread147 ], [ %i.ab, %bb.g ], [ null, %.peel.next ], [ null, %bb.j ], [ null, %.thread157.peel ], [ %i.aw, %bb.o ], [ null, %.thread157 ], [ %i.bm, %bb.r ], [ %i.v, %bb.f ]
  ret ptr %.10
}

declare zeroext i1 @_mi_preloading() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @mi_arena_try_alloc_at(ptr noundef nonnull %0, i64 noundef range(i64 0, 18014398509481984) %1, i1 noundef zeroext %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #6 !guid !196 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 4 uses
  switch i64 %1, label %bb.b [
    i64 1, label %.split
    i64 8, label %mi_bbitmap_try_find_and_clearN.exit
  ]

.split:                                           ; preds = %bb.a
  %i.g = call zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef %i.f, i64 noundef %3, ptr noundef nonnull %i.a) #13
  br i1 %i.g, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %1, -513
  %or.cond.i = icmp ult i64 %i.h, -512
  br i1 %or.cond.i, label %mi_bbitmap_try_find_and_clearN.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %1, 65
  br i1 %i.i, label %.split57, label %.split58

.split57:                                         ; preds = %bb.c
  %i.j = call zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #13
  br i1 %i.j, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

.split58:                                         ; preds = %bb.c
  %i.k = call zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #13
  br i1 %i.k, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

mi_bbitmap_try_find_and_clearN.exit:              ; preds = %bb.a
  %i.l = call zeroext i1 @mi_bbitmap_try_find_and_clear8(ptr noundef %i.f, i64 noundef %3, ptr noundef nonnull %i.a) #13
  br i1 %i.l, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.d:                                             ; preds = %.split58, %.split57, %.split, %mi_bbitmap_try_find_and_clearN.exit
  %i.m = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.n = shl i64 %i.m, 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 5 uses
  %i.p = trunc i64 %i.m to i32
  %i.q = trunc nuw nsw i64 %1 to i32
  store ptr %0, ptr %4, align 8, !tbaa !49
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !49
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.q, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !49
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 7, ptr %.sroa.6.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !89, !range !57, !noundef !58
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 %i.s, ptr %i.t, align 4, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.v = load i8, ptr %i.u, align 2, !tbaa !197, !range !57, !noundef !58
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  %i.z = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.y, i64 noundef %i.m, i64 noundef %1, ptr noundef nonnull %i.b) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 2, !tbaa !109
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !59
  %i.ad = sub i64 %1, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.ad, %bb.e ], [ %1, %bb.d ]   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 2 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  br i1 %2, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ah = call i64 @mi_bitmap_popcountN(ptr noundef %i.af, i64 noundef %i.ag, i64 noundef %1) #13 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %1
  br i1 %i.ai, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
end_hunk_1
