Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ssl?download=true
inline.NumInlined: 160
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@AddSigner:bb.a

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01829.i, i64 104
  %.018.i = load ptr, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  %.not23.i = icmp eq ptr %.018.i, null
  br i1 %.not23.i, label %AlreadySigner.exit.thread23, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01829.i = phi ptr [ %.018.i, %bb.d ], [ %.01827.i, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01829.i, i64 76 ; 2 uses
  %i.m = load i128, ptr %i.c, align 1
  %i.n = load i128, ptr %i.l, align 1
  %i.o = xor i128 %i.m, %i.n
  %i.p = getelementptr i8, ptr %i.c, i64 16
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
  br i1 %i.z, label %bb.e, label %bb.d

AlreadySigner.exit.thread23:                      ; preds = %bb.d, %bb.c
  %i.aa = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.e) #23 ; 0 uses
  br label %AlreadySigner.exit.thread

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.e) #23 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  tail call void @FreeSigner(ptr noundef nonnull %1, ptr noundef %i.ad) #23
  br label %bb.g

AlreadySigner.exit.thread:                        ; preds = %bb.b, %AlreadySigner.exit.thread23
  %i.ae = load i32, ptr %i.c, align 1
  %i.af = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.e) #23
  %.not20 = icmp eq i32 %i.af, 0
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %AlreadySigner.exit.thread
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ah = urem i32 %i.ag, 11
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !46
  store ptr %1, ptr %i.aj, align 8, !tbaa !37
  %i.am = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.e) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %AlreadySigner.exit.thread, %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ -173, %bb.a ], [ -106, %AlreadySigner.exit.thread ]
  ret i32 %.0
}

declare void @FreeSigner(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @AddCA(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.DecodedCert], align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = load ptr, ptr %1, align 8, !tbaa !22     ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @FreeDer(ptr noundef nonnull %1) #23
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  call void @InitDecodedCert(ptr noundef nonnull %4, ptr noundef %i.c, i32 noundef %i.e, ptr noundef %i.g) #23
  %i.h = call i32 @ParseCert(ptr noundef nonnull %4, i32 noundef 6, i32 noundef %3, ptr noundef nonnull %0) #23 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 804 ; 3 uses
  %i.j = icmp ne i32 %3, 0
  %i.k = icmp eq i32 %i.h, 0                      ; 2 uses
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load i32, ptr %i.l, align 16, !tbaa !50
  switch i32 %i.m, label %.thread [
    i32 2025223208, label %bb.e
    i32 2025223203, label %bb.e
    i32 826901527, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.o = load i16, ptr %i.n, align 2, !tbaa !19   ; 2 uses
  %i.p = icmp slt i16 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext nneg i16 %i.o to i32
  %i.t = icmp ult i32 %i.r, %i.s
  %or.cond82 = select i1 %i.p, i1 true, i1 %i.t
  br i1 %or.cond82, label %.critedge92.thread, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.v = load i16, ptr %i.u, align 4, !tbaa !20   ; 2 uses
  %i.w = icmp slt i16 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext nneg i16 %i.v to i32
  %i.aa = icmp ult i32 %i.y, %i.z
  %or.cond86 = select i1 %i.w, i1 true, i1 %i.aa
  br i1 %or.cond86, label %.critedge92.thread, label %.thread

bb.g:                                             ; preds = %bb.c
  br i1 %i.k, label %.thread, label %.critedge92.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.d, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 1032
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i32 %i.ac, 16
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = and i32 %2, -3
  %i.ag = icmp ne i32 %i.af, 1
  %or.cond5 = and i1 %i.ag, %i.ae
  br i1 %or.cond5, label %.critedge92.thread, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ah = icmp eq i32 %2, 1
  %i.ai = and i32 %i.ac, 131216
  %i.aj = icmp ne i32 %i.ai, 144
  %or.cond88 = or i1 %i.ah, %i.aj
  br i1 %or.cond88, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 858
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !186
  %i.am = and i16 %i.al, 4
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %.critedge92.thread, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h
  %i.ao = load i32, ptr %i.i, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.aq = call i32 @wc_LockMutex(ptr noundef nonnull %i.ap) #23
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.j, label %.critedge89

bb.j:                                             ; preds = %.critedge
  %i.ar = call i32 @llvm.bswap.i32(i32 %i.ao)
  %i.as = urem i32 %i.ar, 11
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at
  %.01827.i = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %.not2328.i = icmp eq ptr %.01827.i, null
  br i1 %.not2328.i, label %AlreadySigner.exit.thread106, label %.lr.ph.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.01829.i, i64 104
  %.018.i = load ptr, ptr %i.av, align 8, !tbaa !37 ; 2 uses
  %.not23.i = icmp eq ptr %.018.i, null
  br i1 %.not23.i, label %AlreadySigner.exit.thread106, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.01829.i = phi ptr [ %.018.i, %bb.k ], [ %.01827.i, %bb.j ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01829.i, i64 76 ; 2 uses
  %i.ax = load i128, ptr %i.i, align 1
  %i.ay = load i128, ptr %i.aw, align 1
  %i.az = xor i128 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %i.i, i64 16
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = load i32, ptr %i.ba, align 1
  %i.bd = load i32, ptr %i.bb, align 1
  %i.be = zext i32 %i.bc to i128
  %i.bf = zext i32 %i.bd to i128
  %i.bg = xor i128 %i.be, %i.bf
  %i.bh = or i128 %i.az, %i.bg
  %i.bi = icmp ne i128 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %AlreadySigner.exit, label %bb.k

AlreadySigner.exit.thread106:                     ; preds = %bb.k, %bb.j
  %i.bl = call i32 @wc_UnLockMutex(ptr noundef nonnull %i.ap) #23 ; 0 uses
  br label %.critedge89

AlreadySigner.exit:                               ; preds = %.lr.ph.i
  %i.bm = call i32 @wc_UnLockMutex(ptr noundef nonnull %i.ap) #23 ; 0 uses
  br label %.critedge92.thread

.critedge89:                                      ; preds = %.critedge, %AlreadySigner.exit.thread106
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.bo = call ptr @MakeSigner(ptr noundef %i.bn) #23 ; 6 uses
  %.not77.not.not = icmp eq ptr %i.bo, null
  br i1 %.not77.not.not, label %.critedge92.thread120, label %bb.l

.critedge92.thread120:                            ; preds = %.critedge89
  call void @FreeDecodedCert(ptr noundef nonnull %4) #23
  br label %bb.p

bb.l:                                             ; preds = %.critedge89
  %i.bp = call i32 @FillSigner(ptr noundef nonnull %i.bo, ptr noundef nonnull %4, i32 noundef %2, ptr noundef nonnull %i.a) #23
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %.critedge92.a

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 76
  %i.bs = load i32, ptr %i.br, align 1
  %i.bt = call i32 @wc_LockMutex(ptr noundef nonnull %i.ap) #23
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.n, label %.critedge92.a

bb.n:                                             ; preds = %bb.m
  %i.bv = call i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bw = urem i32 %i.bv, 11
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !46
  store ptr %i.bo, ptr %i.by, align 8, !tbaa !37
  %i.cb = call i32 @wc_UnLockMutex(ptr noundef nonnull %i.ap) #23 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %.not78 = icmp eq ptr %i.cd, null
  br i1 %.not78, label %.critedge92.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !35
  call void %i.cd(ptr noundef %i.ce, i32 noundef %i.cf, i32 noundef %2) #23
  br label %.critedge92.thread

.critedge92.thread:                               ; preds = %bb.o, %bb.n, %bb.g, %.thread, %AlreadySigner.exit, %bb.i, %bb.f, %bb.e
  %.2.ph = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %i.h, %bb.g ], [ -357, %bb.i ], [ 0, %AlreadySigner.exit ], [ -357, %.thread ], [ -410, %bb.f ], [ -409, %bb.e ]
  call void @FreeDecodedCert(ptr noundef nonnull %4) #23
  %i.cg = call i32 @llvm.umax.i32(i32 %.2.ph, i32 1)
  br label %bb.p

.critedge92.a:                                    ; preds = %bb.m, %bb.l
  call void @FreeDecodedCert(ptr noundef nonnull %4) #23
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !18
  call void @FreeSigner(ptr noundef nonnull %i.bo, ptr noundef %i.ch) #23
  br label %bb.p

bb.p:                                             ; preds = %.critedge92.thread120, %.critedge92.thread, %.critedge92.a
  %.2115 = phi i32 [ %i.cg, %.critedge92.thread ], [ -106, %.critedge92.a ], [ -303, %.critedge92.thread120 ]
  call void @FreeDer(ptr noundef nonnull %1) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  %.069 = phi i32 [ -173, %bb.b ], [ %.2115, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i32 %.069
}

declare i32 @ParseCert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MakeSigner(ptr noundef) local_unnamed_addr #2

declare i32 @FillSigner(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -173, 2) i32 @RemoveCA(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = tail call i32 @wc_LockMutex(ptr noundef nonnull %i.d) #23
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.g = urem i32 %i.f, 11
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %.02739 = load ptr, ptr %i.i, align 8, !tbaa !37 ; 2 uses
  %.not3240 = icmp eq ptr %.02739, null
  br i1 %.not3240, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.02742 = phi ptr [ %.027, %bb.e ], [ %.02739, %bb.c ] ; 5 uses
  %.02541 = phi ptr [ %i.ag, %bb.e ], [ %i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.02742, i64 96
  %i.k = load i8, ptr %i.j, align 8, !tbaa !40
  %i.l = zext i8 %i.k to i32
  %i.m = icmp eq i32 %2, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.02742, i64 76 ; 2 uses
  %i.o = load i128, ptr %1, align 1
  %i.p = load i128, ptr %i.n, align 1
  %i.q = xor i128 %i.o, %i.p
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %i.t = load i32, ptr %i.r, align 1
  %i.u = load i32, ptr %i.s, align 1
  %i.v = zext i32 %i.t to i128
  %i.w = zext i32 %i.u to i128
  %i.x = xor i128 %i.v, %i.w
  %i.y = or i128 %i.q, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.02742, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  store ptr %i.ad, ptr %.02541, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  tail call void @FreeSigner(ptr noundef nonnull %.02742, ptr noundef %i.af) #23
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02742, i64 104 ; 2 uses
  %.027 = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %.not32 = icmp eq ptr %.027, null
  br i1 %.not32, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %bb.c, %.thread
  %.2 = phi i32 [ 1, %.thread ], [ 0, %bb.c ], [ 0, %bb.e ]
  %i.ah = tail call i32 @wc_UnLockMutex(ptr noundef nonnull %i.d) #23 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.029 = phi i32 [ %.2, %.loopexit ], [ -173, %bb.a ], [ -106, %bb.b ]
  ret i32 %.029
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @EvictSessionFromCache(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 3 uses
  fence seq_cst
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 7
  %.not19.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i, label %.preheader.i.thread20, label %.lr.ph.i.preheader

.preheader.i.thread20:                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !42
  br label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 3 uses
  store i8 0, ptr %i.a, align 1, !tbaa !52
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 7
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.preheader.i.thread26, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 3 uses
  store i8 0, ptr %i.d, align 1, !tbaa !52
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.1 = icmp eq i64 %i.i, 0
  br i1 %.not.i.1, label %.preheader.i.thread26, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i8 0, ptr %i.g, align 1, !tbaa !52
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 7
  %.not.i.2 = icmp eq i64 %i.l, 0
  br i1 %.not.i.2, label %.preheader.i.thread26, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 3 uses
  store i8 0, ptr %i.j, align 1, !tbaa !52
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 7
  %.not.i.3 = icmp eq i64 %i.o, 0
  br i1 %.not.i.3, label %.preheader.i.thread26, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 3 uses
  store i8 0, ptr %i.m, align 1, !tbaa !52
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 7
  %.not.i.4 = icmp eq i64 %i.r, 0
  br i1 %.not.i.4, label %.preheader.i.thread26, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 3 uses
  store i8 0, ptr %i.p, align 1, !tbaa !52
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 7
  %.not.i.5 = icmp eq i64 %i.u, 0
  br i1 %.not.i.5, label %.preheader.i.thread26, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store i8 0, ptr %i.s, align 1, !tbaa !52
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 7
  %.not.i.6 = icmp eq i64 %i.x, 0
  br i1 %.not.i.6, label %.preheader.i.thread26, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !52
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 7
  %.not.i.7 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.7, label %.preheader.i, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 110 ; 3 uses
  store i8 0, ptr %i.y, align 1, !tbaa !52
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 7
  %.not.i.8 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.8, label %.preheader.i.thread26, label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 111 ; 3 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !52
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 7
  %.not.i.9 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.9, label %.preheader.i.thread26, label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %.lr.ph.i.9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store i8 0, ptr %i.ae, align 1, !tbaa !52
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = and i64 %i.ai, 7
  %.not.i.10 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.10, label %.preheader.i.thread26, label %.lr.ph.i.11

.lr.ph.i.11:                                      ; preds = %.lr.ph.i.10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 3 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !52
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 7
  %.not.i.11 = icmp eq i64 %i.am, 0
  br i1 %.not.i.11, label %.preheader.i.thread26, label %.lr.ph.i.12
end_hunk_0
begin_hunk_1_@wolfSSL_CTX_use_certificate_buffer:bb.a
  br i1 %.not, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  %i.a = tail call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr nonnull poison)
  br label %bb.b

.split7:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2
  %.not8 = icmp eq i16 %i.d, 0
  %i.e = zext i1 %.not8 to i32
  %i.f = tail call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %i.e, ptr nonnull poison)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split7
  %phi.call = phi i32 [ %i.a, %.split ], [ %i.f, %.split7 ]
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_use_PrivateKey_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %.split7

.split:                                           ; preds = %bb.a
  %i.b = call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1, ptr nonnull poison)
  br label %bb.b

.split7:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.d = load i16, ptr %i.c, align 1
  %i.e = and i16 %i.d, 2
  %.not8 = icmp eq i16 %i.e, 0
  %i.f = zext i1 %.not8 to i32
  %i.g = call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.f, ptr nonnull poison)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split7
  %phi.call = phi i32 [ %i.b, %.split ], [ %i.g, %.split7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_use_certificate_chain_buffer_format(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.split, label %.split6

.split:                                           ; preds = %bb.a
  %i.a = tail call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1, ptr nonnull poison)
  br label %bb.b

.split6:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2
  %.not7 = icmp eq i16 %i.d, 0
  %i.e = zext i1 %.not7 to i32
  %i.f = tail call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %i.e, ptr nonnull poison)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split6
  %phi.call = phi i32 [ %i.a, %.split ], [ %i.f, %.split6 ]
  ret i32 %phi.call
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_CTX_use_certificate_chain_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %.split.i, label %.split6.i

.split.i:                                         ; preds = %bb.a
  %i.a = tail call i32 @ProcessBuffer(ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 1, ptr nonnull poison)
  br label %wolfSSL_CTX_use_certificate_chain_buffer_format.exit

.split6.i:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2
  %.not7.i = icmp eq i16 %i.d, 0
  %i.e = zext i1 %.not7.i to i32
  %i.f = tail call i32 @ProcessBuffer(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %i.e, ptr nonnull poison)
  br label %wolfSSL_CTX_use_certificate_chain_buffer_format.exit

wolfSSL_CTX_use_certificate_chain_buffer_format.exit: ; preds = %.split.i, %.split6.i
  %phi.call.i = phi i32 [ %i.a, %.split.i ], [ %i.f, %.split6.i ]
  ret i32 %phi.call.i
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_certificate_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
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
  %i.g = tail call i32 @ProcessBuffer(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %i.f, ptr nonnull poison)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wolfSSL_use_PrivateKey_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i64, ptr %i.d, align 16
  %i.f = and i64 %i.e, 128
  %.not = icmp eq i64 %i.f, 0
  %i.g = zext i1 %.not to i32
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
  %i.f = tail call ptr @wolfSSL_Malloc(i64 noundef %i.e) #23 ; 4 uses
  %i.g = sext i32 %4 to i64                       ; 2 uses
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef %i.g) #23 ; 4 uses
  %i.i = icmp ne ptr %i.f, null                   ; 2 uses
  %i.j = icmp ne ptr %i.h, null                   ; 2 uses
  %or.cond5.not = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond5.not, label %bb.c, label %5

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %3, i64 %i.g, i1 false)
  %i.k = tail call fastcc i32 @wolfssl_set_tmp_dh(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef %2, ptr noundef nonnull %i.h, i32 noundef %4)
  br label %5

5:                                                ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %i.k, %bb.c ], [ -125, %bb.b ]  ; 3 uses
  %.not71 = icmp eq i32 %.2, 1
  br i1 %.not71, label %.thread65, label %bb.d

bb.d:                                             ; preds = %5
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.f) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.j, label %bb.g, label %.thread65

bb.g:                                             ; preds = %bb.f
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.h) #23
  br label %.thread65

.thread65:                                        ; preds = %bb.a, %bb.f, %bb.g, %5
  %.256 = phi i32 [ 1, %5 ], [ %.2, %bb.f ], [ %.2, %bb.g ], [ 0, %bb.a ]
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
  %i.ax = trunc i64 %i.ah to i32
  %i.ay = lshr i32 %i.ax, 4
  %i.az = and i32 %i.ay, 3
  %i.ba = load i16, ptr %i.ae, align 2
  tail call void @InitSuites(ptr noundef %i.ad, i16 %i.ba, i32 noundef %i.ag, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext %i.ak, i16 noundef zeroext %i.an, i16 noundef zeroext %i.aq, i16 noundef zeroext 1, i16 noundef zeroext %i.at, i16 noundef zeroext %i.aw, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1, i32 noundef %i.az) #23
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
end_hunk_1
