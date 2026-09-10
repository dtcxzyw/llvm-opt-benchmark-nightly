Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/hugify?download=true
inline.NumInlined: 30
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@memmove:bb.a
  %i.q = load i8, ptr %i.m, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.01430, i64 4
  store i8 %i.q, ptr %i.o, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.031, i64 5
  %i.t = load i8, ptr %i.p, align 1, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %.01430, i64 5
  store i8 %i.t, ptr %i.r, align 1, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %.031, i64 6
  %i.w = load i8, ptr %i.s, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %.01430, i64 6
  store i8 %i.w, ptr %i.u, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.031, i64 7
  %i.z = load i8, ptr %i.v, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01430, i64 7
  store i8 %i.z, ptr %i.x, align 1, !tbaa !8
  %i.ab = add i64 %.01629, -8                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01430, i64 8
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !8
  %.not22.7 = icmp eq i64 %i.ab, 0
  br i1 %.not22.7, label %.loopexit, label %.lr.ph32, !llvm.loop !13

bb.b:                                             ; preds = %bb.a
  br i1 %.not2228, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.af = add i64 %2, -1                          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 2 uses
  %xtraiter = and i64 %2, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.127.prol = phi ptr [ %i.aj, %.lr.ph.prol ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.11526.prol = phi ptr [ %i.al, %.lr.ph.prol ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %.11725.prol = phi i64 [ %i.ai, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ai = add i64 %.11725.prol, -1                ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.127.prol, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %.127.prol, align 1, !tbaa !8
  %i.al = getelementptr inbounds i8, ptr %.11526.prol, i64 -1 ; 2 uses
  store i8 %i.ak, ptr %.11526.prol, align 1, !tbaa !8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !14

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.127.unr = phi ptr [ %i.ah, %.lr.ph.preheader ], [ %i.aj, %.lr.ph.prol ]
  %.11526.unr = phi ptr [ %i.ag, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %.11725.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %i.am = icmp ult i64 %2, 8
  br i1 %i.am, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.127 = phi ptr [ %i.bj, %.lr.ph ], [ %.127.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.11526 = phi ptr [ %i.bl, %.lr.ph ], [ %.11526.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.11725 = phi i64 [ %i.bi, %.lr.ph ], [ %.11725.unr, %.lr.ph.prol.loopexit ]
  %i.an = getelementptr inbounds i8, ptr %.127, i64 -1
  %i.ao = load i8, ptr %.127, align 1, !tbaa !8
  %i.ap = getelementptr inbounds i8, ptr %.11526, i64 -1
  store i8 %i.ao, ptr %.11526, align 1, !tbaa !8
  %i.aq = getelementptr inbounds i8, ptr %.127, i64 -2
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !8
  %i.as = getelementptr inbounds i8, ptr %.11526, i64 -2
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !8
  %i.at = getelementptr inbounds i8, ptr %.127, i64 -3
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.av = getelementptr inbounds i8, ptr %.11526, i64 -3
  store i8 %i.au, ptr %i.as, align 1, !tbaa !8
  %i.aw = getelementptr inbounds i8, ptr %.127, i64 -4
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !8
  %i.ay = getelementptr inbounds i8, ptr %.11526, i64 -4
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !8
  %i.az = getelementptr inbounds i8, ptr %.127, i64 -5
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.bb = getelementptr inbounds i8, ptr %.11526, i64 -5
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !8
  %i.bc = getelementptr inbounds i8, ptr %.127, i64 -6
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !8
  %i.be = getelementptr inbounds i8, ptr %.11526, i64 -6
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !8
  %i.bf = getelementptr inbounds i8, ptr %.127, i64 -7
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.bh = getelementptr inbounds i8, ptr %.11526, i64 -7
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !8
  %i.bi = add i64 %.11725, -8                     ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.127, i64 -8
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bl = getelementptr inbounds i8, ptr %.11526, i64 -8
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !8
  %.not.7 = icmp eq i64 %i.bi, 0
  br i1 %.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph32.prol.loopexit, %.lr.ph32, %bb.b, %.preheader
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write)
define noundef ptr @memset(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = trunc i32 %1 to i8                       ; 9 uses
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.b = icmp ult i64 %2, 8
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, -8
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.067.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.k, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.067.epil = phi ptr [ %.067.epil.init, %.epil.preheader ], [ %i.c, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.067.epil, i64 1
  store i8 %i.a, ptr %.067.epil, align 1, !tbaa !8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.067 = phi ptr [ %0, %.lr.ph.new ], [ %i.k, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.d = getelementptr inbounds nuw i8, ptr %.067, i64 1
  store i8 %i.a, ptr %.067, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %.067, i64 2
  store i8 %i.a, ptr %i.d, align 1, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %.067, i64 3
  store i8 %i.a, ptr %i.e, align 1, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %.067, i64 4
  store i8 %i.a, ptr %i.f, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %.067, i64 5
  store i8 %i.a, ptr %i.g, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %.067, i64 6
  store i8 %i.a, ptr %i.h, align 1, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %.067, i64 7
  store i8 %i.a, ptr %i.i, align 1, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %.067, i64 8 ; 2 uses
  store i8 %i.a, ptr %i.j, align 1, !tbaa !8
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define range(i32 -1, 2) i32 @memcmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not16 = icmp eq i64 %2, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.in = phi i64 [ %i.e, %bb.c ], [ %2, %bb.a ]
  %.018 = phi ptr [ %i.g, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %.0917 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = load i8, ptr %.0917, align 1, !tbaa !8   ; 2 uses
  %i.b = load i8, ptr %.018, align 1, !tbaa !8    ; 2 uses
  %.not14 = icmp eq i8 %i.a, %i.b
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp ult i8 %i.a, %i.b
  %i.d = select i1 %i.c, i32 -1, i32 1
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.e = add i64 %.in, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0917, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %.018, i64 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.011 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.011
}

; Function Attrs: mustprogress nounwind
define hidden void @__bolt_hugify_self_impl() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [42 x i8], align 16               ; 4 uses
  %0 = alloca %"struct.(anonymous namespace)::UtsNameTy", align 1 ; 8 uses
  %i.d = alloca [64 x i8], align 16               ; 74 uses
  %i.e = alloca [40 x i8], align 16               ; 4 uses
  %i.f = and i64 ptrtoint (ptr @__hot_start to i64), 2097144
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr @__hot_start, i64 %i.g ; 8 uses
  %i.i = and i64 ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @__hot_end, i64 2097151) to i64), 2097151
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @__hot_end, i64 2097151), i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.l = tail call noundef i64 asm sideeffect "movq $$2, %rax\0Asyscall", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, i64 0, i64 0) #7, !srcloc !22 ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %.sink.split

.preheader.preheader.i:                           ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.d, align 16, !tbaa !8
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 0, ptr %1, align 1, !tbaa !8
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 0, ptr %2, align 2, !tbaa !8
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 0, ptr %3, align 1, !tbaa !8
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  store i8 0, ptr %4, align 4, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i8 0, ptr %5, align 1, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  store i8 0, ptr %6, align 2, !tbaa !8
  %8 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 0, ptr %7, align 1, !tbaa !8
  %9 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store i8 0, ptr %8, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  store i8 0, ptr %9, align 1, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  store i8 0, ptr %10, align 2, !tbaa !8
  %12 = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 0, ptr %11, align 1, !tbaa !8
  %13 = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  store i8 0, ptr %12, align 4, !tbaa !8
  %14 = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  store i8 0, ptr %13, align 1, !tbaa !8
  %15 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 0, ptr %14, align 2, !tbaa !8
  %16 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %15, align 1, !tbaa !8
  %17 = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  store i8 0, ptr %16, align 16, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i8 0, ptr %17, align 1, !tbaa !8
  %19 = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  store i8 0, ptr %18, align 2, !tbaa !8
  %20 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 0, ptr %19, align 1, !tbaa !8
  %21 = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  store i8 0, ptr %20, align 4, !tbaa !8
  %22 = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i8 0, ptr %21, align 1, !tbaa !8
  %23 = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  store i8 0, ptr %22, align 2, !tbaa !8
  %24 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %23, align 1, !tbaa !8
  %25 = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  store i8 0, ptr %24, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  store i8 0, ptr %25, align 1, !tbaa !8
  %27 = getelementptr inbounds nuw i8, ptr %i.d, i64 27
  store i8 0, ptr %26, align 2, !tbaa !8
  %28 = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i8 0, ptr %27, align 1, !tbaa !8
  %29 = getelementptr inbounds nuw i8, ptr %i.d, i64 29
  store i8 0, ptr %28, align 4, !tbaa !8
  %30 = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  store i8 0, ptr %29, align 1, !tbaa !8
  %31 = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  store i8 0, ptr %30, align 2, !tbaa !8
  %32 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 0, ptr %31, align 1, !tbaa !8
  %33 = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  store i8 0, ptr %32, align 16, !tbaa !8
  %34 = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  store i8 0, ptr %33, align 1, !tbaa !8
  %35 = getelementptr inbounds nuw i8, ptr %i.d, i64 35
  store i8 0, ptr %34, align 2, !tbaa !8
  %36 = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i8 0, ptr %35, align 1, !tbaa !8
  %37 = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  store i8 0, ptr %36, align 4, !tbaa !8
  %38 = getelementptr inbounds nuw i8, ptr %i.d, i64 38
  store i8 0, ptr %37, align 1, !tbaa !8
  %39 = getelementptr inbounds nuw i8, ptr %i.d, i64 39
  store i8 0, ptr %38, align 2, !tbaa !8
  %40 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 0, ptr %39, align 1, !tbaa !8
  %41 = getelementptr inbounds nuw i8, ptr %i.d, i64 41
  store i8 0, ptr %40, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw i8, ptr %i.d, i64 42
  store i8 0, ptr %41, align 1, !tbaa !8
  %43 = getelementptr inbounds nuw i8, ptr %i.d, i64 43
  store i8 0, ptr %42, align 2, !tbaa !8
  %44 = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i8 0, ptr %43, align 1, !tbaa !8
  %45 = getelementptr inbounds nuw i8, ptr %i.d, i64 45
  store i8 0, ptr %44, align 4, !tbaa !8
  %46 = getelementptr inbounds nuw i8, ptr %i.d, i64 46
  store i8 0, ptr %45, align 1, !tbaa !8
  %47 = getelementptr inbounds nuw i8, ptr %i.d, i64 47
  store i8 0, ptr %46, align 2, !tbaa !8
  %48 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 0, ptr %47, align 1, !tbaa !8
  %49 = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  store i8 0, ptr %48, align 16, !tbaa !8
  %50 = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  store i8 0, ptr %49, align 1, !tbaa !8
  %51 = getelementptr inbounds nuw i8, ptr %i.d, i64 51
  store i8 0, ptr %50, align 2, !tbaa !8
  %52 = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i8 0, ptr %51, align 1, !tbaa !8
  %53 = getelementptr inbounds nuw i8, ptr %i.d, i64 53
  store i8 0, ptr %52, align 4, !tbaa !8
  %54 = getelementptr inbounds nuw i8, ptr %i.d, i64 54
  store i8 0, ptr %53, align 1, !tbaa !8
  %55 = getelementptr inbounds nuw i8, ptr %i.d, i64 55
  store i8 0, ptr %54, align 2, !tbaa !8
  %56 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i8 0, ptr %55, align 1, !tbaa !8
  %57 = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  store i8 0, ptr %56, align 8, !tbaa !8
  %58 = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  store i8 0, ptr %57, align 1, !tbaa !8
  %59 = getelementptr inbounds nuw i8, ptr %i.d, i64 59
  store i8 0, ptr %58, align 2, !tbaa !8
  %60 = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i8 0, ptr %59, align 1, !tbaa !8
  %61 = getelementptr inbounds nuw i8, ptr %i.d, i64 61
  store i8 0, ptr %60, align 4, !tbaa !8
  %62 = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  store i8 0, ptr %61, align 1, !tbaa !8
  %63 = getelementptr inbounds nuw i8, ptr %i.d, i64 63
  store i8 0, ptr %62, align 2, !tbaa !8
  store i8 0, ptr %63, align 1, !tbaa !8
  %64 = and i64 %i.l, 2147483647
  %i.n = call noundef i64 asm sideeffect "movq $$0, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 2147483648) %64, ptr nonnull %i.d, i64 64) #7, !srcloc !23 ; 0 uses
  %i.o = load i8, ptr %i.d, align 16, !tbaa !8
  %.not3.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not3.i.i.i, label %.sink.split, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.preheader.preheader.i, %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i
  %indvars.iv63.i.i = phi i64 [ %indvars.iv.next64.i.i, %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi i32 [ %i.q, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %.024.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.d, %.lr.ph.i.preheader.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1 ; 2 uses
  %i.q = add i32 %.05.i.i.i, 1                    ; 2 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !8
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i.i:   ; preds = %.lr.ph.i.i.i
  %i.s = zext i32 %i.q to i64
  %.not22.i.i = icmp samesign ult i64 %indvars.iv63.i.i, %i.s
  br i1 %.not22.i.i, label %bb.b, label %.lr.ph.i.preheader.i10.i

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv63.i.i ; 8 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = icmp eq i8 %i.u, 91
  br i1 %i.v, label %.lr.ph.i24.preheader.i.preheader.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

.lr.ph.i24.preheader.i.preheader.i:               ; preds = %bb.b
  %gep.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.w = load i8, ptr %gep.i.i, align 1, !tbaa !8
  %.not.i.i = icmp eq i8 %i.w, 97
  br i1 %.not.i.i, label %.lr.ph.i24.preheader.i.1.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

.lr.ph.i24.preheader.i.1.i:                       ; preds = %.lr.ph.i24.preheader.i.preheader.i
  %gep.i.1.i = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i8, ptr %gep.i.1.i, align 1, !tbaa !8
  %.not.i.1.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i, label %.lr.ph.i24.preheader.i.2.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

.lr.ph.i24.preheader.i.2.i:                       ; preds = %.lr.ph.i24.preheader.i.1.i
  %gep.i.2.i = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.y = load i8, ptr %gep.i.2.i, align 1, !tbaa !8
  %.not.i.2.i = icmp eq i8 %i.y, 119
  br i1 %.not.i.2.i, label %.lr.ph.i24.preheader.i.3.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

.lr.ph.i24.preheader.i.3.i:                       ; preds = %.lr.ph.i24.preheader.i.2.i
  %gep.i.3.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.z = load i8, ptr %gep.i.3.i, align 1, !tbaa !8
  %.not.i.3.i = icmp eq i8 %i.z, 97
  br i1 %.not.i.3.i, label %.lr.ph.i24.preheader.i.4.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

.lr.ph.i24.preheader.i.4.i:                       ; preds = %.lr.ph.i24.preheader.i.3.i
  %gep.i.4.i = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.aa = load i8, ptr %gep.i.4.i, align 1, !tbaa !8
  %.not.i.4.i = icmp eq i8 %i.aa, 121
  br i1 %.not.i.4.i, label %.lr.ph.i24.preheader.i.5.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

.lr.ph.i24.preheader.i.5.i:                       ; preds = %.lr.ph.i24.preheader.i.4.i
  %gep.i.5.i = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.ab = load i8, ptr %gep.i.5.i, align 1, !tbaa !8
  %.not.i.5.i = icmp eq i8 %i.ab, 115
  br i1 %.not.i.5.i, label %.lr.ph.i24.preheader.i.6.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

.lr.ph.i24.preheader.i.6.i:                       ; preds = %.lr.ph.i24.preheader.i.5.i
  %gep.i.6.i = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.ac = load i8, ptr %gep.i.6.i, align 1, !tbaa !8
  %.not.i.6.i = icmp eq i8 %i.ac, 93
  br i1 %.not.i.6.i, label %_ZN12_GLOBAL__N_16strStrEPKcS1_.exit.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i

_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i.i:   ; preds = %.lr.ph.i24.preheader.i.6.i, %.lr.ph.i24.preheader.i.5.i, %.lr.ph.i24.preheader.i.4.i, %.lr.ph.i24.preheader.i.3.i, %.lr.ph.i24.preheader.i.2.i, %.lr.ph.i24.preheader.i.1.i, %.lr.ph.i24.preheader.i.preheader.i, %bb.b
  %indvars.iv.next64.i.i = add nuw nsw i64 %indvars.iv63.i.i, 1
  br label %.lr.ph.i.preheader.i.i, !llvm.loop !20

.lr.ph.i.preheader.i10.i:                         ; preds = %_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i.i, %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i
  %indvars.iv63.i11.i = phi i64 [ %indvars.iv.next64.i20.i, %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i ], [ 0, %_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i.i ] ; 3 uses
  br label %.lr.ph.i.i12.i

.lr.ph.i.i12.i:                                   ; preds = %.lr.ph.i.i12.i, %.lr.ph.i.preheader.i10.i
  %.05.i.i13.i = phi i32 [ %i.ae, %.lr.ph.i.i12.i ], [ 0, %.lr.ph.i.preheader.i10.i ]
  %.024.i.i14.i = phi ptr [ %i.ad, %.lr.ph.i.i12.i ], [ %i.d, %.lr.ph.i.preheader.i10.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.024.i.i14.i, i64 1 ; 2 uses
  %i.ae = add i32 %.05.i.i13.i, 1                 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !8
  %.not.i.i15.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i15.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i16.i, label %.lr.ph.i.i12.i, !llvm.loop !19

_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i16.i: ; preds = %.lr.ph.i.i12.i
  %i.ag = zext i32 %i.ae to i64
  %.not22.i17.i = icmp samesign ult i64 %indvars.iv63.i11.i, %i.ag
  br i1 %.not22.i17.i, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i16.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv63.i11.i ; 9 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = icmp eq i8 %i.ai, 91
  br i1 %i.aj, label %.lr.ph.i24.preheader.i23.preheader.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.preheader.i:             ; preds = %bb.c
  %gep.i37.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ak = load i8, ptr %gep.i37.i, align 1, !tbaa !8
  %.not.i38.i = icmp eq i8 %i.ak, 109
  br i1 %.not.i38.i, label %.lr.ph.i24.preheader.i23.1.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.1.i:                     ; preds = %.lr.ph.i24.preheader.i23.preheader.i
  %gep.i37.1.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.al = load i8, ptr %gep.i37.1.i, align 1, !tbaa !8
  %.not.i38.1.i = icmp eq i8 %i.al, 97
  br i1 %.not.i38.1.i, label %.lr.ph.i24.preheader.i23.2.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.2.i:                     ; preds = %.lr.ph.i24.preheader.i23.1.i
  %gep.i37.2.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.am = load i8, ptr %gep.i37.2.i, align 1, !tbaa !8
  %.not.i38.2.i = icmp eq i8 %i.am, 100
  br i1 %.not.i38.2.i, label %.lr.ph.i24.preheader.i23.3.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.3.i:                     ; preds = %.lr.ph.i24.preheader.i23.2.i
  %gep.i37.3.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.an = load i8, ptr %gep.i37.3.i, align 1, !tbaa !8
  %.not.i38.3.i = icmp eq i8 %i.an, 118
  br i1 %.not.i38.3.i, label %.lr.ph.i24.preheader.i23.4.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.4.i:                     ; preds = %.lr.ph.i24.preheader.i23.3.i
  %gep.i37.4.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  %i.ao = load i8, ptr %gep.i37.4.i, align 1, !tbaa !8
  %.not.i38.4.i = icmp eq i8 %i.ao, 105
  br i1 %.not.i38.4.i, label %.lr.ph.i24.preheader.i23.5.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.5.i:                     ; preds = %.lr.ph.i24.preheader.i23.4.i
  %gep.i37.5.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  %i.ap = load i8, ptr %gep.i37.5.i, align 1, !tbaa !8
  %.not.i38.5.i = icmp eq i8 %i.ap, 115
  br i1 %.not.i38.5.i, label %.lr.ph.i24.preheader.i23.6.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.6.i:                     ; preds = %.lr.ph.i24.preheader.i23.5.i
  %gep.i37.6.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  %i.aq = load i8, ptr %gep.i37.6.i, align 1, !tbaa !8
  %.not.i38.6.i = icmp eq i8 %i.aq, 101
  br i1 %.not.i38.6.i, label %.lr.ph.i24.preheader.i23.7.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

.lr.ph.i24.preheader.i23.7.i:                     ; preds = %.lr.ph.i24.preheader.i23.6.i
  %gep.i37.7.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = load i8, ptr %gep.i37.7.i, align 1, !tbaa !8
  %.not.i38.7.i = icmp eq i8 %i.ar, 93
  br i1 %.not.i38.7.i, label %_ZN12_GLOBAL__N_16strStrEPKcS1_.exit.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i

_ZN12_GLOBAL__N_16strLenEPKc.exit36.thread.i19.i: ; preds = %.lr.ph.i24.preheader.i23.7.i, %.lr.ph.i24.preheader.i23.6.i, %.lr.ph.i24.preheader.i23.5.i, %.lr.ph.i24.preheader.i23.4.i, %.lr.ph.i24.preheader.i23.3.i, %.lr.ph.i24.preheader.i23.2.i, %.lr.ph.i24.preheader.i23.1.i, %.lr.ph.i24.preheader.i23.preheader.i, %bb.c
  %indvars.iv.next64.i20.i = add nuw nsw i64 %indvars.iv63.i11.i, 1
  br label %.lr.ph.i.preheader.i10.i, !llvm.loop !20

_ZN12_GLOBAL__N_16strStrEPKcS1_.exit.i:           ; preds = %.lr.ph.i24.preheader.i.6.i, %.lr.ph.i24.preheader.i23.7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #7
  %i.as = call noundef i32 asm sideeffect "movq $$63, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %0) #7, !srcloc !24 ; 0 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 2 uses
  %i.at = load i8, ptr %.ptr.i.i, align 1, !tbaa !8
  %.not3.i.i41.i = icmp eq i8 %i.at, 0
  br i1 %.not3.i.i41.i, label %_ZL22hasPagecacheTHPSupportv.exit.thread14, label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %_ZN12_GLOBAL__N_16strStrEPKcS1_.exit.i, %.lr.ph.i.i42.i
  %.05.i.i43.i = phi i32 [ %i.av, %.lr.ph.i.i42.i ], [ 0, %_ZN12_GLOBAL__N_16strStrEPKcS1_.exit.i ]
  %.024.i.i44.i = phi ptr [ %i.au, %.lr.ph.i.i42.i ], [ %.ptr.i.i, %_ZN12_GLOBAL__N_16strStrEPKcS1_.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.024.i.i44.i, i64 1 ; 2 uses
  %i.av = add i32 %.05.i.i43.i, 1                 ; 3 uses
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !8
  %.not.i.i45.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i45.i, label %_ZN12_GLOBAL__N_16strLenEPKc.exit.i.i, label %.lr.ph.i.i42.i, !llvm.loop !19

_ZN12_GLOBAL__N_16strLenEPKc.exit.i.i:            ; preds = %.lr.ph.i.i42.i
  %i.ax = zext i32 %i.av to i64
  %.add.i.i = add nuw nsw i64 %i.ax, 130          ; 4 uses
  %.ptr42.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.add.i.i ; 2 uses
  %.not.i46.i = icmp eq i32 %i.av, 0
  br i1 %.not.i46.i, label %_ZL22hasPagecacheTHPSupportv.exit.thread14, label %.lr.ph.i18.i.i

.lr.ph.i18.i.i:                                   ; preds = %_ZN12_GLOBAL__N_16strLenEPKc.exit.i.i, %bb.d
  %.3.idx.i.i = phi i64 [ %.3.add.i.i, %bb.d ], [ 130, %_ZN12_GLOBAL__N_16strLenEPKc.exit.i.i ] ; 3 uses
  %.018.i.i.i = phi i64 [ %i.bd, %bb.d ], [ 0, %_ZN12_GLOBAL__N_16strLenEPKc.exit.i.i ] ; 2 uses
  %.3.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.3.idx.i.i
  %i.ay = load i8, ptr %.3.ptr.i.i, align 1, !tbaa !8 ; 2 uses
  %i.az = add i8 %i.ay, -48
  %or.cond17.i.i.i = icmp ult i8 %i.az, 10
  br i1 %or.cond17.i.i.i, label %bb.d, label %.critedge.i.i.i

bb.d:                                             ; preds = %.lr.ph.i18.i.i
  %i.ba = mul i64 %.018.i.i.i, 10
  %i.bb = zext nneg i8 %i.ay to i64
  %i.bc = add i64 %i.ba, -48
  %i.bd = add i64 %i.bc, %i.bb                    ; 2 uses
  %.3.add.i.i = add nuw nsw i64 %.3.idx.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp samesign eq i64 %.3.add.i.i, %.add.i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i18.i.i, !llvm.loop !21

.critedge.i.i.i:                                  ; preds = %bb.d, %.lr.ph.i18.i.i
  %.4.idx.i.i = phi i64 [ %.add.i.i, %bb.d ], [ %.3.idx.i.i, %.lr.ph.i18.i.i ] ; 3 uses
  %.0.lcssa.ph.i.i.i = phi i64 [ %i.bd, %bb.d ], [ %.018.i.i.i, %.lr.ph.i18.i.i ] ; 3 uses
  %i.be = icmp ne i64 %.4.idx.i.i, 130
  %i.bf = icmp ult i64 %.0.lcssa.ph.i.i.i, 4294967296
  %or.cond.i.i.i = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.preheader.i.i, label %_ZL22hasPagecacheTHPSupportv.exit.thread14

.lr.ph.preheader.i.i:                             ; preds = %.critedge.i.i.i
  %.4.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx.i.i ; 2 uses
  %scevgep35.i.i = getelementptr i8, ptr %.4.ptr.i.i, i64 1 ; 4 uses
  %i.bg = load i8, ptr %.4.ptr.i.i, align 1, !tbaa !8
  %.not17.i.i = icmp eq i8 %i.bg, 46
  %i.bh = icmp ult ptr %scevgep35.i.i, %.ptr42.i.i
  %or.cond55.i = select i1 %.not17.i.i, i1 %i.bh, i1 false
  br i1 %or.cond55.i, label %.lr.ph.preheader.i.1.i.i, label %_ZL16getKernelVersionPj.exit.i

.lr.ph.preheader.i.1.i.i:                         ; preds = %.lr.ph.preheader.i.i
  %.neg.i.i = xor i64 %.4.idx.i.i, -1
  %i.bi = getelementptr i8, ptr %scevgep35.i.i, i64 %.add.i.i
  %scevgep.i.1.i.i = getelementptr i8, ptr %i.bi, i64 %.neg.i.i
  br label %.lr.ph.i18.1.i.i

.lr.ph.i18.1.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.1.i.i
  %.3.1.i.i = phi ptr [ %scevgep35.i.i, %.lr.ph.preheader.i.1.i.i ], [ %i.bp, %bb.e ] ; 3 uses
  %.018.i.1.i.i = phi i64 [ 0, %.lr.ph.preheader.i.1.i.i ], [ %i.bo, %bb.e ] ; 2 uses
  %i.bj = load i8, ptr %.3.1.i.i, align 1, !tbaa !8 ; 2 uses
  %i.bk = add i8 %i.bj, -48
  %or.cond17.i.1.i.i = icmp ult i8 %i.bk, 10
  br i1 %or.cond17.i.1.i.i, label %bb.e, label %.critedge.i.1.i.i

bb.e:                                             ; preds = %.lr.ph.i18.1.i.i
  %i.bl = mul i64 %.018.i.1.i.i, 10
  %i.bm = zext nneg i8 %i.bj to i64
  %i.bn = add i64 %i.bl, -48
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.3.1.i.i, i64 1 ; 2 uses
  %exitcond.not.i.1.i.i = icmp eq ptr %i.bp, %.ptr42.i.i
  br i1 %exitcond.not.i.1.i.i, label %.critedge.i.1.i.i, label %.lr.ph.i18.1.i.i, !llvm.loop !21

.critedge.i.1.i.i:                                ; preds = %bb.e, %.lr.ph.i18.1.i.i
  %.4.1.i.i = phi ptr [ %scevgep.i.1.i.i, %bb.e ], [ %.3.1.i.i, %.lr.ph.i18.1.i.i ]
  %.0.lcssa.ph.i.1.i.i = phi i64 [ %i.bo, %bb.e ], [ %.018.i.1.i.i, %.lr.ph.i18.1.i.i ]
  %i.bq = icmp ne ptr %scevgep35.i.i, %.4.1.i.i
  %i.br = add i64 %.0.lcssa.ph.i.1.i.i, -10
  %i.bs = icmp ult i64 %i.br, 4294967286
  %i.bt = select i1 %i.bq, i1 %i.bs, i1 false
  br label %_ZL16getKernelVersionPj.exit.i

_ZL22hasPagecacheTHPSupportv.exit.thread14:       ; preds = %_ZN12_GLOBAL__N_16strStrEPKcS1_.exit.i, %_ZN12_GLOBAL__N_16strLenEPKc.exit.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #7
  br label %.sink.split

_ZL16getKernelVersionPj.exit.i:                   ; preds = %.critedge.i.1.i.i, %.lr.ph.preheader.i.i
  %.sroa.4.0.i = phi i1 [ %i.bt, %.critedge.i.1.i.i ], [ false, %.lr.ph.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #7
  %i.bu = icmp ugt i64 %.0.lcssa.ph.i.i.i, 5
  br i1 %i.bu, label %_ZL22hasPagecacheTHPSupportv.exit.thread12, label %_ZL22hasPagecacheTHPSupportv.exit

_ZL22hasPagecacheTHPSupportv.exit.thread12:       ; preds = %_ZL16getKernelVersionPj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.k

_ZL22hasPagecacheTHPSupportv.exit:                ; preds = %_ZL16getKernelVersionPj.exit.i
  %i.bv = icmp eq i64 %.0.lcssa.ph.i.i.i, 5
  %or.cond.i = select i1 %i.bv, i1 %.sroa.4.0.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br i1 %or.cond.i, label %bb.k, label %bb.f

.sink.split:                                      ; preds = %_ZN12_GLOBAL__N_16strLenEPKc.exit.loopexit.i16.i, %.preheader.preheader.i, %bb.a, %_ZL22hasPagecacheTHPSupportv.exit.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZL22hasPagecacheTHPSupportv.exit
  %i.bw = ptrtoint ptr %i.k to i64
  %i.bx = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx                    ; 11 uses
  %i.bz = call noundef ptr asm sideeffect "movq $$9, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},{r10},{r8},{r9},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 0, i64 %i.by, i64 3, i64 34, i64 -1, i64 0) #7, !srcloc !25 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, inttoptr (i64 -1 to ptr)
  br i1 %i.ca, label %.split18.i, label %.split.i

.split.i:                                         ; preds = %bb.f
  %.not7.i.i = icmp eq i64 %i.by, 0
  br i1 %.not7.i.i, label %memcpy.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.i, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.h, %.split.i ] ; 2 uses
  %.059.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %i.bz, %.split.i ] ; 2 uses
  %.068.i.i = phi i64 [ %i.cb, %.lr.ph.i.i ], [ %i.by, %.split.i ]
  %i.cb = add i64 %.068.i.i, -1                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1
  %i.cd = load i8, ptr %.010.i.i, align 1, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 1
  store i8 %i.cd, ptr %.059.i.i, align 1, !tbaa !8
  %.not.i.i10 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i10, label %memcpy.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.split18.i:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %i.a, ptr noundef nonnull align 16 dereferenceable(50) @__const._ZL18hugifyForOldKernelPhS_.Msg, i64 50, i1 false)
  %i.cf = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.a, i64 range(i64 40, 65) 50) #7, !srcloc !26 ; 0 uses
  %i.cg = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #7, !srcloc !27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not7.i19.i = icmp eq i64 %i.by, 0
  br i1 %.not7.i19.i, label %memcpy.exit.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.split18.i, %.lr.ph.i20.i
  %.010.i21.i = phi ptr [ %i.ci, %.lr.ph.i20.i ], [ %i.h, %.split18.i ] ; 2 uses
  %.059.i22.i = phi ptr [ %i.ck, %.lr.ph.i20.i ], [ inttoptr (i64 -1 to ptr), %.split18.i ] ; 2 uses
  %.068.i23.i = phi i64 [ %i.ch, %.lr.ph.i20.i ], [ %i.by, %.split18.i ]
  %i.ch = add i64 %.068.i23.i, -1                 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i21.i, i64 1
  %i.cj = load i8, ptr %.010.i21.i, align 1, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.059.i22.i, i64 1
  store i8 %i.cj, ptr %.059.i22.i, align 1, !tbaa !8
  %.not.i24.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i24.i, label %memcpy.exit.i, label %.lr.ph.i20.i, !llvm.loop !0

memcpy.exit.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph.i20.i, %.split18.i, %.split.i
  %i.cl = call noundef i32 asm sideeffect "movq $$157, %rax\0Asyscall\0A", "={ax},{di},{si},{rdx},{r10},{r8},~{dirflag},~{fpsr},~{flags}"(i32 41, i64 0, i64 0, i64 0, i64 0) #7, !srcloc !28 ; 0 uses
  %i.cm = call noundef ptr asm sideeffect "movq $$9, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},{r10},{r8},{r9},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %i.bx, i64 %i.by, i64 3, i64 50, i64 -1, i64 0) #7, !srcloc !25
  %i.cn = icmp eq ptr %i.cm, inttoptr (i64 -1 to ptr)
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %memcpy.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZL18hugifyForOldKernelPhS_.Msg.3, i64 64, i1 false)
  %i.co = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.b, i64 range(i64 40, 65) 64) #7, !srcloc !26 ; 0 uses
  %i.cp = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #7, !srcloc !27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %memcpy.exit.i
  %i.cq = call noundef i32 asm sideeffect "movq $$28, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h, i64 %i.by, i32 14) #7, !srcloc !29
  %i.cr = icmp eq i32 %i.cq, -1
  br i1 %i.cr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(42) %i.c, ptr noundef nonnull align 16 dereferenceable(42) @__const._ZL18hugifyForOldKernelPhS_.Msg.4, i64 42, i1 false)
  %i.cs = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.c, i64 range(i64 40, 65) 42) #7, !srcloc !26 ; 0 uses
  %i.ct = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #7, !srcloc !27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not7.i26.i = icmp eq i64 %i.by, 0
  br i1 %.not7.i26.i, label %_ZL18hugifyForOldKernelPhS_.exit, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %bb.j, %.lr.ph.i27.i
  %.010.i28.i = phi ptr [ %i.cv, %.lr.ph.i27.i ], [ %i.bz, %bb.j ] ; 2 uses
  %.059.i29.i = phi ptr [ %i.cx, %.lr.ph.i27.i ], [ %i.h, %bb.j ] ; 2 uses
  %.068.i30.i = phi i64 [ %i.cu, %.lr.ph.i27.i ], [ %i.by, %bb.j ]
  %i.cu = add i64 %.068.i30.i, -1                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.010.i28.i, i64 1
  %i.cw = load i8, ptr %.010.i28.i, align 1, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %.059.i29.i, i64 1
  store i8 %i.cw, ptr %.059.i29.i, align 1, !tbaa !8
  %.not.i31.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i31.i, label %_ZL18hugifyForOldKernelPhS_.exit, label %.lr.ph.i27.i, !llvm.loop !0

_ZL18hugifyForOldKernelPhS_.exit:                 ; preds = %.lr.ph.i27.i, %bb.j
  %i.cy = call noundef i32 asm sideeffect "movq $$10, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h, i64 %i.by, i32 5) #7, !srcloc !30 ; 0 uses
  %i.cz = call noundef i64 asm sideeffect "movq $$11, %rax\0Asyscall\0A", "={ax},{di},{si},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bz, i64 %i.by) #7, !srcloc !31 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %_ZL22hasPagecacheTHPSupportv.exit.thread12, %_ZL22hasPagecacheTHPSupportv.exit
  %i.da = ptrtoint ptr %i.k to i64
  %i.db = ptrtoint ptr %i.h to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = call noundef i32 asm sideeffect "movq $$28, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h, i64 %i.dc, i32 14) #7, !srcloc !29
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.e, ptr noundef nonnull align 16 dereferenceable(40) @__const.__bolt_hugify_self_impl.Msg, i64 40, i1 false)
  %i.df = call noundef i64 asm sideeffect "movq $$1, %rax\0Asyscall\0A", "={ax},{di},{si},{dx},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 2, ptr nonnull %i.e, i64 range(i64 40, 65) 40) #7, !srcloc !26 ; 0 uses
  %i.dg = call noundef i64 asm sideeffect "movq $$231, %rax\0Asyscall\0A", "={ax},{di},~{cc},~{rcx},~{r11},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 1) #7, !srcloc !27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZL18hugifyForOldKernelPhS_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress naked noinline nounwind
define hidden void @__bolt_hugify_self() #5 {
bb.a:
  tail call void asm sideeffect "push %rax\0Apush %rbx\0Apush %rcx\0Apush %rdx\0Apush %rdi\0Apush %rsi\0Apush %rbp\0Apush %r8\0Apush %r9\0Apush %r10\0Apush %r11\0Apush %r12\0Apush %r13\0Apush %r14\0Apush %r15\0Asub $$8, %rsp\0Acall __bolt_hugify_self_impl\0Aadd $$8, %rsp\0Apop %r15\0Apop %r14\0Apop %r13\0Apop %r12\0Apop %r11\0Apop %r10\0Apop %r9\0Apop %r8\0Apop %rbp\0Apop %rsi\0Apop %rdi\0Apop %rdx\0Apop %rcx\0Apop %rbx\0Apop %rax\0Ajmp __bolt_hugify_start_program\0A", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !32
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { mustprogress naked noinline nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = !{i64 427258, i64 427301}
!23 = !{i64 423420, i64 423522}
!24 = !{i64 429390, i64 429434}
!25 = !{i64 424541, i64 424643}
!26 = !{i64 423892, i64 423996}
!27 = !{i64 426449, i64 426551}
!28 = !{i64 432260, i64 432305}
!29 = !{i64 429095, i64 429139}
!30 = !{i64 430223, i64 430267}
!31 = !{i64 425053, i64 425159}
!32 = !{i64 2147916384, i64 2147916466, i64 2147916547, i64 2147916628, i64 2147916709, i64 2147916790, i64 2147916871, i64 2147916952, i64 2147917033, i64 2147917114, i64 2147917195, i64 2147917276, i64 2147917357, i64 2147917438, i64 2147917519, i64 2147917600, i64 5508, i64 2147917618, i64 2147917699, i64 2147917780, i64 2147917861, i64 2147917942, i64 2147918023, i64 2147918104, i64 2147918185, i64 2147918266, i64 2147918347, i64 2147918428, i64 2147918509, i64 2147918590, i64 2147918671, i64 2147918752, i64 2147918833, i64 5585}
end_hunk_0
