Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 157
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wolfSSL_CertManagerLoadCABufferType:bb.a
  %i.ae = icmp eq i32 %3, 1
  br i1 %i.ae, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ag = call i32 @PemToDer(ptr noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef %i.af, ptr noundef null, ptr noundef null) #23
  %.not49 = icmp eq i32 %i.ag, 0
  br i1 %.not49, label %bb.l, label %SetCAType.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !35
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
  %i.a = trunc i32 %1 to i8                       ; 2 uses
  %i.b = and i8 %i.a, 1
  %sh.diff.i = lshr i32 %1, 1
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %i.c = and i8 %tr.sh.diff.i, 8
  %i.d = or disjoint i8 %i.c, %i.b
  %i.e = shl i8 %i.a, 1
  %i.f = and i8 %i.e, 4
  %i.g = or disjoint i8 %i.d, %i.f
  br label %ModeToVerifyOptions.exit

.fold.split.i:                                    ; preds = %bb.b
  br label %ModeToVerifyOptions.exit

ModeToVerifyOptions.exit:                         ; preds = %bb.b, %bb.c, %.fold.split.i
  %.sroa.0.0.i = phi i8 [ 0, %bb.b ], [ %i.g, %bb.c ], [ 2, %.fold.split.i ] ; 4 uses
  %i.h = and i8 %.sroa.0.0.i, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 2 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = zext nneg i8 %i.h to i16
  %i.l = and i16 %i.j, -16
  %i.m = or disjoint i16 %i.l, %i.k
  %i.n = and i8 %.sroa.0.0.i, 1
  %i.o = zext nneg i8 %i.n to i16
  %i.p = or disjoint i16 %i.m, %i.o
  %i.q = and i8 %.sroa.0.0.i, 4
  %i.r = zext nneg i8 %i.q to i16
  %i.s = or disjoint i16 %i.p, %i.r
  %i.t = and i8 %.sroa.0.0.i, 8
  %i.u = zext nneg i8 %i.t to i16
  %i.v = or disjoint i16 %i.s, %i.u
  store i16 %i.v, ptr %i.i, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %i.w, align 8, !tbaa !31
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
end_hunk_0
begin_hunk_1_@AddSessionToCache:bb.a

wolfSSL_DupSession.exit.thread:                   ; preds = %bb.n
  %i.cq = call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  br label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.cr, ptr noundef nonnull align 1 dereferenceable(128) %i.cs, i64 128, i1 false)
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !88
  %.not.i.i = icmp eq i32 %i.ct, 2
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 -1, ptr %i.cu, align 4, !tbaa !89
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not616974, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cv = load i32, ptr %i.ab, align 4, !tbaa !86 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 3
  br i1 %i.cw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = add nsw i32 %i.cv, 1
  store i32 %i.cx, ptr %i.ab, align 4, !tbaa !86
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cy = load i32, ptr %i.z, align 16, !tbaa !87
  %i.cz = add nsw i32 %i.cy, 1
  %i.da = srem i32 %i.cz, 3
  store i32 %i.da, ptr %i.z, align 16, !tbaa !87
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %.not63 = icmp eq ptr %2, %i.db
  br i1 %.not63, label %wolfSSL_DupSession.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.dc, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 100
  store i8 32, ptr %i.dd, align 4, !tbaa !83
  br label %wolfSSL_DupSession.exit

wolfSSL_DupSession.exit:                          ; preds = %bb.u, %bb.v
  %i.de = call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %wolfSSL_DupSession.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 158
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !91
  %i.di = call ptr @AddSessionToClientCache(i32 noundef %5, i32 noundef %i.x, i32 noundef %.176, ptr noundef nonnull %i.df, i16 noundef zeroext %i.dh, ptr noundef %2, i16 zeroext poison) ; 2 uses
  %.not64 = icmp eq ptr %i.di, null
  br i1 %.not64, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.di, ptr %7, align 8, !tbaa !188
  br label %bb.y

bb.y:                                             ; preds = %wolfSSL_DupSession.exit.thread, %wolfSSL_DupSession.exit, %bb.x, %bb.w, %HashObject.exit, %bb.d, %bb.b, %bb.a
  %.053 = phi i32 [ -106, %bb.d ], [ -173, %bb.a ], [ -125, %bb.b ], [ %i.e, %HashObject.exit ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %wolfSSL_DupSession.exit ], [ 1, %wolfSSL_DupSession.exit.thread ]
  ret i32 %.053
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get1_session(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 5 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.b, align 8, !tbaa !88
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ClientSessionToSession(ptr noundef nonnull %i.b) ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 8, !tbaa !88
  %.not.i = icmp eq i32 %i.g, 3
  br i1 %.not.i, label %wolfSSL_SESSION_up_ref.exit, label %bb.f

wolfSSL_SESSION_up_ref.exit:                      ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = tail call i32 @wolfSSL_Atomic_Int_FetchAdd(ptr noundef nonnull %i.h, i32 noundef 1) #23 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %wolfSSL_SESSION_up_ref.exit, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %wolfSSL_SESSION_up_ref.exit ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_SESSION_up_ref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ClientSessionToSession(ptr noundef %0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !88
  %.not = icmp eq i32 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = tail call i32 @wolfSSL_Atomic_Int_FetchAdd(ptr noundef nonnull %i.d, i32 noundef 1) #23 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_SessionIsSetup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = zext nneg i8 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_set_session(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @wolfSSL_SetSession(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_SetSession(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ClientSessionToSession(ptr noundef %1) ; 12 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %i.a, null
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, 1
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !88
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = icmp slt i32 %i.j, 11
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @wc_LockRwLock_Rd(ptr noundef nonnull @session_lock) #23
  %.not66 = icmp eq i32 %i.l, 0
  br i1 %.not66, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.058 = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 7 uses
  %i.n = load i64, ptr %i.m, align 8
  %2 = lshr i64 %i.n, 4
  %3 = trunc i64 %2 to i16
  %i.o = and i16 %3, 3                            ; 2 uses
  %.not67 = icmp eq i16 %i.o, 3
  br i1 %.not67, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !84
  %i.r = zext i8 %i.q to i16
  %.not68 = icmp eq i16 %i.o, %i.r
  br i1 %.not68, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !81  ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %.thread86, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.v = load i32, ptr %i.a, align 8, !tbaa !88
  %.not69 = icmp eq i32 %i.v, 2
  %i.w = tail call ptr @ClientSessionToSession(ptr noundef nonnull %i.a) ; 6 uses
  br i1 %.not69, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %i.w, align 8, !tbaa !88
  %.not.i = icmp eq i32 %i.y, 3
  br i1 %.not.i, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = tail call i32 @wolfSSL_Atomic_Int_FetchAdd(ptr noundef nonnull %i.z, i32 noundef 1) #23 ; 0 uses
  %i.ab = load ptr, ptr %i.s, align 16, !tbaa !81
  tail call void @wolfSSL_FreeSession(ptr poison, ptr noundef %i.ab)
  store ptr %i.a, ptr %i.s, align 16, !tbaa !81
  br label %.thread86

bb.l:                                             ; preds = %bb.h
  %i.ac = tail call ptr @ClientSessionToSession(ptr noundef %i.t) ; 5 uses
  %i.ad = icmp eq ptr %i.w, null
  %i.ae = icmp eq ptr %i.ac, null
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = icmp eq ptr %i.w, %i.ac
  %or.cond14.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.af
  br i1 %or.cond14.i.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.ag, ptr noundef nonnull align 1 dereferenceable(128) %i.ah, i64 128, i1 false)
  %i.ai = load i32, ptr %i.ac, align 8, !tbaa !88
  %.not.i.i = icmp eq i32 %i.ai, 2
  br i1 %.not.i.i, label %.thread86, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 -1, ptr %i.aj, align 4, !tbaa !89
  br label %.thread86

.thread86:                                        ; preds = %bb.m, %bb.n, %bb.k, %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, 1
  %.not72 = icmp eq i8 %i.am, 0
  br i1 %.not72, label %.thread, label %bb.o

bb.o:                                             ; preds = %.thread86
  %i.an = load ptr, ptr %i.s, align 16, !tbaa !81 ; 2 uses
  %.not73 = icmp eq ptr %i.an, %i.a
  br i1 %.not73, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 44 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = or i8 %i.ap, 1
  store i8 %i.aq, ptr %i.ao, align 4
  %i.ar = load ptr, ptr %i.s, align 16, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.as, ptr noundef nonnull align 4 dereferenceable(32) %i.at, i64 32, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.g, %bb.l, %bb.p, %bb.o, %.thread86
  %.184 = phi i1 [ true, %bb.l ], [ false, %bb.p ], [ false, %bb.o ], [ false, %.thread86 ], [ true, %bb.g ], [ true, %bb.j ], [ true, %bb.i ]
  br i1 %.058, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.au = tail call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  br i1 %.184, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = tail call i32 @LowResTimer() #23
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !81 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !93
  %i.bc = add i32 %i.bb, %i.az
  %.not76 = icmp ult i32 %i.av, %i.bc
  br i1 %.not76, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr %i.m, align 16            ; 2 uses
  %i.be = or i64 %i.bd, 2048                      ; 2 uses
  store i64 %i.be, ptr %i.m, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 150
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !94
  %.not77.not = icmp eq i16 %i.bg, 0
  %i.bh = select i1 %.not77.not, i64 0, i64 2199023255552
  %i.bi = and i64 %i.be, -2199023255553
  %i.bj = or disjoint i64 %i.bh, %i.bi            ; 2 uses
  store i64 %i.bj, ptr %i.m, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 152 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !189
  %.not78 = icmp eq i8 %i.bl, 0
  br i1 %.not78, label %.thread96, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = and i64 %i.bd, 131072
  %.not79 = icmp eq i64 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 153
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !190 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1065
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !191 ; 2 uses
  br i1 %.not79, label %bb.v, label %.split

.split:                                           ; preds = %bb.u
  %i.br = icmp ugt i8 %i.bo, %i.bq
  br i1 %i.br, label %bb.y, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp ult i8 %i.bo, %i.bq
  br i1 %i.bs, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.bu = load i16, ptr %i.bk, align 8            ; 2 uses
  store i16 %i.bu, ptr %i.bt, align 2
  %i.bv = tail call i32 @IsAtLeastTLSv1_3(i16 %i.bu) #23
  %.not80 = icmp eq i32 %i.bv, 0
  br i1 %.not80, label %.thread96, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = load i64, ptr %i.m, align 16
  %i.bx = or i64 %i.bw, 65536
  store i64 %i.bx, ptr %i.m, align 16
  br label %.thread96

bb.y:                                             ; preds = %bb.v, %.split
  %i.by = and i64 %i.bj, -2049
  store i64 %i.by, ptr %i.m, align 16
  br label %bb.z

.thread96:                                        ; preds = %bb.x, %bb.w, %bb.t
  %i.bz = load ptr, ptr %i.aw, align 16, !tbaa !81 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 154
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !95
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1053
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !96
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 155
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1054
  store i8 %i.ce, ptr %i.cf, align 2, !tbaa !98
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s, %bb.r, %bb.e, %bb.b, %bb.a, %.thread96
  %.160 = phi i32 [ 0, %bb.y ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.r ], [ 1, %.thread96 ], [ 0, %bb.a ], [ 0, %bb.s ]
  ret i32 %.160
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_SetServerID(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp slt i32 %2, 1
  %or.cond3 = or i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %2, 20
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @wc_ShaHash(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.a) #23
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %.024 = phi ptr [ %1, %bb.b ], [ %i.a, %bb.c ]  ; 2 uses
end_hunk_1
begin_hunk_2_@TlsSessionCacheGetAndLock:bb.a
  %i.y = call i32 @wc_LockRwLock_Rd(ptr noundef nonnull @session_lock) #23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = call i32 @wc_LockRwLock_Wr(ptr noundef nonnull @session_lock) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.z, %bb.d ], [ %i.y, %bb.c ]
  %.not30 = icmp eq i32 %storemerge, 0
  br i1 %.not30, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = icmp ugt i32 %i.ab, 2
  %i.ad = sext i1 %i.ac to i32
  store volatile i32 %i.ad, ptr %i.a, align 4, !tbaa !41
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !41
  %i.ae = xor i32 %.0..0..0..0..0..0..i, -1
  %i.af = and i32 %i.ab, %i.ae
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !41
  %i.ag = and i32 %.0..0..0..0..0..0.2.i, 3
  %i.ah = or i32 %i.ag, %i.af                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.aj = load i32, ptr %i.x, align 16, !tbaa !87 ; 2 uses
  %i.ak = add i32 %i.aj, -4
  %or.cond = icmp ult i32 %i.ak, -3
  %i.al = add nsw i32 %i.aj, -1
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.032 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.bk, %bb.j ] ; 3 uses
  %.02631 = phi i32 [ %i.ah, %.lr.ph ], [ %i.bl, %bb.j ] ; 2 uses
  %i.an = sext i32 %.032 to i64
  %i.ao = getelementptr inbounds [184 x i8], ptr %i.am, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 100
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !83
  %i.ar = icmp eq i8 %i.aq, 32
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.at = load i8, ptr %i.as, align 8, !tbaa !84
  %i.au = icmp eq i8 %i.at, %4
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 68 ; 2 uses
  %i.aw = load i128, ptr %i.av, align 1
  %i.ax = load i128, ptr %0, align 1
  %i.ay = xor i128 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %i.av, i64 16
  %i.ba = getelementptr i8, ptr %0, i64 16
  %i.bb = load i128, ptr %i.az, align 1
  %i.bc = load i128, ptr %i.ba, align 1
  %i.bd = xor i128 %i.bb, %i.bc
  %i.be = or i128 %i.ay, %i.bd
  %i.bf = icmp ne i128 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  store ptr %i.ao, ptr %1, align 8, !tbaa !107
  br label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bi = icmp sgt i32 %.032, 0
  %i.bj = add nsw i32 %.032, -1
  %i.bk = select i1 %i.bi, i32 %i.bj, i32 2
  %i.bl = add nsw i32 %.02631, -1
  %i.bm = icmp sgt i32 %.02631, 1
  br i1 %i.bm, label %bb.g, label %._crit_edge, !llvm.loop !195

._crit_edge:                                      ; preds = %bb.j, %bb.f
  %.pr = load ptr, ptr %1, align 8, !tbaa !107
  %i.bn = icmp eq ptr %.pr, null
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bo = call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.thread, %._crit_edge
  store i32 %i.v, ptr %2, align 4, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %HashObject.exit, %bb.k, %bb.l, %bb.e
  %.027 = phi i32 [ -313, %bb.e ], [ %i.c, %HashObject.exit ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define i32 @TlsSessionCacheGetAndWrLock(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @TlsSessionCacheGetAndLock(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_GetSessionFromCache(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 1040       ; 3 uses
  %.val = load i64, ptr %i.g, align 8             ; 2 uses
  %i.h = and i64 %.val, 4
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %.val, 8192
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 16, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, 1
  %.not46 = icmp eq i8 %i.n, 0
  br i1 %.not46, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = tail call i32 @IsAtLeastTLSv1_3(i16 %i.p) #23
  %.not47 = icmp eq i32 %i.q, 0
  br i1 %.not47, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.f, align 16, !tbaa !81
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108  ; 2 uses
  %.not48 = icmp eq ptr %i.s, null
  %.pre57 = load ptr, ptr %i.f, align 16, !tbaa !81 ; 3 uses
  br i1 %.not48, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.pre57, i64 44
  %i.u = load i8, ptr %i.t, align 4
  %i.v = and i8 %i.u, 1
  %.not49 = icmp eq i8 %i.v, 0
  br i1 %.not49, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 92
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge, %bb.g, %bb.f
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %.pre57, %bb.g ], [ %.pre57, %bb.f ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, 1
  %.not50 = icmp eq i8 %i.aa, 0
  br i1 %.not50, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ac = icmp eq ptr %1, %i.x
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !83
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.037 = phi ptr [ %i.ab, %bb.k ], [ %i.ab, %bb.j ], [ %i.ag, %bb.l ], [ %i.w, %bb.h ] ; 2 uses
  %.0 = phi i8 [ %i.af, %bb.k ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.h ]
  store i32 0, ptr %i.b, align 4, !tbaa !41
  %i.ah = load i64, ptr %i.g, align 8
  %2 = lshr i64 %i.ah, 4
  %3 = trunc i64 %2 to i8
  %i.ai = and i8 %3, 3
  %i.aj = call fastcc i32 @TlsSessionCacheGetAndLock(ptr noundef nonnull %.037, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i8 noundef zeroext 1, i8 noundef zeroext %i.ai)
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  %or.cond = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond, label %.thread, label %CheckSessionMatch.exit

CheckSessionMatch.exit:                           ; preds = %bb.m
  %i.an = load i16, ptr %i.o, align 2
  %i.ao = tail call i32 @IsAtLeastTLSv1_3(i16 %i.an) #23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = tail call i32 @IsAtLeastTLSv1_3(i16 %i.aq) #23
  %.not.i.not = icmp eq i32 %i.ao, %i.ar
  br i1 %.not.i.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %CheckSessionMatch.exit
  %i.as = tail call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  br label %.thread

bb.o:                                             ; preds = %CheckSessionMatch.exit
  %i.at = tail call i32 @LowResTimer() #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  %i.av = load i32, ptr %i.au, align 4, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !93
  %i.ay = add i32 %i.ax, %i.av
  %.not52 = icmp ult i32 %i.at, %i.ay
  br i1 %.not52, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.az = tail call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  %i.ba = load i64, ptr %i.g, align 8
  %4 = lshr i64 %i.ba, 4
  %5 = trunc i64 %4 to i8
  %i.bb = and i8 %5, 3
  %i.bc = call fastcc i32 @TlsSessionCacheGetAndLock(ptr noundef nonnull %.037, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i8 noundef zeroext 0, i8 noundef zeroext %i.bb)
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bf = icmp ne ptr %i.be, null
  %or.cond3 = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @EvictSessionFromCache(ptr noundef nonnull %i.be)
  %i.bg = tail call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %.thread

bb.s:                                             ; preds = %bb.o
  %i.bh = tail call ptr @ClientSessionToSession(ptr noundef nonnull readonly %i.al) ; 3 uses
  %i.bi = tail call ptr @ClientSessionToSession(ptr noundef nonnull %1) ; 5 uses
  %i.bj = icmp eq ptr %i.bh, null
  %i.bk = icmp eq ptr %i.bi, null
  %or.cond.i.i = select i1 %i.bj, i1 true, i1 %i.bk
  %i.bl = icmp eq ptr %i.bh, %i.bi
  %or.cond14.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.bl
  br i1 %or.cond14.i.i, label %wolfSSL_DupSession.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.bm, ptr noundef nonnull align 1 dereferenceable(128) %i.bn, i64 128, i1 false)
  %i.bo = load i32, ptr %i.bi, align 8, !tbaa !88
  %.not.i.i = icmp eq i32 %i.bo, 2
  br i1 %.not.i.i, label %wolfSSL_DupSession.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 -1, ptr %i.bp, align 4, !tbaa !89
  br label %wolfSSL_DupSession.exit

wolfSSL_DupSession.exit:                          ; preds = %bb.s, %bb.t, %bb.u
  %.0.i.i = phi i32 [ 0, %bb.s ], [ 1, %bb.u ], [ 1, %bb.t ]
  %i.bq = tail call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.r, %bb.n, %wolfSSL_DupSession.exit
  %.2 = phi i32 [ %.0.i.i, %wolfSSL_DupSession.exit ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.r ] ; 2 uses
  %i.br = load ptr, ptr %i.f, align 16, !tbaa !81 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  %i.bt = load i8, ptr %i.bs, align 4
  %.not53 = trunc i8 %i.bt to i1
  %i.bu = icmp eq ptr %1, %i.br
  %or.cond54 = and i1 %i.bu, %.not53
  br i1 %or.cond54, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bv, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.bw = load ptr, ptr %i.f, align 16, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 100
  store i8 %.0, ptr %i.bx, align 4, !tbaa !83
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.d, %bb.b, %bb.a
  %.038 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ %.2, %bb.v ], [ %.2, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.038
}

declare i32 @IsAtLeastTLSv1_3(i16) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_DupSession(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ClientSessionToSession(ptr noundef readonly %0) ; 3 uses
  %i.b = tail call ptr @ClientSessionToSession(ptr noundef %1) ; 5 uses
  %i.c = icmp eq ptr %i.a, null
  %i.d = icmp eq ptr %i.b, null
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.d
  %i.e = icmp eq ptr %i.a, %i.b
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.e
  br i1 %or.cond14.i, label %wolfSSL_DupSessionEx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.f, ptr noundef nonnull align 1 dereferenceable(128) %i.g, i64 128, i1 false)
  %i.h = load i32, ptr %i.b, align 8, !tbaa !88
  %.not.i = icmp eq i32 %i.h, 2
  br i1 %.not.i, label %wolfSSL_DupSessionEx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 -1, ptr %i.i, align 4, !tbaa !89
  br label %wolfSSL_DupSessionEx.exit

wolfSSL_DupSessionEx.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_GetSession(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81
  %i.c = tail call i32 @wolfSSL_GetSessionFromCache(ptr noundef %0, ptr noundef %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !81  ; 4 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(48) %i.g, i64 48, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %.012 = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ null, %bb.a ]
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define ptr @ClientSessionToSession(ptr nofree noundef readonly captures(address, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge ptr %0, @ClientCache
  %i.d = icmp ult ptr %0, getelementptr inbounds nuw (i8, ptr @ClientCache, i64 17600)
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @wc_LockMutex(ptr noundef nonnull @clisession_mutex) #23
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = load i16, ptr %0, align 4, !tbaa !104    ; 2 uses
  %i.g = icmp ugt i16 %i.f, 10
  br i1 %i.g, label %.thread62, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !105
  %i.j = icmp ugt i16 %i.i, 2
  br i1 %i.j, label %.thread62, label %bb.f

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.k = tail call i32 @wc_LockRwLock_Rd(ptr noundef nonnull @session_lock) #23
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %.thread62

bb.g:                                             ; preds = %bb.f
  %i.m = zext nneg i16 %i.f to i64
  %i.n = getelementptr inbounds nuw [560 x i8], ptr @SessionCache, i64 %i.m
  %i.o = load i16, ptr %i.h, align 2, !tbaa !105
  fence seq_cst
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = zext i16 %i.o to i64
  %i.r = getelementptr inbounds nuw [184 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 100
  %i.t = load i8, ptr %i.s, align 4, !tbaa !83
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.thread66, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.w = call i32 @wc_ShaHash(ptr noundef nonnull %i.v, i32 noundef 32, ptr noundef nonnull %i.a) #23
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.thread66

bb.j:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.a, align 16
  %i.z = call i32 @llvm.bswap.i32(i32 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !109
  %.not70 = icmp eq i32 %i.ab, %i.z
  %i.ac = select i1 %.not70, ptr %i.r, ptr null
  br label %.thread66

.thread66:                                        ; preds = %bb.i, %bb.j, %bb.g
  %spec.select2660 = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ %i.ac, %bb.j ]
end_hunk_2
begin_hunk_3_@wolfSSL_FreeSession:bb.a
bb.e:                                             ; preds = %._crit_edge.i27
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e, %._crit_edge.i27
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @AddSessionToClientCache(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i16 noundef zeroext %4, ptr noundef %5, i16 zeroext %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = icmp eq i32 %0, 1
  %i.e = icmp ne i32 %1, -1
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = zext i16 %4 to i32
  %i.g = icmp ne i16 %4, 0
  %i.h = icmp ne ptr %3, null                     ; 2 uses
  %or.cond3 = or i1 %i.h, %i.g
  br i1 %or.cond3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i16 %4, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.i = call i32 @wc_ShaHash(ptr noundef %3, i32 noundef %i.f, ptr noundef nonnull %i.b) #23 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %HashObject.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.b, align 16
  %i.l = call i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = urem i32 %i.l, 88
  br label %HashObject.exit

HashObject.exit:                                  ; preds = %bb.d, %bb.e
  %i.n = phi i32 [ %i.m, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = call i32 @wc_ShaHash(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %HashObject.exit38

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %i.a, align 16
  %i.r = call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = urem i32 %i.r, 88
  br label %HashObject.exit38

HashObject.exit38:                                ; preds = %bb.g, %bb.h
  %i.t = phi i32 [ %i.s, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %HashObject.exit38, %HashObject.exit
  %.pr41 = phi i32 [ %i.o, %HashObject.exit38 ], [ %i.i, %HashObject.exit ]
  %.032.ph = phi i32 [ %i.t, %HashObject.exit38 ], [ %i.n, %HashObject.exit ]
  %i.u = icmp eq i32 %.pr41, 0
  br i1 %i.u, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @wc_LockMutex(ptr noundef nonnull @clisession_mutex) #23
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %.032.ph to i64
  %i.y = getelementptr inbounds nuw [200 x i8], ptr @ClientCache, i64 %i.x ; 5 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !102  ; 2 uses
  %i.aa = icmp ult i32 %i.z, 24
  br i1 %i.aa, label %bb.l, label %.thread42.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ab = trunc i32 %1 to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad ; 4 uses
  store i16 %i.ab, ptr %i.ae, align 8, !tbaa !104
  %i.af = trunc i32 %2 to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !105
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = call fastcc i32 @HashObject(ptr noundef nonnull %5, i32 noundef 32, ptr noundef %i.c)
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !41
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread43, label %.thread42

.thread43:                                        ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !109
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.thread43
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !101 ; 2 uses
  %i.an = icmp slt i32 %i.am, 24
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !101
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !102
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = srem i32 %i.aq, 24
  br label %.thread42.sink.split

.thread42.sink.split:                             ; preds = %bb.k, %bb.p
  %.sink = phi i32 [ %i.ar, %bb.p ], [ 0, %bb.k ]
  %.0.ph = phi ptr [ %i.ae, %bb.p ], [ null, %bb.k ]
  store i32 %.sink, ptr %i.y, align 8, !tbaa !102
  br label %.thread42

.thread42:                                        ; preds = %.thread42.sink.split, %bb.m
  %.0 = phi ptr [ null, %bb.m ], [ %.0.ph, %.thread42.sink.split ]
  %i.as = call i32 @wc_UnLockMutex(ptr noundef nonnull @clisession_mutex) #23 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.b, %bb.a, %.thread42, %bb.i, %bb.j
  %.1 = phi ptr [ %.0, %.thread42 ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define void @AddSession(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 1040       ; 2 uses
  %.val = load i64, ptr %i.c, align 16            ; 5 uses
  %i.d = and i64 %.val, 4
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 1
  %.not28 = icmp eq i8 %i.g, 0
  br i1 %.not28, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.k = load i8, ptr %i.j, align 4, !tbaa !83    ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %.val, 48
  %i.n = icmp eq i64 %i.m, 16
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.r = tail call i32 @wc_RNG_GenerateBlock(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef 32) #23
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 16, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = or i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 4
  %i.w = load ptr, ptr %i.a, align 16, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.pre = load i64, ptr %i.c, align 16
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.d, %bb.c
  %i.y = phi i64 [ %.pre, %bb.f ], [ %.val, %bb.d ], [ %.val, %bb.c ], [ %.val, %.thread ]
  %.226 = phi ptr [ %i.x, %bb.f ], [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %i.h, %.thread ]
  %.2 = phi i8 [ 32, %bb.f ], [ 0, %bb.d ], [ %i.k, %bb.c ], [ 32, %.thread ]
  %1 = lshr i64 %i.y, 4
  %2 = trunc i64 %1 to i32
  %i.z = and i32 %2, 3                            ; 2 uses
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr null
  %i.ad = tail call i32 @AddSessionToCache(ptr poison, ptr noundef nonnull %i.b, ptr noundef nonnull %.226, i8 noundef zeroext %.2, ptr poison, i32 noundef %i.z, i16 noundef zeroext 0, ptr noundef %i.ac) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.a, %bb.g
  ret void
}

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_CTX_add_session(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ClientSessionToSession(ptr noundef %1) ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.i = load i8, ptr %i.h, align 4, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.012 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %.0 = phi i8 [ 32, %bb.c ], [ %i.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.k = load i8, ptr %i.j, align 8, !tbaa !84
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @AddSessionToCache(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %.012, i8 noundef zeroext %.0, ptr poison, i32 noundef %i.l, i16 noundef zeroext 0, ptr noundef null)
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.013 = phi i32 [ %i.o, %bb.e ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_SSL_CTX_remove_session(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call ptr @ClientSessionToSession(ptr noundef %1) ; 3 uses
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  %spec.select.v = select i1 %.not, i64 68, i64 12
  %spec.select = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.v
  %i.i = load ptr, ptr %0, align 8, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !113
  %i.l = call fastcc i32 @TlsSessionCacheGetAndLock(ptr noundef nonnull %spec.select, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i8 noundef zeroext 0, i8 noundef zeroext %i.k)
  %i.m = icmp eq i32 %i.l, 0
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = icmp ne ptr %i.n, null
  %or.cond3 = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @EvictSessionFromCache(ptr noundef nonnull %i.n)
  %i.p = tail call i32 @wc_UnLockRwLock(ptr noundef nonnull @session_lock) #23 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.013 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.014 = phi i32 [ %.013, %bb.d ], [ 0, %bb.a ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define void @SetupSession(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 4 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = tail call i32 @IsAtLeastTLSv1_3(i16 %i.d) #23
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %.not32 = icmp eq ptr %i.g, null
  br i1 %.not32, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 1
  %.not33 = icmp eq i8 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  br i1 %.not33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.k, ptr noundef nonnull align 4 dereferenceable(32) %i.l, i64 32, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 124
  %i.o = load i8, ptr %i.n, align 4, !tbaa !198
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.k, ptr noundef nonnull align 4 dereferenceable(32) %i.p, i64 32, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink38 = phi i8 [ %i.o, %bb.d ], [ 32, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i8 %.sink38, ptr %i.q, align 4, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.s = load i64, ptr %i.r, align 16
  %1 = lshr i64 %i.s, 4
  %2 = trunc i64 %1 to i8
  %i.t = and i8 %2, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 %i.t, ptr %i.u, align 8, !tbaa !84
  %i.v = load i16, ptr %i.c, align 2
  %i.w = tail call i32 @IsAtLeastTLSv1_3(i16 %i.v) #23
  %.not34 = icmp eq i32 %i.w, 0
  br i1 %.not34, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108  ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.z, ptr noundef nonnull align 1 dereferenceable(48) %i.aa, i64 48, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ab = load i16, ptr %i.c, align 2
  %i.ac = tail call i32 @IsAtLeastTLSv1_3(i16 %i.ab) #23
  %.not36 = icmp eq i32 %i.ac, 0
  br i1 %.not36, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.r, align 16
  %i.ae = lshr i64 %i.ad, 41
  %i.af = trunc i64 %i.ae to i16
  %i.ag = and i16 %i.af, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi i16 [ %i.ag, %bb.j ], [ 1, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 150
  store i16 %.sink, ptr %i.ah, align 2, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !93
  %i.al = tail call i32 @LowResTimer() #23
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.al, ptr %i.am, align 4, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ao = load i16, ptr %i.c, align 2
  store i16 %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 154
  store i8 %i.aq, ptr %i.ar, align 2, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.at = load i8, ptr %i.as, align 2, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 155
  store i8 %i.at, ptr %i.au, align 1, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 180 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = or i8 %i.aw, 1
  store i8 %i.ax, ptr %i.av, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_NewSession(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 184) #23 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.b, i32 noundef 1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !89
  store i32 3, ptr %i.a, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.d, align 8, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_SESSION_new_ex(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 184) #23 ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %wolfSSL_NewSession.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.b, i32 noundef 1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !89
  store i32 3, ptr %i.a, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.d, align 8, !tbaa !90
  br label %wolfSSL_NewSession.exit

wolfSSL_NewSession.exit:                          ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_SESSION_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 184) #23 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %wolfSSL_SESSION_new_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i8 0, i64 184, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.b, i32 noundef 1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !89
  store i32 3, ptr %i.a, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.d, align 8, !tbaa !90
  br label %wolfSSL_SESSION_new_ex.exit

wolfSSL_SESSION_new_ex.exit:                      ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_SESSION_dup(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ClientSessionToSession(ptr noundef %0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %wolfSSL_NewSession.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.e = tail call ptr @wolfSSL_Malloc(i64 noundef 184) #23 ; 10 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %wolfSSL_NewSession.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.e, i8 0, i64 184, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.f, i32 noundef 1) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 -1, ptr %i.g, align 4, !tbaa !89
  store i32 3, ptr %i.e, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.d, ptr %i.h, align 8, !tbaa !90
  %i.i = tail call ptr @ClientSessionToSession(ptr noundef nonnull readonly %i.a) ; 3 uses
  %i.j = tail call ptr @ClientSessionToSession(ptr noundef nonnull %i.e) ; 5 uses
  %i.k = icmp eq ptr %i.i, null
  %i.l = icmp eq ptr %i.j, null
  %or.cond.i.i = select i1 %i.k, i1 true, i1 %i.l
  %i.m = icmp eq ptr %i.i, %i.j
  %or.cond14.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.m
  br i1 %or.cond14.i.i, label %wolfSSL_DupSession.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.n, ptr noundef nonnull align 1 dereferenceable(128) %i.o, i64 128, i1 false)
  %i.p = load i32, ptr %i.j, align 8, !tbaa !88
  %.not.i.i = icmp eq i32 %i.p, 2
  br i1 %.not.i.i, label %wolfSSL_NewSession.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 -1, ptr %i.q, align 4, !tbaa !89
  br label %wolfSSL_NewSession.exit.thread

wolfSSL_DupSession.exit:                          ; preds = %bb.c
  tail call void @wolfSSL_FreeSession(ptr poison, ptr noundef nonnull %i.e)
  br label %wolfSSL_NewSession.exit.thread

wolfSSL_NewSession.exit.thread:                   ; preds = %bb.d, %bb.e, %bb.b, %wolfSSL_DupSession.exit, %bb.a
  %.09 = phi ptr [ null, %bb.a ], [ null, %wolfSSL_DupSession.exit ], [ null, %bb.b ], [ %i.e, %bb.e ], [ %i.e, %bb.d ]
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_SESSION_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ClientSessionToSession(ptr noundef %0)
  tail call void @wolfSSL_FreeSession(ptr poison, ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_SESSION_CIPHER_get_name(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ClientSessionToSession(ptr noundef %0) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 154
  %i.d = load i8, ptr %i.c, align 2, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 155
  %i.f = load i8, ptr %i.e, align 1, !tbaa !97
  %i.g = tail call ptr @GetCipherNameIana(i8 noundef zeroext %i.d, i8 noundef zeroext %i.f) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @GetCipherNameIana(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -344, 1) i32 @wolfSSL_CTX_mutual_auth(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !113
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i32 %1 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = shl i8 %i.e, 3
  %i.i = and i8 %i.h, 8
  %i.j = and i8 %i.g, -9
  %i.k = or disjoint i8 %i.j, %i.i
  store i8 %i.k, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -173, %bb.a ], [ -344, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -344, 1) i32 @wolfSSL_mutual_auth(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 48
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 48
  %i.h = and i64 %i.c, -281474976710705
  %i.i = or disjoint i64 %i.h, %i.g
  store i64 %i.i, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -173, %bb.a ], [ -344, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @wolfSSL_CTX_GetCertManager(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @wolfSSL_CTX_set_verify_depth(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ugt i32 %1, 9
  %or.cond3 = or i1 %i.a, %i.b
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %i.c, ptr %i.d, align 8, !tbaa !199
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 -173, 10) i64 @wolfSSL_CTX_get_verify_depth(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %. = select i1 %i.a, i64 -173, i64 9
  ret i64 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 -173, 10) i64 @wolfSSL_get_verify_depth(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %. = select i1 %i.a, i64 -173, i64 9
  ret i64 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @wolfSSL_set_verify(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.c [
    i32 512, label %ModeToVerifyOptions.exit
    i32 0, label %.fold.split.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = trunc i32 %1 to i8                       ; 2 uses
  %i.b = and i8 %i.a, 1
  %sh.diff.i = lshr i32 %1, 1
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %i.c = and i8 %tr.sh.diff.i, 8
  %i.d = or disjoint i8 %i.c, %i.b
  %i.e = shl i8 %i.a, 1
  %i.f = and i8 %i.e, 4
  %i.g = or disjoint i8 %i.d, %i.f
  br label %ModeToVerifyOptions.exit

.fold.split.i:                                    ; preds = %bb.b
  br label %ModeToVerifyOptions.exit

ModeToVerifyOptions.exit:                         ; preds = %bb.b, %bb.c, %.fold.split.i
  %.sroa.0.0.i = phi i8 [ 0, %bb.b ], [ %i.g, %bb.c ], [ 2, %.fold.split.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = shl i8 %.sroa.0.0.i, 6                   ; 2 uses
  %i.k = and i64 %i.i, -961
  %i.l = and i8 %i.j, 64
  %i.m = zext nneg i8 %i.l to i64
  %i.n = and i8 %i.j, -128
  %.masked = zext i8 %i.n to i64
  %.mask = and i8 %.sroa.0.0.i, 12
  %.zext = zext nneg i8 %.mask to i64
  %i.o = shl nuw nsw i64 %.zext, 6
  %i.p = or disjoint i64 %i.k, %.masked
  %i.q = or disjoint i64 %i.p, %i.m
  %i.r = or disjoint i64 %i.q, %i.o
  store i64 %i.r, ptr %i.h, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %2, ptr %i.s, align 8, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %ModeToVerifyOptions.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @wolfSSL_set_verify_result(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @wolfSSL_CTX_SetCertCbCtx(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %1, ptr %i.a, align 8, !tbaa !201
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @wolfSSL_SetCertCbCtx(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.a, align 16, !tbaa !202
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @wolfSSL_CTX_SetCACb(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %1, ptr %i.c, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_UnloadCertsKeys(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !114
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.e = load i8, ptr %i.d, align 16, !tbaa !203
  %.not18 = icmp eq i8 %i.e, 0
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @FreeDer(ptr noundef nonnull %i.f) #23
  store i8 0, ptr %i.b, align 8, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 505 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !115
  %.not19 = icmp eq i8 %i.h, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @FreeDer(ptr noundef nonnull %i.i) #23
  store i8 0, ptr %i.g, align 1, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 506 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !116
  %.not20 = icmp eq i8 %i.k, 0
  br i1 %.not20, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !117 ; 3 uses
  %.not21 = icmp eq ptr %i.m, null
  br i1 %.not21, label %ForceZero.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 4 uses
  %.not22 = icmp eq ptr %i.n, null
  br i1 %.not22, label %ForceZero.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  fence seq_cst
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = and i64 %i.r, 7
  %.not19.i = icmp eq i64 %i.s, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.j
  %.013.lcssa.i = phi i64 [ %i.q, %bb.j ], [ %i.z, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.n, %bb.j ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.u = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.u, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.v = and i64 %.013.lcssa.i, -8                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.v, i1 false), !tbaa !42
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.v
  %i.w = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, 0
  br i1 %i.x, label %ForceZero.exit, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i31 = phi i64 [ %i.z, %.lr.ph.i ], [ %i.q, %.lr.ph.i.preheader ]
  %.01221.i30 = phi ptr [ %i.y, %.lr.ph.i ], [ %i.n, %.lr.ph.i.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01221.i30, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i30, align 1, !tbaa !52
  %i.z = add nsw i64 %.01320.i31, -1              ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = and i64 %i.aa, 7
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.w, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

end_hunk_3
begin_hunk_4_@wolfSSL_inject:bb.a
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.e = load i32, ptr %i.d, align 16, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !224  ; 2 uses
  %i.h = sub i32 %i.e, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = load i32, ptr %i.i, align 8, !tbaa !144
  %i.k = sub i32 %i.j, %i.h
  %i.l = icmp sgt i32 %2, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.n = load i32, ptr %i.m, align 8, !tbaa !145
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @GrowInputBuffer(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.h) #23 ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 4, !tbaa !224
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.q = phi i32 [ %.pre, %._crit_edge ], [ %i.g, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %1, i64 %i.v, i1 false)
  %i.w = load i32, ptr %i.d, align 16, !tbaa !223
  %i.x = add i32 %i.w, %2
  store i32 %i.x, ptr %i.d, align 16, !tbaa !223
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.d, %bb.e
  %.1 = phi i32 [ %i.o, %bb.d ], [ 1, %bb.e ], [ -173, %bb.a ], [ -441, %bb.c ]
  ret i32 %.1
}

declare i32 @GrowInputBuffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_write_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wolfSSL_write_internal.exit.thread, label %wolfSSL_write_internal.exit

wolfSSL_write_internal.exit:                      ; preds = %bb.c
  %i.c = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.c, align 4, !tbaa !41
  %i.d = tail call i32 @SendData(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) #23 ; 3 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 -1) ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %wolfSSL_write_internal.exit.thread

bb.d:                                             ; preds = %wolfSSL_write_internal.exit
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = zext nneg i32 %..i to i64
  store i64 %i.f, ptr %3, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 17179869184
  %.not16 = icmp eq i64 %i.j, 0
  br i1 %.not16, label %bb.h, label %wolfSSL_write_internal.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = zext nneg i32 %..i to i64
  %i.l = icmp ugt i64 %2, %i.k
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 17179869184
  %.not17 = icmp eq i64 %i.o, 0
  br i1 %.not17, label %wolfSSL_write_internal.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %wolfSSL_write_internal.exit.thread

wolfSSL_write_internal.exit.thread:               ; preds = %bb.c, %wolfSSL_write_internal.exit, %bb.i, %bb.g, %bb.j
  %.0 = phi i32 [ 0, %bb.i ], [ 1, %bb.j ], [ 0, %bb.g ], [ 0, %wolfSSL_write_internal.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, -2147483648) i32 @wolfSSL_peek(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %wolfSSL_read_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %wolfSSL_read_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %i.e = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.e, align 4, !tbaa !41
  %i.f = tail call i32 @ReceiveData(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.d, i32 noundef 1) #23
  %..i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 -1)
  br label %wolfSSL_read_internal.exit

wolfSSL_read_internal.exit:                       ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -173, %bb.b ], [ %..i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, -2147483648) i32 @wolfSSL_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %wolfSSL_read_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %wolfSSL_read_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %i.e = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.e, align 4, !tbaa !41
  %i.f = tail call i32 @ReceiveData(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.d, i32 noundef 0) #23
  %..i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 -1)
  br label %wolfSSL_read_internal.exit

wolfSSL_read_internal.exit:                       ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ -173, %bb.b ], [ %..i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_read_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wolfSSL_read_internal.exit.thread, label %wolfSSL_read_internal.exit

wolfSSL_read_internal.exit:                       ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.c, align 4, !tbaa !41
  %i.d = tail call i32 @ReceiveData(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef 0) #23 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  %i.f = icmp ne ptr %3, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %wolfSSL_read_internal.exit.thread

bb.b:                                             ; preds = %wolfSSL_read_internal.exit
  %i.g = zext nneg i32 %i.d to i64
  store i64 %i.g, ptr %3, align 8, !tbaa !42
  br label %wolfSSL_read_internal.exit.thread

wolfSSL_read_internal.exit.thread:                ; preds = %bb.a, %bb.b, %wolfSSL_read_internal.exit
  %i.h = phi i1 [ %i.e, %wolfSSL_read_internal.exit ], [ true, %bb.b ], [ false, %bb.a ]
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_dtls(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %1 = lshr i64 %i.b, 17
  %2 = trunc i64 %1 to i32
  %i.c = and i32 %2, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_dtls_set_peer(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  ret i32 -464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_dtls_get_peer(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  ret i32 -464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_dtls_get0_peer(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  ret i32 -464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_dtls_get_using_nonblock(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @wolfSSL_dtls_set_using_nonblock(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 2) i32 @wolfSSL_SetDevId(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1364
  store i32 %1, ptr %i.b, align 4, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CTX_SetDevId(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %1, ptr %i.b, align 8, !tbaa !148
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_CTX_GetDevId(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1364
  %i.b = load i32, ptr %i.a, align 4, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.b ], [ -2, %bb.a ]    ; 2 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp eq i32 %.0, -2
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load i32, ptr %i.e, align 8, !tbaa !148
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.f, %bb.d ], [ %.0, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @wolfSSL_CTX_GetHeap(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !149
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, -2147483648) i32 @wolfSSL_send(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %wolfSSL_write.exit

wolfSSL_write.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !225
  store i32 %3, ptr %i.d, align 8, !tbaa !225
  %i.f = zext nneg i32 %2 to i64
  %i.g = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.h = tail call i32 @SendData(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.f) #23
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 -1)
  store i32 %i.e, ptr %i.d, align 8, !tbaa !225
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %wolfSSL_write.exit
  %.0 = phi i32 [ %..i.i, %wolfSSL_write.exit ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, -2147483648) i32 @wolfSSL_recv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %wolfSSL_read.exit

wolfSSL_read.exit:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 692 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !226
  store i32 %3, ptr %i.d, align 4, !tbaa !226
  %i.f = zext nneg i32 %2 to i64
  %i.g = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.h = tail call i32 @ReceiveData(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.f, i32 noundef 0) #23
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 -1)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !226
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %wolfSSL_read.exit
  %.0 = phi i32 [ %..i.i, %wolfSSL_read.exit ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 3) i32 @wolfSSL_SendUserCanceled(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 90) #23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 %i.a, ptr %i.b, align 8, !tbaa !134
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @wolfSSL_shutdown(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @SendAlert(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2
end_hunk_4
begin_hunk_5_@wolfSSL_get_alert_history:bb.a
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !227
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_want_read(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134
  %i.c = icmp eq i32 %i.b, -323
  %. = zext i1 %i.c to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_want_write(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134
  %i.c = icmp eq i32 %i.b, -327
  %. = zext i1 %i.c to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @wolfSSL_ERR_error_string(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = trunc i64 %0 to i32
  %wolfSSL_ERR_error_string.tmp. = select i1 %.not, ptr @wolfSSL_ERR_error_string.tmp, ptr %1 ; 2 uses
  tail call void @SetErrorString(i32 noundef %i.a, ptr noundef nonnull %wolfSSL_ERR_error_string.tmp.) #23
  ret ptr %wolfSSL_ERR_error_string.tmp.
}

declare void @SetErrorString(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @wolfSSL_ERR_error_string_n(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = icmp ugt i64 %2, 79
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  %i.c = trunc i64 %0 to i32
  %wolfSSL_ERR_error_string.tmp..i = select i1 %.not.i, ptr @wolfSSL_ERR_error_string.tmp, ptr %1
  tail call void @SetErrorString(i32 noundef %i.c, ptr noundef nonnull %wolfSSL_ERR_error_string.tmp..i) #23
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = trunc i64 %0 to i32
  call void @SetErrorString(i32 noundef %i.d, ptr noundef nonnull %i.a) #23
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @wolfSSL_KeepArrays(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = or i64 %i.b, 274877906944
  store i64 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_FreeArrays(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1063
  %i.b = load i8, ptr %i.a, align 1, !tbaa !143
  %i.c = icmp eq i8 %i.b, 16
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -274877906945
  store i64 %i.f, ptr %i.d, align 8
  tail call void @FreeArrays(ptr noundef nonnull %0, i32 noundef 1) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @FreeArrays(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wolfSSL_KeepHandshakeResources(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 70368744177664
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 1) i32 @wolfSSL_FreeHandshakeResources(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @FreeHandshakeResources(ptr noundef nonnull %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare void @FreeHandshakeResources(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wolfSSL_CTX_UseClientSuites(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = or i8 %i.c, 2
  store i8 %i.d, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 1) i32 @wolfSSL_UseClientSuites(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 140737488355328
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @wolfSSL_GetMacSecret(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = load i64, ptr %i.b, align 8
  %2 = lshr i64 %i.c, 4
  %3 = trunc i64 %2 to i32
  %i.d = and i32 %3, 3
  %i.e = icmp eq i32 %1, 0
  %or.cond11.v = zext i1 %i.e to i32
  %or.cond11 = icmp eq i32 %i.d, %or.cond11.v
  br i1 %or.cond11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 748
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 812
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -173, 4) i32 @wolfSSL_GetSide(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %1 = lshr i64 %i.b, 4
  %2 = trunc i64 %1 to i32
  %i.c = and i32 %2, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_ERR_print_errors_fp(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @SetErrorString(i32 noundef %1, ptr noundef nonnull %i.a) #23
  %fputs = call i32 @fputs(ptr nonnull %i.a, ptr %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @wolfSSL_pending(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.c = load i32, ptr %i.b, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_has_pending(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.c = load i32, ptr %i.b, align 8, !tbaa !145
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CTX_set_group_messages(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 171 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = or i8 %i.c, 4
  store i8 %i.d, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CTX_clear_group_messages(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 171 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, -5
  store i8 %i.d, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_connect_cert(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 68719476736
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call i32 @wolfSSL_connect(ptr noundef nonnull %0)
  %i.f = load i64, ptr %i.b, align 8
  %i.g = and i64 %i.f, -68719476737
  store i64 %i.g, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_set_group_messages(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 137438953472
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_clear_group_messages(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -137438953473
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CTX_SetMinVersion(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SetMinVersionHelper.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 172
  switch i32 %1, label %SetMinVersionHelper.exit [
    i32 3, label %bb.d
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi i8 [ 4, %bb.c ], [ 3, %bb.b ]
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !52
  br label %SetMinVersionHelper.exit

SetMinVersionHelper.exit:                         ; preds = %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ 1, %bb.d ], [ -173, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -173, 2) i32 @wolfSSL_SetMinVersion(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SetMinVersionHelper.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1065
  switch i32 %1, label %SetMinVersionHelper.exit [
    i32 3, label %bb.d
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi i8 [ 4, %bb.c ], [ 3, %bb.b ]
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !52
  br label %SetMinVersionHelper.exit

SetMinVersionHelper.exit:                         ; preds = %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ 1, %bb.d ], [ -173, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -326, 5) i32 @wolfSSL_GetVersion(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.c = load i8, ptr %i.b, align 2, !tbaa !151
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.f = load i8, ptr %i.e, align 1, !tbaa !152   ; 2 uses
  %i.g = icmp ult i8 %i.f, 5
  %switch.idx.cast = zext i8 %i.f to i32
  %spec.select = select i1 %i.g, i32 %switch.idx.cast, i32 -326
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -326, %bb.b ], [ -173, %bb.a ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @wolfSSL_SetVersion(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.g [
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.c = tail call i16 @MakeTLSv1_2() #23
  store i16 %i.c, ptr %i.b, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.e = tail call i16 @MakeTLSv1_3() #23
  store i16 %i.e, ptr %i.d, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, -1025
  store i64 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.j = load i32, ptr %i.i, align 4, !tbaa !153
  %i.k = tail call i32 @AllocateSuites(ptr noundef nonnull %0) #23
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.o = load i64, ptr %i.f, align 8              ; 6 uses
  %i.p = lshr i64 %i.o, 25
  %i.q = trunc i64 %i.p to i16
  %i.r = and i16 %i.q, 1
  %i.s = lshr i64 %i.o, 26
  %i.t = trunc i64 %i.s to i16
  %i.u = and i16 %i.t, 1
  %i.v = lshr i64 %i.o, 24
  %i.w = trunc i64 %i.v to i16
  %i.x = and i16 %i.w, 1
  %i.y = lshr i64 %i.o, 27
  %i.z = trunc i64 %i.y to i16
  %i.aa = and i16 %i.z, 1
  %i.ab = lshr i64 %i.o, 43
  %i.ac = trunc i64 %i.ab to i16
  %i.ad = and i16 %i.ac, 1
  %2 = lshr i64 %i.o, 4
  %3 = trunc i64 %2 to i32
  %i.ae = and i32 %3, 3
  %i.af = load i16, ptr %i.n, align 2
  tail call void @InitSuites(ptr noundef %i.m, i16 %i.af, i32 noundef %i.j, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.r, i16 noundef zeroext %i.u, i16 noundef zeroext %i.x, i16 noundef zeroext 1, i16 noundef zeroext %i.aa, i16 noundef zeroext %i.ad, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.ae) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ -173, %bb.a ], [ -173, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i16 @MakeTLSv1_2() local_unnamed_addr #2

declare i16 @MakeTLSv1_3() local_unnamed_addr #2

declare i32 @AllocateSuites(ptr noundef) local_unnamed_addr #2

declare void @InitSuites(ptr noundef, i16, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @wolfCrypt_Init() local_unnamed_addr #2

declare i32 @wc_InitRwLock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -241, 2) i32 @wolfSSL_Cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wc_LockMutex(ptr noundef nonnull @inits_count_mutex) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %i.e = add nsw i32 %i.d, -1
  store volatile i32 %i.e, ptr @initRefCount, align 4, !tbaa !41
  %i.f = load volatile i32, ptr @initRefCount, align 4, !tbaa !41
  %.not23 = icmp eq i32 %i.f, 0
  %i.g = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @inits_count_mutex) #23 ; 0 uses
  br i1 %.not23, label %bb.d, label %bb.f

.critedge:                                        ; preds = %bb.b
  %i.h = tail call i32 @wc_UnLockMutex(ptr noundef nonnull @inits_count_mutex) #23 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %.b = load i1, ptr @session_lock_valid, align 4
  br i1 %.b, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @wc_FreeRwLock(ptr noundef nonnull @session_lock) #23
  %.not18 = icmp eq i32 %i.i, 0                   ; 2 uses
  %spec.select20 = select i1 %.not18, i32 -241, i32 -106
  %spec.select21 = select i1 %.not18, i32 1, i32 -106
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  %spec.store.select1 = phi i32 [ -241, %bb.d ], [ %spec.select20, %bb.e ]
  %.015 = phi i32 [ 1, %bb.d ], [ %spec.select21, %bb.e ]
  store i1 false, ptr @session_lock_valid, align 4
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 8))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 192))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 376))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 568))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 752))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 936))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 1128))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 1312))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 1496))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 1688))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 1872))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 2056))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 2248))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 2432))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 2616))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 2808))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 2992))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 3176))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 3368))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 3552))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 3736))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 3928))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 4112))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 4296))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 4488))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 4672))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 4856))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 5048))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 5232))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 5416))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 5608))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 5792))
  tail call void @EvictSessionFromCache(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @SessionCache, i64 5976))
  %i.j = tail call i32 @wolfCrypt_Cleanup() #23
  %.not19 = icmp eq i32 %i.j, 0
  %spec.select22 = select i1 %.not19, i32 %.015, i32 %spec.store.select1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.critedge, %bb.a, %.preheader
  %.016 = phi i32 [ -106, %bb.a ], [ %spec.select22, %.preheader ], [ 1, %.critedge ], [ 1, %bb.c ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define i32 @ProcessBuffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7, i32 noundef %8, ptr nofree readnone captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %10 = alloca [1 x %struct.DecodedCert], align 16 ; 16 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca [1024 x i8], align 16             ; 4 uses
  %i.g = alloca ptr, align 8                      ; 32 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %11 = alloca [1 x %struct.ecc_key], align 16    ; 9 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 9 uses
  %12 = alloca [1 x %struct.EncryptedInfo], align 8 ; 18 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store ptr null, ptr %i.m, align 8, !tbaa !22
  %.not = icmp eq ptr %0, null                    ; 11 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not84 = icmp eq ptr %5, null
  br i1 %.not84, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !149
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = phi ptr [ %i.p, %bb.b ], [ %i.r, %bb.d ], [ null, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i32 0, ptr %i.n, align 4, !tbaa !41
  %i.t = add i32 %3, -1
  %or.cond = icmp ult i32 %i.t, 2
  %i.u = icmp eq ptr %5, null                     ; 14 uses
  %i.v = and i1 %.not, %i.u                       ; 2 uses
  %spec.select = select i1 %i.v, i32 -173, i32 0
  %spec.store.select18 = select i1 %or.cond, i32 %spec.select, i32 -462 ; 2 uses
  %i.w = icmp eq i32 %spec.store.select18, 0
  %i.x = icmp eq i32 %4, 6                        ; 6 uses
  %i.y = and i1 %i.x, %i.w
  %or.cond9 = and i1 %.not, %i.y
  %spec.store.select20 = select i1 %or.cond9, i32 -173, i32 %spec.store.select18 ; 2 uses
  %i.z = icmp eq i32 %spec.store.select20, 0
  %i.aa = icmp eq i32 %4, 48
  %or.cond11 = and i1 %i.aa, %i.z
  %spec.store.select19 = select i1 %or.cond11, i32 -173, i32 %spec.store.select20 ; 2 uses
  %i.ab = icmp eq i32 %spec.store.select19, 0
  %i.ac = icmp slt i64 %2, 0
  %or.cond13 = and i1 %i.ac, %i.ab
  %spec.store.select21 = select i1 %or.cond13, i32 -173, i32 %spec.store.select19 ; 2 uses
  %i.ad = icmp eq i32 %spec.store.select21, 0
  br i1 %i.ad, label %bb.f, label %.thread133

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %12, align 8, !tbaa !231
  %i.ae = icmp eq i32 %3, 1                       ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = and i64 %2, 4294967295
  %i.ag = call i32 @PemToDer(ptr noundef %1, i64 noundef %i.af, i32 noundef %4, ptr noundef nonnull %i.m, ptr noundef %i.s, ptr noundef nonnull %12, ptr noundef nonnull %i.n) #23 ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %DataToDerBuffer.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @FreeDer(ptr noundef nonnull %i.m) #23
  br label %DataToDerBuffer.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = trunc i64 %2 to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i32 0, ptr %i.k, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i32 0, ptr %i.l, align 4, !tbaa !41
  %i.ai = call i32 @GetSequence_ex(ptr noundef %1, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k, i32 noundef %i.ah, i32 noundef 0) #23
  %.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !41
  %i.aj = load i32, ptr %i.l, align 4
  %i.ak = icmp slt i32 %i.ai, 0
  %i.al = select i1 %i.ak, i32 0, i32 %i.aj
  %i.am = add nsw i32 %i.al, %.pre.i.i            ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
end_hunk_5
begin_hunk_6_@ProcessBuffer:bb.a
bb.ci:                                            ; preds = %ProcessBufferCertSetHave.exit.thread.thread._crit_edge.i.i, %.thread50.i.i
  %i.lx = phi i32 [ %i.li, %.thread50.i.i ], [ %.pre56.i.i, %ProcessBufferCertSetHave.exit.thread.thread._crit_edge.i.i ]
  %.053.i.i = phi i32 [ %.0.ph.i.i, %.thread50.i.i ], [ 1, %ProcessBufferCertSetHave.exit.thread.thread._crit_edge.i.i ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  switch i32 %i.lx, label %bb.cu [
    i32 2025223208, label %bb.cj
    i32 2025223203, label %bb.cj
    i32 826901527, label %bb.cr
  ]

bb.cj:                                            ; preds = %bb.ci, %bb.ci
  store i32 0, ptr %i.b, align 4, !tbaa !41
  %i.lz = load ptr, ptr %10, align 16, !tbaa !240
  %i.ma = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !241
  %i.mc = call i32 @wc_RsaPublicKeyDecode_ex(ptr noundef %i.lz, ptr noundef nonnull %i.b, i32 noundef %i.mb, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #23 ; 2 uses
  %i.md = icmp eq i32 %i.mc, 0
  %i.me = icmp ne i32 %.053.i.i, 0
  %or.cond3.i.i.i = and i1 %i.me, %i.md
  br i1 %or.cond3.i.i.i, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 1078
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 178
  %.in46.in.i.i.i = select i1 %.not.i3745.i.i, ptr %i.mg, ptr %i.mf
  %.in46.i.i.i = load i16, ptr %.in46.in.i.i.i, align 2, !tbaa !233 ; 2 uses
  %i.mh = icmp slt i16 %.in46.i.i.i, 0
  br i1 %i.mh, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mi = load i32, ptr %i.a, align 4, !tbaa !41  ; 2 uses
  %i.mj = zext nneg i16 %.in46.i.i.i to i32
  %i.mk = icmp slt i32 %i.mi, %i.mj
  br i1 %i.mk, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ml = icmp samesign ugt i32 %i.mi, 512
  %i.mm = select i1 %i.ml, i32 -409, i32 0
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj
  %.038.i.i.i = phi i32 [ %i.mc, %bb.cj ], [ -409, %bb.cl ], [ -409, %bb.ck ], [ %i.mm, %bb.cm ] ; 2 uses
  br i1 %.not.i3745.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mn = load i32, ptr %i.ly, align 16, !tbaa !50
  %i.mo = icmp eq i32 %i.mn, 2025223208
  %i.mp = zext i1 %i.mo to i8
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 1097
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !242
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  br i1 %.not, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mr = load i32, ptr %i.ly, align 16, !tbaa !50
  %i.ms = icmp eq i32 %i.mr, 2025223208
  %i.mt = zext i1 %i.ms to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.mt, ptr %i.mu, align 4, !tbaa !243
  br label %bb.cu

bb.cr:                                            ; preds = %bb.ci
  %i.mv = getelementptr inbounds nuw i8, ptr %10, i64 864
  %i.mw = load i32, ptr %i.mv, align 16, !tbaa !237
  %i.mx = call i32 @wc_ecc_get_oid(i32 noundef %i.mw, ptr noundef null, ptr noundef null) #23
  %i.my = call i32 @wc_ecc_get_curve_size_from_id(i32 noundef %i.mx) #23 ; 3 uses
  store i32 %i.my, ptr %i.a, align 4, !tbaa !41
  %.not.i33.i.i = icmp eq i32 %.053.i.i, 0
  br i1 %.not.i33.i.i, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 1080
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 182
  %.in.in.i.i.i103 = select i1 %.not.i3745.i.i, ptr %i.na, ptr %i.mz
  %.in.i.i.i104 = load i16, ptr %.in.in.i.i.i103, align 2, !tbaa !233 ; 2 uses
  %i.nb = icmp slt i16 %.in.i.i.i104, 0
  %i.nc = zext nneg i16 %.in.i.i.i104 to i32
  %i.nd = icmp slt i32 %i.my, %i.nc
  %or.cond52.i.i.i = select i1 %i.nb, i1 true, i1 %i.nd
  br i1 %or.cond52.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ne = icmp samesign ugt i32 %i.my, 66
  %i.nf = select i1 %i.ne, i32 -410, i32 0
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.ci
  %.1.i34.i.i = phi i32 [ 0, %bb.ci ], [ %.038.i.i.i, %bb.cq ], [ %.038.i.i.i, %bb.cp ], [ 0, %bb.cr ], [ %i.nf, %bb.ct ], [ -410, %bb.cs ] ; 2 uses
  %.0.i35.i.i = phi i8 [ 0, %bb.ci ], [ 1, %bb.cq ], [ 1, %bb.cp ], [ 3, %bb.cr ], [ 3, %bb.ct ], [ 3, %bb.cs ] ; 2 uses
  br i1 %.not.i3745.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 600
  store i8 %.0.i35.i.i, ptr %i.ng, align 8, !tbaa !244
  %i.nh = load i32, ptr %i.a, align 4, !tbaa !41
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 604
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !153
  br label %ProcessBufferCertPublicKey.exit.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.0.i35.i.i, ptr %i.nj, align 8, !tbaa !122
  %i.nk = load i32, ptr %i.a, align 4, !tbaa !41
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !123
  br label %ProcessBufferCertPublicKey.exit.i.i

ProcessBufferCertPublicKey.exit.i.i:              ; preds = %bb.cw, %bb.cv, %ProcessBufferCertSetHave.exit.thread.thread.i.i
  %.039.i.i.i = phi i32 [ -173, %ProcessBufferCertSetHave.exit.thread.thread.i.i ], [ %.1.i34.i.i, %bb.cw ], [ %.1.i34.i.i, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %ProcessBufferCert.exit.i

ProcessBufferCert.exit.i:                         ; preds = %ProcessBufferCertPublicKey.exit.i.i, %wolfSSL_CTX_GetDevId.exit.i.i101
  %.1.i.i = phi i32 [ %.039.i.i.i, %ProcessBufferCertPublicKey.exit.i.i ], [ -463, %wolfSSL_CTX_GetDevId.exit.i.i101 ]
  call void @FreeDecodedCert(ptr noundef nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.cx

bb.cx:                                            ; preds = %ProcessBufferCert.exit.i, %ProcessBufferCertHandleDer.exit.i
  %i.nm = phi i1 [ %i.kj, %ProcessBufferCert.exit.i ], [ %i.ju, %ProcessBufferCertHandleDer.exit.i ]
  %.0.i = phi i32 [ %.1.i.i, %ProcessBufferCert.exit.i ], [ %.0.i.i, %ProcessBufferCertHandleDer.exit.i ] ; 6 uses
  %i.nn = icmp slt i32 %.0.i, 0
  br i1 %i.nn, label %bb.cy, label %ProcessBufferCertTypes.exit

bb.cy:                                            ; preds = %bb.cx
  %or.cond3.i97 = or i1 %i.x, %i.nm
  %i.no = icmp ne ptr %0, null
  %or.cond5.i = and i1 %i.no, %or.cond3.i97
  br i1 %or.cond5.i, label %bb.cz, label %ProcessBufferResetSuites.exit

bb.cz:                                            ; preds = %bb.cy
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !32 ; 3 uses
  %.not.i98 = icmp eq ptr %i.nq, null
  br i1 %.not.i98, label %ProcessBufferResetSuites.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 128
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !44
  %.not31.i = icmp eq ptr %i.ns, null
  br i1 %.not31.i, label %ProcessBufferResetSuites.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nt = call i32 @CM_VerifyBuffer_ex(ptr noundef nonnull %i.nq, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %.0.i) ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 1
  br i1 %i.nu, label %ProcessBufferCertTypes.exit.thread121, label %ProcessBufferResetSuites.exit

bb.dc:                                            ; preds = %ProcessUserChain.exit
  call void @FreeDer(ptr noundef nonnull %i.m) #23
  br label %ProcessBufferResetSuites.exit

ProcessBufferCertTypes.exit:                      ; preds = %ProcessBufferPrivateKey.exit, %bb.cx
  %.3 = phi i32 [ %.3.i.i, %ProcessBufferPrivateKey.exit ], [ %.0.i, %bb.cx ] ; 2 uses
  %i.nv = icmp eq i32 %.3, 0
  br i1 %i.nv, label %ProcessBufferCertTypes.exit.thread121, label %ProcessBufferResetSuites.exit

ProcessBufferCertTypes.exit.thread121:            ; preds = %bb.db, %ProcessBufferCertTypes.exit
  %or.cond17 = icmp ult i32 %4, 2
  br i1 %or.cond17, label %bb.dd, label %.thread133

bb.dd:                                            ; preds = %ProcessBufferCertTypes.exit.thread121
  br i1 %i.u, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 1040 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8
  %i.ny = and i64 %i.nx, 48
  %i.nz = icmp eq i64 %i.ny, 0
  br i1 %i.nz, label %bb.df, label %.thread133

bb.df:                                            ; preds = %bb.de
  %i.oa = call i32 @AllocateSuites(ptr noundef nonnull %5) #23
  %.not25.i = icmp eq i32 %i.oa, 0
  br i1 %.not25.i, label %bb.dg, label %.thread133

bb.dg:                                            ; preds = %bb.df
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !154
  %i.od = getelementptr inbounds nuw i8, ptr %5, i64 726
  %i.oe = getelementptr inbounds nuw i8, ptr %5, i64 604
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !153
  %i.og = load i64, ptr %i.nw, align 8            ; 6 uses
  %i.oh = lshr i64 %i.og, 25
  %i.oi = trunc i64 %i.oh to i16
  %i.oj = and i16 %i.oi, 1
  %i.ok = lshr i64 %i.og, 26
  %i.ol = trunc i64 %i.ok to i16
  %i.om = and i16 %i.ol, 1
  %i.on = lshr i64 %i.og, 24
  %i.oo = trunc i64 %i.on to i16
  %i.op = and i16 %i.oo, 1
  %i.oq = lshr i64 %i.og, 27
  %i.or = trunc i64 %i.oq to i16
  %i.os = and i16 %i.or, 1
  %i.ot = lshr i64 %i.og, 43
  %i.ou = trunc i64 %i.ot to i16
  %i.ov = and i16 %i.ou, 1
  %13 = lshr i64 %i.og, 4
  %14 = trunc i64 %13 to i32
  %i.ow = and i32 %14, 3
  %i.ox = load i16, ptr %i.od, align 2
  call void @InitSuites(ptr noundef %i.oc, i16 %i.ox, i32 noundef %i.of, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.oj, i16 noundef zeroext %i.om, i16 noundef zeroext %i.op, i16 noundef zeroext 1, i16 noundef zeroext %i.os, i16 noundef zeroext %i.ov, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.ow) #23
  br label %.thread133

bb.dh:                                            ; preds = %bb.dd
  %i.oy = icmp eq i32 %4, 0
  br i1 %i.oy, label %bb.di, label %.thread133

bb.di:                                            ; preds = %bb.dh
  %i.oz = load ptr, ptr %0, align 8, !tbaa !111
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !113
  %i.pc = icmp eq i8 %i.pb, 0
  br i1 %i.pc, label %bb.dj, label %.thread133

bb.dj:                                            ; preds = %bb.di
  %i.pd = call i32 @AllocateCtxSuites(ptr noundef nonnull %0) #23
  %.not24.i = icmp eq i32 %i.pd, 0
  br i1 %.not24.i, label %bb.dk, label %.thread133

bb.dk:                                            ; preds = %bb.dj
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !156
  %i.pg = load ptr, ptr %0, align 8, !tbaa !111   ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !123
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.pk = load i16, ptr %i.pj, align 1            ; 4 uses
  %i.pl = lshr i16 %i.pk, 10
  %i.pm = and i16 %i.pl, 1
  %i.pn = lshr i16 %i.pk, 11
  %i.po = and i16 %i.pn, 1
  %i.pp = lshr i16 %i.pk, 9
  %i.pq = and i16 %i.pp, 1
  %i.pr = lshr i16 %i.pk, 14
  %i.ps = and i16 %i.pr, 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pg, i64 2
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !113
  %i.pv = zext i8 %i.pu to i32
  %i.pw = load i16, ptr %i.pg, align 1
  call void @InitSuites(ptr noundef %i.pf, i16 %i.pw, i32 noundef %i.pi, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.pm, i16 noundef zeroext %i.po, i16 noundef zeroext %i.pq, i16 noundef zeroext 1, i16 noundef zeroext %i.ps, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.pv) #23
  br label %.thread133

ProcessBufferResetSuites.exit:                    ; preds = %bb.ag, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %ProcessBufferCertTypes.exit
  %.4 = phi i32 [ %.3, %ProcessBufferCertTypes.exit ], [ %.4.i.fr, %bb.dc ], [ %.0.i, %bb.cy ], [ %.0.i, %bb.cz ], [ %.0.i, %bb.da ], [ %i.nt, %bb.db ], [ %.2.i, %bb.ag ]
  %.4.fr = freeze i32 %.4                         ; 2 uses
  %i.px = icmp eq i32 %.4.fr, -1
  %spec.select144 = select i1 %i.px, i32 0, i32 %.4.fr
  br label %.thread133

.thread133:                                       ; preds = %ProcessBufferResetSuites.exit, %bb.di, %bb.dk, %bb.de, %bb.dg, %bb.dh, %ProcessBufferCertTypes.exit.thread121, %bb.e, %ProcessBufferPrivateKey.exit, %bb.df, %bb.dj
  %i.py = phi i32 [ 1, %bb.di ], [ %spec.store.select21, %bb.e ], [ 0, %bb.df ], [ 0, %bb.dj ], [ %spec.select144, %ProcessBufferResetSuites.exit ], [ -463, %ProcessBufferPrivateKey.exit ], [ 1, %ProcessBufferCertTypes.exit.thread121 ], [ 1, %bb.dh ], [ 1, %bb.dg ], [ 1, %bb.de ], [ 1, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  ret i32 %i.py
}

; Function Attrs: nounwind uwtable
define i32 @ProcessFile(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree readnone captures(none) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [1024 x i8], align 16             ; 3 uses
  %8 = alloca %struct.StaticBuffer, align 8       ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.b, ptr %8, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1024, ptr %i.f, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !160
  %i.h = call fastcc i32 @wolfssl_read_file_static(ptr noundef %1, ptr noundef %8, ptr noundef %i.c) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = icmp eq i32 %3, 24                       ; 2 uses
  %i.k = icmp ne i32 %2, 1
  %i.l = and i1 %i.k, %i.i
  %or.cond3 = and i1 %i.j, %i.l
  %spec.store.select = select i1 %or.cond3, i32 -459, i32 %i.h ; 2 uses
  %i.m = icmp eq i32 %spec.store.select, 0
  %or.cond5 = and i1 %i.j, %i.m
  br i1 %or.cond5, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr null, ptr %i.d, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr null, ptr %i.e, align 8, !tbaa !161
  %i.n = call i32 @wc_PemGetHeaderFooter(i32 noundef 6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #23
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %8, align 8, !tbaa !158
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.r = load i64, ptr %i.c, align 8, !tbaa !42
  %i.s = call ptr @wolfSSL_strnstr(ptr noundef %i.p, ptr noundef %i.q, i64 noundef %i.r) #23
  %.not43 = icmp eq ptr %i.s, null
  br i1 %.not43, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = call i32 @wc_PemGetHeaderFooter(i32 noundef 0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #23
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %8, align 8, !tbaa !158
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.x = load i64, ptr %i.c, align 8, !tbaa !42
  %i.y = call ptr @wolfSSL_strnstr(ptr noundef %i.v, ptr noundef %i.w, i64 noundef %i.x) #23
  %.not44 = icmp eq ptr %i.y, null
  br i1 %.not44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %.037 = phi i32 [ 24, %bb.f ], [ 6, %bb.c ], [ 0, %bb.e ]
  %.0 = phi i32 [ -459, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.138 = phi i32 [ %.037, %bb.g ], [ %3, %bb.a ] ; 4 uses
  %.1 = phi i32 [ %.0, %bb.g ], [ %spec.store.select, %bb.a ] ; 2 uses
  %i.z = icmp eq i32 %.1, 0
  br i1 %i.z, label %bb.i, label %.ProcessChainBuffer.exit_crit_edge

.ProcessChainBuffer.exit_crit_edge:               ; preds = %bb.h
  %.val.pre = load ptr, ptr %8, align 8
  br label %ProcessChainBuffer.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %.138, 6
  %i.ab = icmp eq i32 %.138, 17
  %or.cond7 = or i1 %i.aa, %i.ab
  %i.ac = icmp eq i32 %2, 1
  %or.cond9 = and i1 %i.ac, %or.cond7
  %i.ad = load ptr, ptr %8, align 8, !tbaa !158   ; 6 uses
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !42  ; 5 uses
  br i1 %or.cond9, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %ProcessChainBuffer.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.029.i = phi i32 [ %.1.i, %bb.m ], [ 0, %bb.j ]
  %.01928.i = phi i64 [ %.pre-phi, %bb.m ], [ 0, %bb.j ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.01928.i, ptr %i.a, align 8, !tbaa !42
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %.01928.i
  %i.ah = sub nsw i64 %i.ae, %.01928.i
  %i.ai = call i32 @ProcessBuffer(ptr noundef %0, ptr noundef %i.ag, i64 noundef %i.ah, i32 noundef 1, i32 noundef %.138, ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %7, ptr readnone poison) ; 4 uses
  %i.aj = icmp eq i32 %i.ai, -125
  br i1 %i.aj, label %._crit_edge.loopexit.thread.i, label %bb.k

._crit_edge.loopexit.thread.i:                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %ProcessChainBuffer.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = icmp slt i32 %i.ai, 0
  %.pre31.i = load i64, ptr %i.a, align 8, !tbaa !42 ; 3 uses
  br i1 %i.ak, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = add nsw i64 %.pre31.i, %.01928.i
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = icmp sgt i64 %.pre31.i, 0
  %i.am = add nsw i64 %.pre31.i, %.01928.i        ; 2 uses
  %i.an = icmp slt i64 %i.am, %i.ae
  %or.cond.i = select i1 %i.al, i1 %i.an, i1 false
  %spec.select27.i = select i1 %or.cond.i, i32 0, i32 %i.ai
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.am, %bb.l ] ; 2 uses
  %.121.i = phi i32 [ %i.ai, %._crit_edge ], [ %spec.select27.i, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ 1, %._crit_edge ], [ %.029.i, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ao = icmp sgt i32 %.121.i, -1
  %i.ap = icmp slt i64 %.pre-phi, %i.ae
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.m
  %i.ar = icmp eq i32 %.1.i, 0
  %spec.select.i = select i1 %i.ar, i32 %.121.i, i32 1
  br label %ProcessChainBuffer.exit

bb.n:                                             ; preds = %bb.i
  %i.as = call i32 @ProcessBuffer(ptr noundef %0, ptr noundef %i.ad, i64 noundef %i.ae, i32 noundef %2, i32 noundef %.138, ptr noundef %4, ptr noundef null, i32 noundef %5, i32 noundef %7, ptr poison)
end_hunk_6
begin_hunk_7_@wolfSSL_use_PrivateKey_buffer:bb.a
  %i.h = call i32 @ProcessBuffer(ptr noundef %i.c, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.g, ptr nonnull poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ -173, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_certificate_chain_buffer_format(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 16, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load i64, ptr %i.c, align 16
  %i.e = and i64 %i.d, 128
  %.not = icmp eq i64 %i.e, 0
  %i.f = zext i1 %.not to i32
  %i.g = tail call i32 @ProcessBuffer(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1, i32 noundef %i.f, ptr nonnull poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_certificate_chain_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfSSL_use_certificate_chain_buffer_format.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 16, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load i64, ptr %i.c, align 16
  %i.e = and i64 %i.d, 128
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = zext i1 %.not.i to i32
  %i.g = tail call i32 @ProcessBuffer(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1, i32 noundef %i.f, ptr nonnull poison)
  br label %wolfSSL_use_certificate_chain_buffer_format.exit

wolfSSL_use_certificate_chain_buffer_format.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -401, 2) i32 @wolfSSL_SetTmpDH(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %i.d = and i1 %i.b, %i.c
  %or.cond3.not = and i1 %i.a, %i.d
  br i1 %or.cond3.not, label %bb.b, label %.thread65

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = tail call ptr @wolfSSL_Malloc(i64 noundef %i.e) #23 ; 5 uses
  %i.g = sext i32 %4 to i64                       ; 2 uses
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef %i.g) #23 ; 5 uses
  %i.i = icmp ne ptr %i.f, null
  %i.j = icmp ne ptr %i.h, null
  %or.cond5.not = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond5.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %3, i64 %i.g, i1 false)
  %i.k = tail call fastcc i32 @wolfssl_set_tmp_dh(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef %2, ptr noundef nonnull %i.h, i32 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %i.k, %bb.c ], [ -125, %bb.b ]  ; 3 uses
  %.not71 = icmp eq i32 %.2, 1
  br i1 %.not71, label %.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.f) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %.thread65, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.h) #23
  br label %.thread65

.thread65:                                        ; preds = %bb.a, %bb.g, %bb.h, %bb.d
  %.256 = phi i32 [ 1, %bb.d ], [ %.2, %bb.g ], [ %.2, %bb.h ], [ 0, %bb.a ]
  ret i32 %.256
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -401, 2) i32 @wolfssl_set_tmp_dh(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 65535                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load i16, ptr %i.b, align 8, !tbaa !125
  %i.d = zext i16 %i.c to i32
  %i.e = icmp samesign ult i32 %i.a, %i.d
  br i1 %i.e, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1074
  %i.g = load i16, ptr %i.f, align 2, !tbaa !127
  %i.h = zext i16 %i.g to i32
  %i.i = icmp samesign ugt i32 %i.a, %i.h
  br i1 %i.i, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 48
  %i.m = icmp eq i64 %i.l, 16
  br i1 %i.m, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i64 %i.k, -6755399441055745
  %i.o = or disjoint i64 %i.n, 2251799813685248
  store i64 %i.o, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 507 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !246
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !247 ; 2 uses
  %.not43 = icmp eq ptr %i.s, null
  br i1 %.not43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.s) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !248 ; 2 uses
  %.not44 = icmp eq ptr %i.u, null
  br i1 %.not44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.u) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store ptr %1, ptr %i.v, align 16, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store ptr %3, ptr %i.w, align 16, !tbaa !248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %2, ptr %i.x, align 8, !tbaa !249
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %4, ptr %i.y, align 8, !tbaa !250
  store i8 1, ptr %i.p, align 1, !tbaa !246
  %i.z = load i64, ptr %i.j, align 16
  %i.aa = or i64 %i.z, 33554432
  store i64 %i.aa, ptr %i.j, align 16
  %i.ab = tail call i32 @AllocateSuites(ptr noundef nonnull %0) #23
  %.not45 = icmp eq i32 %i.ab, 0
  br i1 %.not45, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.v, align 16, !tbaa !247
  store ptr null, ptr %i.w, align 16, !tbaa !248
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !153
  %i.ah = load i64, ptr %i.j, align 16            ; 6 uses
  %i.ai = lshr i64 %i.ah, 25
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = and i16 %i.aj, 1
  %i.al = lshr i64 %i.ah, 26
  %i.am = trunc i64 %i.al to i16
  %i.an = and i16 %i.am, 1
  %i.ao = lshr i64 %i.ah, 24
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = and i16 %i.ap, 1
  %i.ar = lshr i64 %i.ah, 27
  %i.as = trunc i64 %i.ar to i16
  %i.at = and i16 %i.as, 1
  %i.au = lshr i64 %i.ah, 43
  %i.av = trunc i64 %i.au to i16
  %i.aw = and i16 %i.av, 1
  %5 = lshr i64 %i.ah, 4
  %6 = trunc i64 %5 to i32
  %i.ax = and i32 %6, 3
  %i.ay = load i16, ptr %i.ae, align 2
  tail call void @InitSuites(ptr noundef %i.ad, i16 %i.ay, i32 noundef %i.ag, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.ak, i16 noundef zeroext %i.an, i16 noundef zeroext %i.aq, i16 noundef zeroext 1, i16 noundef zeroext %i.at, i16 noundef zeroext %i.aw, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.ax) #23
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %bb.b, %bb.a, %bb.j, %.critedge
  %.250 = phi i32 [ 1, %.critedge ], [ 0, %bb.j ], [ -401, %bb.a ], [ -401, %bb.b ], [ -344, %bb.c ]
  ret i32 %.250
}

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @wolfSSL_CTX_SetTmpDH(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null                     ; 2 uses
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %i.d = and i1 %i.b, %i.c
  %or.cond3.not = and i1 %i.a, %i.d
  br i1 %or.cond3.not, label %bb.b, label %.thread74

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = tail call ptr @wolfSSL_Malloc(i64 noundef %i.e) #23 ; 5 uses
  %i.g = sext i32 %4 to i64                       ; 2 uses
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef %i.g) #23 ; 5 uses
  %i.i = icmp eq ptr %i.f, null
  %i.j = icmp eq ptr %i.h, null
  %or.cond5 = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond5, label %.thread51, label %.thread

.thread:                                          ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %3, i64 %i.g, i1 false)
  %i.k = tail call fastcc i32 @wolfssl_ctx_set_tmp_dh(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef %2, ptr noundef nonnull %i.h, i32 noundef %4)
  br label %.thread51

.thread51:                                        ; preds = %bb.b, %.thread
  %.2 = phi i32 [ %i.k, %.thread ], [ -125, %bb.b ] ; 4 uses
  %i.l = icmp ne i32 %.2, 1
  %or.cond7 = and i1 %i.a, %i.l
  br i1 %or.cond7, label %bb.c, label %.thread74

bb.c:                                             ; preds = %.thread51
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.f) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %.thread74, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.h) #23
  br label %.thread74

.thread74:                                        ; preds = %bb.a, %bb.e, %bb.f, %.thread51
  %.265 = phi i32 [ %.2, %.thread51 ], [ %.2, %bb.e ], [ %.2, %bb.f ], [ -173, %bb.a ]
  ret i32 %.265
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 0) i32 @wolfssl_ctx_set_tmp_dh(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WC_RNG, align 8             ; 5 uses
  %6 = alloca [1 x %struct.DhKey], align 16       ; 5 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not39 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3.not = and i1 %or.cond.not39, %i.c
  br i1 %or.cond3.not, label %bb.b, label %.thread44

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %2, 65535                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 174
  %i.f = load i16, ptr %i.e, align 2, !tbaa !124
  %i.g = zext i16 %i.f to i32
  %i.h = icmp samesign ult i32 %i.d, %i.g
  br i1 %i.h, label %.thread44, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load i16, ptr %i.i, align 8, !tbaa !126
  %i.k = zext i16 %i.j to i32
  %i.l = icmp samesign ugt i32 %i.d, %i.k
  br i1 %i.l, label %.thread44, label %.thread

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.m = call i32 @wc_InitRng(ptr noundef nonnull %5) #23 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.thread
  %i.o = call i32 @wc_InitDhKey(ptr noundef nonnull %6) #23 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @wc_DhSetCheckKey(ptr noundef nonnull %6, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #23
  %i.r = call i32 @wc_FreeDhKey(ptr noundef nonnull %6) #23 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.o, %bb.d ]
  %i.s = call i32 @wc_FreeRng(ptr noundef nonnull %5) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.1.i = phi i32 [ %.0.i, %bb.f ], [ %i.m, %.thread ] ; 3 uses
  %i.t = call range(i32 1, 0) i32 @llvm.umax.i32(i32 %.1.i, i32 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.u = icmp ult i32 %.1.i, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = select i1 %i.u, i8 16, i8 0
  %i.y = and i8 %i.w, -17
  %i.z = or disjoint i8 %i.y, %i.x
  store i8 %i.z, ptr %i.v, align 1
  %i.aa = icmp ult i32 %.1.i, 2
  br i1 %i.aa, label %bb.h, label %.thread44

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !251 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @wolfSSL_Free(ptr noundef nonnull %i.ac) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !252 ; 2 uses
  %.not40 = icmp eq ptr %i.ae, null
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @wolfSSL_Free(ptr noundef nonnull %i.ae) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %1, ptr %i.ab, align 8, !tbaa !251
  store ptr %3, ptr %i.ad, align 8, !tbaa !252
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %i.af, align 8, !tbaa !253
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %i.ag, align 8, !tbaa !254
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = or i16 %i.ai, 1024
  store i16 %i.aj, ptr %i.ah, align 1
  br label %.thread44

.thread44:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.g, %bb.l
  %.246 = phi i32 [ 1, %bb.l ], [ %i.t, %bb.g ], [ -401, %bb.c ], [ -401, %bb.b ], [ -173, %bb.a ]
  ret i32 %.246
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_SetTmpDH_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @ws_ctx_ssl_set_tmp_dh(ptr noundef null, ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ws_ctx_ssl_set_tmp_dh(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 513, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 513, ptr %i.c, align 4, !tbaa !41
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not72 = icmp eq ptr %1, null
  br i1 %.not72, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !149
  br label %bb.e
end_hunk_7
begin_hunk_8_@wolfSSL_CTX_set_options:bb.a
  store i64 %i.d, ptr %i.b, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ -173, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @wolfSSL_CTX_clear_options(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !163
  %i.e = and i64 %i.d, %i.b                       ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_clear(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.c = load i8, ptr %i.b, align 8, !tbaa !265
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !81
  tail call void @wolfSSL_FreeSession(ptr poison, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !149
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef 184) #23 ; 7 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %wolfSSL_NewSession.exit.thread, label %wolfSSL_NewSession.exit

wolfSSL_NewSession.exit.thread:                   ; preds = %bb.c
  store ptr null, ptr %i.d, align 16, !tbaa !81
  br label %bb.g

wolfSSL_NewSession.exit:                          ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.h, i8 0, i64 184, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @wolfSSL_Atomic_Int_Init(ptr noundef nonnull %i.i, i32 noundef 1) #23
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !89
  store i32 3, ptr %i.h, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.g, ptr %i.k, align 8, !tbaa !90
  store ptr %i.h, ptr %i.d, align 16, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %wolfSSL_NewSession.exit, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.l, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1061
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1066
  store i8 0, ptr %i.p, align 2, !tbaa !142
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1067
  store i8 0, ptr %i.q, align 1, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1396
  store i32 0, ptr %i.r, align 4, !tbaa !266
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i8 0, ptr %i.s, align 4, !tbaa !267
  %i.t = and i64 %i.n, -288793329330413572
  store i32 0, ptr %i.o, align 1
  store i64 %i.t, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !149
  tail call void @TLSX_FreeAll(ptr noundef %i.v, ptr noundef %i.x) #23
  store ptr null, ptr %i.u, align 8, !tbaa !164
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !268
  %.not44 = icmp eq i8 %i.z, 0
  br i1 %.not44, label %ForceZero.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !146
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 381
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !269
  %i.ae = zext i8 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  fence seq_cst
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = and i64 %i.ak, 7
  %.not19.i = icmp eq i64 %i.al, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.am = icmp eq i32 %i.ai, 0
  br i1 %i.am, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.e
  %.013.lcssa.i = phi i64 [ %i.aj, %bb.e ], [ %i.as, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.ag, %bb.e ], [ %i.ar, %.lr.ph ] ; 3 uses
  %i.an = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.an, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.ao = and i64 %.013.lcssa.i, -8               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.ao, i1 false), !tbaa !42
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.ao
  %i.ap = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.aq = icmp eq i64 %i.as, 0
  br i1 %i.aq, label %ForceZero.exit, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i55 = phi i64 [ %i.as, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ]
  %.01221.i54 = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01221.i54, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i54, align 1, !tbaa !52
  %i.as = add nsw i64 %.01320.i55, -1             ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = and i64 %i.at, 7
  %.not.i47 = icmp eq i64 %i.au, 0
  br i1 %.not.i47, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !1

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.ap, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %bb.d
  store i8 0, ptr %i.y, align 4, !tbaa !268
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 722
  store i32 0, ptr %i.av, align 2
  tail call void @FreeCiphers(ptr noundef %0) #23
  tail call void @InitCiphers(ptr noundef %0) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 730
  tail call void @InitCipherSpecs(ptr noundef nonnull %i.aw) #23
  %i.ax = tail call i32 @InitSSL_Suites(ptr noundef %0) #23
  %.not45 = icmp eq i32 %i.ax, 1
  br i1 %.not45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %ForceZero.exit
  %i.ay = tail call i32 @InitHandshakeHashes(ptr noundef nonnull %0) #23
  %.not46 = icmp eq i32 %i.ay, 0
  %. = zext i1 %.not46 to i32
  br label %bb.g

bb.g:                                             ; preds = %wolfSSL_NewSession.exit.thread, %bb.f, %ForceZero.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %wolfSSL_NewSession.exit.thread ], [ %., %bb.f ], [ 0, %ForceZero.exit ]
  ret i32 %.0
}

declare void @TLSX_FreeAll(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FreeCiphers(ptr noundef) local_unnamed_addr #2

declare void @InitCiphers(ptr noundef) local_unnamed_addr #2

declare void @InitCipherSpecs(ptr noundef) local_unnamed_addr #2

declare i32 @InitSSL_Suites(ptr noundef) local_unnamed_addr #2

declare i32 @InitHandshakeHashes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 4) i32 @wolfSSL_get_shutdown(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %1 = lshr i64 %i.b, 21
  %2 = trunc i64 %1 to i32
  %spec.select = and i32 %2, 1                    ; 2 uses
  %i.c = and i64 %i.b, 1310720
  %or.cond = icmp eq i64 %i.c, 0
  %i.d = or disjoint i32 %spec.select, 2
  %spec.select10 = select i1 %or.cond, i32 %spec.select, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %spec.select10, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @wolfSSL_session_reused(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %1 = lshr i64 %i.b, 11
  %2 = trunc i64 %1 to i32
  %i.c = and i32 %2, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @wolfSSL_get_version(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfSSL_internal_get_version.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.c = load i8, ptr %i.b, align 1, !tbaa !165
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %bb.c, label %wolfSSL_internal_get_version.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.f = load i8, ptr %i.e, align 1, !tbaa !166   ; 2 uses
  %i.g = icmp ult i8 %i.f, 5
  br i1 %i.g, label %switch.lookup, label %wolfSSL_internal_get_version.exit

switch.lookup:                                    ; preds = %bb.c
  %i.h = zext nneg i8 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wolfSSL_CIPHER_get_version, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %wolfSSL_internal_get_version.exit

wolfSSL_internal_get_version.exit:                ; preds = %bb.c, %switch.lookup, %bb.b, %bb.a
  %.0 = phi ptr [ @.str.9, %bb.a ], [ %switch.load, %switch.lookup ], [ @.str.9, %bb.b ], [ @.str.9, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @wolfSSL_lib_version() local_unnamed_addr #7 {
bb.a:
  ret ptr @.str.10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_lib_version_hex() local_unnamed_addr #7 {
bb.a:
  ret i32 83922946
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 65536) i32 @wolfSSL_get_current_cipher_suite(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.b = load i8, ptr %i.a, align 1, !tbaa !96
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.f = load i8, ptr %i.e, align 2, !tbaa !98
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.d, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @wolfSSL_get_current_cipher(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.b = load i8, ptr %i.a, align 1, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store i8 %i.b, ptr %i.c, align 16, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.e = load i8, ptr %i.d, align 2, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %i.e, ptr %i.f, align 1, !tbaa !168
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_CIPHER_get_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !270
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !271
  %i.e = tail call ptr @GetCipherNameIana(i8 noundef zeroext %i.b, i8 noundef zeroext %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @wolfSSL_CIPHER_get_version(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfSSL_get_version.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %wolfSSL_get_version.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 726
  %i.f = load i8, ptr %i.e, align 1, !tbaa !165
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.d, label %wolfSSL_get_version.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 727
  %i.i = load i8, ptr %i.h, align 1, !tbaa !166   ; 2 uses
  %i.j = icmp ult i8 %i.i, 5
  br i1 %i.j, label %switch.lookup, label %wolfSSL_get_version.exit

switch.lookup:                                    ; preds = %bb.d
  %i.k = zext nneg i8 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wolfSSL_CIPHER_get_version, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %wolfSSL_get_version.exit

wolfSSL_get_version.exit:                         ; preds = %bb.d, %switch.lookup, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ @.str.9, %bb.c ], [ %switch.load, %switch.lookup ], [ @.str.9, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %wolfSSL_CIPHER_get_name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.b = load i8, ptr %i.a, align 1, !tbaa !96    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.b, ptr %i.c, align 16, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.e = load i8, ptr %i.d, align 2, !tbaa !98    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %i.e, ptr %i.f, align 1, !tbaa !168
  %i.g = tail call ptr @GetCipherNameIana(i8 noundef zeroext %i.b, i8 noundef zeroext %i.e) #23
  br label %wolfSSL_CIPHER_get_name.exit

wolfSSL_CIPHER_get_name.exit:                     ; preds = %bb.a, %bb.b
  %.0.i1 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i1
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher_name(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_get_cipher_name_internal(ptr noundef %0) #23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher_name_from_suite(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @GetCipherNameInternal(i8 noundef zeroext %0, i8 noundef zeroext %1) #23
  ret ptr %i.a
}

declare ptr @GetCipherNameInternal(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_cipher_name_iana_from_suite(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @GetCipherNameIana(i8 noundef zeroext %0, i8 noundef zeroext %1) #23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_get_cipher_suite_from_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.b = insertelement <4 x ptr> %i.a, ptr %1, i64 1
  %i.c = insertelement <4 x ptr> %i.b, ptr %2, i64 2
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 3
  %i.e = icmp eq <4 x ptr> %i.d, splat (ptr null)
end_hunk_8
begin_hunk_9_@wolfSSL_CIPHER_get_id:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1054
  %i.h = load i8, ptr %i.g, align 2, !tbaa !98
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.f, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @wolfSSL_get_cipher_by_value(i16 noundef zeroext %0) local_unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_get_curve_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wolfssl_ffdhe_name.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.c = load i16, ptr %i.b, align 2
  %i.d = tail call i32 @IsAtLeastTLSv1_3(i16 %i.c) #23
  %.not = icmp eq i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1098
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !272 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i16 %.pre, label %wolfssl_ffdhe_name.exit [
    i16 512, label %wolfssl_ffdhe_name.exit.thread
    i16 513, label %bb.d
    i16 4587, label %bb.e
    i16 514, label %bb.f
    i16 4589, label %bb.g
    i16 260, label %bb.k
    i16 256, label %wolfssl_ffdhe_name.exit.thread.fold.split
    i16 257, label %bb.h
    i16 258, label %bb.i
    i16 259, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.e:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.f:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.g:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

._crit_edge:                                      ; preds = %bb.b
  %switch.tableidx = add i16 %.pre, -256          ; 2 uses
  %i.e = icmp ult i16 %switch.tableidx, 5
  br i1 %i.e, label %switch.lookup, label %wolfssl_ffdhe_name.exit

bb.h:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.i:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.j:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

bb.k:                                             ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

wolfssl_ffdhe_name.exit:                          ; preds = %._crit_edge, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.g = load i32, ptr %i.f, align 16, !tbaa !273 ; 2 uses
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %wolfssl_ffdhe_name.exit.thread, label %bb.l

bb.l:                                             ; preds = %wolfssl_ffdhe_name.exit
  %i.h = tail call i32 @wc_ecc_get_oid(i32 noundef %i.g, ptr noundef null, ptr noundef null) #23
  %i.i = tail call ptr @wc_ecc_get_name(i32 noundef %i.h) #23
  br label %wolfssl_ffdhe_name.exit.thread

wolfssl_ffdhe_name.exit.thread.fold.split:        ; preds = %bb.c
  br label %wolfssl_ffdhe_name.exit.thread

switch.lookup:                                    ; preds = %._crit_edge
  %i.j = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wolfSSL_get_curve_name, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %wolfssl_ffdhe_name.exit.thread

wolfssl_ffdhe_name.exit.thread:                   ; preds = %switch.lookup, %bb.c, %wolfssl_ffdhe_name.exit.thread.fold.split, %bb.k, %bb.j, %bb.i, %bb.h, %wolfssl_ffdhe_name.exit, %bb.l, %bb.a, %bb.g, %bb.f, %bb.e, %bb.d
  %.011 = phi ptr [ @.str.15, %bb.g ], [ @.str.11, %bb.c ], [ null, %bb.a ], [ @.str.12, %bb.d ], [ @.str.13, %bb.e ], [ @.str.14, %bb.f ], [ %i.i, %bb.l ], [ null, %wolfssl_ffdhe_name.exit ], [ @.str.30, %bb.k ], [ @.str.29, %bb.j ], [ @.str.28, %bb.i ], [ @.str.27, %bb.h ], [ @.str.26, %wolfssl_ffdhe_name.exit.thread.fold.split ], [ %switch.load, %switch.lookup ]
  ret ptr %.011
}

declare ptr @wc_ecc_get_name(i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_get_oid(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @wolfSSL_set_options(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Suites, align 2             ; 7 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170
  %i.d = or i64 %i.c, %1                          ; 5 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !170
  %i.e = and i64 %i.d, 536870912
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !152
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 3, ptr %i.f, align 1, !tbaa !152
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.i = and i64 %i.d, 134217728
  %.not93 = icmp eq i64 %i.i, 0
  br i1 %.not93, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !152
  %i.l = icmp eq i8 %i.k, 3
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 2, ptr %i.j, align 1, !tbaa !152
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.m = and i64 %i.d, 67108864
  %.not94 = icmp eq i64 %i.m, 0
  br i1 %.not94, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !152
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.n, align 1, !tbaa !152
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.q = and i64 %i.d, 8192
  %.not95 = icmp eq i64 %i.q, 0
  br i1 %.not95, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !152
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.r, align 1, !tbaa !152
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 48
  %.not96 = icmp eq i64 %i.y, 48
  br i1 %.not96, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = tail call i32 @AllocateSuites(ptr noundef nonnull %0) #23
  %.not97 = icmp eq i32 %i.z, 0
  br i1 %.not97, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 432
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = and i8 %i.ad, 1
  %.not98 = icmp eq i8 %i.ae, 0
  br i1 %.not98, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.w, align 8             ; 10 uses
  %3 = lshr i64 %i.af, 4
  %4 = trunc i64 %3 to i32
  %i.ag = and i32 %4, 3                           ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  br i1 %i.ah, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = lshr i64 %i.af, 26
  %i.ak = trunc i64 %i.aj to i16
  %i.al = and i16 %i.ak, 1
  %i.am = lshr i64 %i.af, 24
  %i.an = trunc i64 %i.am to i16
  %i.ao = and i16 %i.an, 1
  %i.ap = lshr i64 %i.af, 27
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = and i16 %i.aq, 1
  %i.as = lshr i64 %i.af, 43
  %i.at = trunc i64 %i.as to i16
  %i.au = and i16 %i.at, 1
  %i.av = load i16, ptr %i.ai, align 2
  tail call void @InitSuites(ptr noundef nonnull %i.ab, i16 %i.av, i32 noundef %i.v, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext %i.al, i16 noundef zeroext %i.ao, i16 noundef zeroext 1, i16 noundef zeroext %i.ar, i16 noundef zeroext %i.au, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef 1) #23
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.aw = lshr i64 %i.af, 25
  %i.ax = trunc i64 %i.aw to i16
  %i.ay = and i16 %i.ax, 1
  %i.az = lshr i64 %i.af, 26
  %i.ba = trunc i64 %i.az to i16
  %i.bb = and i16 %i.ba, 1
  %i.bc = lshr i64 %i.af, 24
  %i.bd = trunc i64 %i.bc to i16
  %i.be = and i16 %i.bd, 1
  %i.bf = lshr i64 %i.af, 27
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = and i16 %i.bg, 1
  %i.bi = lshr i64 %i.af, 43
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = and i16 %i.bj, 1
  %i.bl = load i16, ptr %i.ai, align 2
  tail call void @InitSuites(ptr noundef nonnull %i.ab, i16 %i.bl, i32 noundef %i.v, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.ay, i16 noundef zeroext %i.bb, i16 noundef zeroext %i.be, i16 noundef zeroext 1, i16 noundef zeroext %i.bh, i16 noundef zeroext %i.bk, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.ag) #23
  br label %bb.y

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bm = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bn = lshr i64 %i.bm, 27
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = and i16 %i.bo, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(434) %2, i8 0, i64 434, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 726
  %5 = lshr i64 %i.bm, 4
  %6 = trunc i64 %5 to i32
  %i.br = and i32 %6, 3
  %i.bs = load i16, ptr %i.bq, align 2
  call void @InitSuites(ptr noundef nonnull %2, i16 %i.bs, i32 noundef 0, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext %i.bp, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.br) #23
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !278
  %.not113 = icmp eq i16 %i.bu, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.v
  %i.bv = phi ptr [ %i.cu, %bb.v ], [ %i.bt, %bb.t ]
  %.0102 = phi i16 [ %.1, %bb.v ], [ 0, %bb.t ]   ; 3 uses
  %.085101 = phi i16 [ %i.ct, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = zext i16 %.085101 to i64                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !52
  %i.ca = or disjoint i16 %.085101, 1
  %i.cb = zext i16 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !52
  %i.ce = call i32 @FindSuite(ptr noundef nonnull %2, i8 noundef zeroext %i.bz, i8 noundef zeroext %i.cd) #23
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bx
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !52
  %i.ck = zext i16 %.0102 to i64                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !52
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cb
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ck
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.cp, ptr %i.cr, align 1, !tbaa !52
  %i.cs = add i16 %.0102, 2
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %.1 = phi i16 [ %i.cs, %bb.u ], [ %.0102, %.lr.ph ] ; 2 uses
  %i.ct = add i16 %.085101, 2                     ; 2 uses
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 3 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !278
  %i.cw = icmp ult i16 %i.ct, %i.cv
  br i1 %i.cw, label %.lr.ph, label %._crit_edge, !llvm.loop !274

._crit_edge:                                      ; preds = %bb.v, %bb.t
  %.0.lcssa = phi i16 [ 0, %bb.t ], [ %.1, %bb.v ]
  %i.cx = phi ptr [ %i.bt, %bb.t ], [ %i.cu, %bb.v ] ; 5 uses
  store i16 %.0.lcssa, ptr %i.cx, align 2, !tbaa !278
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !279
  %.not114 = icmp eq i16 %i.cz, 0
  br i1 %.not114, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.dc = load i16, ptr %i.da, align 2, !tbaa !279
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %._crit_edge109, label %.lr.ph108.split

.lr.ph108.split:                                  ; preds = %.lr.ph108, %FindHashSig.exit.thread
  %i.de = phi ptr [ %i.eg, %FindHashSig.exit.thread ], [ %i.cx, %.lr.ph108 ] ; 3 uses
  %.2106 = phi i16 [ %.3, %FindHashSig.exit.thread ], [ 0, %.lr.ph108 ] ; 4 uses
  %.186105 = phi i16 [ %i.eh, %FindHashSig.exit.thread ], [ 0, %.lr.ph108 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 304 ; 3 uses
  %i.dg = zext i16 %.186105 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52  ; 2 uses
  %i.dj = or disjoint i16 %.186105, 1
  %i.dk = zext i16 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52
  %i.dn = load i16, ptr %i.da, align 2, !tbaa !279 ; 2 uses
  %switch = icmp ult i16 %i.dn, 2
  br i1 %switch, label %FindHashSig.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph108.split
  %i.do = add i16 %i.dn, -1
  %i.dp = zext i16 %i.do to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !52
  %i.ds = icmp eq i8 %i.dr, %i.di
  br i1 %i.ds, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !52
  %i.dv = icmp eq i8 %i.du, %i.dm
  br i1 %i.dv, label %FindHashSig.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next, %i.dp
  br i1 %i.dw, label %.lr.ph.i, label %FindHashSig.exit.thread, !llvm.loop !275

FindHashSig.exit:                                 ; preds = %bb.w
  %i.dx = zext i16 %.2106 to i64                  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dx
  store i8 %i.di, ptr %i.dy, align 1, !tbaa !52
  %i.dz = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 304 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dk
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !52
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dx
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !52
  %i.ef = add i16 %.2106, 2
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !154
  br label %FindHashSig.exit.thread

FindHashSig.exit.thread:                          ; preds = %bb.x, %.lr.ph108.split, %FindHashSig.exit
  %i.eg = phi ptr [ %.pre, %FindHashSig.exit ], [ %i.de, %.lr.ph108.split ], [ %i.de, %bb.x ] ; 3 uses
  %.3 = phi i16 [ %i.ef, %FindHashSig.exit ], [ %.2106, %.lr.ph108.split ], [ %.2106, %bb.x ] ; 2 uses
  %i.eh = add i16 %.186105, 2                     ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !279
  %i.ek = icmp ult i16 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph108.split, label %._crit_edge109, !llvm.loop !276

._crit_edge109:                                   ; preds = %FindHashSig.exit.thread, %.lr.ph108, %._crit_edge
  %.lcssa104 = phi ptr [ %i.cx, %._crit_edge ], [ %i.cx, %.lr.ph108 ], [ %i.eg, %FindHashSig.exit.thread ]
  %.2.lcssa = phi i16 [ 0, %._crit_edge ], [ 0, %.lr.ph108 ], [ %.3, %FindHashSig.exit.thread ]
  %i.el = getelementptr inbounds nuw i8, ptr %.lcssa104, i64 2
  store i16 %.2.lcssa, ptr %i.el, align 2, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge109, %bb.s, %bb.r, %bb.n
  %i.em = load i64, ptr %i.b, align 8, !tbaa !170
  br label %bb.z

bb.z:                                             ; preds = %bb.o, %bb.a, %bb.y
  %.087 = phi i64 [ %i.em, %bb.y ], [ 0, %bb.a ], [ 0, %bb.o ]
  ret i64 %.087
}

declare i32 @FindSuite(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @wolfSSL_get_options(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @wolfSSL_set_ex_data(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @wolfSSL_get_ex_data(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 65280) i32 @wolfSSL_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.b = load i8, ptr %i.a, align 2, !tbaa !151
  switch i8 %i.b, label %bb.d [
    i8 3, label %bb.b
    i8 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.d = load i8, ptr %i.c, align 1, !tbaa !152   ; 2 uses
  %i.e = icmp ult i8 %i.d, 5
  br i1 %i.e, label %switch.lookup, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.g = load i8, ptr %i.f, align 1, !tbaa !152   ; 2 uses
  %i.h = icmp ugt i8 %i.g, -5
  br i1 %i.h, label %switch.lookup5, label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %switch.idx.cast = zext nneg i8 %i.d to i32
  %switch.offset = or disjoint i32 %switch.idx.cast, 768
  br label %bb.d

switch.lookup5:                                   ; preds = %bb.c
  %switch.tableidx = add i8 %i.g, 4
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.wolfSSL_version, i64 %i.i
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup5, %bb.b, %switch.lookup, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ %switch.ext, %switch.lookup5 ], [ 0, %bb.a ], [ %switch.offset, %switch.lookup ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @wolfSSL_get_SSL_CTX(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !99
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_UseSNI(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !149
  %i.e = tail call i32 @TLSX_UseSNI(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_UseSNI(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_UseSNI(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = tail call i32 @TLSX_UseSNI(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3, ptr noundef %i.d) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @wolfSSL_SNI_SetOptions(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @TLSX_SNI_SetOptions(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i8 noundef zeroext %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @TLSX_SNI_SetOptions(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @wolfSSL_CTX_SNI_SetOptions(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @TLSX_SNI_SetOptions(ptr noundef nonnull %i.b, i8 noundef zeroext %1, i8 noundef zeroext %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @wolfSSL_SNI_Status(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = tail call zeroext i8 @TLSX_SNI_Status(ptr noundef %i.c, i8 noundef zeroext %1) #23
  ret i8 %i.d
}

declare zeroext i8 @TLSX_SNI_Status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i16 @wolfSSL_SNI_GetRequest(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !282
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not10 = icmp eq ptr %0, null
  br i1 %.not10, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call zeroext i16 @TLSX_SNI_GetRequest(ptr noundef nonnull %i.b, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext 0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i16 [ %i.c, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i16 %.0
}

declare zeroext i16 @TLSX_SNI_GetRequest(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_SNI_GetFromBuffer(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.c
  %i.d = icmp ne ptr %4, null
  %or.cond5 = and i1 %or.cond3, %i.d
  br i1 %or.cond5, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !41
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @TLSX_SNI_GetFromBuffer(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_SNI_GetFromBuffer(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_UseSupportedCurve(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @isValidCurveGroup(i16 noundef zeroext %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = or i64 %i.d, 17592186044416
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !149
  %2 = lshr i64 %i.d, 4
  %3 = trunc i64 %2 to i32
  %i.i = and i32 %3, 3
  %i.j = tail call i32 @TLSX_UseSupportedCurve(ptr noundef nonnull %i.f, i16 noundef zeroext %1, ptr noundef %i.h, i32 noundef %i.i) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @isValidCurveGroup(i16 noundef zeroext %0) unnamed_addr #7 {
bb.a:
  switch i16 %0, label %bb.b [
    i16 15, label %bb.c
    i16 16, label %bb.c
    i16 17, label %bb.c
    i16 18, label %bb.c
    i16 19, label %bb.c
    i16 20, label %bb.c
    i16 21, label %bb.c
    i16 22, label %bb.c
    i16 23, label %bb.c
    i16 24, label %bb.c
    i16 25, label %bb.c
    i16 26, label %bb.c
    i16 27, label %bb.c
    i16 28, label %bb.c
    i16 41, label %bb.c
    i16 29, label %bb.c
    i16 30, label %bb.c
    i16 31, label %bb.c
    i16 32, label %bb.c
    i16 33, label %bb.c
    i16 256, label %bb.c
    i16 257, label %bb.c
    i16 258, label %bb.c
    i16 259, label %bb.c
    i16 260, label %bb.c
    i16 4589, label %bb.c
    i16 4588, label %bb.c
    i16 4587, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i32 @TLSX_UseSupportedCurve(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_UseSupportedCurve(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @isValidCurveGroup(i16 noundef zeroext %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 1, ptr %i.c, align 8, !tbaa !283
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = load ptr, ptr %0, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !113
  %i.j = zext i8 %i.i to i32
  %i.k = tail call i32 @TLSX_UseSupportedCurve(ptr noundef nonnull %i.d, i16 noundef zeroext %1, ptr noundef %i.f, i32 noundef %i.j) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ -173, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_CTX_DisableExtendedMasterSecret(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 173 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = and i8 %i.c, -2
  store i8 %i.d, ptr %i.b, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -173, 2) i32 @wolfSSL_DisableExtendedMasterSecret(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, -2199023255553
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @wolfSSL_CTX_set_servername_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %1, ptr %i.a, align 8, !tbaa !284
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @wolfSSL_CTX_set_servername_arg(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %1, ptr %i.a, align 8, !tbaa !285
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @wolfSSL_X509_check_host(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.DecodedCert], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not46 = and i1 %i.a, %i.b
  %i.c = and i32 %3, 14
  %i.d = icmp eq i32 %i.c, 0
  %or.cond40 = and i1 %or.cond.not46, %i.d
  br i1 %or.cond40, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  call void @InitDecodedCert(ptr noundef nonnull %5, ptr noundef %i.g, i32 noundef %i.i, ptr noundef null) #23
  %i.j = call i32 @ParseCertRelative(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #23
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not36 = icmp eq i64 %2, 1
  %i.l = add i64 %2, -1
  %i.m = select i1 %.not36, i64 1, i64 %i.l
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.o = add nuw i64 %.047, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.m
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !286

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.047 = phi i64 [ %i.o, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.047
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d
end_hunk_9
