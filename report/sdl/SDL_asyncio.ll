Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_asyncio?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_CloseAsyncIO_REAL
define hidden zeroext i1 @SDL_CloseAsyncIO_REAL(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #5
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #5
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.e) #5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not50 = icmp eq ptr %i.g, null
  br i1 %.not50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.d, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.h) #5
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6) #5
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noalias dereferenceable_or_null(136) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 136) #6 ; 12 uses
  %.not51 = icmp eq ptr %i.j, null
  br i1 %.not51, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 %i.a, ptr %i.n, align 8
  store ptr %i.j, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 3 uses
  store ptr null, ptr %i.t, align 8
  store ptr %i.j, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.v = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.u, i32 noundef 1) #5 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call zeroext i1 %i.x(ptr noundef %i.z, ptr noundef nonnull %i.j) #5
  br i1 %i.aa, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.u, i32 noundef -1) #5 ; 0 uses
  %i.ac = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not53 = icmp eq ptr %i.ac, null
  %.pre54 = load ptr, ptr %i.s, align 8           ; 2 uses
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %.pre54, ptr %i.ad, align 8
  %.pre = load ptr, ptr %i.t, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = phi ptr [ %.pre, %bb.k ], [ null, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %.pre54, i64 96
  store ptr %i.ae, ptr %i.af, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.j) #5
  store ptr null, ptr %i.f, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.i, %bb.g
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.l ], [ true, %bb.h ], [ false, %bb.g ]
  %i.ag = load ptr, ptr %i.d, align 8
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ag) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f, %bb.d, %bb.b
  %.043 = phi i1 [ %i.i, %bb.f ], [ %.0, %bb.m ], [ %i.c, %bb.d ], [ %i.b, %bb.b ]
  ret i1 %.043
}

declare void @SDL_LockMutex_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_UnlockMutex_REAL(ptr noundef) local_unnamed_addr #1

declare i32 @SDL_AddAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_CreateAsyncIOQueue_REAL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 64) #6 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = tail call i32 @SDL_SetAtomicInt_REAL(ptr noundef nonnull %i.b, i32 noundef 0) #5 ; 0 uses
  %i.d = tail call zeroext i1 @SDL_SYS_CreateAsyncIOQueue(ptr noundef nonnull %i.a) #5
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @SDL_SetAtomicInt_REAL(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_SYS_CreateAsyncIOQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_GetAsyncIOResult_REAL(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr %i.d(ptr noundef %i.f) #5
  %i.h = tail call fastcc zeroext i1 @GetAsyncIOTaskOutcome(ptr noundef %i.g, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @GetAsyncIOTaskOutcome(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !3, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.d, ptr null, ptr %i.a
  store ptr %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  tail call void @SDL_LockMutex_REAL(ptr noundef %i.ab) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.ad, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre74 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not69, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store ptr %.pre74, ptr %i.ae, align 8
  %.pre = load ptr, ptr %i.ac, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %.pre, %bb.c ], [ null, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre74, i64 96
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ai, align 8            ; 8 uses
  %.not70 = icmp eq ptr %i.aj, null
  %.not71 = icmp eq ptr %0, %i.aj                 ; 2 uses
  %or.cond = or i1 %.not70, %.not71
  br i1 %or.cond, label %bb.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store ptr %i.ap, ptr %i.aq, align 8
  %.not72 = icmp eq ptr %i.ap, null
  br i1 %.not72, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store ptr %i.aj, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.aj, ptr %i.ak, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.au, i32 noundef 1) #5 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call zeroext i1 %i.ax(ptr noundef %i.az, ptr noundef nonnull %i.aj) #5
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.as, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.bc, i32 noundef -1) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %._crit_edge
  tail call void @SDL_UnlockMutex_REAL(ptr noundef %i.ab) #5
  br i1 %.not71, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.b, align 8, !range !3, !noundef !4
  %i.bf = trunc nuw i8 %i.be to i1
  %.0 = xor i1 %i.bf, true
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bh(ptr noundef %i.bj) #5
  %i.bk = load ptr, ptr %i.aa, align 8
  tail call void @SDL_DestroyMutex_REAL(ptr noundef %i.bk) #5
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i1 [ %.0, %bb.j ], [ true, %bb.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = tail call i32 @SDL_AddAtomicInt_REAL(ptr noundef nonnull %i.bn, i32 noundef -1) #5 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.063 = phi i1 [ %.1, %bb.k ], [ false, %bb.a ]
  ret i1 %.063
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_WaitAsyncIOResult_REAL(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr %i.d(ptr noundef %i.f, i32 noundef %2) #5
  %i.h = tail call fastcc zeroext i1 @GetAsyncIOTaskOutcome(ptr noundef %i.g, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_SignalAsyncIOQueue_REAL(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.b(ptr noundef %i.d) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_DestroyAsyncIOQueue_REAL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.SDL_AsyncIOOutcome, align 8 ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.a) #5
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = tail call ptr %i.f(ptr noundef %i.g, i32 noundef -1) #5 ; 4 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = load i8, ptr %i.j, align 8, !range !3, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.n) #5
  store ptr null, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  %i.o = call fastcc zeroext i1 @GetAsyncIOTaskOutcome(ptr noundef nonnull %i.h, ptr noundef %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.p = tail call i32 @SDL_GetAtomicInt_REAL(ptr noundef nonnull %i.a) #5
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.s(ptr noundef %i.u) #5
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #5
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare i32 @SDL_GetAtomicInt_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_QuitAsyncIO() local_unnamed_addr #0 {
bb.a:
  tail call void @SDL_SYS_QuitAsyncIO() #5
  ret void
}

declare void @SDL_SYS_QuitAsyncIO() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_LoadFileAsync_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #5
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.c = tail call ptr @SDL_AsyncIOFromFile_REAL(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) ; 6 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %bb.j, label %SDL_GetAsyncIOSize_REAL.exit

SDL_GetAsyncIOSize_REAL.exit:                     ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i8 1, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i64 %i.e(ptr noundef %i.g) #5, !inline_history !7 ; 4 uses
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %SDL_GetAsyncIOSize_REAL.exit
  %i.j = add nuw nsw i64 %i.h, 1
  %i.k = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.j) #5 ; 4 uses
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store i8 0, ptr %i.l, align 1
  %i.m = tail call fastcc zeroext i1 @RequestAsyncIO(i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %1, ptr noundef %2)
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.k) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %SDL_GetAsyncIOSize_REAL.exit
  %.0.shrunk = phi i1 [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.f ], [ false, %SDL_GetAsyncIOSize_REAL.exit ]
  %i.n = tail call zeroext i1 @SDL_CloseAsyncIO_REAL(ptr noundef nonnull %i.c, i1 noundef zeroext false, ptr noundef nonnull %1, ptr noundef %2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.d, %bb.b
  %.022 = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ %.0.shrunk, %bb.i ], [ false, %bb.e ]
  ret i1 %.022
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }

end_hunk_0
