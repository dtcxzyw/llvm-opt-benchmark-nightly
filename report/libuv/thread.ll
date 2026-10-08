Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/thread?download=true
inline.NumInlined: 36
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uv_thread_getaffinity:bb.a

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.i = icmp samesign ult i64 %indvars.iv, 1024
  br i1 %i.i, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.j = lshr i64 %indvars.iv, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %indvars.iv, 62
  %i.n = lshr i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %i.q = phi i8 [ %i.p, %bb.e ], [ 0, %.lr.ph ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.q, ptr %i.r, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv, 1024
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.t = lshr i64 %indvars.iv, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %indvars.iv.next, 63
  %i.x = lshr i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i8
  %i.z = and i8 %i.y, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %i.aa = phi i8 [ %i.z, %bb.f ], [ 0, %.lr.ph.1 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.aa, ptr %i.ab, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod26 = trunc i32 %i.a to i1
  call void @llvm.assume(i1 %lcmp.mod26)
  %i.ac = icmp samesign ult i64 %indvars.iv.epil.init, 1024
  br i1 %i.ac, label %bb.h, label %.loopexit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.ad = lshr i64 %indvars.iv.epil.init, 6
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = and i64 %indvars.iv.epil.init, 63
  %i.ah = lshr i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = and i8 %i.ai, 1
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.h, %.lr.ph.epil.preheader
  %i.ak = phi i8 [ %i.aj, %bb.h ], [ 0, %.lr.ph.epil.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  store i8 %i.ak, ptr %i.al, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -22, %bb.b ], [ %i.a, %bb.a ], [ %i.h, %bb.d ], [ 0, %.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.loopexit.loopexit.epilog-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @pthread_setaffinity_np(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_getaffinity_np(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_thread_getcpu() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @sched_getcpu() #12        ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #13
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define i64 @uv_thread_self() local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @pthread_self() #13
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_thread_join(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call i32 @pthread_join(i64 noundef %i.a, ptr noundef null) #12
  %i.c = sub nsw i32 0, %i.b
  ret i32 %i.c
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @uv_thread_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = icmp eq i64 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_thread_setname(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull readonly dereferenceable(1) %0, i64 noundef 15) #12 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 0, ptr %i.d, align 1
  %i.e = tail call i64 @pthread_self() #13
  %i.f = call i32 @pthread_setname_np(i64 noundef %i.e, ptr noundef nonnull %i.a) #12
  %i.g = sub nsw i32 0, %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__thread_setname(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 15) #12 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 0, ptr %i.c, align 1
  %i.d = tail call i64 @pthread_self() #13
  %i.e = call i32 @pthread_setname_np(i64 noundef %i.d, ptr noundef nonnull %i.a) #12
  %i.f = sub nsw i32 0, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_thread_getname(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = load i64, ptr %0, align 8
  %i.e = call i32 @pthread_getname_np(i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 16) #12 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i32 0, %i.e
  br label %uv__thread_getname.exit

bb.d:                                             ; preds = %bb.b
  %i.g = add i64 %2, -1
  %i.h = call ptr @strncpy(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.g) #12 ; 0 uses
  %3 = getelementptr i8, ptr %1, i64 %2
  %i.i = getelementptr i8, ptr %3, i64 -1
  store i8 0, ptr %i.i, align 1
  br label %uv__thread_getname.exit

uv__thread_getname.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %uv__thread_getname.exit
  %.0 = phi i32 [ %.0.i, %uv__thread_getname.exit ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__thread_getname(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load i64, ptr %0, align 8
  %i.c = call i32 @pthread_getname_np(i64 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 16) #12 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 0, %i.c
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %2, -1
  %i.f = call ptr @strncpy(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.e) #12 ; 0 uses
  %3 = getelementptr i8, ptr %1, i64 %2
  %i.g = getelementptr i8, ptr %3, i64 -1
  store i8 0, ptr %i.g, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_mutex_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null) #12
  %i.b = sub nsw i32 0, %i.a
  ret i32 %i.b
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_mutex_init_recursive(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.pthread_mutexattr_t, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = call i32 @pthread_mutexattr_init(ptr noundef nonnull %1) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = call i32 @pthread_mutexattr_settype(ptr noundef nonnull %1, i32 noundef 1) #12
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef nonnull %1) #12
  %i.d = call i32 @pthread_mutexattr_destroy(ptr noundef nonnull %1) #12
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @abort() #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = sub nsw i32 0, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 %i.e
}

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @uv_mutex_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_destroy(ptr noundef %0) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @uv_mutex_lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef %0) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -16, 1) i32 @uv_mutex_trylock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef %0) #12 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 16, label %.fold.split
    i32 11, label %.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

.fold.split:                                      ; preds = %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.fold.split
  %.0 = phi i32 [ %i.a, %bb.a ], [ -16, %.fold.split ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @uv_mutex_unlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef %0) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_rwlock_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_init(ptr noundef %0, ptr noundef null) #12
  %i.b = sub nsw i32 0, %i.a
  ret i32 %i.b
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @uv_rwlock_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_destroy(ptr noundef %0) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @uv_rwlock_rdlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_rdlock(ptr noundef %0) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -16, 1) i32 @uv_rwlock_tryrdlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_rwlock_tryrdlock(ptr noundef %0) #12 ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 16, label %.fold.split
end_hunk_0
