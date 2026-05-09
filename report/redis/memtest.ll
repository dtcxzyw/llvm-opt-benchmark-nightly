inline.NumInlined: 31
begin_hunk_0_@memtest_test:bb.a
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.e ; 2 uses
  %i.ie = and i64 %.041.us.i104.us.us, 1
  %.not.us.i105.us.us = icmp eq i64 %i.ie, 0
  %i.if = select i1 %.not.us.i105.us.us, i64 -6148914691236517206, i64 6148914691236517205 ; 18 uses
  br i1 %i.k, label %.epil.preheader257, label %.lr.ph.us.i103.us.us.new

.lr.ph.us.i103.us.us.new:                         ; preds = %.lr.ph.us.i103.us.us, %.lr.ph.us.i103.us.us.new
  %.03440.us.us.i106.us.us = phi ptr [ %i.iv, %.lr.ph.us.i103.us.us.new ], [ %i.id, %.lr.ph.us.i103.us.us ] ; 9 uses
  %.03539.us.us.i107.us.us = phi ptr [ %i.iu, %.lr.ph.us.i103.us.us.new ], [ %i.ic, %.lr.ph.us.i103.us.us ] ; 9 uses
  %niter263 = phi i64 [ %niter263.next.7, %.lr.ph.us.i103.us.us.new ], [ 0, %.lr.ph.us.i103.us.us ]
  store i64 %i.if, ptr %.03440.us.us.i106.us.us, align 8, !tbaa !19
  store i64 %i.if, ptr %.03539.us.us.i107.us.us, align 8, !tbaa !19
  %i.ig = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 4096
  %i.ih = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 4096
  store i64 %i.if, ptr %i.ih, align 8, !tbaa !19
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !19
  %i.ii = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 8192
  %i.ij = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 8192
  store i64 %i.if, ptr %i.ij, align 8, !tbaa !19
  store i64 %i.if, ptr %i.ii, align 8, !tbaa !19
  %i.ik = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 12288
  %i.il = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 12288
  store i64 %i.if, ptr %i.il, align 8, !tbaa !19
  store i64 %i.if, ptr %i.ik, align 8, !tbaa !19
  %i.im = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 16384
  %i.in = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 16384
  store i64 %i.if, ptr %i.in, align 8, !tbaa !19
  store i64 %i.if, ptr %i.im, align 8, !tbaa !19
  %i.io = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 20480
  %i.ip = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 20480
  store i64 %i.if, ptr %i.ip, align 8, !tbaa !19
  store i64 %i.if, ptr %i.io, align 8, !tbaa !19
  %i.iq = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 24576
  %i.ir = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 24576
  store i64 %i.if, ptr %i.ir, align 8, !tbaa !19
  store i64 %i.if, ptr %i.iq, align 8, !tbaa !19
  %i.is = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 28672
  %i.it = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 28672
  store i64 %i.if, ptr %i.it, align 8, !tbaa !19
  store i64 %i.if, ptr %i.is, align 8, !tbaa !19
  %i.iu = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us, i64 32768 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us, i64 32768 ; 2 uses
  %niter263.next.7 = add i64 %niter263, 8         ; 2 uses
end_hunk_0
begin_hunk_1_@memtest_test:bb.a
  %.03440.us.us.i106.us.us.epil = phi ptr [ %.03440.us.us.i106.us.us.epil.init, %.epil.preheader257 ], [ %i.ix, %bb.l ] ; 2 uses
  %.03539.us.us.i107.us.us.epil = phi ptr [ %.03539.us.us.i107.us.us.epil.init, %.epil.preheader257 ], [ %i.iw, %bb.l ] ; 2 uses
  %epil.iter259 = phi i64 [ 0, %.epil.preheader257 ], [ %epil.iter259.next, %bb.l ]
  store i64 %i.if, ptr %.03440.us.us.i106.us.us.epil, align 8, !tbaa !19
  store i64 %i.if, ptr %.03539.us.us.i107.us.us.epil, align 8, !tbaa !19
  %i.iw = getelementptr inbounds nuw i8, ptr %.03539.us.us.i107.us.us.epil, i64 4096
  %i.ix = getelementptr inbounds nuw i8, ptr %.03440.us.us.i106.us.us.epil, i64 4096
  %epil.iter259.next = add i64 %epil.iter259, 1   ; 2 uses
end_hunk_1
begin_hunk_2_@memtest_preserving_test:bb.a
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.p ; 2 uses
  %i.iq = and i64 %.041.us.i172.us, 1
  %.not.us.i173.us = icmp eq i64 %i.iq, 0
  %i.ir = select i1 %.not.us.i173.us, i64 -6148914691236517206, i64 6148914691236517205 ; 18 uses
  br i1 %i.x, label %.epil.preheader372, label %.lr.ph.us.i171.us.new

.lr.ph.us.i171.us.new:                            ; preds = %.lr.ph.us.i171.us, %.lr.ph.us.i171.us.new
  %.03440.us.us.i174.us = phi ptr [ %i.jh, %.lr.ph.us.i171.us.new ], [ %i.ip, %.lr.ph.us.i171.us ] ; 9 uses
  %.03539.us.us.i175.us = phi ptr [ %i.jg, %.lr.ph.us.i171.us.new ], [ %i.io, %.lr.ph.us.i171.us ] ; 9 uses
  %niter378 = phi i64 [ %niter378.next.7, %.lr.ph.us.i171.us.new ], [ 0, %.lr.ph.us.i171.us ]
  store i64 %i.ir, ptr %.03440.us.us.i174.us, align 8, !tbaa !19
  store i64 %i.ir, ptr %.03539.us.us.i175.us, align 8, !tbaa !19
  %i.is = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 4096
  %i.it = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 4096
  store i64 %i.ir, ptr %i.it, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !19
  %i.iu = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 8192
  %i.iv = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 8192
  store i64 %i.ir, ptr %i.iv, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.iu, align 8, !tbaa !19
  %i.iw = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 12288
  %i.ix = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 12288
  store i64 %i.ir, ptr %i.ix, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.iw, align 8, !tbaa !19
  %i.iy = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 16384
  %i.iz = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 16384
  store i64 %i.ir, ptr %i.iz, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.iy, align 8, !tbaa !19
  %i.ja = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 20480
  %i.jb = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 20480
  store i64 %i.ir, ptr %i.jb, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.ja, align 8, !tbaa !19
  %i.jc = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 24576
  %i.jd = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 24576
  store i64 %i.ir, ptr %i.jd, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.jc, align 8, !tbaa !19
  %i.je = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 28672
  %i.jf = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 28672
  store i64 %i.ir, ptr %i.jf, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.je, align 8, !tbaa !19
  %i.jg = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us, i64 32768 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us, i64 32768 ; 2 uses
  %niter378.next.7 = add i64 %niter378, 8         ; 2 uses
end_hunk_2
begin_hunk_3_@memtest_preserving_test:bb.a
  %.03440.us.us.i174.us.epil = phi ptr [ %.03440.us.us.i174.us.epil.init, %.epil.preheader372 ], [ %i.jj, %bb.o ] ; 2 uses
  %.03539.us.us.i175.us.epil = phi ptr [ %.03539.us.us.i175.us.epil.init, %.epil.preheader372 ], [ %i.ji, %bb.o ] ; 2 uses
  %epil.iter374 = phi i64 [ 0, %.epil.preheader372 ], [ %epil.iter374.next, %bb.o ]
  store i64 %i.ir, ptr %.03440.us.us.i174.us.epil, align 8, !tbaa !19
  store i64 %i.ir, ptr %.03539.us.us.i175.us.epil, align 8, !tbaa !19
  %i.ji = getelementptr inbounds nuw i8, ptr %.03539.us.us.i175.us.epil, i64 4096
  %i.jj = getelementptr inbounds nuw i8, ptr %.03440.us.us.i174.us.epil, i64 4096
  %epil.iter374.next = add i64 %epil.iter374, 1   ; 2 uses
end_hunk_3
