Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@verifyDbFile:bb.a

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !453
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef nonnull @.str.52, ptr noundef %i.m)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !453
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef nonnull @.str.53, ptr noundef %i.o)
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1389
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %fileHasMoved.exit.thread, label %bb.h

fileHasMoved.exit.thread:                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 104), align 8, !tbaa !438
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !453
  %i.u = call i32 %i.r(ptr noundef %i.t, ptr noundef nonnull %1) #58, !inline_history !1438
  %.not3.i = icmp eq i32 %i.u, 0
  br i1 %.not3.i, label %fileHasMoved.exit, label %fileHasMoved.exit.thread11

fileHasMoved.exit.thread11:                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.i

fileHasMoved.exit:                                ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1439
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !1389
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1440
  %.not13 = icmp eq i64 %i.w, %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.not13, label %bb.j, label %bb.i

bb.i:                                             ; preds = %fileHasMoved.exit.thread11, %fileHasMoved.exit
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !453
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef nonnull @.str.54, ptr noundef %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %fileHasMoved.exit.thread, %fileHasMoved.exit, %bb.a, %bb.i, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @closeUnixFile(ptr nofree noundef captures(none) initializes((0, 24), (28, 48), (64, 88), (96, 104), (112, 120)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1402 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %unixUnmapfile.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 560), align 16, !tbaa !438
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1442
  %i.f = tail call i32 %i.c(ptr noundef nonnull %i.b, i64 noundef %i.e) #58, !inline_history !1443 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !1402
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %unixUnmapfile.exit

unixUnmapfile.exit:                               ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !451  ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %unixUnmapfile.exit
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 32), align 16, !tbaa !438
  %i.l = tail call i32 %i.k(i32 noundef %i.i) #58, !inline_history !485
  %.not.i8 = icmp eq i32 %i.l, 0
  br i1 %.not.i8, label %robust_close.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !453  ; 2 uses
  %i.o = tail call ptr @__errno_location() #60, !inline_history !486
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = icmp eq ptr %i.n, null
  %spec.store.select.i.i = select i1 %i.q, ptr @.str.4, ptr %i.n
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 4106, ptr noundef nonnull @.str.86, i32 noundef range(i32 41675, 47329) 42509, i32 noundef %i.p, ptr noundef nonnull @.str.56, ptr noundef nonnull %spec.store.select.i.i, ptr noundef nonnull @.str.4), !inline_history !486
  br label %robust_close.exit

robust_close.exit:                                ; preds = %bb.c, %bb.d
  store i32 -1, ptr %i.h, align 8, !tbaa !451
  br label %bb.e

bb.e:                                             ; preds = %robust_close.exit, %unixUnmapfile.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !430  ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i9 = icmp eq i32 %i.u, 0
  br i1 %.not.i9, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.w(ptr noundef nonnull %i.v) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.h, %bb.g
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.y = tail call i32 %i.x(ptr noundef nonnull %i.s) #58, !inline_history !277
  %i.z = sext i32 %i.y to i64
  %i.aa = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ab = sub nsw i64 %i.aa, %i.z
  store i64 %i.ab, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ad = add nsw i64 %i.ac, -1
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ae(ptr noundef nonnull %i.s) #58, !inline_history !278
  %i.af = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.af, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ag(ptr noundef nonnull %i.af) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.j:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ah(ptr noundef nonnull %i.s) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.e, %sqlite3_mutex_enter.exit.i, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @posixOpen(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #10 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef %1, i32 noundef %2) #58
  ret i32 %i.a
}

declare i32 @close(i32 noundef) #28

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) #29

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) #26

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) #29

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) #29

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) #26

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) #28

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) #30

declare i64 @pread64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) #28

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) #30

declare i64 @pwrite64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) #28

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) #26

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) #29

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @openDirectory(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [513 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 512, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.31, ptr noundef %0) ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #59 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge12

.lr.ph.preheader:                                 ; preds = %bb.a
  %2 = and i64 %i.c, 2147483647
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.f = icmp sgt i64 %indvars.iv, 1
  br i1 %i.f, label %.lr.ph, label %.critedge12, !llvm.loop !1487

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !231
  %.not = icmp eq i8 %i.h, 47
  br i1 %.not, label %.critedge, label %bb.b

.critedge12:                                      ; preds = %bb.b, %bb.a
  %i.i = load i8, ptr %i.a, align 16, !tbaa !231
  %.not11 = icmp eq i8 %i.i, 47
  br i1 %.not11, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.critedge12
  store i8 46, ptr %i.a, align 16, !tbaa !231
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge12, %bb.c
  %.sink26 = phi i64 [ 1, %.critedge12 ], [ 1, %bb.c ], [ %indvars.iv, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink26
  store i8 0, ptr %i.j, align 1, !tbaa !231
  br label %.split.i

.split.i:                                         ; preds = %.split.i.backedge, %.critedge
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 8), align 8, !tbaa !438
  %i.l = call i32 %i.k(ptr noundef nonnull %i.a, i32 noundef 524288, i32 noundef 420) #58, !inline_history !495 ; 6 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split.i
  %i.n = tail call ptr @__errno_location() #60, !inline_history !495
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %.split.i.backedge, label %bb.g

bb.e:                                             ; preds = %.split.i
  %i.q = icmp samesign ugt i32 %i.l, 2
  br i1 %i.q, label %robust_open.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 32), align 16, !tbaa !438
  %i.s = call i32 %i.r(i32 noundef %i.l) #58, !inline_history !495 ; 0 uses
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.a, i32 noundef %i.l), !inline_history !495
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 8), align 8, !tbaa !438
  %i.u = call i32 %i.t(ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef 0) #58, !inline_history !495
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %.split.i.backedge

.split.i.backedge:                                ; preds = %bb.f, %bb.d
  br label %.split.i

robust_open.exit:                                 ; preds = %bb.e
  store i32 %i.l, ptr %1, align 4, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.f
  %.027.i.ph = phi i32 [ -1, %bb.f ], [ %i.l, %bb.d ]
  store i32 %.027.i.ph, ptr %1, align 4, !tbaa !27
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 14, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87, i32 noundef 44090, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !448
  %i.w = tail call ptr @__errno_location() #60, !inline_history !449
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 14, ptr noundef nonnull @.str.86, i32 noundef 44090, i32 noundef %i.x, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.4), !inline_history !449
  br label %bb.h

bb.h:                                             ; preds = %robust_open.exit, %bb.g
  %.010 = phi i32 [ 14, %bb.g ], [ 0, %robust_open.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.010
}

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) #29

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) #29

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #26

; Function Attrs: nounwind
declare i32 @geteuid() #26

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #26

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) #26

; Function Attrs: nounwind
declare ptr @mremap(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ...) #26

; Function Attrs: nounwind uwtable
define internal i32 @unixGetpagesize() #0 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 30) #58
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) #29

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) #29

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define internal fastcc i32 @robust_open(ptr noundef %0, i32 noundef range(i32 0, 262144) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 5 uses
  %.not28 = icmp eq i32 %2, 0                     ; 2 uses
  %i.a = select i1 %.not28, i32 420, i32 %2       ; 2 uses
  %i.b = or disjoint i32 %1, 524288               ; 2 uses
  %i.c = and i32 %1, 192
  %i.d = icmp eq i32 %i.c, 192
  br i1 %i.d, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 8), align 8, !tbaa !438
  %i.f = tail call i32 %i.e(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.a) #58 ; 6 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.h = icmp samesign ugt i32 %i.f, 2
  br i1 %i.h, label %.split31.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 392), align 8, !tbaa !438
  %i.j = tail call i32 %i.i(ptr noundef %0) #58   ; 0 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 32), align 16, !tbaa !438
  %i.l = tail call i32 %i.k(i32 noundef %i.f) #58 ; 0 uses
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef nonnull @.str.84, ptr noundef %0, i32 noundef %i.f)
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 8), align 8, !tbaa !438
  %i.n = tail call i32 %i.m(ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef %2) #58
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %.split.us.backedge

bb.d:                                             ; preds = %.split.us
  %i.p = tail call ptr @__errno_location() #60
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %.split.us.backedge, label %.thread

.split.us.backedge:                               ; preds = %bb.d, %bb.c
  br label %.split.us

.split:                                           ; preds = %bb.a, %.split.backedge
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 8), align 8, !tbaa !438
  %i.t = tail call i32 %i.s(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.a) #58 ; 6 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split
  %i.v = tail call ptr @__errno_location() #60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %.split.backedge, label %.thread

.split.backedge:                                  ; preds = %bb.e, %bb.g
  br label %.split

bb.f:                                             ; preds = %.split
  %i.y = icmp samesign ugt i32 %i.t, 2
  br i1 %i.y, label %.split31.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 32), align 16, !tbaa !438
  %i.aa = tail call i32 %i.z(i32 noundef %i.t) #58 ; 0 uses
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef nonnull @.str.84, ptr noundef %0, i32 noundef %i.t)
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 8), align 8, !tbaa !438
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef %2) #58
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.thread, label %.split.backedge

.split31.us:                                      ; preds = %bb.f, %bb.b
  %.us-phi = phi i32 [ %i.f, %bb.b ], [ %i.t, %bb.f ] ; 4 uses
  br i1 %.not28, label %.thread, label %bb.h

bb.h:                                             ; preds = %.split31.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 128), align 16, !tbaa !438
  %i.af = call i32 %i.ae(i32 noundef %.us-phi, ptr noundef nonnull %3) #58
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.ai, 0
  %or.cond = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !441
  %i.am = and i32 %i.al, 511
  %.not = icmp eq i32 %i.am, %2
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 344), align 8, !tbaa !438
  %i.ao = call i32 %i.an(i32 noundef %.us-phi, i32 noundef %2) #58 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.d, %bb.c, %bb.k, %.split31.us
  %.027 = phi i32 [ %.us-phi, %.split31.us ], [ %.us-phi, %bb.k ], [ -1, %bb.c ], [ %i.f, %bb.d ], [ %i.t, %bb.e ], [ -1, %bb.g ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 5387) i32 @unixLogErrorAtLine(i32 noundef returned range(i32 0, 5387) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 41675, 47329) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = icmp eq ptr %2, null
end_hunk_0
begin_hunk_1_@sqlite3WhereCodeOneLoopStart:bb.a
  %.2977 = phi i8 [ 0, %bb.eg ], [ %.1976, %bb.ef ], [ %.1976, %bb.ee ]
  %.0974 = phi i1 [ %i.aan, %bb.eg ], [ true, %bb.ef ], [ true, %bb.ee ]
  %i.aao = icmp sgt i32 %3, 0
  br i1 %i.aao, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.aap = load i32, ptr %i.dc, align 8, !tbaa !4221
  %i.aaq = and i32 %i.aap, 1048576
  %.not1081 = icmp eq i32 %i.aaq, 0
  br i1 %.not1081, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aar = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %1, i32 noundef 138, i32 noundef %i.xn) ; 0 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.eh
  %i.aas = call fastcc i32 @codeAllEqualityTerms(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %i.ah, i32 noundef %.2982, ptr noundef %i.b) ; 11 uses
  %i.aat = load ptr, ptr %i.b, align 8, !tbaa !259 ; 7 uses
  %i.aau = icmp ne ptr %i.aat, null               ; 2 uses
  %i.aav = zext i16 %.0995 to i32                 ; 4 uses
  %i.aaw = icmp ne i16 %.0995, 0
  %or.cond8 = select i1 %i.aau, i1 %i.aaw, i1 false
  br i1 %or.cond8, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.aax = zext i16 %i.xf to i64
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aax
  %i.aaz = tail call fastcc ptr @sqlite3DbStrDup(ptr noundef %i.d, ptr noundef nonnull %i.aay)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.0979 = phi ptr [ %i.aaz, %bb.el ], [ null, %bb.ek ] ; 5 uses
  %.not1082 = icmp eq i32 %.0973, 0               ; 8 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.in = select i1 %.not1082, ptr %i.ak, ptr %i.aba
  %i.abb = load i32, ptr %.in, align 4, !tbaa !27 ; 8 uses
  %i.abc = icmp ne ptr %.1994, null               ; 3 uses
  br i1 %i.abc, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.abd = getelementptr inbounds nuw i8, ptr %.1994, i64 20
  %i.abe = load i16, ptr %i.abd, align 4, !tbaa !4464
  %i.abf = and i16 %i.abe, 40
  %i.abg = icmp ne i16 %i.abf, 0
  %i.abh = zext i1 %i.abg to i32
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.abi = phi i32 [ 1, %bb.em ], [ %i.abh, %bb.en ] ; 3 uses
  %i.abj = icmp ne ptr %.1992, null               ; 3 uses
  br i1 %i.abj, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.abk = getelementptr inbounds nuw i8, ptr %.1992, i64 20
  %i.abl = load i16, ptr %i.abk, align 4, !tbaa !4464
  %i.abm = and i16 %i.abl, 40
  %i.abn = icmp ne i16 %i.abm, 0
  %i.abo = zext i1 %i.abn to i32
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.abp = phi i32 [ 1, %bb.eo ], [ %i.abo, %bb.ep ] ; 3 uses
  %i.abq = icmp ne i16 %i.xf, 0
  br i1 %i.abc, label %bb.er, label %bb.fd

bb.er:                                            ; preds = %bb.eq
  %i.abr = load ptr, ptr %.1994, align 8, !tbaa !1160
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 24
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !1162 ; 7 uses
  %i.abu = add nsw i32 %i.aas, %i.xo              ; 2 uses
  %i.abv = zext i16 %.0996 to i32                 ; 3 uses
  tail call fastcc void @codeExprOrVector(ptr noundef nonnull %0, ptr noundef %i.abt, i32 noundef %i.abu, i32 noundef %i.abv)
  %i.abw = getelementptr i8, ptr %.1994, i64 18
  %.1994.val = load i16, ptr %i.abw, align 2, !tbaa !4238 ; 2 uses
  %i.abx = and i16 %.1994.val, 256
  %.not.i1240 = icmp eq i16 %i.abx, 0
  br i1 %.not.i1240, label %whereLikeOptimizationStringFixup.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aby = load ptr, ptr %1, align 8, !tbaa !150
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 103
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !563
  %.not.i.i.i = icmp eq i8 %i.aca, 0
  br i1 %.not.i.i.i, label %bb.et, label %sqlite3VdbeGetLastOp.exit.i

bb.et:                                            ; preds = %bb.es
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !189
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !188
  %i.acf = sext i32 %i.acc to i64
  %i.acg = getelementptr [32 x i8], ptr %i.ace, i64 %i.acf
  %i.ach = getelementptr i8, ptr %i.acg, i64 -32
  br label %sqlite3VdbeGetLastOp.exit.i

sqlite3VdbeGetLastOp.exit.i:                      ; preds = %bb.et, %bb.es
  %.0.i.i.i = phi ptr [ %i.ach, %bb.et ], [ @sqlite3VdbeGetOp.dummy, %bb.es ] ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !4347 ; 2 uses
  %i.ack = lshr i32 %i.acj, 1
  %i.acl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 12
  store i32 %i.ack, ptr %i.acl, align 4, !tbaa !575
  %i.acm = trunc i32 %i.acj to i16
  %i.acn = and i16 %i.acm, 1
  %i.aco = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  store i16 %i.acn, ptr %i.aco, align 2, !tbaa !577
  br label %whereLikeOptimizationStringFixup.exit

whereLikeOptimizationStringFixup.exit:            ; preds = %bb.er, %sqlite3VdbeGetLastOp.exit.i
  %i.acp = and i16 %.1994.val, 128
  %i.acq = icmp eq i16 %i.acp, 0
  br i1 %i.acq, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %whereLikeOptimizationStringFixup.exit
  %i.acr = tail call fastcc i32 @sqlite3ExprCanBeNull(ptr noundef %i.abt)
  %.not1084 = icmp eq i32 %i.acr, 0
  br i1 %.not1084, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.acs = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 51, i32 noundef %i.abu, i32 noundef %i.abb) ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu, %whereLikeOptimizationStringFixup.exit
  %.not1085 = icmp eq ptr %i.aat, null
  br i1 %.not1085, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.act = zext i16 %i.xf to i64
  %i.acu = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.act
  tail call fastcc void @updateRangeAffinityStr(ptr noundef %i.abt, i32 noundef %i.abv, ptr noundef %i.acu)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.acv = add nuw nsw i32 %i.abv, %i.xo          ; 2 uses
  %i.acw = load i8, ptr %i.abt, align 8, !tbaa !2750 ; 2 uses
  %i.acx = icmp eq i8 %i.acw, -80
  br i1 %i.acx, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.acy = getelementptr inbounds nuw i8, ptr %i.abt, i64 2
  %i.acz = load i8, ptr %i.acy, align 2, !tbaa !3234
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0.i.i1241 = phi i8 [ %i.acz, %bb.ez ], [ %i.acw, %bb.ey ]
  switch i8 %.0.i.i1241, label %sqlite3ExprIsVector.exit1246.thread [
    i8 -79, label %bb.fb
    i8 -117, label %bb.fc
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.ada = getelementptr inbounds nuw i8, ptr %i.abt, i64 32
  br label %sqlite3ExprIsVector.exit1246

bb.fc:                                            ; preds = %bb.fa
  %i.adb = getelementptr inbounds nuw i8, ptr %i.abt, i64 32
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !231
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  br label %sqlite3ExprIsVector.exit1246

sqlite3ExprIsVector.exit1246:                     ; preds = %bb.fb, %bb.fc
  %.sink.in.i.i1243 = phi ptr [ %i.add, %bb.fc ], [ %i.ada, %bb.fb ]
  %.sink.i.i1244 = load ptr, ptr %.sink.in.i.i1243, align 8, !tbaa !231
  %i.ade = load i32, ptr %.sink.i.i1244, align 8, !tbaa !27
  %i.adf = icmp slt i32 %i.ade, 2
  br i1 %i.adf, label %sqlite3ExprIsVector.exit1246.thread, label %bb.fh

sqlite3ExprIsVector.exit1246.thread:              ; preds = %bb.fa, %sqlite3ExprIsVector.exit1246
  tail call fastcc void @disableTerm(ptr noundef nonnull %4, ptr noundef nonnull %.1994)
  br label %bb.fh

bb.fd:                                            ; preds = %bb.eq
  %.not1083 = icmp eq i8 %.2977, 0
  br i1 %.not1083, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.adg = add nsw i32 %i.aas, %i.xo
  %i.adh = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 77, i32 noundef 0, i32 noundef %i.adg) ; 0 uses
  %i.adi = add nuw nsw i32 %i.xo, 1
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fd
  br i1 %.not1082, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.adj = add nsw i32 %i.aas, %i.xo
  %i.adk = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 77, i32 noundef 0, i32 noundef %i.adj) ; 0 uses
  %i.adl = add nuw nsw i32 %i.xo, 1
  br label %bb.fh

bb.fh:                                            ; preds = %sqlite3ExprIsVector.exit1246.thread, %sqlite3ExprIsVector.exit1246, %bb.fe, %bb.fg, %bb.ff
  %.1990 = phi i32 [ %i.abi, %bb.ff ], [ 0, %bb.fe ], [ %i.abi, %bb.fg ], [ %i.abi, %sqlite3ExprIsVector.exit1246.thread ], [ 1, %sqlite3ExprIsVector.exit1246 ] ; 2 uses
  %.0985.shrunk = phi i1 [ %i.abq, %bb.ff ], [ true, %bb.fe ], [ true, %bb.fg ], [ true, %sqlite3ExprIsVector.exit1246.thread ], [ true, %sqlite3ExprIsVector.exit1246 ]
  %.0983 = phi i32 [ %i.xo, %bb.ff ], [ %i.adi, %bb.fe ], [ %i.adl, %bb.fg ], [ %i.acv, %sqlite3ExprIsVector.exit1246.thread ], [ %i.acv, %sqlite3ExprIsVector.exit1246 ] ; 5 uses
  %.3978 = phi i32 [ 0, %bb.ff ], [ 1, %bb.fe ], [ 0, %bb.fg ], [ 0, %sqlite3ExprIsVector.exit1246.thread ], [ 0, %sqlite3ExprIsVector.exit1246 ] ; 3 uses
  %i.adm = sub nsw i32 %.0983, %.3978             ; 2 uses
  %i.adn = getelementptr i8, ptr %0, i64 16       ; 2 uses
  %.val1175 = load ptr, ptr %i.adn, align 8, !tbaa !976
  %i.ado = icmp sgt i32 %i.adm, 0
  %or.cond.i = and i1 %i.aau, %i.ado
  br i1 %or.cond.i, label %.lr.ph.i1247, label %codeApplyAffinity.exit

.lr.ph.i1247:                                     ; preds = %bb.fh, %bb.fi
  %.05.i = phi ptr [ %i.ads, %bb.fi ], [ %i.aat, %bb.fh ] ; 4 uses
  %.0193.i.a = phi i32 [ %10, %bb.fi ], [ %i.adm, %bb.fh ] ; 4 uses
  %.0193.i = phi i32 [ %i.adr, %bb.fi ], [ %i.aas, %bb.fh ] ; 2 uses
  %i.adp = load i8, ptr %.05.i, align 1, !tbaa !231
  %i.adq = icmp slt i8 %i.adp, 66
  br i1 %i.adq, label %bb.fi, label %.critedge.i

bb.fi:                                            ; preds = %.lr.ph.i1247
  %10 = add nsw i32 %.0193.i.a, -1
  %i.adr = add nsw i32 %.0193.i, 1
  %i.ads = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  %i.adt = icmp sgt i32 %.0193.i.a, 1
  br i1 %i.adt, label %.lr.ph.i1247, label %codeApplyAffinity.exit, !llvm.loop !4493

.critedge.i:                                      ; preds = %.lr.ph.i1247
  %i.adu = icmp samesign ugt i32 %.0193.i.a, 1
  br i1 %i.adu, label %.lr.ph13.preheader.i, label %.critedge2.thread.i

.lr.ph13.preheader.i:                             ; preds = %.critedge.i
  %11 = zext nneg i32 %.0193.i.a to i64
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.fj, %.lr.ph13.preheader.i
  %indvars.iv1574.a = phi i64 [ %11, %.lr.ph13.preheader.i ], [ %indvars.iv.next1575.a, %bb.fj ] ; 4 uses
  %i.adv = getelementptr i8, ptr %.05.i, i64 %indvars.iv1574.a
  %i.adw = getelementptr i8, ptr %i.adv, i64 -1
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !231
  %i.ady = icmp slt i8 %i.adx, 66
  br i1 %i.ady, label %bb.fj, label %.critedge2.thread.i.loopexit.split.loop.exit

bb.fj:                                            ; preds = %.lr.ph13.i
  %indvars.iv.next1575.a = add nsw i64 %indvars.iv1574.a, -1
  %i.adz = icmp sgt i64 %indvars.iv1574.a, 2
  br i1 %i.adz, label %.lr.ph13.i, label %.critedge2.thread.i, !llvm.loop !4494

.critedge2.thread.i.loopexit.split.loop.exit:     ; preds = %.lr.ph13.i
  %i.aea = trunc nuw nsw i64 %indvars.iv1574.a to i32
  br label %.critedge2.thread.i

.critedge2.thread.i:                              ; preds = %bb.fj, %.critedge2.thread.i.loopexit.split.loop.exit, %.critedge.i
  %.12.i = phi i32 [ %i.aea, %.critedge2.thread.i.loopexit.split.loop.exit ], [ 1, %.critedge.i ], [ 1, %bb.fj ] ; 2 uses
  %i.aeb = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.val1175, i32 noundef 98, i32 noundef %.0193.i, i32 noundef %.12.i, i32 noundef 0, ptr noundef nonnull %.05.i, i32 noundef %.12.i), !inline_history !4495 ; 0 uses
  br label %codeApplyAffinity.exit

codeApplyAffinity.exit:                           ; preds = %bb.fi, %bb.fh, %.critedge2.thread.i
  %i.aec = getelementptr inbounds nuw i8, ptr %i.f, i64 54
  %i.aed = load i16, ptr %i.aec, align 2, !tbaa !4241 ; 2 uses
  %.not1086 = icmp ne i16 %i.aed, 0
  %i.aee = zext i16 %i.aed to i32
  %i.aef = icmp eq i32 %.0983, %i.aee
  %or.cond1154 = and i1 %.not1086, %i.aef
  br i1 %or.cond1154, label %bb.fv, label %bb.fk

bb.fk:                                            ; preds = %codeApplyAffinity.exit
  br i1 %.not1082, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aeg = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 73, i32 noundef 1, i32 noundef %.0973) ; 0 uses
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef %1, ptr noundef nonnull @.str.974)
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.aeh = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aei = load i32, ptr %i.aeh, align 8, !tbaa !4473 ; 2 uses
  %.not1087 = icmp eq i32 %i.aei, 0
  br i1 %.not1087, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aej = tail call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef %1, i32 noundef 66, i32 noundef %i.aei, i32 noundef %i.abb, i32 noundef %i.aas, i32 noundef %i.xo) ; 0 uses
  tail call fastcc void @filterPullDown(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, i32 noundef %i.abb, i64 noundef %5)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.aek = select i1 %.0985.shrunk, i32 4, i32 0
  %i.ael = shl nuw nsw i32 %.1990, 1
  %i.aem = add nuw nsw i32 %i.aek, %i.ael
  %i.aen = or disjoint i32 %i.aem, %i.ah          ; 2 uses
  %i.aeo = zext nneg i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw i8, ptr @sqlite3WhereCodeOneLoopStart.aStartOp, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !tbaa !231
  %i.aer = zext i8 %i.aeq to i32
  %i.aes = load i32, ptr %i.dc, align 8, !tbaa !4221
  %i.aet = and i32 %i.aes, 1048576
  %i.aeu = icmp ne i32 %i.aet, 0
  %i.aev = icmp eq i32 %i.aen, 6
  %or.cond11 = and i1 %i.aev, %i.aeu
  br i1 %or.cond11, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %bb.fo
  %i.aew = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !2712
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !338
  %i.aez = sext i16 %i.aey to i32
  %i.afa = add nsw i32 %i.aez, 9
  %i.afb = sdiv i32 %i.afa, 10
  %i.afc = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %1, i32 noundef 126, i32 noundef %i.afb) ; 2 uses
  %or.cond14 = or i1 %i.abc, %i.abj
  br i1 %or.cond14, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.afe = load i32, ptr %i.afd, align 8, !tbaa !189 ; 3 uses
  %i.aff = icmp sgt i32 %i.afe, 0
  br i1 %i.aff, label %bb.fr, label %sqlite3VdbeChangeP5.exit1248

bb.fr:                                            ; preds = %bb.fq
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !188
  %i.afi = zext nneg i32 %i.afe to i64
  %i.afj = getelementptr [32 x i8], ptr %i.afh, i64 %i.afi
  %i.afk = getelementptr i8, ptr %i.afj, i64 -30
  store i16 1, ptr %i.afk, align 2, !tbaa !577
  br label %sqlite3VdbeChangeP5.exit1248

sqlite3VdbeChangeP5.exit1248:                     ; preds = %bb.fq, %bb.fr
  %i.afl = add nsw i32 %i.afe, 1
  %i.afm = load ptr, ptr %1, align 8, !tbaa !150
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 103
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !563
  %.not.i.i1249 = icmp eq i8 %i.afo, 0
  br i1 %.not.i.i1249, label %bb.fs, label %sqlite3VdbeChangeP2.exit

bb.fs:                                            ; preds = %sqlite3VdbeChangeP5.exit1248
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !188
  %i.afr = sext i32 %i.afc to i64
  %i.afs = getelementptr inbounds [32 x i8], ptr %i.afq, i64 %i.afr
  br label %sqlite3VdbeChangeP2.exit

sqlite3VdbeChangeP2.exit:                         ; preds = %sqlite3VdbeChangeP5.exit1248, %bb.fs
  %.0.i.i1250 = phi ptr [ %i.afs, %bb.fs ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeChangeP5.exit1248 ]
  %i.aft = getelementptr inbounds nuw i8, ptr %.0.i.i1250, i64 8
  store i32 %i.afl, ptr %i.aft, align 8, !tbaa !574
  br label %bb.ft

bb.ft:                                            ; preds = %sqlite3VdbeChangeP2.exit, %bb.fp, %bb.fo
  %.0971 = phi i32 [ 0, %sqlite3VdbeChangeP2.exit ], [ %i.afc, %bb.fp ], [ 0, %bb.fo ] ; 2 uses
  %i.afu = tail call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef %1, i32 noundef %i.aer, i32 noundef %i.xn, i32 noundef %i.abb, i32 noundef %i.aas, i32 noundef %.0983) ; 0 uses
  br i1 %.not1082, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.afv = getelementptr i8, ptr %1, i64 144
  %.val1168 = load i32, ptr %i.afv, align 8, !tbaa !189
  %i.afw = add nsw i32 %.val1168, 2
  %i.afx = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 9, i32 noundef 0, i32 noundef %i.afw) ; 0 uses
  %.inv = icmp slt i32 %.0983, 2
  %i.afy = select i1 %.inv, i32 2, i32 6
  %i.afz = or disjoint i32 %i.afy, %i.ah
  %i.aga = zext nneg i32 %i.afz to i64
  %i.agb = getelementptr inbounds nuw i8, ptr @sqlite3WhereCodeOneLoopStart.aStartOp, i64 %i.aga
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !231
  %i.agd = zext i8 %i.agc to i32
  %i.age = sub nsw i32 %.0983, %.1990
  %i.agf = tail call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef %1, i32 noundef %i.agd, i32 noundef %i.xn, i32 noundef %i.abb, i32 noundef %i.aas, i32 noundef %i.age) ; 0 uses
  br label %bb.fv

bb.fv:                                            ; preds = %codeApplyAffinity.exit, %bb.ft, %bb.fu
  %.1972 = phi i32 [ 0, %codeApplyAffinity.exit ], [ %.0971, %bb.fu ], [ %.0971, %bb.ft ] ; 2 uses
  br i1 %i.abj, label %bb.fw, label %bb.gi

bb.fw:                                            ; preds = %bb.fv
  %i.agg = load ptr, ptr %.1992, align 8, !tbaa !1160
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 24
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !1162 ; 7 uses
  %i.agj = add nsw i32 %i.aas, %i.xo              ; 3 uses
  tail call fastcc void @codeExprOrVector(ptr noundef nonnull %0, ptr noundef %i.agi, i32 noundef %i.agj, i32 noundef %i.aav)
  %i.agk = getelementptr i8, ptr %.1992, i64 18
  %.1992.val = load i16, ptr %i.agk, align 2, !tbaa !4238 ; 2 uses
  %i.agl = and i16 %.1992.val, 256
  %.not.i1251 = icmp eq i16 %i.agl, 0
  br i1 %.not.i1251, label %whereLikeOptimizationStringFixup.exit1255, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.agm = load ptr, ptr %1, align 8, !tbaa !150
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 103
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !563
  %.not.i.i.i1252 = icmp eq i8 %i.ago, 0
  br i1 %.not.i.i.i1252, label %bb.fy, label %sqlite3VdbeGetLastOp.exit.i1253

bb.fy:                                            ; preds = %bb.fx
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.agq = load i32, ptr %i.agp, align 8, !tbaa !189
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !188
  %i.agt = sext i32 %i.agq to i64
  %i.agu = getelementptr [32 x i8], ptr %i.ags, i64 %i.agt
  %i.agv = getelementptr i8, ptr %i.agu, i64 -32
  br label %sqlite3VdbeGetLastOp.exit.i1253

sqlite3VdbeGetLastOp.exit.i1253:                  ; preds = %bb.fy, %bb.fx
  %.0.i.i.i1254 = phi ptr [ %i.agv, %bb.fy ], [ @sqlite3VdbeGetOp.dummy, %bb.fx ] ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !4347 ; 2 uses
  %i.agy = lshr i32 %i.agx, 1
  %i.agz = getelementptr inbounds nuw i8, ptr %.0.i.i.i1254, i64 12
  store i32 %i.agy, ptr %i.agz, align 4, !tbaa !575
  %i.aha = trunc i32 %i.agx to i16
  %i.ahb = and i16 %i.aha, 1
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0.i.i.i1254, i64 2
  store i16 %i.ahb, ptr %i.ahc, align 2, !tbaa !577
  br label %whereLikeOptimizationStringFixup.exit1255

whereLikeOptimizationStringFixup.exit1255:        ; preds = %bb.fw, %sqlite3VdbeGetLastOp.exit.i1253
  %i.ahd = and i16 %.1992.val, 128
  %i.ahe = icmp eq i16 %i.ahd, 0
  br i1 %i.ahe, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %whereLikeOptimizationStringFixup.exit1255
  %i.ahf = tail call fastcc i32 @sqlite3ExprCanBeNull(ptr noundef %i.agi)
  %.not1089 = icmp eq i32 %i.ahf, 0
  br i1 %.not1089, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahg = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %1, i32 noundef 51, i32 noundef %i.agj, i32 noundef %i.abb) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %whereLikeOptimizationStringFixup.exit1255
  %.not1090 = icmp eq ptr %.0979, null
  br i1 %.not1090, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call fastcc void @updateRangeAffinityStr(ptr noundef %i.agi, i32 noundef %i.aav, ptr noundef %.0979)
  %.val1174 = load ptr, ptr %i.adn, align 8, !tbaa !976
  tail call fastcc void @codeApplyAffinity(ptr %.val1174, i32 noundef %i.agj, i32 noundef %i.aav, ptr noundef nonnull %.0979)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gb, %bb.gc
  %i.ahh = add nuw nsw i32 %i.aav, %i.xo          ; 2 uses
  %i.ahi = load i8, ptr %i.agi, align 8, !tbaa !2750 ; 2 uses
  %i.ahj = icmp eq i8 %i.ahi, -80
  br i1 %i.ahj, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agi, i64 2
  %i.ahl = load i8, ptr %i.ahk, align 2, !tbaa !3234
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.0.i.i1256 = phi i8 [ %i.ahl, %bb.ge ], [ %i.ahi, %bb.gd ]
  switch i8 %.0.i.i1256, label %sqlite3ExprIsVector.exit1261.thread [
    i8 -79, label %bb.gg
    i8 -117, label %bb.gh
end_hunk_1
begin_hunk_2_@filterPullDown:bb.a
  %i.ab = and i32 %i.aa, 256
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !4216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !4254 ; 4 uses
  %i.af = load i8, ptr %i.h, align 1, !tbaa !3539 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !944
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.ai, ptr %i.j, align 4, !tbaa !944
  br label %sqlite3GetTempReg.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = add i8 %i.af, -1                        ; 2 uses
  store i8 %i.aj, ptr %i.h, align 1, !tbaa !3539
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ai, %bb.g ], [ %i.am, %bb.h ] ; 7 uses
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !1160 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !2750
  switch i8 %i.ao, label %bb.m [
    i8 54, label %bb.i
    i8 45, label %bb.i
    i8 51, label %bb.j
  ]

bb.i:                                             ; preds = %sqlite3GetTempReg.exit, %sqlite3GetTempReg.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1162
  %i.ar = tail call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.aq, i32 noundef %.0.i), !inline_history !4487
  br label %sqlite3VdbeAddOp2.exit51

bb.j:                                             ; preds = %sqlite3GetTempReg.exit
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !976 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 144 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !189 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 148
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !934
  %.not.i.i49 = icmp sgt i32 %i.aw, %i.au
  br i1 %.not.i.i49, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.as, i32 noundef 77, i32 noundef 0, i32 noundef %.0.i, i32 noundef 0), !inline_history !4488 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit51

bb.l:                                             ; preds = %bb.j
  %i.ay = add nsw i32 %i.au, 1
  store i32 %i.ay, ptr %i.at, align 8, !tbaa !189
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !188
  %i.bb = sext i32 %i.au to i64
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.bb ; 6 uses
  store i8 77, ptr %i.bc, align 8, !tbaa !576
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 0, ptr %i.bd, align 2, !tbaa !577
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !572
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %.0.i, ptr %i.bf, align 8, !tbaa !574
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 0, ptr %i.bh, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit51

bb.m:                                             ; preds = %sqlite3GetTempReg.exit
  tail call fastcc void @codeINTerm(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i), !inline_history !4487
  br label %sqlite3VdbeAddOp2.exit51

sqlite3VdbeAddOp2.exit51:                         ; preds = %bb.l, %bb.k, %bb.m, %bb.i
  %.0.i43 = phi i32 [ %i.ar, %bb.i ], [ %.0.i, %bb.m ], [ %.0.i, %bb.k ], [ %.0.i, %bb.l ] ; 4 uses
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !4262
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !4221
  %i.bl = and i32 %i.bk, 2097152
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %sqlite3VdbeAddOp2.exit51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !4464
  %i.bp = and i16 %i.bo, 2048
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %codeEqualityTerm.exit

bb.o:                                             ; preds = %bb.n, %sqlite3VdbeAddOp2.exit51
  tail call fastcc void @disableTerm(ptr noundef nonnull %i.n, ptr noundef nonnull %i.ae), !inline_history !4487
  br label %codeEqualityTerm.exit

codeEqualityTerm.exit:                            ; preds = %bb.n, %bb.o
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !976 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 144 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !189 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 148
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !934
  %.not.i.i = icmp sgt i32 %i.bv, %i.bt
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %codeEqualityTerm.exit
  %i.bw = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.br, i32 noundef 13, i32 noundef %.0.i43, i32 noundef %3, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.q:                                             ; preds = %codeEqualityTerm.exit
  %i.bx = add nsw i32 %i.bt, 1
  store i32 %i.bx, ptr %i.bs, align 8, !tbaa !189
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !188
  %i.ca = sext i32 %i.bt to i64
  %i.cb = getelementptr inbounds [32 x i8], ptr %i.bz, i64 %i.ca ; 6 uses
  store i8 13, ptr %i.cb, align 8, !tbaa !576
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store i16 0, ptr %i.cc, align 2, !tbaa !577
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %.0.i43, ptr %i.cd, align 4, !tbaa !572
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %3, ptr %i.ce, align 8, !tbaa !574
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 0, ptr %i.cg, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.p, %bb.q
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !976 ; 4 uses
  %i.ci = load i32, ptr %i.q, align 8, !tbaa !4473 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !189 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 148
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !934
  %.not.i = icmp sgt i32 %i.cm, %i.ck
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.cn = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.ch, i32 noundef 66, i32 noundef %i.ci, i32 noundef %3, i32 noundef %.0.i43, i32 noundef 1), !inline_history !935 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit

bb.s:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.co = add nsw i32 %i.ck, 1
  store i32 %i.co, ptr %i.cj, align 8, !tbaa !189
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !188
  %i.cr = sext i32 %i.ck to i64
  %i.cs = getelementptr inbounds [32 x i8], ptr %i.cq, i64 %i.cr ; 8 uses
  store i8 66, ptr %i.cs, align 8, !tbaa !576
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i16 0, ptr %i.ct, align 2, !tbaa !577
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.ci, ptr %i.cu, align 4, !tbaa !572
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %3, ptr %i.cv, align 8, !tbaa !574
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %.0.i43, ptr %i.cw, align 4, !tbaa !575
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i32 1, ptr %i.cx, align 8, !tbaa !231
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 -3, ptr %i.cy, align 1, !tbaa !936
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store ptr null, ptr %i.cz, align 8, !tbaa !937
  br label %sqlite3VdbeAddOp4Int.exit

bb.t:                                             ; preds = %bb.e
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.db = load i16, ptr %i.da, align 8, !tbaa !231 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.dc = call fastcc i32 @codeAllEqualityTerms(ptr noundef %0, ptr noundef nonnull %i.n, i32 noundef 0, i32 noundef 0, ptr noundef %i.a) ; 3 uses
  %i.dd = zext i16 %i.db to i32                   ; 3 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !259 ; 4 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !976
  %i.df = icmp ne ptr %i.de, null
  %i.dg = icmp ne i16 %i.db, 0
  %or.cond.i = and i1 %i.dg, %i.df
  br i1 %or.cond.i, label %.lr.ph.i, label %codeApplyAffinity.exit

.lr.ph.i:                                         ; preds = %bb.t, %bb.u
  %.05.i = phi ptr [ %i.dl, %bb.u ], [ %i.de, %bb.t ] ; 4 uses
  %.0184.i = phi i32 [ %i.dj, %bb.u ], [ %i.dd, %bb.t ] ; 4 uses
  %.0193.i = phi i32 [ %i.dk, %bb.u ], [ %i.dc, %bb.t ] ; 2 uses
  %i.dh = load i8, ptr %.05.i, align 1, !tbaa !231
  %i.di = icmp slt i8 %i.dh, 66
  br i1 %i.di, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.dj = add nsw i32 %.0184.i, -1
  %i.dk = add nsw i32 %.0193.i, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  %i.dm = icmp sgt i32 %.0184.i, 1
  br i1 %i.dm, label %.lr.ph.i, label %codeApplyAffinity.exit, !llvm.loop !4493

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dn = icmp samesign ugt i32 %.0184.i, 1
  br i1 %i.dn, label %.lr.ph13.preheader.i, label %.critedge2.thread.i

.lr.ph13.preheader.i:                             ; preds = %.critedge.i
  %5 = zext nneg i32 %.0184.i to i64
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.v, %.lr.ph13.preheader.i
  %indvars.iv.i = phi i64 [ %5, %.lr.ph13.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 4 uses
  %i.do = getelementptr i8, ptr %.05.i, i64 %indvars.iv.i
  %i.dp = getelementptr i8, ptr %i.do, i64 -1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !231
  %i.dr = icmp slt i8 %i.dq, 66
  br i1 %i.dr, label %bb.v, label %.critedge2.thread.loopexit.i

bb.v:                                             ; preds = %.lr.ph13.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ds = icmp sgt i64 %indvars.iv.i, 2
  br i1 %i.ds, label %.lr.ph13.i, label %.critedge2.thread.i, !llvm.loop !4494

.critedge2.thread.loopexit.i:                     ; preds = %.lr.ph13.i
  %6 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge2.thread.i

.critedge2.thread.i:                              ; preds = %bb.v, %.critedge2.thread.loopexit.i, %.critedge.i
  %.12.i = phi i32 [ %6, %.critedge2.thread.loopexit.i ], [ 1, %.critedge.i ], [ 1, %bb.v ] ; 2 uses
  %i.dt = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.val, i32 noundef 98, i32 noundef %.0193.i, i32 noundef %.12.i, i32 noundef 0, ptr noundef nonnull %.05.i, i32 noundef %.12.i), !inline_history !4495 ; 0 uses
  br label %codeApplyAffinity.exit

codeApplyAffinity.exit:                           ; preds = %bb.u, %bb.t, %.critedge2.thread.i
  %.not.i45 = icmp eq ptr %i.de, null
  br i1 %.not.i45, label %sqlite3DbFree.exit, label %bb.w

bb.w:                                             ; preds = %codeApplyAffinity.exit
  %i.du = load ptr, ptr %0, align 8, !tbaa !657
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.du, ptr noundef nonnull %i.de)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %codeApplyAffinity.exit, %bb.w
  %i.dv = load ptr, ptr %i.k, align 8, !tbaa !976 ; 4 uses
  %i.dw = load i32, ptr %i.q, align 8, !tbaa !4473 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 144 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !189 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 148
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !934
  %.not.i46 = icmp sgt i32 %i.ea, %i.dy
  br i1 %.not.i46, label %bb.y, label %bb.x

bb.x:                                             ; preds = %sqlite3DbFree.exit
  %i.eb = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.dv, i32 noundef 66, i32 noundef %i.dw, i32 noundef %3, i32 noundef %i.dc, i32 noundef %i.dd), !inline_history !935 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit48

bb.y:                                             ; preds = %sqlite3DbFree.exit
  %i.ec = add nsw i32 %i.dy, 1
  store i32 %i.ec, ptr %i.dx, align 8, !tbaa !189
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !188
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [32 x i8], ptr %i.ee, i64 %i.ef ; 8 uses
  store i8 66, ptr %i.eg, align 8, !tbaa !576
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i16 0, ptr %i.eh, align 2, !tbaa !577
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %i.dw, ptr %i.ei, align 4, !tbaa !572
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 %3, ptr %i.ej, align 8, !tbaa !574
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 %i.dc, ptr %i.ek, align 4, !tbaa !575
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i32 %i.dd, ptr %i.el, align 8, !tbaa !231
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 -3, ptr %i.em, align 1, !tbaa !936
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr null, ptr %i.en, align 8, !tbaa !937
  br label %sqlite3VdbeAddOp4Int.exit48

sqlite3VdbeAddOp4Int.exit48:                      ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.s, %bb.r, %sqlite3VdbeAddOp4Int.exit48
  store i32 0, ptr %i.q, align 8, !tbaa !4473
  store i32 %i.y, ptr %i.x, align 4, !tbaa !4273
  %.pre = load i8, ptr %i.b, align 8, !tbaa !231
  br label %bb.z

bb.z:                                             ; preds = %bb.d, %bb.c, %bb.b, %sqlite3VdbeAddOp4Int.exit
  %i.eo = phi i8 [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %.pre, %sqlite3VdbeAddOp4Int.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ep = zext i8 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @codeAllEqualityTerms(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 65536) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4262 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i16, ptr %i.e, align 8, !tbaa !231  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 54
  %i.h = load i16, ptr %i.g, align 2, !tbaa !4241 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !231  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !944  ; 3 uses
  %i.m = add nsw i32 %i.l, 1                      ; 8 uses
  %i.n = zext i16 %i.f to i32
  %i.o = add nuw nsw i32 %3, %i.n                 ; 2 uses
  %i.p = add nsw i32 %i.l, %i.o
  store i32 %i.p, ptr %i.k, align 4, !tbaa !944
  %i.q = load ptr, ptr %0, align 8, !tbaa !657    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2459 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %sqlite3IndexAffinityStr.exit, label %sqlite3IndexAffinityStr.exit.thread

sqlite3IndexAffinityStr.exit:                     ; preds = %bb.a
  %i.t = tail call fastcc ptr @computeIndexAffStr(ptr noundef %i.q, ptr noundef nonnull %i.j), !inline_history !3644 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %sqlite3DbStrDup.exit, label %sqlite3IndexAffinityStr.exit.thread

sqlite3IndexAffinityStr.exit.thread:              ; preds = %bb.a, %sqlite3IndexAffinityStr.exit
  %.0.i139 = phi ptr [ %i.t, %sqlite3IndexAffinityStr.exit ], [ %i.s, %bb.a ] ; 2 uses
  %i.v = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i139) #59, !inline_history !602
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %sqlite3IndexAffinityStr.exit.thread
  %i.x = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.q, i64 noundef %i.w), !inline_history !603
  br label %sqlite3DbMallocRaw.exit.i

bb.c:                                             ; preds = %sqlite3IndexAffinityStr.exit.thread
  %i.y = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.w), !inline_history !603
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.x, %bb.b ], [ %i.y, %bb.c ] ; 3 uses
  %.not.i106 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i106, label %sqlite3DbStrDup.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i, ptr nonnull readonly align 1 %.0.i139, i64 %i.w, i1 false)
  br label %sqlite3DbStrDup.exit

sqlite3DbStrDup.exit:                             ; preds = %sqlite3IndexAffinityStr.exit, %sqlite3DbMallocRaw.exit.i, %bb.d
  %.0.i107 = phi ptr [ null, %sqlite3IndexAffinityStr.exit ], [ %.0.i.i, %bb.d ], [ null, %sqlite3DbMallocRaw.exit.i ] ; 4 uses
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %sqlite3DbStrDup.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !4275 ; 6 uses
  %i.ab = zext i16 %i.h to i32                    ; 3 uses
  %i.ac = add i32 %i.l, %i.ab                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 11 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !189 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !934
  %.not.i108 = icmp sgt i32 %i.ag, %i.ae
  br i1 %.not.i108, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 77, i32 noundef 0, i32 noundef %i.m, i32 noundef %i.ac), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %i.ae, 1
  store i32 %i.ai, ptr %i.ad, align 8, !tbaa !189
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !188
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al ; 7 uses
  store i8 77, ptr %i.am, align 8, !tbaa !576
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 0, ptr %i.an, align 2, !tbaa !577
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !572
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.m, ptr %i.ap, align 8, !tbaa !574
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %i.ac, ptr %i.aq, align 4, !tbaa !575
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.as, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.f, %bb.g
  %.not101 = icmp eq i32 %2, 0                    ; 2 uses
  %i.at = select i1 %.not101, i32 36, i32 32      ; 2 uses
  %i.au = load i32, ptr %i.ad, align 8, !tbaa !189 ; 3 uses
  %i.av = load i32, ptr %i.af, align 4, !tbaa !934
  %.not.i.i110 = icmp sgt i32 %i.av, %i.au
  br i1 %.not.i.i110, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.aw = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef range(i32 0, 256) %i.at, i32 noundef %i.aa, i32 noundef 0, i32 noundef 0), !inline_history !3306 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit

bb.i:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.ax = add nsw i32 %i.au, 1
  store i32 %i.ax, ptr %i.ad, align 8, !tbaa !189
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !188
  %i.ba = sext i32 %i.au to i64
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.ba ; 5 uses
  %i.bc = trunc nuw nsw i32 %i.at to i8
  store i8 %i.bc, ptr %i.bb, align 8, !tbaa !576
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i16 0, ptr %i.bd, align 2, !tbaa !577
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 %i.aa, ptr %i.be, align 4, !tbaa !572
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit

end_hunk_2
begin_hunk_3_@codeAllEqualityTerms:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @updateRangeAffinityStr(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 65536) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #16 {
bb.a:
  %.not28 = icmp eq i32 %1, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3ExprNeedsNoAffinityChange.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3ExprNeedsNoAffinityChange.exit.thread ] ; 3 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !2750    ; 3 uses
  %i.d = icmp eq i8 %i.c, -80
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.a, align 2, !tbaa !3234
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i8 [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  switch i8 %.0.i.i.i, label %sqlite3VectorFieldSubexpr.exit [
    i8 -79, label %sqlite3ExprIsVector.exit.i
    i8 -117, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %sqlite3ExprIsVector.exit.i

sqlite3ExprIsVector.exit.i:                       ; preds = %bb.d, %bb.e
  %.sink.in.i.i.i = phi ptr [ %i.g, %bb.e ], [ %i.b, %bb.d ]
  %.sink.i.i.i = load ptr, ptr %.sink.in.i.i.i, align 8, !tbaa !231
  %i.h = load i32, ptr %.sink.i.i.i, align 8, !tbaa !27
  %i.i = icmp slt i32 %i.h, 2
  br i1 %i.i, label %sqlite3VectorFieldSubexpr.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3ExprIsVector.exit.i
  %i.j = icmp eq i8 %i.c, -117
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i8, ptr %i.a, align 2, !tbaa !3234
  %i.l = icmp eq i8 %i.k, -117
  br i1 %i.l, label %bb.h, label %sqlite3ExprIsVector.exit.thread.sink.split.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %sqlite3ExprIsVector.exit.thread.sink.split.i

sqlite3ExprIsVector.exit.thread.sink.split.i:     ; preds = %bb.g, %bb.h
  %.sink.in.i = phi ptr [ %i.n, %bb.h ], [ %i.b, %bb.g ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !231
  %i.o = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3229
  br label %sqlite3VectorFieldSubexpr.exit

sqlite3VectorFieldSubexpr.exit:                   ; preds = %bb.d, %sqlite3ExprIsVector.exit.i, %sqlite3ExprIsVector.exit.thread.sink.split.i
  %.0.i = phi ptr [ %0, %sqlite3ExprIsVector.exit.i ], [ %0, %bb.d ], [ %i.q, %sqlite3ExprIsVector.exit.thread.sink.split.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !231   ; 3 uses
  %i.t = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef readonly %.0.i) ; 4 uses
  %i.u = icmp sgt i8 %i.t, 64
  %i.v = icmp sgt i8 %i.s, 64
  %or.cond.i = and i1 %i.v, %i.u
  br i1 %or.cond.i, label %bb.i, label %sqlite3CompareAffinity.exit

bb.i:                                             ; preds = %sqlite3VectorFieldSubexpr.exit
  %i.w = icmp samesign ugt i8 %i.t, 66
  %i.x = icmp samesign ugt i8 %i.s, 66
  %or.cond5.i = or i1 %i.x, %i.w
  br i1 %or.cond5.i, label %sqlite3CompareAffinity.exit.thread15, label %sqlite3CompareAffinity.exit.thread

sqlite3CompareAffinity.exit:                      ; preds = %sqlite3VectorFieldSubexpr.exit
  %i.y = icmp slt i8 %i.t, 65
  %i.z = select i1 %i.y, i8 %i.s, i8 %i.t
  %i.aa = and i8 %i.z, -65
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %sqlite3CompareAffinity.exit.thread, label %sqlite3CompareAffinity.exit.thread15

sqlite3CompareAffinity.exit.thread15:             ; preds = %bb.i, %sqlite3CompareAffinity.exit
  %i.ac = load i8, ptr %i.r, align 1, !tbaa !231  ; 5 uses
  %i.ad = icmp eq i8 %i.ac, 65
  br i1 %i.ad, label %sqlite3CompareAffinity.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3CompareAffinity.exit.thread15, %.critedge.i
  %.018.i = phi ptr [ %i.ah, %.critedge.i ], [ %.0.i, %sqlite3CompareAffinity.exit.thread15 ] ; 4 uses
  %.0.i13 = phi i32 [ %spec.select.i, %.critedge.i ], [ 0, %sqlite3CompareAffinity.exit.thread15 ] ; 3 uses
  %i.ae = load i8, ptr %.018.i, align 8, !tbaa !2750 ; 3 uses
  switch i8 %i.ae, label %.loopexit.i [
    i8 -83, label %.critedge.i
    i8 -82, label %.critedge.i
    i8 -80, label %bb.j
  ]

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i
  %i.af = icmp eq i8 %i.ae, -82
  %spec.select.i = select i1 %i.af, i32 1, i32 %.0.i13
  %i.ag = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !376
  br label %.preheader.i, !llvm.loop !4685

bb.j:                                             ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i, i64 2
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !3234
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.j
  %.016.i = phi i8 [ %i.aj, %bb.j ], [ %i.ae, %.preheader.i ]
  switch i8 %.016.i, label %sqlite3ExprNeedsNoAffinityChange.exit.thread [
    i8 -100, label %bb.k
    i8 -102, label %bb.l
    i8 118, label %bb.m
    i8 -101, label %bb.n
    i8 -88, label %bb.o
  ]

bb.k:                                             ; preds = %.loopexit.i
  %i.ak = icmp sgt i8 %i.ac, 66
  %i.al = zext i1 %i.ak to i32
  br label %sqlite3ExprNeedsNoAffinityChange.exit

bb.l:                                             ; preds = %.loopexit.i
  %i.am = icmp sgt i8 %i.ac, 66
  %i.an = zext i1 %i.am to i32
  br label %sqlite3ExprNeedsNoAffinityChange.exit

bb.m:                                             ; preds = %.loopexit.i
  %.not.i = icmp eq i32 %.0.i13, 0
  %i.ao = icmp eq i8 %i.ac, 66
  %i.ap = and i1 %i.ao, %.not.i
  %i.aq = zext i1 %i.ap to i32
  br label %sqlite3ExprNeedsNoAffinityChange.exit

bb.n:                                             ; preds = %.loopexit.i
  %i.ar = xor i32 %.0.i13, 1
  br label %sqlite3ExprNeedsNoAffinityChange.exit

bb.o:                                             ; preds = %.loopexit.i
  %i.as = icmp sgt i8 %i.ac, 66
  br i1 %i.as, label %bb.p, label %sqlite3ExprNeedsNoAffinityChange.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i, i64 48
  %i.au = load i16, ptr %i.at, align 8, !tbaa !3235
  %.lobit.i = lshr i16 %i.au, 15
  %i.av = zext nneg i16 %.lobit.i to i32
  br label %sqlite3ExprNeedsNoAffinityChange.exit

sqlite3ExprNeedsNoAffinityChange.exit:            ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.p
  %.017.i = phi i32 [ %i.ar, %bb.n ], [ %i.av, %bb.p ], [ %i.al, %bb.k ], [ %i.an, %bb.l ], [ %i.aq, %bb.m ]
  %.not = icmp eq i32 %.017.i, 0
  br i1 %.not, label %sqlite3ExprNeedsNoAffinityChange.exit.thread, label %sqlite3CompareAffinity.exit.thread

sqlite3CompareAffinity.exit.thread:               ; preds = %sqlite3CompareAffinity.exit.thread15, %bb.i, %sqlite3ExprNeedsNoAffinityChange.exit, %sqlite3CompareAffinity.exit
  store i8 65, ptr %i.r, align 1, !tbaa !231
  br label %sqlite3ExprNeedsNoAffinityChange.exit.thread

sqlite3ExprNeedsNoAffinityChange.exit.thread:     ; preds = %.loopexit.i, %bb.o, %sqlite3CompareAffinity.exit.thread, %sqlite3ExprNeedsNoAffinityChange.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !4687

._crit_edge:                                      ; preds = %sqlite3ExprNeedsNoAffinityChange.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeApplyAffinity(ptr nofree captures(none) %.16.val, i32 noundef %0, i32 noundef range(i32 -1, 131071) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ]   ; 4 uses
  %.0184 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.0193 = phi i32 [ %i.f, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.05, align 1, !tbaa !231
  %i.d = icmp slt i8 %i.c, 66
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nsw i32 %.0184, -1
  %i.f = add nsw i32 %.0193, 1
  %i.g = getelementptr inbounds nuw i8, ptr %.05, i64 1
  %i.h = icmp sgt i32 %.0184, 1
  br i1 %i.h, label %.lr.ph, label %.critedge2, !llvm.loop !4493

.critedge:                                        ; preds = %.lr.ph
  %i.i = icmp samesign ugt i32 %.0184, 1
  br i1 %i.i, label %.lr.ph13.preheader, label %.critedge2.thread

.lr.ph13.preheader:                               ; preds = %.critedge
  %3 = zext nneg i32 %.0184 to i64
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.c
  %indvars.iv = phi i64 [ %3, %.lr.ph13.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.j = getelementptr i8, ptr %.05, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !231
  %i.m = icmp slt i8 %i.l, 66
  br i1 %i.m, label %bb.c, label %.critedge2.thread.loopexit

bb.c:                                             ; preds = %.lr.ph13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.n = icmp sgt i64 %indvars.iv, 2
  br i1 %i.n, label %.lr.ph13, label %.critedge2.thread, !llvm.loop !4494

.critedge2.thread.loopexit:                       ; preds = %.lr.ph13
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.c, %.critedge, %.critedge2.thread.loopexit
  %.12 = phi i32 [ %4, %.critedge2.thread.loopexit ], [ 1, %.critedge ], [ 1, %bb.c ] ; 2 uses
  %i.o = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.16.val, i32 noundef 98, i32 noundef %.0193, i32 noundef %.12, i32 noundef 0, ptr noundef nonnull %.05, i32 noundef %.12) ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.b, %.critedge2.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeDeferredSeek(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !844    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !976  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !189  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.j = load i32, ptr %i.i, align 4, !tbaa !934
  %.not.i = icmp sgt i32 %i.j, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 143, i32 noundef %3, i32 noundef 0, i32 noundef %2), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.h, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !189
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !188
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o ; 7 uses
  store i8 -113, ptr %i.p, align 8, !tbaa !576
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 0, ptr %i.q, align 2, !tbaa !577
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %3, ptr %i.r, align 4, !tbaa !572
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !574
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %2, ptr %i.t, align 4, !tbaa !575
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.v, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.x = load i16, ptr %i.w, align 4, !tbaa !338
  %i.y = and i16 %i.x, 4128
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %sqlite3VdbeChangeP4.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3339 ; 2 uses
  %.not30 = icmp eq ptr %i.aa, null
  %. = select i1 %.not30, ptr %i.a, ptr %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %., i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3310
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %sqlite3VdbeChangeP4.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1100 ; 4 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !657 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 54 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !914
  %i.aj = sext i16 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = add nsw i64 %i.ak, 4                    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ag, i64 noundef %i.al), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

bb.g:                                             ; preds = %bb.e
  %i.an = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.al), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.am, %bb.f ], [ %i.an, %bb.g ] ; 17 uses
  %.not.i32 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i32, label %sqlite3VdbeChangeP4.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i, i8 0, i64 %i.al, i1 false)
  %i.ao = load i16, ptr %i.ah, align 2, !tbaa !914
  %i.ap = sext i16 %i.ao to i32
  store i32 %i.ap, ptr %.0.i.i, align 4, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !2492 ; 2 uses
  %i.as = icmp ugt i16 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.at = zext i16 %i.ar to i64
  %i.au = add nuw nsw i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !927
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %wide.trip.count = and i64 %i.au, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !338 ; 10 uses
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !802
  %i.bd = and i32 %i.bc, 32
  %i.be = icmp eq i32 %i.bd, 0
  %wide.trip.count.i = sext i16 %i.bb to i64      ; 6 uses
  %i.bf = icmp slt i16 %i.bb, 0
  %or.cond.i = or i1 %i.bf, %i.be
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not23.i = icmp eq i16 %i.bb, 0
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !913 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp ult i16 %i.bb, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i16 %i.bb, 17
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %wide.trip.count.i, 15
  %i.bi = and i16 %i.bb, 15
  %i.bj = icmp eq i16 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 16, i64 %i.bh      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.bk  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi48 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 126
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 142
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 174
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 190
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 206
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 222
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 238
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 254
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !1329
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1329
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1329
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1329
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1329
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1329
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1329
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1329
  %i.cz = insertelement <8 x i16> poison, i16 %i.cr, i64 0
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 1
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 2
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 3
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 4
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 5
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 6
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 7
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !1329
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1329
end_hunk_3
begin_hunk_4_@sqlite3Fts3Incrmerge:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i.i.i, label %sqlite3_bind_int.exit.i, label %bb.g

bb.g:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i.i.i
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.aj(ptr noundef nonnull %i.ai) #58, !inline_history !6045
  br label %sqlite3_bind_int.exit.i

sqlite3_bind_int.exit.i:                          ; preds = %bb.g, %sqlite3VdbeMemSetInt64.exit.i.i.i, %bb.c
  %i.ak = tail call i32 @sqlite3_step(ptr noundef %i.y), !inline_history !6043
  %i.al = icmp eq i32 %i.ak, 100
  br i1 %i.al, label %bb.h, label %fts3IncrmergeHintLoad.exit

bb.h:                                             ; preds = %sqlite3_bind_int.exit.i
  %i.am = tail call ptr @sqlite3_column_blob(ptr noundef %i.y, i32 noundef 0), !inline_history !6043 ; 2 uses
  %i.an = tail call i32 @sqlite3_column_bytes(ptr noundef %i.y, i32 noundef 0), !inline_history !6043 ; 4 uses
  %.not.i126 = icmp eq ptr %i.am, null
  br i1 %.not.i126, label %fts3IncrmergeHintLoad.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ap = icmp sgt i32 %i.an, 0
  br i1 %i.ap, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call i32 @sqlite3_initialize(), !inline_history !6046
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %sqlite3_realloc64.exit.i.i, label %blobGrowBuffer.exit.i

sqlite3_realloc64.exit.i.i:                       ; preds = %bb.j
  %i.ar = zext nneg i32 %i.an to i64              ; 2 uses
  %i.as = tail call fastcc ptr @sqlite3Realloc(ptr noundef null, i64 noundef %i.ar), !inline_history !6046 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %blobGrowBuffer.exit.i, label %bb.k

bb.k:                                             ; preds = %sqlite3_realloc64.exit.i.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !6047
  store ptr %i.as, ptr %5, align 8, !tbaa !6048
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %i.am, i64 %i.ar, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  store i32 %i.an, ptr %i.v, align 8, !tbaa !6041
  br label %fts3IncrmergeHintLoad.exit

blobGrowBuffer.exit.i:                            ; preds = %sqlite3_realloc64.exit.i.i, %bb.j
  %i.at = tail call i32 @sqlite3_reset(ptr noundef %i.y), !inline_history !6043 ; 0 uses
  br label %fts3IncrmergeHintLoad.exit.thread

fts3IncrmergeHintLoad.exit.thread:                ; preds = %blobGrowBuffer.exit.i, %bb.b
  %.1.i.ph = phi i32 [ %i.w, %bb.b ], [ 7, %blobGrowBuffer.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #58
  br label %.loopexit285.thread

fts3IncrmergeHintLoad.exit:                       ; preds = %sqlite3_bind_int.exit.i, %bb.h, %bb.l
  %i.au = tail call i32 @sqlite3_reset(ptr noundef %i.y), !inline_history !6043 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #58
  store i32 %i.au, ptr %i.n, align 4, !tbaa !27
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = icmp sgt i32 %1, 0
  %i.ax = and i1 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph358, label %.loopexit285.thread

.lr.ph358:                                        ; preds = %fts3IncrmergeHintLoad.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.az = tail call i32 @llvm.smax.i32(i32 %2, i32 2)
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 720 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 736 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 744
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 712
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 17 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 304
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 344
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 424
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 504
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 544
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 584
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 624
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 664
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 784 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 792 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 800
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 808
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 88 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 100 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 140 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph358, %.thread274
  %.090357 = phi i32 [ %1, %.lr.ph358 ], [ %.3, %.thread274 ] ; 11 uses
  %.096356 = phi i32 [ 0, %.lr.ph358 ], [ %.5, %.thread274 ] ; 2 uses
  %.0101355 = phi i64 [ 0, %.lr.ph358 ], [ %.3104, %.thread274 ]
  %i.cz = load i32, ptr %i.ay, align 4, !tbaa !5333
  %i.da = shl nsw i32 %i.cz, 10
  %i.db = sext i32 %i.da to i64                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #58
  store ptr null, ptr %i.p, align 8, !tbaa !522
  %i.dc = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 28, ptr noundef %i.p, ptr noundef null) ; 0 uses
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !522 ; 7 uses
  %i.de = call fastcc i32 @vdbeUnbind(ptr noundef %i.dd, i32 noundef 0), !inline_history !5860
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.n, label %sqlite3_bind_int.exit

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !175 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 20 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !166
  %i.dk = and i16 %i.dj, -28672
  %.not.i.i.i127 = icmp eq i16 %i.dk, 0
  br i1 %.not.i.i.i127, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.dh, i64 noundef %i.ba), !inline_history !5860
  br label %sqlite3VdbeMemSetInt64.exit.i.i

bb.p:                                             ; preds = %bb.n
  store i64 %i.ba, ptr %i.dh, align 8, !tbaa !231
  store i16 4, ptr %i.di, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i.i

sqlite3VdbeMemSetInt64.exit.i.i:                  ; preds = %bb.p, %bb.o
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !150
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i8.i.i, label %sqlite3_bind_int.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i.i
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.do(ptr noundef nonnull %i.dn) #58, !inline_history !5861
  br label %sqlite3_bind_int.exit

sqlite3_bind_int.exit:                            ; preds = %bb.m, %sqlite3VdbeMemSetInt64.exit.i.i, %bb.q
  %i.dp = call i32 @sqlite3_step(ptr noundef %i.dd)
  %i.dq = icmp eq i32 %i.dp, 100
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %sqlite3_bind_int.exit
  %i.dr = call i64 @sqlite3_column_int64(ptr noundef %i.dd, i32 noundef 0)
  %i.ds = call i32 @sqlite3_column_int(ptr noundef %i.dd, i32 noundef 1)
  br label %bb.s

bb.s:                                             ; preds = %sqlite3_bind_int.exit, %bb.r
  %storemerge = phi i32 [ %i.ds, %bb.r ], [ -1, %sqlite3_bind_int.exit ] ; 5 uses
  %.1102 = phi i64 [ %i.dr, %bb.r ], [ %.0101355, %sqlite3_bind_int.exit ] ; 3 uses
  store i32 %storemerge, ptr %i.o, align 4, !tbaa !27
  %i.dt = call i32 @sqlite3_reset(ptr noundef %i.dd) ; 3 uses
  store i32 %i.dt, ptr %i.n, align 4, !tbaa !27
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = load i32, ptr %i.v, align 8             ; 5 uses
  %i.dw = icmp ne i32 %i.dv, 0
  %or.cond = select i1 %i.du, i1 %i.dw, i1 false
  br i1 %or.cond, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #58
  %i.dx = add nsw i32 %i.dv, -1                   ; 4 uses
  %i.dy = load ptr, ptr %5, align 8, !tbaa !6048  ; 5 uses
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !231
  %.not.i128 = icmp sgt i8 %i.eb, -1
  br i1 %.not.i128, label %.preheader38.i, label %fts3IncrmergeHintPop.exit

.preheader38.i:                                   ; preds = %bb.t
  %i.ec = icmp sgt i32 %i.dv, 1
  br i1 %i.ec, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader38.i
  %6 = zext nneg i32 %i.dx to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %6, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.u ] ; 4 uses
  %i.ed = getelementptr i8, ptr %i.dy, i64 %indvars.iv.i
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !231
  %.not34.i = icmp sgt i8 %i.ef, -1
  br i1 %.not34.i, label %.preheader.preheader.loopexit.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.eg = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.eg, label %.lr.ph.i, label %fts3IncrmergeHintPop.exit, !llvm.loop !6049

.critedge.i:                                      ; preds = %.preheader38.i
  %i.eh = icmp eq i32 %i.dx, 0
  br i1 %i.eh, label %fts3IncrmergeHintPop.exit, label %.preheader.preheader.i

.preheader.preheader.loopexit.i:                  ; preds = %.lr.ph.i
  %7 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.loopexit.i, %.critedge.i
  %.0.lcssa46.i = phi i32 [ %i.dx, %.critedge.i ], [ %7, %.preheader.preheader.loopexit.i ] ; 3 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %.0.lcssa46.i, i32 1)
  %i.ei = add i32 %smin.i, -1                     ; 2 uses
  %i.ej = icmp sgt i32 %.0.lcssa46.i, 1
  br i1 %i.ej, label %.lr.ph698, label %.critedge2.i

.lr.ph698:                                        ; preds = %.preheader.preheader.i
  %8 = zext nneg i32 %.0.lcssa46.i to i64
  br label %.lr.ph704

.preheader.i:                                     ; preds = %.lr.ph704
  %i.ek = icmp sgt i32 %indvars.le.i, 1
  br i1 %i.ek, label %.lr.ph704, label %.critedge2.i, !llvm.loop !6050

.lr.ph704:                                        ; preds = %.lr.ph698, %.preheader.i
  %indvars.iv43.i697 = phi i64 [ %8, %.lr.ph698 ], [ %indvars.iv.next44.i, %.preheader.i ] ; 2 uses
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i697, -1 ; 2 uses
  %i.el = getelementptr i8, ptr %i.dy, i64 %indvars.iv43.i697
  %i.em = getelementptr i8, ptr %i.el, i64 -2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !231
  %.not35.i = icmp sgt i8 %i.en, -1
  %indvars.le.i = trunc i64 %indvars.iv.next44.i to i32 ; 2 uses
  br i1 %.not35.i, label %.critedge2.i, label %.preheader.i, !llvm.loop !6050

.critedge2.i:                                     ; preds = %.preheader.i, %.lr.ph704, %.preheader.preheader.i
  %.1.lcssa.i = phi i32 [ %i.ei, %.preheader.preheader.i ], [ %i.ei, %.preheader.i ], [ %indvars.le.i, %.lr.ph704 ] ; 3 uses
  store i32 %.1.lcssa.i, ptr %i.v, align 8, !tbaa !6041
  %i.eo = sext i32 %.1.lcssa.i to i64
  %i.ep = getelementptr inbounds i8, ptr %i.dy, i64 %i.eo
  %i.eq = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.ep, ptr noundef nonnull %i.q)
  %i.er = add nsw i32 %i.eq, %.1.lcssa.i          ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.dy, i64 %i.es ; 5 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !231 ; 3 uses
  %.not36.i = icmp sgt i8 %i.eu, -1
  br i1 %.not36.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.critedge2.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ew = and i8 %i.eu, 127
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = load i8, ptr %i.ev, align 1, !tbaa !231 ; 2 uses
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 7
  %i.fb = or disjoint i32 %i.fa, %i.ex            ; 2 uses
  %i.fc = icmp sgt i8 %i.ey, -1
  br i1 %i.fc, label %sqlite3Fts3GetVarint32.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.fe = and i32 %i.fb, 16383
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !231 ; 2 uses
  %i.fg = zext i8 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fg, 14
  %i.fi = or disjoint i32 %i.fh, %i.fe            ; 2 uses
  %i.fj = icmp sgt i8 %i.ff, -1
  br i1 %i.fj, label %sqlite3Fts3GetVarint32.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %i.fl = and i32 %i.fi, 2097151
  %i.fm = load i8, ptr %i.fk, align 1, !tbaa !231 ; 2 uses
  %i.fn = zext i8 %i.fm to i32
  %i.fo = shl nuw nsw i32 %i.fn, 21
  %i.fp = or disjoint i32 %i.fo, %i.fl            ; 2 uses
  %i.fq = icmp sgt i8 %i.fm, -1
  br i1 %i.fq, label %sqlite3Fts3GetVarint32.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fs = and i32 %i.fp, 268435455
  %i.ft = load i8, ptr %i.fr, align 1, !tbaa !231
  %i.fu = and i8 %i.ft, 7
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 28
  %i.fx = or disjoint i32 %i.fw, %i.fs
  br label %sqlite3Fts3GetVarint32.exit.i

bb.z:                                             ; preds = %.critedge2.i
  %i.fy = zext nneg i8 %i.eu to i32
  br label %sqlite3Fts3GetVarint32.exit.i

sqlite3Fts3GetVarint32.exit.i:                    ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %storemerge.i = phi i32 [ %i.fy, %bb.z ], [ %i.fx, %bb.y ], [ %i.fi, %bb.w ], [ %i.fb, %bb.v ], [ %i.fp, %bb.x ]
  %i.fz = phi i32 [ 1, %bb.z ], [ 5, %bb.y ], [ 3, %bb.w ], [ 2, %bb.v ], [ 4, %bb.x ]
  %i.ga = add nsw i32 %i.fz, %i.er
  %.not37.i = icmp eq i32 %i.ga, %i.dv
  %..i = select i1 %.not37.i, i32 0, i32 267
  %.pre.pre = load i64, ptr %i.q, align 8, !tbaa !21
  br label %fts3IncrmergeHintPop.exit

fts3IncrmergeHintPop.exit:                        ; preds = %bb.u, %bb.t, %.critedge.i, %sqlite3Fts3GetVarint32.exit.i
  %.pre = phi i64 [ %.pre.pre, %sqlite3Fts3GetVarint32.exit.i ], [ 0, %bb.t ], [ 0, %.critedge.i ], [ 0, %bb.u ] ; 2 uses
  %.0228 = phi i32 [ %storemerge.i, %sqlite3Fts3GetVarint32.exit.i ], [ 0, %bb.t ], [ 0, %.critedge.i ], [ 0, %bb.u ]
  %.033.i = phi i32 [ %..i, %sqlite3Fts3GetVarint32.exit.i ], [ 267, %bb.t ], [ 267, %.critedge.i ], [ 267, %bb.u ] ; 2 uses
  store i32 %.033.i, ptr %i.n, align 4, !tbaa !27
  %i.gb = icmp slt i32 %storemerge, 0
  br i1 %i.gb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %fts3IncrmergeHintPop.exit
  %i.gc = srem i64 %.1102, %i.db
  %i.gd = srem i64 %.pre, %i.db
  %.not113 = icmp slt i64 %i.gc, %i.gd
  br i1 %.not113, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %fts3IncrmergeHintPop.exit
  %i.ge = call i32 @llvm.smax.i32(i32 %2, i32 %storemerge)
  %. = call i32 @llvm.smin.i32(i32 %i.ge, i32 %.0228) ; 2 uses
  store i32 %., ptr %i.o, align 4, !tbaa !27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.dv, ptr %i.v, align 8, !tbaa !6041
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gf = phi i32 [ %., %bb.ab ], [ %storemerge, %bb.ac ]
  %.2103 = phi i64 [ %.pre, %bb.ab ], [ %.1102, %bb.ac ]
  %.197 = phi i32 [ 1, %bb.ab ], [ %.096356, %bb.ac ]
  %i.gg = phi i1 [ true, %bb.ab ], [ false, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #58
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.s
  %i.gh = phi i32 [ %.033.i, %bb.ad ], [ %i.dt, %bb.s ] ; 3 uses
  %i.gi = phi i32 [ %i.gf, %bb.ad ], [ %storemerge, %bb.s ] ; 3 uses
  %.3104 = phi i64 [ %.2103, %bb.ad ], [ %.1102, %bb.s ] ; 15 uses
  %.298 = phi i32 [ %.197, %bb.ad ], [ %.096356, %bb.s ] ; 11 uses
  %.193 = phi i1 [ %i.gg, %bb.ad ], [ false, %bb.s ] ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 1
  br i1 %i.gj, label %.thread280, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gk = icmp slt i64 %.3104, 0
  %i.gl = shl nsw i64 %i.db, 32
  %i.gm = icmp sgt i64 %.3104, %i.gl
  %or.cond122 = select i1 %i.gk, i1 true, i1 %i.gm
  br i1 %or.cond122, label %.thread280, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %i.s, i8 0, i64 816, i1 false)
  store i32 1, ptr %i.bb, align 8, !tbaa !5449
  %i.gn = icmp eq i32 %i.gh, 0
  br i1 %i.gn, label %bb.ah, label %.thread274

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #58
  store ptr null, ptr %i.l, align 8, !tbaa !522
  %i.go = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 8, ptr noundef %i.l, ptr noundef null), !inline_history !6051
  %i.gp = icmp eq i32 %i.go, 0
  %i.gq = add nuw nsw i64 %.3104, 1               ; 3 uses
  br i1 %i.gp, label %bb.ai, label %fts3IncrmergeOutputIdx.exit.thread

fts3IncrmergeOutputIdx.exit.thread:               ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #58
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.gr = load ptr, ptr %i.l, align 8, !tbaa !522 ; 6 uses
  %i.gs = call fastcc i32 @vdbeUnbind(ptr noundef %i.gr, i32 noundef 0), !inline_history !6052
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.aj, label %fts3IncrmergeOutputIdx.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !175 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 20 ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 4, !tbaa !166
  %i.gy = and i16 %i.gx, -28672
  %.not.i.i.i131 = icmp eq i16 %i.gy, 0
  br i1 %.not.i.i.i131, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.gv, i64 noundef %i.gq), !inline_history !6052
  br label %sqlite3VdbeMemSetInt64.exit.i.i132

bb.al:                                            ; preds = %bb.aj
  store i64 %i.gq, ptr %i.gv, align 8, !tbaa !231
  store i16 4, ptr %i.gw, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i.i132

sqlite3VdbeMemSetInt64.exit.i.i132:               ; preds = %bb.al, %bb.ak
  %i.gz = load ptr, ptr %i.gr, align 8, !tbaa !150
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !28 ; 2 uses
  %.not.i8.i.i133 = icmp eq ptr %i.hb, null
  br i1 %.not.i8.i.i133, label %fts3IncrmergeOutputIdx.exit, label %bb.am

bb.am:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i132
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.hc(ptr noundef nonnull %i.hb) #58, !inline_history !6053
  br label %fts3IncrmergeOutputIdx.exit

fts3IncrmergeOutputIdx.exit:                      ; preds = %bb.ai, %sqlite3VdbeMemSetInt64.exit.i.i132, %bb.am
  %i.hd = call i32 @sqlite3_step(ptr noundef %i.gr), !inline_history !6051 ; 0 uses
  %i.he = call i32 @sqlite3_column_int(ptr noundef %i.gr, i32 noundef 0), !inline_history !6051 ; 4 uses
  %i.hf = call i32 @sqlite3_reset(ptr noundef %i.gr), !inline_history !6051 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #58
  store i32 %i.hf, ptr %i.n, align 4, !tbaa !27
  %i.hg = icmp eq i32 %i.he, 0
  %i.hh = icmp eq i32 %i.he, 1
  %or.cond4 = and i1 %.193, %i.hh
  %or.cond123 = or i1 %i.hg, %or.cond4
  br i1 %or.cond123, label %bb.an, label %bb.bg

bb.an:                                            ; preds = %fts3IncrmergeOutputIdx.exit.thread, %fts3IncrmergeOutputIdx.exit
  %.1230237 = phi i32 [ 0, %fts3IncrmergeOutputIdx.exit.thread ], [ %i.he, %fts3IncrmergeOutputIdx.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  %i.hi = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 15, ptr noundef %i.k, ptr noundef null), !inline_history !6054 ; 3 uses
  %.not.i134 = icmp eq i32 %i.hi, 0
  br i1 %.not.i134, label %bb.ao, label %fts3SegmentIsMaxLevel.exit.thread

fts3SegmentIsMaxLevel.exit.thread:                ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #58
  store i32 %i.hi, ptr %i.n, align 4, !tbaa !27
  br label %.thread274

bb.ao:                                            ; preds = %bb.an
  %i.hj = load ptr, ptr %i.k, align 8, !tbaa !522 ; 18 uses
  %i.hk = add nuw nsw i64 %.3104, 2               ; 2 uses
  %i.hl = call fastcc i32 @vdbeUnbind(ptr noundef %i.hj, i32 noundef 0), !inline_history !6055
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.ap, label %sqlite3_bind_int64.exit.i136

bb.ap:                                            ; preds = %bb.ao
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 128
end_hunk_4
begin_hunk_5_@sqlite3Fts3Incrmerge:bb.a

bb.gq:                                            ; preds = %bb.fy
  %i.agc = getelementptr inbounds nuw i8, ptr %i.abv, i64 24 ; 3 uses
  %i.agd = load i64, ptr %i.abv, align 8, !tbaa !6098
  %i.age = load ptr, ptr %i.agc, align 8, !tbaa !6104
  %i.agf = call fastcc i32 @fts3WriteSegment(ptr noundef nonnull %0, i64 noundef %i.agd, ptr noundef %i.age, i32 noundef %.pre.i.i188), !inline_history !6116 ; 2 uses
  %i.agg = trunc i64 %indvars.iv.i71.i to i8
  %i.agh = load ptr, ptr %i.agc, align 8, !tbaa !6104
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !231
  %i.agi = load ptr, ptr %i.agc, align 8, !tbaa !6104
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 1 ; 2 uses
  %i.agk = add nsw i64 %.073155.i.i, 1
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %bb.gq
  %.08.i103.i.i = phi ptr [ %i.agj, %bb.gq ], [ %i.agn, %bb.gr ] ; 3 uses
  %.0.i104.i.i = phi i64 [ %i.agk, %bb.gq ], [ %i.ago, %bb.gr ] ; 2 uses
  %i.agl = trunc i64 %.0.i104.i.i to i8           ; 2 uses
  %i.agm = or i8 %i.agl, -128
  %i.agn = getelementptr inbounds nuw i8, ptr %.08.i103.i.i, i64 1 ; 2 uses
  store i8 %i.agm, ptr %.08.i103.i.i, align 1, !tbaa !231
  %i.ago = lshr i64 %.0.i104.i.i, 7               ; 2 uses
  %.not.i105.i.i = icmp eq i64 %i.ago, 0
  br i1 %.not.i105.i.i, label %bb.gs, label %bb.gr, !llvm.loop !5472

bb.gs:                                            ; preds = %bb.gr
  store i8 %i.agl, ptr %.08.i103.i.i, align 1, !tbaa !231
  %i.agp = ptrtoint ptr %i.agn to i64
  %i.agq = ptrtoint ptr %i.agj to i64
  %i.agr = sub i64 %i.agp, %i.agq
  %i.ags = trunc i64 %i.agr to i32
  %i.agt = add nsw i32 %i.ags, 1
  store i32 %i.agt, ptr %.phi.trans.insert.i.i187, align 8, !tbaa !6103
  %i.agu = load i64, ptr %i.abv, align 8, !tbaa !6098 ; 3 uses
  %i.agv = add nsw i64 %i.agu, 1
  store i64 %i.agv, ptr %i.abv, align 8, !tbaa !6098
  store i32 0, ptr %i.aby, align 8, !tbaa !6107
  %i.agw = icmp eq i32 %i.agf, 0
  %i.agx = icmp ne i64 %i.agu, 0
  %or.cond.not.i.i = select i1 %i.agw, i1 %i.agx, i1 false
  br i1 %or.cond.not.i.i, label %bb.gt, label %fts3IncrmergePush.exit.i

bb.gt:                                            ; preds = %bb.gs
  %indvars.iv.next.i73.i = add nuw nsw i64 %indvars.iv.i71.i, 1 ; 2 uses
  %exitcond.not.i74.i = icmp eq i64 %indvars.iv.next.i73.i, 16
  br i1 %exitcond.not.i74.i, label %fts3IncrmergePush.exit.i, label %bb.fr, !llvm.loop !6117

fts3IncrmergePush.exit.i:                         ; preds = %bb.gt, %bb.gs, %fts3PrefixCompress.exit.i.i, %sqlite3Fts3PutVarint.exit102.i.i, %sqlite3_realloc64.exit.i92.i.i, %bb.gh, %sqlite3_realloc64.exit.i87.i.i, %bb.gf, %sqlite3_realloc64.exit.i.i.i, %bb.ga, %bb.fp
  %.087.i = phi i32 [ %i.abp, %bb.fp ], [ 7, %sqlite3_realloc64.exit.i87.i.i ], [ 7, %sqlite3_realloc64.exit.i.i.i ], [ 7, %bb.ga ], [ 0, %sqlite3Fts3PutVarint.exit102.i.i ], [ 7, %bb.gh ], [ 7, %sqlite3_realloc64.exit.i92.i.i ], [ 7, %bb.gf ], [ 267, %fts3PrefixCompress.exit.i.i ], [ 0, %bb.gt ], [ %i.agf, %bb.gs ] ; 2 uses
  %i.agy = load i64, ptr %i.bj, align 8, !tbaa !6098
  %i.agz = add nsw i64 %i.agy, 1
  store i64 %i.agz, ptr %i.bj, align 8, !tbaa !6098
  store i32 0, ptr %i.cr, align 8, !tbaa !6107
  store i32 0, ptr %i.ct, align 8, !tbaa !6103
  %i.aha = sext i32 %i.aah to i64
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gu, %fts3IncrmergePush.exit.i
  %.04.i75.i = phi i64 [ %i.aha, %fts3IncrmergePush.exit.i ], [ %i.ahc, %bb.gu ]
  %.0.i76.i = phi i32 [ 0, %fts3IncrmergePush.exit.i ], [ %i.ahb, %bb.gu ]
  %i.ahb = add nuw nsw i32 %.0.i76.i, 1           ; 2 uses
  %i.ahc = lshr i64 %.04.i75.i, 7                 ; 2 uses
  %.not.i77.i = icmp eq i64 %i.ahc, 0
  br i1 %.not.i77.i, label %sqlite3Fts3VarintLen.exit78.i, label %bb.gu, !llvm.loop !5470

sqlite3Fts3VarintLen.exit78.i:                    ; preds = %bb.gu, %sqlite3Fts3VarintLen.exit78.i
  %.04.i79.i = phi i64 [ %i.ahe, %sqlite3Fts3VarintLen.exit78.i ], [ %i.aax, %bb.gu ]
  %.0.i80.i = phi i32 [ %i.ahd, %sqlite3Fts3VarintLen.exit78.i ], [ 0, %bb.gu ]
  %i.ahd = add nuw nsw i32 %.0.i80.i, 1           ; 2 uses
  %i.ahe = lshr i64 %.04.i79.i, 7                 ; 2 uses
  %.not.i81.i = icmp eq i64 %i.ahe, 0
  br i1 %.not.i81.i, label %bb.gv, label %sqlite3Fts3VarintLen.exit78.i, !llvm.loop !5470

.thread.i180:                                     ; preds = %sqlite3Fts3VarintLen.exit70.i, %bb.fo, %bb.fn
  %i.ahf = sext i32 %i.abd to i64
  %i.ahg = load i64, ptr %i.cb, align 8, !tbaa !6071
  %i.ahh = add nsw i64 %i.ahg, %i.ahf
  store i64 %i.ahh, ptr %i.cb, align 8, !tbaa !6071
  br label %bb.gw

bb.gv:                                            ; preds = %sqlite3Fts3VarintLen.exit78.i
  %i.ahi = add i32 %i.aah, 1
  %i.ahj = add i32 %i.ahi, %i.aaj
  %i.ahk = add i32 %i.ahj, %i.ahb
  %i.ahl = add i32 %i.ahk, %i.ahd                 ; 2 uses
  %i.ahm = sext i32 %i.ahl to i64
  %i.ahn = load i64, ptr %i.cb, align 8, !tbaa !6071
  %i.aho = add nsw i64 %i.ahn, %i.ahm
  store i64 %i.aho, ptr %i.cb, align 8, !tbaa !6071
  %i.ahp = icmp eq i32 %.087.i, 0
  br i1 %i.ahp, label %bb.gw, label %.sink.split

bb.gw:                                            ; preds = %bb.gv, %.thread.i180
  %i.ahq = phi i32 [ %i.abg, %.thread.i180 ], [ %i.ahl, %bb.gv ] ; 3 uses
  %i.ahr = phi i32 [ %i.abe, %.thread.i180 ], [ 0, %bb.gv ]
  %i.ahs = load i32, ptr %i.cv, align 4, !tbaa !6047
  %i.aht = icmp sgt i32 %i.ahq, %i.ahs
  br i1 %i.aht, label %bb.gx, label %blobGrowBuffer.exit.i181

bb.gx:                                            ; preds = %bb.gw
  %i.ahu = load ptr, ptr %i.cs, align 8, !tbaa !6048
  %i.ahv = call i32 @sqlite3_initialize(), !inline_history !6118
  %.not.i.i83.i = icmp eq i32 %i.ahv, 0
  br i1 %.not.i.i83.i, label %sqlite3_realloc64.exit.i.i182, label %.sink.split

sqlite3_realloc64.exit.i.i182:                    ; preds = %bb.gx
  %i.ahw = sext i32 %i.ahq to i64
  %i.ahx = call fastcc ptr @sqlite3Realloc(ptr noundef %i.ahu, i64 noundef %i.ahw), !inline_history !6118 ; 2 uses
  %.not.i84.i = icmp eq ptr %i.ahx, null
  br i1 %.not.i84.i, label %.sink.split, label %bb.gy

bb.gy:                                            ; preds = %sqlite3_realloc64.exit.i.i182
  store i32 %i.ahq, ptr %i.cv, align 4, !tbaa !6047
  store ptr %i.ahx, ptr %i.cs, align 8, !tbaa !6048
  %.pre.i183 = load i32, ptr %i.ct, align 8, !tbaa !6103
  br label %blobGrowBuffer.exit.i181

blobGrowBuffer.exit.i181:                         ; preds = %bb.gy, %bb.gw
  %i.ahy = phi i32 [ %.pre.i183, %bb.gy ], [ %i.ahr, %bb.gw ]
  %i.ahz = icmp eq i32 %i.ahy, 0
  br i1 %i.ahz, label %bb.gz, label %fts3IncrmergeAppend.exit

bb.gz:                                            ; preds = %blobGrowBuffer.exit.i181
  store i32 1, ptr %i.ct, align 8, !tbaa !6103
  %i.aia = load ptr, ptr %i.cs, align 8, !tbaa !6104
  store i8 0, ptr %i.aia, align 1, !tbaa !231
  br label %fts3IncrmergeAppend.exit

fts3IncrmergeAppend.exit:                         ; preds = %blobGrowBuffer.exit.i181, %bb.gz
  %i.aib = call fastcc i32 @fts3AppendToNode(ptr noundef %i.cs, ptr noundef %i.cq, ptr noundef %i.aag, i32 noundef %i.aah, ptr noundef %i.aai, i32 noundef %i.aaj), !inline_history !6113 ; 2 uses
  %i.aic = icmp eq i32 %i.aib, 0
  br i1 %i.aic, label %bb.ha, label %.sink.split

bb.ha:                                            ; preds = %fts3IncrmergeAppend.exit
  %i.aid = call fastcc i32 @sqlite3Fts3SegReaderStep(ptr noundef %0, ptr noundef nonnull %i.u)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ha, %fts3PrefixCompress.exit.i, %bb.gx, %sqlite3_realloc64.exit.i.i182, %bb.gv, %fts3IncrmergeAppend.exit
  %i.aie = phi i32 [ %i.aib, %fts3IncrmergeAppend.exit ], [ %i.aid, %bb.ha ], [ %.087.i, %bb.gv ], [ 7, %sqlite3_realloc64.exit.i.i182 ], [ 7, %bb.gx ], [ 267, %fts3PrefixCompress.exit.i ] ; 5 uses
  %i.aif = load i64, ptr %i.cu, align 8, !tbaa !6114 ; 2 uses
  %i.aig = icmp sge i64 %i.aif, %i.aaf
  %i.aih = icmp eq i32 %i.aie, 100                ; 2 uses
  %or.cond8 = select i1 %i.aig, i1 %i.aih, i1 false
  br i1 %or.cond8, label %.thread254.loopexit, label %bb.hb

bb.hb:                                            ; preds = %.sink.split
  br i1 %i.aih, label %bb.ff, label %.loopexit, !llvm.loop !6119

.loopexit:                                        ; preds = %bb.hb
  store i32 %i.aie, ptr %i.n, align 1
  %i.aii = icmp eq i32 %i.aie, 0
  br i1 %i.aii, label %.loopexit._crit_edge, label %bb.hc

.loopexit._crit_edge:                             ; preds = %bb.fe, %.loopexit
  %.pre421 = load i64, ptr %i.cu, align 8, !tbaa !6114
  br label %.thread254

.thread254.loopexit:                              ; preds = %.sink.split
  store i32 %i.aie, ptr %i.n, align 1
  br label %.thread254

.thread254:                                       ; preds = %.thread254.loopexit, %.loopexit._crit_edge
  %i.aij = phi i64 [ %.pre421, %.loopexit._crit_edge ], [ %i.aif, %.thread254.loopexit ]
  %i.aik = trunc i64 %i.aij to i32
  %i.ail = xor i32 %i.aik, -1
  %i.aim = add i32 %.090357, %i.ail               ; 2 uses
  %i.ain = call fastcc i32 @fts3IncrmergeChomp(ptr noundef %0, i64 noundef %.3104, ptr noundef %i.u, ptr noundef %i.o) ; 2 uses
  store i32 %i.ain, ptr %i.n, align 4, !tbaa !27
  %i.aio = load i32, ptr %i.o, align 4, !tbaa !27 ; 2 uses
  %.not119 = icmp eq i32 %i.aio, 0
  br i1 %.not119, label %.thread257, label %.thread264

.thread264:                                       ; preds = %.thread254
  call fastcc void @fts3IncrmergeHintPush(ptr noundef %5, i64 noundef %.3104, i32 noundef %i.aio, ptr noundef %i.n)
  %.pr272.pre.pre = load i32, ptr %i.n, align 4, !tbaa !27
  br label %bb.hd

bb.hc:                                            ; preds = %.loopexit, %bb.fd, %bb.fc
  %.pr272.pre426 = phi i32 [ %i.aie, %.loopexit ], [ 0, %bb.fd ], [ %storemerge116, %bb.fc ] ; 2 uses
  %.pr256 = load i32, ptr %i.o, align 4, !tbaa !27
  %.not120 = icmp eq i32 %.pr256, 0
  br i1 %.not120, label %.thread257, label %bb.hd

bb.hd:                                            ; preds = %.thread264, %bb.hc
  %.pr272.pre = phi i32 [ %.pr272.pre.pre, %.thread264 ], [ %.pr272.pre426, %bb.hc ]
  %.1269 = phi i32 [ %i.aim, %.thread264 ], [ %.090357, %bb.hc ]
  %.399268 = phi i32 [ 1, %.thread264 ], [ %.298, %bb.hc ]
  %i.aip = load i64, ptr %i.cb, align 8, !tbaa !6071
  %i.aiq = sub nsw i64 0, %i.aip
  store i64 %i.aiq, ptr %i.cb, align 8, !tbaa !6071
  br label %.thread257

.thread257:                                       ; preds = %bb.hd, %bb.hc, %.thread254
  %i.air = phi i32 [ %i.ain, %.thread254 ], [ %.pr272.pre426, %bb.hc ], [ %.pr272.pre, %bb.hd ] ; 5 uses
  %.not120263 = phi i1 [ true, %.thread254 ], [ true, %bb.hc ], [ false, %bb.hd ]
  %.1262 = phi i32 [ %i.aim, %.thread254 ], [ %.090357, %bb.hc ], [ %.1269, %bb.hd ] ; 3 uses
  %.399261 = phi i32 [ %.298, %.thread254 ], [ %.298, %bb.hc ], [ %.399268, %bb.hd ] ; 3 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hq, %.thread257
  %indvars.iv.i193 = phi i64 [ 15, %.thread257 ], [ %indvars.iv.next.i199, %bb.hq ] ; 6 uses
  %i.ais = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.i193 ; 5 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 32
  %i.aiu = load i32, ptr %i.ait, align 8, !tbaa !6103
  %i.aiv = icmp sgt i32 %i.aiu, 0
  br i1 %i.aiv, label %sqlite3_free.exit51.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ais, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !6104 ; 4 uses
  %i.aiy = icmp eq ptr %i.aix, null
  br i1 %i.aiy, label %sqlite3_free.exit.i196, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aiz = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i192 = icmp eq i32 %i.aiz, 0
  br i1 %.not.i.i192, label %bb.hk, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aja = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.aja, null
  br i1 %.not.i.i.i193, label %sqlite3_mutex_enter.exit.i.i194, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ajb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.ajb(ptr noundef nonnull %i.aja) #58, !inline_history !6120
  br label %sqlite3_mutex_enter.exit.i.i194

sqlite3_mutex_enter.exit.i.i194:                  ; preds = %bb.hi, %bb.hh
  %i.ajc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ajd = call i32 %i.ajc(ptr noundef nonnull %i.aix) #58, !inline_history !6121
  %i.aje = sext i32 %i.ajd to i64
  %i.ajf = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ajg = sub nsw i64 %i.ajf, %i.aje
  store i64 %i.ajg, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ajh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.aji = add nsw i64 %i.ajh, -1
  store i64 %i.aji, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ajj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.ajj(ptr noundef nonnull %i.aix) #58, !inline_history !6122
  %i.ajk = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i195 = icmp eq ptr %i.ajk, null
  br i1 %.not.i4.i.i195, label %sqlite3_free.exit.i196, label %bb.hj

bb.hj:                                            ; preds = %sqlite3_mutex_enter.exit.i.i194
  %i.ajl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.ajl(ptr noundef nonnull %i.ajk) #58, !inline_history !6123
  br label %sqlite3_free.exit.i196

bb.hk:                                            ; preds = %bb.hg
  %i.ajm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.ajm(ptr noundef nonnull %i.aix) #58, !inline_history !6122
  br label %sqlite3_free.exit.i196

sqlite3_free.exit.i196:                           ; preds = %bb.hk, %bb.hj, %sqlite3_mutex_enter.exit.i.i194, %bb.hf
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !6106 ; 4 uses
  %i.ajp = icmp eq ptr %i.ajo, null
  br i1 %i.ajp, label %bb.hq, label %bb.hl

bb.hl:                                            ; preds = %sqlite3_free.exit.i196
  %i.ajq = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i47.i = icmp eq i32 %i.ajq, 0
  br i1 %.not.i47.i, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ajr = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.ajr, null
  br i1 %.not.i.i48.i, label %sqlite3_mutex_enter.exit.i49.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ajs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.ajs(ptr noundef nonnull %i.ajr) #58, !inline_history !6120
  br label %sqlite3_mutex_enter.exit.i49.i

sqlite3_mutex_enter.exit.i49.i:                   ; preds = %bb.hn, %bb.hm
  %i.ajt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.aju = call i32 %i.ajt(ptr noundef nonnull %i.ajo) #58, !inline_history !6121
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ajx = sub nsw i64 %i.ajw, %i.ajv
  store i64 %i.ajx, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ajy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ajz = add nsw i64 %i.ajy, -1
  store i64 %i.ajz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.aka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.aka(ptr noundef nonnull %i.ajo) #58, !inline_history !6122
  %i.akb = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i50.i = icmp eq ptr %i.akb, null
  br i1 %.not.i4.i50.i, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %sqlite3_mutex_enter.exit.i49.i
  %i.akc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.akc(ptr noundef nonnull %i.akb) #58, !inline_history !6123
  br label %bb.hq

bb.hp:                                            ; preds = %bb.hl
  %i.akd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.akd(ptr noundef nonnull %i.ajo) #58, !inline_history !6122
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %sqlite3_mutex_enter.exit.i49.i, %sqlite3_free.exit.i196
  %indvars.iv.next.i199 = add nsw i64 %indvars.iv.i193, -1
  %.not.i197 = icmp eq i64 %indvars.iv.i193, 0
  br i1 %.not.i197, label %fts3IncrmergeRelease.exit, label %bb.he, !llvm.loop !6124

sqlite3_free.exit51.i:                            ; preds = %bb.he
  %i.ake = icmp eq i64 %indvars.iv.i193, 0
  br i1 %i.ake, label %bb.hr, label %blobGrowBuffer.exit.thread.i

bb.hr:                                            ; preds = %sqlite3_free.exit51.i
  %i.akf = icmp eq i32 %i.air, 0
  br i1 %i.akf, label %bb.hs, label %.lr.ph.preheader.i.a

bb.hs:                                            ; preds = %bb.hr
  %i.akg = load i32, ptr %i.cx, align 4, !tbaa !6047
  %i.akh = icmp slt i32 %i.akg, 11
  %.pre.i205 = load ptr, ptr %i.cw, align 8, !tbaa !6048 ; 2 uses
  br i1 %i.akh, label %bb.ht, label %blobGrowBuffer.exit.i206

bb.ht:                                            ; preds = %bb.hs
  %i.aki = call i32 @sqlite3_initialize(), !inline_history !6125
  %.not.i.i52.i = icmp eq i32 %i.aki, 0
  br i1 %.not.i.i52.i, label %sqlite3_realloc64.exit.i.i208, label %.lr.ph.preheader.i.a

sqlite3_realloc64.exit.i.i208:                    ; preds = %bb.ht
  %i.akj = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre.i205, i64 noundef 11), !inline_history !6125 ; 3 uses
  %.not.i53.i = icmp eq ptr %i.akj, null
  br i1 %.not.i53.i, label %.lr.ph.preheader.i.a, label %bb.hu

bb.hu:                                            ; preds = %sqlite3_realloc64.exit.i.i208
  store i32 11, ptr %i.cx, align 4, !tbaa !6047
  store ptr %i.akj, ptr %i.cw, align 8, !tbaa !6048
  br label %blobGrowBuffer.exit.i206

blobGrowBuffer.exit.i206:                         ; preds = %bb.hu, %bb.hs
  %i.akk = phi ptr [ %i.akj, %bb.hu ], [ %.pre.i205, %bb.hs ]
  store i8 1, ptr %i.akk, align 1, !tbaa !231
  %i.akl = load ptr, ptr %i.cw, align 8, !tbaa !6048
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 1 ; 2 uses
  %i.akn = load i64, ptr %i.bj, align 8, !tbaa !6098
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hv, %blobGrowBuffer.exit.i206
  %.08.i.i = phi ptr [ %i.akm, %blobGrowBuffer.exit.i206 ], [ %i.akq, %bb.hv ] ; 3 uses
  %.0.i.i207 = phi i64 [ %i.akn, %blobGrowBuffer.exit.i206 ], [ %i.akr, %bb.hv ] ; 2 uses
  %i.ako = trunc i64 %.0.i.i207 to i8             ; 2 uses
  %i.akp = or i8 %i.ako, -128
  %i.akq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 2 uses
  store i8 %i.akp, ptr %.08.i.i, align 1, !tbaa !231
  %i.akr = lshr i64 %.0.i.i207, 7                 ; 2 uses
  %.not.i54.i = icmp eq i64 %i.akr, 0
  br i1 %.not.i54.i, label %sqlite3Fts3PutVarint.exit.i, label %bb.hv, !llvm.loop !5472

sqlite3Fts3PutVarint.exit.i:                      ; preds = %bb.hv
  store i8 %i.ako, ptr %.08.i.i, align 1, !tbaa !231
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = ptrtoint ptr %i.akm to i64
  %i.aku = sub i64 %i.aks, %i.akt
  %i.akv = trunc i64 %i.aku to i32
  %i.akw = add nsw i32 %i.akv, 1
  store i32 %i.akw, ptr %i.cy, align 8, !tbaa !6041
  br label %.lr.ph.preheader.i.a

blobGrowBuffer.exit.thread.i:                     ; preds = %sqlite3_free.exit51.i
  %i.akx = icmp sgt i64 %indvars.iv.i193, 0
  br i1 %i.akx, label %.lr.ph.preheader.i.a, label %._crit_edge.i198

.lr.ph.preheader.i.a:                             ; preds = %bb.hr, %bb.ht, %sqlite3_realloc64.exit.i.i208, %sqlite3Fts3PutVarint.exit.i, %blobGrowBuffer.exit.thread.i
  %i.aky = phi ptr [ %i.ais, %blobGrowBuffer.exit.thread.i ], [ %i.bk, %sqlite3Fts3PutVarint.exit.i ], [ %i.bk, %sqlite3_realloc64.exit.i.i208 ], [ %i.bk, %bb.ht ], [ %i.bk, %bb.hr ]
  %i.akz = phi i64 [ %indvars.iv.i193, %blobGrowBuffer.exit.thread.i ], [ 1, %sqlite3Fts3PutVarint.exit.i ], [ 1, %sqlite3_realloc64.exit.i.i208 ], [ 1, %bb.ht ], [ 1, %bb.hr ]
  %.079114.i = phi i32 [ %i.air, %blobGrowBuffer.exit.thread.i ], [ 0, %sqlite3Fts3PutVarint.exit.i ], [ 7, %sqlite3_realloc64.exit.i.i208 ], [ 7, %bb.ht ], [ %i.air, %bb.hr ]
  br label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %sqlite3_free.exit64.i, %.lr.ph.preheader.i.a
  %indvars.iv.i202 = phi i64 [ 0, %.lr.ph.preheader.i.a ], [ %indvars.iv.next.i204, %sqlite3_free.exit64.i ] ; 2 uses
  %.18087.i = phi i32 [ %.079114.i, %.lr.ph.preheader.i.a ], [ %.2.i, %sqlite3_free.exit64.i ] ; 2 uses
  %i.ala = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv.i202 ; 4 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 24 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 32
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !6103 ; 2 uses
  %i.ale = icmp sgt i32 %i.ald, 0
  %i.alf = icmp eq i32 %.18087.i, 0
  %or.cond.i203 = select i1 %i.ale, i1 %i.alf, i1 false
  br i1 %or.cond.i203, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.lr.ph.i201
  %i.alg = load i64, ptr %i.ala, align 8, !tbaa !6098
  %i.alh = load ptr, ptr %i.alb, align 8, !tbaa !6104
  %i.ali = call fastcc i32 @fts3WriteSegment(ptr noundef %0, i64 noundef %i.alg, ptr noundef %i.alh, i32 noundef %i.ald), !inline_history !6126
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %.lr.ph.i201
  %.2.i = phi i32 [ %i.ali, %bb.hw ], [ %.18087.i, %.lr.ph.i201 ] ; 2 uses
  %i.alj = load ptr, ptr %i.alb, align 8, !tbaa !6104 ; 4 uses
  %i.alk = icmp eq ptr %i.alj, null
  br i1 %i.alk, label %sqlite3_free.exit59.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.all = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i55.i = icmp eq i32 %i.all, 0
  br i1 %.not.i55.i, label %bb.ic, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.alm = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i56.i = icmp eq ptr %i.alm, null
  br i1 %.not.i.i56.i, label %sqlite3_mutex_enter.exit.i57.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.aln(ptr noundef nonnull %i.alm) #58, !inline_history !6120
  br label %sqlite3_mutex_enter.exit.i57.i

sqlite3_mutex_enter.exit.i57.i:                   ; preds = %bb.ia, %bb.hz
  %i.alo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.alp = call i32 %i.alo(ptr noundef nonnull %i.alj) #58, !inline_history !6121
  %i.alq = sext i32 %i.alp to i64
  %i.alr = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.als = sub nsw i64 %i.alr, %i.alq
  store i64 %i.als, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.alt = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.alu = add nsw i64 %i.alt, -1
  store i64 %i.alu, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.alv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.alv(ptr noundef nonnull %i.alj) #58, !inline_history !6122
  %i.alw = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i58.i = icmp eq ptr %i.alw, null
  br i1 %.not.i4.i58.i, label %sqlite3_free.exit59.i, label %bb.ib

bb.ib:                                            ; preds = %sqlite3_mutex_enter.exit.i57.i
  %i.alx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.alx(ptr noundef nonnull %i.alw) #58, !inline_history !6123
  br label %sqlite3_free.exit59.i

bb.ic:                                            ; preds = %bb.hy
  %i.aly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.aly(ptr noundef nonnull %i.alj) #58, !inline_history !6122
  br label %sqlite3_free.exit59.i

sqlite3_free.exit59.i:                            ; preds = %bb.ic, %bb.ib, %sqlite3_mutex_enter.exit.i57.i, %bb.hx
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !6106 ; 4 uses
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %sqlite3_free.exit64.i, label %bb.id

bb.id:                                            ; preds = %sqlite3_free.exit59.i
  %i.amc = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i60.i = icmp eq i32 %i.amc, 0
  br i1 %.not.i60.i, label %bb.ih, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.amd = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i61.i = icmp eq ptr %i.amd, null
  br i1 %.not.i.i61.i, label %sqlite3_mutex_enter.exit.i62.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ame = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.ame(ptr noundef nonnull %i.amd) #58, !inline_history !6120
  br label %sqlite3_mutex_enter.exit.i62.i

sqlite3_mutex_enter.exit.i62.i:                   ; preds = %bb.if, %bb.ie
  %i.amf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.amg = call i32 %i.amf(ptr noundef nonnull %i.ama) #58, !inline_history !6121
  %i.amh = sext i32 %i.amg to i64
  %i.ami = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.amj = sub nsw i64 %i.ami, %i.amh
  store i64 %i.amj, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.amk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.aml = add nsw i64 %i.amk, -1
  store i64 %i.aml, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.amm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.amm(ptr noundef nonnull %i.ama) #58, !inline_history !6122
  %i.amn = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i63.i = icmp eq ptr %i.amn, null
  br i1 %.not.i4.i63.i, label %sqlite3_free.exit64.i, label %bb.ig

bb.ig:                                            ; preds = %sqlite3_mutex_enter.exit.i62.i
  %i.amo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.amo(ptr noundef nonnull %i.amn) #58, !inline_history !6123
  br label %sqlite3_free.exit64.i

bb.ih:                                            ; preds = %bb.id
  %i.amp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.amp(ptr noundef nonnull %i.ama) #58, !inline_history !6122
  br label %sqlite3_free.exit64.i

sqlite3_free.exit64.i:                            ; preds = %bb.ih, %bb.ig, %sqlite3_mutex_enter.exit.i62.i, %sqlite3_free.exit59.i
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i202, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i204, %i.akz
  br i1 %exitcond.not.i, label %._crit_edge.i198, label %.lr.ph.i201, !llvm.loop !6127

._crit_edge.i198:                                 ; preds = %sqlite3_free.exit64.i, %blobGrowBuffer.exit.thread.i
  %i.amq = phi ptr [ %i.ais, %blobGrowBuffer.exit.thread.i ], [ %i.aky, %sqlite3_free.exit64.i ] ; 4 uses
  %.180.lcssa.i = phi i32 [ %i.air, %blobGrowBuffer.exit.thread.i ], [ %.2.i, %sqlite3_free.exit64.i ] ; 2 uses
  %i.amr = icmp eq i32 %.180.lcssa.i, 0
  br i1 %i.amr, label %bb.ii, label %bb.il

bb.ii:                                            ; preds = %._crit_edge.i198
  %i.ams = load i64, ptr %i.bh, align 8, !tbaa !6096
  %i.amt = add nsw i64 %i.ams, 1
  %i.amu = load i32, ptr %i.bi, align 8, !tbaa !6097
  %i.amv = load i64, ptr %i.bf, align 8, !tbaa !6094
  %i.amw = load i64, ptr %i.bj, align 8, !tbaa !6098
  %i.amx = load i64, ptr %i.bg, align 8, !tbaa !6095
  %i.amy = load i8, ptr %i.cc, align 8, !tbaa !6073
  %i.amz = icmp eq i8 %i.amy, 0
  br i1 %i.amz, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.ana = load i64, ptr %i.cb, align 8, !tbaa !6071
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.anb = phi i64 [ %i.ana, %bb.ij ], [ 0, %bb.ii ]
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amq, i64 24
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !6104
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amq, i64 32
  %i.anf = load i32, ptr %i.ane, align 8, !tbaa !6103
  %i.ang = call fastcc i32 @fts3WriteSegdir(ptr noundef %0, i64 noundef %i.amt, i32 noundef %i.amu, i64 noundef %i.amv, i64 noundef %i.amw, i64 noundef %i.amx, i64 noundef %i.anb, ptr noundef %i.and, i32 noundef %i.anf), !inline_history !6126
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %._crit_edge.i198
  %.3.i199 = phi i32 [ %i.ang, %bb.ik ], [ %.180.lcssa.i, %._crit_edge.i198 ] ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amq, i64 24
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !6104 ; 4 uses
  %i.anj = icmp eq ptr %i.ani, null
  br i1 %i.anj, label %sqlite3_free.exit69.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.ank = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i65.i200 = icmp eq i32 %i.ank, 0
  br i1 %.not.i65.i200, label %bb.iq, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.anl = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i66.i = icmp eq ptr %i.anl, null
  br i1 %.not.i.i66.i, label %sqlite3_mutex_enter.exit.i67.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.anm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.anm(ptr noundef nonnull %i.anl) #58, !inline_history !6120
  br label %sqlite3_mutex_enter.exit.i67.i

sqlite3_mutex_enter.exit.i67.i:                   ; preds = %bb.io, %bb.in
  %i.ann = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ano = call i32 %i.ann(ptr noundef nonnull %i.ani) #58, !inline_history !6121
  %i.anp = sext i32 %i.ano to i64
  %i.anq = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.anr = sub nsw i64 %i.anq, %i.anp
  store i64 %i.anr, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ans = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ant = add nsw i64 %i.ans, -1
  store i64 %i.ant, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.anu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.anu(ptr noundef nonnull %i.ani) #58, !inline_history !6122
  %i.anv = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i68.i = icmp eq ptr %i.anv, null
  br i1 %.not.i4.i68.i, label %sqlite3_free.exit69.i, label %bb.ip

bb.ip:                                            ; preds = %sqlite3_mutex_enter.exit.i67.i
  %i.anw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.anw(ptr noundef nonnull %i.anv) #58, !inline_history !6123
  br label %sqlite3_free.exit69.i

bb.iq:                                            ; preds = %bb.im
  %i.anx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.anx(ptr noundef nonnull %i.ani) #58, !inline_history !6122
  br label %sqlite3_free.exit69.i

sqlite3_free.exit69.i:                            ; preds = %bb.iq, %bb.ip, %sqlite3_mutex_enter.exit.i67.i, %bb.il
  %i.any = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
end_hunk_5
