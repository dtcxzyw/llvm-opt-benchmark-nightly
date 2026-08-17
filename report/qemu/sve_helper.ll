inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1191
loop-unroll.NumRuntimeUnrolled: 418
loop-unroll.NumUnrolled: 1631
begin_hunk_0_@helper_sve_lsl_zpzz_s:bb.a
  %i.ba = add i64 %.019, 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g, %bb.d
  %.lcssa = phi i64 [ %i.t, %bb.d ], [ %i.ae, %bb.g ], [ %i.ap, %bb.j ], [ %i.ba, %bb.m ] ; 2 uses
  %i.bb = icmp slt i64 %.lcssa, %i.g
  br i1 %i.bb, label %bb.b, label %bb.o, !llvm.loop !171

bb.o:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_lsl_zpzz_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1              ; 2 uses
  %i.e = zext nneg i32 %.v.i to i64               ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.new
  %.018 = phi i64 [ 0, %.new ], [ %i.ad, %bb.f ]  ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %.018
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.018
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.018
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, 64
  %i.o = shl i64 %i.k, %i.m
  %i.p = select i1 %i.n, i64 %i.o, i64 0
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018
  store i64 %i.p, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = or disjoint i64 %.018, 1                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 1
  %.not.1 = icmp eq i8 %i.u, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.y, 64
  %i.aa = shl i64 %i.w, %i.y
  %i.ab = select i1 %i.z, i64 %i.aa, i64 0
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = add nuw nsw i64 %.018, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !172

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.018.epil.init = phi i64 [ 0, %bb.a ], [ %i.ad, %.unr-lcssa ] ; 4 uses
  %lcmp.mod19 = trunc i32 %.v.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %.018.epil.init
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 1
  %.not.epil = icmp eq i8 %i.ag, 0
  br i1 %.not.epil, label %.epilog-lcssa, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.018.epil.init
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.018.epil.init
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ult i64 %i.ak, 64
  %i.am = shl i64 %i.ai, %i.ak
  %i.an = select i1 %i.al, i64 %i.am, i64 0
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.epil.init
  store i64 %i.an, ptr %i.ao, align 8
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.g, %.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_sel_zpzz_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1              ; 2 uses
  %i.e = zext nneg i32 %.v.i to i64               ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.019 = phi i64 [ 0, %.new ], [ %i.aj, %bb.b ]  ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.019
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %.019
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, %i.h
  %i.q = xor i64 %i.o, -1
  %i.r = and i64 %i.j, %i.q
  %i.s = or i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019
  store i64 %i.s, ptr %i.t, align 8
  %i.u = or disjoint i64 %.019, 1                 ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, %i.w
  %i.af = xor i64 %i.ad, -1
  %i.ag = and i64 %i.y, %i.af
  %i.ah = or i64 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = add nuw nsw i64 %.019, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !173

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi i64 [ 0, %bb.a ], [ %i.aj, %.unr-lcssa ] ; 4 uses
  %lcmp.mod20 = trunc i32 %.v.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.019.epil.init
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019.epil.init
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %.019.epil.init
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = and i64 %i.as, %i.al
  %i.au = xor i64 %i.as, -1
  %i.av = and i64 %i.an, %i.au
  %i.aw = or i64 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.epil.init
  store i64 %i.aw, ptr %i.ax, align 8
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_sel_zpzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1              ; 2 uses
  %i.e = zext nneg i32 %.v.i to i64               ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %5 = icmp eq i32 %.v.v.i, 0
  br i1 %5, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.019 = phi i64 [ 0, %.new ], [ %22, %bb.b ]    ; 6 uses
  %.019.a = phi i64 [ 0, %.new ], [ %i.u, %bb.b ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.019
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 %.019
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 85
  %13 = zext nneg i8 %12 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_h_data, i64 %13
  %15 = load i64, ptr %14, align 8                ; 2 uses
  %16 = and i64 %15, %7
  %17 = xor i64 %15, -1
  %18 = and i64 %9, %17
  %19 = or i64 %16, %18
  %20 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019
  store i64 %19, ptr %20, align 8
  %21 = or disjoint i64 %.019, 1                  ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %21
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %21
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %21
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 85
  %i.m = zext nneg i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_h_data, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, %i.g
  %i.q = xor i64 %i.o, -1
  %i.r = and i64 %i.i, %i.q
  %i.s = or i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21
  store i64 %i.s, ptr %i.t, align 8
  %22 = add nuw nsw i64 %.019, 2                  ; 2 uses
  %i.u = add i64 %.019.a, 2                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %unroll_iter
  br i1 %exitcond.not, label %.unr-lcssa, label %bb.b, !llvm.loop !174

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi i64 [ 0, %bb.a ], [ %22, %.unr-lcssa ] ; 4 uses
  %lcmp.mod20 = trunc i32 %.v.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %23 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.019.epil.init
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019.epil.init
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 %.019.epil.init
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 85
  %30 = zext nneg i8 %29 to i64
  %31 = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_h_data, i64 %30
  %32 = load i64, ptr %31, align 8                ; 2 uses
  %33 = and i64 %32, %24
  %34 = xor i64 %32, -1
  %35 = and i64 %26, %34
  %36 = or i64 %33, %35
  %37 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.epil.init
  store i64 %36, ptr %37, align 8
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_sel_zpzz_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1              ; 2 uses
  %i.e = zext nneg i32 %.v.i to i64               ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.019 = phi i64 [ 0, %.new ], [ %i.al, %bb.b ]  ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.019
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %.019
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 17
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = and i64 %i.p, %i.h
  %i.r = xor i64 %i.p, -1
  %i.s = and i64 %i.j, %i.r
  %i.t = or i64 %i.q, %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019
  store i64 %i.t, ptr %i.u, align 8
  %i.v = or disjoint i64 %.019, 1                 ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 17
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, %i.x
  %i.ah = xor i64 %i.af, -1
  %i.ai = and i64 %i.z, %i.ah
  %i.aj = or i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = add nuw nsw i64 %.019, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.b, !llvm.loop !175

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.019.epil.init = phi i64 [ 0, %bb.a ], [ %i.al, %.unr-lcssa ] ; 4 uses
  %lcmp.mod20 = trunc i32 %.v.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.019.epil.init
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019.epil.init
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.019.epil.init
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = and i8 %i.ar, 17
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i64 %i.av, %i.an
  %i.ax = xor i64 %i.av, -1
  %i.ay = and i64 %i.ap, %i.ax
  %i.az = or i64 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.epil.init
  store i64 %i.az, ptr %i.ba, align 8
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_sel_zpzz_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.e = zext nneg i32 %.v.i to i64               ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.f = shl nuw nsw i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.f, 8
  %i.g = zext nneg i32 %narrow to i64             ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.g   ; 3 uses
  %scevgep18 = getelementptr i8, ptr %1, i64 %i.g
  %scevgep19 = getelementptr i8, ptr %2, i64 %i.g
  %scevgep20 = getelementptr i8, ptr %3, i64 %i.e
  %bound0 = icmp ult ptr %0, %scevgep18
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %0, %scevgep19
  %bound122 = icmp ult ptr %2, %scevgep
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ult ptr %0, %scevgep20
  %bound125 = icmp ult ptr %3, %scevgep
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 508                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8, !alias.scope !176
  %wide.load28 = load <2 x i64>, ptr %i.i, align 8, !alias.scope !176
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load29 = load <2 x i64>, ptr %i.j, align 8, !alias.scope !179
  %wide.load30 = load <2 x i64>, ptr %i.k, align 8, !alias.scope !179
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %wide.load31 = load <2 x i8>, ptr %i.l, align 1, !alias.scope !181
  %wide.load32 = load <2 x i8>, ptr %i.m, align 1, !alias.scope !181
  %i.n = and <2 x i8> %wide.load31, splat (i8 1)
  %i.o = and <2 x i8> %wide.load32, splat (i8 1)
  %i.p = icmp eq <2 x i8> %i.n, zeroinitializer
  %i.q = icmp eq <2 x i8> %i.o, zeroinitializer
  %i.r = select <2 x i1> %i.p, <2 x i64> %wide.load29, <2 x i64> %wide.load
  %i.s = select <2 x i1> %i.q, <2 x i64> %wide.load30, <2 x i64> %wide.load28
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x i64> %i.r, ptr %i.t, align 8, !alias.scope !183, !noalias !185
  store <2 x i64> %i.s, ptr %i.u, align 8, !alias.scope !183, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.017.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 7 uses
  %i.w = zext nneg i32 %.v.v.i to i64             ; 2 uses
  %i.x = and i64 %i.w, 1
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017.ph
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.017.ph
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %.017.ph
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, 1
  %.not.prol = icmp eq i8 %i.ae, 0
  %i.af = select i1 %.not.prol, i64 %i.ab, i64 %i.z
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.ph
  store i64 %i.af, ptr %i.ag, align 8
  %i.ah = or disjoint i64 %.017.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.unr = phi i64 [ %.017.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %.017.ph, %i.w
  br i1 %i.ai, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017 = phi i64 [ %i.bc, %scalar.ph ], [ %.017.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.017
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.017
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %.017
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = and i8 %i.ao, 1
  %.not = icmp eq i8 %i.ap, 0
  %i.aq = select i1 %.not, i64 %i.am, i64 %i.ak
end_hunk_0
begin_hunk_1_@helper_sve_not_zpz_b:bb.a
.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.02731.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.bh, %.preheader.i ] ; 5 uses
  %niter13 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter13.next.1, %.preheader.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.02731.i
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02731.i
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = xor i64 %i.ak, -1
  %i.am = and i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02731.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = xor i64 %i.ai, -1
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = or i64 %i.aq, %i.am
  store i64 %i.ar, ptr %i.an, align 8
  %i.as = or disjoint i64 %.02731.i, 1            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = xor i64 %i.az, -1
  %i.bb = and i64 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = xor i64 %i.ax, -1
  %i.bf = and i64 %i.bd, %i.be
  %i.bg = or i64 %i.bf, %i.bb
  store i64 %i.bg, ptr %i.bc, align 8
  %i.bh = add nuw nsw i64 %.02731.i, 2            ; 2 uses
  %niter13.next.1 = add i64 %niter13, 2           ; 2 uses
  %niter13.ncmp.1 = icmp eq i64 %niter13.next.1, %unroll_iter12
  br i1 %niter13.ncmp.1, label %sve_not_zpz.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !360

sve_not_zpz.exit.loopexit.unr-lcssa:              ; preds = %.preheader.i
  %lcmp.mod10.not = icmp eq i64 %xtraiter9, 0
  br i1 %lcmp.mod10.not, label %sve_not_zpz.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %sve_not_zpz.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.02731.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bh, %sve_not_zpz.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod11 = trunc i32 %.v.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %.02731.i.epil.init
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02731.i.epil.init
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = xor i64 %i.bo, -1
  %i.bq = and i64 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02731.i.epil.init ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = xor i64 %i.bm, -1
  %i.bu = and i64 %i.bs, %i.bt
  %i.bv = or i64 %i.bu, %i.bq
  store i64 %i.bv, ptr %i.br, align 8
  br label %sve_not_zpz.exit

sve_not_zpz.exit.loopexit7.unr-lcssa:             ; preds = %.preheader28.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sve_not_zpz.exit, label %.preheader28.i.epil.preheader

.preheader28.i.epil.preheader:                    ; preds = %sve_not_zpz.exit.loopexit7.unr-lcssa, %.preheader28.i.preheader
  %.030.i.epil.init = phi i64 [ 0, %.preheader28.i.preheader ], [ %i.ad, %sve_not_zpz.exit.loopexit7.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i32 %.v.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %.030.i.epil.init
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_b_data, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.030.i.epil.init
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = xor i64 %i.cc, -1
  %i.ce = and i64 %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i.epil.init
  store i64 %i.ce, ptr %i.cf, align 8
  br label %sve_not_zpz.exit

sve_not_zpz.exit:                                 ; preds = %.preheader28.i.epil.preheader, %sve_not_zpz.exit.loopexit7.unr-lcssa, %.preheader.i.epil.preheader, %sve_not_zpz.exit.loopexit.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_not_zpz_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.d, i32 %i.c, i32 %i.b  ; 2 uses
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 1          ; 2 uses
  %i.e = zext nneg i32 %.v.i.i to i64             ; 3 uses
  %i.f = and i32 %3, 1024
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader28.i.preheader

.preheader28.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %i.e, 1
  %i.g = icmp eq i32 %.v.v.i.i, 0
  br i1 %i.g, label %.preheader28.i.epil.preheader, label %.preheader28.i.preheader.new

.preheader28.i.preheader.new:                     ; preds = %.preheader28.i.preheader
  %unroll_iter = and i64 %i.e, 510
  br label %.preheader28.i

.preheader28.i:                                   ; preds = %.preheader28.i, %.preheader28.i.preheader.new
  %.030.i = phi i64 [ 0, %.preheader28.i.preheader.new ], [ %i.ae, %.preheader28.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader28.i.preheader.new ], [ %niter.next.1, %.preheader28.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.030.i
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 85
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_h_data, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.030.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.m, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i
  store i64 %i.q, ptr %i.r, align 8
  %i.s = or disjoint i64 %.030.i, 1               ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, 85
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_h_data, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.aa, -1
  %i.ac = and i64 %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.030.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sve_not_zpz.exit.loopexit7.unr-lcssa, label %.preheader28.i, !llvm.loop !359

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.02731.i = phi i64 [ %i.au, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.02731.i
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = and i8 %i.ag, 85
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_h_data, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02731.i
  %i.am = load i64, ptr %i.al, align 8
  %i.an = xor i64 %i.am, -1
  %i.ao = and i64 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02731.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = xor i64 %i.ak, -1
  %i.as = and i64 %i.aq, %i.ar
  %i.at = or i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ap, align 8
  %i.au = add nuw nsw i64 %.02731.i, 1            ; 2 uses
  %exitcond33.not.i = icmp eq i64 %i.au, %i.e
  br i1 %exitcond33.not.i, label %sve_not_zpz.exit, label %.preheader.i, !llvm.loop !360

sve_not_zpz.exit.loopexit7.unr-lcssa:             ; preds = %.preheader28.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sve_not_zpz.exit, label %.preheader28.i.epil.preheader

.preheader28.i.epil.preheader:                    ; preds = %sve_not_zpz.exit.loopexit7.unr-lcssa, %.preheader28.i.preheader
  %.030.i.epil.init = phi i64 [ 0, %.preheader28.i.preheader ], [ %i.ae, %sve_not_zpz.exit.loopexit7.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i32 %.v.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.030.i.epil.init
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, 85
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_h_data, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.030.i.epil.init
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = xor i64 %i.bc, -1
  %i.be = and i64 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i.epil.init
  store i64 %i.be, ptr %i.bf, align 8
  br label %sve_not_zpz.exit

sve_not_zpz.exit:                                 ; preds = %.preheader28.i.epil.preheader, %sve_not_zpz.exit.loopexit7.unr-lcssa, %.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_not_zpz_s(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.d, i32 %i.c, i32 %i.b  ; 3 uses
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 1          ; 3 uses
  %i.e = zext nneg i32 %.v.i.i to i64             ; 4 uses
  %i.f = and i32 %3, 1024
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.preheader28.i.preheader.a, label %.preheader28.i.preheader

.preheader28.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %i.e, 1
  %4 = icmp eq i32 %.v.v.i.i, 0
  br i1 %4, label %.preheader28.i.epil.preheader, label %.preheader28.i.preheader.new

.preheader28.i.preheader.new:                     ; preds = %.preheader28.i.preheader
  %unroll_iter = and i64 %i.e, 510
  br label %.preheader28.i

.preheader28.i.preheader.a:                       ; preds = %bb.a
  %xtraiter.a = and i64 %i.e, 1
  %i.g = icmp eq i32 %.v.v.i.i, 0
  br i1 %i.g, label %.preheader.i.epil.preheader, label %.preheader28.i.preheader.new.a

.preheader28.i.preheader.new.a:                   ; preds = %.preheader28.i.preheader.a
  %unroll_iter.a = and i64 %i.e, 510
  br label %.preheader.i

.preheader28.i:                                   ; preds = %.preheader28.i, %.preheader28.i.preheader.new
  %.030.i = phi i64 [ 0, %.preheader28.i.preheader.new ], [ %i.ae, %.preheader28.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader28.i.preheader.new ], [ %niter.next.1, %.preheader28.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.030.i
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 17
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.030.i
  %i.o = load i64, ptr %i.n, align 8
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.m, %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i
  store i64 %i.q, ptr %i.r, align 8
  %i.s = or disjoint i64 %.030.i, 1               ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, 17
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = xor i64 %i.aa, -1
  %i.ac = and i64 %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %.030.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sve_not_zpz.exit.loopexit7.unr-lcssa, label %.preheader28.i, !llvm.loop !359

.preheader.i:                                     ; preds = %.preheader.i, %.preheader28.i.preheader.new.a
  %.02731.i = phi i64 [ 0, %.preheader28.i.preheader.new.a ], [ %21, %.preheader.i ] ; 5 uses
  %.02731.i.a = phi i64 [ 0, %.preheader28.i.preheader.new.a ], [ %i.au, %.preheader.i ]
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 %.02731.i
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 17
  %8 = zext nneg i8 %7 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %8
  %10 = load i64, ptr %9, align 8                 ; 2 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02731.i
  %12 = load i64, ptr %11, align 8
  %13 = xor i64 %12, -1
  %14 = and i64 %10, %13
  %15 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02731.i ; 2 uses
  %16 = load i64, ptr %15, align 8
  %17 = xor i64 %10, -1
  %18 = and i64 %16, %17
  %19 = or i64 %18, %14
  store i64 %19, ptr %15, align 8
  %20 = or disjoint i64 %.02731.i, 1              ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %20
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = and i8 %i.ag, 17
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %20
  %i.am = load i64, ptr %i.al, align 8
  %i.an = xor i64 %i.am, -1
  %i.ao = and i64 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = xor i64 %i.ak, -1
  %i.as = and i64 %i.aq, %i.ar
  %i.at = or i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ap, align 8
  %21 = add nuw nsw i64 %.02731.i, 2              ; 2 uses
  %i.au = add i64 %.02731.i.a, 2                  ; 2 uses
  %exitcond33.not.i = icmp eq i64 %i.au, %unroll_iter.a
  br i1 %exitcond33.not.i, label %sve_not_zpz.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !360

sve_not_zpz.exit.loopexit.unr-lcssa:              ; preds = %.preheader.i
  %lcmp.mod10.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod10.not, label %sve_not_zpz.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %sve_not_zpz.exit.loopexit.unr-lcssa, %.preheader28.i.preheader.a
  %.02731.i.epil.init = phi i64 [ 0, %.preheader28.i.preheader.a ], [ %21, %sve_not_zpz.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod11 = trunc i32 %.v.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 %.02731.i.epil.init
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 17
  %25 = zext nneg i8 %24 to i64
  %26 = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %25
  %27 = load i64, ptr %26, align 8                ; 2 uses
  %28 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02731.i.epil.init
  %29 = load i64, ptr %28, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %27, %30
  %32 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02731.i.epil.init ; 2 uses
  %33 = load i64, ptr %32, align 8
  %34 = xor i64 %27, -1
  %35 = and i64 %33, %34
  %36 = or i64 %35, %31
  store i64 %36, ptr %32, align 8
  br label %sve_not_zpz.exit

sve_not_zpz.exit.loopexit7.unr-lcssa:             ; preds = %.preheader28.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sve_not_zpz.exit, label %.preheader28.i.epil.preheader

.preheader28.i.epil.preheader:                    ; preds = %sve_not_zpz.exit.loopexit7.unr-lcssa, %.preheader28.i.preheader
  %.030.i.epil.init = phi i64 [ 0, %.preheader28.i.preheader ], [ %i.ae, %sve_not_zpz.exit.loopexit7.unr-lcssa ] ; 3 uses
  %lcmp.mod8 = trunc i32 %.v.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %.030.i.epil.init
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = and i8 %i.aw, 17
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @expand_pred_s.word, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.030.i.epil.init
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = xor i64 %i.bc, -1
  %i.be = and i64 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i.epil.init
  store i64 %i.be, ptr %i.bf, align 8
  br label %sve_not_zpz.exit

sve_not_zpz.exit:                                 ; preds = %.preheader28.i.epil.preheader, %sve_not_zpz.exit.loopexit7.unr-lcssa, %.preheader.i.epil.preheader, %sve_not_zpz.exit.loopexit.unr-lcssa
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve_not_zpz_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.d, i32 %i.c, i32 %i.b  ; 6 uses
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 1
  %i.e = zext nneg i32 %.v.i.i to i64             ; 8 uses
  %i.f = and i32 %3, 1024
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %.preheader.i.preheader, label %.preheader28.i.preheader

.preheader28.i.preheader:                         ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i.i, 9
  br i1 %min.iters.check, label %.preheader28.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader28.i.preheader
  %i.g = shl nuw nsw i32 %.v.v.i.i, 3
  %narrow = add nuw nsw i32 %i.g, 8
  %i.h = zext nneg i32 %narrow to i64             ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  %scevgep7 = getelementptr i8, ptr %2, i64 %i.e
  %scevgep8 = getelementptr i8, ptr %1, i64 %i.h
  %bound0 = icmp ult ptr %0, %scevgep7
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound09 = icmp ult ptr %0, %scevgep8
  %bound110 = icmp ult ptr %1, %scevgep
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx = or i1 %found.conflict, %found.conflict11
  br i1 %conflict.rdx, label %.preheader28.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 508                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %wide.load = load <2 x i8>, ptr %i.i, align 1, !alias.scope !361
  %wide.load12 = load <2 x i8>, ptr %i.j, align 1, !alias.scope !361
  %i.k = and <2 x i8> %wide.load, splat (i8 1)
  %i.l = and <2 x i8> %wide.load12, splat (i8 1)
  %i.m = zext nneg <2 x i8> %i.k to <2 x i64>
  %i.n = zext nneg <2 x i8> %i.l to <2 x i64>
  %i.o = sub nsw <2 x i64> zeroinitializer, %i.m
  %i.p = sub nsw <2 x i64> zeroinitializer, %i.n
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load13 = load <2 x i64>, ptr %i.q, align 8, !alias.scope !364
  %wide.load14 = load <2 x i64>, ptr %i.r, align 8, !alias.scope !364
  %i.s = xor <2 x i64> %wide.load13, splat (i64 -1)
  %i.t = xor <2 x i64> %wide.load14, splat (i64 -1)
  %i.u = and <2 x i64> %i.o, %i.s
  %i.v = and <2 x i64> %i.p, %i.t
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8, !alias.scope !366, !noalias !368
  store <2 x i64> %i.v, ptr %i.x, align 8, !alias.scope !366, !noalias !368
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %sve_not_zpz.exit, label %.preheader28.i.preheader44

.preheader28.i.preheader44:                       ; preds = %vector.memcheck, %.preheader28.i.preheader, %middle.block
  %.030.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader28.i.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %i.z = zext nneg i32 %.v.v.i.i to i64           ; 2 uses
  %i.aa = and i64 %i.z, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not.not, label %.preheader28.i.prol, label %.preheader28.i.prol.loopexit

.preheader28.i.prol:                              ; preds = %.preheader28.i.preheader44
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.030.i.ph
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 1
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.030.i.ph
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = xor i64 %i.ah, -1
  %i.aj = and i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i.ph
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = or disjoint i64 %.030.i.ph, 1
  br label %.preheader28.i.prol.loopexit

.preheader28.i.prol.loopexit:                     ; preds = %.preheader28.i.prol, %.preheader28.i.preheader44
  %.030.i.unr = phi i64 [ %.030.i.ph, %.preheader28.i.preheader44 ], [ %i.al, %.preheader28.i.prol ]
  %i.am = icmp eq i64 %.030.i.ph, %i.z
  br i1 %i.am, label %sve_not_zpz.exit, label %.preheader28.i

.preheader.i.preheader:                           ; preds = %bb.a
  %min.iters.check27 = icmp samesign ult i32 %.v.v.i.i, 7
  br i1 %min.iters.check27, label %.preheader.i.preheader43, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.preheader.i.preheader
  %i.an = shl nuw nsw i32 %.v.v.i.i, 3
  %narrow42 = add nuw nsw i32 %i.an, 8
  %i.ao = zext nneg i32 %narrow42 to i64          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %0, i64 %i.ao ; 2 uses
  %scevgep17 = getelementptr i8, ptr %2, i64 %i.e
  %scevgep18 = getelementptr i8, ptr %1, i64 %i.ao
  %bound019 = icmp ult ptr %0, %scevgep17
  %bound120 = icmp ult ptr %2, %scevgep16
  %found.conflict21 = and i1 %bound019, %bound120
  %bound022 = icmp ult ptr %0, %scevgep18
  %bound123 = icmp ult ptr %1, %scevgep16
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %found.conflict21, %found.conflict24
  br i1 %conflict.rdx25, label %.preheader.i.preheader43, label %vector.ph28

vector.ph28:                                      ; preds = %vector.memcheck15
  %n.vec29 = and i64 %i.e, 508                    ; 3 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next38, %vector.body30 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %index31 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %wide.load32 = load <2 x i8>, ptr %i.ap, align 1, !alias.scope !370
  %wide.load33 = load <2 x i8>, ptr %i.aq, align 1, !alias.scope !370
  %i.ar = and <2 x i8> %wide.load32, splat (i8 1) ; 2 uses
  %i.as = and <2 x i8> %wide.load33, splat (i8 1) ; 2 uses
  %i.at = zext nneg <2 x i8> %i.ar to <2 x i64>
  %i.au = zext nneg <2 x i8> %i.as to <2 x i64>
  %i.av = sub nsw <2 x i64> zeroinitializer, %i.at
  %i.aw = sub nsw <2 x i64> zeroinitializer, %i.au
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index31 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !373
  %wide.load35 = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !373
  %i.az = xor <2 x i64> %wide.load34, splat (i64 -1)
  %i.ba = xor <2 x i64> %wide.load35, splat (i64 -1)
  %i.bb = and <2 x i64> %i.av, %i.az
  %i.bc = and <2 x i64> %i.aw, %i.ba
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index31 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load36 = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !375, !noalias !377
  %wide.load37 = load <2 x i64>, ptr %i.be, align 8, !alias.scope !375, !noalias !377
  %i.bf = icmp eq <2 x i8> %i.ar, zeroinitializer
  %i.bg = icmp eq <2 x i8> %i.as, zeroinitializer
  %i.bh = select <2 x i1> %i.bf, <2 x i64> %wide.load36, <2 x i64> zeroinitializer
  %i.bi = select <2 x i1> %i.bg, <2 x i64> %wide.load37, <2 x i64> zeroinitializer
  %i.bj = or <2 x i64> %i.bh, %i.bb
  %i.bk = or <2 x i64> %i.bi, %i.bc
  store <2 x i64> %i.bj, ptr %i.bd, align 8, !alias.scope !375, !noalias !377
  store <2 x i64> %i.bk, ptr %i.be, align 8, !alias.scope !375, !noalias !377
  %index.next38 = add nuw i64 %index31, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next38, %n.vec29
  br i1 %i.bl, label %middle.block39, label %vector.body30, !llvm.loop !378

middle.block39:                                   ; preds = %vector.body30
  %cmp.n40 = icmp eq i64 %n.vec29, %i.e
  br i1 %cmp.n40, label %sve_not_zpz.exit, label %.preheader.i.preheader43

.preheader.i.preheader43:                         ; preds = %vector.memcheck15, %.preheader.i.preheader, %middle.block39
  %.02731.i.ph = phi i64 [ 0, %vector.memcheck15 ], [ 0, %.preheader.i.preheader ], [ %n.vec29, %middle.block39 ]
  br label %.preheader.i

.preheader28.i:                                   ; preds = %.preheader28.i.prol.loopexit, %.preheader28.i
  %.030.i = phi i64 [ %i.ch, %.preheader28.i ], [ %.030.i.unr, %.preheader28.i.prol.loopexit ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %.030.i
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = and i8 %i.bn, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.030.i
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = xor i64 %i.bs, -1
  %i.bu = and i64 %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.030.i
  store i64 %i.bu, ptr %i.bv, align 8
  %i.bw = add nuw nsw i64 %.030.i, 1              ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = and i8 %i.by, 1
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bw
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = xor i64 %i.cd, -1
  %i.cf = and i64 %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bw
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = add nuw nsw i64 %.030.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ch, %i.e
  br i1 %exitcond.not.i.1, label %sve_not_zpz.exit, label %.preheader28.i, !llvm.loop !379

.preheader.i:                                     ; preds = %.preheader.i.preheader43, %.preheader.i
  %.02731.i = phi i64 [ %i.cw, %.preheader.i ], [ %.02731.i.ph, %.preheader.i.preheader43 ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %.02731.i
end_hunk_1
