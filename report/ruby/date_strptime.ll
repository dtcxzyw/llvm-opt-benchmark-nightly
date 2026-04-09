inline.NumInlined: 153
inline.NumDeleted: 18
begin_hunk_0_@read_digits:bb.a
  %i.m = mul nsw i64 %.03346, 10
  %i.n = load i8, ptr %.03445, align 1, !tbaa !17
  %i.o = sext i8 %i.n to i64
  %i.p = add i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.03445, i64 1
  %i.r = mul i64 %i.p, 10
  %i.s = load i8, ptr %i.q, align 1, !tbaa !17
  %i.t = sext i8 %i.s to i64
  %i.u = add i64 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.03445, i64 2
  %i.w = mul i64 %i.u, 10
  %i.x = load i8, ptr %i.v, align 1, !tbaa !17
  %i.y = sext i8 %i.x to i64
  %i.z = add i64 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.03445, i64 3
  %i.ab = mul i64 %i.z, 10
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ad = sext i8 %i.ac to i64
  %i.ae = add i64 %i.ab, %i.ad                    ; 2 uses
  %i.af = add i64 %i.ae, -53328                   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03445, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !24

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %4 = add i64 %i.ae, -53280
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

end_hunk_0
begin_hunk_1_@read_digits:bb.a
  %i.ah = mul nsw i64 %.03346.epil, 10
  %i.ai = load i8, ptr %.03445.epil, align 1, !tbaa !17
  %i.aj = sext i8 %i.ai to i64
  %i.ak = add i64 %i.ah, %i.aj                    ; 2 uses
  %i.al = add i64 %i.ak, -48                      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03445.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa56 = phi i64 [ %4, %._crit_edge.unr-lcssa ], [ %i.ak, %.lr.ph.epil ]
  %.lcssa = phi i64 [ %i.af, %._crit_edge.unr-lcssa ], [ %i.al, %.lr.ph.epil ] ; 2 uses
  %i.an = add i64 %.lcssa56, 4611686018427387856
  %or.cond.i = icmp sgt i64 %i.an, -1
  br i1 %or.cond.i, label %bb.e, label %bb.f

end_hunk_1
