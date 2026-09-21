Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3Fp10Convert2:bb.a
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @posixIoFinderImpl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret ptr @posixIoMethods
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unixClose(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1389 ; 2 uses
  tail call fastcc void @verifyDbFile(ptr noundef %0)
  %i.c = tail call i32 @unixUnlock(ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.d = load ptr, ptr @unixBigLock, align 8, !tbaa !740 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %unixEnterMutex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.e(ptr noundef nonnull %i.d) #58, !inline_history !27
  br label %unixEnterMutex.exit

unixEnterMutex.exit:                              ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !857  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %unixEnterMutex.exit
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.h(ptr noundef nonnull %i.g) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %unixEnterMutex.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1390
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1389
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !833  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1391
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1392
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1391
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.q, align 8, !tbaa !844
  store ptr null, ptr %i.l, align 8, !tbaa !833
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %sqlite3_mutex_enter.exit
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !857  ; 2 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %sqlite3_mutex_leave.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.s(ptr noundef nonnull %i.r) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.e, %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !1389 ; 8 uses
  %.not.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i11, label %releaseInodeInfo.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_leave.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !858
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !858
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %releaseInodeInfo.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !857  ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.z, null
  br i1 %.not.i.i12, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.aa(ptr noundef nonnull %i.z) #58, !inline_history !3441
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  tail call fastcc void @closePendingFds(ptr noundef nonnull readonly %0), !inline_history !3442
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !857 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.ab, null
  br i1 %.not.i20.i, label %sqlite3_mutex_leave.exit.i, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ac(ptr noundef nonnull %i.ab) #58, !inline_history !3443
  br label %sqlite3_mutex_leave.exit.i

sqlite3_mutex_leave.exit.i:                       ; preds = %bb.j, %sqlite3_mutex_enter.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !860 ; 3 uses
  %.not18.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !859 ; 4 uses
  br i1 %.not18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3_mutex_leave.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !859
  br label %bb.m

bb.l:                                             ; preds = %sqlite3_mutex_leave.exit.i
  store ptr %i.ag, ptr @inodeList, align 8, !tbaa !853
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not19.i = icmp eq ptr %i.ag, null
  br i1 %.not19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !860
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !857 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.aj, null
  br i1 %.not.i21.i, label %sqlite3_mutex_free.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 120), align 8, !tbaa !743
  tail call void %i.ak(ptr noundef nonnull %i.aj) #58, !inline_history !3444
  br label %sqlite3_mutex_free.exit.i

sqlite3_mutex_free.exit.i:                        ; preds = %bb.p, %bb.o
  %i.al = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i22.i = icmp eq i32 %i.al, 0
  br i1 %.not.i22.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_free.exit.i
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.an(ptr noundef nonnull %i.am) #58, !inline_history !3445
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.r, %bb.q
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.t) #58, !inline_history !3446
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.as = sub nsw i64 %i.ar, %i.aq
  store i64 %i.as, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.au = add nsw i64 %i.at, -1
  store i64 %i.au, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.av(ptr noundef nonnull %i.t) #58, !inline_history !3447
  %i.aw = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i4.i.i, label %releaseInodeInfo.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ax(ptr noundef nonnull %i.aw) #58, !inline_history !3448
  br label %releaseInodeInfo.exit

bb.t:                                             ; preds = %sqlite3_mutex_free.exit.i
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ay(ptr noundef nonnull %i.t) #58, !inline_history !3447
  br label %releaseInodeInfo.exit

releaseInodeInfo.exit:                            ; preds = %sqlite3_mutex_leave.exit, %bb.g, %sqlite3_mutex_enter.exit.i.i, %bb.s, %bb.t
  tail call fastcc void @closeUnixFile(ptr noundef nonnull %0)
  %i.az = load ptr, ptr @unixBigLock, align 8, !tbaa !740 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i.i13, label %unixLeaveMutex.exit, label %bb.u

bb.u:                                             ; preds = %releaseInodeInfo.exit
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ba(ptr noundef nonnull %i.az) #58, !inline_history !28
  br label %unixLeaveMutex.exit

unixLeaveMutex.exit:                              ; preds = %releaseInodeInfo.exit, %bb.u
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8459) i32 @unixRead(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1393 ; 3 uses
  %i.c = icmp slt i64 %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = add nsw i64 %3, %i.d
  %.not = icmp sgt i64 %i.e, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1394
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.h, i64 %i.d, i1 false)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.i = sub nsw i64 %i.b, %3                     ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1394
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %3
  %sext = shl i64 %i.i, 32
  %4 = ashr exact i64 %sext, 32                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.m, i64 %4, i1 false)
  %i.n = getelementptr inbounds i8, ptr %1, i64 %4
  %i.o = sub nsw i32 %2, %i.j
  %5 = add nsw i64 %4, %3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.037 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]  ; 3 uses
  %.036 = phi i32 [ %i.o, %bb.d ], [ %2, %bb.a ]  ; 6 uses
  %.035 = phi i64 [ %5, %bb.d ], [ %3, %bb.a ]    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 248), align 8, !tbaa !836
  %i.r = load i32, ptr %i.p, align 8, !tbaa !844
  %i.s = sext i32 %.036 to i64
  %i.t = tail call i64 %i.q(i32 noundef %i.r, ptr noundef %.037, i64 noundef %i.s, i64 noundef %.035) #58, !inline_history !3449 ; 2 uses
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp eq i32 %.036, %i.u
  br i1 %i.v, label %seekAndRead.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.j
  %i.w = phi i32 [ %i.am, %bb.j ], [ %i.u, %bb.e ] ; 5 uses
  %i.x = phi i64 [ %i.al, %bb.j ], [ %i.t, %bb.e ]
  %.041.i = phi i32 [ %.1.i, %bb.j ], [ 0, %bb.e ] ; 3 uses
  %.02140.i = phi i32 [ %.122.i, %bb.j ], [ %.036, %bb.e ] ; 2 uses
  %.02339.i = phi ptr [ %.124.i, %bb.j ], [ %.037, %bb.e ] ; 2 uses
  %.02538.i = phi i64 [ %.126.i, %bb.j ], [ %.035, %bb.e ] ; 2 uses
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = tail call ptr @__errno_location() #60, !inline_history !3449
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !570 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aa, ptr %i.ac, align 8, !tbaa !852
  br label %seekAndRead.exit

bb.h:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %seekAndRead.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sub nsw i32 %.02140.i, %i.w
  %i.ae = and i64 %i.x, 2147483647                ; 2 uses
  %i.af = add nsw i64 %.02538.i, %i.ae
  %i.ag = add nuw nsw i32 %.041.i, %i.w
  %i.ah = getelementptr inbounds nuw i8, ptr %.02339.i, i64 %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.126.i = phi i64 [ %.02538.i, %bb.f ], [ %i.af, %bb.i ] ; 2 uses
  %.124.i = phi ptr [ %.02339.i, %bb.f ], [ %i.ah, %bb.i ] ; 2 uses
  %.122.i = phi i32 [ %.02140.i, %bb.f ], [ %i.ad, %bb.i ] ; 4 uses
  %.1.i = phi i32 [ %.041.i, %bb.f ], [ %i.ag, %bb.i ] ; 2 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 248), align 8, !tbaa !836
  %i.aj = load i32, ptr %i.p, align 8, !tbaa !844
  %i.ak = sext i32 %.122.i to i64
  %i.al = tail call i64 %i.ai(i32 noundef %i.aj, ptr noundef %.124.i, i64 noundef %i.ak, i64 noundef %.126.i) #58, !inline_history !3449 ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = icmp eq i32 %.122.i, %i.am
  br i1 %i.an, label %seekAndRead.exit, label %.lr.ph.i, !llvm.loop !3450

seekAndRead.exit:                                 ; preds = %bb.h, %bb.j, %bb.e, %bb.g
  %i.ao = phi i32 [ %i.w, %bb.g ], [ %.036, %bb.e ], [ 0, %bb.h ], [ %.122.i, %bb.j ]
  %.2.i = phi i32 [ 0, %bb.g ], [ 0, %bb.e ], [ %.041.i, %bb.h ], [ %.1.i, %bb.j ]
  %i.ap = add nsw i32 %.2.i, %i.ao                ; 4 uses
  %i.aq = icmp eq i32 %i.ap, %.036
  br i1 %i.aq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %seekAndRead.exit
  %i.ar = icmp slt i32 %i.ap, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.as, align 8, !tbaa !852
  %switch.tableidx = add i32 %i.at, -5            ; 2 uses
  %i.au = icmp ult i32 %switch.tableidx, 30
  br i1 %i.au, label %switch.lookup, label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %i.as, align 8, !tbaa !852
  %i.av = zext nneg i32 %i.ap to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.037, i64 %i.av
  %i.ax = sub nsw i32 %.036, %i.ap
  %i.ay = sext i32 %i.ax to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 0, i64 %i.ay, i1 false)
  br label %bb.n

switch.lookup:                                    ; preds = %bb.l
  %i.az = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.unixRead, i64 %i.az
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %switch.lookup, %seekAndRead.exit, %bb.m, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 522, %bb.m ], [ %switch.ext, %switch.lookup ], [ 0, %seekAndRead.exit ], [ 266, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 779) i32 @unixWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.019 = phi ptr [ %1, %bb.a ], [ %i.t, %bb.e ]  ; 2 uses
  %.018 = phi i32 [ %2, %bb.a ], [ %i.q, %bb.e ]  ; 4 uses
  %.0 = phi i64 [ %3, %bb.a ], [ %i.s, %bb.e ]    ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !844
  %i.c = and i32 %.018, 131071
  %i.d = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 320), align 16, !tbaa !836
  %i.f = tail call i64 %i.e(i32 noundef %i.b, ptr noundef %.019, i64 noundef %i.d, i64 noundef %.0) #58, !inline_history !3451 ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %seekAndWrite.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #60, !inline_history !3451
  %i.j = load i32, ptr %i.i, align 4, !tbaa !570  ; 3 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %seekAndWrite.exit.thread, !llvm.loop !130

seekAndWrite.exit.thread:                         ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.j, ptr %i.l, align 8, !tbaa !570
  %i.m = icmp sgt i32 %.018, %i.g
  br i1 %i.m, label %bb.g, label %bb.i

seekAndWrite.exit:                                ; preds = %bb.c
  %i.n = icmp sgt i32 %.018, %i.g                 ; 2 uses
  %i.o = icmp ne i32 %i.g, 0
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %seekAndWrite.exit
  %i.q = sub nuw nsw i32 %.018, %i.g
  %i.r = and i64 %i.f, 2147483647                 ; 2 uses
  %i.s = add nsw i64 %i.r, %.0
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 %i.r
  br label %bb.b, !llvm.loop !3452

bb.f:                                             ; preds = %seekAndWrite.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %seekAndWrite.exit.thread
  %.not = icmp eq i32 %i.j, 28
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.l, %bb.g ]
  store i32 0, ptr %i.v, align 8, !tbaa !852
  br label %bb.i

bb.i:                                             ; preds = %seekAndWrite.exit.thread, %bb.f, %bb.g, %bb.h
  %.020 = phi i32 [ 778, %bb.g ], [ 13, %bb.h ], [ 0, %bb.f ], [ 0, %seekAndWrite.exit.thread ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 1547) i32 @unixTruncate(ptr nofree noundef captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1395
  %.fr18 = freeze i32 %i.b                        ; 2 uses
  %i.c = icmp sgt i32 %.fr18, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %.fr18 to i64              ; 2 uses
  %i.e = add i64 %1, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = srem i64 %i.f, %i.d
  %i.h = sub nsw i64 %i.f, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.h, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !844
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 152), align 8, !tbaa !836
  %i.l = tail call i32 %i.k(i32 noundef %i.j, i64 noundef %.0) #58, !inline_history !131 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %robust_ftruncate.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #60    ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !570
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.d, label %robust_ftruncate.exit.thread, !llvm.loop !132

robust_ftruncate.exit:                            ; preds = %bb.d
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %robust_ftruncate.exit.robust_ftruncate.exit.thread_crit_edge

robust_ftruncate.exit.robust_ftruncate.exit.thread_crit_edge: ; preds = %robust_ftruncate.exit
  %.pre = tail call ptr @__errno_location() #60
end_hunk_0
begin_hunk_1_@pager_write_pagelist:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 25
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !733
  %i.cb = lshr i32 %i.bs, 8
  %i.cc = trunc i32 %i.cb to i8                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 26
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !733
  %i.ce = trunc i32 %i.bs to i8                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 27
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !733
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !894 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 92
  store i8 %i.bx, ptr %i.ch, align 1, !tbaa !733
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 93
  store i8 %i.bz, ptr %i.ci, align 1, !tbaa !733
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 94
  store i8 %i.cc, ptr %i.cj, align 1, !tbaa !733
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 95
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !733
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !894
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store <4 x i8> <i8 0, i8 46, i8 -107, i8 -52>, ptr %i.cm, align 1, !tbaa !733
  %.pre53 = load i64, ptr %i.ah, align 8, !tbaa !630
  br label %bb.k

bb.k:                                             ; preds = %pager_write_changecounter.exit, %bb.j
  %i.cn = phi i64 [ %.pre53, %pager_write_changecounter.exit ], [ %i.av, %bb.j ]
  %i.co = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !894 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !900 ; 2 uses
  %i.cr = trunc i64 %i.cn to i32
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !863
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1005
  %i.cv = call i32 %i.cu(ptr noundef nonnull %i.cq, ptr noundef %i.cp, i32 noundef %i.cr, i64 noundef %i.aw) #58, !inline_history !56 ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %i.cw, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = load i32, ptr %i.aj, align 8, !tbaa !1042
  %i.cy = icmp ugt i32 %i.an, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !1042
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cz = load i32, ptr %i.ak, align 8, !tbaa !570
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.ak, align 8, !tbaa !570
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !1041 ; 2 uses
  %.not.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i47, label %sqlite3BackupUpdate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !894
  call fastcc void @backupUpdate(ptr noundef %i.db, i32 noundef %i.an, ptr noundef readonly %i.dc), !inline_history !167
  br label %sqlite3BackupUpdate.exit

sqlite3BackupUpdate.exit:                         ; preds = %bb.p, %bb.o, %bb.h, %bb.i
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.cv, %bb.o ], [ %i.cv, %bb.p ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.04251, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !899 ; 2 uses
  %i.df = icmp eq i32 %.2, 0
  %i.dg = icmp ne ptr %i.de, null
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.h, label %._crit_edge, !llvm.loop !3732

._crit_edge:                                      ; preds = %sqlite3BackupUpdate.exit, %bb.b, %bb.g
  %.1.lcssa = phi i32 [ 0, %bb.g ], [ %i.k, %bb.b ], [ %.2, %sqlite3BackupUpdate.exit ]
  ret i32 %.1.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @walWriteOneFrame(ptr nofree noundef nonnull readonly captures(none) %0, ptr %.8.val, i32 %.48.val, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = load ptr, ptr %0, align 8, !tbaa !1603   ; 6 uses
  %i.c = lshr i32 %.48.val, 24
  %i.d = trunc nuw i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 16, !tbaa !733
  %i.e = lshr i32 %.48.val, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !733
  %i.h = lshr i32 %.48.val, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !733
  %i.k = trunc i32 %.48.val to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !733
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.n = lshr i32 %1, 24
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %i.m, align 4, !tbaa !733
  %i.p = lshr i32 %1, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !733
  %i.s = lshr i32 %1, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.t, ptr %i.u, align 2, !tbaa !733
  %i.v = trunc i32 %1 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !733
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1512
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 85
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !1579
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !570 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !570 ; 3 uses
  %i.al = load i32, ptr %i.a, align 16, !tbaa !570 ; 2 uses
  br i1 %i.ag, label %.preheader96.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = add i32 %i.ak, %i.ai
  %i.ao = add i32 %i.an, %i.am
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !570
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  br label %walChecksumBytes.exit.i

.preheader96.i.i:                                 ; preds = %bb.b
  %i.ar = add i32 %i.ak, %i.ai
  %i.as = add i32 %i.ar, %i.al
  %i.at = load i32, ptr %i.m, align 4, !tbaa !570
  br label %walChecksumBytes.exit.i

walChecksumBytes.exit.i:                          ; preds = %.preheader96.i.i, %.preheader.i.i
  %.sink27.i = phi i32 [ %i.aq, %.preheader.i.i ], [ %i.at, %.preheader96.i.i ]
  %.sink26.i = phi i32 [ %i.ao, %.preheader.i.i ], [ %i.as, %.preheader96.i.i ] ; 2 uses
  %i.au = add i32 %.sink27.i, %i.ak
  %i.av = add i32 %i.au, %.sink26.i
  store i32 %.sink26.i, ptr %i.aa, align 8, !tbaa !570
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !570
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !1576
  tail call fastcc void @walChecksumBytes(i32 noundef %i.ah, ptr noundef readonly %.8.val, i32 noundef %i.ax, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = load i32, ptr %i.aa, align 8, !tbaa !570 ; 4 uses
  %i.ba = lshr i32 %i.az, 24
  %i.bb = trunc nuw i32 %i.ba to i8
  store i8 %i.bb, ptr %i.ay, align 16, !tbaa !733
  %i.bc = lshr i32 %i.az, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !733
  %i.bf = lshr i32 %i.az, 8
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !733
  %i.bi = trunc i32 %i.az to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !733
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bl = load i32, ptr %i.aj, align 4, !tbaa !570 ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bk, align 4, !tbaa !733
  %i.bo = lshr i32 %i.bl, 16
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !733
  %i.br = lshr i32 %i.bl, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !733
  %i.bu = trunc i32 %i.bl to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !733
  br label %walEncodeFrame.exit

bb.c:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %walEncodeFrame.exit

walEncodeFrame.exit:                              ; preds = %walChecksumBytes.exit.i, %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1605 ; 4 uses
  %i.bz = icmp sge i64 %2, %i.by
  %i.ca = add i64 %2, 24                          ; 7 uses
  %.not.i = icmp slt i64 %i.ca, %i.by
  %or.cond = or i1 %i.bz, %.not.i
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %walEncodeFrame.exit
  %i.cb = sub nsw i64 %i.by, %2                   ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1604 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !863
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1005
  %i.ci = call i32 %i.ch(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.a, i32 noundef %i.cc, i64 noundef %2) #58, !inline_history !3733 ; 2 uses
  %.not43.i = icmp eq i32 %i.ci, 0
  br i1 %.not43.i, label %bb.e, label %walWriteToLog.exit24

bb.e:                                             ; preds = %bb.d
  %i.cj = sub nsw i32 24, %i.cc
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cb
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !1606
  %i.cn = and i32 %i.cm, 3                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !1604 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !863
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1047
  %i.cs = call i32 %i.cr(ptr noundef nonnull %i.co, i32 noundef range(i32 0, 256) %i.cn) #58, !inline_history !3734
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ct = phi i32 [ %i.cs, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.cu = icmp ne i32 %i.cc, 24
  %i.cv = icmp eq i32 %i.ct, 0
  %or.cond.not.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond.not.i, label %bb.h, label %walWriteToLog.exit

bb.h:                                             ; preds = %bb.g, %walEncodeFrame.exit
  %.135.i = phi ptr [ %i.ck, %bb.g ], [ %i.a, %walEncodeFrame.exit ]
  %.133.i = phi i32 [ %i.cj, %bb.g ], [ 24, %walEncodeFrame.exit ]
  %.1.i = phi i64 [ %i.by, %bb.g ], [ %2, %walEncodeFrame.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1604 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !863
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1005
  %i.db = call i32 %i.da(ptr noundef nonnull %i.cx, ptr noundef nonnull %.135.i, i32 noundef %.133.i, i64 noundef %.1.i) #58, !inline_history !3733
  br label %walWriteToLog.exit

walWriteToLog.exit:                               ; preds = %bb.g, %bb.h
  %.137.i = phi i32 [ %i.db, %bb.h ], [ %i.ct, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %.137.i, 0
  br i1 %.not, label %bb.i, label %walWriteToLog.exit24

bb.i:                                             ; preds = %walWriteToLog.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !1607 ; 3 uses
  %i.de = load i64, ptr %i.bx, align 8, !tbaa !1605 ; 3 uses
  %i.df = icmp sge i64 %i.ca, %i.de
  %i.dg = sext i32 %i.dd to i64
  %i.dh = add nsw i64 %i.ca, %i.dg
  %.not.i19 = icmp slt i64 %i.dh, %i.de
  %or.cond4 = select i1 %i.df, i1 true, i1 %.not.i19
  br i1 %or.cond4, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = sub nsw i64 %i.de, %i.ca                ; 2 uses
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1604 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !863
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1005
  %i.dp = call i32 %i.do(ptr noundef nonnull %i.dl, ptr noundef %.8.val, i32 noundef %i.dj, i64 noundef %i.ca) #58, !inline_history !3733 ; 2 uses
  %.not43.i20 = icmp eq i32 %i.dp, 0
  br i1 %.not43.i20, label %bb.k, label %walWriteToLog.exit24

bb.k:                                             ; preds = %bb.j
  %sext.i21 = shl i64 %i.di, 32
  %3 = ashr exact i64 %sext.i21, 32               ; 2 uses
  %4 = add nsw i64 %3, %i.ca
  %i.dq = sub nsw i32 %i.dd, %i.dj                ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.8.val, i64 %3
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !1606
  %i.du = and i32 %i.dt, 3                        ; 2 uses
  %.not.i.i22 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %i.dk, align 8, !tbaa !1604 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !863
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1047
  %i.dz = call i32 %i.dy(ptr noundef nonnull %i.dv, i32 noundef range(i32 0, 256) %i.du) #58, !inline_history !3734
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ea = phi i32 [ %i.dz, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.eb = icmp ne i32 %i.dq, 0
  %i.ec = icmp eq i32 %i.ea, 0
  %or.cond.not.i23 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.not.i23, label %bb.n, label %walWriteToLog.exit24

bb.n:                                             ; preds = %bb.m, %bb.i
  %.135.i15 = phi ptr [ %i.dr, %bb.m ], [ %.8.val, %bb.i ]
  %.133.i16 = phi i32 [ %i.dq, %bb.m ], [ %i.dd, %bb.i ]
  %.1.i17 = phi i64 [ %4, %bb.m ], [ %i.ca, %bb.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1604 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !863
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1005
  %i.ei = call i32 %i.eh(ptr noundef nonnull %i.ee, ptr noundef %.135.i15, i32 noundef %.133.i16, i64 noundef %.1.i17) #58, !inline_history !3733
  br label %walWriteToLog.exit24

walWriteToLog.exit24:                             ; preds = %bb.d, %bb.n, %bb.m, %bb.j, %walWriteToLog.exit
  %.0 = phi i32 [ %i.dp, %bb.j ], [ %.137.i, %walWriteToLog.exit ], [ %i.ei, %bb.n ], [ %i.ea, %bb.m ], [ %i.ci, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walLimitSize(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1318 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3BeginBenignMalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b() #58, !inline_history !117
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1568 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !863
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1006
  %i.h = call i32 %i.g(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #58, !inline_history !152 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %sqlite3BeginBenignMalloc.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !565
  %i.k = icmp sgt i64 %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !1568 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !863
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1007
  %i.p = call i32 %i.o(ptr noundef nonnull %i.l, i64 noundef %1) #58, !inline_history !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %sqlite3BeginBenignMalloc.exit
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ], [ %i.h, %sqlite3BeginBenignMalloc.exit ] ; 2 uses
  %i.q = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1319 ; 2 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %sqlite3EndBenignMalloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.q() #58, !inline_history !118
  br label %sqlite3EndBenignMalloc.exit

sqlite3EndBenignMalloc.exit:                      ; preds = %bb.e, %bb.f
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3EndBenignMalloc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1585
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %.0, ptr noundef nonnull @.str.115, ptr noundef %i.s)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sqlite3EndBenignMalloc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walRestartHdr(ptr nofree noundef captures(none) initializes((72, 76), (84, 85), (88, 92), (108, 120)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1480 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !786 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1574
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !1574
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.f, align 8, !tbaa !1560
  %i.g = load i8, ptr %i.b, align 8, !tbaa !733
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !733
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !733
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !733
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %i.x = add i32 %i.w, 1                          ; 4 uses
  %i.y = lshr i32 %i.x, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.b, align 8, !tbaa !733
  %i.aa = lshr i32 %i.x, 16
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.j, align 1, !tbaa !733
  %i.ac = lshr i32 %i.x, 8
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.o, align 2, !tbaa !733
  %i.ae = trunc i32 %i.x to i8
  store i8 %i.ae, ptr %i.t, align 1, !tbaa !733
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %1, ptr %i.af, align 4
  %.val.val.i = load ptr, ptr %.val, align 8, !tbaa !786 ; 2 uses
  %.ptr10.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i8 1, ptr %i.ag, align 4, !tbaa !1580
  store i32 3007000, ptr %.ptr10.i, align 8, !tbaa !1581
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !570 ; 2 uses
  %i.aj = add i32 %i.ai, 3007000
  %.2.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i32, ptr %.2.i.ptr.1.i, align 8, !tbaa !570
  %i.al = add i32 %i.ai, 6014000
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !570
  %i.ao = add i32 %i.aj, %i.an
  %i.ap = add i32 %i.ao, %i.am                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ar = add i32 %i.ap, %i.am                    ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !570
  %i.at = add i32 %i.ap, %i.as
  %i.au = add i32 %i.at, %i.ar                    ; 2 uses
  %.2.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aw = load i32, ptr %.2.i.ptr.3.i, align 8, !tbaa !570
  %i.ax = add i32 %i.ar, %i.aw
  %i.ay = add i32 %i.ax, %i.au                    ; 2 uses
  %i.az = load i32, ptr %i.av, align 4, !tbaa !570
  %i.ba = add i32 %i.au, %i.az
  %i.bb = add i32 %i.ba, %i.ay                    ; 2 uses
  %i.bc = load i32, ptr %i.b, align 8, !tbaa !570
  %i.bd = add i32 %i.ay, %i.bc
  %i.be = add i32 %i.bd, %i.bb                    ; 2 uses
  %i.bf = add i32 %i.bb, %1
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.be, ptr %i.bh, align 8, !tbaa !570
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !570
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %.ptr10.i, i64 48, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !1471
  %.not.i.i = icmp eq i8 %i.bl, 2
  br i1 %.not.i.i, label %walIndexWriteHdr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1476 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !863
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1577
  tail call void %i.bq(ptr noundef nonnull %i.bn) #58, !inline_history !3735
  br label %walIndexWriteHdr.exit

walIndexWriteHdr.exit:                            ; preds = %bb.a, %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.val.val.i, ptr noundef nonnull align 8 dereferenceable(48) %.ptr10.i, i64 48, i1 false)
  store atomic volatile i32 0, ptr %i.br monotonic, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.val, i64 128
  store volatile i32 0, ptr %i.bs, align 4, !tbaa !1584
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.val, i64 104
  store volatile i32 0, ptr %i.bt, align 4, !tbaa !570
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.val, i64 108
  store volatile i32 -1, ptr %i.bu, align 4, !tbaa !570
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.val, i64 112
  store volatile i32 -1, ptr %i.bv, align 4, !tbaa !570
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.val, i64 116
  store volatile i32 -1, ptr %i.bw, align 4, !tbaa !570
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @btreeEndTransaction(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !616  ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !989
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  store i8 0, ptr %i.d, align 1, !tbaa !1063
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !976
  %.not = icmp eq i8 %i.f, 0
end_hunk_1
begin_hunk_2_@releasePageNotNull:bb.a
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.m, i64 noundef %i.t, ptr noundef %i.v) #58, !inline_history !51 ; 0 uses
  br label %sqlite3PagerUnrefNotNull.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.112.val)
  br label %sqlite3PagerUnrefNotNull.exit

sqlite3PagerUnrefNotNull.exit:                    ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @allocateBtreePage(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i8 noundef zeroext range(i8 0, 3) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !986  ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 64         ; 8 uses
  %.val = load i32, ptr %i.g, align 8, !tbaa !996 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !988
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)  ; 3 uses
  %.not = icmp ult i32 %i.l, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79763, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %releasePage.exit338

bb.c:                                             ; preds = %bb.a
  %.not257 = icmp eq i32 %i.k, 0
  br i1 %.not257, label %bb.cr, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %4, label %bb.h [
    i8 1, label %bb.e
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.not263 = icmp ugt i32 %3, %.val
  br i1 %.not263, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.m = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %.not264 = icmp eq i32 %i.m, 0
  %i.n = load i8, ptr %i.b, align 1
  %i.o = icmp eq i8 %i.n, 2
  %spec.select = zext i1 %i.o to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %.not264, label %bb.h, label %releasePage.exit338

bb.g:                                             ; preds = %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.e, %bb.f
  %.2195 = phi i8 [ %spec.select, %bb.f ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1009 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !896  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.u = load i16, ptr %i.t, align 4, !tbaa !895
  %i.v = and i16 %i.u, 4
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1001
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !901
  %.not13.i = icmp ult i32 %i.x, %i.z
  br i1 %.not13.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !991
  %.not15.i = icmp eq i32 %i.ab, 0
  br i1 %.not15.i, label %sqlite3PagerWrite.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.q), !inline_history !1002
  br label %sqlite3PagerWrite.exit

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1003 ; 2 uses
  %.not14.i = icmp eq i32 %i.ae, 0
  br i1 %.not14.i, label %bb.m, label %releasePage.exit338

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1004
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !630
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp ugt i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.q), !inline_history !1002
  br label %sqlite3PagerWrite.exit

bb.o:                                             ; preds = %bb.m
  %i.am = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.q), !inline_history !1002
  br label %sqlite3PagerWrite.exit

sqlite3PagerWrite.exit:                           ; preds = %bb.k, %bb.n, %bb.o
  %.0.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.o ], [ %i.al, %bb.n ] ; 2 uses
  %.not265 = icmp eq i32 %.0.i, 0
  br i1 %.not265, label %sqlite3PagerWrite.exit.thread, label %releasePage.exit338

sqlite3PagerWrite.exit.thread:                    ; preds = %bb.j, %sqlite3PagerWrite.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !988 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.ap = add i32 %i.l, -1                        ; 4 uses
  %i.aq = lshr i32 %i.ap, 24
  %i.ar = trunc nuw i32 %i.aq to i8
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !733
  %i.as = lshr i32 %i.ap, 16
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 37
  store i8 %i.at, ptr %i.au, align 1, !tbaa !733
  %i.av = lshr i32 %i.ap, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 38
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !733
  %i.ay = trunc i32 %i.ap to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 39
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !733
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = icmp eq i8 %4, 2                        ; 2 uses
  %.not271 = icmp eq i32 %3, 0
  %i.bc = icmp ne i8 %4, 2
  %i.bd = getelementptr i8, ptr %0, i64 96
  br label %bb.p

bb.p:                                             ; preds = %releasePage.exit, %sqlite3PagerWrite.exit.thread
  %i.be = phi ptr [ null, %sqlite3PagerWrite.exit.thread ], [ %i.of, %releasePage.exit ] ; 20 uses
  %.3196 = phi i8 [ %.2195, %sqlite3PagerWrite.exit.thread ], [ 1, %releasePage.exit ] ; 3 uses
  %.0190 = phi i32 [ 0, %sqlite3PagerWrite.exit.thread ], [ %i.co, %releasePage.exit ] ; 2 uses
  %.not266 = icmp eq ptr %i.be, null              ; 4 uses
  br i1 %.not266, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !988 ; 4 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !733
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw i32 %i.bi, 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !733
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 16
  %i.bo = or disjoint i32 %i.bn, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !733
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = or disjoint i32 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !988 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !733
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw i32 %i.by, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 33
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 16
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 34
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !733
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = or disjoint i32 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink564.in = phi ptr [ %i.ck, %bb.r ], [ %i.bu, %bb.q ]
  %.sink = phi i32 [ %i.cj, %bb.r ], [ %i.bt, %bb.q ]
  %.sink564 = load i8, ptr %.sink564.in, align 1, !tbaa !733
  %i.cl = zext i8 %.sink564 to i32
  %i.cm = or disjoint i32 %.sink, %i.cl           ; 6 uses
  %i.cn = icmp ugt i32 %i.cm, %.val
  br i1 %i.cn, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = add i32 %.0190, 1
  %i.cp = icmp ugt i32 %.0190, %i.l
  br i1 %i.cp, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.s, %bb.t
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79819, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %releasePage.exit334

bb.u:                                             ; preds = %bb.t
  %i.cq = call fastcc i32 @btreeGetUnusedPage(ptr noundef %0, i32 noundef %i.cm, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not267 = icmp eq i32 %i.cq, 0
  br i1 %.not267, label %bb.v, label %releasePage.exit334

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !1514 ; 22 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80 ; 7 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !988 ; 10 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 5
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 7
  %i.cy = load i32, ptr %i.cu, align 1            ; 5 uses
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %i.cy) ; 6 uses
  %i.da = icmp ne i32 %i.cy, 0
  %i.db = icmp ne i8 %.3196, 0                    ; 2 uses
  %or.cond = or i1 %i.db, %i.da
  br i1 %or.cond, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1009 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !896 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 52
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !895
  %i.di = and i16 %i.dh, 4
  %.not.i288 = icmp eq i16 %i.di, 0
  br i1 %.not.i288, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !1001
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !901
  %.not13.i289 = icmp ult i32 %i.dk, %i.dm
  br i1 %.not13.i289, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !991
  %.not15.i290 = icmp eq i32 %i.do, 0
  br i1 %.not15.i290, label %sqlite3PagerWrite.exit293.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.dd), !inline_history !1002
  br label %sqlite3PagerWrite.exit293

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !1003 ; 2 uses
  %.not14.i292 = icmp eq i32 %i.dr, 0
  br i1 %.not14.i292, label %bb.ab, label %.thread397.thread514

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 184
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !1004
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !630
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = icmp ugt i32 %i.dt, %i.dw
  br i1 %i.dx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dy = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.dd), !inline_history !1002
  br label %sqlite3PagerWrite.exit293

bb.ad:                                            ; preds = %bb.ab
  %i.dz = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.dd), !inline_history !1002
  br label %sqlite3PagerWrite.exit293

sqlite3PagerWrite.exit293:                        ; preds = %bb.z, %bb.ac, %bb.ad
  %.0.i291 = phi i32 [ %i.dp, %bb.z ], [ %i.dz, %bb.ad ], [ %i.dy, %bb.ac ] ; 2 uses
  %.not268 = icmp eq i32 %.0.i291, 0
  br i1 %.not268, label %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge, label %.thread397.thread514

sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge: ; preds = %sqlite3PagerWrite.exit293
  %.pre = load ptr, ptr %i.cs, align 8, !tbaa !988
  br label %sqlite3PagerWrite.exit293.thread

sqlite3PagerWrite.exit293.thread:                 ; preds = %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge, %bb.y
  %i.ea = phi ptr [ %.pre, %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge ], [ %i.ct, %bb.y ]
  store i32 %i.cm, ptr %2, align 4, !tbaa !570
  %i.eb = load ptr, ptr %i.h, align 8, !tbaa !988
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load i32, ptr %i.ea, align 1
  store i32 %i.ed, ptr %i.ec, align 1
  store ptr %i.cr, ptr %1, align 8, !tbaa !1514
  br label %.thread391.sink.split

bb.ae:                                            ; preds = %bb.v
  %i.ee = load i32, ptr %i.ba, align 8, !tbaa !1060
  %i.ef = lshr i32 %i.ee, 2
  %i.eg = add nsw i32 %i.ef, -2
  %i.eh = icmp ugt i32 %i.cz, %i.eg
  br i1 %i.eh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79848, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread397.thread514

bb.ag:                                            ; preds = %bb.ae
  %.not269 = icmp eq i8 %.3196, 0
  br i1 %.not269, label %bb.bp, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = icmp eq i32 %3, %i.cm
  %i.ej = icmp ult i32 %i.cm, %3
  %or.cond9 = and i1 %i.bb, %i.ej
  %or.cond445 = or i1 %i.ei, %or.cond9
  br i1 %or.cond445, label %bb.ai, label %bb.bp

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.cm, ptr %2, align 4, !tbaa !570
  store ptr %i.cr, ptr %1, align 8, !tbaa !1514
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1009 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !896 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 52
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !895
  %i.eq = and i16 %i.ep, 4
  %.not.i294 = icmp eq i16 %i.eq, 0
  br i1 %.not.i294, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !1001
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !901
  %.not13.i295 = icmp ult i32 %i.es, %i.eu
  br i1 %.not13.i295, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 128
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !991
  %.not15.i296 = icmp eq i32 %i.ew, 0
  br i1 %.not15.i296, label %sqlite3PagerWrite.exit299.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ex = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.el), !inline_history !1002
  br label %sqlite3PagerWrite.exit299

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !1003 ; 2 uses
  %.not14.i298 = icmp eq i32 %i.ez, 0
  br i1 %.not14.i298, label %bb.an, label %.thread397.thread514

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 184
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1004
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 200
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !630
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = icmp ugt i32 %i.fb, %i.fe
  br i1 %i.ff, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fg = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.el), !inline_history !1002
  br label %sqlite3PagerWrite.exit299

bb.ap:                                            ; preds = %bb.an
  %i.fh = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.el), !inline_history !1002
  br label %sqlite3PagerWrite.exit299

sqlite3PagerWrite.exit299:                        ; preds = %bb.al, %bb.ao, %bb.ap
  %.0.i297 = phi i32 [ %i.ex, %bb.al ], [ %i.fh, %bb.ap ], [ %i.fg, %bb.ao ] ; 2 uses
  %.not276 = icmp eq i32 %.0.i297, 0
  br i1 %.not276, label %sqlite3PagerWrite.exit299.thread, label %.thread397.thread514

sqlite3PagerWrite.exit299.thread:                 ; preds = %bb.ak, %sqlite3PagerWrite.exit299
  %i.fi = icmp eq i32 %i.cy, 0
  br i1 %i.fi, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %sqlite3PagerWrite.exit299.thread
  br i1 %.not266, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !988
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.cs, align 8, !tbaa !988
  %i.fm = load i32, ptr %i.fl, align 1
  store i32 %i.fm, ptr %i.fk, align 1
  br label %.thread391.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1009 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !896 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 52
end_hunk_2
begin_hunk_3_@sqlite3BtreeInsert:bb.a
  %i.qg = and i16 %i.qf, 4
  %.not.i169 = icmp eq i16 %i.qg, 0
  br i1 %.not.i169, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !1001
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !901
  %.not13.i = icmp ult i32 %i.qi, %i.qk
  br i1 %.not13.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 128
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !991
  %.not15.i = icmp eq i32 %i.qm, 0
  br i1 %.not15.i, label %sqlite3PagerWrite.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qn = call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.qb), !inline_history !1002
  br label %sqlite3PagerWrite.exit

bb.cw:                                            ; preds = %bb.ct, %bb.cs
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qd, i64 48
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !1003 ; 2 uses
  %.not14.i171 = icmp eq i32 %i.qp, 0
  br i1 %.not14.i171, label %bb.cx, label %.thread201

bb.cx:                                            ; preds = %bb.cw
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qd, i64 184
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !1004
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qd, i64 200
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !630
  %i.qu = trunc i64 %i.qt to i32
  %i.qv = icmp ugt i32 %i.qr, %i.qu
  br i1 %i.qv, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.qw = call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.qb), !inline_history !1002
  br label %sqlite3PagerWrite.exit

bb.cz:                                            ; preds = %bb.cx
  %i.qx = call fastcc i32 @pager_write(ptr noundef nonnull %i.qb), !inline_history !1002
  br label %sqlite3PagerWrite.exit

sqlite3PagerWrite.exit:                           ; preds = %bb.cv, %bb.cy, %bb.cz
  %.0.i170 = phi i32 [ %i.qn, %bb.cv ], [ %i.qx, %bb.cz ], [ %i.qw, %bb.cy ] ; 2 uses
  %.not152 = icmp eq i32 %.0.i170, 0
  br i1 %.not152, label %sqlite3PagerWrite.exit.thread, label %.thread201

sqlite3PagerWrite.exit.thread:                    ; preds = %bb.cu, %sqlite3PagerWrite.exit
  %i.qy = getelementptr inbounds nuw i8, ptr %i.dy, i64 80 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !988
  %i.ra = getelementptr inbounds nuw i8, ptr %i.dy, i64 26
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !1116
  %i.rc = zext i16 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !1117
  %i.rf = shl nuw nsw i32 %i.pu, 1
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rg ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !733
  %i.rj = zext i8 %i.ri to i64
  %i.rk = shl nuw nsw i64 %i.rj, 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !733
  %i.rn = zext i8 %i.rm to i64
  %i.ro = or disjoint i64 %i.rk, %i.rn
  %i.rp = and i64 %i.ro, %i.rc
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rp ; 6 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.rs = load i8, ptr %i.rr, align 8, !tbaa !1115
  %.not153 = icmp eq i8 %i.rs, 0
  br i1 %.not153, label %bb.da, label %bb.db

bb.da:                                            ; preds = %sqlite3PagerWrite.exit.thread
  %i.rt = load i32, ptr %i.rq, align 1
  store i32 %i.rt, ptr %i.ei, align 1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %sqlite3PagerWrite.exit.thread
  %i.ru = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !1496
  call void %i.rv(ptr noundef nonnull %i.dy, ptr noundef %i.rq, ptr noundef nonnull %8) #58
  %i.rw = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.rx = load i16, ptr %i.rw, align 4, !tbaa !1596
  %i.ry = zext i16 %i.rx to i32
  %i.rz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !1593
  %.not154 = icmp eq i32 %i.sa, %i.ry
  br i1 %.not154, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.sb = call fastcc i32 @clearCellOverflow(ptr noundef nonnull %i.dy, ptr noundef %i.rq, ptr noundef %8)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %storemerge155 = phi i32 [ %i.sb, %bb.dc ], [ 0, %bb.db ]
  store i32 %storemerge155, ptr %i.f, align 4, !tbaa !570
  %i.sc = load i8, ptr %i.j, align 1, !tbaa !1059
  %i.sd = and i8 %i.sc, -5
  store i8 %i.sd, ptr %i.j, align 1, !tbaa !1059
  %i.se = getelementptr inbounds nuw i8, ptr %8, i64 22
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !1595
  %i.sg = zext i16 %i.sf to i32                   ; 2 uses
  %i.sh = icmp eq i32 %.1180, %i.sg
  br i1 %i.sh, label %bb.de, label %bb.dm

bb.de:                                            ; preds = %bb.dd
  %i.si = load i16, ptr %i.rw, align 4, !tbaa !1596
  %i.sj = zext i16 %i.si to i32
  %i.sk = load i32, ptr %i.rz, align 8, !tbaa !1593
  %i.sl = icmp eq i32 %i.sk, %i.sj
  br i1 %i.sl, label %bb.df, label %bb.dm

bb.df:                                            ; preds = %bb.de
  %i.sm = load ptr, ptr %i.ef, align 8, !tbaa !616
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 33
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !1054
  %.not156 = icmp eq i8 %i.so, 0
  br i1 %.not156, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sp = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.sq = load i16, ptr %i.sp, align 8, !tbaa !1591
  %i.sr = zext i16 %i.sq to i32
  %i.ss = icmp samesign ult i32 %.1180, %i.sr
  br i1 %i.ss, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.st = load ptr, ptr %i.qy, align 8, !tbaa !988
  %i.su = getelementptr inbounds nuw i8, ptr %i.dy, i64 9
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !1066
  %i.sw = zext i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 10
  %i.sz = icmp ult ptr %i.rq, %i.sy
  br i1 %i.sz, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82864, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread197

bb.dj:                                            ; preds = %bb.dh
  %i.ta = zext nneg i32 %.1180 to i64             ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !1122
  %i.te = icmp ugt ptr %i.tb, %i.td
  br i1 %i.te, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82867, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread197

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.ei, i64 %i.ta, i1 false)
  br label %.thread197

bb.dm:                                            ; preds = %bb.dg, %bb.de, %bb.dd
  call fastcc void @dropCell(ptr noundef nonnull %i.dy, i32 noundef %i.pu, i32 noundef %i.sg, ptr noundef %i.f)
  %i.tf = load i32, ptr %i.f, align 4, !tbaa !570 ; 2 uses
  %.not157 = icmp eq i32 %i.tf, 0
  br i1 %.not157, label %bb.dn, label %.thread201

.thread197:                                       ; preds = %bb.cr, %bb.di, %bb.dk, %bb.dl
  %.0123.ph = phi i32 [ 0, %bb.dl ], [ 11, %bb.dk ], [ 11, %bb.di ], [ 11, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %bb.ey

.thread201:                                       ; preds = %bb.cw, %sqlite3PagerWrite.exit, %bb.dm
  %i.tg = phi i32 [ %.0.i170, %sqlite3PagerWrite.exit ], [ %i.tf, %bb.dm ], [ %i.qp, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %bb.ey

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %bb.dr

bb.do:                                            ; preds = %bb.cp
  %i.th = icmp slt i32 %i.pw, 0
  br i1 %i.th, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.ti = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.tj = load i16, ptr %i.ti, align 8, !tbaa !1501
  %.not150 = icmp eq i16 %i.tj, 0
  br i1 %.not150, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.tk = add i16 %i.pt, 1                        ; 2 uses
  store i16 %i.tk, ptr %i.ps, align 2, !tbaa !1118
  %i.tl = zext i16 %i.tk to i32
  %i.tm = load i8, ptr %i.j, align 1, !tbaa !1059
  %i.tn = and i8 %i.tm, -7
  store i8 %i.tn, ptr %i.j, align 1, !tbaa !1059
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dn, %bb.dq, %bb.dp, %bb.do
  %.0122 = phi i32 [ %i.pu, %bb.dn ], [ %i.tl, %bb.dq ], [ %i.pu, %bb.dp ], [ %i.pu, %bb.do ] ; 3 uses
  %i.to = add i32 %.1180, 2                       ; 4 uses
  %i.tp = load i32, ptr %i.dz, align 4, !tbaa !1491
  %i.tq = icmp sgt i32 %i.to, %i.tp
  br i1 %i.tq, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.tr = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 2 uses
  %i.ts = load i8, ptr %i.tr, align 4, !tbaa !1500 ; 2 uses
  %i.tt = add i8 %i.ts, 1
  store i8 %i.tt, ptr %i.tr, align 4, !tbaa !1500
  %i.tu = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.tv = zext i8 %i.ts to i64                    ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.tv
  store ptr %i.ei, ptr %i.tw, align 8, !tbaa !741
  %i.tx = trunc nuw i32 %.0122 to i16
  %i.ty = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.ty, i64 %i.tv
  store i16 %i.tx, ptr %i.tz, align 2, !tbaa !783
  br label %.thread79.i

bb.dt:                                            ; preds = %bb.dr
  %i.ua = getelementptr inbounds nuw i8, ptr %i.dy, i64 112
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !1009 ; 6 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 40
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !896 ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 52
  %i.uf = load i16, ptr %i.ue, align 4, !tbaa !895
  %i.ug = and i16 %i.uf, 4
  %.not.i50.i = icmp eq i16 %i.ug, 0
  br i1 %.not.i50.i, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !1001
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ub, i64 48
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !901
  %.not13.i.i = icmp ult i32 %i.ui, %i.uk
  br i1 %.not13.i.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ud, i64 128
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !991
  %.not15.i.i = icmp eq i32 %i.um, 0
  br i1 %.not15.i.i, label %sqlite3PagerWrite.exit.thread.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.un = call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ub), !inline_history !4181
  br label %sqlite3PagerWrite.exit.i

bb.dx:                                            ; preds = %bb.du, %bb.dt
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !1003 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.up, 0
  br i1 %.not14.i.i, label %bb.dy, label %insertCellFast.exit

bb.dy:                                            ; preds = %bb.dx
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ud, i64 184
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !1004
  %i.us = getelementptr inbounds nuw i8, ptr %i.ud, i64 200
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !630
  %i.uu = trunc i64 %i.ut to i32
  %i.uv = icmp ugt i32 %i.ur, %i.uu
  br i1 %i.uv, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.uw = call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ub), !inline_history !4181
  br label %sqlite3PagerWrite.exit.i

bb.ea:                                            ; preds = %bb.dy
  %i.ux = call fastcc i32 @pager_write(ptr noundef nonnull %i.ub), !inline_history !4181
  br label %sqlite3PagerWrite.exit.i

sqlite3PagerWrite.exit.i:                         ; preds = %bb.ea, %bb.dz, %bb.dw
  %.0.i.i = phi i32 [ %i.un, %bb.dw ], [ %i.ux, %bb.ea ], [ %i.uw, %bb.dz ] ; 2 uses
  %.not.i172 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i172, label %sqlite3PagerWrite.exit.thread.i, label %insertCellFast.exit

sqlite3PagerWrite.exit.thread.i:                  ; preds = %sqlite3PagerWrite.exit.i, %bb.dv
  %i.uy = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !988 ; 5 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.dy, i64 9 ; 3 uses
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !1066
  %i.vc = zext i8 %i.vb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.vd = getelementptr inbounds nuw i8, ptr %i.dy, i64 18
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !1498
  %i.vf = zext i16 %i.ve to i32
  %i.vg = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 4 uses
  %i.vh = load i16, ptr %i.vg, align 8, !tbaa !1501
  %i.vi = zext i16 %i.vh to i32
  %i.vj = shl nuw nsw i32 %i.vi, 1
  %i.vk = add nuw nsw i32 %i.vj, %i.vf            ; 5 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.vc ; 4 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 5 ; 3 uses
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !733
  %i.vo = zext i8 %i.vn to i32
  %i.vp = shl nuw nsw i32 %i.vo, 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 6 ; 3 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !733
  %i.vs = zext i8 %i.vr to i32
  %i.vt = or disjoint i32 %i.vp, %i.vs            ; 4 uses
  %i.vu = icmp samesign ugt i32 %i.vk, %i.vt
  br i1 %i.vu, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %sqlite3PagerWrite.exit.thread.i
  %i.vv = icmp eq i32 %i.vt, 0
  br i1 %i.vv, label %bb.ec, label %allocateSpace.exit.thread.sink.split.i

bb.ec:                                            ; preds = %bb.eb
  %i.vw = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !1065
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 56
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !1060
  %i.wa = icmp eq i32 %i.vz, 65536
  br i1 %i.wa, label %bb.ee, label %allocateSpace.exit.thread.sink.split.i

bb.ed:                                            ; preds = %sqlite3PagerWrite.exit.thread.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !1065
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 56
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !1060
  %i.wf = icmp sgt i32 %i.vt, %i.we
  br i1 %i.wf, label %allocateSpace.exit.thread.sink.split.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.051.i.i = phi i32 [ %i.vt, %bb.ed ], [ 65536, %bb.ec ] ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vl, i64 2
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !733
  %.not.i.i174 = icmp eq i8 %i.wh, 0
  br i1 %.not.i.i174, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !733
  %.not60.i.i = icmp eq i8 %i.wj, 0
  %i.wk = add nuw nsw i32 %i.vk, 2
  %.not61.i.i = icmp samesign ugt i32 %i.wk, %.051.i.i
  %or.cond.i.i = select i1 %.not60.i.i, i1 true, i1 %.not61.i.i
  br i1 %or.cond.i.i, label %bb.ek, label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %.old.i.i = add nuw nsw i32 %i.vk, 2
  %.not61.old.i.i = icmp samesign ugt i32 %.old.i.i, %.051.i.i
  br i1 %.not61.old.i.i, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.wl = call fastcc ptr @pageFindSlot(ptr noundef nonnull %i.dy, i32 noundef %.1180, ptr noundef %i.a), !inline_history !4182 ; 2 uses
  %.not62.i.i = icmp eq ptr %i.wl, null
  br i1 %.not62.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wm = ptrtoint ptr %i.wl to i64
  %i.wn = ptrtoint ptr %i.uz to i64
  %i.wo = sub i64 %i.wm, %i.wn                    ; 3 uses
  %i.wp = trunc i64 %i.wo to i32                  ; 2 uses
  %.not64.i.i = icmp slt i32 %i.vk, %i.wp
  br i1 %.not64.i.i, label %allocateSpace.exit.thread72.i, label %allocateSpace.exit.i

allocateSpace.exit.thread72.i:                    ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.pre95.i = lshr i64 %i.wo, 8
  %.pre85.i = trunc i64 %.pre95.i to i8
  %.pre87.i = trunc i64 %i.wo to i8
  br label %bb.en

bb.ej:                                            ; preds = %bb.eh
  %i.wq = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  %.not63.i.i = icmp eq i32 %i.wq, 0
  br i1 %.not63.i.i, label %bb.ek, label %allocateSpace.exit.thread.i

bb.ek:                                            ; preds = %bb.ej, %bb.eg, %bb.ef
  %i.wr = add i32 %i.vk, %i.to
  %i.ws = icmp sgt i32 %i.wr, %.051.i.i
  br i1 %i.ws, label %bb.el, label %allocateSpace.exit.thread67.i

bb.el:                                            ; preds = %bb.ek
  %i.wt = load i32, ptr %i.dz, align 4, !tbaa !1491
  %i.wu = sub nsw i32 %i.wt, %i.to
  %spec.select.i.i175 = call i32 @llvm.smin.i32(i32 %i.wu, i32 4)
  %i.wv = call fastcc i32 @defragmentPage(ptr noundef nonnull %i.dy, i32 noundef %spec.select.i.i175), !inline_history !4182 ; 2 uses
  %.not65.i.i = icmp eq i32 %i.wv, 0
  br i1 %.not65.i.i, label %bb.em, label %allocateSpace.exit.thread.i

bb.em:                                            ; preds = %bb.el
  %i.ww = load i8, ptr %i.vm, align 1, !tbaa !733
  %i.wx = zext i8 %i.ww to i32
  %i.wy = shl nuw nsw i32 %i.wx, 8
  %i.wz = load i8, ptr %i.vq, align 1, !tbaa !733
  %i.xa = zext i8 %i.wz to i32
  %i.xb = or disjoint i32 %i.wy, %i.xa
  %i.xc = add nuw nsw i32 %i.xb, 65535
  %i.xd = and i32 %i.xc, 65535
  %i.xe = add nuw nsw i32 %i.xd, 1
  br label %allocateSpace.exit.thread67.i

allocateSpace.exit.thread67.i:                    ; preds = %bb.em, %bb.ek
  %.152.i.i = phi i32 [ %i.xe, %bb.em ], [ %.051.i.i, %bb.ek ]
  %i.xf = sub nsw i32 %.152.i.i, %.1180           ; 3 uses
  %i.xg = lshr i32 %i.xf, 8
  %i.xh = trunc i32 %i.xg to i8                   ; 2 uses
end_hunk_3
begin_hunk_4_@copyNodeContent:bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.e
  %.035.sink = phi i32 [ %i.at, %bb.e ], [ %i.aq, %bb.c ], [ %i.ao, %bb.b ]
  store i32 %.035.sink, ptr %2, align 4, !tbaa !570
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @rebuildPage(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, -2147483648) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1066
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !988  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1065 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1060 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1117
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !622
  %i.m = getelementptr i8, ptr %i.l, i64 280
  %.val = load ptr, ptr %i.m, align 8, !tbaa !1520 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 6 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 2 uses
  %i.w = icmp ugt i32 %i.v, %i.i
  %spec.store.select = select i1 %i.w, i32 0, i32 %i.v ; 2 uses
  %i.x = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.x ; 2 uses
  %i.aa = sub i32 %i.i, %spec.store.select
  %i.ab = zext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.z, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !570
  %.not = icmp sgt i32 %i.ae, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !4336

bb.c:                                             ; preds = %bb.b
  %i.af = sext i32 %i.i to i64
  %i.ag = getelementptr inbounds i8, ptr %i.e, i64 %i.af ; 3 uses
  %i.ah = add nsw i32 %2, %1
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.an = sext i32 %1 to i64
  %i.ao = sext i32 %i.ah to i64
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.c
  %indvars.iv144.ph = phi i64 [ %indvars.iv.next145, %bb.n ], [ %i.an, %bb.c ]
  %.0103.ph = phi ptr [ %i.bo, %bb.n ], [ %i.k, %bb.c ]
  %.0101.ph = phi ptr [ %i.bh, %bb.n ], [ %i.ag, %bb.c ]
  %.199.ph = phi i32 [ %i.bs, %bb.n ], [ %i.ai, %bb.c ] ; 2 uses
  %.pn = phi i64 [ %i.bt, %bb.n ], [ %indvars.iv, %bb.c ]
  %.097.ph.in = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.pn
  %.097.ph = load ptr, ptr %.097.ph.in, align 8, !tbaa !741 ; 2 uses
  %i.ap = sext i32 %.199.ph to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ap
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.m
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %bb.m ], [ %indvars.iv144.ph, %.outer ] ; 3 uses
  %.0103 = phi ptr [ %i.bo, %bb.m ], [ %.0103.ph, %.outer ] ; 3 uses
  %.0101 = phi ptr [ %i.bh, %bb.m ], [ %.0101.ph, %.outer ]
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !1859
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !741 ; 6 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !1860
  %i.av = getelementptr inbounds [2 x i8], ptr %i.au, i64 %indvars.iv144
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !783
  %i.ax = ptrtoint ptr %i.at to i64
  %.not120 = icmp uge ptr %i.at, %i.z
  %i.ay = icmp ult ptr %i.at, %i.ag
  %or.cond = select i1 %.not120, i1 %i.ay, i1 false
  %i.az = zext i16 %i.aw to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bb = icmp ugt ptr %i.ba, %i.ag
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80904, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.bc = sub i64 %i.ax, %i.am
  %i.bd = getelementptr inbounds i8, ptr %.val, i64 %i.bc
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.be = icmp ugt ptr %i.ba, %.097.ph
  %i.bf = icmp ult ptr %i.at, %.097.ph
  %or.cond123 = and i1 %i.bf, %i.be
  br i1 %or.cond123, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80909, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %.096 = phi ptr [ %i.at, %bb.h ], [ %i.bd, %bb.g ]
  %i.bg = sub nsw i64 0, %i.az
  %i.bh = getelementptr inbounds i8, ptr %.0101, i64 %i.bg ; 5 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.am                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 8
  %i.bl = trunc i64 %i.bk to i8                   ; 2 uses
  store i8 %i.bl, ptr %.0103, align 1, !tbaa !733
  %i.bm = trunc i64 %i.bj to i8                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0103, i64 1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !733
  %i.bo = getelementptr inbounds nuw i8, ptr %.0103, i64 2 ; 3 uses
  %i.bp = icmp ult ptr %i.bh, %i.bo
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80915, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %.096, i64 %i.az, i1 false)
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 4 uses
  %.not121 = icmp slt i64 %indvars.iv.next145, %i.ao
  br i1 %.not121, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bq = load i32, ptr %i.aq, align 4, !tbaa !570
  %i.br = sext i32 %i.bq to i64
  %.not122 = icmp slt i64 %indvars.iv.next145, %i.br
  br i1 %.not122, label %bb.d, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i32 %.199.ph, 1                 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  br label %.outer

bb.o:                                             ; preds = %bb.l
  %i.bu = trunc i32 %2 to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i16 %i.bu, ptr %i.bv, align 8, !tbaa !1501
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.bw, align 4, !tbaa !1500
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.bx, align 1, !tbaa !733
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 0, ptr %i.by, align 1, !tbaa !733
  %i.bz = load i16, ptr %i.bv, align 8, !tbaa !1501
  %i.ca = lshr i16 %i.bz, 8
  %i.cb = trunc nuw i16 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !733
  %i.cd = load i16, ptr %i.bv, align 8, !tbaa !1501
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !733
  store i8 %i.bl, ptr %i.o, align 1, !tbaa !733
  store i8 %i.bm, ptr %i.s, align 1, !tbaa !733
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store i8 0, ptr %i.cg, align 1, !tbaa !733
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.k, %bb.f, %bb.o
  %.2109 = phi i32 [ 0, %bb.o ], [ 11, %bb.f ], [ 11, %bb.k ], [ 11, %bb.i ]
  ret i32 %.2109
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insertCell(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !1500
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %3, 2                            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1491
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not63 = icmp eq ptr %4, null
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %2, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.054 = phi ptr [ %4, %bb.d ], [ %2, %bb.c ]    ; 5 uses
  %i.j = lshr i32 %5, 24
  %i.k = trunc nuw i32 %i.j to i8
  store i8 %i.k, ptr %.054, align 1, !tbaa !733
  %i.l = lshr i32 %5, 16
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.054, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !733
  %i.o = lshr i32 %5, 8
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.054, i64 2
  store i8 %i.p, ptr %i.q, align 1, !tbaa !733
  %i.r = trunc i32 %5 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 3
  store i8 %i.r, ptr %i.s, align 1, !tbaa !733
  %i.t = load i8, ptr %i.c, align 4, !tbaa !1500  ; 2 uses
  %i.u = add i8 %i.t, 1
  store i8 %i.u, ptr %i.c, align 4, !tbaa !1500
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = zext i8 %i.t to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.054, ptr %i.x, align 8, !tbaa !741
  %i.y = trunc i32 %1 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.w
  store i16 %i.y, ptr %i.aa, align 2, !tbaa !783
  br label %.thread92

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1009 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !896 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !895
  %i.ah = and i16 %i.ag, 4
  %.not.i64 = icmp eq i16 %i.ah, 0
  br i1 %.not.i64, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1001
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !901
  %.not13.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not13.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.an = load i32, ptr %i.am, align 8, !tbaa !991
  %.not15.i = icmp eq i32 %i.an, 0
  br i1 %.not15.i, label %sqlite3PagerWrite.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ac), !inline_history !1002
  br label %sqlite3PagerWrite.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1003 ; 2 uses
  %.not14.i = icmp eq i32 %i.aq, 0
  br i1 %.not14.i, label %bb.k, label %.thread89

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1004
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.au = load i64, ptr %i.at, align 8, !tbaa !630
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp ugt i32 %i.as, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ac), !inline_history !1002
  br label %sqlite3PagerWrite.exit

bb.m:                                             ; preds = %bb.k
  %i.ay = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.ac), !inline_history !1002
  br label %sqlite3PagerWrite.exit

sqlite3PagerWrite.exit:                           ; preds = %bb.i, %bb.l, %bb.m
  %.0.i = phi i32 [ %i.ao, %bb.i ], [ %i.ay, %bb.m ], [ %i.ax, %bb.l ] ; 2 uses
  %.not59 = icmp eq i32 %.0.i, 0
  br i1 %.not59, label %sqlite3PagerWrite.exit.thread, label %.thread89

sqlite3PagerWrite.exit.thread:                    ; preds = %bb.h, %sqlite3PagerWrite.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !988 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !1066
  %i.bd = zext i8 %i.bc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !1498
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !1501
  %i.bj = zext i16 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = add nuw nsw i32 %i.bk, %i.bg            ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 6 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !733
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt            ; 4 uses
  %i.bv = icmp samesign ugt i32 %i.bl, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %sqlite3PagerWrite.exit.thread
  %i.bw = icmp eq i32 %i.bu, 0
  br i1 %i.bw, label %bb.o, label %allocateSpace.exit.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1065
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !1060
  %i.cb = icmp eq i32 %i.ca, 65536
  br i1 %i.cb, label %bb.q, label %allocateSpace.exit.thread.sink.split

bb.p:                                             ; preds = %sqlite3PagerWrite.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1065
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !1060
  %i.cg = icmp sgt i32 %i.bu, %i.cf
  br i1 %i.cg, label %allocateSpace.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.051.i = phi i32 [ %i.bu, %bb.p ], [ 65536, %bb.o ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !733
  %.not.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !733
  %.not60.i = icmp eq i8 %i.ck, 0
  %i.cl = add nuw nsw i32 %i.bl, 2
  %.not61.i = icmp samesign ugt i32 %i.cl, %.051.i
  %or.cond.i = select i1 %.not60.i, i1 true, i1 %.not61.i
  br i1 %or.cond.i, label %bb.w, label %bb.t

bb.s:                                             ; preds = %bb.q
  %.old.i = add nuw nsw i32 %i.bl, 2
  %.not61.old.i = icmp samesign ugt i32 %.old.i, %.051.i
  br i1 %.not61.old.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cm = call fastcc ptr @pageFindSlot(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %i.a) ; 2 uses
  %.not62.i = icmp eq ptr %i.cm, null
  br i1 %.not62.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ba to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %.not64.i = icmp slt i32 %i.bl, %i.cq
  br i1 %.not64.i, label %allocateSpace.exit.thread85, label %allocateSpace.exit

allocateSpace.exit.thread85:                      ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.pre107 = lshr i64 %i.cp, 8
  %.pre95 = trunc i64 %.pre107 to i8
  %.pre97 = trunc i64 %i.cp to i8
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  %.not63.i = icmp eq i32 %i.cr, 0
  br i1 %.not63.i, label %bb.w, label %allocateSpace.exit.thread

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.r
  %i.cs = add i32 %i.e, %i.bl
  %i.ct = icmp sgt i32 %i.cs, %.051.i
  br i1 %i.ct, label %bb.x, label %allocateSpace.exit.thread80

bb.x:                                             ; preds = %bb.w
end_hunk_4
begin_hunk_5_@jsonbPayloadSize:bb.a
bb.i:                                             ; preds = %bb.d
  %i.aa = add i32 %1, 4                           ; 2 uses
  %.not79 = icmp ult i32 %i.aa, %i.b
  br i1 %.not79, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.ab = add nuw i32 %1, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !733
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24
  %i.ah = add i32 %1, 2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !733
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = or disjoint i32 %i.am, %i.ag
  %i.ao = add i32 %1, 3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !733
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = or disjoint i32 %i.an, %i.at
  %i.av = zext i32 %i.aa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !733
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.au, %i.ay
  br label %bb.q

bb.k:                                             ; preds = %bb.d
  %i.ba = add i32 %1, 8                           ; 2 uses
  %.not74 = icmp ult i32 %i.ba, %i.b
  br i1 %.not74, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bb = add nuw i32 %1, 1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !733
  %.not75 = icmp eq i8 %i.be, 0
  br i1 %.not75, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bf = add i32 %1, 2
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !733
  %.not76 = icmp eq i8 %i.bi, 0
  br i1 %.not76, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bj = add i32 %1, 3
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !733
  %.not77 = icmp eq i8 %i.bm, 0
  br i1 %.not77, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bn = add i32 %1, 4
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !733
  %.not78 = icmp eq i8 %i.bq, 0
  br i1 %.not78, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.br = add i32 %1, 5
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !733
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw i32 %i.bv, 24
  %i.bx = add i32 %1, 6
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 16
  %i.cd = or disjoint i32 %i.cc, %i.bw
  %i.ce = add i32 %1, 7
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !733
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = or disjoint i32 %i.cd, %i.cj
  %i.cl = zext i32 %i.ba to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !733
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.ck, %i.co
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.h, %bb.p, %bb.j, %bb.f
  %.064 = phi i32 [ %i.i, %bb.c ], [ %i.n, %bb.f ], [ %i.z, %bb.h ], [ %i.az, %bb.j ], [ %i.cp, %bb.p ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.c ], [ 2, %bb.f ], [ 3, %bb.h ], [ 5, %bb.j ], [ 9, %bb.p ] ; 2 uses
  %i.cq = zext i32 %.064 to i64
  %i.cr = add nuw nsw i64 %i.cq, %i.d
  %i.cs = zext nneg i32 %.0 to i64
  %i.ct = add nuw nsw i64 %i.cr, %i.cs            ; 2 uses
  %i.cu = zext i32 %i.b to i64
  %i.cv = icmp samesign ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !1967
  %i.cy = sub i32 %i.b, %i.cx
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ugt i64 %i.ct, %i.cz
  br i1 %i.da, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.i, %bb.g, %bb.e, %bb.a, %bb.s
  %.064.sink = phi i32 [ %.064, %bb.s ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.r ]
  %.065 = phi i32 [ %.0, %bb.s ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.r ]
  store i32 %.064.sink, ptr %2, align 4, !tbaa !570
  ret i32 %.065
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @jsonbValidityCheck(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #39 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.c = icmp ugt i32 %3, 1000
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %1, 1
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = call fastcc i32 @jsonbPayloadSize(ptr noundef %0, i32 noundef %1, ptr noundef %i.a) ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %1, 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.h = add i32 %i.e, %1                         ; 18 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !570  ; 8 uses
  %i.j = add i32 %i.i, %i.h
  %.not = icmp eq i32 %i.j, %2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %1, 1
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !1960   ; 19 uses
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !733
  %i.p = and i8 %i.o, 15                          ; 6 uses
  switch i8 %i.p, label %bb.ck [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.q
    i8 5, label %bb.ac
    i8 6, label %bb.ac
    i8 7, label %.preheader
    i8 8, label %bb.bf
    i8 9, label %bb.bf
    i8 10, label %.loopexit
    i8 11, label %.preheader302
    i8 12, label %.preheader305
  ]

.preheader305:                                    ; preds = %bb.g
  %i.q = icmp ult i32 %i.h, %2
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader305
  %i.r = add nuw nsw i32 %3, 1
  br label %bb.cb

.preheader302:                                    ; preds = %bb.g
  %i.s = icmp ult i32 %i.h, %2
  br i1 %i.s, label %.lr.ph339, label %.loopexit

.lr.ph339:                                        ; preds = %.preheader302
  %i.t = add nuw nsw i32 %3, 1
  br label %bb.bv

.preheader:                                       ; preds = %bb.g
  %i.u = icmp ult i32 %i.h, %2
  br i1 %i.u, label %.lr.ph356, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.v = add i32 %i.i, %i.e
  %i.w = icmp eq i32 %i.v, 1
  %i.x = add i32 %1, 1
  %i.y = select i1 %i.w, i32 0, i32 %i.x
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i32 %i.i, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = add i32 %1, 1
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ab = zext i32 %i.h to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = icmp eq i8 %i.ad, 45
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.af = add i32 %i.h, 1
  %i.ag = icmp eq i32 %i.i, 1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = add i32 %1, 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.l, %bb.k
  %.0237 = phi i32 [ %i.af, %bb.l ], [ %i.h, %bb.k ] ; 2 uses
  %i.ai = icmp ult i32 %.0237, %2
  br i1 %i.ai, label %.lr.ph368.preheader, label %.loopexit

.lr.ph368.preheader:                              ; preds = %bb.n
  %i.aj = zext i32 %.0237 to i64
  %i.ak = zext i32 %2 to i64
  br label %.lr.ph368

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.o
  %indvars.iv397.a = phi i64 [ %i.aj, %.lr.ph368.preheader ], [ %indvars.iv.next398.a, %bb.o ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv397.a
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = add i8 %i.am, -58
  %.not295 = icmp ult i8 %i.an, -10
  br i1 %.not295, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph368
  %indvars.iv.next398.a = add nuw nsw i64 %indvars.iv397.a, 1 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next398.a, %i.ak
  br i1 %i.ao, label %.lr.ph368, label %.loopexit, !llvm.loop !4470

bb.p:                                             ; preds = %.lr.ph368
  %i.ap = trunc nuw i64 %indvars.iv397.a to i32
  %i.aq = add nuw i32 %i.ap, 1
  br label %.loopexit

bb.q:                                             ; preds = %bb.g
  %i.ar = icmp ult i32 %i.i, 3
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = add i32 %1, 1
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.at = zext i32 %i.h to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !733 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ax = icmp eq i32 %i.i, 3
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = add i32 %1, 1
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.az = add i32 %i.h, 1                         ; 2 uses
  %.pre402 = zext i32 %i.az to i64
  %.phi.trans.insert403 = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pre402
  %.pre404 = load i8, ptr %.phi.trans.insert403, align 1, !tbaa !733
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.ba = phi i8 [ %.pre404, %bb.v ], [ %i.av, %bb.s ]
  %.2239 = phi i32 [ %i.az, %bb.v ], [ %i.h, %bb.s ] ; 2 uses
  %.not291 = icmp eq i8 %i.ba, 48
  br i1 %.not291, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = add i32 %1, 1
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.bc = add i32 %.2239, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !733
  %i.bg = add i32 %.2239, 2                       ; 3 uses
  switch i8 %i.bf, label %.loopexit [
    i8 120, label %bb.z
    i8 88, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.bh = icmp ult i32 %i.bg, %2
  br i1 %i.bh, label %.lr.ph365.preheader, label %.loopexit

.lr.ph365.preheader:                              ; preds = %bb.z
  %i.bi = zext i32 %i.bg to i64
  %i.bj = zext i32 %2 to i64
  br label %.lr.ph365

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %bb.aa
  %indvars.iv.a = phi i64 [ %i.bi, %.lr.ph365.preheader ], [ %indvars.iv.next.a, %bb.aa ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.a
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !733
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.bp = and i8 %i.bo, 8
  %.not294 = icmp eq i8 %i.bp, 0
  br i1 %.not294, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph365
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next.a, %i.bj
  br i1 %i.bq, label %.lr.ph365, label %.loopexit, !llvm.loop !4471

bb.ab:                                            ; preds = %.lr.ph365
  %i.br = trunc nuw i64 %indvars.iv.a to i32
  %i.bs = add nuw i32 %i.br, 1
  br label %.loopexit

bb.ac:                                            ; preds = %bb.g, %bb.g
  %i.bt = icmp ult i32 %i.i, 2
  br i1 %i.bt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bu = add i32 %1, 1
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.bv = zext i32 %i.h to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !733 ; 2 uses
  %i.by = icmp eq i8 %i.bx, 45
  br i1 %i.by, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bz = icmp eq i32 %i.i, 2
  br i1 %i.bz, label %bb.ag, label %._crit_edge400

._crit_edge400:                                   ; preds = %bb.af
  %i.ca = add i32 %i.h, 1                         ; 2 uses
  %.phi.trans.insert = zext i32 %i.ca to i64
  %.phi.trans.insert401 = getelementptr inbounds nuw i8, ptr %i.l, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert401, align 1, !tbaa !733
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cb = add i32 %1, 1
  br label %.loopexit

bb.ah:                                            ; preds = %._crit_edge400, %bb.ae
  %i.cc = phi i8 [ %.pre, %._crit_edge400 ], [ %i.bx, %bb.ae ] ; 2 uses
  %.4 = phi i32 [ %i.ca, %._crit_edge400 ], [ %i.h, %bb.ae ] ; 5 uses
  %i.cd = icmp eq i8 %i.cc, 46
  br i1 %i.cd, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ce = icmp eq i8 %i.p, 5
  %i.cf = add i32 %.4, 1                          ; 3 uses
  br i1 %i.ce, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !733
  %i.cj = add i8 %i.ci, -58
  %.not287 = icmp ult i8 %i.cj, -10
  br i1 %.not287, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = add i32 %.4, 2
  br label %bb.ao

bb.al:                                            ; preds = %bb.ah
  %i.cl = icmp eq i8 %i.cc, 48
  %i.cm = icmp eq i8 %i.p, 5
  %or.cond = and i1 %i.cm, %i.cl
  br i1 %or.cond, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cn = add i32 %.4, 3
  %i.co = icmp ugt i32 %i.cn, %2
  %i.cp = add i32 %.4, 1                          ; 6 uses
  br i1 %i.co, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !733
  switch i8 %i.cs, label %.loopexit [
    i8 46, label %bb.ao
    i8 101, label %bb.ao
    i8 69, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.al, %bb.ak
  %.5 = phi i32 [ %i.ck, %bb.ak ], [ %.4, %bb.al ], [ %i.cp, %bb.an ], [ %i.cp, %bb.an ], [ %i.cp, %bb.an ] ; 2 uses
  %.0235 = phi i8 [ 1, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.an ], [ 0, %bb.an ] ; 2 uses
  %i.ct = icmp ult i32 %.5, %2
  br i1 %i.ct, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %bb.ao
  %i.cu = add i32 %2, -1                          ; 3 uses
  %i.cv = icmp eq i8 %i.p, 5
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph360, %bb.bd
  %.1358 = phi i8 [ %.0235, %.lr.ph360 ], [ %.2, %bb.bd ] ; 3 uses
  %.6357 = phi i32 [ %.5, %.lr.ph360 ], [ %i.dr, %bb.bd ] ; 13 uses
  %i.cw = zext i32 %.6357 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !733 ; 2 uses
  %i.cz = add i8 %i.cy, -58
  %.not288 = icmp ult i8 %i.cz, -10
  br i1 %.not288, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  switch i8 %i.cy, label %bb.bc [
    i8 46, label %bb.ar
    i8 101, label %bb.aw
    i8 69, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  %.not289 = icmp eq i8 %.1358, 0
  br i1 %.not289, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.da = add i32 %.6357, 1
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  br i1 %i.cv, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.db = icmp eq i32 %.6357, %i.cu
  br i1 %i.db, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dc = add i32 %.6357, 1                       ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !733
  %i.dg = add i8 %i.df, -58
  %.not290 = icmp ult i8 %i.dg, -10
  br i1 %.not290, label %.loopexit, label %bb.bd

bb.aw:                                            ; preds = %bb.aq, %bb.aq
  %i.dh = icmp eq i8 %.1358, 2
  br i1 %i.dh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.di = add i32 %.6357, 1
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.dj = icmp eq i32 %.6357, %i.cu
  br i1 %i.dj, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dk = add i32 %.6357, 1                       ; 3 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !733
  switch i8 %i.dn, label %bb.bd [
    i8 43, label %bb.ba
    i8 45, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.do = icmp eq i32 %i.dk, %i.cu
  br i1 %i.do, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.dp = add i32 %.6357, 2
  br label %.loopexit

bb.bc:                                            ; preds = %bb.aq
  %i.dq = add nuw i32 %.6357, 1
  br label %.loopexit

bb.bd:                                            ; preds = %bb.ba, %bb.az, %bb.at, %bb.av, %bb.ap
  %.8 = phi i32 [ %.6357, %bb.ap ], [ %.6357, %bb.at ], [ %.6357, %bb.av ], [ %i.dk, %bb.ba ], [ %.6357, %bb.az ]
  %.2 = phi i8 [ %.1358, %bb.ap ], [ 1, %bb.at ], [ 1, %bb.av ], [ 2, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %i.dr = add i32 %.8, 1                          ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %2
  br i1 %i.ds, label %bb.ap, label %._crit_edge361, !llvm.loop !4472

._crit_edge361:                                   ; preds = %bb.bd, %bb.ao
  %.1.lcssa = phi i8 [ %.0235, %bb.ao ], [ %.2, %bb.bd ]
  %i.dt = icmp eq i8 %.1.lcssa, 0
  %i.du = add i32 %1, 1
  %spec.select = select i1 %i.dt, i32 %i.du, i32 0
  br label %.loopexit

.lr.ph356:                                        ; preds = %.preheader, %bb.be
  %.9355 = phi i32 [ %5, %bb.be ], [ %i.h, %.preheader ] ; 2 uses
  %4 = zext i32 %.9355 to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 %4
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !733 ; 2 uses
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !733
  %.not282 = icmp ne i8 %i.dz, 0
  %.not283 = icmp eq i8 %i.dw, 39
  %or.cond296 = or i1 %.not283, %.not282
  %5 = add nuw i32 %.9355, 1                      ; 3 uses
  br i1 %or.cond296, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.lr.ph356
  %exitcond.not = icmp eq i32 %5, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph356, !llvm.loop !4473

bb.bf:                                            ; preds = %bb.g, %bb.g
  %i.ea = icmp ult i32 %i.h, %2
  br i1 %i.ea, label %.lr.ph345, label %.loopexit

.lr.ph345:                                        ; preds = %bb.bf
  %.not278 = icmp eq i8 %i.p, 9
  %i.eb = icmp eq i8 %i.p, 8                      ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph345, %bb.bu
  %.10343 = phi i32 [ %i.h, %.lr.ph345 ], [ %i.fc, %bb.bu ] ; 11 uses
  %i.ec = zext i32 %.10343 to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ec ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !733 ; 5 uses
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !733
  %.not273 = icmp ne i8 %i.eh, 0
  %.not274 = icmp eq i8 %i.ee, 39
  %or.cond297 = or i1 %.not274, %.not273
  br i1 %or.cond297, label %bb.bu, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ei = icmp eq i8 %i.ee, 34
  br i1 %i.ei, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.eb, label %bb.bj, label %bb.bu

bb.bj:                                            ; preds = %bb.bi
  %i.ej = add nuw i32 %.10343, 1
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bh
  %i.ek = icmp ult i8 %i.ee, 32
  br i1 %i.ek, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.eb, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.el = add i32 %.10343, 1
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bk
  %.not275 = icmp eq i8 %i.ee, 92
  %i.em = add i32 %.10343, 1                      ; 9 uses
  %.not276 = icmp ult i32 %i.em, %2
  %or.cond511 = and i1 %.not275, %.not276
  br i1 %or.cond511, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !733 ; 2 uses
  %i.eq = zext i8 %i.ep to i32
  %memchr = tail call ptr @memchr(ptr nonnull dereferenceable(1) @.str.620, i32 %i.eq, i64 9)
  %.not277 = icmp eq ptr %memchr, null
  br i1 %.not277, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.er = icmp eq i8 %i.ep, 117
  br i1 %i.er, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.es = add i32 %.10343, 5
  %.not280 = icmp ult i32 %i.es, %2
  br i1 %.not280, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.et = add i32 %.10343, 2
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eu
  %i.ew = tail call fastcc i32 @jsonIs4Hex(ptr noundef %i.ev)
  %.not281 = icmp eq i32 %i.ew, 0
  br i1 %.not281, label %.loopexit, label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  br i1 %.not278, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !570
  %i.ex = sub nuw i32 %2, %.10343
  %i.ey = call fastcc i32 @jsonUnescapeOneChar(ptr noundef nonnull %i.ed, i32 noundef %i.ex, ptr noundef %i.b)
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !570
  %.not279 = icmp eq i32 %i.ez, 629145
  %i.fa = add i32 %.10343, -1
  %i.fb = add i32 %i.fa, %i.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %.not279, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.br, %bb.bo, %bb.bi, %bb.bt, %bb.bl, %bb.bg
  %.12 = phi i32 [ %.10343, %bb.bg ], [ %.10343, %bb.bi ], [ %.10343, %bb.bl ], [ %i.fb, %bb.bt ], [ %i.em, %bb.bo ], [ %i.em, %bb.br ]
  %i.fc = add i32 %.12, 1                         ; 2 uses
  %i.fd = icmp ult i32 %i.fc, %2
  br i1 %i.fd, label %bb.bg, label %.loopexit, !llvm.loop !4474

bb.bv:                                            ; preds = %.lr.ph339, %bb.ca
  %.13338 = phi i32 [ %i.h, %.lr.ph339 ], [ %i.fj, %bb.ca ] ; 5 uses
  %i.fe = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.13338, ptr noundef %i.a) ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.fg = add nuw i32 %.13338, 1
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bv
  %i.fh = add i32 %i.fe, %.13338
  %i.fi = load i32, ptr %i.a, align 4, !tbaa !570
  %i.fj = add i32 %i.fh, %i.fi                    ; 4 uses
  %i.fk = icmp ugt i32 %i.fj, %2
  br i1 %i.fk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.fl = add nuw i32 %.13338, 1
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bx
  %i.fm = tail call fastcc i32 @jsonbValidityCheck(ptr noundef nonnull %0, i32 noundef %.13338, i32 noundef %i.fj, i32 noundef %i.t) ; 2 uses
  %.not272 = icmp eq i32 %i.fm, 0
  br i1 %.not272, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.fn = icmp ult i32 %i.fj, %2
  br i1 %i.fn, label %bb.bv, label %.loopexit, !llvm.loop !4475

bb.cb:                                            ; preds = %.lr.ph, %bb.cj
  %.0336 = phi i32 [ 0, %.lr.ph ], [ %i.gf, %bb.cj ] ; 3 uses
  %.14335 = phi i32 [ %i.h, %.lr.ph ], [ %i.ft, %bb.cj ] ; 7 uses
  %i.fo = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.14335, ptr noundef %i.a) ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.fq = add nuw i32 %.14335, 1
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cb
  %i.fr = add i32 %i.fo, %.14335
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !570
  %i.ft = add i32 %i.fr, %i.fs                    ; 5 uses
  %i.fu = icmp ugt i32 %i.ft, %2
  br i1 %i.fu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.fv = add nuw i32 %.14335, 1
  br label %.loopexit

bb.cf:                                            ; preds = %bb.cd
  %i.fw = and i32 %.0336, 1
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.fy = zext i32 %.14335 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !733
  %i.gb = and i8 %i.ga, 15
  %i.gc = add nsw i8 %i.gb, -11
  %or.cond5 = icmp ult i8 %i.gc, -4
  br i1 %or.cond5, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.gd = add nuw i32 %.14335, 1
  br label %.loopexit

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.ge = tail call fastcc i32 @jsonbValidityCheck(ptr noundef nonnull %0, i32 noundef %.14335, i32 noundef %i.ft, i32 noundef %i.r) ; 2 uses
  %.not271 = icmp eq i32 %i.ge, 0
  br i1 %.not271, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.gf = add i32 %.0336, 1
  %i.gg = icmp ult i32 %i.ft, %2
  br i1 %i.gg, label %bb.cb, label %._crit_edge, !llvm.loop !4476

._crit_edge:                                      ; preds = %bb.cj
  %i.gh = trunc i32 %.0336 to i1
  %i.gi = add i32 %i.ft, 1
  br i1 %i.gh, label %._crit_edge.thread, label %.loopexit

._crit_edge.thread:                               ; preds = %.preheader305, %._crit_edge
  br label %.loopexit

bb.ck:                                            ; preds = %bb.g
  %i.gj = add i32 %1, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ci, %bb.ca, %bb.bz, %bb.bt, %bb.bq, %bb.br, %bb.bs, %bb.bu, %bb.bn, %bb.be, %.lr.ph356, %bb.ay, %bb.au, %bb.av, %bb.aa, %bb.o, %bb.am, %bb.ai, %bb.y, %._crit_edge.thread, %._crit_edge, %.preheader302, %bb.bf, %.preheader, %bb.z, %bb.n, %._crit_edge361, %bb.cc, %bb.ce, %bb.ch, %bb.bw, %bb.by, %bb.g, %bb.ad, %bb.ag, %bb.as, %bb.ax, %bb.bb, %bb.bc, %bb.aj, %bb.an, %bb.ck, %bb.bm, %bb.bj, %bb.ab, %bb.x, %bb.u, %bb.r, %bb.p, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.6246 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.f ], [ %i.gj, %bb.ck ], [ %i.y, %bb.h ], [ %i.aa, %bb.j ], [ %i.ah, %bb.m ], [ %i.aq, %bb.p ], [ %i.fl, %bb.by ], [ %i.as, %bb.r ], [ %i.ay, %bb.u ], [ %i.bb, %bb.x ], [ 0, %bb.o ], [ %i.bs, %bb.ab ], [ 0, %.preheader302 ], [ 0, %bb.bf ], [ %i.cp, %bb.am ], [ %spec.select, %._crit_edge361 ], [ %i.ej, %bb.bj ], [ %i.el, %bb.bm ], [ 0, %bb.aa ], [ 0, %bb.n ], [ 0, %.preheader ], [ %i.fq, %bb.cc ], [ %i.fv, %bb.ce ], [ %i.gd, %bb.ch ], [ 0, %bb.z ], [ 0, %bb.g ], [ %i.bu, %bb.ad ], [ %i.cb, %bb.ag ], [ %i.bg, %bb.y ], [ %i.da, %bb.as ], [ %i.em, %bb.bq ], [ %i.di, %bb.ax ], [ %i.fm, %bb.bz ], [ %i.dp, %bb.bb ], [ %i.dq, %bb.bc ], [ 0, %._crit_edge.thread ], [ %i.cp, %bb.an ], [ %i.cf, %bb.aj ], [ %i.cf, %bb.ai ], [ %i.fg, %bb.bw ], [ 0, %bb.be ], [ %i.gi, %._crit_edge ], [ %2, %bb.ay ], [ %2, %bb.au ], [ %i.dc, %bb.av ], [ %5, %.lr.ph356 ], [ %i.em, %bb.bt ], [ 0, %bb.bu ], [ %i.em, %bb.bs ], [ %i.em, %bb.bn ], [ %i.em, %bb.br ], [ 0, %bb.ca ], [ %i.ge, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.6246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @jsonIs4Hex(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !733
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !733
  %i.e = and i8 %i.d, 8
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %jsonIs2Hex.exit4, label %jsonIs2Hex.exit

jsonIs2Hex.exit:                                  ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !733
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !733
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %jsonIs2Hex.exit4, label %bb.b

bb.b:                                             ; preds = %jsonIs2Hex.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733
  %i.q = and i8 %i.p, 8
  %.not.i2 = icmp eq i8 %i.q, 0
  br i1 %.not.i2, label %jsonIs2Hex.exit4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !733
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733
  %i.w = lshr i8 %i.v, 3
  %.lobit.i3 = and i8 %i.w, 1
  %i.x = zext nneg i8 %.lobit.i3 to i32
  br label %jsonIs2Hex.exit4

jsonIs2Hex.exit4:                                 ; preds = %bb.a, %bb.c, %bb.b, %jsonIs2Hex.exit
  %i.y = phi i32 [ 0, %jsonIs2Hex.exit ], [ %i.x, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.y
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @jsonUnescapeOneChar(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %i.ce, %tailrecurse ]
  %.tr66.lcssa = phi i32 [ %1, %bb.a ], [ %i.cd, %tailrecurse ]
  store i32 629145, ptr %2, align 4, !tbaa !570
  br label %bb.al

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr66129 = phi i32 [ %i.cd, %tailrecurse ], [ %1, %bb.a ] ; 13 uses
  %.tr128 = phi ptr [ %i.ca, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  %accumulator.tr127 = phi i32 [ %i.ce, %tailrecurse ], [ 0, %bb.a ] ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr128, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !733   ; 2 uses
  switch i8 %i.c, label %bb.ak [
    i8 117, label %bb.b
    i8 98, label %bb.j
    i8 102, label %bb.k
    i8 110, label %bb.l
    i8 114, label %bb.m
    i8 116, label %bb.n
    i8 118, label %bb.o
    i8 48, label %bb.p
    i8 39, label %bb.s
    i8 34, label %bb.s
    i8 47, label %bb.s
    i8 92, label %bb.s
    i8 120, label %bb.t
    i8 -30, label %.preheader
    i8 13, label %.preheader
    i8 10, label %.preheader
  ]

.preheader:                                       ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  br label %bb.w

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ult i32 %.tr66129, 6
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 629145, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.tr128, i64 2
  %i.f = tail call fastcc i32 @jsonHexToInt4(ptr noundef nonnull %i.e) ; 3 uses
  %i.g = and i32 %i.f, 64512
  %i.h = icmp eq i32 %i.g, 55296
  %i.i = icmp ugt i32 %.tr66129, 11
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.tr128, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !733
  %i.l = icmp eq i8 %i.k, 92
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.tr128, i64 7
  %i.n = load i8, ptr %i.m, align 1, !tbaa !733
  %i.o = icmp eq i8 %i.n, 117
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.tr128, i64 8
  %i.q = tail call fastcc i32 @jsonHexToInt4(ptr noundef nonnull %i.p) ; 2 uses
  %i.r = and i32 %i.q, 64512
  %i.s = icmp eq i32 %i.r, 56320
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = shl nuw nsw i32 %i.f, 10
  %i.u = and i32 %i.t, 1047552
  %i.v = and i32 %i.q, 1023
  %i.w = add nuw nsw i32 %i.u, 65536
  %i.x = or disjoint i32 %i.w, %i.v
  store i32 %i.x, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  store i32 %i.f, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.j:                                             ; preds = %.lr.ph
  store i32 8, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.k:                                             ; preds = %.lr.ph
  store i32 12, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.l:                                             ; preds = %.lr.ph
  store i32 10, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.m:                                             ; preds = %.lr.ph
  store i32 13, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.n:                                             ; preds = %.lr.ph
  store i32 9, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.o:                                             ; preds = %.lr.ph
  store i32 11, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.p:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %.tr66129, 2
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %.tr128, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !733
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  %i.ac = select i1 %i.ab, i32 629145, i32 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = phi i32 [ 0, %bb.p ], [ %i.ac, %bb.q ]
  store i32 %i.ad, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.s:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ae = zext nneg i8 %i.c to i32
  store i32 %i.ae, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.t:                                             ; preds = %.lr.ph
  %i.af = icmp ult i32 %.tr66129, 4
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 629145, ptr %2, align 4, !tbaa !570
  br label %bb.al

bb.v:                                             ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr128, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !733 ; 2 uses
  %i.ai = and i8 %i.ah, 64
  %.not.i = icmp eq i8 %i.ai, 0
  %i.aj = select i1 %.not.i, i8 0, i8 9
end_hunk_5
begin_hunk_6_@jsonReturnString:bb.a
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 400
  store atomic volatile i32 1, ptr %i.bn monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 408 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !921
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !921
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 412
  store i16 0, ptr %i.br, align 4, !tbaa !922
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 344 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !768 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.bt, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.125), !inline_history !75
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !768 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i32 7, ptr %i.bv, align 8, !tbaa !779
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.u ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !780
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !780
  %i.bz = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.bz, align 8, !tbaa !779
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.v:                                             ; preds = %bb.m
  %i.ca = and i32 %i.at, 6
  %or.cond.not = icmp eq i32 %i.ca, 2
  br i1 %or.cond.not, label %bb.w, label %sqlite3_result_error_nomem.exit

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %0, align 8, !tbaa !1970  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 1, ptr %i.cc, align 4, !tbaa !570
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !761
  %i.ce = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.cd, ptr noundef nonnull @.str.619, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1104 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.e, %.critedge, %bb.g, %bb.u, %bb.t, %bb.q, %sqlite3VdbeMemSetNull.exit.i, %bb.w, %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !1927
  %.not.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i, label %bb.x, label %jsonStringReset.exit

bb.x:                                             ; preds = %sqlite3_result_error_nomem.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1925
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 5 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1666 ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = add i64 %i.ck, -1
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !1666
  br label %jsonStringReset.exit

bb.z:                                             ; preds = %bb.x
  %i.cn = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.cp(ptr noundef nonnull %i.co) #58, !inline_history !1953
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.ab, %bb.aa
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.cr = tail call i32 %i.cq(ptr noundef nonnull %i.cj) #58, !inline_history !276
  %i.cs = sext i32 %i.cr to i64
  %i.ct = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cu = sub nsw i64 %i.ct, %i.cs
  store i64 %i.cu, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cv = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cw = add nsw i64 %i.cv, -1
  store i64 %i.cw, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.cx(ptr noundef nonnull %i.cj) #58, !inline_history !1954
  %i.cy = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i4.i.i.i, label %jsonStringReset.exit, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.cz(ptr noundef nonnull %i.cy) #58, !inline_history !1955
  br label %jsonStringReset.exit

bb.ad:                                            ; preds = %bb.z
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.da(ptr noundef nonnull %i.cj) #58, !inline_history !1954
  br label %jsonStringReset.exit

jsonStringReset.exit:                             ; preds = %sqlite3_result_error_nomem.exit, %bb.y, %sqlite3_mutex_enter.exit.i.i.i, %bb.ac, %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !1925
  store i64 100, ptr %i.c, align 8, !tbaa !1926
  store i64 0, ptr %i.a, align 8, !tbaa !1936
  store i8 1, ptr %i.cf, align 8, !tbaa !1927
  br label %bb.ae

bb.ae:                                            ; preds = %bb.l, %jsonStringReset.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAppendRawNZ(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1936 ; 2 uses
  %i.d = add i64 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1926
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @jsonStringExpandAndAppend(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1925
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !1936
  %i.k = add i64 %i.j, %i.a
  store i64 %i.k, ptr %i.b, align 8, !tbaa !1936
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAppendString(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.e = add nuw nsw i64 %i.b, 2
  %i.f = add i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1926
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %2, 2
  %i.j = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.i)
  %.not84 = icmp eq i32 %i.j, 0
  br i1 %.not84, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.c, align 8, !tbaa !1936
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ %i.d, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.n = add i64 %i.k, 1
  store i64 %i.n, ptr %i.c, align 8, !tbaa !1936
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 34, ptr %i.o, align 1, !tbaa !733
  br label %bb.e

bb.e:                                             ; preds = %jsonAppendControlChar.exit, %bb.d
  %.079 = phi i32 [ %2, %bb.d ], [ %i.ef, %jsonAppendControlChar.exit ] ; 8 uses
  %.0 = phi ptr [ %1, %bb.d ], [ %i.ee, %jsonAppendControlChar.exit ] ; 9 uses
  %.not85100 = icmp ugt i32 %.079, 3
  br i1 %.not85100, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.e
  %.077.lcssa = phi i32 [ 0, %bb.e ], [ %10, %bb.j ] ; 3 uses
  %i.p = icmp ult i32 %.077.lcssa, %.079
  br i1 %i.p, label %.lr.ph103.preheader, label %.critedge

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.q = zext i32 %.077.lcssa to i64
  %i.r = zext i32 %.079 to i64
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.f
  %indvars.iv.a = phi i64 [ %i.q, %.lr.ph103.preheader ], [ %indvars.iv.next.a, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.a
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %.not90 = icmp eq i8 %i.w, 0
  br i1 %.not90, label %.critedge.loopexit.a, label %bb.f

bb.f:                                             ; preds = %.lr.ph103
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %i.r
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph103, !llvm.loop !4508

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %.077101 = phi i32 [ %10, %bb.j ], [ 0, %bb.e ] ; 6 uses
  %3 = or disjoint i32 %.077101, 3                ; 2 uses
  %4 = zext i32 %.077101 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 %4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !733
  %.not86 = icmp eq i8 %i.ab, 0
  br i1 %.not86, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %5 = or disjoint i32 %.077101, 1                ; 2 uses
  %6 = zext i32 %5 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 %6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733
  %.not87 = icmp eq i8 %i.ag, 0
  br i1 %.not87, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %7 = or disjoint i32 %.077101, 2                ; 2 uses
  %8 = zext i32 %7 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 %8
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !733
  %.not88 = icmp eq i8 %i.al, 0
  br i1 %.not88, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %9 = zext i32 %3 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 %9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !733
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !733
  %.not89 = icmp eq i8 %i.aq, 0
  br i1 %.not89, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %10 = add i32 %.077101, 4                       ; 3 uses
  %11 = or disjoint i32 %10, 3
  %.not85 = icmp ult i32 %11, %.079
  br i1 %.not85, label %.lr.ph, label %.preheader

.critedge.loopexit.a:                             ; preds = %.lr.ph103
  %i.ar = trunc nuw i64 %indvars.iv.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph, %.critedge.loopexit.a, %.preheader
  %.2 = phi i32 [ %i.ar, %.critedge.loopexit.a ], [ %.077.lcssa, %.preheader ], [ %5, %bb.g ], [ %7, %bb.h ], [ %3, %bb.i ], [ %.077101, %.lr.ph ] ; 5 uses
  %.not91 = icmp ult i32 %.2, %.079
  br i1 %.not91, label %bb.l, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %bb.f
  %.2118 = phi i32 [ %.079, %bb.f ], [ %.2, %.critedge ] ; 2 uses
  %.not95 = icmp eq i32 %.2118, 0
  %.pre112 = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  br i1 %.not95, label %bb.x, label %bb.k

bb.k:                                             ; preds = %.critedge.thread
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pre112
  %i.au = zext i32 %.2118 to i64                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.0, i64 %i.au, i1 false)
  %i.av = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.aw = add i64 %i.av, %i.au
  br label %bb.x

bb.l:                                             ; preds = %.critedge
  %.not92 = icmp eq i32 %.2, 0
  br i1 %.not92, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  %i.ba = zext i32 %.2 to i64                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr nonnull align 1 %.0, i64 %i.ba, i1 false)
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.c, align 8, !tbaa !1936
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ba
  %i.be = sub nuw i32 %.079, %.2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.180 = phi i32 [ %i.be, %bb.m ], [ %.079, %bb.l ] ; 5 uses
  %.1 = phi ptr [ %i.bd, %bb.m ], [ %.0, %bb.l ]  ; 2 uses
  %i.bf = load i8, ptr %.1, align 1, !tbaa !733   ; 4 uses
  switch i8 %i.bf, label %bb.s [
    i8 92, label %bb.o
    i8 34, label %bb.o
    i8 39, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.bh = zext i32 %.180 to i64
  %i.bi = add nuw nsw i64 %i.bh, 3
  %i.bj = add i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !1926
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = add i32 %.180, 3
  %i.bn = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.bm)
  %.not94 = icmp eq i32 %i.bn, 0
  br i1 %.not94, label %._crit_edge113, label %.loopexit

._crit_edge113:                                   ; preds = %bb.p
  %.pre114 = load i64, ptr %i.c, align 8, !tbaa !1936
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge113, %bb.o
  %i.bo = phi i64 [ %.pre114, %._crit_edge113 ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.bq = add i64 %i.bo, 1
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !1936
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 92, ptr %i.br, align 1, !tbaa !733
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !1936
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 %i.bf, ptr %i.bv, align 1, !tbaa !733
  br label %jsonAppendControlChar.exit

bb.r:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.c, align 8, !tbaa !1936
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 39, ptr %i.bz, align 1, !tbaa !733
  br label %jsonAppendControlChar.exit

bb.s:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cb = zext i32 %.180 to i64
  %i.cc = add nuw nsw i64 %i.cb, 7
  %i.cd = add i64 %i.cc, %i.ca
  %i.ce = load i64, ptr %i.g, align 8, !tbaa !1926
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = add i32 %.180, 7
  %i.ch = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.cg)
  %.not93 = icmp eq i32 %i.ch, 0
  br i1 %.not93, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ci = zext i8 %i.bf to i64                    ; 2 uses
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, 4294953215
  %.not.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr @jsonAppendControlChar.aSpecial, i64 %i.ci
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  store i8 92, ptr %i.co, align 1, !tbaa !733
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !733
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cs = getelementptr i8, ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 1
  store i8 %i.cp, ptr %i.ct, align 1, !tbaa !733
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cv = add i64 %i.cu, 2
  store i64 %i.cv, ptr %i.c, align 8, !tbaa !1936
  br label %jsonAppendControlChar.exit

bb.w:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i8 92, ptr %i.cy, align 1, !tbaa !733
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.da = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 1
  store i8 117, ptr %i.dc, align 1, !tbaa !733
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.de = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  store i8 48, ptr %i.dg, align 1, !tbaa !733
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.di = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.dj = getelementptr i8, ptr %i.dh, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 3
  store i8 48, ptr %i.dk, align 1, !tbaa !733
  %i.dl = zext i8 %i.bf to i32                    ; 2 uses
  %i.dm = lshr i32 %i.dl, 4
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !733
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  store i8 %i.dp, ptr %i.dt, align 1, !tbaa !733
  %i.du = and i32 %i.dl, 15
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !733
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 5
  store i8 %i.dx, ptr %i.eb, align 1, !tbaa !733
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.ed = add i64 %i.ec, 6
  store i64 %i.ed, ptr %i.c, align 8, !tbaa !1936
  br label %jsonAppendControlChar.exit

jsonAppendControlChar.exit:                       ; preds = %bb.w, %bb.v, %bb.r, %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ef = add i32 %.180, -1
  br label %bb.e

bb.x:                                             ; preds = %.critedge.thread, %bb.k
  %i.eg = phi i64 [ %.pre112, %.critedge.thread ], [ %i.aw, %bb.k ] ; 2 uses
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.ei = add i64 %i.eg, 1
  store i64 %i.ei, ptr %i.c, align 8, !tbaa !1936
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 34, ptr %i.ej, align 1, !tbaa !733
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.p, %bb.c, %bb.a, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonStringTooDeep(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1969
  %i.c = or i8 %i.b, 4
  store i8 %i.c, ptr %i.a, align 1, !tbaa !1969
  %i.d = load ptr, ptr %0, align 8, !tbaa !1970   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 1, ptr %i.e, align 4, !tbaa !570
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !761
end_hunk_6
begin_hunk_7_@nodeParentIndex:bb.a

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nodeRowidIndex.exit, label %bb.c, !llvm.loop !527

nodeRowidIndex.exit.sink.split:                   ; preds = %bb.a, %bb.d
  %.sink = phi i32 [ %i.bb, %bb.d ], [ -1, %bb.a ]
  store i32 %.sink, ptr %2, align 4, !tbaa !570
  br label %nodeRowidIndex.exit

nodeRowidIndex.exit:                              ; preds = %bb.e, %nodeRowidIndex.exit.sink.split, %bb.b
  %.0 = phi i32 [ 267, %bb.b ], [ 0, %nodeRowidIndex.exit.sink.split ], [ 267, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nodeOverwriteCell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #55 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2917
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.d = load i8, ptr %i.c, align 1, !tbaa !2918
  %i.e = zext i8 %i.d to i32
  %i.f = mul nsw i32 %3, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g     ; 9 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load i64, ptr %2, align 8, !tbaa !2939   ; 8 uses
  %i.k = lshr i64 %i.j, 56
  %i.l = trunc nuw i64 %i.k to i8
  store i8 %i.l, ptr %i.i, align 1, !tbaa !733
  %i.m = lshr i64 %i.j, 48
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr i8, ptr %i.h, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !733
  %i.p = lshr i64 %i.j, 40
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr i8, ptr %i.h, i64 6
  store i8 %i.q, ptr %i.r, align 1, !tbaa !733
  %i.s = lshr i64 %i.j, 32
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr i8, ptr %i.h, i64 7
  store i8 %i.t, ptr %i.u, align 1, !tbaa !733
  %i.v = lshr i64 %i.j, 24
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr i8, ptr %i.h, i64 8
  store i8 %i.w, ptr %i.x, align 1, !tbaa !733
  %i.y = lshr i64 %i.j, 16
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr i8, ptr %i.h, i64 9
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !733
  %i.ab = lshr i64 %i.j, 8
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = getelementptr i8, ptr %i.h, i64 10
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !733
  %i.ae = trunc i64 %i.j to i8
  %i.af = getelementptr i8, ptr %i.h, i64 11
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !733
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !2899
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.h, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.015 = phi ptr [ %i.ai, %.lr.ph ], [ %i.av, %bb.b ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %.val = load i32, ptr %i.ak, align 4, !tbaa !733 ; 4 uses
  %i.al = lshr i32 %.val, 24
  %i.am = trunc nuw i32 %i.al to i8
  store i8 %i.am, ptr %.015, align 1, !tbaa !733
  %i.an = lshr i32 %.val, 16
  %i.ao = trunc i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.015, i64 1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !733
  %i.aq = lshr i32 %.val, 8
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.015, i64 2
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !733
  %i.at = trunc i32 %.val to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.015, i64 3
  store i8 %i.at, ptr %i.au, align 1, !tbaa !733
  %i.av = getelementptr inbounds nuw i8, ptr %.015, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i8, ptr %i.ag, align 1, !tbaa !2899
  %i.ax = zext i8 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !534

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 1, ptr %i.az, align 4, !tbaa !2958
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @AdjustTree(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #16 {
bb.a:
  %3 = alloca %struct.RtreeCell, align 8          ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !2957   ; 2 uses
  %.not49 = icmp eq ptr %i.a, null
  br i1 %.not49, label %.loopexit45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 39
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  br label %bb.c

bb.b:                                             ; preds = %cellContains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.g = add nuw nsw i32 %i.h, 1
  %exitcond = icmp eq i32 %i.h, 100
  br i1 %exitcond, label %.critedge, label %bb.c, !llvm.loop !6701

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ 1, %.lr.ph ], [ %i.g, %bb.b ]  ; 2 uses
  %.0195070 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.b ]
  %i.i = phi ptr [ %i.a, %.lr.ph ], [ %i.ig, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0195070, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2956
  %i.l = getelementptr i8, ptr %i.i, i64 24
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !2917 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %.val.i.i = load i8, ptr %i.m, align 1, !tbaa !733
  %i.n = getelementptr i8, ptr %.val.i, i64 3
  %.val11.i.i = load i8, ptr %i.n, align 1, !tbaa !733
  %i.o = zext i8 %.val.i.i to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = zext i8 %.val11.i.i to i32
  %i.r = or disjoint i32 %i.p, %i.q               ; 2 uses
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.val12.i.i = load i8, ptr %i.b, align 1, !tbaa !2918
  %i.s = zext i8 %.val12.i.i to i64               ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.t = mul nuw nsw i64 %indvars.iv.i.i, %i.s
  %i.u = getelementptr i8, ptr %.val.i, i64 %i.t  ; 8 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw i64 %i.x, 56
  %i.z = getelementptr i8, ptr %i.u, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !733
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 48
  %i.ad = or disjoint i64 %i.ac, %i.y
  %i.ae = getelementptr i8, ptr %i.u, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !733
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 40
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr i8, ptr %i.u, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !733
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr i8, ptr %i.u, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !733
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 24
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = getelementptr i8, ptr %i.u, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !733
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 16
  %i.ax = or disjoint i64 %i.as, %i.aw
  %i.ay = getelementptr i8, ptr %i.u, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !733
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 8
  %i.bc = or disjoint i64 %i.ax, %i.bb
  %i.bd = getelementptr i8, ptr %i.u, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !733
  %i.bf = zext i8 %i.be to i64
  %i.bg = add nuw i64 %i.bc, %i.bf
  %i.bh = icmp eq i64 %i.bg, %i.k
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge, label %bb.d, !llvm.loop !527

bb.f:                                             ; preds = %bb.d
  %i.bi = shl i64 %indvars.iv.i.i, 32
  %sext = mul i64 %i.bi, %i.s
  %i.bj = ashr exact i64 %sext, 32
  %i.bk = getelementptr i8, ptr %.val.i, i64 %i.bj ; 9 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4      ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !733
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw i64 %i.bn, 56
  %i.bp = getelementptr i8, ptr %i.bk, i64 5      ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !733
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 48
  %i.bt = or disjoint i64 %i.bs, %i.bo
  %i.bu = getelementptr i8, ptr %i.bk, i64 6      ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !733
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 40
  %i.by = or disjoint i64 %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.bk, i64 7      ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 32
  %i.cd = or disjoint i64 %i.by, %i.cc
  %i.ce = getelementptr i8, ptr %i.bk, i64 8      ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !733
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 24
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = getelementptr i8, ptr %i.bk, i64 9      ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 16
  %i.cn = or disjoint i64 %i.ci, %i.cm
  %i.co = getelementptr i8, ptr %i.bk, i64 10     ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !733
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 8
  %i.cs = or disjoint i64 %i.cn, %i.cr
  %i.ct = getelementptr i8, ptr %i.bk, i64 11     ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !733
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add nuw i64 %i.cs, %i.cv                ; 8 uses
  %i.cx = getelementptr i8, ptr %i.bk, i64 12     ; 2 uses
  %i.cy = load i8, ptr %i.d, align 1, !tbaa !2899 ; 3 uses
  %i.cz = zext i8 %i.cy to i64                    ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.017.i = phi ptr [ %i.el, %bb.g ], [ %i.cx, %bb.f ] ; 9 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.db = load i8, ptr %.017.i, align 1, !tbaa !733
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw i32 %i.dc, 24
  %i.de = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !733
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !733
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or disjoint i32 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !733
  %i.dq = zext i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.dn, %i.dq
  store i32 %i.dr, ptr %i.da, align 8, !tbaa !733
  %i.ds = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !733
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !733
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !733
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !733
  %i.ej = zext i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eg, %i.ej
  store i32 %i.ek, ptr %i.dt, align 4, !tbaa !733
  %i.el = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv.next.i, %i.cz
  br i1 %i.em, label %bb.g, label %nodeGetCell.exit, !llvm.loop !524

nodeGetCell.exit:                                 ; preds = %bb.g
  %i.en = load i8, ptr %i.e, align 2, !tbaa !2935 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 1
  %.not45.i = icmp eq i8 %i.cy, 0                 ; 2 uses
  br i1 %i.eo, label %.preheader.i, label %.preheader32.i

.preheader32.i:                                   ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph40.i

bb.h:                                             ; preds = %.critedge.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %i.ep = icmp samesign ult i64 %indvars.iv.next50.i, %i.cz
  br i1 %i.ep, label %.lr.ph40.i, label %cellContains.exit, !llvm.loop !532

.lr.ph40.i:                                       ; preds = %.preheader.i, %bb.h
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv49.i ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv49.i ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !733
  %i.et = load i32, ptr %i.eq, align 8, !tbaa !733
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph40.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !733
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !733
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  br i1 %i.ez, label %.loopexit, label %bb.h

bb.i:                                             ; preds = %.critedge31.i
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 2 ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next.i27, %i.cz
  br i1 %i.fa, label %.lr.ph.i, label %cellContains.exit, !llvm.loop !533

.lr.ph.i:                                         ; preds = %.preheader32.i, %bb.i
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27, %bb.i ], [ 0, %.preheader32.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i26 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i26 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !733
  %i.fe = load float, ptr %i.fb, align 8, !tbaa !733
  %i.ff = fcmp olt float %i.fd, %i.fe
  br i1 %i.ff, label %.loopexit, label %.critedge31.i

.critedge31.i:                                    ; preds = %.lr.ph.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !733
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !733
  %i.fk = fcmp ogt float %i.fh, %i.fj
  br i1 %i.fk, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge31.i, %.critedge.i, %.lr.ph40.i
  %i.fl = icmp eq i8 %i.en, 0
  %i.fm = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 2)
  %i.fn = add nsw i64 %i.fm, -1
  %i.fo = lshr i64 %i.fn, 1                       ; 2 uses
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 4 uses
  br i1 %i.fl, label %.preheader.i30.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %.loopexit
  %min.iters.check76 = icmp eq i64 %i.fo, 0
  br i1 %min.iters.check76, label %.preheader57.i.preheader93, label %vector.ph77

vector.ph77:                                      ; preds = %.preheader57.i.preheader
  %n.vec78 = and i64 %i.fp, 9223372036854775806   ; 3 uses
  %i.fq = shl nuw i64 %n.vec78, 1
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body79 ] ; 2 uses
  %i.fr = shl nuw i64 %index80, 1                 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fr ; 2 uses
  %wide.vec81 = load <4 x i32>, ptr %i.fs, align 8, !tbaa !733 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fr
  %wide.vec84 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !733 ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec81, <4 x i32> %wide.vec84)
  %i.fv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec81, <4 x i32> %wide.vec84)
  %interleaved.vec87 = shufflevector <4 x i32> %i.fu, <4 x i32> %i.fv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec87, ptr %i.fs, align 8, !tbaa !733
  %index.next88 = add nuw i64 %index80, 2         ; 2 uses
  %i.fw = icmp eq i64 %index.next88, %n.vec78
  br i1 %i.fw, label %middle.block89, label %vector.body79, !llvm.loop !6702

middle.block89:                                   ; preds = %vector.body79
  %cmp.n90 = icmp eq i64 %i.fp, %n.vec78
  br i1 %cmp.n90, label %cellUnion.exit, label %.preheader57.i.preheader93

.preheader57.i.preheader93:                       ; preds = %.preheader57.i.preheader, %middle.block89
  %indvars.iv.i28.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.fq, %middle.block89 ]
  br label %.preheader57.i

.preheader.i30.preheader:                         ; preds = %.loopexit
  %min.iters.check = icmp ult i8 %i.cy, 7
  br i1 %min.iters.check, label %.preheader.i30.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i30.preheader
  %n.vec = and i64 %i.fp, 9223372036854775804     ; 3 uses
  %i.fx = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_7
