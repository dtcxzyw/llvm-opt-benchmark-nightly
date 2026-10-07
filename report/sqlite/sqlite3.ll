Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqliteErrorFromPosixError:bb.a
    i32 4, label %bb.d
    i32 37, label %bb.d
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 3850, %bb.c ], [ 3, %bb.b ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ], [ 5, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 6411) i32 @unixGetTempname(i32 noundef %0, ptr noundef nonnull initializes((0, 1)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  store i8 0, ptr %1, align 1, !tbaa !733
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.d = tail call ptr %i.c(i32 noundef 11) #58, !inline_history !7 ; 2 uses
  %.not.i17 = icmp eq ptr %i.d, null
  br i1 %.not.i17, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.e(ptr noundef nonnull %i.d) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %sqlite3MutexAlloc.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %.0.i18 = load ptr, ptr @sqlite3_temp_directory, align 8, !tbaa !741 ; 4 uses
  %.not.i19 = icmp eq ptr %.0.i18, null
  br i1 %.not.i19, label %bb.f, label %bb.c

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !836
  %i.h = call i32 %i.g(ptr noundef nonnull %.0.i18, ptr noundef nonnull %2) #58, !inline_history !3495
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.f, align 8, !tbaa !839
  %i.k = and i32 %i.j, 61440
  %i.l = icmp eq i32 %i.k, 16384
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.n = call i32 %i.m(ptr noundef nonnull %.0.i18, i32 noundef 3) #58, !inline_history !3495
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %unixTempFileDir.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %sqlite3_mutex_enter.exit
  %.0.1.i = load ptr, ptr @azTempDirs.0, align 16, !tbaa !741 ; 4 uses
  %.not.1.i = icmp eq ptr %.0.1.i, null
  br i1 %.not.1.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !836
  %i.q = call i32 %i.p(ptr noundef nonnull %.0.1.i, ptr noundef nonnull %2) #58, !inline_history !3495
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %i.f, align 8, !tbaa !839
  %i.t = and i32 %i.s, 61440
  %i.u = icmp eq i32 %i.t, 16384
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.w = call i32 %i.v(ptr noundef nonnull %.0.1.i, i32 noundef 3) #58, !inline_history !3495
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %unixTempFileDir.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.2.i = load ptr, ptr @azTempDirs.1, align 8, !tbaa !741 ; 4 uses
  %.not.2.i = icmp eq ptr %.0.2.i, null
  br i1 %.not.2.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !836
  %i.z = call i32 %i.y(ptr noundef nonnull %.0.2.i, ptr noundef nonnull %2) #58, !inline_history !3495
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !839
  %i.ac = and i32 %i.ab, 61440
  %i.ad = icmp eq i32 %i.ac, 16384
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.af = call i32 %i.ae(ptr noundef nonnull %.0.2.i, i32 noundef 3) #58, !inline_history !3495
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %unixTempFileDir.exit, label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !836
  %i.ai = call i32 %i.ah(ptr noundef nonnull @.str.91, ptr noundef nonnull %2) #58, !inline_history !3495
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ak = load i32, ptr %i.f, align 8, !tbaa !839
  %i.al = and i32 %i.ak, 61440
  %i.am = icmp eq i32 %i.al, 16384
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.ao = call i32 %i.an(ptr noundef nonnull @.str.91, i32 noundef 3) #58, !inline_history !3495
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %unixTempFileDir.exit, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !836
  %i.ar = call i32 %i.aq(ptr noundef nonnull @.str.92, ptr noundef nonnull %2) #58, !inline_history !3495
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.f, align 8, !tbaa !839
  %i.au = and i32 %i.at, 61440
  %i.av = icmp eq i32 %i.au, 16384
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.ax = call i32 %i.aw(ptr noundef nonnull @.str.92, i32 noundef 3) #58, !inline_history !3495
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %unixTempFileDir.exit, label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !836
  %i.ba = call i32 %i.az(ptr noundef nonnull @.str.93, ptr noundef nonnull %2) #58, !inline_history !3495
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !839
  %i.bd = and i32 %i.bc, 61440
  %i.be = icmp eq i32 %i.bd, 16384
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.bg = call i32 %i.bf(ptr noundef nonnull @.str.93, i32 noundef 3) #58, !inline_history !3495
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %unixTempFileDir.exit, label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !836
  %i.bj = call i32 %i.bi(ptr noundef nonnull @.str.9, ptr noundef nonnull %2) #58, !inline_history !3495
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.x, label %unixTempFileDir.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bl = load i32, ptr %i.f, align 8, !tbaa !839
  %i.bm = and i32 %i.bl, 61440
  %i.bn = icmp eq i32 %i.bm, 16384
  br i1 %i.bn, label %bb.y, label %unixTempFileDir.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.bp = call i32 %i.bo(ptr noundef nonnull @.str.9, i32 noundef 3) #58, !inline_history !3495
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %unixTempFileDir.exit, label %unixTempFileDir.exit.thread

unixTempFileDir.exit.thread:                      ; preds = %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %.loopexit

unixTempFileDir.exit:                             ; preds = %bb.e, %bb.i, %bb.m, %bb.p, %bb.s, %bb.v, %bb.y
  %.07.i = phi ptr [ %.0.i18, %bb.e ], [ @.str.93, %bb.v ], [ %.0.1.i, %bb.i ], [ @.str.9, %bb.y ], [ %.0.2.i, %bb.m ], [ @.str.92, %bb.s ], [ @.str.91, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  %i.br = sext i32 %0 to i64
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -2     ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %unixTempFileDir.exit, %bb.aa
  %.013 = phi i32 [ 0, %unixTempFileDir.exit ], [ %.215, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef nonnull %i.a)
  store i8 0, ptr %i.bt, align 1, !tbaa !733
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !565
  %i.bv = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.90, ptr noundef nonnull %.07.i, i64 noundef %i.bu, i32 noundef 0) ; 0 uses
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !733
  %.not = icmp ne i8 %i.bw, 0
  %3 = icmp samesign ugt i32 %.013, 10
  %i.bx = select i1 %.not, i1 true, i1 %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br i1 %i.bx, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.215 = add nuw nsw i32 %.013, 1
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 56), align 8, !tbaa !836
  %i.bz = call i32 %i.by(ptr noundef nonnull %1, i32 noundef 0) #58
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %.loopexit, !llvm.loop !3496

.loopexit:                                        ; preds = %bb.z, %bb.aa, %unixTempFileDir.exit.thread
  %.2 = phi i32 [ 6410, %unixTempFileDir.exit.thread ], [ 1, %bb.z ], [ 0, %bb.aa ]
  %i.cb = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i20 = icmp eq i8 %i.cb, 0
  br i1 %.not.i20, label %sqlite3_mutex_leave.exit, label %sqlite3MutexAlloc.exit22

sqlite3MutexAlloc.exit22:                         ; preds = %.loopexit
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.cd = call ptr %i.cc(i32 noundef 11) #58, !inline_history !7 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %sqlite3_mutex_leave.exit, label %bb.ab

bb.ab:                                            ; preds = %sqlite3MutexAlloc.exit22
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.ce(ptr noundef nonnull %i.cd) #58, !inline_history !567
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %.loopexit, %sqlite3MutexAlloc.exit22, %bb.ab
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 1803) i32 @unixMapfile(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1414
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 128), align 16, !tbaa !836
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !844
  %i.h = call i32 %i.e(i32 noundef %i.g, ptr noundef nonnull %2) #58
  %.not.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br i1 %.not.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.j, %bb.c ], [ %1, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !849
  %spec.select = call i64 @llvm.smin.i64(i64 %.1, i64 %i.l) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1394 ; 6 uses
  %.not17 = icmp eq i64 %spec.select, %i.n
  br i1 %.not17, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !844
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1395 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1415 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not37.i = icmp eq i64 %i.n, %i.t
  br i1 %.not37.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.n
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 560), align 16, !tbaa !836
  %i.w = sub nsw i64 %i.t, %i.n
  %i.x = call i32 %i.v(ptr noundef nonnull %i.u, i64 noundef %i.w) #58, !inline_history !3497 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 584), align 8, !tbaa !836
  %i.z = call ptr (ptr, i64, i64, i32, ...) %i.y(ptr noundef nonnull %i.r, i64 noundef %i.n, i64 noundef %spec.select, i32 noundef 1) #58, !inline_history !3497 ; 3 uses
  %magicptr.i = ptrtoint ptr %i.z to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 560), align 16, !tbaa !836
  %i.ab = call i32 %i.aa(ptr noundef nonnull %i.r, i64 noundef %i.n) #58, !inline_history !3497 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j, %bb.e
  %.03241.i = phi ptr [ @.str.79, %bb.j ], [ @.str.77, %bb.e ]
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 536), align 8, !tbaa !836
  %i.ae = call ptr %i.ad(ptr noundef null, i64 noundef %spec.select, i32 noundef 1, i32 noundef 1, i32 noundef %i.p, i64 noundef 0) #58, !inline_history !3497
  br label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j
  %.03240.i = phi ptr [ %.03241.i, %.thread.i ], [ @.str.79, %bb.j ]
  %.1.i = phi ptr [ %i.ae, %.thread.i ], [ %i.z, %bb.j ] ; 2 uses
  %i.af = icmp eq ptr %.1.i, inttoptr (i64 -1 to ptr)
  br i1 %i.af, label %bb.l, label %unixRemapfile.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !846 ; 2 uses
  %i.ai = tail call ptr @__errno_location() #60, !inline_history !3498
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !570
  %i.ak = icmp eq ptr %i.ah, null
  %spec.store.select.i.i = select i1 %i.ak, ptr @.str.4, ptr %i.ah
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 0, ptr noundef nonnull @.str.86, i32 noundef 45847, i32 noundef %i.aj, ptr noundef nonnull %.03240.i, ptr noundef nonnull %spec.store.select.i.i, ptr noundef nonnull @.str.4), !inline_history !3498
  store i64 0, ptr %i.k, align 8, !tbaa !849
  br label %unixRemapfile.exit

unixRemapfile.exit:                               ; preds = %bb.k, %bb.l
  %.033.i = phi i64 [ 0, %bb.l ], [ %spec.select, %bb.k ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.l ], [ %.1.i, %bb.k ]
  store ptr %.2.i, ptr %i.q, align 8, !tbaa !1395
  store i64 %.033.i, ptr %i.s, align 8, !tbaa !1415
  store i64 %.033.i, ptr %i.m, align 8, !tbaa !1394
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.d, %unixRemapfile.exit, %bb.a
  %.113 = phi i32 [ 1802, %bb.c ], [ 0, %bb.a ], [ 0, %unixRemapfile.exit ], [ 0, %bb.d ]
  ret i32 %.113
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4619) i32 @unixLockSharedMemory(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.flock, align 8              ; 7 uses
  %3 = alloca %struct.flock, align 8              ; 8 uses
  %4 = alloca %struct.flock, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !1402
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 128, ptr %i.b, align 8, !tbaa !1404
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %i.c, align 8, !tbaa !1401
  store i16 1, ptr %4, align 8, !tbaa !1403
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 176), align 16, !tbaa !836
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1411
  %i.g = call i32 (i32, i32, ...) %i.d(i32 noundef %i.f, i32 noundef 5, ptr noundef nonnull %4) #58
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %4, align 8, !tbaa !1403
  switch i16 %i.h, label %bb.j [
    i16 2, label %bb.c
    i16 1, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.j = load i8, ptr %i.i, align 2, !tbaa !1422
  %.not12 = icmp eq i8 %i.j, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 1, ptr %i.k, align 1, !tbaa !1425
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val14 = load ptr, ptr %i.l, align 8, !tbaa !1390
  %i.m = getelementptr i8, ptr %.val14, i64 56
  %.val14.val = load ptr, ptr %i.m, align 8, !tbaa !1419
  %i.n = getelementptr i8, ptr %.val14.val, i64 24
  %.val14.val.val = load i32, ptr %i.n, align 8, !tbaa !1411 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.o = icmp sgt i32 %.val14.val.val, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 1, ptr %3, align 8, !tbaa !1403
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.p, align 2, !tbaa !1402
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 128, ptr %i.q, align 8, !tbaa !1404
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %i.r, align 8, !tbaa !1401
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 176), align 16, !tbaa !836
  %i.t = call i32 (i32, i32, ...) %i.s(i32 noundef %.val14.val.val, i32 noundef 6, ptr noundef nonnull %3) #58, !inline_history !136
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %unixShmSystemLock.exit, label %bb.g
end_hunk_0
begin_hunk_1_@btreeEndTransaction:bb.a

bb.k:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ao(ptr noundef nonnull %i.u) #58, !inline_history !3739
  br label %sqlite3_free.exitthread-pre-split.i

sqlite3_free.exitthread-pre-split.i:              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i.i, %.lr.ph.i15
  %.1.ph.i = phi ptr [ %.020.i, %bb.k ], [ %.020.i, %bb.j ], [ %.020.i, %sqlite3_mutex_enter.exit.i.i ], [ %i.x, %.lr.ph.i15 ] ; 2 uses
  %.pr.i = load ptr, ptr %.1.ph.i, align 8, !tbaa !1464
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %sqlite3_free.exitthread-pre-split.i, %bb.f
  %i.ap = phi ptr [ %.pr.i, %sqlite3_free.exitthread-pre-split.i ], [ %i.y, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.1.ph.i, %sqlite3_free.exitthread-pre-split.i ], [ %.020.i, %bb.f ]
  %.not.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i16, label %._crit_edge.i, label %.lr.ph.i15, !llvm.loop !3741

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1463
  %i.as = icmp eq ptr %i.ar, %0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i
  store ptr null, ptr %i.aq, align 8, !tbaa !1463
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !1489
  br label %.sink.split.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1489 ; 2 uses
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %.sink.split.i, label %clearAllSharedCacheTableLocks.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.pre = phi i32 [ %.pre.pre, %bb.l ], [ 2, %bb.m ]
  %.sink26.i = phi i16 [ -193, %bb.l ], [ -129, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !1036
  %i.ay = and i16 %i.ax, %.sink26.i
  store i16 %i.ay, ptr %i.aw, align 8, !tbaa !1036
  br label %clearAllSharedCacheTableLocks.exit

clearAllSharedCacheTableLocks.exit:               ; preds = %bb.m, %.sink.split.i
  %i.az = phi i32 [ %i.au, %bb.m ], [ %.pre, %.sink.split.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bb = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !1489
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %.thread

bb.n:                                             ; preds = %clearAllSharedCacheTableLocks.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i8 0, ptr %i.bd, align 4, !tbaa !984
  br label %.thread

.thread:                                          ; preds = %bb.a, %clearAllSharedCacheTableLocks.exit, %bb.n
  store i8 0, ptr %i.e, align 8, !tbaa !977
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !984
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %unlockBtreeIfUnused.exit

bb.o:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !987 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bi, null
  br i1 %.not.i17, label %unlockBtreeIfUnused.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.bh, align 8, !tbaa !987
  %i.bj = getelementptr i8, ptr %i.bi, i64 112
  %.val.i = load ptr, ptr %i.bj, align 8, !tbaa !1010 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !896 ; 2 uses
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef %.val.i), !inline_history !142
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !632
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %.val.i.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !1068
  %i.bp = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bp, label %bb.q, label %unlockBtreeIfUnused.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @pagerUnlockAndRollback(ptr noundef nonnull %i.bl), !inline_history !143
  br label %unlockBtreeIfUnused.exit

unlockBtreeIfUnused.exit:                         ; preds = %bb.q, %bb.p, %bb.o, %.thread, %downgradeAllSharedCacheTableLocks.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @incrVacuumStep(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = icmp ult i32 %2, 2
  br i1 %i.h, label %ptrmapPageno.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1061
  %i.k = udiv i32 %i.j, 5
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = add i32 %2, -2                           ; 2 uses
  %i.n = urem i32 %i.m, %i.l
  %i.o = sub nuw i32 %i.m, %i.n                   ; 2 uses
  %i.p = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !570
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !657
  %i.s = udiv i32 %i.p, %i.r
  %i.t = add nuw i32 %i.o, 1
  %i.u = icmp eq i32 %i.t, %i.s
  %spec.select.v.i = select i1 %i.u, i32 3, i32 2
  %spec.select.i = add i32 %spec.select.v.i, %i.o
  br label %ptrmapPageno.exit

ptrmapPageno.exit:                                ; preds = %bb.a, %bb.b
  %.010.i = phi i32 [ %spec.select.i, %bb.b ], [ 0, %bb.a ]
  %i.v = icmp eq i32 %.010.i, %2
  br i1 %i.v, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %ptrmapPageno.exit
  %i.w = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !570
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !657
  %i.z = udiv i32 %i.w, %i.y
  %i.aa = add i32 %i.z, 1
  %.not = icmp eq i32 %2, %i.aa
  br i1 %.not, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !987
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !989 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 37
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 38
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !733
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 39
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = or i8 %i.ai, %i.ag
  %i.ao = or i8 %i.an, %i.ak
  %i.ap = or i8 %i.ao, %i.am
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %.not66 = icmp eq i32 %i.ar, 0
  br i1 %.not66, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.as = load i8, ptr %i.a, align 1, !tbaa !733  ; 2 uses
  switch i8 %i.as, label %bb.k [
    i8 1, label %bb.g
    i8 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 77284, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %3, 0
  br i1 %i.at, label %bb.i, label %.thread93

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.au = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef %i.c, i32 noundef %2, i8 noundef zeroext 1) ; 2 uses
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.j, label %.critedge72

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !1514
  call fastcc void @releasePage(ptr noundef %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %.thread93

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  %i.aw = call fastcc i32 @btreeGetPage(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.f, i32 noundef 0) ; 2 uses
  %.not67 = icmp eq i32 %i.aw, 0
  br i1 %.not67, label %bb.l, label %.thread97

bb.l:                                             ; preds = %bb.k
  %i.ax = icmp eq i32 %3, 0
  %i.ay = getelementptr i8, ptr %0, i64 64        ; 2 uses
  br i1 %i.ax, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  %.val.us = load i32, ptr %i.ay, align 8, !tbaa !997
  %i.az = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef %1, i8 noundef zeroext 2) ; 2 uses
  %.not68.us = icmp eq i32 %i.az, 0
  br i1 %.not68.us, label %bb.m, label %.split105.us

bb.m:                                             ; preds = %.split.us
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !1514 ; 2 uses
  %.not.i75.us = icmp eq ptr %i.ba, null
  br i1 %.not.i75.us, label %releasePage.exit78.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.ba, i64 112
  %.val.i76.us = load ptr, ptr %i.bb, align 8, !tbaa !1010 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 52
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !895
  %i.be = and i16 %i.bd, 32
  %.not.i.i.i77.us = icmp eq i16 %i.be, 0
  br i1 %.not.i.i.i77.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !896 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 152 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !897
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !897
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 168 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !898
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 32
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !899
  store ptr %.val.i76.us, ptr %i.bk, align 8, !tbaa !898
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !900 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 48
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !901
  %i.br = add i32 %i.bq, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !630
  %i.bv = mul nsw i64 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i76.us, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !894
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !863
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !903
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.bo, i64 noundef %i.bv, ptr noundef %i.bx) #58, !inline_history !193 ; 0 uses
  br label %releasePage.exit78.us

bb.p:                                             ; preds = %bb.n
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i76.us)
  br label %releasePage.exit78.us

releasePage.exit78.us:                            ; preds = %bb.p, %bb.o, %bb.m
  %i.cc = load i32, ptr %i.e, align 4, !tbaa !570 ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, %.val.us
  br i1 %i.cd, label %.split107.us, label %.split109.us

.split109.us:                                     ; preds = %releasePage.exit78.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  br label %.split109

.split:                                           ; preds = %bb.l, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  %.val = load i32, ptr %i.ay, align 8, !tbaa !997
  %i.ce = call fastcc i32 @allocateBtreePage(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef %i.e, i32 noundef 0, i8 noundef zeroext 0) ; 2 uses
  %.not68 = icmp eq i32 %i.ce, 0
  br i1 %.not68, label %bb.t, label %.split105.us

.split105.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %i.az, %.split.us ], [ %i.ce, %.split ] ; 3 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !1514 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %releasePage.exit.thread, label %bb.q

bb.q:                                             ; preds = %.split105.us
  %i.cg = getelementptr i8, ptr %i.cf, i64 112
  %.val.i = load ptr, ptr %i.cg, align 8, !tbaa !1010 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !895
  %i.cj = and i16 %i.ci, 32
  %.not.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !896 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 152 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !897
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !897
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 168 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !898
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !899
  store ptr %.val.i, ptr %i.cp, align 8, !tbaa !898
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !900 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !901
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 200
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !630
  %i.da = mul nsw i64 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !894
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !863
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !903
  %i.dg = call i32 %i.df(ptr noundef nonnull %i.ct, i64 noundef %i.da, ptr noundef %i.dc) #58, !inline_history !193 ; 0 uses
  br label %releasePage.exit.thread

bb.s:                                             ; preds = %bb.q
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit.thread

bb.t:                                             ; preds = %.split
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !1514 ; 2 uses
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %releasePage.exit78, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr i8, ptr %i.dh, i64 112
  %.val.i76 = load ptr, ptr %i.di, align 8, !tbaa !1010 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i76, i64 52
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !895
  %i.dl = and i16 %i.dk, 32
  %.not.i.i.i77 = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.i77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i76, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !896 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 152 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !897
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !897
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 168 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !898
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i76, i64 32
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !899
  store ptr %.val.i76, ptr %i.dr, align 8, !tbaa !898
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !900 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i76, i64 48
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !901
  %i.dy = add i32 %i.dx, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 200
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !630
  %i.ec = mul nsw i64 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %.val.i76, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !894
  %i.ef = load ptr, ptr %i.dv, align 8, !tbaa !863
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 144
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !903
  %i.ei = call i32 %i.eh(ptr noundef nonnull %i.dv, i64 noundef %i.ec, ptr noundef %i.ee) #58, !inline_history !193 ; 0 uses
  br label %releasePage.exit78

bb.w:                                             ; preds = %bb.u
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i76)
  br label %releasePage.exit78

releasePage.exit78:                               ; preds = %bb.t, %bb.v, %bb.w
  %i.ej = load i32, ptr %i.e, align 4, !tbaa !570 ; 3 uses
  %i.ek = icmp ugt i32 %i.ej, %.val
  br i1 %i.ek, label %.split107.us, label %bb.aa

.split107.us:                                     ; preds = %releasePage.exit78, %releasePage.exit78.us
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !1514 ; 2 uses
  %.not.i79 = icmp eq ptr %i.el, null
  br i1 %.not.i79, label %releasePage.exit82, label %bb.x

bb.x:                                             ; preds = %.split107.us
  %i.em = getelementptr i8, ptr %i.el, i64 112
  %.val.i80 = load ptr, ptr %i.em, align 8, !tbaa !1010 ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i80, i64 52
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !895
  %i.ep = and i16 %i.eo, 32
  %.not.i.i.i81 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i.i81, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i80, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !896 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 152 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !897
  %i.eu = add nsw i32 %i.et, -1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !897
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 168 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !898
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i80, i64 32
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !899
  store ptr %.val.i80, ptr %i.ev, align 8, !tbaa !898
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !900 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i80, i64 48
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !901
  %i.fc = add i32 %i.fb, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 200
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !630
  %i.fg = mul nsw i64 %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.i80, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !894
  %i.fj = load ptr, ptr %i.ez, align 8, !tbaa !863
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !903
  %i.fm = call i32 %i.fl(ptr noundef nonnull %i.ez, i64 noundef %i.fg, ptr noundef %i.fi) #58, !inline_history !193 ; 0 uses
  br label %releasePage.exit82

bb.z:                                             ; preds = %bb.x
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i80)
  br label %releasePage.exit82

releasePage.exit82:                               ; preds = %.split107.us, %bb.y, %bb.z
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 77336, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %releasePage.exit.thread

releasePage.exit.thread:                          ; preds = %releasePage.exit82, %.split105.us, %bb.r, %bb.s
  %.256.ph = phi i32 [ %.us-phi, %bb.s ], [ %.us-phi, %bb.r ], [ %.us-phi, %.split105.us ], [ 11, %releasePage.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  br label %.thread97

bb.aa:                                            ; preds = %releasePage.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  %i.fn = icmp ugt i32 %i.ej, %1
  br i1 %i.fn, label %.split, label %.split109, !llvm.loop !3742

.critedge72:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.e, %.critedge72
  %.5.ph = phi i32 [ %i.au, %.critedge72 ], [ %i.ar, %bb.e ], [ 11, %bb.g ], [ 101, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.af

.thread93:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.ab

.thread97:                                        ; preds = %releasePage.exit.thread, %bb.k
  %.357.ph = phi i32 [ %i.aw, %bb.k ], [ %.256.ph, %releasePage.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.af

.split109:                                        ; preds = %bb.aa, %.split109.us
  %.us-phi110 = phi i32 [ %i.cc, %.split109.us ], [ %i.ej, %bb.aa ]
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !1514 ; 2 uses
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !570
  %i.fq = call fastcc i32 @relocatePage(ptr noundef nonnull %0, ptr noundef %i.fo, i8 noundef zeroext %i.as, i32 noundef %i.fp, i32 noundef %.us-phi110, i32 noundef %3) ; 2 uses
  call fastcc void @releasePage(ptr noundef %i.fo)
  %.not69 = icmp eq i32 %i.fq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br i1 %.not69, label %bb.ab, label %bb.af
end_hunk_1
