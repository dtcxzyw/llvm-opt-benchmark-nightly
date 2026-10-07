Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 160
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@wolfSSL_Cleanup:bb.a
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
  %10 = alloca [1 x %struct.DecodedCert], align 16 ; 17 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
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
  %.not = icmp eq ptr %0, null                    ; 13 uses
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
  %i.u = icmp eq ptr %5, null                     ; 15 uses
  %i.v = and i1 %.not, %i.u
  %spec.select = select i1 %i.v, i32 -173, i32 0
  %spec.store.select18 = select i1 %or.cond, i32 %spec.select, i32 -462 ; 2 uses
  %i.w = icmp eq i32 %spec.store.select18, 0
  %i.x = icmp eq i32 %4, 6                        ; 8 uses
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
  %i.an = sext i32 %i.am to i64
  store i64 %i.an, ptr %12, align 8, !tbaa !231
  %i.ao = icmp sgt i32 %i.am, 0
  %i.ap = icmp sle i32 %i.am, %i.ah
  %.not26.i = and i1 %i.ap, %i.ao
  br i1 %.not26.i, label %bb.j, label %DataToDerBuffer.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = call i32 @AllocCopyDer(ptr noundef nonnull %i.m, ptr noundef %1, i32 noundef %i.am, i32 noundef %4, ptr noundef %i.s) #23
  br label %DataToDerBuffer.exit

DataToDerBuffer.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.2.i = phi i32 [ %i.ag, %bb.h ], [ 0, %bb.g ], [ %i.aq, %bb.j ], [ -140, %bb.i ] ; 2 uses
  %.not85 = icmp eq ptr %6, null                  ; 2 uses
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %DataToDerBuffer.exit
  %i.ar = load i64, ptr %12, align 8, !tbaa !231
  store i64 %i.ar, ptr %6, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %DataToDerBuffer.exit, %bb.k
  %i.as = icmp eq i32 %.2.i, 0                    ; 2 uses
  %i.at = icmp eq i32 %4, 1
  %or.cond15 = and i1 %i.at, %i.as
  br i1 %or.cond15, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !22  ; 7 uses
  %i.av = load i32, ptr %i.n, align 4, !tbaa !41  ; 8 uses
  br i1 %i.u, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 506 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !116
  %.not18.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not18.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 592
  call void @FreeDer(ptr noundef nonnull %i.ay) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  br i1 %.not, label %wolfSSL_CTX_GetDevId.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  call void @FreeDer(ptr noundef nonnull %i.az) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, -4
  store i8 %i.bc, ptr %i.ba, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 -2, ptr %i.bd, align 8, !tbaa !121
  store ptr %i.au, ptr %i.az, align 8, !tbaa !118
  br label %ProcessBufferPrivKeyHandleDer.exit.thread.i

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 601 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, -4
  store i8 %i.bg, ptr %i.be, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 608
  store i32 -2, ptr %i.bh, align 16, !tbaa !232
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 592
  store ptr %i.au, ptr %i.bi, align 16, !tbaa !117
  store i8 1, ptr %i.aw, align 2, !tbaa !116
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 1364
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !147
  br label %ProcessBufferPrivKeyHandleDer.exit.thread.i

ProcessBufferPrivKeyHandleDer.exit.thread.i:      ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi i32 [ %i.bk, %bb.r ], [ -2, %bb.q ] ; 2 uses
  %i.bl = icmp ne i32 %.0.i.i.i, -2
  %or.cond.i.i.i.not = select i1 %.not, i1 true, i1 %i.bl
  br i1 %or.cond.i.i.i.not, label %wolfSSL_CTX_GetDevId.exit.i.i, label %bb.s

bb.s:                                             ; preds = %ProcessBufferPrivKeyHandleDer.exit.thread.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !148
  br label %wolfSSL_CTX_GetDevId.exit.i.i

wolfSSL_CTX_GetDevId.exit.i.i:                    ; preds = %bb.s, %ProcessBufferPrivKeyHandleDer.exit.thread.i, %bb.p
  %.not124.i.i = phi i1 [ false, %bb.s ], [ %.not, %ProcessBufferPrivKeyHandleDer.exit.thread.i ], [ true, %bb.p ]
  %.1.i.i.i = phi i32 [ %i.bn, %bb.s ], [ %.0.i.i.i, %ProcessBufferPrivKeyHandleDer.exit.thread.i ], [ -2, %bb.p ]
  %i.bo = icmp eq ptr %i.au, null
  %i.bp = and i1 %i.u, %.not124.i.i
  %i.bq = or i1 %i.bo, %i.bp
  br i1 %i.bq, label %ProcessBufferPrivateKey.exit, label %bb.t

bb.t:                                             ; preds = %wolfSSL_CTX_GetDevId.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 600
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 604
  %.048.ph.i.i = select i1 %i.u, ptr %i.br, ptr %i.bt ; 2 uses
  %.047.ph.i.i = select i1 %i.u, ptr %i.bs, ptr %i.bu ; 2 uses
  switch i32 %i.av, label %.thread112.fold.split.i.i [
    i32 0, label %bb.u
    i32 2025223203, label %bb.u
    i32 2025223208, label %.thread112.i.i
    i32 826901527, label %.thread131.i.i
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %.val.i.i = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.bv = getelementptr i8, ptr %i.au, i64 16
  %.val57.i.i = load i32, ptr %i.bv, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 0, ptr %i.j, align 4, !tbaa !41
  store i32 0, ptr %i.i, align 4, !tbaa !41
  %i.bw = call i32 @wc_RsaPrivateKeyValidate(ptr noundef %.val.i.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef %.val57.i.i) #23 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 1078
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 178
  %.in.in.i.i.i = select i1 %i.u, ptr %i.bz, ptr %i.by
  %.in.i.i.i = load i16, ptr %.in.in.i.i.i, align 2, !tbaa !233
  %i.ca = sext i16 %.in.i.i.i to i32
  store i8 1, ptr %.048.ph.i.i, align 1, !tbaa !52
  %i.cb = load i32, ptr %i.j, align 4, !tbaa !41  ; 2 uses
  store i32 %i.cb, ptr %.047.ph.i.i, align 4, !tbaa !41
  %.not.i11.i = icmp slt i32 %i.cb, %i.ca
  br i1 %i.u, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 1040 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = and i64 %i.cd, 48
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cg = and i64 %i.cd, -134217777
  store i64 %i.cg, ptr %i.cc, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.ch = icmp eq i32 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br i1 %i.ch, label %.thread131.i.i, label %ProcessBufferPrivateKey.exit

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br i1 %.not.i11.i, label %ProcessBufferPrivateKey.exit, label %.thread112.i.i

.thread131.i.i:                                   ; preds = %bb.y, %bb.t
  %i.ci = phi i1 [ true, %bb.y ], [ false, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.cj = call i32 @wc_ecc_init_ex(ptr noundef nonnull %11, ptr noundef %i.s, i32 noundef %.1.i.i.i) #23
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %.thread116.i.i

.thread116.i.i:                                   ; preds = %.thread131.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %.thread112.i.i

bb.aa:                                            ; preds = %.thread131.i.i
  store i32 0, ptr %i.h, align 4, !tbaa !41
  %i.cl = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !35
  %i.co = call i32 @wc_EccPrivateKeyDecode(ptr noundef %i.cl, ptr noundef nonnull %i.h, ptr noundef nonnull %11, i32 noundef %i.cn) #23 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 1080
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 182
  %.in.in.i64.i.i = select i1 %i.u, ptr %i.cr, ptr %i.cq
  %.in.i65.i.i = load i16, ptr %.in.in.i64.i.i, align 2, !tbaa !233
  %i.cs = sext i16 %.in.i65.i.i to i32
  %i.ct = call i32 @wc_ecc_size(ptr noundef nonnull %11) #23 ; 2 uses
  store i8 3, ptr %.048.ph.i.i, align 1, !tbaa !52
  store i32 %i.ct, ptr %.047.ph.i.i, align 4, !tbaa !41
  %.not123.i.i = icmp slt i32 %i.ct, %i.cs
  br i1 %i.u, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 1040 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = or i64 %i.cv, 134217728
  store i64 %i.cw, ptr %i.cu, align 8
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 1
  %i.cz = or i16 %i.cy, 16384
  store i16 %i.cz, ptr %i.cx, align 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.da = call i32 @wc_ecc_free(ptr noundef nonnull %11) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br i1 %i.ci, label %.thread112.i.i, label %ProcessBufferPrivateKey.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.db = call i32 @wc_ecc_free(ptr noundef nonnull %11) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br i1 %.not123.i.i, label %ProcessBufferPrivateKey.exit, label %.thread112.i.i

.thread112.fold.split.i.i:                        ; preds = %bb.t
  br label %.thread112.i.i

.thread112.i.i:                                   ; preds = %.thread112.fold.split.i.i, %bb.af, %bb.ae, %.thread116.i.i, %bb.z, %bb.t
  %.2.i88 = phi i32 [ %i.av, %.thread116.i.i ], [ %i.av, %bb.t ], [ 826901527, %bb.af ], [ 0, %bb.ae ], [ %i.av, %.thread112.fold.split.i.i ], [ 2025223203, %bb.z ] ; 2 uses
  %.2115.i.i = phi i1 [ false, %.thread116.i.i ], [ false, %bb.t ], [ false, %bb.af ], [ false, %bb.ae ], [ true, %.thread112.fold.split.i.i ], [ false, %bb.z ]
  %i.dc = icmp eq i32 %.2.i88, 0
  %or.cond.i.i = or i1 %.2115.i.i, %i.dc
  %spec.select56.i.i = select i1 %or.cond.i.i, i32 -463, i32 0
  br label %ProcessBufferPrivateKey.exit

ProcessBufferPrivateKey.exit:                     ; preds = %wolfSSL_CTX_GetDevId.exit.i.i, %bb.y, %bb.z, %bb.ae, %bb.af, %.thread112.i.i
  %.3.i = phi i32 [ %i.av, %wolfSSL_CTX_GetDevId.exit.i.i ], [ %.2.i88, %.thread112.i.i ], [ 826901527, %bb.af ], [ %i.av, %bb.ae ], [ 826901527, %bb.z ], [ %i.av, %bb.y ]
  %.3.i.i = phi i32 [ -173, %wolfSSL_CTX_GetDevId.exit.i.i ], [ %spec.select56.i.i, %.thread112.i.i ], [ -410, %bb.af ], [ %i.co, %bb.ae ], [ -409, %bb.z ], [ %i.bw, %bb.y ] ; 2 uses
  %i.dd = or i32 %.3.i.i, %.3.i
  %or.cond.i = icmp eq i32 %i.dd, 0
  br i1 %or.cond.i, label %.thread133, label %ProcessBufferCertTypes.exit

bb.ag:                                            ; preds = %bb.l
  br i1 %i.as, label %bb.ah, label %ProcessBufferResetSuites.exit

bb.ah:                                            ; preds = %bb.ag
  %.not86 = icmp eq i32 %7, 0
  br i1 %.not86, label %.thread117, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !120
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.u, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !149
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.di = phi ptr [ %i.df, %bb.aj ], [ %i.dh, %bb.al ], [ null, %bb.ak ] ; 6 uses
  %i.dj = load i64, ptr %12, align 8, !tbaa !231  ; 13 uses
  %.not68.i = icmp slt i64 %i.dj, %2
  br i1 %.not68.i, label %bb.an, label %.thread117

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.dk = sub nsw i64 %2, %i.dj                   ; 2 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 3 uses
  %i.dm = add i32 %i.dl, 27                       ; 6 uses
  %i.dn = icmp ult i32 %i.dm, 1025                ; 6 uses
  br i1 %i.dn, label %.lr.ph.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = zext i32 %i.dm to i64
  %i.dp = call ptr @wolfSSL_Malloc(i64 noundef %i.do) #23 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %bb.an
  %.sroa.0.0.ph.i = phi ptr [ %i.f, %bb.an ], [ %i.dp, %bb.ao ] ; 17 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.g, align 8, !tbaa !22
  %i.ds = getelementptr inbounds i8, ptr %1, i64 %i.dj ; 3 uses
  store i64 0, ptr %12, align 8, !tbaa !231
  br i1 %i.ae, label %.lr.ph.i.split.us.preheader, label %.lr.ph.i.split.preheader

.lr.ph.i.split.preheader:                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4, !tbaa !41
  %i.dt = call i32 @GetSequence_ex(ptr noundef %i.ds, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef %i.dl, i32 noundef 0) #23
  %.pre.i.i.i.peel = load i32, ptr %i.d, align 4, !tbaa !41
  %i.du = load i32, ptr %i.e, align 4
  %i.dv = icmp slt i32 %i.dt, 0
  %i.dw = select i1 %i.dv, i32 0, i32 %i.du
  %i.dx = add nsw i32 %i.dw, %.pre.i.i.i.peel     ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.dy = sext i32 %i.dx to i64
  store i64 %i.dy, ptr %12, align 8, !tbaa !231
  %i.dz = icmp sgt i32 %i.dx, 0
  %i.ea = icmp sle i32 %i.dx, %i.dl
  %.not26.i.i.peel = and i1 %i.ea, %i.dz
  br i1 %.not26.i.i.peel, label %DataToDerBuffer.exit.i.peel, label %.loopexit.sink.split.i.sink.split

DataToDerBuffer.exit.i.peel:                      ; preds = %.lr.ph.i.split.preheader
  %i.eb = call i32 @AllocCopyDer(ptr noundef nonnull %i.g, ptr noundef %i.ds, i32 noundef %i.dx, i32 noundef %4, ptr noundef %i.di) #23 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %DataToDerBuffer.exit.thread81.i.peel, label %.loopexit.sink.split.i.sink.split

DataToDerBuffer.exit.thread81.i.peel:             ; preds = %DataToDerBuffer.exit.i.peel
  %i.ed = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.ee = load ptr, ptr %i.g, align 8, !tbaa !22  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !35 ; 4 uses
  %i.eh = add i32 %i.eg, 3
  %.not.i71.i.peel = icmp ugt i32 %i.eh, %i.dm
  br i1 %.not.i71.i.peel, label %.loopexit.sink.split.i.sink.split, label %bb.ap

bb.ap:                                            ; preds = %DataToDerBuffer.exit.thread81.i.peel
  %i.ei = lshr i32 %i.eg, 16
  %i.ej = trunc i32 %i.ei to i8
  store i8 %i.ej, ptr %.sroa.0.0.ph.i, align 1, !tbaa !52
  %i.ek = lshr i32 %i.eg, 8
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1
  store i8 %i.el, ptr %i.em, align 1, !tbaa !52
  %i.en = trunc i32 %i.eg to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !52
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3
  %i.eq = load ptr, ptr %i.ee, align 8, !tbaa !34
  %i.er = load i32, ptr %i.ef, align 8, !tbaa !35
  %i.es = zext i32 %i.er to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr align 1 %i.eq, i64 %i.es, i1 false)
  %i.et = load i32, ptr %i.ef, align 8, !tbaa !35
  %i.eu = add i32 %i.et, 3                        ; 3 uses
  br i1 %i.x, label %bb.aq, label %ProcessUserCert.exit.thread.i.peel

bb.aq:                                            ; preds = %bb.ap
  %i.ev = call i32 @AddCA(ptr noundef %i.ed, ptr noundef nonnull %i.g, i32 noundef 1, i32 noundef %8) ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %ProcessUserCert.exit.thread.i.peel, label %.loopexit.sink.split.i.sink.split

ProcessUserCert.exit.thread.i.peel:               ; preds = %bb.ap, %bb.aq
  call void @FreeDer(ptr noundef nonnull %i.g) #23
  %i.ex = load i64, ptr %12, align 8, !tbaa !231
  %i.ey = add nsw i64 %i.ex, %i.dj                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.ez = icmp slt i64 %i.ey, %2
  br i1 %i.ez, label %.lr.ph.i.split, label %.loopexit.i

.lr.ph.i.split.us.preheader:                      ; preds = %.lr.ph.i
  %i.fa = and i64 %i.dk, 4294967295
  %i.fb = call i32 @PemToDer(ptr noundef %i.ds, i64 noundef %i.fa, i32 noundef %4, ptr noundef nonnull %i.g, ptr noundef %i.di, ptr noundef nonnull %12, ptr noundef null) #23 ; 2 uses
  %.not.i.i92.us.peel = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i92.us.peel, label %DataToDerBuffer.exit.thread81.i.us.peel, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.split.us.preheader
  call void @FreeDer(ptr noundef nonnull %i.g) #23
  br label %.loopexit.sink.split.i.sink.split

DataToDerBuffer.exit.thread81.i.us.peel:          ; preds = %.lr.ph.i.split.us.preheader
  %i.fc = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !22  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !35 ; 4 uses
  %i.fg = add i32 %i.ff, 3
  %.not.i71.i.us.peel = icmp ugt i32 %i.fg, %i.dm
  br i1 %.not.i71.i.us.peel, label %.loopexit.sink.split.i.sink.split, label %bb.as

bb.as:                                            ; preds = %DataToDerBuffer.exit.thread81.i.us.peel
  %i.fh = lshr i32 %i.ff, 16
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %.sroa.0.0.ph.i, align 1, !tbaa !52
  %i.fj = lshr i32 %i.ff, 8
  %i.fk = trunc i32 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 1
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !52
  %i.fm = trunc i32 %i.ff to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 2
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 3
  %i.fp = load ptr, ptr %i.fd, align 8, !tbaa !34
  %i.fq = load i32, ptr %i.fe, align 8, !tbaa !35
  %i.fr = zext i32 %i.fq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fo, ptr align 1 %i.fp, i64 %i.fr, i1 false)
  %i.fs = load i32, ptr %i.fe, align 8, !tbaa !35
  %i.ft = add i32 %i.fs, 3                        ; 3 uses
  br i1 %i.x, label %bb.at, label %ProcessUserCert.exit.thread.i.us.peel

bb.at:                                            ; preds = %bb.as
  %i.fu = call i32 @AddCA(ptr noundef %i.fc, ptr noundef nonnull %i.g, i32 noundef 1, i32 noundef %8) ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %ProcessUserCert.exit.thread.i.us.peel, label %.loopexit.sink.split.i.sink.split

ProcessUserCert.exit.thread.i.us.peel:            ; preds = %bb.as, %bb.at
  call void @FreeDer(ptr noundef nonnull %i.g) #23
  %i.fw = load i64, ptr %12, align 8, !tbaa !231
  %i.fx = add nsw i64 %i.fw, %i.dj                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %i.fy = icmp slt i64 %i.fx, %2
  br i1 %i.fy, label %.lr.ph.i.split.us, label %.loopexit.i

.lr.ph.i.split.us:                                ; preds = %ProcessUserCert.exit.thread.i.us.peel, %bb.av
  %.049117.i.us = phi i32 [ %i.he, %bb.av ], [ 1, %ProcessUserCert.exit.thread.i.us.peel ] ; 5 uses
  %.053115.i.us = phi i64 [ %i.hd, %bb.av ], [ %i.fx, %ProcessUserCert.exit.thread.i.us.peel ] ; 7 uses
  %.078113.i.us = phi i32 [ %i.gy, %bb.av ], [ %i.ft, %ProcessUserCert.exit.thread.i.us.peel ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store ptr null, ptr %i.g, align 8, !tbaa !22
  %i.fz = getelementptr inbounds i8, ptr %1, i64 %.053115.i.us
  %i.ga = sub nsw i64 %2, %.053115.i.us
  store i64 0, ptr %12, align 8, !tbaa !231
  %i.gb = and i64 %i.ga, 4294967295
  %i.gc = call i32 @PemToDer(ptr noundef %i.fz, i64 noundef %i.gb, i32 noundef %4, ptr noundef nonnull %i.g, ptr noundef %i.di, ptr noundef nonnull %12, ptr noundef null) #23 ; 3 uses
  %.not.i.i92.us = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i92.us, label %DataToDerBuffer.exit.thread81.i.us, label %ProcessUserCert.exit.i.us

DataToDerBuffer.exit.thread81.i.us:               ; preds = %.lr.ph.i.split.us
  %i.gd = load ptr, ptr %i.dr, align 8, !tbaa !32
  %i.ge = load ptr, ptr %i.g, align 8, !tbaa !22  ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !35 ; 4 uses
  %i.gh = add i32 %.078113.i.us, 3                ; 3 uses
  %i.gi = add i32 %i.gg, %i.gh
  %.not.i71.i.us = icmp ugt i32 %i.gi, %i.dm
  br i1 %.not.i71.i.us, label %.loopexit.sink.split.i.sink.split, label %bb.au

end_hunk_0
