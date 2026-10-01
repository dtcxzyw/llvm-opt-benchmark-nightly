Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.gj = getelementptr i8, ptr %i.al, i64 %i.fu
  %i.gk = getelementptr i8, ptr %i.al, i64 %i.fv
  %i.gl = getelementptr i8, ptr %i.al, i64 %reass.sub697
  %i.gm = getelementptr i8, ptr %i.gl, i64 4
  %i.gn = getelementptr i8, ptr %i.al, i64 %i.fr
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %min.iters.check558 = icmp samesign ugt i64 %indvars.iv381, 2
  %or.cond699 = select i1 %min.iters.check558, i1 %ident.check531.not, i1 false
  %bound0546 = icmp ult ptr %i.an, %scevgep537
  %bound1547 = icmp ult ptr %i.fl, %scevgep534
  %found.conflict548 = and i1 %bound0546, %bound1547
  %bound0549 = icmp ult ptr %i.an, %scevgep541
  %bound1550 = icmp ult ptr %scevgep539, %scevgep534
  %found.conflict551 = and i1 %bound0549, %bound1550
  %conflict.rdx552 = or i1 %found.conflict548, %found.conflict551
  %bound0553 = icmp ult ptr %i.an, %scevgep545
  %bound1554 = icmp ult ptr %scevgep542, %scevgep534
  %found.conflict555 = and i1 %bound0553, %bound1554
  %conflict.rdx556 = or i1 %conflict.rdx552, %found.conflict555
  %n.vec560 = and i64 %i.fn, 2147483640
  %i.gp = add nuw nsw i64 %i.fn, 1
  %i.gq = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.gp)
  %i.gr = sub nsw i64 %i.gq, %i.fn                ; 3 uses
  %min.iters.check514 = icmp ugt i64 %i.gr, 7
  %or.cond700 = select i1 %min.iters.check514, i1 %ident.check506.not, i1 false
  %invariant.op738 = add i64 %i.fx, -1
  %invariant.op740 = add i64 %i.ga, -1
  %invariant.op742 = add i64 %i.gd, -1
  %n.vec516 = and i64 %i.gr, -8                   ; 4 uses
  %i.gs = add i64 %n.vec516, %i.fn                ; 2 uses
  %i.gt = add i64 %i.fq, %n.vec516
  %cmp.n527 = icmp eq i64 %i.gr, %n.vec516
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv360 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next361, %._crit_edge ] ; 5 uses
  %i.gu = mul i64 %i.ce, %indvars.iv360           ; 3 uses
  %i.gv = mul i64 %i.cc, %indvars.iv360           ; 5 uses
  %scevgep595 = getelementptr i8, ptr %i.ex, i64 %i.gv
  %scevgep596 = getelementptr i8, ptr %i.ey, i64 %i.gv
  %scevgep598 = getelementptr i8, ptr %i.ez, i64 %i.gv
  %scevgep599 = getelementptr i8, ptr %i.fb, i64 %i.gv
  %scevgep601 = getelementptr i8, ptr %i.fd, i64 %i.gv
  %i.gw = mul i64 %i.bx, %indvars.iv360
  %i.gx = mul nuw nsw i64 %indvars.iv360, %i.bn   ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gx ; 28 uses
  %invariant.gep302 = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.eb ; 4 uses
  %brmerge749 = select i1 %min.iters.check680, i1 true, i1 %conflict.rdx678
  br i1 %brmerge749, label %.lr.ph.i.preheader, label %vector.body683

.lr.ph.i.preheader:                               ; preds = %bb.g
  br i1 %i.fe, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.body683:                                   ; preds = %bb.g, %vector.body683
  %index684 = phi i64 [ %index.next693, %vector.body683 ], [ 0, %bb.g ] ; 5 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index684 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load685 = load <4 x float>, ptr %i.gz, align 4, !tbaa !9, !alias.scope !165
  %wide.load686 = load <4 x float>, ptr %i.ha, align 4, !tbaa !9, !alias.scope !165
  %i.hb = sub nuw nsw i64 %i.eb, %index684
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -12
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -28
  %wide.load687 = load <4 x float>, ptr %i.hd, align 4, !tbaa !9, !alias.scope !166
  %wide.load688 = load <4 x float>, ptr %i.he, align 4, !tbaa !9, !alias.scope !166
  %reverse689 = shufflevector <4 x float> %wide.load687, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse690 = shufflevector <4 x float> %wide.load688, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load685, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse689)
  %i.hg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load686, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse690)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %index684 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load691 = load <4 x float>, ptr %i.hh, align 4, !tbaa !9, !alias.scope !167
  %wide.load692 = load <4 x float>, ptr %i.hi, align 4, !tbaa !9, !alias.scope !167
  %i.hj = fadd <4 x float> %i.hf, %wide.load691
  %i.hk = fadd <4 x float> %i.hg, %wide.load692
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index684 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <4 x float> %i.hj, ptr %i.hl, align 4, !tbaa !9, !alias.scope !168, !noalias !169
  store <4 x float> %i.hk, ptr %i.hm, align 4, !tbaa !9, !alias.scope !168, !noalias !169
  %index.next693 = add nuw i64 %index684, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next693, %n.vec682
  br i1 %i.hn, label %.preheader53.i, label %vector.body683, !llvm.loop !118

.preheader53.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod713.not, label %.preheader53.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %.preheader53.i.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod714)
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i.epil.init
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !9
  %i.hq = sub nuw nsw i64 %i.eb, %indvars.iv.i.epil.init
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !9
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hp, float 2.000000e+00, float %i.hs)
  %gep303.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.i.epil.init
  %i.hu = load float, ptr %gep303.epil, align 4, !tbaa !9
  %i.hv = fadd float %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.epil.init
  store float %i.hv, ptr %i.hw, align 4, !tbaa !9
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %vector.body683, %.lr.ph.i.epil.preheader, %.preheader53.i.loopexit.unr-lcssa
  br i1 %i.ed, label %.lr.ph56.i.preheader, label %.preheader.i

.lr.ph56.i.preheader:                             ; preds = %.preheader53.i
  br i1 %min.iters.check639, label %.lr.ph56.i.preheader706, label %vector.memcheck632

vector.memcheck632:                               ; preds = %.lr.ph56.i.preheader
  %.reass = add i64 %i.gu, %invariant.op729
  %diff.check633 = icmp ult i64 %.reass, 31
  %.reass731 = add i64 %i.gu, %invariant.op730
  %diff.check634 = icmp ult i64 %.reass731, 31
  %conflict.rdx635 = or i1 %diff.check633, %diff.check634
  %.reass733 = add i64 %i.gu, %invariant.op732
  %diff.check636 = icmp ult i64 %.reass733, 31
  %conflict.rdx637 = or i1 %conflict.rdx635, %diff.check636
  br i1 %conflict.rdx637, label %.lr.ph56.i.preheader706, label %vector.ph640

vector.ph640:                                     ; preds = %vector.memcheck632
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ee
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph640
  %index643 = phi i64 [ 0, %vector.ph640 ], [ %index.next650, %vector.body642 ] ; 4 uses
  %i.hy = add nuw i64 %index643, %i.eb            ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %wide.load644 = load <4 x float>, ptr %i.hz, align 4, !tbaa !9
  %wide.load645 = load <4 x float>, ptr %i.ia, align 4, !tbaa !9
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index643 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load646 = load <4 x float>, ptr %i.ib, align 4, !tbaa !9
  %wide.load647 = load <4 x float>, ptr %i.ic, align 4, !tbaa !9
  %i.id = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load644, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load646)
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load645, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load647)
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index643 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load648 = load <4 x float>, ptr %i.if, align 4, !tbaa !9
  %wide.load649 = load <4 x float>, ptr %i.ig, align 4, !tbaa !9
  %i.ih = fadd <4 x float> %i.id, %wide.load648
  %i.ii = fadd <4 x float> %i.ie, %wide.load649
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.hy ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store <4 x float> %i.ih, ptr %i.ij, align 4, !tbaa !9
  store <4 x float> %i.ii, ptr %i.ik, align 4, !tbaa !9
  %index.next650 = add nuw i64 %index643, 8       ; 2 uses
  %i.il = icmp eq i64 %index.next650, %n.vec641
  br i1 %i.il, label %middle.block651, label %vector.body642, !llvm.loop !119

middle.block651:                                  ; preds = %vector.body642
  br i1 %cmp.n652, label %.preheader.loopexit.i, label %.lr.ph56.i.preheader706

.lr.ph56.i.preheader706:                          ; preds = %vector.memcheck632, %.lr.ph56.i.preheader, %middle.block651
  %indvars.iv64.i.ph = phi i64 [ %i.eb, %vector.memcheck632 ], [ %i.eb, %.lr.ph56.i.preheader ], [ %i.fi, %middle.block651 ]
  %indvars.iv62.i.ph = phi i64 [ %i.ee, %vector.memcheck632 ], [ %i.ee, %.lr.ph56.i.preheader ], [ %i.fj, %middle.block651 ]
  br label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %niter716 = phi i64 [ %niter716.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i
  %i.in = load float, ptr %i.im, align 4, !tbaa !9
  %i.io = sub nuw nsw i64 %i.eb, %indvars.iv.i
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !9
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.in, float 2.000000e+00, float %i.iq)
  %gep303 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.i
  %i.is = load float, ptr %gep303, align 4, !tbaa !9
  %i.it = fadd float %i.ir, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !9
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next.i
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !9
  %i.ix = sub nuw nsw i64 %i.eb, %indvars.iv.next.i
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !9
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iw, float 2.000000e+00, float %i.iz)
  %gep303.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next.i
  %i.jb = load float, ptr %gep303.1, align 4, !tbaa !9
  %i.jc = fadd float %i.ja, %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i
  store float %i.jc, ptr %i.jd, align 4, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter716.next.1 = add i64 %niter716, 2         ; 2 uses
  %niter716.ncmp.1 = icmp eq i64 %niter716.next.1, %unroll_iter715
  br i1 %niter716.ncmp.1, label %.preheader53.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !120

.preheader.loopexit.i:                            ; preds = %.lr.ph56.i, %middle.block651
  %indvars.iv.next65.i.lcssa = phi i64 [ %i.fi, %middle.block651 ], [ %indvars.iv.next65.i, %.lr.ph56.i ]
  %i.je = trunc nuw nsw i64 %indvars.iv.next65.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ea, %.preheader53.i ], [ %i.je, %.preheader.loopexit.i ] ; 4 uses
  %i.jf = icmp slt i32 %.1.lcssa.i, %i.bj
  br i1 %i.jf, label %.lr.ph59.i, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit

.lr.ph59.i:                                       ; preds = %.preheader.i
  %i.jg = sext i32 %.1.lcssa.i to i64             ; 9 uses
  %i.jh = sub nsw i64 %i.bk, %i.jg                ; 3 uses
  %min.iters.check615 = icmp ult i64 %i.jh, 12
  br i1 %min.iters.check615, label %scalar.ph614.preheader, label %vector.scevcheck589

vector.scevcheck589:                              ; preds = %.lr.ph59.i
  %i.ji = xor i64 %i.jg, -1
  %i.jj = add nsw i64 %i.ji, %i.bk                ; 2 uses
  %i.jk = add i32 %i.ea, %.1.lcssa.i
  %i.jl = sub i32 %i.by, %i.jk                    ; 2 uses
  %i.jm = trunc i64 %i.jj to i32
  %i.jn = sub i32 %i.jl, %i.jm
  %i.jo = icmp sgt i32 %i.jn, %i.jl
  %i.jp = icmp ugt i64 %i.jj, 4294967295
  %i.jq = or i1 %i.jo, %i.jp
  br i1 %i.jq, label %scalar.ph614.preheader, label %vector.memcheck590

vector.memcheck590:                               ; preds = %vector.scevcheck589
  %i.jr = shl nsw i64 %i.jg, 2                    ; 3 uses
  %scevgep592 = getelementptr i8, ptr %scevgep591, i64 %i.jr ; 3 uses
  %scevgep594 = getelementptr i8, ptr %i.gy, i64 %i.jr
  %scevgep597 = getelementptr i8, ptr %scevgep596, i64 %i.jr
  %i.js = add i32 %i.ea, %.1.lcssa.i
  %i.jt = sub i32 %i.cd, %i.js
  %i.ju = sext i32 %i.jt to i64                   ; 2 uses
  %i.jv = add nsw i64 %i.jg, %i.ju
  %i.jw = shl nsw i64 %i.jv, 2
  %scevgep600 = getelementptr i8, ptr %scevgep599, i64 %i.jw
  %i.jx = shl nsw i64 %i.ju, 2
  %scevgep602 = getelementptr i8, ptr %scevgep601, i64 %i.jx
  %bound0603 = icmp ult ptr %scevgep592, %scevgep595
  %bound1604 = icmp ult ptr %scevgep594, %scevgep593
  %found.conflict605 = and i1 %bound0603, %bound1604
  %bound0606 = icmp ult ptr %scevgep592, %scevgep598
  %bound1607 = icmp ult ptr %scevgep597, %scevgep593
  %found.conflict608 = and i1 %bound0606, %bound1607
  %conflict.rdx609 = or i1 %found.conflict605, %found.conflict608
  %bound0610 = icmp ult ptr %scevgep592, %scevgep602
  %bound1611 = icmp ult ptr %scevgep600, %scevgep593
  %found.conflict612 = and i1 %bound0610, %bound1611
  %conflict.rdx613 = or i1 %conflict.rdx609, %found.conflict612
  br i1 %conflict.rdx613, label %scalar.ph614.preheader, label %vector.ph616

vector.ph616:                                     ; preds = %vector.memcheck590
  %n.vec617 = and i64 %i.jh, -8                   ; 3 uses
  %i.jy = add nsw i64 %n.vec617, %i.jg
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph616
  %index619 = phi i64 [ 0, %vector.ph616 ], [ %index.next628, %vector.body618 ] ; 2 uses
  %i.jz = add nuw i64 %index619, %i.jg            ; 4 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load620 = load <4 x float>, ptr %i.ka, align 4, !tbaa !9, !alias.scope !170
  %wide.load621 = load <4 x float>, ptr %i.kb, align 4, !tbaa !9, !alias.scope !170
  %i.kc = sub nsw i64 %i.jz, %i.eb
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.kc ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %wide.load622 = load <4 x float>, ptr %i.kd, align 4, !tbaa !9, !alias.scope !171
  %wide.load623 = load <4 x float>, ptr %i.ke, align 4, !tbaa !9, !alias.scope !171
  %i.kf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load620, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load622)
  %i.kg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load621, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load623)
  %i.kh = trunc nsw i64 %i.jz to i32
  %i.ki = add i32 %i.ea, %i.kh
  %i.kj = sub i32 %i.bp, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -12
  %i.kn = getelementptr inbounds i8, ptr %i.kl, i64 -28
  %wide.load624 = load <4 x float>, ptr %i.km, align 4, !tbaa !9, !alias.scope !172
  %wide.load625 = load <4 x float>, ptr %i.kn, align 4, !tbaa !9, !alias.scope !172
  %reverse626 = shufflevector <4 x float> %wide.load624, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse627 = shufflevector <4 x float> %wide.load625, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ko = fadd <4 x float> %i.kf, %reverse626
  %i.kp = fadd <4 x float> %i.kg, %reverse627
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.jz ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x float> %i.ko, ptr %i.kq, align 4, !tbaa !9, !alias.scope !173, !noalias !174
  store <4 x float> %i.kp, ptr %i.kr, align 4, !tbaa !9, !alias.scope !173, !noalias !174
  %index.next628 = add nuw i64 %index619, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next628, %n.vec617
  br i1 %i.ks, label %middle.block629, label %vector.body618, !llvm.loop !126

middle.block629:                                  ; preds = %vector.body618
  %cmp.n630 = icmp eq i64 %i.jh, %n.vec617
  br i1 %cmp.n630, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %scalar.ph614.preheader

scalar.ph614.preheader:                           ; preds = %vector.memcheck590, %vector.scevcheck589, %.lr.ph59.i, %middle.block629
  %indvars.iv69.i.ph = phi i64 [ %i.jg, %vector.memcheck590 ], [ %i.jg, %vector.scevcheck589 ], [ %i.jg, %.lr.ph59.i ], [ %i.jy, %middle.block629 ] ; 8 uses
  %i.kt = sub nsw i64 %i.bn, %indvars.iv69.i.ph
  %xtraiter717 = and i64 %i.kt, 1
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  br i1 %lcmp.mod718.not, label %scalar.ph614.prol.loopexit, label %scalar.ph614.prol

scalar.ph614.prol:                                ; preds = %scalar.ph614.preheader
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %indvars.iv69.i.ph
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !9
  %i.kw = sub nsw i64 %indvars.iv69.i.ph, %i.eb
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.kw
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !9
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.kv, float 2.000000e+00, float %i.ky)
  %i.la = trunc nsw i64 %indvars.iv69.i.ph to i32
  %i.lb = add i32 %i.ea, %i.la
  %i.lc = sub i32 %i.bp, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !9
  %i.lg = fadd float %i.kz, %i.lf
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i.ph
  store float %i.lg, ptr %i.lh, align 4, !tbaa !9
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv69.i.ph, 1
  br label %scalar.ph614.prol.loopexit

scalar.ph614.prol.loopexit:                       ; preds = %scalar.ph614.prol, %scalar.ph614.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %scalar.ph614.preheader ], [ %indvars.iv.next70.i.prol, %scalar.ph614.prol ]
  %i.li = icmp eq i64 %indvars.iv69.i.ph, %i.ci
  br i1 %i.li, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %scalar.ph614

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader706, %.lr.ph56.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph56.i ], [ %indvars.iv64.i.ph, %.lr.ph56.i.preheader706 ] ; 4 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.lr.ph56.i ], [ %indvars.iv62.i.ph, %.lr.ph56.i.preheader706 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv64.i
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !9
  %i.ll = sub nuw nsw i64 %indvars.iv64.i, %i.eb
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !9
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.lk, float 2.000000e+00, float %i.ln)
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv62.i
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !9
  %i.lr = fadd float %i.lo, %i.lq
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv64.i
  store float %i.lr, ptr %i.ls, align 4, !tbaa !9
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.lt = icmp slt i64 %indvars.iv.next65.i, %invariant.op.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  br i1 %i.lt, label %.lr.ph56.i, label %.preheader.loopexit.i, !llvm.loop !127

scalar.ph614:                                     ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.1, %scalar.ph614 ], [ %indvars.iv69.i.unr, %scalar.ph614.prol.loopexit ] ; 6 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %indvars.iv69.i
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !9
  %i.lw = sub nsw i64 %indvars.iv69.i, %i.eb
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.lw
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !9
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lv, float 2.000000e+00, float %i.ly)
  %i.ma = trunc nsw i64 %indvars.iv69.i to i32
  %i.mb = add i32 %i.ea, %i.ma
  %i.mc = sub i32 %i.bp, %i.mb
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !9
  %i.mg = fadd float %i.lz, %i.mf
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i
  store float %i.mg, ptr %i.mh, align 4, !tbaa !9
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 4 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %indvars.iv.next70.i
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !9
  %i.mk = sub nsw i64 %indvars.iv.next70.i, %i.eb
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.mk
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !9
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.mj, float 2.000000e+00, float %i.mm)
  %i.mo = trunc nsw i64 %indvars.iv.next70.i to i32
  %i.mp = add i32 %i.ea, %i.mo
  %i.mq = sub i32 %i.bp, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.mr
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !9
  %i.mu = fadd float %i.mn, %i.mt
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next70.i
  store float %i.mu, ptr %i.mv, align 4, !tbaa !9
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond73.not.i.1 = icmp eq i64 %indvars.iv.next70.i.1, %i.bk
  br i1 %exitcond73.not.i.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %scalar.ph614, !llvm.loop !128

_ZN6LibRaw13hat_transformEPfS0_iii.exit:          ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614, %middle.block629, %.preheader.i
  br i1 %.not348, label %._crit_edge, label %.lr.ph305

.lr.ph305:                                        ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %gep440 = getelementptr [4 x i8], ptr %invariant.gep439, i64 %i.gx ; 6 uses
  %.reass735 = add i64 %i.gw, %invariant.op734.reass
  %diff.check576 = icmp ult i64 %.reass735, 31
  %or.cond698 = select i1 %min.iters.check578, i1 true, i1 %diff.check576
  br i1 %or.cond698, label %scalar.ph577.preheader, label %vector.body581

vector.body581:                                   ; preds = %.lr.ph305, %vector.body581
  %index582 = phi i64 [ %index.next585, %vector.body581 ], [ 0, %.lr.ph305 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index582 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load583 = load <4 x float>, ptr %i.mw, align 4, !tbaa !9
  %wide.load584 = load <4 x float>, ptr %i.mx, align 4, !tbaa !9
  %i.my = fmul <4 x float> %wide.load583, splat (float 2.500000e-01)
  %i.mz = fmul <4 x float> %wide.load584, splat (float 2.500000e-01)
  %i.na = getelementptr [4 x i8], ptr %gep440, i64 %index582 ; 2 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 16
  store <4 x float> %i.my, ptr %i.na, align 4, !tbaa !9
  store <4 x float> %i.mz, ptr %i.nb, align 4, !tbaa !9
  %index.next585 = add nuw i64 %index582, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next585, %n.vec580
  br i1 %i.nc, label %middle.block586, label %vector.body581, !llvm.loop !129

middle.block586:                                  ; preds = %vector.body581
  br i1 %cmp.n587, label %._crit_edge, label %scalar.ph577.preheader

scalar.ph577.preheader:                           ; preds = %.lr.ph305, %middle.block586
  %indvars.iv355.ph = phi i64 [ 0, %.lr.ph305 ], [ %n.vec580, %middle.block586 ] ; 3 uses
  br i1 %lcmp.mod720.not, label %scalar.ph577.prol.loopexit, label %scalar.ph577.prol

scalar.ph577.prol:                                ; preds = %scalar.ph577.preheader, %scalar.ph577.prol
  %indvars.iv355.prol = phi i64 [ %indvars.iv.next356.prol, %scalar.ph577.prol ], [ %indvars.iv355.ph, %scalar.ph577.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph577.prol ], [ 0, %scalar.ph577.preheader ]
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv355.prol
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !9
  %i.nf = fmul float %i.ne, 2.500000e-01
  %i.ng = getelementptr [4 x i8], ptr %gep440, i64 %indvars.iv355.prol
  store float %i.nf, ptr %i.ng, align 4, !tbaa !9
  %indvars.iv.next356.prol = add nuw nsw i64 %indvars.iv355.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter719
  br i1 %prol.iter.cmp.not, label %scalar.ph577.prol.loopexit, label %scalar.ph577.prol, !llvm.loop !130

scalar.ph577.prol.loopexit:                       ; preds = %scalar.ph577.prol, %scalar.ph577.preheader
  %indvars.iv355.unr = phi i64 [ %indvars.iv355.ph, %scalar.ph577.preheader ], [ %indvars.iv.next356.prol, %scalar.ph577.prol ]
  %i.nh = sub nsw i64 %indvars.iv355.ph, %i.bn
  %i.ni = icmp ugt i64 %i.nh, -4
  br i1 %i.ni, label %._crit_edge, label %scalar.ph577

scalar.ph577:                                     ; preds = %scalar.ph577.prol.loopexit, %scalar.ph577
  %indvars.iv355 = phi i64 [ %indvars.iv.next356.3, %scalar.ph577 ], [ %indvars.iv355.unr, %scalar.ph577.prol.loopexit ] ; 6 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv355
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !9
  %i.nl = fmul float %i.nk, 2.500000e-01
  %i.nm = getelementptr [4 x i8], ptr %gep440, i64 %indvars.iv355
  store float %i.nl, ptr %i.nm, align 4, !tbaa !9
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next356
  %i.no = load float, ptr %i.nn, align 4, !tbaa !9
  %i.np = fmul float %i.no, 2.500000e-01
  %i.nq = getelementptr [4 x i8], ptr %gep440, i64 %indvars.iv.next356
  store float %i.np, ptr %i.nq, align 4, !tbaa !9
  %indvars.iv.next356.1 = add nuw nsw i64 %indvars.iv355, 2 ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next356.1
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !9
  %i.nt = fmul float %i.ns, 2.500000e-01
  %i.nu = getelementptr [4 x i8], ptr %gep440, i64 %indvars.iv.next356.1
  store float %i.nt, ptr %i.nu, align 4, !tbaa !9
  %indvars.iv.next356.2 = add nuw nsw i64 %indvars.iv355, 3 ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next356.2
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !9
  %i.nx = fmul float %i.nw, 2.500000e-01
  %i.ny = getelementptr [4 x i8], ptr %gep440, i64 %indvars.iv.next356.2
  store float %i.nx, ptr %i.ny, align 4, !tbaa !9
  %indvars.iv.next356.3 = add nuw nsw i64 %indvars.iv355, 4 ; 2 uses
  %exitcond359.not.3 = icmp eq i64 %indvars.iv.next356.3, %wide.trip.count358
  br i1 %exitcond359.not.3, label %._crit_edge, label %scalar.ph577, !llvm.loop !131

._crit_edge:                                      ; preds = %scalar.ph577.prol.loopexit, %scalar.ph577, %middle.block586, %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %.preheader291, label %bb.g, !llvm.loop !132

bb.h:                                             ; preds = %.lr.ph314, %._crit_edge312
  %indvars.iv370 = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next371, %._crit_edge312 ] ; 6 uses
  %i.nz = mul nsw i64 %indvars.iv370, -4          ; 3 uses
  %i.oa = shl nuw nsw i64 %indvars.iv370, 2       ; 5 uses
  %scevgep473 = getelementptr i8, ptr %i.gi, i64 %i.oa
  %scevgep474 = getelementptr i8, ptr %i.gj, i64 %i.oa
  %scevgep476 = getelementptr i8, ptr %i.gk, i64 %i.oa
  %scevgep477 = getelementptr i8, ptr %i.gm, i64 %i.oa
  %scevgep479 = getelementptr i8, ptr %i.go, i64 %i.oa
  %i.ob = trunc i64 %indvars.iv370 to i32
  %i.oc = add i32 %i.dx, %i.ob
  %i.od = sext i32 %i.oc to i64
  %i.oe = shl nsw i64 %i.od, 2
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv370 ; 19 uses
  %or.cond699.not = xor i1 %or.cond699, true
  %brmerge750 = select i1 %or.cond699.not, i1 true, i1 %conflict.rdx556
  br i1 %brmerge750, label %.lr.ph.i274, label %vector.ph559

vector.ph559:                                     ; preds = %bb.h
  %invariant.gep736 = getelementptr [4 x i8], ptr %i.of, i64 %i.fn
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph559
  %index562 = phi i64 [ 0, %vector.ph559 ], [ %index.next571, %vector.body561 ] ; 5 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index562 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load563 = load <4 x float>, ptr %i.og, align 4, !tbaa !9, !alias.scope !175
  %wide.load564 = load <4 x float>, ptr %i.oh, align 4, !tbaa !9, !alias.scope !175
  %i.oi = sub nuw nsw i64 %i.fn, %index562
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds i8, ptr %i.oj, i64 -12
  %i.ol = getelementptr inbounds i8, ptr %i.oj, i64 -28
  %wide.load565 = load <4 x float>, ptr %i.ok, align 4, !tbaa !9, !alias.scope !176
  %wide.load566 = load <4 x float>, ptr %i.ol, align 4, !tbaa !9, !alias.scope !176
  %reverse567 = shufflevector <4 x float> %wide.load565, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse568 = shufflevector <4 x float> %wide.load566, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.om = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load563, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse567)
  %i.on = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load564, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse568)
  %gep737 = getelementptr [4 x i8], ptr %invariant.gep736, i64 %index562 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %gep737, i64 16
  %wide.load569 = load <4 x float>, ptr %gep737, align 4, !tbaa !9, !alias.scope !177
  %wide.load570 = load <4 x float>, ptr %i.oo, align 4, !tbaa !9, !alias.scope !177
  %i.op = fadd <4 x float> %i.om, %wide.load569
  %i.oq = fadd <4 x float> %i.on, %wide.load570
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index562 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store <4 x float> %i.op, ptr %i.or, align 4, !tbaa !9, !alias.scope !178, !noalias !179
  store <4 x float> %i.oq, ptr %i.os, align 4, !tbaa !9, !alias.scope !178, !noalias !179
  %index.next571 = add nuw i64 %index562, 8       ; 2 uses
  %i.ot = icmp eq i64 %index.next571, %n.vec560
  br i1 %i.ot, label %.preheader53.i256, label %vector.body561, !llvm.loop !138

.preheader53.i256:                                ; preds = %vector.body561, %.lr.ph.i274
  br i1 %i.fp, label %.lr.ph56.i267.preheader, label %.preheader.i257

.lr.ph56.i267.preheader:                          ; preds = %.preheader53.i256
  br i1 %or.cond700, label %vector.memcheck507, label %.lr.ph56.i267.preheader704

vector.memcheck507:                               ; preds = %.lr.ph56.i267.preheader
  %.reass739 = add i64 %i.nz, %invariant.op738
  %diff.check508 = icmp ult i64 %.reass739, 31
  %.reass741 = add i64 %i.nz, %invariant.op740
  %diff.check509 = icmp ult i64 %.reass741, 31
  %conflict.rdx510 = or i1 %diff.check508, %diff.check509
  %.reass743 = add i64 %i.nz, %invariant.op742
  %diff.check511 = icmp ult i64 %.reass743, 31
  %conflict.rdx512 = or i1 %conflict.rdx510, %diff.check511
  br i1 %conflict.rdx512, label %.lr.ph56.i267.preheader704, label %vector.ph515

vector.ph515:                                     ; preds = %vector.memcheck507
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.fq
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph515
  %index518 = phi i64 [ 0, %vector.ph515 ], [ %index.next525, %vector.body517 ] ; 4 uses
  %i.ov = add nuw i64 %index518, %i.fn            ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.ov ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load519 = load <4 x float>, ptr %i.ow, align 4, !tbaa !9
  %wide.load520 = load <4 x float>, ptr %i.ox, align 4, !tbaa !9
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index518 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %wide.load521 = load <4 x float>, ptr %i.oy, align 4, !tbaa !9
  %wide.load522 = load <4 x float>, ptr %i.oz, align 4, !tbaa !9
  %i.pa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load519, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load521)
  %i.pb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load520, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load522)
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %index518 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %wide.load523 = load <4 x float>, ptr %i.pc, align 4, !tbaa !9
  %wide.load524 = load <4 x float>, ptr %i.pd, align 4, !tbaa !9
  %i.pe = fadd <4 x float> %i.pa, %wide.load523
  %i.pf = fadd <4 x float> %i.pb, %wide.load524
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ov ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store <4 x float> %i.pe, ptr %i.pg, align 4, !tbaa !9
  store <4 x float> %i.pf, ptr %i.ph, align 4, !tbaa !9
  %index.next525 = add nuw i64 %index518, 8       ; 2 uses
  %i.pi = icmp eq i64 %index.next525, %n.vec516
  br i1 %i.pi, label %middle.block526, label %vector.body517, !llvm.loop !139

middle.block526:                                  ; preds = %vector.body517
  br i1 %cmp.n527, label %.preheader.loopexit.i272, label %.lr.ph56.i267.preheader704

.lr.ph56.i267.preheader704:                       ; preds = %vector.memcheck507, %.lr.ph56.i267.preheader, %middle.block526
  %indvars.iv64.i268.ph = phi i64 [ %i.fn, %vector.memcheck507 ], [ %i.fn, %.lr.ph56.i267.preheader ], [ %i.gs, %middle.block526 ]
  %indvars.iv62.i269.ph = phi i64 [ %i.fq, %vector.memcheck507 ], [ %i.fq, %.lr.ph56.i267.preheader ], [ %i.gt, %middle.block526 ]
  br label %.lr.ph56.i267

.lr.ph.i274:                                      ; preds = %bb.h, %.lr.ph.i274
  %indvars.iv.i275 = phi i64 [ %indvars.iv.next.i276, %.lr.ph.i274 ], [ 0, %bb.h ] ; 5 uses
  %i.pj = mul nuw nsw i64 %indvars.iv.i275, %i.bk
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pj
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !9
  %i.pm = sub nuw nsw i64 %i.fn, %indvars.iv.i275
  %i.pn = mul nuw nsw i64 %i.pm, %i.bk
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.pn
  %i.pp = load float, ptr %i.po, align 4, !tbaa !9
  %i.pq = tail call float @llvm.fmuladd.f32(float %i.pl, float 2.000000e+00, float %i.pp)
  %i.pr = add nuw nsw i64 %indvars.iv.i275, %i.fn
  %i.ps = mul nuw nsw i64 %i.pr, %i.bk
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.ps
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !9
  %i.pv = fadd float %i.pq, %i.pu
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i275
  store float %i.pv, ptr %i.pw, align 4, !tbaa !9
  %indvars.iv.next.i276 = add nuw nsw i64 %indvars.iv.i275, 1 ; 2 uses
  %exitcond.not.i277 = icmp eq i64 %indvars.iv.next.i276, %i.fn
  br i1 %exitcond.not.i277, label %.preheader53.i256, label %.lr.ph.i274, !llvm.loop !140

.preheader.loopexit.i272:                         ; preds = %.lr.ph56.i267, %middle.block526
  %indvars.iv.next65.i270.lcssa = phi i64 [ %i.gs, %middle.block526 ], [ %indvars.iv.next65.i270, %.lr.ph56.i267 ]
  %i.px = trunc nuw nsw i64 %indvars.iv.next65.i270.lcssa to i32
  br label %.preheader.i257

.preheader.i257:                                  ; preds = %.preheader.loopexit.i272, %.preheader53.i256
  %.1.lcssa.i258 = phi i32 [ %i.fm, %.preheader53.i256 ], [ %i.px, %.preheader.loopexit.i272 ] ; 4 uses
  %i.py = icmp slt i32 %.1.lcssa.i258, %i.bh
  br i1 %i.py, label %.lr.ph59.i259, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278

.lr.ph59.i259:                                    ; preds = %.preheader.i257
  %i.pz = sext i32 %.1.lcssa.i258 to i64          ; 9 uses
  %i.qa = sub nsw i64 %wide.trip.count363, %i.pz  ; 3 uses
  %min.iters.check489 = icmp ult i64 %i.qa, 12
  br i1 %min.iters.check489, label %scalar.ph488.preheader, label %vector.scevcheck467

vector.scevcheck467:                              ; preds = %.lr.ph59.i259
  %i.qb = xor i64 %i.pz, -1
  %i.qc = add nsw i64 %i.qb, %wide.trip.count363  ; 2 uses
  %i.qd = add i32 %i.fm, %.1.lcssa.i258
  %i.qe = sub i32 %i.br, %i.qd                    ; 2 uses
  %i.qf = trunc i64 %i.qc to i32
  %i.qg = sub i32 %i.qe, %i.qf
  %i.qh = icmp sgt i32 %i.qg, %i.qe
  %i.qi = icmp ugt i64 %i.qc, 4294967295
  %i.qj = or i1 %i.qh, %i.qi
  %i.qk = or i1 %ident.check468, %i.qj
  br i1 %i.qk, label %scalar.ph488.preheader, label %vector.memcheck469

vector.memcheck469:                               ; preds = %vector.scevcheck467
  %i.ql = shl nsw i64 %i.pz, 2                    ; 3 uses
  %scevgep470 = getelementptr i8, ptr %scevgep, i64 %i.ql ; 3 uses
  %scevgep472 = getelementptr i8, ptr %i.of, i64 %i.ql
  %scevgep475 = getelementptr i8, ptr %scevgep474, i64 %i.ql
  %i.qm = add i32 %i.fm, %.1.lcssa.i258
  %i.qn = sub i32 %i.bv, %i.qm
  %i.qo = sext i32 %i.qn to i64                   ; 2 uses
  %i.qp = add nsw i64 %i.pz, %i.qo
  %i.qq = shl nsw i64 %i.qp, 2
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.qq
  %i.qr = shl nsw i64 %i.qo, 2
  %scevgep480 = getelementptr i8, ptr %scevgep479, i64 %i.qr
  %bound0 = icmp ult ptr %scevgep470, %scevgep473
  %bound1 = icmp ult ptr %scevgep472, %scevgep471
  %found.conflict = and i1 %bound0, %bound1
  %bound0481 = icmp ult ptr %scevgep470, %scevgep476
  %bound1482 = icmp ult ptr %scevgep475, %scevgep471
  %found.conflict483 = and i1 %bound0481, %bound1482
  %conflict.rdx = or i1 %found.conflict, %found.conflict483
  %bound0484 = icmp ult ptr %scevgep470, %scevgep480
  %bound1485 = icmp ult ptr %scevgep478, %scevgep471
  %found.conflict486 = and i1 %bound0484, %bound1485
  %conflict.rdx487 = or i1 %conflict.rdx, %found.conflict486
  br i1 %conflict.rdx487, label %scalar.ph488.preheader, label %vector.ph490

vector.ph490:                                     ; preds = %vector.memcheck469
  %n.vec491 = and i64 %i.qa, -8                   ; 3 uses
  %i.qs = add nsw i64 %n.vec491, %i.pz
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph490
  %index493 = phi i64 [ 0, %vector.ph490 ], [ %index.next501, %vector.body492 ] ; 2 uses
  %i.qt = add nuw i64 %index493, %i.pz            ; 4 uses
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.qt ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %wide.load494 = load <4 x float>, ptr %i.qu, align 4, !tbaa !9, !alias.scope !180
  %wide.load495 = load <4 x float>, ptr %i.qv, align 4, !tbaa !9, !alias.scope !180
  %i.qw = sub nsw i64 %i.qt, %i.fn
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.qw ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %wide.load496 = load <4 x float>, ptr %i.qx, align 4, !tbaa !9, !alias.scope !181
  %wide.load497 = load <4 x float>, ptr %i.qy, align 4, !tbaa !9, !alias.scope !181
  %i.qz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load494, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load496)
  %i.ra = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load495, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load497)
  %i.rb = trunc nsw i64 %i.qt to i32
  %i.rc = add i32 %i.fm, %i.rb
  %i.rd = sub i32 %invariant.op, %i.rc
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.re ; 2 uses
  %i.rg = getelementptr inbounds i8, ptr %i.rf, i64 -12
  %i.rh = getelementptr inbounds i8, ptr %i.rf, i64 -28
  %wide.load498 = load <4 x float>, ptr %i.rg, align 4, !tbaa !9, !alias.scope !182
  %wide.load499 = load <4 x float>, ptr %i.rh, align 4, !tbaa !9, !alias.scope !182
  %reverse = shufflevector <4 x float> %wide.load498, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse500 = shufflevector <4 x float> %wide.load499, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ri = fadd <4 x float> %i.qz, %reverse
  %i.rj = fadd <4 x float> %i.ra, %reverse500
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.qt ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store <4 x float> %i.ri, ptr %i.rk, align 4, !tbaa !9, !alias.scope !183, !noalias !184
  store <4 x float> %i.rj, ptr %i.rl, align 4, !tbaa !9, !alias.scope !183, !noalias !184
  %index.next501 = add nuw i64 %index493, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next501, %n.vec491
  br i1 %i.rm, label %middle.block502, label %vector.body492, !llvm.loop !146

middle.block502:                                  ; preds = %vector.body492
  %cmp.n503 = icmp eq i64 %i.qa, %n.vec491
  br i1 %cmp.n503, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %scalar.ph488.preheader

scalar.ph488.preheader:                           ; preds = %vector.memcheck469, %vector.scevcheck467, %.lr.ph59.i259, %middle.block502
  %indvars.iv69.i262.ph = phi i64 [ %i.pz, %vector.memcheck469 ], [ %i.pz, %vector.scevcheck467 ], [ %i.pz, %.lr.ph59.i259 ], [ %i.qs, %middle.block502 ]
  br label %scalar.ph488

.lr.ph56.i267:                                    ; preds = %.lr.ph56.i267.preheader704, %.lr.ph56.i267
  %indvars.iv64.i268 = phi i64 [ %indvars.iv.next65.i270, %.lr.ph56.i267 ], [ %indvars.iv64.i268.ph, %.lr.ph56.i267.preheader704 ] ; 4 uses
  %indvars.iv62.i269 = phi i64 [ %indvars.iv.next63.i271, %.lr.ph56.i267 ], [ %indvars.iv62.i269.ph, %.lr.ph56.i267.preheader704 ] ; 2 uses
  %i.rn = mul nuw nsw i64 %indvars.iv64.i268, %i.bk
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rn
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !9
  %i.rq = sub nuw nsw i64 %indvars.iv64.i268, %i.fn
  %i.rr = mul nuw nsw i64 %i.rq, %i.bk
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rr
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !9
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rp, float 2.000000e+00, float %i.rt)
  %i.rv = mul nuw nsw i64 %indvars.iv62.i269, %i.bk
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !9
  %i.ry = fadd float %i.ru, %i.rx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv64.i268
  store float %i.ry, ptr %i.rz, align 4, !tbaa !9
  %indvars.iv.next65.i270 = add nuw nsw i64 %indvars.iv64.i268, 1 ; 3 uses
  %i.sa = icmp slt i64 %indvars.iv.next65.i270, %invariant.op.i266
  %indvars.iv.next63.i271 = add nuw nsw i64 %indvars.iv62.i269, 1
  br i1 %i.sa, label %.lr.ph56.i267, label %.preheader.loopexit.i272, !llvm.loop !147

scalar.ph488:                                     ; preds = %scalar.ph488.preheader, %scalar.ph488
  %indvars.iv69.i262 = phi i64 [ %indvars.iv.next70.i263, %scalar.ph488 ], [ %indvars.iv69.i262.ph, %scalar.ph488.preheader ] ; 5 uses
  %i.sb = mul nsw i64 %indvars.iv69.i262, %i.bk
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sb
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !9
  %i.se = sub nsw i64 %indvars.iv69.i262, %i.fn
  %i.sf = mul nsw i64 %i.se, %i.bk
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !9
  %i.si = tail call float @llvm.fmuladd.f32(float %i.sd, float 2.000000e+00, float %i.sh)
  %i.sj = trunc nsw i64 %indvars.iv69.i262 to i32
  %i.sk = add i32 %i.fm, %i.sj
  %i.sl = sub i32 %invariant.op, %i.sk
  %i.sm = mul nsw i32 %i.sl, %i.bj
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !9
  %i.sq = fadd float %i.si, %i.sp
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i262
  store float %i.sq, ptr %i.sr, align 4, !tbaa !9
  %indvars.iv.next70.i263 = add nuw nsw i64 %indvars.iv69.i262, 1 ; 2 uses
  %exitcond73.not.i264 = icmp eq i64 %indvars.iv.next70.i263, %i.bl
  br i1 %exitcond73.not.i264, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %scalar.ph488, !llvm.loop !148

_ZN6LibRaw13hat_transformEPfS0_iii.exit278:       ; preds = %scalar.ph488, %middle.block502, %.preheader.i257
  br i1 %.not347, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %i.ss = trunc nuw nsw i64 %indvars.iv370 to i32
  %i.st = add i32 %i.dx, %i.ss                    ; 6 uses
  br i1 %min.iters.check456, label %scalar.ph455.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph311
  %i.su = add i32 %i.st, %i.cj
  %i.sv = icmp slt i32 %i.su, %i.st
  %.reass745 = or i1 %i.sv, %invariant.op744
  %.reass747 = add nsw i64 %i.oe, %invariant.op746
  %diff.check = icmp ult i64 %.reass747, 31
  %or.cond701 = select i1 %.reass745, i1 true, i1 %diff.check
  br i1 %or.cond701, label %scalar.ph455.preheader, label %vector.body459

vector.body459:                                   ; preds = %vector.scevcheck, %vector.body459
  %index460 = phi i64 [ %index.next463, %vector.body459 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index460 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %wide.load461 = load <4 x float>, ptr %i.sw, align 4, !tbaa !9
  %wide.load462 = load <4 x float>, ptr %i.sx, align 4, !tbaa !9
  %i.sy = fmul <4 x float> %wide.load461, splat (float 2.500000e-01)
  %i.sz = fmul <4 x float> %wide.load462, splat (float 2.500000e-01)
  %i.ta = trunc nuw nsw i64 %index460 to i32
  %i.tb = add i32 %i.st, %i.ta
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  store <4 x float> %i.sy, ptr %i.td, align 4, !tbaa !9
  store <4 x float> %i.sz, ptr %i.te, align 4, !tbaa !9
  %index.next463 = add nuw i64 %index460, 8       ; 2 uses
  %i.tf = icmp eq i64 %index.next463, %n.vec458
  br i1 %i.tf, label %middle.block464, label %vector.body459, !llvm.loop !149

middle.block464:                                  ; preds = %vector.body459
  br i1 %cmp.n465, label %._crit_edge312, label %scalar.ph455.preheader

scalar.ph455.preheader:                           ; preds = %vector.scevcheck, %.lr.ph311, %middle.block464
  %indvars.iv365.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph311 ], [ %n.vec458, %middle.block464 ] ; 5 uses
  br i1 %lcmp.mod722.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol

scalar.ph455.prol:                                ; preds = %scalar.ph455.preheader
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365.ph
  %i.th = load float, ptr %i.tg, align 4, !tbaa !9
  %i.ti = fmul float %i.th, 2.500000e-01
  %i.tj = mul nuw nsw i64 %indvars.iv365.ph, %i.bn
  %i.tk = trunc nuw nsw i64 %i.tj to i32
  %i.tl = add i32 %i.st, %i.tk
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tm
  store float %i.ti, ptr %i.tn, align 4, !tbaa !9
  %indvars.iv.next366.prol = or disjoint i64 %indvars.iv365.ph, 1
  br label %scalar.ph455.prol.loopexit

scalar.ph455.prol.loopexit:                       ; preds = %scalar.ph455.prol, %scalar.ph455.preheader
  %indvars.iv365.unr = phi i64 [ %indvars.iv365.ph, %scalar.ph455.preheader ], [ %indvars.iv.next366.prol, %scalar.ph455.prol ]
  %i.to = icmp eq i64 %indvars.iv365.ph, %i.cl
  br i1 %i.to, label %._crit_edge312, label %scalar.ph455

scalar.ph455:                                     ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455
  %indvars.iv365 = phi i64 [ %indvars.iv.next366.1, %scalar.ph455 ], [ %indvars.iv365.unr, %scalar.ph455.prol.loopexit ] ; 4 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !9
  %i.tr = fmul float %i.tq, 2.500000e-01
  %i.ts = mul nuw nsw i64 %indvars.iv365, %i.bn
  %i.tt = trunc nuw nsw i64 %i.ts to i32
  %i.tu = add i32 %i.st, %i.tt
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tv
  store float %i.tr, ptr %i.tw, align 4, !tbaa !9
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next366
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !9
  %i.tz = fmul float %i.ty, 2.500000e-01
  %i.ua = mul nuw nsw i64 %indvars.iv.next366, %i.bn
  %i.ub = trunc nuw nsw i64 %i.ua to i32
  %i.uc = add i32 %i.st, %i.ub
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ud
  store float %i.tz, ptr %i.ue, align 4, !tbaa !9
  %indvars.iv.next366.1 = add nuw nsw i64 %indvars.iv365, 2 ; 2 uses
  %exitcond369.not.1 = icmp eq i64 %indvars.iv.next366.1, %wide.trip.count368
  br i1 %exitcond369.not.1, label %._crit_edge312, label %scalar.ph455, !llvm.loop !150
end_hunk_0
