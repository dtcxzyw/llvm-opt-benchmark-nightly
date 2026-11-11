Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fp-test?download=true
inline.NumInlined: 193
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@parse_args:bb.a
    i32 102, label %bb.e
    i32 108, label %bb.l
    i32 114, label %bb.n
    i32 115, label %bb.v
    i32 113, label %bb.w
    i32 63, label %bb.x
  ]

bb.b:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %1, align 8
  tail call fastcc void @usage_complete(ptr %.val)
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.d = load ptr, ptr @optarg, align 8
  %i.e = tail call i32 @qemu_strtoui(ptr noundef %i.d, ptr noundef null, i32 noundef 0, ptr noundef nonnull @n_max_errors) #15
  %.not30 = icmp eq i32 %i.e, 0
  br i1 %.not30, label %set_init_flags.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.1) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr @optarg, align 8
  %slow_init_flags.promoted.i = load i8, ptr @slow_init_flags, align 1
  %qemu_init_flags.promoted.i = load i8, ptr @qemu_init_flags, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.i = phi i8 [ %qemu_init_flags.promoted.i, %bb.e ], [ %i.m, %bb.k ]
  %i.j = phi i8 [ %slow_init_flags.promoted.i, %bb.e ], [ %i.l, %bb.k ]
  %.0.i = phi ptr [ %i.h, %bb.e ], [ %i.n, %bb.k ] ; 2 uses
  %i.k = load i8, ptr %.0.i, align 1
  switch i8 %i.k, label %set_init_flags.exit [
    i8 0, label %set_init_flags.exit.thread
    i8 118, label %bb.k
    i8 105, label %bb.g
    i8 111, label %bb.h
    i8 117, label %bb.i
    i8 120, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sink8.i = phi i8 [ 1, %bb.j ], [ 8, %bb.g ], [ 4, %bb.h ], [ 2, %bb.i ], [ 16, %bb.f ]
  %.sink7.i = phi i8 [ 16, %bb.j ], [ 2, %bb.g ], [ 4, %bb.h ], [ 8, %bb.i ], [ 1, %bb.f ]
  %i.l = or i8 %.sink8.i, %i.j                    ; 2 uses
  store i8 %i.l, ptr @slow_init_flags, align 1
  %i.m = or i8 %.sink7.i, %i.i                    ; 2 uses
  store i8 %i.m, ptr @qemu_init_flags, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.f, !llvm.loop !8

set_init_flags.exit:                              ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8
  %i.p = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.o, i32 noundef 1, ptr noundef nonnull @.str.2) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.l:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr @optarg, align 8
  %i.r = tail call i32 @qemu_strtoi(ptr noundef %i.q, ptr noundef null, i32 noundef 0, ptr noundef nonnull @test_level) #15
  %.not28 = icmp eq i32 %i.r, 0
  br i1 %.not28, label %set_init_flags.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = load ptr, ptr @stderr, align 8
  %i.t = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @.str.3) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.n:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr @optarg, align 8           ; 9 uses
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(4) @.str.4) #17
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr @test_round_mode, align 4
  br label %set_init_flags.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.9, ptr noundef nonnull readonly dereferenceable(1) %i.u) #17
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %round_name_to_mode.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.10, ptr noundef nonnull readonly dereferenceable(1) %i.u) #17
  %.not.1.i = icmp eq i32 %i.x, 0
  br i1 %.not.1.i, label %round_name_to_mode.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.11, ptr noundef nonnull readonly dereferenceable(1) %i.u) #17
  %.not.2.i = icmp eq i32 %i.y, 0
  br i1 %.not.2.i, label %round_name_to_mode.exit.thread, label %sub_0

sub_0:                                            ; preds = %bb.r
  %i.z = load i8, ptr %i.u, align 1               ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 117, %i.aa
  %.not48 = icmp eq i8 %i.z, 117
  br i1 %.not48, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 112, %i.ae
  %.not49 = icmp eq i8 %i.ad, 112
  br i1 %.not49, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = sub nsw i32 0, %i.ai
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.ak = phi i32 [ %i.ab, %sub_0 ], [ %i.af, %sub_1 ], [ %i.aj, %sub_2 ]
  %.not.3.i = icmp eq i32 %i.ak, 0
  br i1 %.not.3.i, label %round_name_to_mode.exit.thread, label %bb.s

bb.s:                                             ; preds = %.tail
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.13, ptr noundef nonnull readonly dereferenceable(1) %i.u) #17
  %.not.4.i = icmp eq i32 %i.al, 0
  br i1 %.not.4.i, label %round_name_to_mode.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.14, ptr noundef nonnull readonly dereferenceable(1) %i.u) #17
  %.not.5.i = icmp eq i32 %i.am, 0
  br i1 %.not.5.i, label %round_name_to_mode.exit.thread, label %bb.u

round_name_to_mode.exit.thread:                   ; preds = %bb.p, %.tail, %bb.q, %bb.r, %bb.s, %bb.t
  %.05.i.ph = phi i32 [ 1, %bb.p ], [ 5, %bb.s ], [ 3, %bb.r ], [ 2, %bb.q ], [ 4, %.tail ], [ 6, %bb.t ]
  store i32 %.05.i.ph, ptr @test_round_mode, align 4
  br label %set_init_flags.exit.thread

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr @test_round_mode, align 4
  %i.an = load ptr, ptr @stderr, align 8
  %i.ao = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.an, i32 noundef 1, ptr noundef nonnull @.str.5) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.v:                                             ; preds = %.lr.ph
  store i8 1, ptr @verCases_errorStop, align 1
  br label %set_init_flags.exit.thread

bb.w:                                             ; preds = %.lr.ph
  store i32 0, ptr @verCases_verbosity, align 4
  br label %set_init_flags.exit.thread

bb.x:                                             ; preds = %.lr.ph
  tail call void @exit(i32 noundef 1) #16
  unreachable

set_init_flags.exit.thread:                       ; preds = %bb.f, %round_name_to_mode.exit.thread, %bb.o, %bb.l, %bb.c, %bb.w, %bb.v, %.lr.ph
  %i.ap = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #15 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %set_init_flags.exit.thread, %bb.a
  %i.ar = load i32, ptr @test_round_mode, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge
  store i32 6, ptr @n_round_modes, align 4
  %i.at = tail call noalias dereferenceable_or_null(24) ptr @g_malloc_n(i64 noundef 6, i64 noundef 4) #18 ; 3 uses
  store ptr %i.at, ptr @round_modes, align 8
  %i.au = load i32, ptr @n_round_modes, align 4   ; 3 uses
  %.not50 = icmp eq i32 %i.au, 0
  br i1 %.not50, label %.loopexit37, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %bb.y
  %wide.trip.count = zext i32 %i.au to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph41.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.av = add <4 x i32> %vec.ind, splat (i32 4)
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> %vec.ind, ptr %2, align 4
  store <4 x i32> %i.av, ptr %i.aw, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit37, label %.lr.ph41.preheader97

.lr.ph41.preheader97:                             ; preds = %.lr.ph41.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph41.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader97, %.lr.ph41
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph41 ], [ %indvars.iv.ph, %.lr.ph41.preheader97 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.az = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.az, ptr %i.ay, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit37, label %.lr.ph41, !llvm.loop !10

bb.z:                                             ; preds = %._crit_edge
  store i32 1, ptr @n_round_modes, align 4
  %i.ba = tail call noalias dereferenceable_or_null(4) ptr @g_malloc(i64 noundef 4) #19 ; 2 uses
  store ptr %i.ba, ptr @round_modes, align 8
  %i.bb = load i32, ptr @test_round_mode, align 4
  store i32 %i.bb, ptr %i.ba, align 4
  br label %.loopexit37

.loopexit37:                                      ; preds = %.lr.ph41, %middle.block, %bb.y, %bb.z
  %i.bc = load i32, ptr @optind, align 4          ; 2 uses
  %i.bd = icmp eq i32 %i.bc, %0
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit37
  store i32 149, ptr @n_test_ops, align 4
  %i.be = tail call noalias dereferenceable_or_null(596) ptr @g_malloc_n(i64 noundef 149, i64 noundef 4) #18 ; 3 uses
  store ptr %i.be, ptr @test_ops, align 8
  %i.bf = load i32, ptr @n_test_ops, align 4      ; 3 uses
  %.not52 = icmp eq i32 %i.bf, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %bb.aa
  %wide.trip.count65 = zext i32 %i.bf to i64      ; 3 uses
  %min.iters.check81 = icmp ult i32 %i.bf, 8
  br i1 %min.iters.check81, label %.lr.ph47.preheader93, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph47.preheader
  %n.vec83 = and i64 %wide.trip.count65, 4294967288 ; 3 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph82
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next88, %vector.body84 ] ; 2 uses
  %vec.ind86 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph82 ], [ %vec.ind.next89, %vector.body84 ] ; 3 uses
  %i.bg = add <4 x i32> %vec.ind86, splat (i32 4)
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index85 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x i32> %vec.ind86, ptr %3, align 4
  store <4 x i32> %i.bg, ptr %i.bh, align 4
  %index.next88 = add nuw i64 %index85, 8         ; 2 uses
  %vec.ind.next89 = add <4 x i32> %vec.ind86, splat (i32 8)
  %i.bi = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.bi, label %middle.block90, label %vector.body84, !llvm.loop !11

middle.block90:                                   ; preds = %vector.body84
  %cmp.n91 = icmp eq i64 %n.vec83, %wide.trip.count65
  br i1 %cmp.n91, label %.loopexit, label %.lr.ph47.preheader93

.lr.ph47.preheader93:                             ; preds = %.lr.ph47.preheader, %middle.block90
  %indvars.iv62.ph = phi i64 [ 0, %.lr.ph47.preheader ], [ %n.vec83, %middle.block90 ]
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader93, %.lr.ph47
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph47 ], [ %indvars.iv62.ph, %.lr.ph47.preheader93 ] ; 2 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv62
  %i.bk = trunc nuw i64 %indvars.iv.next63 to i32
  store i32 %i.bk, ptr %i.bj, align 4
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph47, !llvm.loop !12

bb.ab:                                            ; preds = %.loopexit37
  %i.bl = sub i32 %0, %i.bc                       ; 2 uses
  store i32 %i.bl, ptr @n_test_ops, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = tail call noalias ptr @g_malloc_n(i64 noundef %i.bm, i64 noundef 4) #18 ; 2 uses
  store ptr %i.bn, ptr @test_ops, align 8
  %i.bo = load i32, ptr @n_test_ops, align 4      ; 2 uses
  %.not51 = icmp eq i32 %i.bo, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.ab
  %i.bp = load i32, ptr @optind, align 4
  %wide.trip.count60 = zext i32 %i.bo to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph44, %test_name_to_op.exit
  %indvars.iv57 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next58, %test_name_to_op.exit ] ; 3 uses
  %i.bq = trunc nuw i64 %indvars.iv57 to i32
  %i.br = add i32 %i.bp, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %indvars.iv.i = phi i64 [ 1, %bb.ac ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr @functionInfos, i64 %indvars.iv.i
  %i.bw = load ptr, ptr %i.bv, align 16           ; 2 uses
  %.not.i31 = icmp eq ptr %i.bw, null
  br i1 %.not.i31, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull readonly dereferenceable(1) %i.bu) #17
  %.not11.i = icmp eq i32 %i.bx, 0
  br i1 %.not11.i, label %test_name_to_op.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 150
  br i1 %exitcond.not.i, label %test_name_to_op.exit.thread, label %bb.ad, !llvm.loop !13

test_name_to_op.exit:                             ; preds = %bb.ae
  %i.by = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv57
  store i32 %i.by, ptr %i.bz, align 4
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.loopexit, label %bb.ac, !llvm.loop !14

test_name_to_op.exit.thread:                      ; preds = %bb.af
  %i.ca = load ptr, ptr @stderr, align 8
  %i.cb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ca, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %i.bu) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

.loopexit:                                        ; preds = %test_name_to_op.exit, %.lr.ph47, %middle.block90, %bb.ab, %bb.aa
  ret void
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @run_test() unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @qsf, align 8
  %i.b = and i64 %i.a, 69947601159454719
  %i.c = or disjoint i64 %i.b, 4612620607605964800
  store i64 %i.c, ptr @qsf, align 8
  %i.d = load i32, ptr @test_level, align 4
  tail call void @genCases_setLevel(i32 noundef %i.d) #15
  %i.e = load i32, ptr @n_max_errors, align 4
  %i.f = zext i32 %i.e to i64
  store i64 %i.f, ptr @verCases_maxErrorCount, align 8
  store ptr @slow_clear_flags, ptr @testLoops_trueFlagsFunction, align 8
  store ptr @qemu_clear_flags, ptr @testLoops_subjFlagsFunction, align 8
  %i.g = load i32, ptr @n_test_ops, align 4
  %.not71 = icmp eq i32 %i.g, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.a, %do_testfloat.exit
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %do_testfloat.exit ], [ 0, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr @test_ops, align 8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv78
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @functionInfos, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16             ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %do_testfloat.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph70
  store ptr %i.m, ptr @verCases_functionNamePtr, align 8
  %i.o = load i32, ptr @n_round_modes, align 4
  %.not72 = icmp eq i32 %i.o, 0
  br i1 %.not72, label %do_testfloat.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i8, ptr %i.p, align 8               ; 3 uses
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = and i32 %i.r, 36
  %.not = icmp eq i32 %i.s, 0
  %i.t = lshr i8 %i.q, 3
  %.lobit = and i8 %i.t, 1
  %i.u = and i32 %i.r, 16
  %.not52 = icmp eq i32 %i.u, 0
  %i.v = and i32 %i.r, 64
  %.not54 = icmp ne i32 %i.v, 0
  %i.w = icmp slt i8 %i.q, 0                      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.fu
  %indvars.iv75 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next76, %bb.fu ] ; 3 uses
  %i.x = load ptr, ptr @round_modes, align 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv75
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr @roundingModes, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1             ; 28 uses
  store i32 0, ptr @verCases_roundingCode, align 4
  store i8 %i.ac, ptr @slowfloat_roundingMode, align 1
  %i.ad = icmp ult i8 %i.ac, 7
  %switch.shifted = lshr i8 95, %i.ac
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond82 = select i1 %i.ad, i1 %switch.lobit, i1 false
  br i1 %or.cond82, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 37, ptr noundef nonnull @__func__.sf_rounding_to_qemu, ptr noundef null) #20
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.ae = zext nneg i8 %i.ac to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.qemu_f128M_roundToInt, i64 %i.ae
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.af = load i64, ptr @qsf, align 8
  %i.ag = and i64 %i.af, -458753
  %i.ah = or disjoint i64 %i.ag, %switch.ext
  store i64 %i.ah, ptr @qsf, align 8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %switch.lookup
  store i32 %i.z, ptr @verCases_roundingCode, align 4
  br label %bb.g

bb.f:                                             ; preds = %switch.lookup
  %.not51 = icmp eq i64 %indvars.iv75, 0
  br i1 %.not51, label %bb.g, label %do_testfloat.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr @verCases_exact, align 1
  store i8 %.lobit, ptr @verCases_usesExact, align 1
  %i.ai = icmp eq i8 %i.ac, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.ft
  %.04666 = phi i32 [ 0, %bb.g ], [ %i.cc, %bb.ft ] ; 3 uses
  switch i32 %.04666, label %.fold.split [
    i32 1, label %bb.j
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.j

.fold.split:                                      ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.fold.split, %bb.i
  %.045 = phi i64 [ 524288, %bb.h ], [ 1048576, %bb.i ], [ 0, %.fold.split ]
  %or.cond3 = phi i1 [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ false, %.fold.split ]
  %.044 = phi i8 [ 64, %bb.h ], [ 32, %bb.i ], [ 80, %.fold.split ] ; 2 uses
  store i8 0, ptr @verCases_roundingPrecision, align 1
  store i8 %.044, ptr @slow_extF80_roundingPrecision, align 1
  %i.aj = load i64, ptr @qsf, align 8
  %i.ak = and i64 %i.aj, -1572865
  %i.al = or disjoint i64 %i.ak, %.045
  store i64 %i.al, ptr @qsf, align 8
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_0
