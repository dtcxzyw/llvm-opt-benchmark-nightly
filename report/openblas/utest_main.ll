inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@assert_equal_u:bb.a
; Function Attrs: nounwind uwtable
define void @assert_not_equal(i64 noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.9, ptr noundef %2, i32 noundef %3, i64 noundef %0)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_not_equal_u(i64 noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.10, ptr noundef %2, i32 noundef %3, i64 noundef %0)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_interval(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i64 %2, %0
  %i.b = icmp sgt i64 %2, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %4, i64 noundef %0, i64 noundef %1, i64 noundef %2)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_dbl_near(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = fsub double %0, %1                       ; 2 uses
  %.0 = tail call double @llvm.fabs.f64(double %i.a)
  %i.b = fcmp ogt double %.0, %2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.12, ptr noundef %3, i32 noundef %4, double noundef %0, double noundef %1, double noundef %i.a, double noundef %2)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_dbl_far(double noundef %0, double noundef %1, double noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = fsub double %0, %1                       ; 2 uses
  %.0 = tail call double @llvm.fabs.f64(double %i.a)
  %i.b = fcmp ugt double %.0, %2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.12, ptr noundef %3, i32 noundef %4, double noundef %0, double noundef %1, double noundef %i.a, double noundef %2)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_null(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef %2)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_not_null(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %2)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_true(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef %2)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert_false(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %2)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @assert_fail(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  tail call void (ptr, ...) @CTEST_ERR(ptr noundef nonnull @.str.17, ptr noundef %0, i32 noundef %1)
  unreachable
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @ctest_main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.timeval, align 16           ; 4 uses
  %3 = alloca %struct.timeval, align 16           ; 4 uses
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  %i.b = load i32, ptr @ctest_main.num_fail, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = call ptr @signal(i32 noundef 11, ptr noundef nonnull @sighandler) #15 ; 0 uses
  switch i32 %0, label %bb.c [
    i32 2, label %.sink.split
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  store ptr %i.e, ptr @suite_name, align 8, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 16, %bb.b ], [ 8, %bb.a ]
  %test_name.sink = phi ptr [ @test_name, %bb.b ], [ @suite_name, %bb.a ]
  %suite_test_filter.sink = phi ptr [ @suite_test_filter, %bb.b ], [ @suite_filter, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  store ptr %i.g, ptr %test_name.sink, align 8, !tbaa !9
  store ptr %suite_test_filter.sink, ptr @ctest_main.filter, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %i.h = call i32 @isatty(i32 noundef 1) #15
  store i32 %i.h, ptr @color_output, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.i = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #15 ; 0 uses
  %i.j = load <2 x i64>, ptr %3, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.017.i = phi ptr [ %i.k, %bb.e ], [ @__ctest_suite_test_pointer, %bb.c ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.017.i, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.lr.ph.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.o, inttoptr (i64 3735928559 to ptr)
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %bb.d, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.p = icmp eq ptr %.017.i, @__ctest_suite_test_pointer
  %storemerge33.pre = load ptr, ptr @__ctest_suite_test_pointer, align 16, !tbaa !18 ; 6 uses
  br i1 %i.p, label %__ctest_linkTests.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %i.q = add i64 %indvar, 1152921504606846975
  %4 = and i64 %i.q, 1152921504606846975
  %xtraiter = and i64 %indvar, 7                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.r = phi ptr [ %i.t, %.lr.ph.i.prol ], [ %storemerge33.pre, %.lr.ph.i.preheader ]
  %.01826.i32.prol = phi ptr [ %i.s, %.lr.ph.i.prol ], [ @__ctest_suite_test_pointer, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.01826.i32.prol, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %i.t, ptr %i.u, align 8, !tbaa !20
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !22

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %storemerge33.pre, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %.01826.i32.unr = phi ptr [ @__ctest_suite_test_pointer, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %i.v = icmp samesign ult i64 %4, 7
  br i1 %i.v, label %__ctest_linkTests.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.w = phi ptr [ %i.at, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %.01826.i32 = phi ptr [ %i.as, %.lr.ph.i ], [ %.01826.i32.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr %i.y, ptr %i.z, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %.01826.i32, i64 128 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store ptr %i.at, ptr %i.au, align 8, !tbaa !20
  %i.av = icmp eq ptr %i.as, %.017.i
  br i1 %i.av, label %__ctest_linkTests.exit.loopexit, label %.lr.ph.i

__ctest_linkTests.exit.loopexit:                  ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre44 = load ptr, ptr %.017.i, align 8, !tbaa !18
  br label %__ctest_linkTests.exit

__ctest_linkTests.exit:                           ; preds = %__ctest_linkTests.exit.loopexit, %.lr.ph.preheader.i
  %i.aw = phi ptr [ %storemerge33.pre, %.lr.ph.preheader.i ], [ %.pre44, %__ctest_linkTests.exit.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr null, ptr %i.ax, align 8, !tbaa !20
  store ptr %storemerge33.pre, ptr @ctest_main.test, align 8, !tbaa !18
  %.not1334 = icmp eq ptr %storemerge33.pre, null
  br i1 %.not1334, label %.preheader.thread, label %.lr.ph36

.preheader.thread:                                ; preds = %__ctest_linkTests.exit
  store ptr null, ptr @ctest_main.test, align 8, !tbaa !18
  br label %._crit_edge

.preheader:                                       ; preds = %bb.h
  %storemerge1437.pre = load ptr, ptr @__ctest_suite_test_pointer, align 16, !tbaa !18 ; 3 uses
  store ptr %storemerge1437.pre, ptr @ctest_main.test, align 8, !tbaa !18
  %.not1538 = icmp eq ptr %storemerge1437.pre, null
  br i1 %.not1538, label %._crit_edge, label %.lr.ph40

.lr.ph36:                                         ; preds = %__ctest_linkTests.exit, %bb.h
  %storemerge35 = phi ptr [ %storemerge, %bb.h ], [ %storemerge33.pre, %__ctest_linkTests.exit ] ; 2 uses
  %i.ay = icmp eq ptr %storemerge35, @__ctest_suite_test
  br i1 %i.ay, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph36
  %i.az = load ptr, ptr @ctest_main.filter, align 8, !tbaa !17
  %i.ba = call i32 %i.az(ptr noundef nonnull %storemerge35) #15, !callees !24
  %.not22 = icmp eq i32 %i.ba, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr @ctest_main.total, align 4, !tbaa !8
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr @ctest_main.total, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph36
  %i.bd = load ptr, ptr @ctest_main.test, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %storemerge = load ptr, ptr %i.be, align 8, !tbaa !18 ; 3 uses
  store ptr %storemerge, ptr @ctest_main.test, align 8, !tbaa !18
  %.not13 = icmp eq ptr %storemerge, null
  br i1 %.not13, label %.preheader, label %.lr.ph36, !llvm.loop !25

.lr.ph40:                                         ; preds = %.preheader, %bb.ab
  %storemerge1439 = phi ptr [ %storemerge14, %bb.ab ], [ %storemerge1437.pre, %.preheader ] ; 2 uses
  %i.bf = icmp eq ptr %storemerge1439, @__ctest_suite_test
  br i1 %i.bf, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %.lr.ph40
  %i.bg = load ptr, ptr @ctest_main.filter, align 8, !tbaa !17
  %i.bh = call i32 %i.bg(ptr noundef nonnull %storemerge1439) #15, !callees !24
  %.not16 = icmp eq i32 %i.bh, 0
  %.pre43 = load ptr, ptr @ctest_main.test, align 8, !tbaa !18 ; 3 uses
  br i1 %.not16, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr @ctest_errorbuffer, align 16, !tbaa !14
  store i64 4095, ptr @ctest_errorsize, align 8, !tbaa !12
  store ptr @ctest_errorbuffer, ptr @ctest_errormsg, align 8, !tbaa !9
  %i.bi = load i32, ptr @ctest_main.index, align 4, !tbaa !8
  %i.bj = load i32, ptr @ctest_main.total, align 4, !tbaa !8
  %i.bk = load ptr, ptr %.pre43, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre43, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef %i.bk, ptr noundef %i.bm) ; 0 uses
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !28
  %i.bp = call i32 @fflush(ptr noundef %i.bo)     ; 0 uses
  %i.bq = load ptr, ptr @ctest_main.test, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !30
  %.not17 = icmp eq i32 %i.bs, 0
  br i1 %.not17, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr @color_output, align 4, !tbaa !8
  %.not.i23 = icmp eq i32 %i.bt, 0
  br i1 %.not.i23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) ; 0 uses
  br label %color_print.exit

bb.m:                                             ; preds = %bb.k
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @.str.22) ; 0 uses
  br label %color_print.exit

color_print.exit:                                 ; preds = %bb.l, %bb.m
  %i.bv = load i32, ptr @ctest_main.num_skip, align 4, !tbaa !8
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr @ctest_main.num_skip, align 4, !tbaa !8
  br label %bb.aa

bb.n:                                             ; preds = %bb.j
  %i.bx = call i32 @_setjmp(ptr noundef nonnull @ctest_err) #18
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr @ctest_main.test, align 8, !tbaa !18 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %.not18 = icmp eq ptr %i.cb, null
  br i1 %.not18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !32
  call void %i.cb(ptr noundef %i.cd) #15
  %.pre = load ptr, ptr @ctest_main.test, align 8, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = phi ptr [ %.pre, %bb.p ], [ %i.bz, %bb.o ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %.not19 = icmp eq ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33 ; 2 uses
  br i1 %.not19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.ci(ptr noundef nonnull %i.cg) #15
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void %i.ci() #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cj = load ptr, ptr @ctest_main.test, align 8, !tbaa !18 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34 ; 2 uses
  %.not20 = icmp eq ptr %i.cl, null
  br i1 %.not20, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !32
  call void %i.cl(ptr noundef %i.cn) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %color_print.exit26

bb.w:                                             ; preds = %bb.n
  %i.co = load i32, ptr @color_output, align 4, !tbaa !8
  %.not.i24 = icmp eq i32 %i.co, 0
  br i1 %.not.i24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24) ; 0 uses
  br label %color_print.exit26

bb.y:                                             ; preds = %bb.w
  %puts.i25 = call i32 @puts(ptr nonnull dereferenceable(1) @.str.24) ; 0 uses
end_hunk_0
