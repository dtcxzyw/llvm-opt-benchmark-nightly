Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@unixShmLock:bb.a
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !570
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !3489
  %i.ah = trunc i32 %i.c to i16
  %i.ai = xor i16 %i.ah, -1
  %i.aj = and i16 %i.ag, %i.ai
  store i16 %i.aj, ptr %i.af, align 2, !tbaa !3489
  br label %.thread107

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ak = getelementptr i8, ptr %0, i64 16
  %.val97 = load ptr, ptr %i.ak, align 8, !tbaa !1390
  %i.al = getelementptr i8, ptr %.val97, i64 56
  %.val97.val = load ptr, ptr %i.al, align 8, !tbaa !1419
  %i.am = getelementptr i8, ptr %.val97.val, i64 24
  %.val97.val.val = load i32, ptr %i.am, align 8, !tbaa !1411 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.an = icmp sgt i32 %.val97.val.val, -1
  br i1 %i.an, label %bb.l, label %._crit_edge128

._crit_edge128:                                   ; preds = %bb.k
  %.pre129 = sext i32 %2 to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %1, 120
  store i16 2, ptr %6, align 8, !tbaa !1403
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.ap, align 2, !tbaa !1402
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !1404
  %i.as = sext i32 %2 to i64                      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !1401
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 176), align 16, !tbaa !836
  %i.av = call i32 (i32, i32, ...) %i.au(i32 noundef %.val97.val.val, i32 noundef 6, ptr noundef nonnull %6) #58, !inline_history !136
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %unixShmSystemLock.exit, label %bb.m

unixShmSystemLock.exit:                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %.thread107

bb.m:                                             ; preds = %._crit_edge128, %bb.l
  %.pre-phi = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %i.ax = sext i32 %1 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ax
  %i.az = shl nsw i64 %.pre-phi, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ay, i8 0, i64 %i.az, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %i.bb = trunc i32 %i.c to i16
  %i.bc = xor i16 %i.bb, -1
  %i.bd = load <2 x i16>, ptr %i.ba, align 2, !tbaa !783
  %i.be = insertelement <2 x i16> poison, i16 %i.bc, i64 0
  %i.bf = shufflevector <2 x i16> %i.be, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.bg = and <2 x i16> %i.bd, %i.bf
  store <2 x i16> %i.bg, ptr %i.ba, align 2, !tbaa !783
  br label %.thread107

bb.n:                                             ; preds = %sqlite3_mutex_enter.exit
  br i1 %.not91, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.n
  %.not93117 = icmp sgt i32 %2, 0                 ; 2 uses
  br i1 %.not93117, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bh = sext i32 %1 to i64
  %i.bi = sext i32 %i.a to i64
  br label %.lr.ph

bb.o:                                             ; preds = %bb.n
  %i.bj = sext i32 %1 to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bj ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !570 ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread107, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = icmp eq i32 %i.bl, 0
  br i1 %i.bn, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr i8, ptr %0, i64 16
  %.val96 = load ptr, ptr %i.bo, align 8, !tbaa !1390
  %i.bp = getelementptr i8, ptr %.val96, i64 56
  %.val96.val = load ptr, ptr %i.bp, align 8, !tbaa !1419
  %i.bq = getelementptr i8, ptr %.val96.val, i64 24
  %.val96.val.val = load i32, ptr %i.bq, align 8, !tbaa !1411 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.br = icmp sgt i32 %.val96.val.val, -1
  br i1 %i.br, label %bb.r, label %.thread110

bb.r:                                             ; preds = %bb.q
  %i.bs = add nsw i32 %1, 120
  store i16 0, ptr %5, align 8, !tbaa !1403
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.bt, align 2, !tbaa !1402
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !1404
  %i.bw = sext i32 %2 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !1401
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 176), align 16, !tbaa !836
  %i.bz = call i32 (i32, i32, ...) %i.by(i32 noundef %.val96.val.val, i32 noundef 6, ptr noundef nonnull %5) #58, !inline_history !136
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %bb.s, label %..thread110_crit_edge

..thread110_crit_edge:                            ; preds = %bb.r
  %.pre.pre = load i32, ptr %i.bk, align 4, !tbaa !570
  br label %.thread110

.thread110:                                       ; preds = %..thread110_crit_edge, %bb.q
  %.pre = phi i32 [ %.pre.pre, %..thread110_crit_edge ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %.thread

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  br label %.thread107

.thread:                                          ; preds = %bb.p, %.thread110
  %i.cb = phi i32 [ %i.bl, %bb.p ], [ %.pre, %.thread110 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !3489
  %i.ce = trunc i32 %i.c to i16
  %i.cf = or i16 %i.cd, %i.ce
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !3489
  %i.cg = add nsw i32 %i.cb, 1
  store i32 %i.cg, ptr %i.bk, align 4, !tbaa !570
  br label %.thread107

bb.t:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not93 = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %.not93, label %.lr.ph, label %._crit_edge, !llvm.loop !3487

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !570
  %.not92 = icmp eq i32 %i.ci, 0
  br i1 %.not92, label %bb.t, label %.thread107

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.cj = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.cj, align 8, !tbaa !1390
  %i.ck = getelementptr i8, ptr %.val, i64 56
  %.val.val = load ptr, ptr %i.ck, align 8, !tbaa !1419
  %i.cl = getelementptr i8, ptr %.val.val, i64 24
  %.val.val.val = load i32, ptr %i.cl, align 8, !tbaa !1411 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.cm = icmp sgt i32 %.val.val.val, -1
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.cn = add nsw i32 %1, 120
  store i16 1, ptr %4, align 8, !tbaa !1403
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.co, align 2, !tbaa !1402
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !1404
  %i.cr = sext i32 %2 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !1401
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 176), align 16, !tbaa !836
  %i.cu = call i32 (i32, i32, ...) %i.ct(i32 noundef %.val.val.val, i32 noundef 6, ptr noundef nonnull %4) #58, !inline_history !136
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %unixShmSystemLock.exit103, label %bb.v

unixShmSystemLock.exit103:                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %.thread107

bb.v:                                             ; preds = %bb.u, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !3488
  %i.cy = trunc i32 %i.c to i16
  %i.cz = or i16 %i.cx, %i.cy
  store i16 %i.cz, ptr %i.cw, align 4, !tbaa !3488
  br i1 %.not93117, label %.lr.ph121.preheader, label %.thread107

.lr.ph121.preheader:                              ; preds = %bb.v
  %i.da = sext i32 %1 to i64
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = getelementptr i8, ptr %i.g, i64 %i.db
  %scevgep = getelementptr i8, ptr %i.dc, i64 64
  %i.dd = add i32 %1, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.a, i32 %i.dd)
  %i.de = xor i32 %1, -1
  %i.df = add i32 %smax, %i.de
  %i.dg = zext i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 -1, i64 %i.di, i1 false), !tbaa !570
  br label %.thread107

.thread107:                                       ; preds = %.lr.ph, %.lr.ph121.preheader, %bb.v, %bb.o, %unixShmSystemLock.exit103, %bb.s, %unixShmSystemLock.exit, %bb.m, %.critedge, %.thread
  %.4 = phi i32 [ 0, %.critedge ], [ 0, %.thread ], [ 5, %bb.s ], [ 0, %bb.m ], [ 5, %unixShmSystemLock.exit ], [ 0, %bb.v ], [ 5, %unixShmSystemLock.exit103 ], [ 5, %bb.o ], [ 0, %.lr.ph121.preheader ], [ 5, %.lr.ph ] ; 2 uses
  %i.dj = load ptr, ptr %i.w, align 8, !tbaa !1416 ; 2 uses
  %.not.i104 = icmp eq ptr %i.dj, null
  br i1 %.not.i104, label %sqlite3_mutex_leave.exit, label %bb.w

bb.w:                                             ; preds = %.thread107
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.dk(ptr noundef nonnull %i.dj) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.w, %.thread107, %bb.f, %bb.e, %bb.b, %bb.a
  %.080 = phi i32 [ 5130, %bb.b ], [ 5130, %bb.a ], [ 0, %bb.e ], [ 0, %bb.f ], [ %.4, %.thread107 ], [ %.4, %bb.w ]
  ret i32 %.080
}

; Function Attrs: nounwind uwtable
define internal void @unixShmBarrier(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  fence seq_cst
  %i.a = load ptr, ptr @unixBigLock, align 8, !tbaa !740 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %unixLeaveMutex.exit, label %unixEnterMutex.exit

unixEnterMutex.exit:                              ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.b(ptr noundef nonnull %i.a) #58, !inline_history !27
  %.pr = load ptr, ptr @unixBigLock, align 8, !tbaa !740 ; 2 uses
  %.not.i.i1 = icmp eq ptr %.pr, null
  br i1 %.not.i.i1, label %unixLeaveMutex.exit, label %bb.b

bb.b:                                             ; preds = %unixEnterMutex.exit
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.c(ptr noundef nonnull %.pr) #58, !inline_history !28
  br label %unixLeaveMutex.exit

unixLeaveMutex.exit:                              ; preds = %bb.a, %unixEnterMutex.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unixShmUnmap(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1407 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %unixLeaveMutex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1409 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1416 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.g(ptr noundef nonnull %i.f) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %sqlite3_mutex_enter.exit
  %.0 = phi ptr [ %i.h, %sqlite3_mutex_enter.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr %.0, align 8, !tbaa !3491  ; 2 uses
  %.not = icmp eq ptr %i.i, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !3490

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1424
  store ptr %i.l, ptr %.0, align 8, !tbaa !3491
  %i.m = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i24 = icmp eq i32 %i.m, 0
  br i1 %.not.i24, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.o(ptr noundef nonnull %i.n) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.b) #58, !inline_history !13
  %i.r = sext i32 %i.q to i64
  %i.s = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.t = sub nsw i64 %i.s, %i.r
  store i64 %i.t, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.v = add nsw i64 %i.u, -1
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.w(ptr noundef nonnull %i.b) #58, !inline_history !749
  %i.x = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.y(ptr noundef nonnull %i.x) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.i:                                             ; preds = %bb.e
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.z(ptr noundef nonnull %i.b) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.h, %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !1407
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !1416 ; 2 uses
  %.not.i25 = icmp eq ptr %i.aa, null
  br i1 %.not.i25, label %sqlite3_mutex_leave.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ab(ptr noundef nonnull %i.aa) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_free.exit, %bb.j
  %i.ac = load ptr, ptr @unixBigLock, align 8, !tbaa !740 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i26, label %unixEnterMutex.exit, label %bb.k

bb.k:                                             ; preds = %sqlite3_mutex_leave.exit
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ad(ptr noundef nonnull %i.ac) #58, !inline_history !27
  br label %unixEnterMutex.exit

unixEnterMutex.exit:                              ; preds = %sqlite3_mutex_leave.exit, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1423
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !1423
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.p

bb.l:                                             ; preds = %unixEnterMutex.exit
  %.not23 = icmp eq i32 %1, 0
  br i1 %.not23, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1411
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 392), align 8, !tbaa !836
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1420
  %i.ao = tail call i32 %i.al(ptr noundef %i.an) #58 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  tail call fastcc void @unixShmPurge(ptr noundef nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %unixEnterMutex.exit
  %i.ap = load ptr, ptr @unixBigLock, align 8, !tbaa !740 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i28, label %unixLeaveMutex.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.aq(ptr noundef nonnull %i.ap) #58, !inline_history !28
  br label %unixLeaveMutex.exit

unixLeaveMutex.exit:                              ; preds = %bb.q, %bb.p, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 1803) i32 @unixFetch(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) #0 {
bb.a:
  store ptr null, ptr %3, align 8, !tbaa !851
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !849
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1395
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @unixMapfile(ptr noundef nonnull %0, i64 noundef -1) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %.thread
end_hunk_0
begin_hunk_1_@sqlite3Update:bb.a
  %i.bg = load ptr, ptr %0, align 8, !tbaa !981   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1148 ; 2 uses
  %.not.i864 = icmp eq ptr %i.bi, null
  br i1 %.not.i864, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3SrcListLookup.exit.thread10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !605
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 0, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !642
  %i.bo = icmp eq ptr %i.bn, %i.bi
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bo, label %.loopexit.loopexit.i, label %bb.m

.loopexit.loopexit.i:                             ; preds = %bb.m
  %i.bp = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %sqlite3SrcListLookup.exit.thread10, %.loopexit.loopexit.i
  %.1.i = phi i32 [ -32768, %sqlite3SrcListLookup.exit.thread10 ], [ %i.bp, %.loopexit.loopexit.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2180
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.bt = getelementptr i8, ptr %i.bg, i64 32
  %.val.i = load ptr, ptr %i.bt, align 8, !tbaa !605
  %i.bu = getelementptr i8, ptr %.val.i, i64 56
  %.val.val.i = load ptr, ptr %i.bu, align 8, !tbaa !642 ; 2 uses
  %i.bv = icmp eq ptr %.val.val.i, null
  br i1 %i.bv, label %tempTriggersExist.exit.thread.i, label %tempTriggersExist.exit.i

tempTriggersExist.exit.i:                         ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2181
  %.not15.i = icmp eq ptr %i.bx, null
  br i1 %.not15.i, label %tempTriggersExist.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %tempTriggersExist.exit.i, %sqlite3SchemaToIndex.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = and i16 %i.bz, 1
  %.not11.i = icmp eq i16 %i.ca, 0
  br i1 %.not11.i, label %bb.p, label %tempTriggersExist.exit.thread.i

tempTriggersExist.exit.thread.i:                  ; preds = %bb.o, %tempTriggersExist.exit.i, %bb.n
  store i32 0, ptr %i.a, align 4, !tbaa !570
  br label %sqlite3TriggersExist.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = call fastcc ptr @triggersReallyExist(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.t, i32 noundef 130, ptr noundef readonly %2, ptr noundef nonnull %i.a), !inline_history !324
  br label %sqlite3TriggersExist.exit

sqlite3TriggersExist.exit:                        ; preds = %tempTriggersExist.exit.thread.i, %bb.p
  %.0.i865 = phi ptr [ %i.cb, %bb.p ], [ null, %tempTriggersExist.exit.thread.i ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 63 ; 6 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !1147 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 2                     ; 8 uses
  %i.cf = load i32, ptr %1, align 8, !tbaa !570
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sqlite3TriggersExist.exit
  %i.ch = load i32, ptr %2, align 8, !tbaa !570
  br label %bb.r

bb.r:                                             ; preds = %sqlite3TriggersExist.exit, %bb.q
  %i.ci = phi i32 [ %i.ch, %bb.q ], [ 0, %sqlite3TriggersExist.exit ] ; 7 uses
  %i.cj = icmp eq i8 %i.cd, 1
  br i1 %i.cj, label %sqlite3ViewGetColumnNames.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 54
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !1151
  %i.cm = icmp sgt i16 %i.cl, 0
  br i1 %i.cm, label %sqlite3ViewGetColumnNames.exit.thread, label %sqlite3ViewGetColumnNames.exit

sqlite3ViewGetColumnNames.exit:                   ; preds = %bb.r, %bb.s
  %i.cn = call fastcc i32 @viewGetColumnNames(ptr noundef nonnull %0, ptr noundef nonnull %i.t), !inline_history !310
  %.not798 = icmp eq i32 %i.cn, 0
  br i1 %.not798, label %sqlite3ViewGetColumnNames.exit.thread, label %sqlite3DbFree.exit

sqlite3ViewGetColumnNames.exit.thread:            ; preds = %bb.s, %sqlite3ViewGetColumnNames.exit
  %i.co = call fastcc i32 @sqlite3IsReadOnly(ptr noundef nonnull %0, ptr noundef %i.t, ptr noundef %.0.i865)
  %.not799 = icmp eq i32 %i.co, 0
  br i1 %.not799, label %bb.t, label %sqlite3DbFree.exit

bb.t:                                             ; preds = %sqlite3ViewGetColumnNames.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !1176 ; 10 uses
  %i.cr = add nsw i32 %i.cq, 1                    ; 3 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !1176
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 8 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !1084
  %i.cu = and i32 %i.ct, 128
  %i.cv = icmp eq i32 %i.cu, 0
  %.phi.trans.insert300 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.0758170.pre = load ptr, ptr %.phi.trans.insert300, align 8, !tbaa !1157 ; 4 uses
  br i1 %i.cv, label %sqlite3PrimaryKeyIndex.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not7.i = icmp eq ptr %.0758170.pre, null
  br i1 %.not7.i, label %sqlite3PrimaryKeyIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.v
  %.08.i = phi ptr [ %.0.i867, %bb.v ], [ %.0758170.pre, %bb.u ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = and i16 %i.cx, 3
  %.not5.i = icmp eq i16 %i.cy, 2
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %.0.i867 = load ptr, ptr %i.cz, align 8, !tbaa !1157 ; 2 uses
  %.not.i868 = icmp eq ptr %.0.i867, null
  br i1 %.not.i868, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i, !llvm.loop !266

sqlite3PrimaryKeyIndex.exit:                      ; preds = %bb.v, %.lr.ph.i, %bb.t
  %i.da = phi ptr [ null, %bb.t ], [ null, %bb.v ], [ %.08.i, %.lr.ph.i ] ; 3 uses
  %.not800171 = icmp eq ptr %.0758170.pre, null
  br i1 %.not800171, label %sqlite3PrimaryKeyIndex.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3PrimaryKeyIndex.exit, %.lr.ph
  %i.db = phi i32 [ %i.dd, %.lr.ph ], [ %i.cr, %sqlite3PrimaryKeyIndex.exit ] ; 2 uses
  %.0758174 = phi ptr [ %.0758, %.lr.ph ], [ %.0758170.pre, %sqlite3PrimaryKeyIndex.exit ] ; 2 uses
  %.0752173 = phi i32 [ %spec.select241, %.lr.ph ], [ %i.cq, %sqlite3PrimaryKeyIndex.exit ]
  %.0757172 = phi i32 [ %i.df, %.lr.ph ], [ 0, %sqlite3PrimaryKeyIndex.exit ]
  %i.dc = icmp eq ptr %i.da, %.0758174
  %spec.select241 = select i1 %i.dc, i32 %i.db, i32 %.0752173 ; 2 uses
  %i.dd = add nsw i32 %i.db, 1                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0758174, i64 40
  %i.df = add nuw nsw i32 %.0757172, 1            ; 2 uses
  %.0758 = load ptr, ptr %i.de, align 8, !tbaa !1157 ; 2 uses
  %.not800 = icmp eq ptr %.0758, null
  br i1 %.not800, label %._crit_edge, label %.lr.ph, !llvm.loop !4715

._crit_edge:                                      ; preds = %.lr.ph
  store i32 %i.dd, ptr %i.cp, align 8, !tbaa !1176
  br label %sqlite3PrimaryKeyIndex.exit.thread

sqlite3PrimaryKeyIndex.exit.thread:               ; preds = %bb.u, %._crit_edge, %sqlite3PrimaryKeyIndex.exit
  %i.dg = phi ptr [ %i.da, %._crit_edge ], [ %i.da, %sqlite3PrimaryKeyIndex.exit ], [ null, %bb.u ] ; 14 uses
  %.0757.lcssa = phi i32 [ %i.df, %._crit_edge ], [ 0, %sqlite3PrimaryKeyIndex.exit ], [ 0, %bb.u ] ; 3 uses
  %.0752.lcssa = phi i32 [ %spec.select241, %._crit_edge ], [ %i.cq, %sqlite3PrimaryKeyIndex.exit ], [ %i.cq, %bb.u ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.not801 = icmp eq ptr %5, null                 ; 6 uses
  br i1 %.not801, label %bb.x, label %bb.w

bb.w:                                             ; preds = %sqlite3PrimaryKeyIndex.exit.thread
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !2186
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !2187
  store i32 %i.cq, ptr %i.cp, align 8, !tbaa !1176
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %sqlite3PrimaryKeyIndex.exit.thread
  %.2754 = phi i32 [ %i.dj, %bb.w ], [ %.0752.lcssa, %sqlite3PrimaryKeyIndex.exit.thread ] ; 7 uses
  %.0751 = phi i32 [ %i.dl, %bb.w ], [ %i.cr, %sqlite3PrimaryKeyIndex.exit.thread ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.2754, ptr %i.dm, align 4, !tbaa !2056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.t, i64 54 ; 17 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !1151
  %i.dp = sext i16 %i.do to i32
  %i.dq = add i32 %.0757.lcssa, 1                 ; 2 uses
  %i.dr = add i32 %i.dq, %i.dp
  %i.ds = sext i32 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 2
  %i.du = zext nneg i32 %.0757.lcssa to i64       ; 2 uses
  %i.dv = add nuw nsw i64 %i.du, 2
  %i.dw = add nsw i64 %i.dv, %i.dt
  %i.dx = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.e, i64 noundef %i.dw) ; 24 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %sqlite3DbFree.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = load i16, ptr %i.dn, align 2, !tbaa !1151
  %i.ea = sext i16 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ea ; 7 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 9 uses
  %i.ee = zext nneg i32 %i.dq to i64              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ed, i8 1, i64 %i.ee, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.ef, align 1, !tbaa !733
  %i.eg = load i16, ptr %i.dn, align 2, !tbaa !1151 ; 2 uses
  %i.eh = icmp sgt i16 %i.eg, 0
  br i1 %i.eh, label %.lr.ph179.preheader, label %._crit_edge180

.lr.ph179.preheader:                              ; preds = %bb.y
  %i.ei = zext nneg i16 %i.eg to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dx, i8 -1, i64 %i.ej, i1 false), !tbaa !570
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %.lr.ph179.preheader, %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i8 0, i64 32, i1 false)
  store ptr %0, ptr %10, align 8, !tbaa !2059
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.el, align 8, !tbaa !2060
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %5, ptr %i.em, align 8, !tbaa !733
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  store i32 512, ptr %i.en, align 8, !tbaa !2061
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1196 ; 2 uses
  %.not.i869 = icmp eq ptr %i.ep, null
  br i1 %.not.i869, label %bb.z, label %.preheader127

bb.z:                                             ; preds = %._crit_edge180
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !2049
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.aa, label %sqlite3GetVdbe.exit

bb.aa:                                            ; preds = %bb.z
  %i.et = load ptr, ptr %0, align 8, !tbaa !981
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !1374
  %i.ew = and i32 %i.ev, 8
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ab, label %sqlite3GetVdbe.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 1
  %i.fa = or i16 %i.ez, 128
  store i16 %i.fa, ptr %i.ey, align 1
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.z, %bb.aa, %bb.ab
  %i.fb = call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !2050 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %sqlite3AuthContextPop.exit.thread111, label %.preheader127

.preheader127:                                    ; preds = %._crit_edge180, %sqlite3GetVdbe.exit
  %.0.i870382 = phi ptr [ %i.fb, %sqlite3GetVdbe.exit ], [ %i.ep, %._crit_edge180 ] ; 58 uses
  %i.fd = load i32, ptr %2, align 8, !tbaa !570
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph186, label %._crit_edge187.thread

.lr.ph186:                                        ; preds = %.preheader127
  %i.ff = icmp eq i32 %i.ci, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.fo = icmp eq ptr %i.dg, null                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fr = sext i32 %.1.i to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph186, %sqlite3AuthCheck.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next, %sqlite3AuthCheck.exit.thread ] ; 6 uses
  %.0738185 = phi i32 [ -1, %.lr.ph186 ], [ %.274035, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %.0741184 = phi ptr [ null, %.lr.ph186 ], [ %.274334, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %.0744183 = phi i8 [ 0, %.lr.ph186 ], [ %.274633, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %.0747182 = phi i8 [ 0, %.lr.ph186 ], [ %.274932, %sqlite3AuthCheck.exit.thread ] ; 3 uses
  br i1 %i.ff, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %indvars.iv
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1998 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %sqlite3ResolveExprNames.exit.thread17, label %bb.ae

sqlite3ResolveExprNames.exit.thread17:            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fx = load i32, ptr %i.en, align 8, !tbaa !2061 ; 3 uses
  %i.fy = and i32 %i.fx, -134254609
  store i32 %i.fy, ptr %i.en, align 8, !tbaa !2061
  %i.fz = load ptr, ptr %10, align 8, !tbaa !2059 ; 4 uses
  store ptr %i.fz, ptr %9, align 8, !tbaa !2018
  store ptr @resolveExprStep, ptr %i.fh, align 8, !tbaa !2019
  %i.ga = and i32 %i.fx, 524288
  %.not.i871 = icmp eq i32 %i.ga, 0
  %i.gb = select i1 %.not.i871, ptr @resolveSelectStep, ptr null
  store ptr %i.gb, ptr %i.fi, align 8, !tbaa !2020
  store ptr null, ptr %i.fj, align 8, !tbaa !2109
  store ptr %10, ptr %i.fk, align 8, !tbaa !733
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 40 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !2008
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 316 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !2133
  %i.gg = add nsw i32 %i.gf, %i.gd                ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !2133
  %i.gh = load ptr, ptr %i.fz, align 8, !tbaa !981
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 148
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !570 ; 2 uses
  %i.gk = icmp sgt i32 %i.gg, %i.gj
  br i1 %i.gk, label %sqlite3ExprCheckHeight.exit.i, label %bb.af

sqlite3ExprCheckHeight.exit.i:                    ; preds = %bb.ae
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.819, i32 noundef %i.gj), !inline_history !326
  br label %sqlite3ResolveExprNames.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.gl = and i32 %i.fx, 134254608
  %i.gm = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %9, ptr noundef nonnull %i.fv), !inline_history !2182 ; 0 uses
  %i.gn = load i32, ptr %i.gc, align 8, !tbaa !2008
  %i.go = load ptr, ptr %9, align 8, !tbaa !2018  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 316 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !2133
  %i.gr = sub nsw i32 %i.gq, %i.gn
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !2133
  %i.gs = load i32, ptr %i.en, align 8, !tbaa !2061 ; 2 uses
  %i.gt = and i32 %i.gs, 32784
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !795
  %i.gw = or i32 %i.gv, %i.gt
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !795
  %i.gx = or i32 %i.gs, %i.gl
  store i32 %i.gx, ptr %i.en, align 8, !tbaa !2061
  %i.gy = load i32, ptr %i.fl, align 4, !tbaa !2183
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %sqlite3ResolveExprNames.exit.thread, label %sqlite3ResolveExprNames.exit

sqlite3ResolveExprNames.exit.thread:              ; preds = %bb.af, %sqlite3ExprCheckHeight.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %sqlite3AuthContextPop.exit.thread111

sqlite3ResolveExprNames.exit:                     ; preds = %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 52
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !780
  %i.hc = icmp slt i32 %i.hb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br i1 %i.hc, label %bb.ag, label %sqlite3AuthContextPop.exit.thread111

bb.ag:                                            ; preds = %sqlite3ResolveExprNames.exit.thread17, %sqlite3ResolveExprNames.exit, %bb.ac
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %indvars.iv ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1999 ; 9 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %sqlite3StrIHash.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ag
  %i.hh = load i8, ptr %i.hf, align 1, !tbaa !733 ; 2 uses
  %.not10.i.i = icmp eq i8 %i.hh, 0
  br i1 %.not10.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.hi = phi i8 [ %i.ho, %.lr.ph.i.i ], [ %i.hh, %.preheader.i.i ]
  %.012.i.i = phi i8 [ %i.hm, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.0611.i.i = phi ptr [ %i.hn, %.lr.ph.i.i ], [ %i.hf, %.preheader.i.i ]
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !733
  %i.hm = add i8 %i.hl, %.012.i.i                 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !733 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i, !llvm.loop !94

sqlite3StrIHash.exit.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i, %bb.ag
  %.07.i.i = phi i8 [ 0, %bb.ag ], [ 0, %.preheader.i.i ], [ %i.hm, %.lr.ph.i.i ] ; 3 uses
  %i.hp = load ptr, ptr %i.fm, align 8, !tbaa !1150 ; 5 uses
  %i.hq = load i16, ptr %i.dn, align 2, !tbaa !1151
  %i.hr = and i8 %.07.i.i, 15
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !733 ; 2 uses
  %i.hv = zext i8 %i.hu to i32
  %i.hw = zext i8 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 11
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !1153
  %i.ia = icmp eq i8 %i.hz, %.07.i.i
  br i1 %i.ia, label %bb.ah, label %sqlite3StrICmp.exit.i

bb.ah:                                            ; preds = %sqlite3StrIHash.exit.i
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !1154
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.ah
  %.013.i.i = phi ptr [ %i.ib, %bb.ah ], [ %i.im, %bb.al ] ; 2 uses
  %.012.i24.i = phi ptr [ %i.hf, %bb.ah ], [ %i.in, %bb.al ] ; 2 uses
  %i.ic = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 3 uses
  %i.id = load i8, ptr %.012.i24.i, align 1, !tbaa !733 ; 2 uses
  %i.ie = icmp eq i8 %i.ic, %i.id
  br i1 %i.ie, label %bb.aj, label %bb.ak

end_hunk_1
begin_hunk_2_@unicodeAddExceptions:bb.a
._crit_edge:                                      ; preds = %bb.j
  %.not = icmp eq i32 %.174, 0
  br i1 %.not, label %.critedge101, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2589
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !2597
  %i.bq = tail call i32 @sqlite3_initialize(), !inline_history !1234
  %.not.i104 = icmp eq i32 %i.bq, 0
  br i1 %.not.i104, label %sqlite3_realloc64.exit, label %.critedge101

sqlite3_realloc64.exit:                           ; preds = %bb.k
  %i.br = add nsw i32 %i.bp, %.174
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 2
  %i.bu = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.bn, i64 noundef %i.bt), !inline_history !1234 ; 6 uses
  %.not91 = icmp eq ptr %i.bu, null
  br i1 %.not91, label %.critedge101, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %sqlite3_realloc64.exit
  %i.bv = load i32, ptr %i.bo, align 4, !tbaa !2597
  %scevgep191 = getelementptr i8, ptr %i.bu, i64 -4
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.preheader, %bb.u
  %.072175 = phi i32 [ %.1, %bb.u ], [ %i.bv, %.lr.ph177.preheader ] ; 9 uses
  %.380174 = phi ptr [ %.5138, %bb.u ], [ %2, %.lr.ph177.preheader ] ; 4 uses
  %.380174185 = ptrtoaddr ptr %.380174 to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.380174, i64 1 ; 4 uses
  %i.bx = load i8, ptr %.380174, align 1, !tbaa !733 ; 3 uses
  %i.by = zext i8 %i.bx to i32
  %i.bz = icmp ugt i8 %i.bx, -65
  br i1 %i.bz, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph177
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -192
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !733
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = icmp ult ptr %i.bw, %i.c
  br i1 %i.cf, label %.lr.ph160.preheader, label %.critedge2

.lr.ph160.preheader:                              ; preds = %bb.l
  %i.cg = getelementptr i8, ptr %.380174, i64 %i.a
  %scevgep184 = getelementptr i8, ptr %i.cg, i64 %i.b
  %i.ch = sub i64 0, %.380174185
  %scevgep186 = getelementptr i8, ptr %scevgep184, i64 %i.ch ; 2 uses
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %bb.m
  %.2158 = phi i32 [ %i.cp, %bb.m ], [ %i.ce, %.lr.ph160.preheader ] ; 2 uses
  %.4157 = phi ptr [ %i.cn, %bb.m ], [ %i.bw, %.lr.ph160.preheader ] ; 3 uses
  %i.ci = load i8, ptr %.4157, align 1, !tbaa !733
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = and i32 %i.cj, 192
  %i.cl = icmp eq i32 %i.ck, 128
  br i1 %i.cl, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %.lr.ph160
  %i.cm = shl i32 %.2158, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %.4157, i64 1 ; 2 uses
  %i.co = and i32 %i.cj, 63
  %i.cp = or disjoint i32 %i.co, %i.cm            ; 2 uses
  %exitcond187.not = icmp eq ptr %i.cn, %scevgep186
  br i1 %exitcond187.not, label %.critedge2, label %.lr.ph160, !llvm.loop !5823

.critedge2:                                       ; preds = %.lr.ph160, %bb.m, %bb.l
  %.4.lcssa = phi ptr [ %i.bw, %bb.l ], [ %scevgep186, %bb.m ], [ %.4157, %.lr.ph160 ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.ce, %bb.l ], [ %i.cp, %bb.m ], [ %.2158, %.lr.ph160 ] ; 4 uses
  %i.cq = icmp ult i32 %.2.lcssa, 128
  %i.cr = and i32 %.2.lcssa, -2048
  %i.cs = icmp eq i32 %i.cr, 55296
  %or.cond97 = or i1 %i.cq, %i.cs
  %i.ct = and i32 %.2.lcssa, -2
  %i.cu = icmp eq i32 %i.ct, 65534
  %or.cond99 = or i1 %i.cu, %or.cond97
  br i1 %or.cond99, label %.thread142, label %bb.n

bb.n:                                             ; preds = %.critedge2, %.lr.ph177
  %.5 = phi ptr [ %i.bw, %.lr.ph177 ], [ %.4.lcssa, %.critedge2 ] ; 3 uses
  %.3 = phi i32 [ %i.by, %.lr.ph177 ], [ %.2.lcssa, %.critedge2 ] ; 7 uses
  %i.cv = icmp ult i32 %.3, 128
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.3, 5
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aAscii, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !570
  %i.da = and i32 %.3, 31
  %i.db = xor i32 %i.cz, -1
  %i.dc = lshr i32 %i.db, %i.da
  %i.dd = and i32 %i.dc, 1
  br label %sqlite3FtsUnicodeIsalnum.exit115

bb.p:                                             ; preds = %bb.n
  %i.de = icmp ult i32 %.3, 4194304
  br i1 %i.de, label %.thread142, label %sqlite3FtsUnicodeIsalnum.exit115

.thread142:                                       ; preds = %.critedge2, %bb.p
  %.5139146 = phi ptr [ %.5, %bb.p ], [ %.4.lcssa, %.critedge2 ]
  %.3141145 = phi i32 [ %.3, %bb.p ], [ 65533, %.critedge2 ] ; 3 uses
  %i.df = shl nuw i32 %.3141145, 10
  %i.dg = or disjoint i32 %i.df, 1023
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.thread142
  %.028.i107 = phi i32 [ 0, %.thread142 ], [ %.1.i113, %bb.q ] ; 2 uses
  %.01827.i108 = phi i32 [ 405, %.thread142 ], [ %.119.i112, %bb.q ] ; 2 uses
  %.02026.i109 = phi i32 [ 0, %.thread142 ], [ %.121.i111, %bb.q ]
  %i.dh = add nuw nsw i32 %.01827.i108, %.028.i107
  %i.di = lshr i32 %i.dh, 1                       ; 4 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !570
  %.not25.i110 = icmp ult i32 %i.dg, %i.dl        ; 3 uses
  %i.dm = add nuw nsw i32 %i.di, 1
  %i.dn = add nsw i32 %i.di, -1
  %.121.i111 = select i1 %.not25.i110, i32 %.02026.i109, i32 %i.di ; 2 uses
  %.119.i112 = select i1 %.not25.i110, i32 %i.dn, i32 %.01827.i108 ; 2 uses
  %.1.i113 = select i1 %.not25.i110, i32 %.028.i107, i32 %i.dm ; 2 uses
  %.not.i114 = icmp slt i32 %.119.i112, %.1.i113
  br i1 %.not.i114, label %bb.r, label %bb.q, !llvm.loop !472

bb.r:                                             ; preds = %bb.q
  %i.do = zext nneg i32 %.121.i111 to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @sqlite3FtsUnicodeIsalnum.aEntry, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !570 ; 2 uses
  %i.dr = lshr i32 %i.dq, 10
  %i.ds = and i32 %i.dq, 1023
  %i.dt = add nuw nsw i32 %i.dr, %i.ds
  %i.du = icmp samesign uge i32 %.3141145, %i.dt
  %i.dv = zext i1 %i.du to i32
  br label %sqlite3FtsUnicodeIsalnum.exit115

sqlite3FtsUnicodeIsalnum.exit115:                 ; preds = %bb.o, %bb.p, %bb.r
  %.3140 = phi i32 [ %.3, %bb.o ], [ %.3141145, %bb.r ], [ %.3, %bb.p ] ; 5 uses
  %.5138 = phi ptr [ %.5, %bb.o ], [ %.5139146, %bb.r ], [ %.5, %bb.p ] ; 2 uses
  %.022.i106 = phi i32 [ %i.dd, %bb.o ], [ %i.dv, %bb.r ], [ 1, %bb.p ]
  %.not90 = icmp eq i32 %.022.i106, %1
  br i1 %.not90, label %bb.u, label %bb.s

bb.s:                                             ; preds = %sqlite3FtsUnicodeIsalnum.exit115
  %i.dw = add i32 %.3140, -818
  %or.cond.i116 = icmp ult i32 %i.dw, -50
  br i1 %or.cond.i116, label %.preheader, label %sqlite3FtsUnicodeIsdiacritic.exit118

sqlite3FtsUnicodeIsdiacritic.exit118:             ; preds = %bb.s
  %i.dx = icmp samesign ult i32 %.3140, 800       ; 2 uses
  %.216 = select i1 %i.dx, i32 -768, i32 -800
  %.217 = select i1 %i.dx, i32 134389727, i32 221688
  %i.dy = add nsw i32 %.3140, %.216
  %i.dz = shl nuw i32 1, %i.dy
  %i.ea = and i32 %i.dz, %.217
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.s, %sqlite3FtsUnicodeIsdiacritic.exit118
  %i.ec = icmp sgt i32 %.072175, 0
  br i1 %i.ec, label %.lr.ph167.preheader, label %.critedge4

.lr.ph167.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.072175 to i64
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !570
  %i.ef = icmp slt i32 %i.ee, %.3140
  br i1 %i.ef, label %bb.t, label %.critedge4.loopexit.split.loop.exit207

bb.t:                                             ; preds = %.lr.ph167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond189.not, label %.critedge4, label %.lr.ph167, !llvm.loop !5824

.critedge4.loopexit.split.loop.exit207:           ; preds = %.lr.ph167
  %i.eg = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.t, %.critedge4.loopexit.split.loop.exit207, %.preheader
  %.070.lcssa = phi i32 [ 0, %.preheader ], [ %i.eg, %.critedge4.loopexit.split.loop.exit207 ], [ %.072175, %bb.t ] ; 3 uses
  %i.eh = icmp sgt i32 %.072175, %.070.lcssa
  br i1 %i.eh, label %.lr.ph172.preheader, label %._crit_edge173

.lr.ph172.preheader:                              ; preds = %.critedge4
  %i.ei = sext i32 %.072175 to i64
  %i.ej = xor i32 %.070.lcssa, -1
  %i.ek = add i32 %.072175, %i.ej
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = shl nuw nsw i64 %i.el, 2
  %i.en = sub nsw i64 %i.ei, %i.el
  %i.eo = shl nsw i64 %i.en, 2                    ; 2 uses
  %scevgep190 = getelementptr i8, ptr %i.bu, i64 %i.eo
  %scevgep192 = getelementptr i8, ptr %scevgep191, i64 %i.eo
  %i.ep = add nuw nsw i64 %i.em, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep190, ptr noundef nonnull align 4 dereferenceable(1) %scevgep192, i64 %i.ep, i1 false), !tbaa !570
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %.lr.ph172.preheader, %.critedge4
  %i.eq = zext nneg i32 %.070.lcssa to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.eq
  store i32 %.3140, ptr %i.er, align 4, !tbaa !570
  %i.es = add nsw i32 %.072175, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge173, %sqlite3FtsUnicodeIsdiacritic.exit118, %sqlite3FtsUnicodeIsalnum.exit115
  %.1 = phi i32 [ %i.es, %._crit_edge173 ], [ %.072175, %sqlite3FtsUnicodeIsdiacritic.exit118 ], [ %.072175, %sqlite3FtsUnicodeIsalnum.exit115 ] ; 2 uses
  %i.et = icmp ult ptr %.5138, %i.c
  br i1 %i.et, label %.lr.ph177, label %._crit_edge178, !llvm.loop !5825

._crit_edge178:                                   ; preds = %bb.u
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !2589
  store i32 %.1, ptr %i.bo, align 4, !tbaa !2597
  br label %.critedge101

.critedge101:                                     ; preds = %bb.a, %bb.k, %._crit_edge, %._crit_edge178, %sqlite3_realloc64.exit
  %.182 = phi i32 [ 7, %sqlite3_realloc64.exit ], [ 0, %._crit_edge ], [ 0, %._crit_edge178 ], [ 7, %bb.k ], [ 0, %bb.a ]
  ret i32 %.182
}

; Function Attrs: nounwind uwtable
define internal i32 @fts3auxConnectMethod(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = add i32 %2, -6
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !741  ; 7 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #59 ; 2 uses
  %i.e = icmp eq i32 %2, 5
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.d, 4294967295
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %.lr.ph.i.preheader, label %bb.l

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = load i8, ptr %i.c, align 1, !tbaa !733
  %i.i = and i8 %i.h, -33
  %i.j = icmp eq i8 %i.i, 84
  br i1 %i.j, label %.lr.ph.i.1, label %sqlite3_strnicmp.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !733
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 69
  br i1 %i.n, label %.lr.ph.i.2, label %sqlite3_strnicmp.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 77
  br i1 %i.r, label %.lr.ph.i.3, label %sqlite3_strnicmp.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = and i8 %i.t, -33
  %i.v = icmp eq i8 %i.u, 80
  br i1 %i.v, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3
  %.lcssa = phi i32 [ 116, %.lr.ph.i.preheader ], [ 101, %.lr.ph.i.1 ], [ 109, %.lr.ph.i.2 ], [ 112, %.lr.ph.i.3 ]
  %.023.i.lcssa61 = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.1 ], [ %i.o, %.lr.ph.i.2 ], [ %i.s, %.lr.ph.i.3 ]
  %i.w = load i8, ptr %.023.i.lcssa61, align 1, !tbaa !733
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !733
  %i.aa = zext i8 %i.z to i32
  %i.ab = icmp eq i32 %.lcssa, %i.aa
  br i1 %i.ab, label %sqlite3_strnicmp.exit.thread, label %bb.l

sqlite3_strnicmp.exit.thread:                     ; preds = %.lr.ph.i.3, %sqlite3_strnicmp.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !741 ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #59
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %sqlite3_strnicmp.exit.thread
  %.sink = phi i64 [ 32, %sqlite3_strnicmp.exit.thread ], [ 24, %bb.b ]
  %.043 = phi ptr [ %i.ad, %sqlite3_strnicmp.exit.thread ], [ %i.c, %bb.b ]
  %.0 = phi i64 [ %i.ae, %sqlite3_strnicmp.exit.thread ], [ %i.d, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.sink
  %.042 = load ptr, ptr %i.af, align 8, !tbaa !741 ; 2 uses
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.042) #59
  %i.ah = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull @.str.1513) ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.e, label %sqlite3_malloc64.exit.thread

bb.e:                                             ; preds = %bb.d
  %sext54 = shl i64 %.0, 32
  %i.ai = ashr exact i64 %sext54, 32              ; 3 uses
  %sext = shl i64 %i.ag, 32
  %i.aj = ashr exact i64 %sext, 32                ; 2 uses
  %i.ak = add nsw i64 %i.ai, 562
  %i.al = add nsw i64 %i.ak, %i.aj                ; 2 uses
  %i.am = tail call i32 @sqlite3_initialize(), !inline_history !815
  %.not.i48 = icmp eq i32 %i.am, 0
  br i1 %.not.i48, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.e
  %i.an = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.al), !inline_history !815 ; 10 uses
  %.not47 = icmp eq ptr %i.an, null
  br i1 %.not47, label %sqlite3_malloc64.exit.thread, label %bb.f

bb.f:                                             ; preds = %sqlite3_malloc64.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.an, i8 0, i64 %i.al, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !2600
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 560 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !2603
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ai
  %i.at = getelementptr i8, ptr %i.as, i64 1      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store ptr %i.at, ptr %i.au, align 8, !tbaa !2604
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr %0, ptr %i.av, align 8, !tbaa !2605
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 524
  store i32 1, ptr %i.aw, align 4, !tbaa !2606
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 1 %.043, i64 %i.ai, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.042, i64 %i.aj, i1 false)
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !2600
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2604 ; 7 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !733 ; 3 uses
  switch i8 %i.ba, label %sqlite3Fts3Dequote.exit [
    i8 96, label %bb.g
    i8 91, label %bb.g
    i8 39, label %bb.g
    i8 34, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.bb = icmp eq i8 %i.ba, 91
  %spec.store.select.i = select i1 %i.bb, i8 93, i8 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !733 ; 2 uses
  %.not36.i = icmp eq i8 %i.bd, 0
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.g, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.g ] ; 4 uses
  %i.be = phi i8 [ %i.bq, %bb.k ], [ %i.bd, %bb.g ] ; 2 uses
  %i.bf = phi i64 [ %i.bo, %bb.k ], [ 1, %bb.g ]
  %.038.i = phi i32 [ %.1.i, %bb.k ], [ 0, %bb.g ]
  %.03137.i = phi i32 [ %.132.i, %bb.k ], [ 1, %bb.g ] ; 2 uses
  %i.bg = icmp eq i8 %i.be, %spec.store.select.i
  br i1 %i.bg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.i49
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !733
  %.not35.i = icmp eq i8 %i.bj, %spec.store.select.i
  br i1 %.not35.i, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  store i8 %spec.store.select.i, ptr %i.bk, align 1, !tbaa !733
  %i.bl = add nsw i32 %.03137.i, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i49
  %i.bm = add nsw i32 %.03137.i, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  store i8 %i.be, ptr %i.bn, align 1, !tbaa !733
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.132.i = phi i32 [ %i.bl, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.1.i = add nuw nsw i32 %.038.i, 1              ; 2 uses
  %i.bo = sext i32 %.132.i to i64                 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.az, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !733 ; 2 uses
  %.not.i50 = icmp eq i8 %i.bq, 0
  br i1 %.not.i50, label %._crit_edge.loopexit.i.loopexit, label %.lr.ph.i49, !llvm.loop !473

._crit_edge.loopexit.i.loopexit:                  ; preds = %bb.k
  %i.br = zext nneg i32 %.1.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %._crit_edge.loopexit.i.loopexit, %bb.g
  %.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.br, %._crit_edge.loopexit.i.loopexit ], [ %indvars.iv.i, %bb.h ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0.lcssa.i
  store i8 0, ptr %i.bs, align 1, !tbaa !733
  br label %sqlite3Fts3Dequote.exit

sqlite3Fts3Dequote.exit:                          ; preds = %bb.f, %._crit_edge.i
end_hunk_2
begin_hunk_3_@fts3InitVtab:bb.a
  store i64 %i.adr, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ads = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.adt = add nsw i64 %i.ads, -1
  store i64 %i.adt, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.adu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.adu(ptr noundef nonnull %i.t) #58, !inline_history !749
  %i.adv = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i369 = icmp eq ptr %i.adv, null
  br i1 %.not.i4.i369, label %sqlite3_free.exit370, label %bb.fc

bb.fc:                                            ; preds = %sqlite3_mutex_enter.exit.i368
  %i.adw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.adw(ptr noundef nonnull %i.adv) #58, !inline_history !750
  br label %sqlite3_free.exit370

bb.fd:                                            ; preds = %bb.ez
  %i.adx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.adx(ptr noundef nonnull %i.t) #58, !inline_history !749
  br label %sqlite3_free.exit370

sqlite3_free.exit370:                             ; preds = %sqlite3_mutex_enter.exit.i368, %bb.fc, %bb.fd
  %i.ady = load ptr, ptr %i.j, align 8, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.adz = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1634, ptr noundef %i.ady, ptr noundef nonnull %.3216), !inline_history !5993 ; 5 uses
  %.not.i371 = icmp eq ptr %i.adz, null
  br i1 %.not.i371, label %.thread640, label %bb.fe

bb.fe:                                            ; preds = %sqlite3_free.exit370
  %i.aea = call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %1, ptr noundef nonnull %i.adz, i32 noundef -1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef null), !inline_history !5994 ; 2 uses
  %.not49.i = icmp eq i32 %i.aea, 0               ; 2 uses
  br i1 %.not49.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aeb = call ptr @sqlite3_errmsg(ptr noundef %1), !inline_history !5993
  call void (ptr, ptr, ...) @sqlite3Fts3ErrMsg(ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef %i.aeb), !inline_history !5993
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aec = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i372 = icmp eq i32 %i.aec, 0
  br i1 %.not.i.i372, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aed = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aed, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.aee(ptr noundef nonnull %i.aed) #58, !inline_history !5995
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.fi, %bb.fh
  %i.aef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.aeg = call i32 %i.aef(ptr noundef nonnull %i.adz) #58, !inline_history !5996
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.aej = sub nsw i64 %i.aei, %i.aeh
  store i64 %i.aej, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.aek = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ael = add nsw i64 %i.aek, -1
  store i64 %i.ael, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.aem = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.aem(ptr noundef nonnull %i.adz) #58, !inline_history !5997
  %i.aen = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.aen, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.fj

bb.fj:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.aeo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.aeo(ptr noundef nonnull %i.aen) #58, !inline_history !5998
  br label %sqlite3_free.exit.i

bb.fk:                                            ; preds = %bb.fg
  %i.aep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.aep(ptr noundef nonnull %i.adz) #58, !inline_history !5997
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.fk, %bb.fj, %sqlite3_mutex_enter.exit.i.i
  br i1 %.not49.i, label %bb.fl, label %.thread640

bb.fl:                                            ; preds = %sqlite3_free.exit.i
  %i.aeq = load ptr, ptr %i.c, align 8, !tbaa !889 ; 5 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %._crit_edge.i, label %sqlite3_column_count.exit.i

sqlite3_column_count.exit.i:                      ; preds = %bb.fl
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeq, i64 192
  %i.aet = load i16, ptr %i.aes, align 8, !tbaa !954 ; 2 uses
  %i.aeu = zext i16 %i.aet to i32                 ; 2 uses
  %.not64.i = icmp eq i16 %i.aet, 0
  br i1 %.not64.i, label %._crit_edge.i, label %.lr.ph.i373

.lr.ph.i373:                                      ; preds = %sqlite3_column_count.exit.i, %.lr.ph.i373
  %.04159.i = phi i32 [ %i.aez, %.lr.ph.i373 ], [ 0, %sqlite3_column_count.exit.i ] ; 2 uses
  %.04358.i = phi i64 [ %i.aey, %.lr.ph.i373 ], [ 0, %sqlite3_column_count.exit.i ]
  %i.aev = call fastcc ptr @columnName(ptr noundef nonnull readonly %i.aeq, i32 noundef %.04159.i, i32 noundef 0, i32 noundef 0), !inline_history !5999
  %i.aew = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aev) #59, !inline_history !5993
  %i.aex = add i64 %.04358.i, 1
  %i.aey = add i64 %i.aex, %i.aew                 ; 2 uses
  %i.aez = add nuw nsw i32 %.04159.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aez, %i.aeu
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i373, !llvm.loop !6000

._crit_edge.i:                                    ; preds = %.lr.ph.i373, %sqlite3_column_count.exit.i, %bb.fl
  %.not6476.i = phi i1 [ true, %sqlite3_column_count.exit.i ], [ true, %bb.fl ], [ false, %.lr.ph.i373 ]
  %.0.i75.i = phi i32 [ 0, %sqlite3_column_count.exit.i ], [ 0, %bb.fl ], [ %i.aeu, %.lr.ph.i373 ] ; 7 uses
  %.043.lcssa.i = phi i64 [ 0, %sqlite3_column_count.exit.i ], [ 0, %bb.fl ], [ %i.aey, %.lr.ph.i373 ] ; 2 uses
  %i.afa = zext nneg i32 %.0.i75.i to i64         ; 4 uses
  %i.afb = call i32 @sqlite3_initialize(), !inline_history !6001
  %.not.i50.i = icmp eq i32 %i.afb, 0
  br i1 %.not.i50.i, label %sqlite3_malloc64.exit.i, label %fts3ContentColumns.exit

sqlite3_malloc64.exit.i:                          ; preds = %._crit_edge.i
  %i.afc = shl nuw nsw i64 %i.afa, 3
  %i.afd = add i64 %i.afc, %.043.lcssa.i
  %i.afe = call fastcc ptr @sqlite3Malloc(i64 noundef %i.afd), !inline_history !6001 ; 5 uses
  %i.aff = icmp eq ptr %i.afe, null               ; 2 uses
  %brmerge.i = or i1 %.not6476.i, %i.aff
  %.mux77.i = select i1 %i.aff, i32 7, i32 0
  br i1 %brmerge.i, label %fts3ContentColumns.exit, label %.lr.ph63.preheader.i

.lr.ph63.preheader.i:                             ; preds = %sqlite3_malloc64.exit.i
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %i.afa
  br label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i, %.lr.ph63.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph63.preheader.i ], [ %indvars.iv.next.i, %.lr.ph63.i ] ; 3 uses
  %.04061.i = phi ptr [ %i.afg, %.lr.ph63.preheader.i ], [ %i.afn, %.lr.ph63.i ] ; 3 uses
  %i.afh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.afi = call fastcc ptr @columnName(ptr noundef readonly %i.aeq, i32 noundef %i.afh, i32 noundef 0, i32 noundef 0), !inline_history !5999 ; 2 uses
  %i.afj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afi) #59, !inline_history !5993
  %i.afk = shl i64 %i.afj, 32
  %sext.i = add i64 %i.afk, 4294967296
  %i.afl = ashr exact i64 %sext.i, 32             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04061.i, ptr nonnull align 1 %i.afi, i64 %i.afl, i1 false)
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %indvars.iv.i
  store ptr %.04061.i, ptr %i.afm, align 8, !tbaa !741
  %i.afn = getelementptr inbounds i8, ptr %.04061.i, i64 %i.afl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next.i, %i.afa
  br i1 %exitcond67.not.i, label %fts3ContentColumns.exit, label %.lr.ph63.i, !llvm.loop !6002

.thread640:                                       ; preds = %sqlite3_free.exit370, %sqlite3_free.exit.i
  %.2.i.ph = phi i32 [ 7, %sqlite3_free.exit370 ], [ %i.aea, %sqlite3_free.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  store i32 %.2.i.ph, ptr %i.d, align 4, !tbaa !570
  br label %bb.il

fts3ContentColumns.exit:                          ; preds = %.lr.ph63.i, %._crit_edge.i, %sqlite3_malloc64.exit.i
  %.0.i5157.i = phi ptr [ %i.afe, %sqlite3_malloc64.exit.i ], [ null, %._crit_edge.i ], [ %i.afe, %.lr.ph63.i ] ; 7 uses
  %.1.i = phi i32 [ %.mux77.i, %sqlite3_malloc64.exit.i ], [ 7, %._crit_edge.i ], [ 0, %.lr.ph63.i ] ; 3 uses
  %i.afo = call i32 @sqlite3_finalize(ptr noundef %i.aeq), !inline_history !5993 ; 0 uses
  %i.afp = trunc i64 %.043.lcssa.i to i32         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  store i32 %.1.i, ptr %i.d, align 4, !tbaa !570
  %i.afq = icmp eq i32 %.1.i, 0
  %i.afr = icmp ne ptr %.3211, null
  %or.cond5 = select i1 %i.afq, i1 %i.afr, i1 false
  br i1 %or.cond5, label %.preheader754, label %thread-pre-split

.preheader754:                                    ; preds = %fts3ContentColumns.exit
  %.not859 = icmp eq i32 %.0.i75.i, 0
  br i1 %.not859, label %thread-pre-split.thread.thread, label %.lr.ph832

.lr.ph832:                                        ; preds = %.preheader754, %sqlite3_stricmp.exit.thread
  %indvars.iv941 = phi i64 [ %indvars.iv.next942, %sqlite3_stricmp.exit.thread ], [ 0, %.preheader754 ] ; 5 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %.0.i5157.i, i64 %indvars.iv941
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !741 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %sqlite3_stricmp.exit.thread, label %.preheader.i374

.preheader.i374:                                  ; preds = %.lr.ph832, %bb.fo
  %.013.i.i = phi ptr [ %i.agp, %bb.fo ], [ %.3211, %.lr.ph832 ] ; 2 uses
  %.012.i.i = phi ptr [ %i.agq, %bb.fo ], [ %i.aft, %.lr.ph832 ] ; 2 uses
  %i.afv = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 3 uses
  %i.afw = load i8, ptr %.012.i.i, align 1, !tbaa !733 ; 2 uses
  %i.afx = icmp eq i8 %i.afv, %i.afw
  br i1 %i.afx, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.preheader.i374
  %i.afy = icmp eq i8 %i.afv, 0
  br i1 %i.afy, label %.critedge.preheader, label %bb.fo

.critedge.preheader:                              ; preds = %bb.fm
  %i.afz = trunc nuw nsw i64 %indvars.iv941 to i32
  %i.aga = icmp samesign ugt i32 %.0.i75.i, %i.afz
  br i1 %i.aga, label %.critedge.preheader861, label %.critedge._crit_edge

.critedge.preheader861:                           ; preds = %.critedge.preheader
  %i.agb = shl nuw nsw i64 %indvars.iv941, 3      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.0.i5157.i, i64 %i.agb
  %i.agc = getelementptr i8, ptr %.0.i5157.i, i64 %i.agb
  %scevgep945 = getelementptr i8, ptr %i.agc, i64 8
  %i.agd = trunc i64 %indvars.iv941 to i32
  %i.age = xor i32 %i.agd, -1
  %i.agf = add i32 %.0.i75.i, %i.age
  %i.agg = zext i32 %i.agf to i64
  %i.agh = shl nuw nsw i64 %i.agg, 3
  %i.agi = add nuw nsw i64 %i.agh, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep945, i64 %i.agi, i1 false), !tbaa !741
  br label %.critedge._crit_edge

bb.fn:                                            ; preds = %.preheader.i374
  %i.agj = zext i8 %i.afv to i64
  %i.agk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !733
  %i.agm = zext i8 %i.afw to i64
  %i.agn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !733
  %.not.i.i375 = icmp eq i8 %i.agl, %i.ago
  br i1 %.not.i.i375, label %bb.fo, label %sqlite3_stricmp.exit.thread

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.agp = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.agq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %.preheader.i374

.critedge._crit_edge:                             ; preds = %.critedge.preheader861, %.critedge.preheader
  %i.agr = add nsw i32 %.0.i75.i, -1
  br label %thread-pre-split.thread

sqlite3_stricmp.exit.thread:                      ; preds = %bb.fn, %.lr.ph832
  %indvars.iv.next942 = add nuw nsw i64 %indvars.iv941, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next942, %i.afa
  br i1 %exitcond.not, label %thread-pre-split.thread, label %.lr.ph832, !llvm.loop !6003

thread-pre-split:                                 ; preds = %._crit_edge, %sqlite3_free.exit365.thread-pre-split_crit_edge, %fts3ContentColumns.exit
  %i.ags = phi i32 [ %.1.i, %fts3ContentColumns.exit ], [ %i.abz, %._crit_edge ], [ %.pr.pre, %sqlite3_free.exit365.thread-pre-split_crit_edge ]
  %.2557 = phi i32 [ %i.afp, %fts3ContentColumns.exit ], [ %.1556, %._crit_edge ], [ %.1556, %sqlite3_free.exit365.thread-pre-split_crit_edge ]
  %.2552 = phi i32 [ %.0.i75.i, %fts3ContentColumns.exit ], [ %.1551, %._crit_edge ], [ %.1551, %sqlite3_free.exit365.thread-pre-split_crit_edge ]
  %.0548 = phi ptr [ %.0.i5157.i, %fts3ContentColumns.exit ], [ %i.t, %._crit_edge ], [ %i.t, %sqlite3_free.exit365.thread-pre-split_crit_edge ] ; 2 uses
  %.4227 = phi ptr [ null, %fts3ContentColumns.exit ], [ %.3226, %._crit_edge ], [ null, %sqlite3_free.exit365.thread-pre-split_crit_edge ] ; 2 uses
  %.4222 = phi ptr [ null, %fts3ContentColumns.exit ], [ %.3221, %._crit_edge ], [ null, %sqlite3_free.exit365.thread-pre-split_crit_edge ] ; 2 uses
  %.not263 = icmp eq i32 %i.ags, 0
  br i1 %.not263, label %thread-pre-split.thread, label %bb.il

thread-pre-split.thread:                          ; preds = %sqlite3_stricmp.exit.thread, %.critedge._crit_edge, %thread-pre-split
  %.42221321 = phi ptr [ %.4222, %thread-pre-split ], [ null, %.critedge._crit_edge ], [ null, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.42271320 = phi ptr [ %.4227, %thread-pre-split ], [ null, %.critedge._crit_edge ], [ null, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.05481319 = phi ptr [ %.0548, %thread-pre-split ], [ %.0.i5157.i, %.critedge._crit_edge ], [ %.0.i5157.i, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.25521318 = phi i32 [ %.2552, %thread-pre-split ], [ %i.agr, %.critedge._crit_edge ], [ %.0.i75.i, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.25571317 = phi i32 [ %.2557, %thread-pre-split ], [ %i.afp, %.critedge._crit_edge ], [ %i.afp, %sqlite3_stricmp.exit.thread ]
  %i.agt = icmp eq i32 %.25521318, 0
  br i1 %i.agt, label %thread-pre-split.thread.thread, label %bb.fp

thread-pre-split.thread.thread:                   ; preds = %bb.c, %.preheader754, %thread-pre-split.thread
  %.0206.lcssa129713111364 = phi i32 [ %.3, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.3, %.preheader754 ]
  %.0208.lcssa129413121362 = phi ptr [ %.3211, %thread-pre-split.thread ], [ null, %bb.c ], [ %.3211, %.preheader754 ]
  %.0213.lcssa129213131360 = phi ptr [ %.3216, %thread-pre-split.thread ], [ null, %bb.c ], [ %.3216, %.preheader754 ]
  %.0229.lcssa129013141358 = phi ptr [ %.3232, %thread-pre-split.thread ], [ null, %bb.c ], [ %.3232, %.preheader754 ]
  %.0234.lcssa128713151356 = phi i8 [ %.3237, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.3237, %.preheader754 ]
  %.0238.lcssa128513161354 = phi i1 [ %i.acd, %thread-pre-split.thread ], [ true, %bb.c ], [ %i.acd, %.preheader754 ]
  %.054813191349 = phi ptr [ %.05481319, %thread-pre-split.thread ], [ %i.t, %bb.c ], [ %.0.i5157.i, %.preheader754 ] ; 2 uses
  %.422713201348 = phi ptr [ %.42271320, %thread-pre-split.thread ], [ null, %bb.c ], [ null, %.preheader754 ]
  %.422213211346 = phi ptr [ %.42221321, %thread-pre-split.thread ], [ null, %bb.c ], [ null, %.preheader754 ]
  store ptr @.str.1624, ptr %.054813191349, align 8, !tbaa !741
  br label %bb.fp

bb.fp:                                            ; preds = %thread-pre-split.thread.thread, %thread-pre-split.thread
  %.0206.lcssa129713111363 = phi i32 [ %.0206.lcssa129713111364, %thread-pre-split.thread.thread ], [ %.3, %thread-pre-split.thread ] ; 9 uses
  %.0208.lcssa129413121361 = phi ptr [ %.0208.lcssa129413121362, %thread-pre-split.thread.thread ], [ %.3211, %thread-pre-split.thread ] ; 4 uses
  %.0213.lcssa129213131359 = phi ptr [ %.0213.lcssa129213131360, %thread-pre-split.thread.thread ], [ %.3216, %thread-pre-split.thread ] ; 4 uses
  %.0229.lcssa129013141357 = phi ptr [ %.0229.lcssa129013141358, %thread-pre-split.thread.thread ], [ %.3232, %thread-pre-split.thread ] ; 10 uses
  %.0234.lcssa128713151355 = phi i8 [ %.0234.lcssa128713151356, %thread-pre-split.thread.thread ], [ %.3237, %thread-pre-split.thread ]
  %.0238.lcssa128513161353 = phi i1 [ %.0238.lcssa128513161354, %thread-pre-split.thread.thread ], [ %i.acd, %thread-pre-split.thread ]
  %.054813191350 = phi ptr [ %.054813191349, %thread-pre-split.thread.thread ], [ %.05481319, %thread-pre-split.thread ] ; 6 uses
  %.422713201347 = phi ptr [ %.422713201348, %thread-pre-split.thread.thread ], [ %.42271320, %thread-pre-split.thread ] ; 9 uses
  %.422213211345 = phi ptr [ %.422213211346, %thread-pre-split.thread.thread ], [ %.42221321, %thread-pre-split.thread ] ; 9 uses
  %.3558 = phi i32 [ 8, %thread-pre-split.thread.thread ], [ %.25571317, %thread-pre-split.thread ]
  %.3553 = phi i32 [ 1, %thread-pre-split.thread.thread ], [ %.25521318, %thread-pre-split.thread ] ; 5 uses
  %i.agu = load ptr, ptr %i.e, align 8, !tbaa !2588
  %i.agv = icmp eq ptr %i.agu, null
  br i1 %i.agv, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.agw = call fastcc i32 @sqlite3Fts3InitTokenizer(ptr noundef %2, ptr noundef nonnull @.str.1498, ptr noundef %i.e, ptr noundef %6) ; 2 uses
  store i32 %i.agw, ptr %i.d, align 4, !tbaa !570
  %.not264 = icmp eq i32 %i.agw, 0
  br i1 %.not264, label %bb.fr, label %bb.il

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.not.i378 = icmp ne ptr %.0229.lcssa129013141357, null ; 2 uses
  br i1 %.not.i378, label %bb.fs, label %.loopexit.i

bb.fs:                                            ; preds = %bb.fr
  %i.agx = load i8, ptr %.0229.lcssa129013141357, align 1, !tbaa !733 ; 2 uses
  %.not43.i = icmp eq i8 %i.agx, 0
  br i1 %.not43.i, label %.loopexit.i, label %.preheader76.i

.preheader76.i:                                   ; preds = %bb.fs, %bb.fu
  %i.agy = phi i8 [ %.pr.i, %bb.fu ], [ %i.agx, %bb.fs ]
  %.031.i = phi i32 [ %.132.i, %bb.fu ], [ 2, %bb.fs ] ; 3 uses
  %.030.i = phi ptr [ %i.aha, %bb.fu ], [ %.0229.lcssa129013141357, %bb.fs ]
  switch i8 %i.agy, label %bb.fu [
    i8 0, label %.loopexit.i
    i8 44, label %bb.ft
  ]

bb.ft:                                            ; preds = %.preheader76.i
  %i.agz = add nsw i32 %.031.i, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.preheader76.i
  %.132.i = phi i32 [ %i.agz, %bb.ft ], [ %.031.i, %.preheader76.i ]
  %i.aha = getelementptr inbounds nuw i8, ptr %.030.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.aha, align 1, !tbaa !733
  br label %.preheader76.i, !llvm.loop !6004

.loopexit.i:                                      ; preds = %.preheader76.i, %bb.fs, %bb.fr
  %.233.i = phi i32 [ 1, %bb.fr ], [ 1, %bb.fs ], [ %.031.i, %.preheader76.i ] ; 4 uses
  %i.ahb = sext i32 %.233.i to i64
  %i.ahc = mul nsw i64 %i.ahb, 40                 ; 2 uses
  %i.ahd = call i32 @sqlite3_initialize(), !inline_history !6005
  %.not.i.i379 = icmp eq i32 %i.ahd, 0
  br i1 %.not.i.i379, label %sqlite3_malloc64.exit.i381, label %fts3PrefixParameter.exit.thread

sqlite3_malloc64.exit.i381:                       ; preds = %.loopexit.i
  %i.ahe = call fastcc ptr @sqlite3Malloc(i64 noundef %i.ahc), !inline_history !6005 ; 6 uses
  %.not45.i = icmp eq ptr %i.ahe, null
  br i1 %.not45.i, label %fts3PrefixParameter.exit.thread, label %bb.fv

bb.fv:                                            ; preds = %sqlite3_malloc64.exit.i381
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ahe, i8 0, i64 %i.ahc, i1 false)
  %.not4779.i = icmp sgt i32 %.233.i, 1
  %or.cond.i = select i1 %.not.i378, i1 %.not4779.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i382, label %fts3PrefixParameter.exit.thread

.lr.ph.i382:                                      ; preds = %bb.fv, %bb.ga
  %.082.i = phi i32 [ %.1.i383, %bb.ga ], [ 1, %bb.fv ] ; 3 uses
  %.381.i = phi i32 [ %.4.i, %bb.ga ], [ %.233.i, %bb.fv ] ; 2 uses
  %.05180.i = phi ptr [ %i.aib, %bb.ga ], [ %.0229.lcssa129013141357, %bb.fv ] ; 4 uses
  %i.ahf = load i8, ptr %.05180.i, align 1, !tbaa !733 ; 2 uses
  %i.ahg = add i8 %i.ahf, -48
  %or.cond18.i.i.i = icmp ult i8 %i.ahg, 10
  br i1 %or.cond18.i.i.i, label %.lr.ph.i.i.i, label %bb.gb

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i382, %bb.fw
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.fw ], [ 0, %.lr.ph.i382 ]
  %i.ahh = phi i8 [ %i.ahn, %bb.fw ], [ %i.ahf, %.lr.ph.i382 ]
  %.01219.i.i.i = phi i64 [ %i.ahk, %bb.fw ], [ 0, %.lr.ph.i382 ]
  %i.ahi = mul i64 %.01219.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.ahh, -48
  %i.ahj = zext nneg i8 %narrow.i.i.i to i64
  %i.ahk = add nuw nsw i64 %i.ahi, %i.ahj         ; 5 uses
  %i.ahl = icmp ugt i64 %i.ahk, 2147483647
  br i1 %i.ahl, label %.thread.i, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.05180.i, i64 %indvars.iv.next.i.i.i
  %i.ahn = load i8, ptr %i.ahm, align 1, !tbaa !733 ; 2 uses
  %i.aho = add i8 %i.ahn, -48
  %or.cond.i.i.i = icmp ult i8 %i.aho, 10
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %sqlite3Fts3ReadInt.exit.i.i, !llvm.loop !498

sqlite3Fts3ReadInt.exit.i.i:                      ; preds = %bb.fw
  %i.ahp = trunc nuw nsw i64 %i.ahk to i32
  %i.ahq = icmp samesign ugt i64 %i.ahk, 10000000
  %sext.i.i = shl i64 %indvars.iv.next.i.i.i, 32
  %i.ahr = ashr exact i64 %sext.i.i, 32           ; 2 uses
  br i1 %i.ahq, label %.thread.i, label %bb.fx

.thread.i:                                        ; preds = %.lr.ph.i.i.i, %sqlite3Fts3ReadInt.exit.i.i
  %.013.i1013.i.ph.i = phi i64 [ %i.ahr, %sqlite3Fts3ReadInt.exit.i.i ], [ -1, %.lr.ph.i.i.i ]
  %i.ahs = getelementptr inbounds i8, ptr %.05180.i, i64 %.013.i1013.i.ph.i
  br label %bb.fy

bb.fx:                                            ; preds = %sqlite3Fts3ReadInt.exit.i.i
  %i.aht = getelementptr inbounds i8, ptr %.05180.i, i64 %i.ahr ; 2 uses
  %i.ahu = icmp eq i64 %i.ahk, 0
  br i1 %i.ahu, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %.thread.i
  %i.ahv = phi ptr [ %i.ahs, %.thread.i ], [ %i.aht, %bb.fx ]
  %i.ahw = add nsw i32 %.381.i, -1
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.ahx = sext i32 %.082.i to i64
  %i.ahy = getelementptr inbounds [40 x i8], ptr %i.ahe, i64 %i.ahx
  store i32 %i.ahp, ptr %i.ahy, align 8, !tbaa !2770
  %i.ahz = add nsw i32 %.082.i, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.aia = phi ptr [ %i.ahv, %bb.fy ], [ %i.aht, %bb.fz ]
  %.4.i = phi i32 [ %i.ahw, %bb.fy ], [ %.381.i, %bb.fz ] ; 3 uses
  %.1.i383 = phi i32 [ %.082.i, %bb.fy ], [ %i.ahz, %bb.fz ] ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 1
  %.not47.i = icmp slt i32 %.1.i383, %.4.i
  br i1 %.not47.i, label %.lr.ph.i382, label %fts3PrefixParameter.exit.thread, !llvm.loop !6006

fts3PrefixParameter.exit.thread:                  ; preds = %bb.ga, %.loopexit.i, %sqlite3_malloc64.exit.i381, %bb.fv
  %.0547.ph = phi i32 [ 0, %sqlite3_malloc64.exit.i381 ], [ %.233.i, %bb.fv ], [ 0, %.loopexit.i ], [ %.4.i, %bb.ga ]
  %.1546.ph = phi ptr [ null, %sqlite3_malloc64.exit.i381 ], [ %i.ahe, %bb.fv ], [ null, %.loopexit.i ], [ %i.ahe, %bb.ga ]
  %.337.i.ph = phi i32 [ 7, %sqlite3_malloc64.exit.i381 ], [ 0, %bb.fv ], [ 7, %.loopexit.i ], [ 0, %bb.ga ] ; 2 uses
  store i32 %.337.i.ph, ptr %i.d, align 4, !tbaa !570
  br label %bb.gc

bb.gb:                                            ; preds = %.lr.ph.i382
end_hunk_3
begin_hunk_4_@fts3InsertDocsize:bb.a
  tail call void %i.cv(ptr noundef nonnull %i.h) #58, !inline_history !6198
  br label %bindText.exit

bindText.exit:                                    ; preds = %bb.y, %bb.x, %sqlite3_mutex_enter.exit.i22, %sqlite3VdbeChangeEncoding.exit.thread.i, %bb.s, %bb.t
  %i.cw = tail call i32 @sqlite3_step(ptr noundef %i.bd) ; 0 uses
  %i.cx = tail call i32 @sqlite3_reset(ptr noundef %i.bd)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k, %sqlite3_mutex_enter.exit.i, %sqlite3_malloc64.exit, %bb.b, %bindText.exit
  %.sink = phi i32 [ %i.cx, %bindText.exit ], [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.b ], [ %i.ao, %sqlite3_mutex_enter.exit.i ], [ %i.ao, %bb.k ], [ %i.ao, %bb.l ]
  store i32 %.sink, ptr %0, align 4, !tbaa !570
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts3UpdateDocTotals(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2629 ; 3 uses
  %i.e = add nsw i32 %i.d, 2                      ; 5 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !570
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.e to i64                     ; 3 uses
  %i.h = tail call i32 @sqlite3_initialize(), !inline_history !815
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.b
  %i.i = mul nsw i64 %i.g, 14
  %i.j = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.i), !inline_history !815 ; 19 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %sqlite3_malloc64.exit.thread, label %bb.c

sqlite3_malloc64.exit.thread:                     ; preds = %bb.b, %sqlite3_malloc64.exit
  store i32 7, ptr %0, align 4, !tbaa !570
  br label %bb.ag

bb.c:                                             ; preds = %sqlite3_malloc64.exit
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %i.m = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %1, i32 noundef 22, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %.not62 = icmp eq i32 %i.m, 0
  br i1 %.not62, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i66 = icmp eq i32 %i.n, 0
  br i1 %.not.i66, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.p(ptr noundef nonnull %i.o) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.r = tail call i32 %i.q(ptr noundef nonnull %i.j) #58, !inline_history !13
  %i.s = sext i32 %i.r to i64
  %i.t = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.u = sub nsw i64 %i.t, %i.s
  store i64 %i.u, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.w = add nsw i64 %i.v, -1
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.x(ptr noundef nonnull %i.j) #58, !inline_history !749
  %i.y = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.z(ptr noundef nonnull %i.y) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.aa(ptr noundef nonnull %i.j) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.g, %bb.h
  store i32 %i.m, ptr %0, align 4, !tbaa !570
  br label %bb.ag

bb.i:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !889 ; 7 uses
  %i.ac = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.ab, i32 noundef 0), !inline_history !2802
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %sqlite3_bind_int.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !693 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !686
  %i.ai = and i16 %i.ah, -28672
  %.not.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.af, i64 noundef 0), !inline_history !2802
  br label %sqlite3VdbeMemSetInt64.exit.i.i

bb.l:                                             ; preds = %bb.j
  store i64 0, ptr %i.af, align 8, !tbaa !733
  store i16 4, ptr %i.ag, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i.i

sqlite3VdbeMemSetInt64.exit.i.i:                  ; preds = %bb.l, %bb.k
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !679
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !594 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i8.i.i, label %sqlite3_bind_int.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i.i
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.am(ptr noundef nonnull %i.al) #58, !inline_history !2803
  br label %sqlite3_bind_int.exit

sqlite3_bind_int.exit:                            ; preds = %bb.i, %sqlite3VdbeMemSetInt64.exit.i.i, %bb.m
  %i.an = tail call i32 @sqlite3_step(ptr noundef %i.ab)
  %i.ao = icmp eq i32 %i.an, 100
  br i1 %i.ao, label %bb.n, label %bb.p

bb.n:                                             ; preds = %sqlite3_bind_int.exit
  %i.ap = tail call ptr @sqlite3_column_blob(ptr noundef %i.ab, i32 noundef 0) ; 2 uses
  %i.aq = tail call i32 @sqlite3_column_bytes(ptr noundef %i.ab, i32 noundef 0) ; 4 uses
  %.not.i67 = icmp eq i32 %i.aq, 0
  br i1 %.not.i67, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !733
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.o
  %i.aw = icmp sgt i32 %i.d, -2
  %i.ax = icmp sgt i32 %i.aq, 0
  %i.ay = and i1 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.az = zext nneg i32 %i.e to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.019.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.ba = sext i32 %.019.i to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ap, i64 %i.ba
  %i.bc = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.bb, ptr noundef nonnull %i.a)
  %i.bd = add nsw i32 %i.bc, %.019.i              ; 2 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !565
  %i.bf = trunc i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next.i, %i.az
  %i.bi = icmp slt i32 %i.bd, %i.aq
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !6200

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i
  %i.bk = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.preheader.i, %bb.o, %bb.n
  %.1.i = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %.preheader.i ], [ %i.bk, %.loopexit.loopexit.i ] ; 3 uses
  %i.bl = icmp slt i32 %.1.i, %i.e
  br i1 %i.bl, label %.lr.ph21.preheader.i, label %fts3DecodeIntArray.exit

.lr.ph21.preheader.i:                             ; preds = %.loopexit.i
  %i.bm = zext nneg i32 %.1.i to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %scevgep.i = getelementptr i8, ptr %i.j, i64 %i.bn
  %i.bo = xor i32 %.1.i, -1
  %i.bp = add nsw i32 %i.e, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bs, i1 false), !tbaa !570
  br label %fts3DecodeIntArray.exit

bb.p:                                             ; preds = %sqlite3_bind_int.exit
  %i.bt = shl nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.bt, i1 false)
  br label %fts3DecodeIntArray.exit

fts3DecodeIntArray.exit:                          ; preds = %.lr.ph21.preheader.i, %.loopexit.i, %bb.p
  %i.bu = tail call i32 @sqlite3_reset(ptr noundef %i.ab) ; 2 uses
  %.not63 = icmp eq i32 %i.bu, 0
  br i1 %.not63, label %bb.v, label %bb.q

bb.q:                                             ; preds = %fts3DecodeIntArray.exit
  %i.bv = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i68 = icmp eq i32 %i.bv, 0
  br i1 %.not.i68, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i69, label %sqlite3_mutex_enter.exit.i70, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.bx(ptr noundef nonnull %i.bw) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i70

sqlite3_mutex_enter.exit.i70:                     ; preds = %bb.s, %bb.r
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %i.j) #58, !inline_history !13
  %i.ca = sext i32 %i.bz to i64
  %i.cb = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cc = sub nsw i64 %i.cb, %i.ca
  store i64 %i.cc, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cd = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ce = add nsw i64 %i.cd, -1
  store i64 %i.ce, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.cf(ptr noundef nonnull %i.j) #58, !inline_history !749
  %i.cg = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i71 = icmp eq ptr %i.cg, null
  br i1 %.not.i4.i71, label %sqlite3_free.exit72, label %bb.t

bb.t:                                             ; preds = %sqlite3_mutex_enter.exit.i70
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ch(ptr noundef nonnull %i.cg) #58, !inline_history !750
  br label %sqlite3_free.exit72

bb.u:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ci(ptr noundef nonnull %i.j) #58, !inline_history !749
  br label %sqlite3_free.exit72

sqlite3_free.exit72:                              ; preds = %sqlite3_mutex_enter.exit.i70, %bb.t, %bb.u
  store i32 %i.bu, ptr %0, align 4, !tbaa !570
  br label %bb.ag

bb.v:                                             ; preds = %fts3DecodeIntArray.exit
  %i.cj = icmp slt i32 %4, 0
  %.pre = load i32, ptr %i.j, align 4, !tbaa !570 ; 2 uses
  %i.ck = sub nsw i32 0, %4
  %i.cl = icmp ult i32 %.pre, %i.ck
  %or.cond = select i1 %i.cj, i1 %i.cl, i1 false
  %i.cm = add i32 %.pre, %4
  %storemerge = select i1 %or.cond, i32 0, i32 %i.cm
  store i32 %storemerge, ptr %i.j, align 4, !tbaa !570
  %i.cn = load i32, ptr %i.c, align 8, !tbaa !2629
  %.not6486 = icmp slt i32 %i.cn, 0
  br i1 %.not6486, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.v ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !570
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !570
  %i.cs = add i32 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !570
  %.0 = tail call i32 @llvm.usub.sat.i32(i32 %i.cs, i32 %i.cu)
  store i32 %.0, ptr %i.co, align 4, !tbaa !570
  %i.cv = load i32, ptr %i.c, align 8, !tbaa !2629
  %i.cw = sext i32 %i.cv to i64
  %.not64.not = icmp slt i64 %indvars.iv, %i.cw
  br i1 %.not64.not, label %.lr.ph, label %._crit_edge, !llvm.loop !6201

._crit_edge:                                      ; preds = %.lr.ph, %bb.v
  %i.cx = icmp sgt i32 %i.d, -2
  br i1 %i.cx, label %.lr.ph.preheader.i73, label %fts3EncodeIntArray.exit

.lr.ph.preheader.i73:                             ; preds = %._crit_edge
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %sqlite3Fts3PutVarint.exit.i, %.lr.ph.preheader.i73
  %indvars.iv.i75 = phi i64 [ 0, %.lr.ph.preheader.i73 ], [ %indvars.iv.next.i77, %sqlite3Fts3PutVarint.exit.i ] ; 2 uses
  %.012.i = phi i32 [ 0, %.lr.ph.preheader.i73 ], [ %i.dz, %sqlite3Fts3PutVarint.exit.i ] ; 2 uses
  %i.cy = sext i32 %.012.i to i64
  %i.cz = getelementptr inbounds i8, ptr %i.l, i64 %i.cy ; 8 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i75
  %i.db = load i32, ptr %i.da, align 4, !tbaa !570 ; 5 uses
  %i.dc = trunc i32 %i.db to i8                   ; 2 uses
  %i.dd = or i8 %i.dc, -128
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 3 uses
  store i8 %i.dd, ptr %i.cz, align 1, !tbaa !733
  %i.df = lshr i32 %i.db, 7                       ; 2 uses
  %.not.i.i76 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i76, label %sqlite3Fts3PutVarint.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i74
  %i.dg = trunc i32 %i.df to i8                   ; 2 uses
  %i.dh = or i8 %i.dg, -128
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 2 ; 3 uses
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !733
  %i.dj = lshr i32 %i.db, 14                      ; 2 uses
  %.not.i.i76.1 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i76.1, label %sqlite3Fts3PutVarint.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = trunc i32 %i.dj to i8                   ; 2 uses
  %i.dl = or i8 %i.dk, -128
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 3 ; 3 uses
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !733
  %i.dn = lshr i32 %i.db, 21                      ; 2 uses
  %.not.i.i76.2 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i76.2, label %sqlite3Fts3PutVarint.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.do = trunc i32 %i.dn to i8                   ; 2 uses
  %i.dp = or i8 %i.do, -128
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 3 uses
  store i8 %i.dp, ptr %i.dm, align 1, !tbaa !733
  %i.dr = lshr i32 %i.db, 28                      ; 2 uses
  %.not.i.i76.3 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i76.3, label %sqlite3Fts3PutVarint.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = trunc nuw nsw i32 %i.dr to i8           ; 2 uses
  %i.dt = or disjoint i8 %i.ds, -128
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 5
  store i8 %i.dt, ptr %i.dq, align 1, !tbaa !733
  br label %sqlite3Fts3PutVarint.exit.i

sqlite3Fts3PutVarint.exit.i:                      ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph.i74
  %.08.i.i.lcssa = phi ptr [ %i.cz, %.lr.ph.i74 ], [ %i.de, %bb.w ], [ %i.di, %bb.x ], [ %i.dm, %bb.y ], [ %i.dq, %bb.z ]
  %.lcssa110 = phi i8 [ %i.dc, %.lr.ph.i74 ], [ %i.dg, %bb.w ], [ %i.dk, %bb.x ], [ %i.do, %bb.y ], [ %i.ds, %bb.z ]
  %.lcssa = phi ptr [ %i.de, %.lr.ph.i74 ], [ %i.di, %bb.w ], [ %i.dm, %bb.x ], [ %i.dq, %bb.y ], [ %i.du, %bb.z ]
  store i8 %.lcssa110, ptr %.08.i.i.lcssa, align 1, !tbaa !733
  %i.dv = ptrtoint ptr %.lcssa to i64
  %i.dw = ptrtoint ptr %i.cz to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = add nsw i32 %.012.i, %i.dy              ; 2 uses
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i77, %wide.trip.count.i
  br i1 %exitcond.not.i, label %fts3EncodeIntArray.exit.loopexit, label %.lr.ph.i74, !llvm.loop !512

fts3EncodeIntArray.exit.loopexit:                 ; preds = %sqlite3Fts3PutVarint.exit.i
  %i.ea = sext i32 %i.dz to i64
  br label %fts3EncodeIntArray.exit

fts3EncodeIntArray.exit:                          ; preds = %fts3EncodeIntArray.exit.loopexit, %._crit_edge
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ea, %fts3EncodeIntArray.exit.loopexit ]
  %i.eb = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %1, i32 noundef 23, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %.not65 = icmp eq i32 %i.eb, 0
  br i1 %.not65, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %fts3EncodeIntArray.exit
  %i.ec = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i78 = icmp eq i32 %i.ec, 0
  br i1 %.not.i78, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i79, label %sqlite3_mutex_enter.exit.i80, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.ee(ptr noundef nonnull %i.ed) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i80

sqlite3_mutex_enter.exit.i80:                     ; preds = %bb.ac, %bb.ab
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.eg = tail call i32 %i.ef(ptr noundef nonnull %i.j) #58, !inline_history !13
  %i.eh = sext i32 %i.eg to i64
  %i.ei = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ej = sub nsw i64 %i.ei, %i.eh
  store i64 %i.ej, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ek = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.el = add nsw i64 %i.ek, -1
  store i64 %i.el, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.em(ptr noundef nonnull %i.j) #58, !inline_history !749
  %i.en = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i81 = icmp eq ptr %i.en, null
  br i1 %.not.i4.i81, label %sqlite3_free.exit82, label %bb.ad

bb.ad:                                            ; preds = %sqlite3_mutex_enter.exit.i80
end_hunk_4
begin_hunk_5_@fts3SnippetFunc:bb.a
  br i1 %.not9.i.i48, label %bb.ac, label %sqlite3_value_text.exit50

bb.ac:                                            ; preds = %bb.ab
  %i.cc = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.br, i8 noundef zeroext 1), !inline_history !947
  br label %sqlite3_value_text.exit50

sqlite3_value_text.exit50:                        ; preds = %bb.ac, %bb.ab, %bb.aa, %sqlite3_value_text.exit, %bb.d
  %.032 = phi ptr [ @.str.1680, %bb.d ], [ %i.ca, %bb.aa ], [ null, %sqlite3_value_text.exit ], [ %i.cc, %bb.ac ], [ null, %bb.ab ] ; 2 uses
  %.130 = phi ptr [ @.str.1681, %bb.d ], [ %.029, %bb.aa ], [ %.029, %sqlite3_value_text.exit ], [ %.029, %bb.ac ], [ %.029, %bb.ab ] ; 2 uses
  %.227 = phi i32 [ -1, %bb.d ], [ %.126, %bb.aa ], [ %.126, %sqlite3_value_text.exit ], [ %.126, %bb.ac ], [ %.126, %bb.ab ]
  %.3 = phi i32 [ 15, %bb.d ], [ %.2, %bb.aa ], [ %.2, %sqlite3_value_text.exit ], [ %.2, %bb.ac ], [ %.2, %bb.ab ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !761 ; 5 uses
  %.not.i.i51 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i51, label %sqlite3_value_text.exit54.thread, label %bb.ad

bb.ad:                                            ; preds = %sqlite3_value_text.exit50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !686 ; 2 uses
  %i.ch = and i16 %i.cg, 514
  %i.ci = icmp eq i16 %i.ch, 514
  br i1 %i.ci, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 22
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !787
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !762
  br label %sqlite3_value_text.exit54

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.co = and i16 %i.cg, 1
  %.not9.i.i52 = icmp eq i16 %i.co, 0
  br i1 %.not9.i.i52, label %bb.ah, label %sqlite3_value_text.exit54.thread

bb.ah:                                            ; preds = %bb.ag
  %i.cp = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.ce, i8 noundef zeroext 1), !inline_history !947
  br label %sqlite3_value_text.exit54

sqlite3_value_text.exit54:                        ; preds = %bb.ah, %bb.af
  %.034 = phi ptr [ %i.cp, %bb.ah ], [ %i.cn, %bb.af ] ; 2 uses
  %i.cq = icmp ne ptr %.130, null
  %i.cr = icmp ne ptr %.032, null
  %or.cond = select i1 %i.cq, i1 %i.cr, i1 false
  %i.cs = icmp ne ptr %.034, null
  %or.cond3 = select i1 %or.cond, i1 %i.cs, i1 false
  br i1 %or.cond3, label %bb.ap, label %sqlite3_value_text.exit54.thread

sqlite3_value_text.exit54.thread:                 ; preds = %bb.ag, %sqlite3_value_text.exit50, %sqlite3_value_text.exit54
  %i.ct = load ptr, ptr %0, align 8, !tbaa !761   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !686
  %i.cw = and i16 %i.cv, -28672
  %.not.i.i55 = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i55, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %sqlite3_value_text.exit54.thread
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.ct), !inline_history !1102
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !761
  br label %sqlite3VdbeMemSetNull.exit.i

bb.aj:                                            ; preds = %sqlite3_value_text.exit54.thread
  store i16 1, ptr %i.cu, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.aj, %bb.ai
  %i.cx = phi ptr [ %.pre.i, %bb.ai ], [ %i.ct, %bb.aj ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.cy, align 4, !tbaa !570
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !683 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 103 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !918
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ak, label %sqlite3_result_error_nomem.exit

bb.ak:                                            ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.df = load i8, ptr %i.de, align 8, !tbaa !919
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.al, label %sqlite3_result_error_nomem.exit

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.db, align 1, !tbaa !918
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 220
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !920
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 400
  store atomic volatile i32 1, ptr %i.dk monotonic, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 408 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !921
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !921
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 412
  store i16 0, ptr %i.do, align 4, !tbaa !922
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 344 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !768 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.dq, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.dq, ptr noundef nonnull @.str.125), !inline_history !75
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !768 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i32 7, ptr %i.ds, align 8, !tbaa !779
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i56, %.lr.ph.i.i ], [ %.018.i.i, %bb.ao ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !780
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !780
  %i.dw = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.dw, align 8, !tbaa !779
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i56 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i56, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.ap:                                            ; preds = %sqlite3_value_text.exit54
  %i.dx = icmp eq i32 %.3, 0
  br i1 %i.dx, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null), !inline_history !1906
  br label %sqlite3_result_error_nomem.exit

.thread:                                          ; preds = %bb.d, %bb.ap
  %.0347892 = phi ptr [ %.034, %bb.ap ], [ @.str.1679, %bb.d ] ; 2 uses
  %.1337991 = phi ptr [ %.032, %bb.ap ], [ @.str.1680, %bb.d ] ; 2 uses
  %.2318090 = phi ptr [ %.130, %bb.ap ], [ @.str.1681, %bb.d ] ; 4 uses
  %.3288189 = phi i32 [ %.227, %bb.ap ], [ -1, %bb.d ] ; 2 uses
  %.48288 = phi i32 [ %.3, %bb.ap ], [ 15, %bb.d ] ; 2 uses
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !2839 ; 8 uses
  %i.dz = tail call fastcc i32 @fts3CursorSeek(ptr noundef %0, ptr noundef %i.dy)
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ar, label %sqlite3_result_error_nomem.exit

bb.ar:                                            ; preds = %.thread
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !2744 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2749
  %.not.i = icmp eq ptr %i.ed, null
  br i1 %.not.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0, i8 noundef zeroext 1, ptr noundef null), !inline_history !6394
  br label %sqlite3Fts3Snippet.exit

bb.at:                                            ; preds = %bb.ar
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 range(i32 1, 0) %.48288, i32 -64)
  %spec.store.select2.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 64) ; 2 uses
  %i.ee = icmp sgt i32 %.48288, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 48 ; 2 uses
  %i.eg = icmp slt i32 %.3288189, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.en = sub nsw i32 0, %spec.store.select2.i
  %i.eo = add nsw i32 %spec.store.select2.i, -1
  br label %bb.au

bb.au:                                            ; preds = %bb.eb, %bb.at
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i, %bb.eb ], [ 1, %bb.at ] ; 6 uses
  %indvar.i = phi i64 [ %indvar.next.i, %bb.eb ], [ 0, %bb.at ] ; 2 uses
  br i1 %i.ee, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %indvars336.i = trunc i64 %indvars.iv334.i to i32 ; 2 uses
  %i.ep = add nsw i32 %i.eo, %indvars336.i
  %i.eq = sdiv i32 %i.ep, %indvars336.i
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.062.i = phi i32 [ %i.eq, %bb.av ], [ %i.en, %bb.au ] ; 5 uses
  %i.er = load i32, ptr %i.ef, align 8, !tbaa !2629 ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.split.i, label %.split272.us.thread.i

.split272.us.thread.i:                            ; preds = %bb.aw
  %i.et = mul nuw nsw i64 %indvar.i, 24
  %i.eu = add nuw nsw i64 %i.et, 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, i8 0, i64 %i.eu, i1 false)
  br label %.preheader.i

.split.i:                                         ; preds = %bb.aw, %._crit_edge.i
  %i.ev = phi i32 [ %i.uu, %._crit_edge.i ], [ %i.er, %bb.aw ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.aw ] ; 2 uses
  %.056270.i = phi i64 [ %i.ut, %._crit_edge.i ], [ 0, %bb.aw ] ; 4 uses
  %.0146268.i = phi i64 [ %.1147.lcssa.i, %._crit_edge.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv.i ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i8 0, i64 24, i1 false)
  %i.ex = icmp sgt i32 %i.ev, 0
  br i1 %i.ex, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ea, %.lr.ph.i
  %.0264.i = phi i32 [ 0, %.lr.ph.i ], [ %i.up, %bb.ea ] ; 5 uses
  %.055263.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.ph.i, %bb.ea ] ; 3 uses
  %.1147262.i = phi i64 [ %.0146268.i, %.lr.ph.i ], [ %.2148.ph.i, %bb.ea ] ; 5 uses
  %.not71.i = icmp eq i32 %.0264.i, %.3288189
  %or.cond74.i = or i1 %i.eg, %.not71.i
  br i1 %or.cond74.i, label %bb.ay, label %bb.ea

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  store i64 0, ptr %i.ei, align 8
  store ptr %i.dy, ptr %3, align 8, !tbaa !2841
  %i.ey = load ptr, ptr %i.ec, align 8, !tbaa !2749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #58
  store i32 0, ptr %i.n, align 4, !tbaa !570
  %i.ez = call fastcc i32 @fts3ExprIterate2(ptr noundef %i.ey, ptr noundef %i.n, ptr noundef nonnull @fts3ExprLoadDoclistsCb, ptr noundef nonnull %3), !inline_history !6395 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #58
  %i.fa = load i32, ptr %i.ei, align 8, !tbaa !2842 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  %.not.i.i59 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i59, label %bb.az, label %fts3BestSnippet.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %i.fb, 48                   ; 6 uses
  %i.fd = call i32 @sqlite3_initialize(), !inline_history !6396
  %.not.i.i.i.i = icmp ne i32 %i.fd, 0
  %i.fe = add nsw i64 %i.fc, -2147483392
  %or.cond.i88.i = icmp ult i64 %i.fe, -2147483391
  %or.cond203.i = select i1 %.not.i.i.i.i, i1 true, i1 %or.cond.i88.i
  br i1 %or.cond203.i, label %fts3BestSnippet.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ff = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i89.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i89.i, label %bb.bo, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fg = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i90.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i90.i, label %sqlite3_mutex_enter.exit.i91.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.fh(ptr noundef nonnull %i.fg) #58, !inline_history !6397
  br label %sqlite3_mutex_enter.exit.i91.i

sqlite3_mutex_enter.exit.i91.i:                   ; preds = %bb.bc, %bb.bb
  %i.fi = trunc nuw nsw i64 %i.fc to i32
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !643
  %i.fk = call i32 %i.fj(i32 noundef range(i32 1, 2147483392) %i.fi) #58, !inline_history !6398 ; 2 uses
  %i.fl = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !565
  %i.fm = icmp slt i64 %i.fl, %i.fc
  br i1 %i.fm, label %bb.bd, label %sqlite3StatusHighwater.exit.i.i.i

bb.bd:                                            ; preds = %sqlite3_mutex_enter.exit.i91.i
  store i64 %i.fc, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !565
  br label %sqlite3StatusHighwater.exit.i.i.i

sqlite3StatusHighwater.exit.i.i.i:                ; preds = %bb.bd, %sqlite3_mutex_enter.exit.i91.i
  %i.fn = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 8), align 8, !tbaa !746 ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %sqlite3StatusHighwater.exit.i.i.i
  %i.fp = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.fq = sext i32 %i.fk to i64                   ; 2 uses
  %i.fr = sub nsw i64 %i.fn, %i.fq
  %.not.i5.i.i = icmp slt i64 %i.fp, %i.fr
  br i1 %.not.i5.i.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  %i.fs = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i92.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i92.i, label %sqlite3MallocAlarm.exit.i.i.i, label %sqlite3_mutex_leave.exit.i.i.i.i

sqlite3_mutex_leave.exit.i.i.i.i:                 ; preds = %bb.bf
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.ft(ptr noundef nonnull %i.fs) #58, !inline_history !6399
  %.pr.i.i.i.i = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i1.i.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %sqlite3_mutex_leave.exit.i.i.i.i
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.fu(ptr noundef nonnull %.pr.i.i.i.i) #58, !inline_history !6400
  br label %sqlite3MallocAlarm.exit.i.i.i

sqlite3MallocAlarm.exit.i.i.i:                    ; preds = %bb.bg, %sqlite3_mutex_leave.exit.i.i.i.i, %bb.bf
  %i.fv = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !747 ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not17.i.i.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %sqlite3MallocAlarm.exit.i.i.i
  %i.fw = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.fx = sub nsw i64 %i.fv, %i.fq
  %.not18.i.i.i = icmp slt i64 %i.fw, %i.fx
  br i1 %.not18.i.i.i, label %bb.bj, label %mallocWithAlarm.exit.i.i

bb.bi:                                            ; preds = %bb.be
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %sqlite3MallocAlarm.exit.i.i.i, %sqlite3StatusHighwater.exit.i.i.i
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !726
  %i.fz = call ptr %i.fy(i32 noundef %i.fk) #58, !inline_history !6398 ; 4 uses
  %.not19.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not19.i.i.i, label %mallocWithAlarm.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.gb = call i32 %i.ga(ptr noundef nonnull %i.fz) #58, !inline_history !6401
  %i.gc = sext i32 %i.gb to i64
  %i.gd = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ge = add nsw i64 %i.gd, %i.gc                ; 3 uses
  store i64 %i.ge, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.gf = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !565
  %i.gg = icmp sgt i64 %i.ge, %i.gf
  br i1 %i.gg, label %bb.bl, label %sqlite3StatusUp.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  store i64 %i.ge, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !565
  br label %sqlite3StatusUp.exit.i.i.i

sqlite3StatusUp.exit.i.i.i:                       ; preds = %bb.bl, %bb.bk
  %i.gh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565 ; 2 uses
  %i.gi = add nsw i64 %i.gh, 1                    ; 2 uses
  store i64 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.gj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !565
  %.not21.i.i.i = icmp slt i64 %i.gh, %i.gj
  br i1 %.not21.i.i.i, label %mallocWithAlarm.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %sqlite3StatusUp.exit.i.i.i
  store i64 %i.gi, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !565
  br label %mallocWithAlarm.exit.i.i

mallocWithAlarm.exit.i.i:                         ; preds = %bb.bm, %sqlite3StatusUp.exit.i.i.i, %bb.bj, %bb.bh
  %storemerge.i.i.i = phi ptr [ null, %bb.bh ], [ %i.fz, %bb.bm ], [ %i.fz, %sqlite3StatusUp.exit.i.i.i ], [ null, %bb.bj ] ; 2 uses
  %i.gk = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i6.i.i, label %sqlite3Malloc.exit.i, label %bb.bn

bb.bn:                                            ; preds = %mallocWithAlarm.exit.i.i
  %i.gl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.gl(ptr noundef nonnull %i.gk) #58, !inline_history !6402
  br label %sqlite3Malloc.exit.i

bb.bo:                                            ; preds = %bb.ba
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !726
  %i.gn = trunc nuw nsw i64 %i.fc to i32
  %i.go = call ptr %i.gm(i32 noundef %i.gn) #58, !inline_history !6403
  br label %sqlite3Malloc.exit.i

sqlite3Malloc.exit.i:                             ; preds = %bb.bo, %bb.bn, %mallocWithAlarm.exit.i.i
  %.0.i.i60 = phi ptr [ %storemerge.i.i.i, %bb.bn ], [ %i.go, %bb.bo ], [ %storemerge.i.i.i, %mallocWithAlarm.exit.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i60, null
  br i1 %.not.i.i.i, label %fts3BestSnippet.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %sqlite3Malloc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i60, i8 0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.fc, i1 false)
  store ptr %.0.i.i60, ptr %i.ej, align 8, !tbaa !2845
  store ptr %i.dy, ptr %4, align 8, !tbaa !2846
  store i32 %.0264.i, ptr %i.ek, align 8, !tbaa !2847
  store i32 %.062.i, ptr %i.el, align 4, !tbaa !6439
  store i32 %i.fa, ptr %i.eh, align 8, !tbaa !6440
  store i32 -1, ptr %i.em, align 8, !tbaa !6441
  %i.gp = load ptr, ptr %i.ec, align 8, !tbaa !2749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #58
  store i32 0, ptr %i.m, align 4, !tbaa !570
  %i.gq = call fastcc i32 @fts3ExprIterate2(ptr noundef %i.gp, ptr noundef %i.m, ptr noundef nonnull @fts3SnippetFindPositions, ptr noundef nonnull %4), !inline_history !6395 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #58
  %i.gr = icmp eq i32 %i.gq, 0                    ; 2 uses
  %.pre61.i.i = load ptr, ptr %i.ej, align 8      ; 13 uses
  br i1 %i.gr, label %.preheader.i.i, label %fts3SnippetNextCandidate.exit.i.i

.preheader.i.i:                                   ; preds = %bb.bp
  %i.gs = icmp sgt i32 %i.fa, 0
  br i1 %i.gs, label %.lr.ph.i.i62, label %._crit_edge.i.i

end_hunk_5
