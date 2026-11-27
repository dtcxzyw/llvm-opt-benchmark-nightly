Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/arena?download=true
inline.NumInlined: 307
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_mi_arenas_alloc_aligned:bb.a
  %i.j = lshr i64 %i.i, 16
  %i.k = tail call fastcc ptr @mi_arenas_try_alloc(ptr noundef %0, i64 noundef %i.j, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i64 noundef %7, i32 noundef %8, ptr noundef %9) #17 ; 2 uses
  %.not.not = icmp eq ptr %i.k, null
  br i1 %.not.not, label %bb.d, label %mi_arena_os_alloc_aligned.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.m = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 17) #16
  %.not.i34 = icmp ne ptr %6, null
  %or.cond.not.i = or i1 %.not.i34, %i.m
  br i1 %or.cond.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #18
  store i32 12, ptr %i.n, align 4, !tbaa !41
  br label %mi_arena_os_alloc_aligned.exit

bb.f:                                             ; preds = %bb.d
  %.not16.i = icmp eq i64 %3, 0
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @_mi_os_alloc_aligned_at_offset(ptr noundef %i.l, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %9) #16
  br label %mi_arena_os_alloc_aligned.exit

bb.h:                                             ; preds = %bb.f
  %i.p = tail call ptr @_mi_os_alloc_aligned(ptr noundef %i.l, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %9) #16
  br label %mi_arena_os_alloc_aligned.exit

mi_arena_os_alloc_aligned.exit:                   ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.1 = phi ptr [ %i.k, %bb.c ], [ null, %bb.e ], [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  ret ptr %.1
}

declare zeroext i1 @mi_option_is_enabled(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_arenas_try_alloc(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 18014398509481984) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = shl i64 %1, 16                           ; 2 uses
  %i.c = icmp ugt i64 %i.b, 17179869184
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @mi_arenas_try_find_free(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef %7) #17 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not38 = icmp eq ptr %4, null
  br i1 %.not38, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 17) #16
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1320 ; 2 uses
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #16 ; 3 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.j, ptr noundef nonnull @.str.7, i32 noundef %i.j) #16
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.e, %bb.f
  %i.k = load atomic i64, ptr %i.g monotonic, align 8
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.g, label %.critedge

bb.g:                                             ; preds = %mi_lock_acquire.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call fastcc void @mi_arena_reserve(ptr noundef nonnull %i.f, i64 noundef %i.b, i1 noundef zeroext %3, ptr noundef %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %mi_lock_acquire.exit
  %i.m = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #16 ; 0 uses
  %i.n = call fastcc ptr @mi_arenas_try_find_free(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef null, i64 noundef %5, i32 noundef %6, ptr noundef %7) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %.critedge
  %.1 = phi ptr [ %i.n, %.critedge ], [ null, %bb.a ], [ %i.d, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_arenas_alloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @_mi_arenas_alloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef 65536, i64 noundef 0, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef %7) #17
  ret ptr %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_arenas_page_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i64 %2, 65536
  br i1 %i.a, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @mi_arenas_page_singleton_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) #17
  br label %mi_arenas_page_singleton_alloc.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 10241
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc ptr @mi_arenas_page_regular_alloc(ptr noundef %0, i64 noundef 1, i64 noundef %1) #17
  br label %mi_arenas_page_singleton_alloc.exit

bb.e:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %1, 86699
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc ptr @mi_arenas_page_regular_alloc(ptr noundef %0, i64 noundef 8, i64 noundef %1) #17
  br label %mi_arenas_page_singleton_alloc.exit

bb.g:                                             ; preds = %bb.e
  %i.g = icmp ult i64 %1, 524289
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = tail call fastcc ptr @mi_arenas_page_regular_alloc(ptr noundef %0, i64 noundef 64, i64 noundef %1) #17
  br label %mi_arenas_page_singleton_alloc.exit

bb.i:                                             ; preds = %bb.g
  %i.i = add i64 %1, 65535
  %i.j = lshr i64 %i.i, 16
  %i.k = tail call fastcc ptr @mi_arenas_page_alloc_fresh(ptr noundef %0, i64 noundef %i.j, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true) #17 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %mi_arenas_page_singleton_alloc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call zeroext i1 @_mi_page_init(ptr noundef %0, ptr noundef nonnull %i.k) #16
  br i1 %i.m, label %mi_arenas_page_singleton_alloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %i.k, ptr noundef %0) #17
  br label %mi_arenas_page_singleton_alloc.exit

mi_arenas_page_singleton_alloc.exit:              ; preds = %bb.k, %bb.j, %bb.i, %bb.d, %bb.h, %bb.f, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ %i.f, %bb.f ], [ %i.h, %bb.h ], [ null, %bb.k ], [ null, %bb.i ], [ %i.k, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_arenas_page_singleton_alloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = add i64 %1, 65535
  %i.b = lshr i64 %i.a, 16
  %i.c = tail call fastcc ptr @mi_arenas_page_alloc_fresh(ptr noundef %0, i64 noundef %i.b, i64 noundef %1, i64 noundef %2, i1 noundef zeroext true) #17 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_mi_page_init(ptr noundef %0, ptr noundef nonnull %i.c) #16
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_mi_arenas_page_free(ptr noundef nonnull %i.c, ptr noundef %0) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_arenas_page_regular_alloc(ptr noundef %0, i64 noundef range(i64 0, 18014398509481984) %1, i64 noundef range(i64 0, 524289) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 4 uses
  %i.j = tail call i64 @_mi_bin(i64 noundef range(i64 0, 524289) %2) #16 ; 4 uses
  %i.k = icmp ugt i64 %i.j, 60
  br i1 %i.k, label %mi_arenas_page_try_find_abandoned.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.j ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %mi_arenas_page_try_find_abandoned.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load atomic i64, ptr %i.q monotonic, align 8 ; 5 uses
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 1) ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1488
  %i.w = load atomic i64, ptr %i.v monotonic, align 8 ; 4 uses
  %i.x = icmp ult i64 %i.r, 3
  br i1 %i.x, label %mi_arena_start_idx.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.u, 0
  %i.z = icmp ult i64 %i.w, 2
  %or.cond.i.i = select i1 %i.y, i1 true, i1 %i.z
  %i.aa = icmp ugt i64 %i.r, 2304
  %or.cond3.i.i = or i1 %i.aa, %or.cond.i.i
  br i1 %or.cond3.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = urem i64 %i.g, %i.s
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.ac = shl nuw nsw i64 %i.s, 8                 ; 2 uses
  %i.ad = udiv i64 %i.ac, %i.w                    ; 3 uses
  %i.ae = icmp ugt i64 %i.w, %i.ac
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = urem i64 %i.u, %i.s
  br label %.lr.ph.i

bb.h:                                             ; preds = %bb.f
  %i.ag = urem i64 %i.u, %i.w
  %i.ah = mul nuw nsw i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 8                       ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.ad, 511
  br i1 %i.aj, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.ak = lshr i64 %i.ad, 8
  %i.al = urem i64 %i.g, %i.ak
  %i.am = add nuw nsw i64 %i.al, %i.ai
  br label %.lr.ph.i

mi_arena_start_idx.exit.i:                        ; preds = %bb.c
  %.not115.i = icmp eq i64 %i.r, 0
  br i1 %.not115.i, label %mi_arenas_page_try_find_abandoned.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %mi_arena_start_idx.exit.i, %bb.i, %bb.h, %bb.g, %bb.e
  %.026.i133.i = phi i64 [ 0, %mi_arena_start_idx.exit.i ], [ %i.ai, %bb.h ], [ %i.am, %bb.i ], [ %i.af, %bb.g ], [ %i.ab, %bb.e ]
  %.not.i = icmp eq ptr %i.i, null
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 752 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.thread92.us.i
  %.061113.us.i = phi i64 [ %i.bg, %.thread92.us.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ao = icmp ult i64 %.061113.us.i, %i.s
  %i.ap = add i64 %.061113.us.i, %.026.i133.i     ; 2 uses
  %.not72.us.i = icmp ult i64 %i.ap, %i.s
  %i.aq = select i1 %.not72.us.i, i64 0, i64 %i.s
  %spec.select.us.i = sub nuw i64 %i.ap, %i.aq
  %.059.us.i = select i1 %i.ao, i64 %spec.select.us.i, i64 %.061113.us.i
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.059.us.i
  %i.au = load atomic ptr, ptr %i.at acquire, align 8 ; 5 uses
  %.not74.us.i = icmp eq ptr %i.au, null
  br i1 %.not74.us.i, label %.thread92.us.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !25, !range !26, !noundef !27
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.thread92.us.i, label %mi_arena_is_suitable.exit.thread.i.thread.us.i

mi_arena_is_suitable.exit.thread.i.thread.us.i:   ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.az
  %i.bb = load atomic ptr, ptr %i.ba acquire, align 8 ; 2 uses
  %.not75.us.i = icmp eq ptr %i.bb, null
  br i1 %.not75.us.i, label %.thread92.us.i, label %bb.k

bb.k:                                             ; preds = %mi_arena_is_suitable.exit.thread.i.thread.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.j
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52
  %i.bf = call zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef %i.be, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @mi_arena_try_claim_abandoned, ptr noundef nonnull %i.au) #16
  br i1 %i.bf, label %.split.us.i, label %.thread99.us.i

.thread99.us.i:                                   ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.thread92.us.i

.thread92.us.i:                                   ; preds = %.thread99.us.i, %mi_arena_is_suitable.exit.thread.i.thread.us.i, %bb.j, %.lr.ph.split.us.i
  %i.bg = add nuw i64 %.061113.us.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.r
  br i1 %exitcond.not.i, label %mi_arenas_page_try_find_abandoned.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !103

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bi
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8 ; 2 uses
  %.not75.i = icmp eq ptr %i.bk, null
  br i1 %.not75.i, label %mi_arenas_page_try_find_abandoned.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.j
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52
  %i.bo = call zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef %i.bn, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull @mi_arena_try_claim_abandoned, ptr noundef nonnull %i.i) #16
  br i1 %i.bo, label %.split.us.i, label %mi_arenas_page_try_find_abandoned.exit.thread25

mi_arenas_page_try_find_abandoned.exit.thread25:  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %mi_arenas_page_try_find_abandoned.exit.thread

.split.us.i:                                      ; preds = %bb.k, %bb.l
  %.us-phi.i = phi ptr [ %i.i, %bb.l ], [ %i.au, %bb.k ]
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bq = getelementptr i8, ptr %.us-phi.i, i64 40
  %.val.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !29
  %i.br = shl i64 %i.bp, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.br
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = and i64 %i.bt, -268435456               ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %mi_arenas_page_try_find_abandoned.exit, label %bb.m, !prof !30

bb.m:                                             ; preds = %.split.us.i
  %i.bw = inttoptr i64 %i.bu to ptr
  %i.bx = lshr i64 %i.bt, 16
  %i.by = and i64 %i.bx, 4095
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load atomic ptr, ptr %i.bz acquire, align 128
  br label %mi_arenas_page_try_find_abandoned.exit

mi_arenas_page_try_find_abandoned.exit:           ; preds = %.split.us.i, %bb.m
  %.0.i.i.i = phi ptr [ %i.ca, %bb.m ], [ null, %.split.us.i ] ; 3 uses
  %i.cb = atomicrmw add ptr %i.m, i64 -1 monotonic, align 8 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3864
  call void @__mi_stat_decrease(ptr noundef nonnull %i.cc, i64 noundef 1) #16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4240
  call void @__mi_stat_counter_increase(ptr noundef nonnull %i.cd, i64 noundef 1) #16
  call void @_mi_page_free_collect(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %.0.i.i.i, null
  br i1 %.not, label %mi_arenas_page_try_find_abandoned.exit.thread, label %bb.u

mi_arenas_page_try_find_abandoned.exit.thread:    ; preds = %.thread92.us.i, %mi_arena_start_idx.exit.i, %.lr.ph.split.i, %bb.a, %bb.b, %mi_arenas_page_try_find_abandoned.exit.thread25, %mi_arenas_page_try_find_abandoned.exit
  %i.ce = call i64 @mi_option_get(i32 noundef 40) #16 ; 2 uses
  %i.cf = call i64 @_mi_os_page_size() #16
  %i.cg = call range(i64 16384, 0) i64 @llvm.umax.i64(i64 %i.cf, i64 16384)
  %i.ch = shl i64 %1, 16
  %.not21 = icmp ult i64 %i.cg, %i.ch
  br i1 %.not21, label %bb.n, label %bb.r

bb.n:                                             ; preds = %mi_arenas_page_try_find_abandoned.exit.thread
  %i.ci = call i64 @_mi_os_page_size() #16
  %i.cj = mul i64 %i.ci, 65535
  %i.ck = add i64 %i.cj, 65535
  %i.cl = lshr i64 %i.ck, 16
  %.not22 = icmp samesign ult i64 %1, %i.cl
  br i1 %.not22, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cm = icmp eq i64 %i.ce, 2
  br i1 %i.cm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = call zeroext i1 @_mi_os_has_overcommit() #16
  br i1 %i.cn, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.co = icmp eq i64 %i.ce, 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %mi_arenas_page_try_find_abandoned.exit.thread
  %i.cp = phi i1 [ true, %bb.p ], [ true, %bb.n ], [ true, %mi_arenas_page_try_find_abandoned.exit.thread ], [ %i.co, %bb.q ]
  %i.cq = call fastcc ptr @mi_arenas_page_alloc_fresh(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 1, i1 noundef zeroext %i.cp) #17 ; 4 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = call zeroext i1 @_mi_page_init(ptr noundef %0, ptr noundef nonnull %i.cq) #16
  br i1 %i.cs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_mi_arenas_page_free(ptr noundef nonnull %i.cq, ptr noundef %0) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.s, %mi_arenas_page_try_find_abandoned.exit
  %.1 = phi ptr [ %.0.i.i.i, %mi_arenas_page_try_find_abandoned.exit ], [ null, %bb.t ], [ null, %bb.r ], [ %i.cq, %bb.s ]
  ret ptr %.1
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_arenas_page_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6184
  %i.b = tail call i64 @_mi_page_stats_bin(ptr noundef nonnull %0) #16
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b
  tail call void @__mi_stat_decrease(ptr noundef nonnull %i.c, i64 noundef 1) #16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3752
  tail call void @__mi_stat_decrease(ptr noundef nonnull %i.d, i64 noundef 1) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4544
  %i.g = tail call i64 @_mi_page_stats_bin(ptr noundef nonnull %0) #16
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.h, i64 noundef 1) #16
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 2112
  tail call void @__mi_stat_decrease_mt(ptr noundef nonnull %i.i, i64 noundef 1) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @mi_arenas_page_free_prim(ptr noundef nonnull %0) #17
  ret void
}

declare void @__mi_stat_decrease(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i64 @_mi_page_stats_bin(ptr noundef) local_unnamed_addr #6

declare void @__mi_stat_decrease_mt(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_arenas_page_free_prim(ptr noundef %0) unnamed_addr #5 {
bb.a:
  tail call void @_mi_page_map_unregister(ptr noundef %0) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %i.c = icmp eq i32 %i.b, 6
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.e = zext i32 %.sroa.4.0.copyload.i to i64    ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 752
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load atomic ptr, ptr %i.j acquire, align 8
end_hunk_0
begin_hunk_1_@mi_reserve_huge_os_pages_at_ex:bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.4, i32 noundef %.022, i64 noundef %i.j, i64 noundef %0) #16
  %i.l = load i64, ptr %i.a, align 8, !tbaa !31
  %i.m = call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef %i.l, i32 noundef %.022, i1 noundef zeroext %3, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr noundef null, ptr noundef null, ptr noundef %4) #17
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.a, align 8, !tbaa !31
  call void @_mi_os_free(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef %i.n, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ 12, %bb.g ], [ 12, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j
  %.1 = phi i32 [ %.0, %bb.j ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @_mi_os_numa_node_count() local_unnamed_addr #6

declare ptr @_mi_os_alloc_huge_os_pages(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #6

declare void @_mi_verbose_message(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null) #17
  ret i32 %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1
  %or.cond = icmp ult i64 %i.b, 2147483647
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %1 to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @_mi_os_numa_node_count() #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = phi i32 [ %i.c, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.f = zext nneg i32 %spec.store.select to i64  ; 3 uses
  %i.g = udiv i64 %0, %i.f
  %i.h = urem i64 %0, %i.f
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = udiv i64 %2, %i.f
  %i.k = add i64 %i.j, 50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ]
  %i.m = sext i32 %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.03849 = phi i64 [ %0, %bb.g ], [ %.139, %bb.i ] ; 2 uses
  %i.n = icmp samesign ugt i64 %i.h, %indvars.iv
  %i.o = zext i1 %i.n to i64
  %spec.select = add i64 %i.g, %i.o               ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select, i32 noundef %i.p, i64 noundef %i.l, i1 noundef zeroext false, ptr noundef null) #17 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.139 = tail call i64 @llvm.usub.sat.i64(i64 %.03849, i64 %spec.select)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp sge i64 %indvars.iv.next, %i.m
  %i.s = icmp ule i64 %.03849, %spec.select
  %.not47 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %.not47, label %.loopexit, label %bb.h, !llvm.loop !0

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ %i.q, %bb.h ]
  ret i32 %.4
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages(i64 noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.5) #16
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = fmul double %1, 1.000000e+03
  %i.b = fptoui double %i.a to i64                ; 2 uses
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @_mi_os_numa_node_count() #16 ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %i.e = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %i.f = udiv i64 %0, %i.e
  %i.g = urem i64 %0, %i.e
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = udiv i64 %i.b, %i.e
  %i.j = add i64 %i.i, 50
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i64 [ %i.j, %bb.e ], [ 0, %bb.d ]
  %i.l = sext i32 %i.d to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %.03849.i = phi i64 [ %0, %bb.f ], [ %.139.i, %bb.h ] ; 2 uses
  %i.m = icmp samesign ugt i64 %i.g, %indvars.iv.i
  %i.n = zext i1 %i.m to i64
  %spec.select.i = add i64 %i.f, %i.n             ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.p = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select.i, i32 noundef %i.o, i64 noundef %i.k, i1 noundef zeroext false, ptr noundef null) #17 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.h, label %mi_reserve_huge_os_pages_interleave.exit.thread

bb.h:                                             ; preds = %bb.g
  %.139.i = tail call i64 @llvm.usub.sat.i64(i64 %.03849.i, i64 %spec.select.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = icmp sge i64 %indvars.iv.next.i, %i.l
  %i.r = icmp ule i64 %.03849.i, %spec.select.i
  %.not47.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %.not47.i, label %mi_reserve_huge_os_pages_interleave.exit, label %bb.g, !llvm.loop !0

mi_reserve_huge_os_pages_interleave.exit:         ; preds = %bb.h, %bb.c
  br i1 %.not, label %mi_reserve_huge_os_pages_interleave.exit.thread, label %bb.i

bb.i:                                             ; preds = %mi_reserve_huge_os_pages_interleave.exit
  store i64 %0, ptr %2, align 8, !tbaa !31
  br label %mi_reserve_huge_os_pages_interleave.exit.thread

mi_reserve_huge_os_pages_interleave.exit.thread:  ; preds = %bb.g, %bb.i, %mi_reserve_huge_os_pages_interleave.exit
  %.4.i11 = phi i32 [ 0, %mi_reserve_huge_os_pages_interleave.exit ], [ 0, %bb.i ], [ %i.p, %bb.g ]
  ret i32 %.4.i11
}

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @_mi_heap_visit_blocks(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.mi_heap_area_s, align 8     ; 7 uses
  %6 = alloca %struct.mi_heap_visit_info_s, align 8 ; 10 uses
  %i.a = zext i1 %2 to i8
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @mi_heap_main() #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.057 = phi ptr [ %i.d, %bb.c ], [ %0, %bb.b ]  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %.057, ptr %6, align 8, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %3, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %4, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 %i.a, ptr %i.g, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.h, i8 0, i64 7, i1 false)
  %i.i = load ptr, ptr %.057, align 8, !tbaa !40  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load atomic i64, ptr %i.j monotonic, align 8 ; 6 uses
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 1) ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1488
  %i.p = load atomic i64, ptr %i.o monotonic, align 8 ; 4 uses
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %mi_arena_start_idx.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.n, 0
  %i.s = icmp ult i64 %i.p, 2
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  %i.t = icmp ugt i64 %i.k, 2304
  %or.cond3.i = or i1 %i.t, %or.cond.i
  br i1 %or.cond3.i, label %.lr.ph, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %i.l, 8                  ; 2 uses
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = urem i64 %i.n, %i.l
  br label %.lr.ph

bb.h:                                             ; preds = %bb.f
  %7 = udiv i64 %i.u, %i.p
  %i.x = urem i64 %i.n, %i.p
  %i.y = mul nuw nsw i64 %i.x, %7
  %i.z = lshr i64 %i.y, 8
  br label %.lr.ph

mi_arena_start_idx.exit:                          ; preds = %bb.d
  %.not80 = icmp eq i64 %i.k, 0
  br i1 %.not80, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.e, %bb.h, %mi_arena_start_idx.exit
  %.026.i102 = phi i64 [ 0, %mi_arena_start_idx.exit ], [ 0, %bb.e ], [ %i.w, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.057, i64 752 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.057, i64 104
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit73.us
  %.06076.us = phi i64 [ %i.ba, %.loopexit73.us ], [ 0, %.lr.ph ] ; 4 uses
  %.06175.us = phi i8 [ %.4.us, %.loopexit73.us ], [ 1, %.lr.ph ] ; 3 uses
  %i.ac = icmp ult i64 %.06076.us, %i.l
  %i.ad = add i64 %.06076.us, %.026.i102          ; 2 uses
  %.not.us = icmp ult i64 %i.ad, %i.l
  %i.ae = select i1 %.not.us, i64 0, i64 %i.l
  %spec.select.us = sub nuw i64 %i.ad, %i.ae
  %.059.us = select i1 %i.ac, i64 %spec.select.us, i64 %.06076.us
  %i.af = load ptr, ptr %.057, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.059.us
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8 ; 3 uses
  %.not70.us = icmp eq ptr %i.ai, null
  br i1 %.not70.us, label %.loopexit73.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ak
  %i.am = load atomic ptr, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = trunc nuw i8 %.06175.us to i1
  %i.ao = icmp ne ptr %i.am, null
  %or.cond.us = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.us, label %.preheader72.us, label %.loopexit73.us

.preheader72.us:                                  ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.preheader72.us, %bb.l
  %.05874.us = phi i64 [ 0, %.preheader72.us ], [ %i.aw, %bb.l ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.05874.us
  %i.ar = load atomic i64, ptr %i.aq monotonic, align 8
  %.not71.us = icmp eq i64 %i.ar, 0
  br i1 %.not71.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05874.us
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.au = call zeroext i1 @_mi_bitmap_forall_set(ptr noundef %i.at, ptr noundef nonnull @mi_heap_visit_page_at, ptr noundef nonnull %i.ai, ptr noundef nonnull %6) #16
  %i.av = zext i1 %i.au to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.us = phi i8 [ %i.av, %bb.k ], [ 1, %bb.j ]  ; 2 uses
  %i.aw = add nuw nsw i64 %.05874.us, 1
  %i.ax = trunc nuw i8 %.2.us to i1
  %i.ay = icmp samesign ult i64 %.05874.us, 60
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.j, label %.loopexit73.us, !llvm.loop !137

.loopexit73.us:                                   ; preds = %bb.l, %bb.i, %.lr.ph.split.us
  %.4.us = phi i8 [ %.06175.us, %.lr.ph.split.us ], [ %.06175.us, %bb.i ], [ %.2.us, %bb.l ] ; 2 uses
  %i.ba = add nuw i64 %.06076.us, 1               ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ba, %i.k
  br i1 %exitcond83.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.o, %.loopexit73.us
  %.061.lcssa = phi i8 [ %.4.us, %.loopexit73.us ], [ %.4, %bb.o ]
  %i.bb = trunc nuw i8 %.061.lcssa to i1
  br i1 %i.bb, label %._crit_edge.thread, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.06076 = phi i64 [ %i.bs, %bb.o ], [ 0, %.lr.ph ] ; 4 uses
  %.06175 = phi i8 [ %.4, %bb.o ], [ 1, %.lr.ph ] ; 3 uses
  %i.bc = icmp ult i64 %.06076, %i.l
  %i.bd = add i64 %.06076, %.026.i102             ; 2 uses
  %.not = icmp ult i64 %i.bd, %i.l
  %i.be = select i1 %.not, i64 0, i64 %i.l
  %spec.select = sub nuw i64 %i.bd, %i.be
  %.059 = select i1 %i.bc, i64 %spec.select, i64 %.06076
  %i.bf = load ptr, ptr %.057, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.059
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8 ; 3 uses
  %.not70 = icmp eq ptr %i.bi, null
  br i1 %.not70, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !51
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bk
  %i.bm = load atomic ptr, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = trunc nuw i8 %.06175 to i1
  %i.bo = icmp ne ptr %i.bm, null
  %or.cond = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.bq = call zeroext i1 @_mi_bitmap_forall_set(ptr noundef %i.bp, ptr noundef nonnull @mi_heap_visit_page_at, ptr noundef nonnull %i.bi, ptr noundef nonnull %6) #16
  %i.br = zext i1 %i.bq to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.lr.ph.split
  %.4 = phi i8 [ %.06175, %.lr.ph.split ], [ %.06175, %bb.m ], [ %i.br, %bb.n ] ; 2 uses
  %i.bs = add nuw i64 %.06076, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !138

._crit_edge.thread:                               ; preds = %mi_arena_start_idx.exit, %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %.057, i64 712 ; 2 uses
  %i.bu = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bt) #16 ; 3 uses
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.bu, ptr noundef nonnull @.str.7, i32 noundef %i.bu) #16
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %._crit_edge.thread, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.057, i64 704
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !68 ; 2 uses
  %i.bx = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bt) #16 ; 0 uses
  %.not81 = icmp eq ptr %i.bw, null
  br i1 %.not81, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %mi_lock_acquire.exit
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph78, %mi_heap_visit_page.exit
  %.15677 = phi ptr [ %i.bw, %.lr.ph78 ], [ %i.ca, %mi_heap_visit_page.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.15677, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_mi_heap_area_init(ptr noundef nonnull %5, ptr noundef nonnull %.15677) #16
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.cc = load ptr, ptr %6, align 8, !tbaa !90
  %i.cd = load i64, ptr %i.by, align 8, !tbaa !95
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.cf = call zeroext i1 %i.cb(ptr noundef %i.cc, ptr noundef nonnull %5, ptr noundef null, i64 noundef %i.cd, ptr noundef %i.ce) #16, !inline_history !1
  br i1 %i.cf, label %bb.r, label %mi_heap_visit_page.exit.thread

mi_heap_visit_page.exit.thread:                   ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.cg = load i8, ptr %i.g, align 8, !tbaa !93, !range !26, !noundef !27
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.s, label %mi_heap_visit_page.exit

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.ck = call zeroext i1 @_mi_theap_area_visit_blocks(ptr noundef nonnull %5, ptr noundef nonnull %.15677, ptr noundef %i.ci, ptr noundef %i.cj) #16
  br label %mi_heap_visit_page.exit

mi_heap_visit_page.exit:                          ; preds = %bb.r, %bb.s
  %.0.i = phi i1 [ %i.ck, %bb.s ], [ true, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.cl = icmp ne ptr %i.ca, null
  %i.cm = select i1 %.0.i, i1 %i.cl, i1 false
  br i1 %i.cm, label %bb.q, label %.loopexit, !llvm.loop !139

.loopexit:                                        ; preds = %mi_heap_visit_page.exit, %mi_heap_visit_page.exit.thread, %mi_lock_acquire.exit, %._crit_edge
  %.0 = phi i1 [ false, %._crit_edge ], [ true, %mi_lock_acquire.exit ], [ false, %mi_heap_visit_page.exit.thread ], [ %.0.i, %mi_heap_visit_page.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i1 [ %.0, %.loopexit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare zeroext i1 @_mi_bitmap_forall_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define internal zeroext i1 @mi_heap_visit_page_at(i64 noundef %0, i64 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #5 {
bb.a:
  %4 = alloca %struct.mi_heap_area_s, align 8     ; 6 uses
  %i.a = getelementptr i8, ptr %2, i64 40
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.b = shl i64 %0, 16
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.b
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, -268435456                 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %mi_arena_page_at_slice.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.e to ptr
  %i.h = lshr i64 %i.d, 16
  %i.i = and i64 %i.h, 4095
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %i.i
  %i.k = load atomic ptr, ptr %i.j acquire, align 128
  br label %mi_arena_page_at_slice.exit

mi_arena_page_at_slice.exit:                      ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_mi_heap_area_init(ptr noundef nonnull %4, ptr noundef %.0.i.i) #16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.n = load ptr, ptr %3, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92
  %i.s = call zeroext i1 %i.m(ptr noundef %i.n, ptr noundef nonnull %4, ptr noundef null, i64 noundef %i.p, ptr noundef %i.r) #16, !inline_history !1
  br i1 %i.s, label %bb.c, label %mi_heap_visit_page.exit

bb.c:                                             ; preds = %mi_arena_page_at_slice.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !93, !range !26, !noundef !27
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %mi_heap_visit_page.exit

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !92
  %i.y = call zeroext i1 @_mi_theap_area_visit_blocks(ptr noundef nonnull %4, ptr noundef %.0.i.i, ptr noundef %i.w, ptr noundef %i.x) #16
  br label %mi_heap_visit_page.exit

mi_heap_visit_page.exit:                          ; preds = %mi_arena_page_at_slice.exit, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.y, %bb.d ], [ false, %mi_arena_page_at_slice.exit ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @mi_heap_visit_blocks(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call zeroext i1 @_mi_heap_visit_blocks(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #17
  ret i1 %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @mi_heap_visit_abandoned_blocks(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call zeroext i1 @_mi_heap_visit_blocks(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #17
  ret i1 %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_heap_move_pages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.mi_heap_delete_visit_info_s, align 8 ; 6 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !40
  %i.a = tail call ptr @_mi_subproc_heap_main(ptr noundef %.val.i) #16
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1368
  %i.f = load atomic ptr, ptr %i.e seq_cst, align 8, !tbaa !96 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %mi_heap_delete_pages.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.08 = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]   ; 4 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = icmp eq ptr %i.j, %.08
  br i1 %i.k, label %mi_heap_delete_pages.exit, label %bb.d, !prof !97

bb.d:                                             ; preds = %.thread
  %i.l = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef nonnull %.08) #20
  br label %mi_heap_delete_pages.exit

mi_heap_delete_pages.exit:                        ; preds = %bb.c, %.thread, %bb.d
  %.09 = phi ptr [ null, %bb.c ], [ %.08, %bb.d ], [ %.08, %.thread ]
  %i.m = phi ptr [ null, %bb.c ], [ %i.l, %bb.d ], [ %i.h, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %.09, ptr %2, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !141
  %i.p = call zeroext i1 @_mi_heap_visit_blocks(ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @mi_heap_delete_page, ptr noundef nonnull %2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %mi_heap_delete_pages.exit
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_heap_destroy_pages(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.mi_heap_delete_visit_info_s, align 8 ; 4 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !40
  %i.a = tail call ptr @_mi_subproc_heap_main(ptr noundef %.val.i) #16
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = call zeroext i1 @_mi_heap_visit_blocks(ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @mi_heap_delete_page, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_arenas_try_find_free(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 18014398509481984) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 6 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 1) ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1488
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 4 uses
  %i.i = icmp ult i64 %i.c, 3
  br i1 %i.i, label %mi_arena_start_idx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.f, 0
  %i.k = icmp ult i64 %i.h, 2
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k
  %i.l = icmp ugt i64 %i.c, 2304
  %or.cond3.i = or i1 %i.l, %or.cond.i
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = urem i64 %5, %i.d
  br label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.n = shl nuw nsw i64 %i.d, 8                  ; 2 uses
  %i.o = udiv i64 %i.n, %i.h                      ; 3 uses
  %i.p = icmp ugt i64 %i.h, %i.n
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = urem i64 %i.f, %i.d
  br label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.r = urem i64 %i.f, %i.h
  %i.s = mul nuw nsw i64 %i.r, %i.o
  %i.t = lshr i64 %i.s, 8                         ; 2 uses
  %i.u = icmp samesign ugt i64 %i.o, 511
  br i1 %i.u, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.v = lshr i64 %i.o, 8
  %i.w = urem i64 %5, %i.v
  %i.x = add nuw nsw i64 %i.w, %i.t
  br label %.lr.ph

mi_arena_start_idx.exit:                          ; preds = %bb.a
  %.not210 = icmp eq i64 %i.c, 0
  br i1 %.not210, label %.thread152, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %mi_arena_start_idx.exit
  %.026.i253 = phi i64 [ 0, %mi_arena_start_idx.exit ], [ %i.t, %bb.f ], [ %i.x, %bb.g ], [ %i.q, %bb.e ], [ %i.m, %bb.c ] ; 2 uses
  %.not.not = icmp eq ptr %4, null
  %.old = icmp slt i32 %6, 0                      ; 2 uses
  br i1 %.not.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.us.split.us.split.us.preheader, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.z = load i8, ptr %i.y, align 4, !tbaa !72, !range !26, !noundef !27
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread152, label %mi_arena_is_suitable.exit.thread.i.us.us

.lr.ph.split.us.split.us.split.us.preheader:      ; preds = %.lr.ph.split.us
  %i.ab = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %4, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #17 ; 2 uses
  %.not112.us.us.us = icmp eq ptr %i.ab, null
  br i1 %.not112.us.us.us, label %.thread152, label %.thread172

mi_arena_is_suitable.exit.thread.i.us.us:         ; preds = %.lr.ph.split.us.split.us.split.preheader
  %i.ac = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %4, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #17 ; 2 uses
  %.not112.us.us = icmp eq ptr %i.ac, null
  br i1 %.not112.us.us, label %.thread152, label %.thread172

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %3, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %mi_arena_is_suitable_ex.exit.thread143.us188
  %.091176.us178 = phi i64 [ %i.as, %mi_arena_is_suitable_ex.exit.thread143.us188 ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.ad = icmp ult i64 %.091176.us178, %i.d
  %i.ae = add i64 %.091176.us178, %.026.i253      ; 2 uses
  %.not109.us = icmp ult i64 %i.ae, %i.d
  %i.af = select i1 %.not109.us, i64 0, i64 %i.d
  %spec.select.us = sub nuw i64 %i.ae, %i.af
  %.088.us = select i1 %i.ad, i64 %spec.select.us, i64 %.091176.us178
  %i.ag = load ptr, ptr %0, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.088.us
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8 ; 4 uses
  %.not111.us = icmp eq ptr %i.aj, null
  br i1 %.not111.us, label %mi_arena_is_suitable_ex.exit.thread143.us188, label %.thread.us179

.thread.us179:                                    ; preds = %.lr.ph.split.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !25, !range !26, !noundef !27
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %mi_arena_is_suitable_ex.exit.thread143.us188, label %mi_arena_is_suitable.exit.thread.thread.i.us180

mi_arena_is_suitable.exit.thread.thread.i.us180:  ; preds = %.thread.us179
  br i1 %.old, label %mi_arena_is_suitable_ex.exit.us186, label %bb.h

bb.h:                                             ; preds = %mi_arena_is_suitable.exit.thread.thread.i.us180
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !85 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  %i.aq = icmp eq i32 %i.ao, %6
  %spec.select.i.us185 = or i1 %i.ap, %i.aq
  br i1 %spec.select.i.us185, label %mi_arena_is_suitable_ex.exit.us186, label %mi_arena_is_suitable_ex.exit.thread143.us188

mi_arena_is_suitable_ex.exit.us186:               ; preds = %bb.h, %mi_arena_is_suitable.exit.thread.thread.i.us180
  %i.ar = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.aj, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #17 ; 2 uses
  %.not112.us187 = icmp eq ptr %i.ar, null
  br i1 %.not112.us187, label %mi_arena_is_suitable_ex.exit.thread143.us188, label %.thread172

mi_arena_is_suitable_ex.exit.thread143.us188:     ; preds = %.thread.us179, %mi_arena_is_suitable_ex.exit.us186, %bb.h, %.lr.ph.split.split.us
  %i.as = add nuw i64 %.091176.us178, 1           ; 2 uses
  %exitcond224.not = icmp eq i64 %i.as, %i.c
  br i1 %exitcond224.not, label %.thread152, label %.lr.ph.split.split.us, !llvm.loop !142

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %mi_arena_is_suitable_ex.exit.thread143
  %.091176 = phi i64 [ %i.bl, %mi_arena_is_suitable_ex.exit.thread143 ], [ 0, %.lr.ph.split ] ; 4 uses
  %i.at = icmp ult i64 %.091176, %i.d
  %i.au = add i64 %.091176, %.026.i253            ; 2 uses
  %.not109 = icmp ult i64 %i.au, %i.d
  %i.av = select i1 %.not109, i64 0, i64 %i.d
  %spec.select = sub nuw i64 %i.au, %i.av
  %.088 = select i1 %i.at, i64 %spec.select, i64 %.091176
  %i.aw = load ptr, ptr %0, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.088
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8 ; 5 uses
  %.not111 = icmp eq ptr %i.az, null
  br i1 %.not111, label %mi_arena_is_suitable_ex.exit.thread143, label %.thread

.thread:                                          ; preds = %.lr.ph.split.split
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !72, !range !26, !noundef !27
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %mi_arena_is_suitable_ex.exit.thread143, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 68
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !25, !range !26, !noundef !27
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %mi_arena_is_suitable_ex.exit.thread143, label %mi_arena_is_suitable.exit.thread.thread.i

mi_arena_is_suitable.exit.thread.thread.i:        ; preds = %bb.i
  br i1 %.old, label %mi_arena_is_suitable_ex.exit, label %bb.j

bb.j:                                             ; preds = %mi_arena_is_suitable.exit.thread.thread.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !85 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %i.bj = icmp eq i32 %i.bh, %6
  %spec.select.i = or i1 %i.bi, %i.bj
  br i1 %spec.select.i, label %mi_arena_is_suitable_ex.exit, label %mi_arena_is_suitable_ex.exit.thread143

mi_arena_is_suitable_ex.exit:                     ; preds = %mi_arena_is_suitable.exit.thread.thread.i, %bb.j
  %i.bk = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.az, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #17 ; 2 uses
  %.not112 = icmp eq ptr %i.bk, null
  br i1 %.not112, label %mi_arena_is_suitable_ex.exit.thread143, label %.thread172

mi_arena_is_suitable_ex.exit.thread143:           ; preds = %bb.i, %bb.j, %.thread, %.lr.ph.split.split, %mi_arena_is_suitable_ex.exit
  %i.bl = add nuw i64 %.091176, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.c
  br i1 %exitcond.not, label %.thread152, label %.lr.ph.split.split, !llvm.loop !142

.thread152:                                       ; preds = %mi_arena_is_suitable_ex.exit.thread143, %mi_arena_is_suitable_ex.exit.thread143.us188, %.lr.ph.split.us.split.us.split.preheader, %mi_arena_is_suitable.exit.thread.i.us.us, %.lr.ph.split.us.split.us.split.us.preheader, %mi_arena_start_idx.exit
  %i.bm = icmp slt i32 %6, 0
  br i1 %i.bm, label %.thread172, label %bb.k

bb.k:                                             ; preds = %.thread152
  %i.bn = load ptr, ptr %0, align 8, !tbaa !40    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load atomic i64, ptr %i.bo monotonic, align 8 ; 7 uses
  %i.bq = tail call i64 @llvm.usub.sat.i64(i64 %i.bp, i64 1) ; 8 uses
  %i.br = load i64, ptr %i.e, align 8, !tbaa !50  ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 1488
  %i.bt = load atomic i64, ptr %i.bs monotonic, align 8 ; 4 uses
  %i.bu = icmp ult i64 %i.bp, 3
  br i1 %i.bu, label %mi_arena_start_idx.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp eq i64 %i.br, 0
  %i.bw = icmp ult i64 %i.bt, 2
  %or.cond.i124 = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = icmp ugt i64 %i.bp, 2304
  %or.cond3.i125 = or i1 %i.bx, %or.cond.i124
  br i1 %or.cond3.i125, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = urem i64 %5, %i.bq
  br label %.lr.ph203

bb.n:                                             ; preds = %bb.l
  %i.bz = shl nuw nsw i64 %i.bq, 8                ; 2 uses
  %i.ca = udiv i64 %i.bz, %i.bt                   ; 3 uses
  %i.cb = icmp ugt i64 %i.bt, %i.bz
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = urem i64 %i.br, %i.bq
  br label %.lr.ph203

bb.p:                                             ; preds = %bb.n
  %i.cd = urem i64 %i.br, %i.bt
  %i.ce = mul nuw nsw i64 %i.cd, %i.ca
  %i.cf = lshr i64 %i.ce, 8                       ; 2 uses
  %i.cg = icmp samesign ugt i64 %i.ca, 511
  br i1 %i.cg, label %bb.q, label %.lr.ph203

bb.q:                                             ; preds = %bb.p
  %i.ch = lshr i64 %i.ca, 8
  %i.ci = urem i64 %5, %i.ch
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  br label %.lr.ph203

mi_arena_start_idx.exit127:                       ; preds = %bb.k
  %.not213 = icmp eq i64 %i.bp, 0
  br i1 %.not213, label %.thread172, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %mi_arena_start_idx.exit127
  %.026.i126256 = phi i64 [ 0, %mi_arena_start_idx.exit127 ], [ %i.cf, %bb.p ], [ %i.cj, %bb.q ], [ %i.cc, %bb.o ], [ %i.by, %bb.m ] ; 3 uses
  %.not113 = icmp eq ptr %4, null                 ; 4 uses
  br i1 %.not113, label %bb.r, label %.thread156.peel

bb.r:                                             ; preds = %.lr.ph203
  %.not = icmp eq i64 %i.bp, 1
  %.not114.peel = icmp ult i64 %.026.i126256, %i.bq
  %i.ck = select i1 %.not114.peel, i64 0, i64 %i.bq
  %spec.select118.peel = sub nuw i64 %.026.i126256, %i.ck
  %.0.peel = select i1 %.not, i64 0, i64 %spec.select118.peel
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.0.peel
  %i.cn = load atomic ptr, ptr %i.cm acquire, align 8 ; 2 uses
  %.not116.peel = icmp eq ptr %i.cn, null
  br i1 %.not116.peel, label %.thread162.peel, label %.thread156.peel

.thread156.peel:                                  ; preds = %.lr.ph203, %bb.r
  %.086159.peel = phi ptr [ %i.cn, %bb.r ], [ %4, %.lr.ph203 ] ; 6 uses
  br i1 %3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread156.peel
  %i.co = getelementptr inbounds nuw i8, ptr %.086159.peel, i64 20
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !72, !range !26, !noundef !27
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %.thread162.peel, label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread156.peel
  %i.cr = icmp eq ptr %.086159.peel, %4
  br i1 %i.cr, label %mi_arena_is_suitable.exit.thread.i132.peel, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not113, label %bb.v, label %mi_arena_is_suitable.exit.i128.peel

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.086159.peel, i64 68
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !25, !range !26, !noundef !27
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %mi_arena_is_suitable.exit.i128.peel, label %mi_arena_is_suitable.exit.thread.thread.i133.peel

mi_arena_is_suitable.exit.i128.peel:              ; preds = %bb.v, %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %.086159.peel, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28 ; 2 uses
  %.not.i.i129.peel = icmp ne ptr %i.cw, null
  %i.cx = icmp eq ptr %i.cw, %4
  %or.cond.i.i130.peel = and i1 %.not.i.i129.peel, %i.cx
  br i1 %or.cond.i.i130.peel, label %mi_arena_is_suitable.exit.thread.i132.peel, label %.thread162.peel

mi_arena_is_suitable.exit.thread.i132.peel:       ; preds = %mi_arena_is_suitable.exit.i128.peel, %bb.t
  br i1 %.not113, label %mi_arena_is_suitable.exit.thread.thread.i133.peel, label %bb.w

mi_arena_is_suitable.exit.thread.thread.i133.peel: ; preds = %mi_arena_is_suitable.exit.thread.i132.peel, %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %.086159.peel, i64 64
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !85 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  %i.db = icmp eq i32 %i.cz, %6
  %spec.select.i134.peel = or i1 %i.da, %i.db
  br i1 %spec.select.i134.peel, label %.thread162.peel, label %bb.w

bb.w:                                             ; preds = %mi_arena_is_suitable.exit.thread.thread.i133.peel, %mi_arena_is_suitable.exit.thread.i132.peel
  %i.dc = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %.086159.peel, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #17 ; 2 uses
  %.not117.peel = icmp eq ptr %i.dc, null
  br i1 %.not117.peel, label %.thread162.peel, label %.thread172

.thread162.peel:                                  ; preds = %bb.w, %mi_arena_is_suitable.exit.thread.thread.i133.peel, %mi_arena_is_suitable.exit.i128.peel, %bb.s, %bb.r
  %exitcond225.peel.not = icmp eq i64 %i.bp, 1
  br i1 %exitcond225.peel.not, label %.thread172, label %.peel.next

.peel.next:                                       ; preds = %.thread162.peel, %.thread162
  %.087202 = phi i64 [ %i.dy, %.thread162 ], [ 1, %.thread162.peel ] ; 4 uses
  br i1 %.not113, label %bb.x, label %.thread172

bb.x:                                             ; preds = %.peel.next
  %i.dd = icmp ult i64 %.087202, %i.bq
  %i.de = add i64 %.087202, %.026.i126256         ; 2 uses
  %.not114 = icmp ult i64 %i.de, %i.bq
  %i.df = select i1 %.not114, i64 0, i64 %i.bq
  %spec.select118 = sub nuw i64 %i.de, %i.df
  %.0 = select i1 %i.dd, i64 %spec.select118, i64 %.087202
  %i.dg = load ptr, ptr %0, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.0
  %i.dj = load atomic ptr, ptr %i.di acquire, align 8 ; 6 uses
  %.not116 = icmp eq ptr %i.dj, null
  br i1 %.not116, label %.thread162, label %.thread156

.thread156:                                       ; preds = %bb.x
  br i1 %3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.thread156
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !72, !range !26, !noundef !27
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.thread162, label %bb.z

bb.z:                                             ; preds = %.thread156, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !25, !range !26, !noundef !27
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %mi_arena_is_suitable.exit.i128, label %mi_arena_is_suitable.exit.thread.thread.i133

mi_arena_is_suitable.exit.i128:                   ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !28 ; 2 uses
  %.not.i.i129 = icmp ne ptr %i.dr, null
  %i.ds = icmp eq ptr %i.dr, %4
  %or.cond.i.i130 = and i1 %.not.i.i129, %i.ds
  br i1 %or.cond.i.i130, label %mi_arena_is_suitable.exit.thread.thread.i133, label %.thread162

mi_arena_is_suitable.exit.thread.thread.i133:     ; preds = %mi_arena_is_suitable.exit.i128, %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !85 ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  %i.dw = icmp eq i32 %i.du, %6
  %spec.select.i134 = or i1 %i.dv, %i.dw
  br i1 %spec.select.i134, label %.thread162, label %bb.aa

bb.aa:                                            ; preds = %mi_arena_is_suitable.exit.thread.thread.i133
  %i.dx = tail call fastcc ptr @mi_arena_try_alloc_at(ptr noundef %i.dj, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %5, ptr noundef %7) #17 ; 2 uses
  %.not117 = icmp eq ptr %i.dx, null
  br i1 %.not117, label %.thread162, label %.thread172

.thread162:                                       ; preds = %mi_arena_is_suitable.exit.thread.thread.i133, %bb.y, %mi_arena_is_suitable.exit.i128, %bb.x, %bb.aa
  %i.dy = add nuw i64 %.087202, 1                 ; 2 uses
  %exitcond225.not = icmp eq i64 %i.dy, %i.bp
  br i1 %exitcond225.not, label %.thread172, label %.peel.next, !llvm.loop !143

.thread172:                                       ; preds = %mi_arena_is_suitable_ex.exit, %mi_arena_is_suitable_ex.exit.us186, %.peel.next, %.thread162, %bb.aa, %mi_arena_is_suitable.exit.thread.i.us.us, %.lr.ph.split.us.split.us.split.us.preheader, %bb.w, %.thread162.peel, %mi_arena_start_idx.exit127, %.thread152
  %.10 = phi ptr [ null, %.peel.next ], [ null, %.thread152 ], [ %i.ar, %mi_arena_is_suitable_ex.exit.us186 ], [ %i.ac, %mi_arena_is_suitable.exit.thread.i.us.us ], [ null, %mi_arena_start_idx.exit127 ], [ %i.ab, %.lr.ph.split.us.split.us.split.us.preheader ], [ null, %.thread162.peel ], [ %i.dc, %bb.w ], [ null, %.thread162 ], [ %i.dx, %bb.aa ], [ %i.bk, %mi_arena_is_suitable_ex.exit ]
  ret ptr %.10
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_arena_reserve(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull writeonly captures(address_is_null) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 156
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @mi_option_get_size(i32 noundef 23) #16 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call zeroext i1 @_mi_os_has_virtual_reserve() #16
  %i.g = lshr i64 %i.d, 2
  %spec.select = select i1 %i.f, i64 %i.d, i64 %i.g
  %i.h = add i64 %spec.select, 65535
  %i.i = and i64 %i.h, -65536                     ; 3 uses
  %i.j = add nsw i64 %i.b, -1
  %or.cond = icmp ult i64 %i.j, 128
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.b, 3
  %i.l = shl nuw nsw i64 1, %i.k
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 1, -9223372036854775808) %i.l, i64 %i.i) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0
  %spec.select63 = select i1 %i.n, i64 %i.i, i64 %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i64 [ %spec.select63, %bb.d ], [ %i.i, %bb.c ]
  %i.p = add i64 %1, 67108863                     ; 3 uses
  %i.q = and i64 %i.p, -33554432                  ; 2 uses
  %spec.select64 = tail call i64 @llvm.umax.i64(i64 %.2, i64 %i.q) ; 3 uses
  %i.r = tail call i64 @llvm.umax.i64(i64 %spec.select64, i64 33554432)
  %.4 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 17179869184) ; 5 uses
  %i.s = icmp ult i64 %.4, %i.q
  br i1 %i.s, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call zeroext i1 @_mi_os_has_overcommit() #16 ; 2 uses
  %i.u = tail call i64 @mi_option_get(i32 noundef 4) #16
  %i.v = icmp eq i64 %i.u, 2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g
  %i.w = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 6) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.x = tail call i64 @mi_option_get(i32 noundef 4) #16
  %i.y = icmp eq i64 %i.x, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.050 = phi i1 [ %i.y, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.z = select i1 %i.t, i1 %.050, i1 false
  br i1 %i.z, label %.thread75, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.05067 = phi i1 [ %i.w, %.thread ], [ %.050, %bb.i ] ; 2 uses
  %i.aa = tail call fastcc i32 @mi_reserve_os_memory_ex2(ptr noundef nonnull %0, i64 noundef %.4, i1 noundef zeroext %.05067, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef nonnull %3) #17
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.n, label %.thread68

.thread75:                                        ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.ab, i64 noundef %.4) #16
  %i.ac = tail call fastcc i32 @mi_reserve_os_memory_ex2(ptr noundef nonnull %0, i64 noundef %.4, i1 noundef zeroext true, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef nonnull %3) #17
  %.not77 = icmp eq i32 %i.ac, 0
  br i1 %.not77, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread75
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 3 uses
  tail call void @__mi_stat_adjust_increase_mt(ptr noundef nonnull %i.ad, i64 noundef %.4) #16
  %i.ae = icmp ugt i64 %spec.select64, 134217728
  %i.af = icmp samesign ult i64 %i.p, 134217728
  %or.cond3 = and i1 %i.af, %i.ae
  br i1 %or.cond3, label %bb.l, label %bb.n

.thread68:                                        ; preds = %bb.j
  %i.ag = icmp ugt i64 %spec.select64, 134217728
  %i.ah = icmp samesign ult i64 %i.p, 134217728
  %or.cond369 = and i1 %i.ah, %i.ag
  br i1 %or.cond369, label %.thread71, label %bb.n

.thread71:                                        ; preds = %.thread68
  %i.ai = tail call fastcc i32 @mi_reserve_os_memory_ex2(ptr noundef nonnull %0, i64 noundef 134217728, i1 noundef zeroext %.05067, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef nonnull %3) #17 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @__mi_stat_adjust_decrease_mt(ptr noundef nonnull %i.ad, i64 noundef 134217728) #16
  %i.aj = tail call fastcc i32 @mi_reserve_os_memory_ex2(ptr noundef nonnull %0, i64 noundef 134217728, i1 noundef zeroext true, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef nonnull %3) #17
  %.not73 = icmp eq i32 %i.aj, 0
  br i1 %.not73, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__mi_stat_adjust_increase_mt(ptr noundef nonnull %i.ad, i64 noundef 134217728) #16
  br label %bb.n

bb.n:                                             ; preds = %.thread75, %bb.k, %bb.m, %bb.l, %.thread68, %.thread71, %bb.b, %bb.j, %bb.e, %bb.a
  ret void
}

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_arena_try_alloc_at(ptr noundef nonnull %0, i64 noundef range(i64 0, 18014398509481984) %1, i1 noundef zeroext %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 5 uses
  switch i64 %1, label %bb.b [
    i64 1, label %.split
    i64 8, label %mi_bbitmap_try_find_and_clearN.exit
    i64 0, label %mi_bbitmap_try_find_and_clearN.exit.thread
  ]

.split:                                           ; preds = %bb.a
  %i.g = call zeroext i1 @mi_bbitmap_try_find_and_clear(ptr noundef %i.f, i64 noundef %3, ptr noundef nonnull %i.a) #16
  br i1 %i.g, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = icmp samesign ult i64 %1, 65
  br i1 %i.h, label %.split63, label %bb.c

.split63:                                         ; preds = %bb.b
  %i.i = call zeroext i1 @mi_bbitmap_try_find_and_clearNX(ptr noundef %i.f, i64 noundef %3, i64 noundef range(i64 0, 18014398509481984) %1, ptr noundef nonnull %i.a) #16
  br i1 %i.i, label %bb.d, label %mi_bbitmap_try_find_and_clearN.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i64 %1, 513
  br i1 %i.j, label %.split62, label %.split64

.split62:                                         ; preds = %bb.c
end_hunk_1
