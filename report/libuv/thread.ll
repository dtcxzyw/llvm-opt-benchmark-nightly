Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/thread?download=true
inline.NumInlined: 36
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uv__thread_stack_size:bb.a
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @getpagesize() #13
  %i.e = sext i32 %i.d to i64
  %i.f = urem i64 %i.b, %i.e
  %i.g = sub nuw i64 %i.b, %i.f                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = call i64 @__sysconf(i32 noundef 75) #12
  %i.i = icmp ugt i64 %i.h, 8192
  br i1 %i.i, label %bb.d, label %uv__min_stack_size.exit

bb.d:                                             ; preds = %bb.c
  %i.j = call i64 @__sysconf(i32 noundef 75) #12
  br label %uv__min_stack_size.exit

uv__min_stack_size.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.j, %bb.d ], [ 8192, %bb.c ]
  %.not2 = icmp ult i64 %i.g, %.0.i
  %i.k = load i64, ptr %0, align 8
  %spec.select = select i1 %.not2, i64 2097152, i64 %i.k
  br label %bb.e

bb.e:                                             ; preds = %uv__min_stack_size.exit, %bb.b, %bb.a
  %.0 = phi i64 [ 2097152, %bb.b ], [ 2097152, %bb.a ], [ %spec.select, %uv__min_stack_size.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @getrlimit64(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_thread_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.uv_thread_options_s, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 0, ptr %3, align 8
  %i.a = call i32 @uv_thread_create_ex(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_thread_create_ex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rlimit, align 8             ; 6 uses
  %5 = alloca %union.pthread_attr_t, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.f = call i32 @getrlimit64(i32 noundef 3, ptr noundef nonnull %4) #12
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %uv__thread_stack_size.exit

bb.c:                                             ; preds = %.thread
  %i.g = load i64, ptr %4, align 8                ; 3 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %uv__thread_stack_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @getpagesize() #13
  %i.j = sext i32 %i.i to i64
  %i.k = urem i64 %i.g, %i.j
  %i.l = sub nuw i64 %i.g, %i.k                   ; 2 uses
  store i64 %i.l, ptr %4, align 8
  %i.m = call i64 @__sysconf(i32 noundef 75) #12
  %i.n = icmp ugt i64 %i.m, 8192
  br i1 %i.n, label %bb.e, label %uv__min_stack_size.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = call i64 @__sysconf(i32 noundef 75) #12
  br label %uv__min_stack_size.exit.i

uv__min_stack_size.exit.i:                        ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.o, %bb.e ], [ 8192, %bb.d ]
  %.not2.i = icmp ult i64 %i.l, %.0.i.i
  %i.p = load i64, ptr %4, align 8
  %spec.select.i = select i1 %.not2.i, i64 2097152, i64 %i.p
  br label %uv__thread_stack_size.exit

uv__thread_stack_size.exit:                       ; preds = %.thread, %bb.c, %uv__min_stack_size.exit.i
  %.0.i = phi i64 [ 2097152, %bb.c ], [ 2097152, %.thread ], [ %spec.select.i, %uv__min_stack_size.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.q = tail call i32 @getpagesize() #13
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = add i64 %i.d, -1
  %i.t = add i64 %i.s, %i.r
  %i.u = sub nsw i64 0, %i.r
  %i.v = and i64 %i.t, %i.u
  %i.w = tail call i64 @__sysconf(i32 noundef 75) #12
  %i.x = icmp ugt i64 %i.w, 8192
  br i1 %i.x, label %bb.g, label %uv__min_stack_size.exit

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i64 @__sysconf(i32 noundef 75) #12
  br label %uv__min_stack_size.exit

uv__min_stack_size.exit:                          ; preds = %bb.f, %bb.g
  %.0.i27 = phi i64 [ %i.y, %bb.g ], [ 8192, %bb.f ]
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %.0.i27)
  br label %bb.h

bb.h:                                             ; preds = %uv__min_stack_size.exit, %uv__thread_stack_size.exit
  %.0 = phi i64 [ %.0.i, %uv__thread_stack_size.exit ], [ %spec.select, %uv__min_stack_size.exit ] ; 2 uses
  %.not23 = icmp eq i64 %.0, 0
  br i1 %.not23, label %.thread28, label %bb.i

.thread28:                                        ; preds = %bb.h
  %i.z = call i32 @pthread_create(ptr noundef %0, ptr noundef null, ptr noundef %2, ptr noundef %3) #12
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.aa = call i32 @pthread_attr_init(ptr noundef nonnull %5) #12
  %.not24 = icmp eq i32 %i.aa, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @abort() #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %5, i64 noundef %.0) #12
  %.not25 = icmp eq i32 %i.ab, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @abort() #14
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ac = call i32 @pthread_create(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #12
  %i.ad = call i32 @pthread_attr_destroy(ptr noundef nonnull %5) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.thread28, %bb.m
  %i.ae = phi i32 [ %i.z, %.thread28 ], [ %i.ac, %bb.m ]
  %i.af = sub nsw i32 0, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %i.af
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_thread_detach(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = tail call i32 @pthread_detach(i64 noundef %i.a) #12
  %i.c = sub nsw i32 0, %i.b
  ret i32 %i.c
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_attr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @uv_thread_setaffinity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.cpu_set_t, align 8          ; 9 uses
  %5 = alloca %struct.cpu_set_t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = tail call i32 @uv_cpumask_size() #12     ; 5 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = icmp ult i64 %3, %i.c
  br i1 %i.d, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.e = tail call i32 @uv_cpumask_size() #12     ; 6 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %uv_thread_getaffinity.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i32 %i.e to i64                ; 3 uses
  %i.h = icmp ult i64 %3, %i.g
  br i1 %i.h, label %uv_thread_getaffinity.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %i.i = load i64, ptr %0, align 8
  %i.j = call i32 @pthread_getaffinity_np(i64 noundef %i.i, i64 noundef 128, ptr noundef nonnull %4) #12 ; 3 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader.i, label %uv_thread_getaffinity.exit

.preheader.i:                                     ; preds = %bb.f
  %.not21.i = icmp eq i32 %i.e, 0
  br i1 %.not21.i, label %uv_thread_getaffinity.exit.thread29, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %i.g, 1
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.g, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %bb.i ] ; 8 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.l = icmp samesign ult i64 %indvars.iv.i, 1024
  br i1 %i.l, label %bb.g, label %.lr.ph.i.1

bb.g:                                             ; preds = %.lr.ph.i
  %i.m = lshr i64 %indvars.iv.i, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %indvars.iv.i, 62
  %i.q = lshr i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i8
  %i.s = and i8 %i.r, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g, %.lr.ph.i
  %i.t = phi i8 [ %i.s, %bb.g ], [ 0, %.lr.ph.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  store i8 %i.t, ptr %i.u, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.i, 1024
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.w = lshr i64 %indvars.iv.i, 6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %indvars.iv.next.i, 63
  %i.aa = lshr i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = and i8 %i.ab, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.1
  %i.ad = phi i8 [ %i.ac, %bb.h ], [ 0, %.lr.ph.i.1 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i
  store i8 %i.ad, ptr %i.ae, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %uv_thread_getaffinity.exit.thread29.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

uv_thread_getaffinity.exit.thread:                ; preds = %bb.e, %bb.d
  %.0.i.ph = phi i32 [ %i.e, %bb.d ], [ -22, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.n

uv_thread_getaffinity.exit.thread29.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %uv_thread_getaffinity.exit.thread29, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %uv_thread_getaffinity.exit.thread29.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %uv_thread_getaffinity.exit.thread29.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod41 = trunc i32 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.af = icmp samesign ult i64 %indvars.iv.i.epil.init, 1024
  br i1 %i.af, label %bb.j, label %uv_thread_getaffinity.exit.thread29.loopexit.epilog-lcssa

bb.j:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ag = lshr i64 %indvars.iv.i.epil.init, 6
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %indvars.iv.i.epil.init, 63
  %i.ak = lshr i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i8
  %i.am = and i8 %i.al, 1
  br label %uv_thread_getaffinity.exit.thread29.loopexit.epilog-lcssa

uv_thread_getaffinity.exit.thread29.loopexit.epilog-lcssa: ; preds = %bb.j, %.lr.ph.i.epil.preheader
  %i.an = phi i8 [ %i.am, %bb.j ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil.init
  store i8 %i.an, ptr %i.ao, align 1
  br label %uv_thread_getaffinity.exit.thread29

uv_thread_getaffinity.exit.thread29:              ; preds = %uv_thread_getaffinity.exit.thread29.loopexit.epilog-lcssa, %uv_thread_getaffinity.exit.thread29.loopexit.unr-lcssa, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.k

uv_thread_getaffinity.exit:                       ; preds = %bb.f
  %i.ap = sub nsw i32 0, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.aq = icmp sgt i32 %i.j, 0
  br i1 %i.aq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %uv_thread_getaffinity.exit.thread29, %bb.c, %uv_thread_getaffinity.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %.not32 = icmp eq i32 %i.a, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1
  %.not26 = icmp ne i8 %i.as, 0
  %i.at = icmp samesign ult i64 %indvars.iv, 1024
  %or.cond = select i1 %.not26, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.au = and i64 %indvars.iv, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = lshr i64 %indvars.iv, 6
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = or i64 %i.ay, %i.av
  store i64 %i.az, ptr %i.ax, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.m, %bb.k
  %i.ba = load i64, ptr %0, align 8
  %i.bb = call i32 @pthread_setaffinity_np(i64 noundef %i.ba, i64 noundef 128, ptr noundef nonnull %5) #12
  %i.bc = sub nsw i32 0, %i.bb
  br label %bb.n

bb.n:                                             ; preds = %uv_thread_getaffinity.exit.thread, %uv_thread_getaffinity.exit, %bb.b, %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.bc, %._crit_edge ], [ %i.a, %bb.a ], [ -22, %bb.b ], [ %i.ap, %uv_thread_getaffinity.exit ], [ %.0.i.ph, %uv_thread_getaffinity.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.0
}

declare i32 @uv_cpumask_size() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @uv_thread_getaffinity(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cpu_set_t, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = tail call i32 @uv_cpumask_size() #12     ; 6 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 3 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %i.e = load i64, ptr %0, align 8
  %i.f = call i32 @pthread_getaffinity_np(i64 noundef %i.e, i64 noundef 128, ptr noundef nonnull %3) #12 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %.not21 = icmp eq i32 %i.a, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.c, 1
  %i.g = icmp eq i32 %i.a, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, 2147483646
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.h = sub nsw i32 0, %i.f
  br label %.loopexit

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
end_hunk_0
