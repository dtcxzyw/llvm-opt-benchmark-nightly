Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/syscall?download=true
inline.NumInlined: 1972
inline.NumDeleted: 230
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@do_ppoll:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  store i16 %i.dc, ptr %i.de, align 2
  %indvars.iv.next109.4 = or disjoint i64 %indvars.iv108, 5 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next109.4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next109.4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.dh, ptr %i.dj, align 2
  %indvars.iv.next109.5 = or disjoint i64 %indvars.iv108, 6 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next109.5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 6
  %i.dm = load i16, ptr %i.dl, align 2
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next109.5
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  store i16 %i.dm, ptr %i.do, align 2
  %indvars.iv.next109.6 = or disjoint i64 %indvars.iv108, 7 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv.next109.6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 6
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv.next109.6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 6
  store i16 %i.dr, ptr %i.dt, align 2
  %indvars.iv.next109.7 = add nuw nsw i64 %indvars.iv108, 8 ; 2 uses
  %niter7.next.7 = add i64 %niter7, 8             ; 2 uses
  %niter7.ncmp.7 = icmp eq i64 %niter7.next.7, %unroll_iter6
  br i1 %niter7.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !84

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod4.not = icmp eq i64 %xtraiter2, 0
  br i1 %lcmp.mod4.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv108.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next109.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter2, 0
  call void @llvm.assume(i1 %lcmp.mod5)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv108.epil = phi i64 [ %indvars.iv108.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next109.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter3 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter3.next, %.lr.ph.epil ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.070, i64 %indvars.iv108.epil
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 6
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.071, i64 %indvars.iv108.epil
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  store i16 %i.dw, ptr %i.dy, align 2
  %indvars.iv.next109.epil = add nuw nsw i64 %indvars.iv108.epil, 1
  %epil.iter3.next = add i64 %epil.iter3, 1       ; 2 uses
  %epil.iter3.cmp.not = icmp eq i64 %epil.iter3.next, %xtraiter2
  br i1 %epil.iter3.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !85

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.u, %target_to_host_timespec.exit, %bb.c, %bb.b
  %.173 = phi i64 [ -22, %bb.b ], [ -14, %bb.c ], [ %.072, %target_to_host_timespec.exit ], [ %.1, %bb.u ], [ %.1, %.lr.ph.epil ], [ %.1, %.loopexit.loopexit.unr-lcssa ]
  ret i64 %.173
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @lock_iovec(i32 noundef range(i32 1, 4) %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit92.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %.loopexit92.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @g_try_malloc0_n(i64 noundef %2, i64 noundef 16) #35 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit92.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i64 %2, 4
  %i.f = tail call ptr @lock_user(i32 noundef 1, i64 noundef %1, i64 noundef %i.e, i1 noundef zeroext true) #29 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.h = icmp ne i32 %3, 0                        ; 2 uses
  %i.i = load i64, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @lock_user(i32 noundef %0, i64 noundef %i.i, i64 noundef %i.k, i1 noundef zeroext %i.h) #29 ; 2 uses
  store ptr %i.n, ptr %i.c, align 8
  %.not.peel = icmp eq ptr %i.n, null
  br i1 %.not.peel, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.k, i64 2147479552)
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store ptr null, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.peel = phi i64 [ 0, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.1.peel, ptr %i.p, align 8
  %exitcond.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not, label %.loopexit92, label %.peel.next

.peel.next:                                       ; preds = %bb.i, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ 1, %bb.i ] ; 5 uses
  %.06897 = phi i1 [ %.2, %.thread ], [ false, %bb.i ] ; 3 uses
  %.07594 = phi i64 [ %i.ad, %.thread ], [ %.1.peel, %bb.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 4 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.peel.next
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  store ptr null, ptr %i.w, align 8
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.x = tail call ptr @lock_user(i32 noundef %0, i64 noundef %i.r, i64 noundef %i.t, i1 noundef zeroext %i.h) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.x, ptr %i.y, align 8
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = sub i64 2147479552, %.07594
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.z)
  %spec.select = select i1 %.06897, i64 0, i64 %i.aa
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %bb.k
  %.2 = phi i1 [ %.06897, %bb.k ], [ %.06897, %bb.m ], [ true, %bb.l ]
  %.1 = phi i64 [ 0, %bb.k ], [ %spec.select, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.1, ptr %i.ac, align 8
  %i.ad = add i64 %.1, %.07594
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %.loopexit92, label %.peel.next, !llvm.loop !86

.loopexit:                                        ; preds = %.peel.next, %.preheader, %bb.f, %bb.d
  %.272 = phi i32 [ 14, %bb.d ], [ 22, %.preheader ], [ 14, %bb.f ], [ 22, %.peel.next ]
  tail call void @g_free(ptr noundef nonnull %i.c) #29
  br label %.loopexit92.sink.split

.loopexit92.sink.split:                           ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
  %.272.sink = phi i32 [ %.272, %.loopexit ], [ 22, %bb.b ], [ 0, %bb.a ], [ 12, %bb.c ]
  %i.ae = tail call ptr @__errno_location() #28
  store i32 %.272.sink, ptr %i.ae, align 4
  br label %.loopexit92

.loopexit92:                                      ; preds = %.thread, %.loopexit92.sink.split, %bb.i
  %.065 = phi ptr [ %i.c, %bb.i ], [ null, %.loopexit92.sink.split ], [ %i.c, %.thread ]
  ret ptr %.065
}

; Function Attrs: nounwind
declare i32 @getsid(i32 noundef) local_unnamed_addr #3

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -14, 1) i32 @host_to_target_cpu_mask(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.584, i32 noundef 9205, ptr noundef nonnull @__PRETTY_FUNCTION__.host_to_target_cpu_mask) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false) #29 ; 2 uses
  %.not34 = icmp eq ptr %i.a, null
  br i1 %.not34, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.b = lshr i64 %3, 3                           ; 2 uses
  %.not40 = icmp eq i64 %i.b, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.c = zext i32 %indvars.iv to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv43 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next44.1, %bb.d ] ; 3 uses
  %indvars.iv41 = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next42.1, %bb.d ] ; 4 uses
  %.038 = phi i64 [ 0, %.lr.ph ], [ %.1.1, %bb.d ]
  %i.d = lshr i64 %indvars.iv41, 6
  %i.e = and i64 %i.d, 67108863
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %indvars.iv41, 62
  %i.i = shl nuw nsw i64 1, %i.h
  %i.j = and i64 %i.g, %i.i
  %.not35 = icmp eq i64 %i.j, 0
  %i.k = shl nuw i64 1, %indvars.iv43
  %i.l = select i1 %.not35, i64 0, i64 %i.k
  %.1 = or i64 %i.l, %.038
  %indvars.iv.next42 = and i64 %indvars.iv41, 62
  %i.m = shl nuw i64 2, %indvars.iv.next42
  %i.n = and i64 %i.g, %i.m
  %.not35.1 = icmp eq i64 %i.n, 0
  %i.o = shl nuw i64 2, %indvars.iv43
  %i.p = select i1 %.not35.1, i64 0, i64 %i.o
  %.1.1 = or i64 %i.p, %.1                        ; 2 uses
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2 ; 2 uses
  %indvars.iv.next42.1 = add nuw nsw i64 %indvars.iv41, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next44.1, 64
  br i1 %exitcond.not.1, label %bb.e, label %bb.d, !llvm.loop !88

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv48
  store i64 %.1.1, ptr %i.q, align 1
  %indvars.iv.next49 = add i64 %indvars.iv48, 1   ; 2 uses
  %i.r = and i64 %indvars.iv.next49, 4294967295
  %i.s = icmp samesign ugt i64 %i.b, %i.r
  %indvars.iv.next = add i32 %indvars.iv, 64
  br i1 %i.s, label %.lr.ph, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.c
  %.030 = phi i32 [ -14, %bb.c ], [ 0, %.preheader ], [ 0, %bb.e ]
  ret i32 %.030
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -14, 1) i32 @target_to_host_cpu_mask(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.not = icmp ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.653, ptr noundef nonnull @.str.584, i32 noundef 9171, ptr noundef nonnull @__PRETTY_FUNCTION__.target_to_host_cpu_mask) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @lock_user(i32 noundef 1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true) #29 ; 2 uses
  %.not34 = icmp eq ptr %i.a, null
  br i1 %.not34, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef %1, i1 noundef false) #29
  %i.b = lshr i64 %3, 3                           ; 2 uses
  %.not39 = icmp eq i64 %i.b, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.h ], [ 0, %bb.d ] ; 2 uses
  %i.c = zext i32 %indvars.iv to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv47
  %.val = load i64, ptr %i.d, align 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv42 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next43, %bb.g ] ; 2 uses
  %indvars.iv40 = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next41, %bb.g ] ; 3 uses
  %i.e = shl nuw i64 1, %indvars.iv42
  %i.f = and i64 %i.e, %.val
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = and i64 %indvars.iv40, 63
  %i.h = shl nuw i64 1, %i.g
  %i.i = lshr i64 %indvars.iv40, 6
  %i.j = and i64 %i.i, 67108863
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = or i64 %i.l, %i.h
  store i64 %i.m, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next43, 64
  br i1 %exitcond.not, label %bb.h, label %bb.e, !llvm.loop !90

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next48 = add i64 %indvars.iv47, 1   ; 2 uses
  %i.n = and i64 %indvars.iv.next48, 4294967295
  %i.o = icmp samesign ugt i64 %i.b, %i.n
  %indvars.iv.next = add i32 %indvars.iv, 64
  br i1 %i.o, label %.lr.ph, label %.loopexit, !llvm.loop !91

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.c
  %.029 = phi i32 [ -14, %bb.c ], [ 0, %bb.d ], [ 0, %bb.h ]
  ret i32 %.029
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_get_priority_max(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_get_priority_min(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sched_rr_get_interval(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @do_prctl(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  switch i64 %1, label %bb.w [
    i64 2, label %bb.b
    i64 1, label %bb.f
    i64 16, label %bb.h
    i64 15, label %bb.k
    i64 46, label %get_errno.exit154
    i64 45, label %get_errno.exit154
    i64 51, label %get_errno.exit154
    i64 50, label %get_errno.exit154
    i64 64, label %get_errno.exit154
    i64 63, label %get_errno.exit154
    i64 54, label %get_errno.exit154
    i64 55, label %get_errno.exit154
    i64 56, label %get_errno.exit154
    i64 74, label %get_errno.exit154
    i64 75, label %get_errno.exit154
    i64 76, label %get_errno.exit154
    i64 5, label %get_errno.exit154
    i64 6, label %get_errno.exit154
    i64 59, label %bb.n
    i64 47, label %bb.o
    i64 23, label %bb.o
    i64 24, label %bb.o
    i64 3, label %bb.o
    i64 4, label %bb.o
    i64 7, label %bb.o
    i64 8, label %bb.o
    i64 27, label %bb.o
    i64 28, label %bb.o
    i64 13, label %bb.o
    i64 14, label %bb.o
    i64 30, label %bb.o
    i64 29, label %bb.o
    i64 33, label %bb.o
    i64 34, label %bb.o
    i64 39, label %bb.o
    i64 38, label %bb.o
    i64 58, label %bb.o
    i64 57, label %bb.o
    i64 36, label %bb.o
    i64 52, label %bb.o
    i64 53, label %bb.o
    i64 37, label %bb.q
    i64 40, label %bb.u
    i64 11, label %get_errno.exit154
    i64 12, label %get_errno.exit154
    i64 19, label %get_errno.exit154
    i64 20, label %get_errno.exit154
    i64 9, label %get_errno.exit154
    i64 10, label %get_errno.exit154
    i64 35, label %get_errno.exit154
    i64 21, label %get_errno.exit154
    i64 22, label %get_errno.exit154
    i64 42, label %get_errno.exit154
    i64 41, label %get_errno.exit154
    i64 25, label %get_errno.exit154
    i64 26, label %get_errno.exit154
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !annotation !18
  %i.c = call i32 (i32, ...) @prctl(i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %get_errno.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = sub i32 0, %i.f
  br label %get_errno.exit

get_errno.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i.in = phi i32 [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.0.i = sext i32 %.0.i.in to i64                ; 2 uses
  %i.h = icmp ult i32 %.0.i.in, -4096
  br i1 %i.h, label %bb.d, label %.critedge

bb.d:                                             ; preds = %get_errno.exit
  %i.i = call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 4, i1 noundef zeroext false) #29 ; 2 uses
  %.not149.not = icmp eq ptr %i.i, null
  br i1 %.not149.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 4
  %i.k = call i32 @host_to_target_signal(i32 noundef %i.j) #29
  store i32 %i.k, ptr %i.i, align 1
  br label %.critedge

.critedge:                                        ; preds = %get_errno.exit, %bb.e, %bb.d
  %.0 = phi i64 [ -14, %bb.d ], [ %.0.i, %bb.e ], [ %.0.i, %get_errno.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %get_errno.exit154

bb.f:                                             ; preds = %bb.a
  %i.l = trunc i64 %2 to i32
  %i.m = tail call i32 @target_to_host_signal(i32 noundef %i.l) #29
  %i.n = tail call i32 (i32, ...) @prctl(i32 noundef 1, i32 noundef %i.m, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, -1
  br i1 %i.p, label %bb.g, label %get_errno.exit154

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @__errno_location() #28
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sub i32 0, %i.r
  %i.t = sext i32 %i.s to i64
  br label %get_errno.exit154

bb.h:                                             ; preds = %bb.a
  %i.u = tail call ptr @lock_user(i32 noundef 3, i64 noundef %2, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not147 = icmp eq ptr %i.u, null
  br i1 %.not147, label %get_errno.exit154, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = tail call i32 (i32, ...) @prctl(i32 noundef 16, i64 noundef %i.v, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, -1
  br i1 %i.y, label %bb.j, label %get_errno.exit154

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @__errno_location() #28
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = sub i32 0, %i.aa
  %i.ac = sext i32 %i.ab to i64
  br label %get_errno.exit154

bb.k:                                             ; preds = %bb.a
  %i.ad = tail call ptr @lock_user(i32 noundef 1, i64 noundef %2, i64 noundef 16, i1 noundef zeroext true) #29 ; 2 uses
  %.not146 = icmp eq ptr %i.ad, null
  br i1 %.not146, label %get_errno.exit154, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = tail call i32 (i32, ...) @prctl(i32 noundef 15, i64 noundef %i.ae, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, -1
  br i1 %i.ah, label %bb.m, label %get_errno.exit154

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call ptr @__errno_location() #28
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sub i32 0, %i.aj
  %i.al = sext i32 %i.ak to i64
  br label %get_errno.exit154

bb.n:                                             ; preds = %bb.a
  %i.am = tail call fastcc i64 @do_prctl_syscall_user_dispatch(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  br label %get_errno.exit154

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.an = trunc nuw nsw i64 %1 to i32
  %i.ao = tail call i32 (i32, ...) @prctl(i32 noundef %i.an, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %bb.p, label %get_errno.exit154

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call ptr @__errno_location() #28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub i32 0, %i.as
  %i.au = sext i32 %i.at to i64
  br label %get_errno.exit154

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !annotation !18
  %i.av = call i32 (i32, ...) @prctl(i32 noundef 37, ptr noundef nonnull %i.b, i64 noundef %3, i64 noundef %4, i64 noundef %5) #29 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.r, label %get_errno.exit162

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call ptr @__errno_location() #28
end_hunk_0
