inline.NumInlined: 29988
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 385
loop-unroll.NumUnrolled: 431
begin_hunk_0_@_ZN6duckdb17ChecksumRemainderEPvm:bb.a
._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.d = and i64 %1, 8
  %lcmp.mod.not = icmp eq i64 %i.d, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.a, %._crit_edge.loopexit.unr-lcssa
  %.041.epil.init = phi i64 [ %i.b, %bb.a ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %.03840.epil.init = phi i64 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03840.epil.init
  %.0.copyload.i.epil = load i64, ptr %i.e, align 1
  %i.f = mul i64 %.0.copyload.i.epil, -4132994306676758123 ; 2 uses
  %i.g = lshr i64 %i.f, 47
  %i.h = xor i64 %i.g, %i.f
  %i.i = mul i64 %i.h, -4132994306676758123
  %i.j = xor i64 %i.i, %.041.epil.init
  %i.k = mul i64 %i.j, -4132994306676758123
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ] ; 8 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.m = and i64 %1, 7
  switch i64 %i.m, label %default.unreachable42 [
    i64 7, label %bb.b
    i64 6, label %bb.c
    i64 5, label %bb.d
    i64 4, label %bb.e
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.041 = phi i64 [ %i.b, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ]
  %.03840 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03840
  %.0.copyload.i = load i64, ptr %i.n, align 1
  %i.o = mul i64 %.0.copyload.i, -4132994306676758123 ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -4132994306676758123
  %i.s = xor i64 %i.r, %.041
  %i.t = mul i64 %i.s, -4132994306676758123
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03840
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.v, align 1
  %i.w = mul i64 %.0.copyload.i.1, -4132994306676758123 ; 2 uses
  %i.x = lshr i64 %i.w, 47
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4132994306676758123
  %i.aa = xor i64 %i.z, %i.t
  %i.ab = mul i64 %i.aa, -4132994306676758123     ; 3 uses
  %i.ac = add nuw nsw i64 %.03840, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1243

bb.b:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !79
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 48
  %i.ah = xor i64 %i.ag, %.0.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.1 = phi i64 [ %i.ah, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !79
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 40
  %i.am = xor i64 %i.al, %.1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.2 = phi i64 [ %i.am, %bb.c ], [ %.0.lcssa, %._crit_edge ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !79
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = xor i64 %i.aq, %.2
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.3 = phi i64 [ %i.ar, %bb.d ], [ %.0.lcssa, %._crit_edge ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !79
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 24
  %i.aw = xor i64 %i.av, %.3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.4 = phi i64 [ %i.aw, %bb.e ], [ %.0.lcssa, %._crit_edge ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !79
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 16
  %i.bb = xor i64 %i.ba, %.4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.5 = phi i64 [ %i.bb, %bb.f ], [ %.0.lcssa, %._crit_edge ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !79
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 8
  %i.bg = xor i64 %i.bf, %.5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.6 = phi i64 [ %i.bg, %bb.g ], [ %.0.lcssa, %._crit_edge ]
  %i.bh = load i8, ptr %i.l, align 1, !tbaa !79
  %i.bi = zext i8 %i.bh to i64
  %i.bj = xor i64 %.6, %i.bi
  %i.bk = mul i64 %i.bj, -4132994306676758123
  br label %bb.i

default.unreachable42:                            ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.7 = phi i64 [ %i.bk, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.bl = lshr i64 %.7, 47
  %i.bm = xor i64 %i.bl, %.7
  %i.bn = mul i64 %i.bm, -4132994306676758123     ; 2 uses
  %i.bo = lshr i64 %i.bn, 47
  %i.bp = xor i64 %i.bo, %i.bn
  ret i64 %i.bp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6duckdb8ChecksumEPhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 4 uses
  %.not19 = icmp eq i64 %i.a, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 32
  br i1 %min.iters.check, label %.lr.ph.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ <i64 5381, i64 0>, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi27 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load28 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = mul <2 x i64> %wide.load, splat (i64 -4658895280553007687)
  %i.e = mul <2 x i64> %wide.load28, splat (i64 -4658895280553007687)
  %i.f = xor <2 x i64> %i.d, %vec.phi             ; 2 uses
  %i.g = xor <2 x i64> %i.e, %vec.phi27           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1244

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader29

.lr.ph.preheader29:                               ; preds = %.lr.ph.preheader, %middle.block
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01416.ph = phi i64 [ 5381, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader29, %.lr.ph
  %.017 = phi i64 [ %i.n, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader29 ] ; 2 uses
  %.01416 = phi i64 [ %i.m, %.lr.ph ], [ %.01416.ph, %.lr.ph.preheader29 ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = mul i64 %i.k, -4658895280553007687
  %i.m = xor i64 %i.l, %.01416                    ; 2 uses
  %i.n = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1245

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa26 = phi i64 [ %i.i, %middle.block ], [ %i.m, %.lr.ph ]
  %i.o = and i64 %1, -8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.014.lcssa = phi i64 [ 5381, %bb.a ], [ %.lcssa26, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ] ; 3 uses
  %.not = icmp eq i64 %1, %.0.lcssa
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = sub i64 %1, %.0.lcssa                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa ; 4 uses
  %i.r = mul i64 %i.p, -4132994306676758123
  %i.s = xor i64 %i.r, 3782874213                 ; 3 uses
  %i.t = lshr i64 %i.p, 3                         ; 4 uses
  switch i64 %i.t, label %.lr.ph.i.preheader.new [
    i64 0, label %._crit_edge.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.b
  %unroll_iter = and i64 %i.t, 2305843009213693950
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %2 = and i64 %i.p, 8
  %lcmp.mod.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.b, %._crit_edge.i.loopexit.unr-lcssa
  %.041.i.epil.init = phi i64 [ %i.s, %bb.b ], [ %18, %._crit_edge.i.loopexit.unr-lcssa ]
  %.03840.i.epil.init = phi i64 [ 0, %bb.b ], [ %19, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03840.i.epil.init
  %.0.copyload.i.i.epil = load i64, ptr %3, align 1
  %i.u = mul i64 %.0.copyload.i.i.epil, -4132994306676758123 ; 2 uses
  %i.v = lshr i64 %i.u, 47
  %i.w = xor i64 %i.v, %i.u
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = xor i64 %i.x, %.041.i.epil.init
  %i.z = mul i64 %i.y, -4132994306676758123
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.b
  %.0.lcssa.i = phi i64 [ %i.s, %bb.b ], [ %18, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.z, %.lr.ph.i.epil.preheader ] ; 8 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t ; 7 uses
  %i.ab = and i64 %1, 7
  switch i64 %i.ab, label %default.unreachable [
    i64 7, label %bb.c
    i64 6, label %bb.d
    i64 5, label %bb.e
    i64 4, label %bb.f
    i64 3, label %bb.g
    i64 2, label %bb.h
    i64 1, label %bb.i
    i64 0, label %_ZN6duckdb17ChecksumRemainderEPvm.exit
  ]

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.041.i = phi i64 [ %i.s, %.lr.ph.i.preheader.new ], [ %18, %.lr.ph.i ]
  %.03840.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %19, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03840.i
  %.0.copyload.i.i = load i64, ptr %4, align 1
  %5 = mul i64 %.0.copyload.i.i, -4132994306676758123 ; 2 uses
  %6 = lshr i64 %5, 47
  %7 = xor i64 %6, %5
  %8 = mul i64 %7, -4132994306676758123
  %9 = xor i64 %8, %.041.i
  %10 = mul i64 %9, -4132994306676758123
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03840.i
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.0.copyload.i.i.1 = load i64, ptr %12, align 1
  %13 = mul i64 %.0.copyload.i.i.1, -4132994306676758123 ; 2 uses
  %14 = lshr i64 %13, 47
  %15 = xor i64 %14, %13
  %16 = mul i64 %15, -4132994306676758123
  %17 = xor i64 %16, %10
  %18 = mul i64 %17, -4132994306676758123         ; 3 uses
  %19 = add nuw nsw i64 %.03840.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1243

bb.c:                                             ; preds = %._crit_edge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !79
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 48
  %i.ag = xor i64 %i.af, %.0.lcssa.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1.i = phi i64 [ %i.ag, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !79
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 40
  %i.al = xor i64 %i.ak, %.1.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.2.i = phi i64 [ %i.al, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.an = load i8, ptr %i.am, align 1, !tbaa !79
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 32
  %i.aq = xor i64 %i.ap, %.2.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.3.i = phi i64 [ %i.aq, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !79
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 24
  %i.av = xor i64 %i.au, %.3.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.4.i = phi i64 [ %i.av, %bb.f ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !79
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 16
  %i.ba = xor i64 %i.az, %.4.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.5.i = phi i64 [ %i.ba, %bb.g ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !79
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 8
  %i.bf = xor i64 %i.be, %.5.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.6.i = phi i64 [ %i.bf, %bb.h ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.bg = load i8, ptr %i.aa, align 1, !tbaa !79
  %i.bh = zext i8 %i.bg to i64
  %i.bi = xor i64 %.6.i, %i.bh
  %i.bj = mul i64 %i.bi, -4132994306676758123
  br label %_ZN6duckdb17ChecksumRemainderEPvm.exit

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

_ZN6duckdb17ChecksumRemainderEPvm.exit:           ; preds = %._crit_edge.i, %bb.i
  %.7.i = phi i64 [ %i.bj, %bb.i ], [ %.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bk = lshr i64 %.7.i, 47
  %i.bl = xor i64 %i.bk, %.7.i
  %i.bm = mul i64 %i.bl, -4132994306676758123     ; 2 uses
  %i.bn = lshr i64 %i.bm, 47
  %i.bo = xor i64 %.014.lcssa, %i.bn
  %i.bp = xor i64 %i.bo, %i.bm
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb17ChecksumRemainderEPvm.exit, %._crit_edge
  %.1 = phi i64 [ %i.bp, %_ZN6duckdb17ChecksumRemainderEPvm.exit ], [ %.014.lcssa, %._crit_edge ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb27AdditionalAuthenticatedDataD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb27AdditionalAuthenticatedDataE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !958  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12MemoryStreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #58, !inline_history !967
  br label %_ZNSt10unique_ptrIN6duckdb12MemoryStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12MemoryStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb27AdditionalAuthenticatedDataD0Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6duckdb27AdditionalAuthenticatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #58
  tail call void @_ZdlPv(ptr noundef nonnull %0) #60
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6duckdb27AdditionalAuthenticatedData4dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !958  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10unique_ptrINS_12MemoryStreamESt14default_deleteIS1_ELb1EEptEv.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn8.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb10unique_ptrINS_12MemoryStreamESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb27AdditionalAuthenticatedData4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !958  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10unique_ptrINS_12MemoryStreamESt14default_deleteIS1_ELb1EEptEv.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2057, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.h unwind label %bb.e
end_hunk_0
