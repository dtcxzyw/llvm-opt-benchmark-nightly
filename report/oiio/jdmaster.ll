inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@jpeg_core_output_dimensions:bb.a
  %.not155 = icmp ugt i32 %i.g, %i.ht
  br i1 %.not155, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !36
  %i.hw = zext i32 %i.hv to i64
  %i.hx = mul nuw nsw i64 %i.hw, 14
  %i.hy = tail call i64 @jdiv_round_up(i64 noundef %i.hx, i64 noundef 8) #5
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.hz, ptr %i.ia, align 8, !tbaa !37
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !38
  %i.id = zext i32 %i.ic to i64
  %i.ie = mul nuw nsw i64 %i.id, 14
  %i.if = tail call i64 @jdiv_round_up(i64 noundef %i.ie, i64 noundef 8) #5
  %i.ig = trunc i64 %i.if to i32
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !39
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 14, ptr %i.ii, align 8, !tbaa !40
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 14, ptr %i.ij, align 4, !tbaa !41
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.ik = mul i32 %i.i, 15
  %.not156 = icmp ugt i32 %i.g, %i.ik
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = load i32, ptr %i.il, align 8, !tbaa !36
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  br i1 %.not156, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.it = mul nuw nsw i64 %i.in, 15
  %i.iu = tail call i64 @jdiv_round_up(i64 noundef %i.it, i64 noundef 8) #5
  %i.iv = trunc i64 %i.iu to i32
  store i32 %i.iv, ptr %i.io, align 8, !tbaa !37
  %i.iw = load i32, ptr %i.ip, align 4, !tbaa !38
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul nuw nsw i64 %i.ix, 15
  %i.iz = tail call i64 @jdiv_round_up(i64 noundef %i.iy, i64 noundef 8) #5
  %i.ja = trunc i64 %i.iz to i32
  store i32 %i.ja, ptr %i.iq, align 4, !tbaa !39
  store i32 15, ptr %i.ir, align 8, !tbaa !40
  store i32 15, ptr %i.is, align 4, !tbaa !41
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.jb = shl nuw nsw i64 %i.in, 4
  %i.jc = tail call i64 @jdiv_round_up(i64 noundef %i.jb, i64 noundef 8) #5
  %i.jd = trunc i64 %i.jc to i32
  store i32 %i.jd, ptr %i.io, align 8, !tbaa !37
  %i.je = load i32, ptr %i.ip, align 4, !tbaa !38
  %i.jf = zext i32 %i.je to i64
  %i.jg = shl nuw nsw i64 %i.jf, 4
  %i.jh = tail call i64 @jdiv_round_up(i64 noundef %i.jg, i64 noundef 8) #5
  %i.ji = trunc i64 %i.jh to i32
  store i32 %i.ji, ptr %i.iq, align 4, !tbaa !39
  store i32 16, ptr %i.ir, align 8, !tbaa !40
  store i32 16, ptr %i.is, align 4, !tbaa !41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.i, %bb.m, %bb.q, %bb.u, %bb.y, %bb.ac, %bb.af, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o, %bb.k, %bb.g, %bb.c
  %i.jj = phi i32 [ 2, %bb.e ], [ 4, %bb.i ], [ 6, %bb.m ], [ 8, %bb.q ], [ 10, %bb.u ], [ 12, %bb.y ], [ 14, %bb.ac ], [ 16, %bb.af ], [ 15, %bb.ae ], [ 13, %bb.aa ], [ 11, %bb.w ], [ 9, %bb.s ], [ 7, %bb.o ], [ 5, %bb.k ], [ 3, %bb.g ], [ 1, %bb.c ] ; 18 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !42 ; 4 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ag
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !43 ; 2 uses
  %xtraiter = and i32 %i.jl, 7                    ; 3 uses
  %i.jp = icmp ult i32 %i.jl, 8
  br i1 %i.jp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.jl, 2147483640
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.new
  %.0158 = phi ptr [ %i.jo, %.lr.ph.new ], [ %i.kg, %bb.ah ] ; 17 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.ah ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0158, i64 36
  store i32 %i.jj, ptr %i.jq, align 4, !tbaa !44
  %i.jr = getelementptr inbounds nuw i8, ptr %.0158, i64 40
  store i32 %i.jj, ptr %i.jr, align 8, !tbaa !46
  %i.js = getelementptr inbounds nuw i8, ptr %.0158, i64 132
  store i32 %i.jj, ptr %i.js, align 4, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %.0158, i64 136
  store i32 %i.jj, ptr %i.jt, align 8, !tbaa !46
  %i.ju = getelementptr inbounds nuw i8, ptr %.0158, i64 228
  store i32 %i.jj, ptr %i.ju, align 4, !tbaa !44
  %i.jv = getelementptr inbounds nuw i8, ptr %.0158, i64 232
  store i32 %i.jj, ptr %i.jv, align 8, !tbaa !46
  %i.jw = getelementptr inbounds nuw i8, ptr %.0158, i64 324
  store i32 %i.jj, ptr %i.jw, align 4, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %.0158, i64 328
  store i32 %i.jj, ptr %i.jx, align 8, !tbaa !46
  %i.jy = getelementptr inbounds nuw i8, ptr %.0158, i64 420
  store i32 %i.jj, ptr %i.jy, align 4, !tbaa !44
  %i.jz = getelementptr inbounds nuw i8, ptr %.0158, i64 424
  store i32 %i.jj, ptr %i.jz, align 8, !tbaa !46
  %i.ka = getelementptr inbounds nuw i8, ptr %.0158, i64 516
  store i32 %i.jj, ptr %i.ka, align 4, !tbaa !44
  %i.kb = getelementptr inbounds nuw i8, ptr %.0158, i64 520
  store i32 %i.jj, ptr %i.kb, align 8, !tbaa !46
  %i.kc = getelementptr inbounds nuw i8, ptr %.0158, i64 612
  store i32 %i.jj, ptr %i.kc, align 4, !tbaa !44
  %i.kd = getelementptr inbounds nuw i8, ptr %.0158, i64 616
  store i32 %i.jj, ptr %i.kd, align 8, !tbaa !46
  %i.ke = getelementptr inbounds nuw i8, ptr %.0158, i64 708
  store i32 %i.jj, ptr %i.ke, align 4, !tbaa !44
  %i.kf = getelementptr inbounds nuw i8, ptr %.0158, i64 712
  store i32 %i.jj, ptr %i.kf, align 8, !tbaa !46
  %i.kg = getelementptr inbounds nuw i8, ptr %.0158, i64 768 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !47

bb.ai:                                            ; preds = %bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kj = load <2 x i32>, ptr %i.kh, align 8, !tbaa !3
  store <2 x i32> %i.kj, ptr %i.ki, align 8, !tbaa !3
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.0158.epil.init = phi ptr [ %i.jo, %.lr.ph ], [ %i.kg, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %.0158.epil = phi ptr [ %.0158.epil.init, %.epil.preheader ], [ %i.km, %bb.aj ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.kk = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 36
  store i32 %i.jj, ptr %i.kk, align 4, !tbaa !44
  %i.kl = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 40
  store i32 %i.jj, ptr %i.kl, align 8, !tbaa !46
  %i.km = getelementptr inbounds nuw i8, ptr %.0158.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.aj, !llvm.loop !49

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.aj, %bb.ag, %bb.ai
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @jpeg_calc_output_dimensions(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 2 uses
  %.not = icmp eq i32 %i.b, 202
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 21, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !56
  %i.f = load ptr, ptr %0, align 8, !tbaa !52
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  tail call void %i.g(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @jpeg_core_output_dimensions(ptr noundef nonnull %0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32
  %.not63 = icmp eq i32 %i.k, 0
  br i1 %.not63, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42   ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = load i32, ptr %i.q, align 8, !tbaa !40   ; 22 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.t = icmp slt i32 %i.r, 8
  br i1 %i.t, label %.lr.ph75.split.us, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph75
  %xtraiter = and i32 %i.o, 7                     ; 3 uses
  %i.u = icmp ult i32 %i.o, 8
  br i1 %i.u, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i32 %i.o, 2147483640
  br label %.critedge

.lr.ph75.split.us:                                ; preds = %.lr.ph75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.w = load i32, ptr %i.v, align 8, !tbaa !58
  %i.x = mul nsw i32 %i.w, %i.r
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.critedge.us, %.lr.ph75.split.us
  %.06074.us = phi ptr [ %i.m, %.lr.ph75.split.us ], [ %i.an, %.critedge.us ] ; 5 uses
  %.06173.us = phi i32 [ 0, %.lr.ph75.split.us ], [ %i.am, %.critedge.us ]
  %i.y = getelementptr inbounds nuw i8, ptr %.06074.us, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %factor.op.mul.us = shl i32 %i.z, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.06074.us, i64 12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.g
  %.068.us = phi i32 [ %i.r, %.lr.ph.us ], [ %i.ag, %bb.g ] ; 5 uses
  %.reass.us = mul i32 %.068.us, %factor.op.mul.us
  %i.ab = srem i32 %i.x, %.reass.us
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.s, align 4, !tbaa !60
  %i.ae = mul nsw i32 %i.ad, %i.r
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !61
  %i.ag = shl i32 %.068.us, 1                     ; 3 uses
  %i.ah = mul i32 %i.ag, %i.af
  %i.ai = srem i32 %i.ae, %i.ah
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %.critedge.us

.critedge.us:                                     ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.us = phi i32 [ %i.ag, %bb.g ], [ %.068.us, %bb.e ], [ %.068.us, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.06074.us, i64 40
  store i32 %.0.lcssa.us, ptr %i.ak, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %.06074.us, i64 36
  store i32 %.0.lcssa.us, ptr %i.al, align 4, !tbaa !44
  %i.am = add nuw nsw i32 %.06173.us, 1           ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06074.us, i64 96
  %exitcond79.not = icmp eq i32 %i.am, %i.o
  br i1 %exitcond79.not, label %.lr.ph, label %.lr.ph.us, !llvm.loop !62

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp slt i32 %.068.us, 4
  br i1 %i.ao, label %bb.e, label %.critedge.us, !llvm.loop !63

.lr.ph.loopexit88.unr-lcssa:                      ; preds = %.critedge
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.lr.ph.loopexit88.unr-lcssa, %.critedge.preheader
  %.06074.epil.init = phi ptr [ %i.m, %.critedge.preheader ], [ %i.bd, %.lr.ph.loopexit88.unr-lcssa ]
  %lcmp.mod89 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %.critedge.epil

.critedge.epil:                                   ; preds = %.critedge.epil, %.critedge.epil.preheader
  %.06074.epil = phi ptr [ %i.aq, %.critedge.epil ], [ %.06074.epil.init, %.critedge.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.critedge.epil ], [ 0, %.critedge.epil.preheader ]
  %1 = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 40
  store i32 %i.r, ptr %1, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 36
  store i32 %i.r, ptr %i.ap, align 4, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %.06074.epil, i64 96
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.critedge.epil, !llvm.loop !64

.lr.ph:                                           ; preds = %.lr.ph.loopexit88.unr-lcssa, %.critedge.epil, %.critedge.us
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 412
  br label %bb.h

.critedge:                                        ; preds = %.critedge, %.critedge.preheader.new
  %.06074 = phi ptr [ %i.m, %.critedge.preheader.new ], [ %i.bd, %.critedge ] ; 17 uses
  %niter = phi i32 [ 0, %.critedge.preheader.new ], [ %niter.next.7, %.critedge ]
  %2 = getelementptr inbounds nuw i8, ptr %.06074, i64 40
  store i32 %i.r, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds nuw i8, ptr %.06074, i64 36
  store i32 %i.r, ptr %3, align 4, !tbaa !44
  %4 = getelementptr inbounds nuw i8, ptr %.06074, i64 136
  store i32 %i.r, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds nuw i8, ptr %.06074, i64 132
  store i32 %i.r, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %.06074, i64 232
  store i32 %i.r, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds nuw i8, ptr %.06074, i64 228
  store i32 %i.r, ptr %7, align 4, !tbaa !44
  %8 = getelementptr inbounds nuw i8, ptr %.06074, i64 328
  store i32 %i.r, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds nuw i8, ptr %.06074, i64 324
  store i32 %i.r, ptr %9, align 4, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %.06074, i64 424
  store i32 %i.r, ptr %i.av, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %.06074, i64 420
  store i32 %i.r, ptr %i.aw, align 4, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %.06074, i64 520
  store i32 %i.r, ptr %i.ax, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw i8, ptr %.06074, i64 516
  store i32 %i.r, ptr %i.ay, align 4, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %.06074, i64 616
  store i32 %i.r, ptr %i.az, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %.06074, i64 612
  store i32 %i.r, ptr %i.ba, align 4, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %.06074, i64 712
  store i32 %i.r, ptr %i.bb, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %.06074, i64 708
  store i32 %i.r, ptr %i.bc, align 4, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %.06074, i64 768 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.loopexit88.unr-lcssa, label %.critedge, !llvm.loop !62

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.177 = phi ptr [ %i.m, %.lr.ph ], [ %i.ci, %bb.h ] ; 6 uses
  %.16276 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.h ]
  %i.be = load i32, ptr %i.ar, align 8, !tbaa !36
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.177, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %.177, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !44
  %i.bk = mul nsw i32 %i.bj, %i.bh
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.bl, %i.bf
  %i.bn = load i32, ptr %i.as, align 8, !tbaa !58
  %i.bo = shl nsw i32 %i.bn, 3
  %i.bp = sext i32 %i.bo to i64
  %i.bq = tail call i64 @jdiv_round_up(i64 noundef %i.bm, i64 noundef %i.bp) #5
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.177, i64 44
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !65
  %i.bt = load i32, ptr %i.at, align 4, !tbaa !38
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.177, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !61
  %i.bx = load i32, ptr %i.bi, align 4, !tbaa !44
  %i.by = mul nsw i32 %i.bx, %i.bw
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, %i.bu
  %i.cb = load i32, ptr %i.au, align 4, !tbaa !60
  %i.cc = shl nsw i32 %i.cb, 3
  %i.cd = sext i32 %i.cc to i64
  %i.ce = tail call i64 @jdiv_round_up(i64 noundef %i.ca, i64 noundef %i.cd) #5
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %.177, i64 48
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !66
  %i.ch = add nuw nsw i32 %.16276, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.177, i64 96
  %i.cj = load i32, ptr %i.n, align 8, !tbaa !42
  %i.ck = icmp slt i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.h, label %.loopexit, !llvm.loop !67

bb.i:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cn = load <2 x i32>, ptr %i.cl, align 8, !tbaa !3
  store <2 x i32> %i.cn, ptr %i.cm, align 8, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !68 ; 3 uses
  %switch.tableidx = add i32 %i.cp, -1            ; 2 uses
  %i.cq = icmp ult i32 %switch.tableidx, 16
  br i1 %i.cq, label %switch.lookup, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !42
  br label %bb.k

switch.lookup:                                    ; preds = %.loopexit
  %i.ct = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.jpeg_calc_output_dimensions, i64 %i.ct
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.k

bb.k:                                             ; preds = %switch.lookup, %bb.j
  %.sink = phi i32 [ %i.cs, %bb.j ], [ %switch.ext, %switch.lookup ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %.sink, ptr %i.cu, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !70
  %.not64 = icmp eq i32 %i.cw, 0
  %i.cx = select i1 %.not64, i32 %.sink, i32 1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !71
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %bb.l, label %use_merged_upsample.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !72
  %.not37.i = icmp eq i32 %i.dd, 0
  br i1 %.not37.i, label %bb.m, label %use_merged_upsample.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.df = load i32, ptr %i.de, align 4, !tbaa !73
  %.not38.i = icmp eq i32 %i.df, 0
  br i1 %.not38.i, label %bb.n, label %use_merged_upsample.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !74
  %.not39.i = icmp eq i32 %i.dh, 3
  br i1 %.not39.i, label %bb.o, label %use_merged_upsample.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !42
  %.not40.i = icmp eq i32 %i.dj, 3
  br i1 %.not40.i, label %bb.p, label %use_merged_upsample.exit.thread

bb.p:                                             ; preds = %bb.o
  switch i32 %i.cp, label %use_merged_upsample.exit.thread [
    i32 16, label %bb.q
    i32 2, label %bb.r
    i32 6, label %bb.r
    i32 7, label %bb.r
    i32 8, label %bb.r
    i32 9, label %bb.r
    i32 10, label %bb.r
    i32 11, label %bb.r
    i32 12, label %bb.r
    i32 13, label %bb.r
    i32 14, label %bb.r
    i32 15, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %.not53.i = icmp eq i32 %.sink, 3
  br i1 %.not53.i, label %.thread.i, label %use_merged_upsample.exit.thread

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.dk = zext nneg i32 %i.cp to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %.not55.i = icmp eq i32 %.sink, %i.dm
  br i1 %.not55.i, label %.thread.i, label %use_merged_upsample.exit.thread

.thread.i:                                        ; preds = %bb.r, %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43 ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !59
  %.not56.i = icmp eq i32 %i.dq, 2
  br i1 %.not56.i, label %bb.s, label %use_merged_upsample.exit.thread

bb.s:                                             ; preds = %.thread.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !59
  %.not57.i = icmp eq i32 %i.ds, 1
  br i1 %.not57.i, label %bb.t, label %use_merged_upsample.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 200
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !59
  %.not58.i = icmp eq i32 %i.du, 1
  br i1 %.not58.i, label %bb.u, label %use_merged_upsample.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !61
  %i.dx = icmp sgt i32 %i.dw, 2
  br i1 %i.dx, label %use_merged_upsample.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 108
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !61
  %.not59.i = icmp eq i32 %i.dz, 1
  br i1 %.not59.i, label %bb.w, label %use_merged_upsample.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 204
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !61
  %.not60.i = icmp eq i32 %i.eb, 1
  br i1 %.not60.i, label %bb.x, label %use_merged_upsample.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !44 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !40
  %.not61.i = icmp eq i32 %i.ed, %i.ef
  br i1 %.not61.i, label %bb.y, label %use_merged_upsample.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %i.do, i64 132
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !44
  %.not62.i = icmp eq i32 %i.eh, %i.ed
  br i1 %.not62.i, label %use_merged_upsample.exit, label %use_merged_upsample.exit.thread

use_merged_upsample.exit:                         ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %i.do, i64 228
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !44
  %.not63.i.not = icmp eq i32 %i.ej, %i.ed
  br i1 %.not63.i.not, label %bb.z, label %use_merged_upsample.exit.thread

bb.z:                                             ; preds = %use_merged_upsample.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !60
  br label %use_merged_upsample.exit.thread
end_hunk_0
