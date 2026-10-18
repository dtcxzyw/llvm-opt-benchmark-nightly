Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 160
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wolfSSL_CertManagerLoadCABufferType:bb.a
  %i.al = zext i32 %i.ak to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.044.ph = phi i64 [ %i.al, %bb.l ], [ %2, %bb.j ]
  %.043.ph = phi ptr [ %i.ai, %bb.l ], [ %1, %bb.j ]
  %i.am = trunc i64 %.044.ph to i32
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @wc_InitDecodedCert(ptr noundef nonnull %i.ac, ptr noundef %.043.ph, i32 noundef %i.am, ptr noundef %i.an) #23
  %i.ao = call i32 @wc_ParseCert(ptr noundef nonnull %i.ac, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  %.not50 = icmp eq i32 %i.ao, 0
  br i1 %.not50, label %bb.n, label %SetCAType.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 804 ; 3 uses
  %i.aq = add i32 %6, -5
  %i.ar = icmp ult i32 %i.aq, -4
  br i1 %i.ar, label %SetCAType.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i32, ptr %i.ap, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.au = call i32 @wc_LockMutex(ptr noundef nonnull %i.at) #23
  %.not.i55 = icmp eq i32 %i.au, 0
  br i1 %.not.i55, label %bb.p, label %SetCAType.exit

bb.p:                                             ; preds = %bb.o
  %i.av = call i32 @llvm.bswap.i32(i32 %i.as)
  %i.aw = urem i32 %i.av, 11
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %.02637.i = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %.not3238.i = icmp eq ptr %.02637.i, null
  br i1 %.not3238.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.q
  %.02639.i = phi ptr [ %.026.i, %bb.q ], [ %.02637.i, %bb.p ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02639.i, i64 76 ; 2 uses
  %i.ba = load i128, ptr %i.ap, align 1
  %i.bb = load i128, ptr %i.az, align 1
  %i.bc = xor i128 %i.ba, %i.bb
  %i.bd = getelementptr i8, ptr %i.ap, i64 16
  %i.be = getelementptr i8, ptr %i.az, i64 16
  %i.bf = load i32, ptr %i.bd, align 1
  %i.bg = load i32, ptr %i.be, align 1
  %i.bh = zext i32 %i.bf to i128
  %i.bi = zext i32 %i.bg to i128
  %i.bj = xor i128 %i.bh, %i.bi
  %i.bk = or i128 %i.bc, %i.bj
  %i.bl = icmp ne i128 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %.lr.ph.i
  %i.bo = trunc nuw nsw i32 %6 to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.02639.i, i64 96
  store i8 %i.bo, ptr %i.bp, align 8, !tbaa !40
  br label %.loopexit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.02639.i, i64 104
  %.026.i = load ptr, ptr %i.bq, align 8, !tbaa !37 ; 2 uses
  %.not32.i = icmp eq ptr %.026.i, null
  br i1 %.not32.i, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.q, %.thread.i, %bb.p
  %.2.i = phi i32 [ 1, %.thread.i ], [ 0, %bb.p ], [ 0, %bb.q ]
  %i.br = call i32 @wc_UnLockMutex(ptr noundef nonnull %i.at) #23 ; 0 uses
  br label %SetCAType.exit

SetCAType.exit:                                   ; preds = %.loopexit.i, %bb.o, %bb.n, %bb.k, %bb.m
  %.4 = phi i32 [ -1, %bb.m ], [ -1, %bb.k ], [ %.2.i, %.loopexit.i ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  call void @wc_FreeDecodedCert(ptr noundef nonnull %i.ac) #23
  call void @wolfSSL_Free(ptr noundef nonnull %i.ac) #23
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !22
  %.not51 = icmp eq ptr %i.bs, null
  br i1 %.not51, label %.thread81, label %bb.r

bb.r:                                             ; preds = %SetCAType.exit
  call void @FreeDer(ptr noundef nonnull %i.a) #23
  br label %.thread81

.thread81:                                        ; preds = %SetCAType.exit, %bb.r, %bb.i, %bb.h
  %.586 = phi i32 [ %i.z, %bb.h ], [ -1, %bb.i ], [ %.4, %bb.r ], [ %.4, %SetCAType.exit ]
  call void @FreeSSL_Ctx(ptr noundef nonnull %i.f) #23
  br label %wolfSSL_CTX_free.exit

wolfSSL_CTX_free.exit:                            ; preds = %bb.a, %bb.b, %.thread81
  %.587 = phi i32 [ -1, %bb.a ], [ %.586, %.thread81 ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.587
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_CTX_new_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @wc_LockMutex(ptr noundef nonnull @inits_count_mutex) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %wolfSSL_Init.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @wolfCrypt_Init() #23
  %.not7.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i, label %bb.e, label %.thread13.i

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @wc_InitRwLock(ptr noundef nonnull @session_lock) #23
  %.not8.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i, label %bb.f, label %.thread13.i

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @session_lock_valid, align 4
  br label %wolfSSL_Init.exit

.thread13.i:                                      ; preds = %bb.e, %bb.d
  store volatile i32 1, ptr @initRefCount, align 4, !tbaa !41
  %i.h = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @inits_count_mutex) #23 ; 0 uses
  %i.i = tail call i32 @wolfSSL_Cleanup()         ; 0 uses
  br label %bb.g

wolfSSL_Init.exit:                                ; preds = %bb.c, %bb.f
  %i.j = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.k = add nsw i32 %i.j, 1
  store volatile i32 %i.k, ptr @initRefCount, align 4, !tbaa !41
  %i.l = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @inits_count_mutex) #23 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.b, %.thread13.i
  %.not24 = icmp eq ptr %0, null
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #23
  br label %bb.l

.critedge:                                        ; preds = %wolfSSL_Init.exit, %bb.a
  %.old = icmp eq ptr %0, null
  br i1 %.old, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.m = tail call ptr @wolfSSL_Malloc(i64 noundef 360) #23 ; 4 uses
  %.not25 = icmp eq ptr %i.m, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i32 @InitSSL_Ctx(ptr noundef nonnull %i.m, ptr noundef nonnull %0, ptr noundef %1) #23
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %wolfSSL_CTX_free.exit, label %bb.l

wolfSSL_CTX_free.exit:                            ; preds = %bb.j
  tail call void @FreeSSL_Ctx(ptr noundef nonnull %i.m) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.k, %wolfSSL_CTX_free.exit, %bb.j, %.critedge
  %.119 = phi ptr [ %i.m, %bb.j ], [ null, %.critedge ], [ null, %bb.k ], [ null, %wolfSSL_CTX_free.exit ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @wolfSSL_CTX_set_verify(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.c [
    i32 512, label %ModeToVerifyOptions.exit
    i32 0, label %.fold.split.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = trunc i32 %1 to i8                       ; 3 uses
  %i.b = and i8 %i.a, 1
  %i.c = lshr i8 %i.a, 1
  %i.d = and i8 %i.c, 8
  %i.e = or disjoint i8 %i.d, %i.b
  %i.f = shl i8 %i.a, 1
  %i.g = and i8 %i.f, 4
  %i.h = or disjoint i8 %i.e, %i.g
  br label %ModeToVerifyOptions.exit

.fold.split.i:                                    ; preds = %bb.b
  br label %ModeToVerifyOptions.exit

ModeToVerifyOptions.exit:                         ; preds = %bb.b, %bb.c, %.fold.split.i
  %.sroa.0.0.i = phi i8 [ 0, %bb.b ], [ %i.h, %bb.c ], [ 2, %.fold.split.i ] ; 4 uses
  %3 = and i8 %.sroa.0.0.i, 2
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 2 uses
  %5 = load i16, ptr %4, align 1
  %6 = zext nneg i8 %3 to i16
  %7 = and i16 %5, -16
  %8 = or disjoint i16 %7, %6
  %9 = and i8 %.sroa.0.0.i, 1
  %10 = zext nneg i8 %9 to i16
  %11 = or disjoint i16 %8, %10
  %12 = and i8 %.sroa.0.0.i, 4
  %13 = zext nneg i8 %12 to i16
  %14 = or disjoint i16 %11, %13
  %15 = and i8 %.sroa.0.0.i, 8
  %16 = zext nneg i8 %15 to i16
  %i.i = or disjoint i16 %14, %16
  store i16 %i.i, ptr %4, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %i.j, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %ModeToVerifyOptions.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_load_verify_buffer_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2
  %i.e = icmp eq i16 %i.d, 0
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %not. = phi i32 [ 1, %bb.a ], [ %i.f, %bb.b ]
  %i.g = and i32 %5, 2
  %.not16 = icmp eq i32 %i.g, 0
  %spec.store.select = select i1 %.not16, i32 %not., i32 5 ; 2 uses
  %i.h = icmp eq i32 %3, 1
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph.i, label %ProcessChainBuffer.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %.029.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.d ]
  %.01928.i = phi i64 [ %.pre-phi, %bb.g ], [ 0, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.01928.i, ptr %i.a, align 8, !tbaa !42
  %i.j = getelementptr inbounds i8, ptr %1, i64 %.01928.i
  %i.k = sub nsw i64 %2, %.01928.i
  %i.l = call i32 @ProcessBuffer(ptr noundef %0, ptr noundef %i.j, i64 noundef %i.k, i32 noundef 1, i32 noundef 6, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %spec.store.select, ptr nonnull poison) ; 4 uses
  %i.m = icmp eq i32 %i.l, -125
  br i1 %i.m, label %._crit_edge.loopexit.thread.i, label %bb.e

._crit_edge.loopexit.thread.i:                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %ProcessChainBuffer.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = icmp slt i32 %i.l, 0
  %.pre31.i = load i64, ptr %i.a, align 8, !tbaa !42 ; 3 uses
  br i1 %i.n, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = add nsw i64 %.pre31.i, %.01928.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = icmp sgt i64 %.pre31.i, 0
  %i.p = add nsw i64 %.pre31.i, %.01928.i         ; 2 uses
  %i.q = icmp slt i64 %i.p, %2
  %or.cond.i = select i1 %i.o, i1 %i.q, i1 false
  %spec.select27.i = select i1 %or.cond.i, i32 0, i32 %i.l
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.p, %bb.f ] ; 2 uses
  %.121.i = phi i32 [ %i.l, %._crit_edge ], [ %spec.select27.i, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ 1, %._crit_edge ], [ %.029.i, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.r = icmp sgt i32 %.121.i, -1
  %i.s = icmp slt i64 %.pre-phi, %2
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.u = icmp eq i32 %.1.i, 0
  %spec.select.i = select i1 %i.u, i32 %.121.i, i32 1
  br label %ProcessChainBuffer.exit

bb.h:                                             ; preds = %bb.c
  %i.v = tail call i32 @ProcessBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 6, ptr noundef null, ptr noundef null, i32 noundef %4, i32 noundef %spec.store.select, ptr nonnull poison)
  br label %ProcessChainBuffer.exit

ProcessChainBuffer.exit:                          ; preds = %._crit_edge.loopexit.i, %._crit_edge.loopexit.thread.i, %bb.d, %bb.h
  %.0 = phi i32 [ %i.v, %bb.h ], [ 0, %bb.d ], [ %spec.select.i, %._crit_edge.loopexit.i ], [ -125, %._crit_edge.loopexit.thread.i ]
  ret i32 %.0
}

declare i32 @PemToDer(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_InitDecodedCert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ParseCert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SetCAType(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = add i32 %2, -5
  %i.d = icmp ult i32 %i.c, -4
  %or.cond5 = or i1 %or.cond, %i.d
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.f) #23
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.e)
  %i.i = urem i32 %i.h, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %.02637 = load ptr, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  %.not3238 = icmp eq ptr %.02637, null
  br i1 %.not3238, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.02639 = phi ptr [ %.026, %bb.d ], [ %.02637, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02639, i64 76 ; 2 uses
  %i.m = load i128, ptr %1, align 1
  %i.n = load i128, ptr %i.l, align 1
  %i.o = xor i128 %i.m, %i.n
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %i.r = load i32, ptr %i.p, align 1
  %i.s = load i32, ptr %i.q, align 1
  %i.t = zext i32 %i.r to i128
  %i.u = zext i32 %i.s to i128
  %i.v = xor i128 %i.t, %i.u
  %i.w = or i128 %i.o, %i.v
  %i.x = icmp ne i128 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.d

.thread:                                          ; preds = %.lr.ph
  %i.aa = trunc nuw nsw i32 %2 to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.02639, i64 96
  store i8 %i.aa, ptr %i.ab, align 8, !tbaa !40
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.02639, i64 104
  %.026 = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 2 uses
  %.not32 = icmp eq ptr %.026, null
  br i1 %.not32, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %bb.c, %.thread
  %.2 = phi i32 [ 1, %.thread ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.ad = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.f) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.028 = phi i32 [ %.2, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.028
}

declare void @wc_FreeDecodedCert(ptr noundef) local_unnamed_addr #2

declare void @wolfSSL_Free(ptr noundef) local_unnamed_addr #2

declare void @FreeDer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @wolfSSL_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @FreeSSL_Ctx(ptr noundef nonnull %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CertManagerLoadCABuffer_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wolfSSL_CertManagerLoadCABufferType(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CertManagerLoadCABuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wolfSSL_CertManagerLoadCABufferType(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
end_hunk_0
begin_hunk_1_@wolfSSL_X509_check_host:bb.a

.thread:                                          ; preds = %.lr.ph, %bb.b
  call void @FreeDecodedCert(ptr noundef nonnull %5) #23
  br label %bb.h

bb.g:                                             ; preds = %.loopexit, %bb.f
  %.1 = phi i64 [ %.028, %.loopexit ], [ %spec.select, %bb.f ]
  %i.y = call i32 @CheckHostName(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef %.1, i32 noundef %3, i8 noundef zeroext 0) #23
  %.fr = freeze i32 %i.y
  %i.z = icmp eq i32 %.fr, 0
  call void @FreeDecodedCert(ptr noundef nonnull %5) #23
  %spec.select43 = zext i1 %i.z to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %spec.select43, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i32 %.027
}

declare i32 @CheckHostName(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_X509_check_ip_asc(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.DecodedCert], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174  ; 3 uses
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp ne ptr %1, null
  %or.cond.not = and i1 %i.e, %i.d
  br i1 %or.cond.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  call void @InitDecodedCert(ptr noundef nonnull %3, ptr noundef %i.f, i32 noundef %i.h, ptr noundef null) #23
  %i.i = call i32 @ParseCertRelative(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #23
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @CheckIPAddr(ptr noundef nonnull %3, ptr noundef nonnull %1) #23
  %.not11 = icmp eq i32 %i.j, 0
  %. = zext i1 %.not11 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %., %bb.d ]
  call void @FreeDecodedCert(ptr noundef nonnull %3) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.e, %bb.b
  %.2 = phi i32 [ %.1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.2
}

declare i32 @CheckIPAddr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_X509_STORE_CTX_new_ex(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 72) #23 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.b, align 8, !tbaa !287
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_X509_STORE_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_X509_STORE_CTX_get_error(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !288
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_X509_STORE_CTX_get_error_depth(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !289
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @wc_FreeMutex(ptr noundef) local_unnamed_addr #2

declare ptr @wolfTLSv1_2_client_method_ex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @InitDecodedCert_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_CheckPrivateKeyCert(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SendData(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ReceiveData(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @AllocCopyDer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetSequence_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateKeyValidate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_init_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_EccPrivateKeyDecode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_size(ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_free(ptr noundef) local_unnamed_addr #2

declare i32 @DecodeToKey(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicKeyDecode_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_get_curve_size_from_id(i32 noundef) local_unnamed_addr #2

declare i32 @wc_ReadDirFirst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ReadDirNext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_ReadDirClose(ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitDhKey(ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhSetCheckKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_FreeDhKey(ptr noundef) local_unnamed_addr #2

declare i32 @wc_FreeRng(ptr noundef) local_unnamed_addr #2

declare i32 @AllocDer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhParamsLoad(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !43}
!1 = distinct !{!1, !43}
!2 = distinct !{!2, !43}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS11WOLFSSL_CRL", !11, i64 0}
!13 = !{!"p1 _ZTS12WOLFSSL_OCSP", !11, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = !{!"wolfSSL_Ref", !8, i64 0}
!17 = !{!"WOLFSSL_CERT_MANAGER", !7, i64 0, !11, i64 88, !12, i64 96, !13, i64 104, !14, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !7, i64 184, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 224, !7, i64 225, !15, i64 226, !15, i64 228, !16, i64 232}
!18 = !{!17, !11, i64 88}
!19 = !{!17, !15, i64 226}
!20 = !{!17, !15, i64 228}
!21 = !{!"p1 _ZTS9DerBuffer", !11, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTS14WOLFSSL_METHOD", !11, i64 0}
!24 = !{!"wolfSSL_RefWithMutex", !7, i64 0, !8, i64 40}
!25 = !{!"WOLFSSL_BUFFER_INFO", !14, i64 0, !8, i64 8}
!26 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !11, i64 0}
!27 = !{!"p1 _ZTS6Suites", !11, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!"p1 _ZTS4TLSX", !11, i64 0}
!30 = !{!"WOLFSSL_CTX", !23, i64 0, !24, i64 8, !8, i64 56, !25, i64 64, !25, i64 80, !21, i64 96, !21, i64 104, !8, i64 112, !21, i64 120, !7, i64 128, !7, i64 129, !7, i64 129, !8, i64 132, !8, i64 136, !26, i64 144, !27, i64 152, !11, i64 160, !7, i64 168, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 169, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 170, !7, i64 171, !7, i64 171, !7, i64 171, !7, i64 172, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !7, i64 173, !15, i64 173, !15, i64 173, !15, i64 174, !15, i64 176, !15, i64 178, !7, i64 180, !15, i64 182, !28, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !8, i64 224, !8, i64 228, !15, i64 232, !8, i64 236, !7, i64 240, !7, i64 312, !11, i64 320, !11, i64 328, !8, i64 336, !29, i64 344, !7, i64 352}
!31 = !{!30, !11, i64 208}
!32 = !{!30, !26, i64 144}
!33 = !{!"DerBuffer", !14, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!34 = !{!33, !14, i64 0}
!35 = !{!33, !8, i64 16}
!36 = !{!"p1 _ZTS6Signer", !11, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS10Base_entry", !11, i64 0}
!39 = !{!"Signer", !8, i64 0, !8, i64 4, !15, i64 8, !7, i64 10, !15, i64 12, !7, i64 14, !7, i64 14, !7, i64 14, !14, i64 16, !8, i64 24, !14, i64 32, !38, i64 40, !38, i64 48, !7, i64 56, !7, i64 76, !7, i64 96, !36, i64 104}
!40 = !{!39, !7, i64 96}
!41 = !{!8, !8, i64 0}
!42 = !{!28, !28, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!17, !11, i64 128}
!45 = !{!"p1 _ZTS19WOLFSSL_BUFFER_INFO", !11, i64 0}
!46 = !{!39, !36, i64 104}
!47 = !{!"p1 _ZTS9DNS_entry", !11, i64 0}
!48 = !{!"SignatureCtx", !11, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76}
!49 = !{!"DecodedCert", !14, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !38, i64 80, !38, i64 88, !7, i64 96, !7, i64 116, !14, i64 136, !14, i64 144, !8, i64 152, !7, i64 156, !7, i64 157, !7, i64 413, !8, i64 672, !14, i64 680, !8, i64 688, !8, i64 692, !11, i64 696, !7, i64 704, !8, i64 736, !14, i64 744, !8, i64 752, !8, i64 756, !14, i64 760, !8, i64 768, !14, i64 776, !8, i64 784, !14, i64 792, !8, i64 800, !7, i64 804, !8, i64 824, !7, i64 828, !8, i64 848, !15, i64 852, !15, i64 854, !7, i64 856, !15, i64 858, !7, i64 860, !8, i64 864, !14, i64 872, !8, i64 880, !14, i64 888, !8, i64 896, !14, i64 904, !8, i64 912, !14, i64 920, !8, i64 928, !7, i64 932, !36, i64 936, !48, i64 944, !8, i64 1024, !8, i64 1028, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1032, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1033, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1034, !7, i64 1035, !7, i64 1035, !7, i64 1035, !7, i64 1035, !7, i64 1035, !7, i64 1040, !7, i64 1232, !7, i64 1232}
!50 = !{!49, !8, i64 32}
!51 = !{!17, !11, i64 136}
!52 = !{!7, !7, i64 0}
!53 = !{!"p1 _ZTS11WOLFSSL_CTX", !11, i64 0}
!54 = !{!"p1 _ZTS6Arrays", !11, i64 0}
!55 = !{!"p1 _ZTS9HS_Hashes", !11, i64 0}
!56 = !{!"p1 _ZTS6WC_RNG", !11, i64 0}
!57 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !11, i64 0}
!58 = !{!"p1 _ZTS7WOLFSSL", !11, i64 0}
!59 = !{!"WOLFSSL_CIPHER", !7, i64 0, !7, i64 1, !58, i64 8}
!60 = !{!"p1 _ZTS3Aes", !11, i64 0}
!61 = !{!"p1 _ZTS6ChaCha", !11, i64 0}
!62 = !{!"Ciphers", !60, i64 0, !14, i64 8, !14, i64 16, !61, i64 24, !7, i64 32, !7, i64 33}
!63 = !{!"", !7, i64 0, !14, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !7, i64 28, !7, i64 29}
!64 = !{!"p1 _ZTS5DhKey", !11, i64 0}
!65 = !{!"Buffers", !63, i64 0, !63, i64 32, !25, i64 64, !25, i64 80, !25, i64 96, !25, i64 112, !25, i64 128, !8, i64 144, !8, i64 148, !7, i64 152, !7, i64 153, !7, i64 154, !7, i64 155, !25, i64 160, !25, i64 176, !25, i64 192, !25, i64 208, !64, i64 224, !21, i64 232, !21, i64 240, !7, i64 248, !7, i64 249, !7, i64 249, !8, i64 252, !8, i64 256, !21, i64 264, !8, i64 272, !7, i64 280}
!66 = !{!"p1 _ZTS15WOLFSSL_SESSION", !11, i64 0}
!67 = !{!"p1 _ZTS13ClientSession", !11, i64 0}
!68 = !{!"WOLFSSL_ALERT", !8, i64 0, !8, i64 4}
!69 = !{!"WOLFSSL_ALERT_HISTORY", !68, i64 0, !68, i64 8}
!70 = !{!"RecordLayerHeader", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3}
!71 = !{!"MsgsReceived", !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 2, !15, i64 2, !15, i64 2}
!72 = !{!"ProtocolVersion", !7, i64 0, !7, i64 1}
!73 = !{!"CipherSpecs", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!74 = !{!"Keys", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 160, !7, i64 192, !7, i64 208, !7, i64 224, !7, i64 232, !7, i64 244, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !7, i64 280, !7, i64 281, !7, i64 282, !7, i64 283}
!75 = !{!"Options", !28, i64 0, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 8, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 9, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 10, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 11, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 12, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 13, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 14, !15, i64 15, !15, i64 15, !15, i64 15, !15, i64 15, !15, i64 15, !15, i64 15, !7, i64 16, !7, i64 17, !7, i64 18, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 22, !7, i64 23, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !15, i64 40, !15, i64 42, !15, i64 44, !15, i64 46, !15, i64 48, !7, i64 50}
!76 = !{!"p1 _ZTS6RsaKey", !11, i64 0}
!77 = !{!"p1 _ZTS7ecc_key", !11, i64 0}
!78 = !{!"p1 _ZTS8Poly1305", !11, i64 0}
!79 = !{!"OneTimeAuth", !78, i64 0, !7, i64 8}
!80 = !{!"WOLFSSL", !53, i64 0, !27, i64 8, !27, i64 16, !54, i64 24, !7, i64 32, !7, i64 80, !55, i64 128, !11, i64 136, !11, i64 144, !56, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !57, i64 216, !11, i64 224, !8, i64 232, !59, i64 240, !11, i64 256, !62, i64 264, !62, i64 304, !65, i64 352, !66, i64 640, !67, i64 648, !69, i64 656, !68, i64 672, !8, i64 680, !8, i64 684, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !15, i64 708, !8, i64 712, !7, i64 716, !70, i64 717, !71, i64 722, !72, i64 726, !72, i64 728, !73, i64 730, !74, i64 748, !75, i64 1032, !76, i64 1088, !7, i64 1096, !7, i64 1097, !15, i64 1098, !7, i64 1100, !7, i64 1172, !15, i64 1174, !15, i64 1176, !7, i64 1178, !8, i64 1308, !8, i64 1312, !77, i64 1320, !7, i64 1328, !7, i64 1329, !77, i64 1336, !77, i64 1344, !15, i64 1352, !7, i64 1354, !8, i64 1356, !7, i64 1360, !8, i64 1364, !79, i64 1368, !29, i64 1384, !15, i64 1392, !8, i64 1396}
!81 = !{!80, !66, i64 640}
!82 = !{!"WOLFSSL_SESSION", !8, i64 0, !8, i64 4, !16, i64 8, !7, i64 12, !7, i64 44, !11, i64 48, !7, i64 56, !8, i64 60, !8, i64 64, !7, i64 68, !7, i64 100, !7, i64 101, !15, i64 150, !72, i64 152, !7, i64 154, !7, i64 155, !15, i64 156, !7, i64 158, !15, i64 178, !7, i64 180}
!83 = !{!82, !7, i64 100}
!84 = !{!82, !7, i64 56}
!85 = !{!"SessionRow", !8, i64 0, !8, i64 4, !7, i64 8}
!86 = !{!85, !8, i64 4}
!87 = !{!85, !8, i64 0}
!88 = !{!82, !8, i64 0}
!89 = !{!82, !8, i64 4}
!90 = !{!82, !11, i64 48}
!91 = !{!82, !15, i64 156}
!92 = !{!82, !8, i64 60}
!93 = !{!82, !8, i64 64}
!94 = !{!82, !15, i64 150}
!95 = !{!82, !7, i64 154}
!96 = !{!80, !7, i64 1053}
!97 = !{!82, !7, i64 155}
!98 = !{!80, !7, i64 1054}
!99 = !{!80, !53, i64 0}
!100 = !{!"ClientRow", !8, i64 0, !8, i64 4, !7, i64 8}
!101 = !{!100, !8, i64 4}
!102 = !{!100, !8, i64 0}
!103 = !{!"ClientSession", !15, i64 0, !15, i64 2, !8, i64 4}
!104 = !{!103, !15, i64 0}
!105 = !{!103, !15, i64 2}
!106 = !{!80, !8, i64 700}
!107 = !{!66, !66, i64 0}
!108 = !{!80, !54, i64 24}
!109 = !{!103, !8, i64 4}
!110 = !{!80, !56, i64 152}
!111 = !{!30, !23, i64 0}
!112 = !{!"WOLFSSL_METHOD", !72, i64 0, !7, i64 2, !7, i64 3}
!113 = !{!112, !7, i64 2}
!114 = !{!80, !7, i64 504}
!115 = !{!80, !7, i64 505}
!116 = !{!80, !7, i64 506}
!117 = !{!80, !21, i64 592}
!118 = !{!30, !21, i64 120}
!119 = !{!30, !21, i64 96}
!120 = !{!30, !11, i64 160}
!121 = !{!30, !8, i64 136}
!122 = !{!30, !7, i64 128}
!123 = !{!30, !8, i64 132}
!124 = !{!30, !15, i64 174}
!125 = !{!80, !15, i64 1072}
!126 = !{!30, !15, i64 176}
!127 = !{!80, !15, i64 1074}
!128 = !{!80, !8, i64 684}
!129 = !{!80, !11, i64 136}
!130 = !{!80, !8, i64 688}
!131 = !{!80, !11, i64 144}
!132 = !{!"CipherSuiteInfo", !14, i64 0, !14, i64 8, !7, i64 16, !7, i64 17, !7, i64 18}
!133 = !{!132, !14, i64 0}
!134 = !{!80, !8, i64 680}
!135 = !{!80, !21, i64 584}
!136 = !{!80, !8, i64 400}
!137 = !{!80, !8, i64 704}
!138 = !{!80, !7, i64 1048}
!139 = !{!80, !7, i64 1067}
!140 = !{!80, !11, i64 200}
!141 = !{!80, !11, i64 208}
!142 = !{!80, !7, i64 1066}
!143 = !{!80, !7, i64 1063}
!144 = !{!80, !8, i64 376}
!145 = !{!80, !8, i64 456}
!146 = !{!80, !14, i64 360}
!147 = !{!80, !8, i64 1364}
!148 = !{!30, !8, i64 336}
!149 = !{!80, !11, i64 176}
!150 = !{!80, !7, i64 1050}
!151 = !{!80, !7, i64 726}
!152 = !{!80, !7, i64 727}
!153 = !{!80, !8, i64 604}
!154 = !{!80, !27, i64 8}
!155 = !{!"llvm.loop.peeled.count", i32 1}
!156 = !{!30, !27, i64 152}
!157 = !{!"", !14, i64 0, !8, i64 8, !8, i64 12}
!158 = !{!157, !14, i64 0}
!159 = !{!157, !8, i64 8}
!160 = !{!157, !8, i64 12}
!161 = !{!14, !14, i64 0}
!162 = !{!112, !7, i64 3}
!163 = !{!30, !28, i64 184}
!164 = !{!80, !29, i64 1384}
!165 = !{!72, !7, i64 0}
end_hunk_1
