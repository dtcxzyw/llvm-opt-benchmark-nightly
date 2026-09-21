Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@process_fusion:bb.a
  br i1 %brmerge786, label %.preheader.i291.preheader, label %vector.body598

vector.body598:                                   ; preds = %.preheader58.i, %vector.body598
  %index599 = phi i64 [ %index.next609, %vector.body598 ], [ 0, %.preheader58.i ] ; 2 uses
  %vec.ind600 = phi <8 x i64> [ %vec.ind.next610, %vector.body598 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader58.i ] ; 2 uses
  %i.nz = shl <8 x i64> %vec.ind600, splat (i64 5)
  %wide.gep601 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %i.nz ; 4 uses
  %i.oa = add i64 %index599, %i.nv
  %i.ob = shl i64 %i.oa, 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.ob
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep601, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !252
  %wide.gep602 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep601, i64 4
  %wide.masked.gather603 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep602, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !252
  %wide.gep604 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep601, i64 8
  %wide.masked.gather605 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep604, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !252
  %wide.gep606 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep601, i64 12
  %wide.masked.gather607 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep606, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !252
  %i.od = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather603, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oe = shufflevector <8 x float> %wide.masked.gather605, <8 x float> %wide.masked.gather607, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec608 = shufflevector <16 x float> %i.od, <16 x float> %i.oe, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec608, ptr %i.oc, align 4, !tbaa !13, !alias.scope !253, !noalias !252
  %index.next609 = add nuw i64 %index599, 8       ; 2 uses
  %vec.ind.next610 = add nuw <8 x i64> %vec.ind600, splat (i64 8)
  %i.of = icmp eq i64 %index.next609, %n.vec597
  br i1 %i.of, label %middle.block611, label %vector.body598, !llvm.loop !209

middle.block611:                                  ; preds = %vector.body598
  br i1 %cmp.n612, label %.loopexit751, label %.preheader.i291.preheader

.preheader.i291.preheader:                        ; preds = %.preheader58.i, %middle.block611
  %.04660.i.ph = phi i64 [ 0, %.preheader58.i ], [ %n.vec597, %middle.block611 ] ; 5 uses
  br i1 %lcmp.mod.not.not, label %.preheader.i291.prol, label %.preheader.i291.prol.loopexit

.preheader.i291.prol:                             ; preds = %.preheader.i291.preheader
  %.idx.i.prol = shl i64 %.04660.i.ph, 5
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i.prol ; 4 uses
  %i.og = add i64 %.04660.i.ph, %i.nv
  %.idx57.i.prol = shl i64 %i.og, 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx57.i.prol ; 4 uses
  %i.oi = load float, ptr %gep.i.prol, align 4, !tbaa !13
  store float %i.oi, ptr %i.oh, align 4, !tbaa !13
  %i.oj = getelementptr inbounds nuw i8, ptr %gep.i.prol, i64 4
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !13
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store float %i.ok, ptr %i.ol, align 4, !tbaa !13
  %i.om = getelementptr inbounds nuw i8, ptr %gep.i.prol, i64 8
  %i.on = load float, ptr %i.om, align 4, !tbaa !13
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store float %i.on, ptr %i.oo, align 4, !tbaa !13
  %i.op = getelementptr inbounds nuw i8, ptr %gep.i.prol, i64 12
  %i.oq = load float, ptr %i.op, align 4, !tbaa !13
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store float %i.oq, ptr %i.or, align 4, !tbaa !13
  %i.os = or disjoint i64 %.04660.i.ph, 1
  br label %.preheader.i291.prol.loopexit

.preheader.i291.prol.loopexit:                    ; preds = %.preheader.i291.prol, %.preheader.i291.preheader
  %.04660.i.unr = phi i64 [ %.04660.i.ph, %.preheader.i291.preheader ], [ %i.os, %.preheader.i291.prol ]
  %i.ot = icmp eq i64 %i.nd, %.04660.i.ph
  br i1 %i.ot, label %.loopexit751, label %.preheader.i291

bb.ae:                                            ; preds = %.loopexit751
  %.not53.i = icmp eq ptr %.048.i, %i.mw
  br i1 %.not53.i, label %gauss_reduce.exit, label %bb.af

.preheader.i291:                                  ; preds = %.preheader.i291.prol.loopexit, %.preheader.i291
  %.04660.i = phi i64 [ %i.pt, %.preheader.i291 ], [ %.04660.i.unr, %.preheader.i291.prol.loopexit ] ; 4 uses
  %.idx.i = shl i64 %.04660.i, 5
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i ; 4 uses
  %i.ou = add i64 %.04660.i, %i.nv
  %.idx57.i = shl i64 %i.ou, 4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx57.i ; 4 uses
  %i.ow = load float, ptr %gep.i, align 4, !tbaa !13
  store float %i.ow, ptr %i.ov, align 4, !tbaa !13
  %i.ox = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !13
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  store float %i.oy, ptr %i.oz, align 4, !tbaa !13
  %i.pa = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !13
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store float %i.pb, ptr %i.pc, align 4, !tbaa !13
  %i.pd = getelementptr inbounds nuw i8, ptr %gep.i, i64 12
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !13
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  store float %i.pe, ptr %i.pf, align 4, !tbaa !13
  %i.pg = add nuw i64 %.04660.i, 1                ; 3 uses
  %.idx.i.1 = shl i64 %i.pg, 5
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i.1 ; 4 uses
  %i.ph = add i64 %i.pg, %i.nv
  %.idx57.i.1 = shl i64 %i.ph, 4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx57.i.1 ; 4 uses
  %i.pj = load float, ptr %gep.i.1, align 4, !tbaa !13
  store float %i.pj, ptr %i.pi, align 4, !tbaa !13
  %i.pk = getelementptr inbounds nuw i8, ptr %gep.i.1, i64 4
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !13
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  store float %i.pl, ptr %i.pm, align 4, !tbaa !13
  %i.pn = getelementptr inbounds nuw i8, ptr %gep.i.1, i64 8
  %i.po = load float, ptr %i.pn, align 4, !tbaa !13
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store float %i.po, ptr %i.pp, align 4, !tbaa !13
  %i.pq = getelementptr inbounds nuw i8, ptr %gep.i.1, i64 12
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !13
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  store float %i.pr, ptr %i.ps, align 4, !tbaa !13
  %i.pt = add nuw i64 %.04660.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.pg, %i.nd
  br i1 %exitcond.not.i.1, label %.loopexit751, label %.preheader.i291, !llvm.loop !210

.loopexit751:                                     ; preds = %.preheader.i291.prol.loopexit, %.preheader.i291, %middle.block611
  %i.pu = add nuw i64 %.04761.i, 1
  %exitcond64.not.i = icmp eq i64 %.04761.i, %i.ng
  br i1 %exitcond64.not.i, label %bb.ae, label %.preheader58.i

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %.048.i) #26
  br label %gauss_reduce.exit

gauss_reduce.exit:                                ; preds = %bb.ae, %bb.af
  %i.pv = add nsw <2 x i32> %i.mt, splat (i32 -1)
  %i.pw = sdiv <2 x i32> %i.pv, splat (i32 2)
  %i.px = add nsw <2 x i32> %i.pw, splat (i32 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader318.preheader, label %.lr.ph332

.preheader318.preheader:                          ; preds = %gauss_reduce.exit, %.preheader319
  br label %.preheader318

.preheader318:                                    ; preds = %.preheader318.preheader, %._crit_edge344
  %indvar = phi i64 [ 0, %.preheader318.preheader ], [ %indvar.next, %._crit_edge344 ] ; 2 uses
  %indvars.iv391 = phi i64 [ %i.fb, %.preheader318.preheader ], [ %indvars.iv.next392, %._crit_edge344 ] ; 10 uses
  %i.py = trunc nuw i64 %indvars.iv391 to i32
  %i.pz = icmp sgt i32 %i.py, 0                   ; 2 uses
  br i1 %i.pz, label %.lr.ph336.preheader, label %._crit_edge337

.lr.ph336.preheader:                              ; preds = %.preheader318
  %xtraiter758 = and i64 %indvars.iv391, 7        ; 3 uses
  %i.qa = sub i64 %indvar, %i.fb
  %i.qb = icmp ugt i64 %i.qa, -8
  br i1 %i.qb, label %.lr.ph336.epil.preheader, label %.lr.ph336.preheader.new

.lr.ph336.preheader.new:                          ; preds = %.lr.ph336.preheader
  %unroll_iter = and i64 %indvars.iv391, 2147483640
  br label %.lr.ph336

bb.ag:                                            ; preds = %._crit_edge344
  %i.qc = add nuw nsw i32 %.0265347, 1
  %i.qd = load i32, ptr %i.ep, align 4, !tbaa !99 ; 2 uses
  %.not283.not = icmp slt i32 %.0265347, %i.qd
  br i1 %.not283.not, label %bb.q, label %._crit_edge350

._crit_edge337.loopexit.unr-lcssa:                ; preds = %.lr.ph336
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  br i1 %lcmp.mod759.not, label %._crit_edge337.loopexit, label %.lr.ph336.epil.preheader

.lr.ph336.epil.preheader:                         ; preds = %._crit_edge337.loopexit.unr-lcssa, %.lr.ph336.preheader
  %.epil.init = phi <2 x i32> [ %i.fc, %.lr.ph336.preheader ], [ %i.qj, %._crit_edge337.loopexit.unr-lcssa ]
  %lcmp.mod761 = icmp ne i64 %xtraiter758, 0
  tail call void @llvm.assume(i1 %lcmp.mod761)
  br label %.lr.ph336.epil

.lr.ph336.epil:                                   ; preds = %.lr.ph336.epil, %.lr.ph336.epil.preheader
  %i.qe = phi <2 x i32> [ %i.qf, %.lr.ph336.epil ], [ %.epil.init, %.lr.ph336.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph336.epil ], [ 0, %.lr.ph336.epil.preheader ]
  %i.qf = sdiv <2 x i32> %i.qe, splat (i32 2)     ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter758
  br i1 %epil.iter.cmp.not, label %._crit_edge337.loopexit, label %.lr.ph336.epil, !llvm.loop !211

._crit_edge337.loopexit:                          ; preds = %.lr.ph336.epil, %._crit_edge337.loopexit.unr-lcssa
  %.lcssa757 = phi <2 x i32> [ %i.qj, %._crit_edge337.loopexit.unr-lcssa ], [ %i.qf, %.lr.ph336.epil ]
  %i.qg = add nsw <2 x i32> %.lcssa757, splat (i32 1)
  br label %._crit_edge337

._crit_edge337:                                   ; preds = %._crit_edge337.loopexit, %.preheader318
  %i.qh = phi <2 x i32> [ %i.j, %.preheader318 ], [ %i.qg, %._crit_edge337.loopexit ] ; 5 uses
  %.not284 = icmp eq i64 %indvars.iv391, %i.fb
  br i1 %.not284, label %.thread452, label %bb.ah

.lr.ph336:                                        ; preds = %.lr.ph336, %.lr.ph336.preheader.new
  %i.qi = phi <2 x i32> [ %i.fc, %.lr.ph336.preheader.new ], [ %i.qj, %.lr.ph336 ]
  %niter = phi i64 [ 0, %.lr.ph336.preheader.new ], [ %niter.next.7, %.lr.ph336 ]
  %i.qj = sdiv <2 x i32> %i.qi, splat (i32 256)   ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge337.loopexit.unr-lcssa, label %.lr.ph336

bb.ah:                                            ; preds = %._crit_edge337
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv391
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !126 ; 4 uses
  %i.qn = sext <2 x i32> %i.qh to <2 x i64>       ; 3 uses
  %i.qo = extractelement <2 x i64> %i.qn, i64 0   ; 8 uses
  %i.qp = add nsw i64 %i.qo, 2305843009213693951
  %i.qq = lshr i64 %i.qp, 1                       ; 2 uses
  %i.qr = add nuw nsw i64 %i.qq, 1
  %i.qs = extractelement <2 x i64> %i.qn, i64 1   ; 4 uses
  tail call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef range(i64 -2147483648, 2147483648) %i.qo, i64 noundef range(i64 -2147483648, 2147483648) %i.qs, i64 noundef 4) #26
  %6 = icmp ne <2 x i32> %i.qh, zeroinitializer   ; 2 uses
  %7 = extractelement <2 x i1> %6, i64 0
  %8 = extractelement <2 x i1> %6, i64 1
  %or.cond.i = and i1 %7, %8
  br i1 %or.cond.i, label %.preheader32.i.preheader, label %.loopexit457

.preheader32.i.preheader:                         ; preds = %bb.ah
  %i.qt = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.qn, <2 x i64> splat (i64 2))
  %i.qu = add <2 x i64> %i.qt, splat (i64 -1)     ; 2 uses
  %i.qv = extractelement <2 x i64> %i.qu, i64 1
  %i.qw = lshr i64 %i.qv, 1                       ; 2 uses
  %i.qx = shl i64 %i.qw, 5
  %i.qy = mul i64 %i.qx, %i.qo
  %i.qz = extractelement <2 x i64> %i.qu, i64 0
  %i.ra = lshr i64 %i.qz, 1                       ; 2 uses
  %i.rb = shl i64 %i.ra, 5
  %i.rc = getelementptr i8, ptr %scevgep555, i64 %i.qy
  %scevgep557 = getelementptr i8, ptr %i.rc, i64 %i.rb
  %scevgep558 = getelementptr i8, ptr %i.qm, i64 16
  %i.rd = shl i64 %i.qq, 4                        ; 2 uses
  %i.re = add nsw i64 %i.rd, 16
  %i.rf = mul i64 %i.qw, %i.re
  %i.rg = shl i64 %i.ra, 4
  %i.rh = getelementptr i8, ptr %scevgep558, i64 %i.rf
  %scevgep559 = getelementptr i8, ptr %i.rh, i64 %i.rg
  %i.ri = extractelement <2 x i32> %i.qh, i64 0   ; 2 uses
  %i.rj = tail call i64 @llvm.umax.i64(i64 %i.qo, i64 2)
  %i.rk = add i64 %i.rj, -1
  %i.rl = lshr i64 %i.rk, 1
  %i.rm = add nuw i64 %i.rl, 1                    ; 2 uses
  %min.iters.check565 = icmp ult i32 %i.ri, 7
  %bound0560 = icmp ult ptr %3, %scevgep559
  %bound1561 = icmp ult ptr %i.qm, %scevgep557
  %found.conflict562 = and i1 %bound0560, %bound1561
  %stride.check = icmp slt i32 %i.ri, 0
  %i.rn = or i1 %found.conflict562, %stride.check
  %stride.check563 = icmp slt i64 %i.rd, -16
  %i.ro = or i1 %i.rn, %stride.check563
  %n.vec567 = and i64 %i.rm, -4                   ; 3 uses
  %i.rp = shl i64 %n.vec567, 1
  %cmp.n = icmp eq i64 %i.rm, %n.vec567
  br label %.preheader32.i

.preheader32.i:                                   ; preds = %.preheader32.i.preheader, %._crit_edge.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %._crit_edge.i ], [ 0, %.preheader32.i.preheader ] ; 3 uses
  %i.rq = lshr exact i64 %indvars.iv38.i, 1
  %i.rr = mul i64 %i.rq, %i.qr                    ; 2 uses
  %i.rs = mul nsw i64 %indvars.iv38.i, %i.qo      ; 2 uses
  %brmerge787 = select i1 %min.iters.check565, i1 true, i1 %i.ro
  br i1 %brmerge787, label %.preheader.i292.preheader, label %vector.ph566

vector.ph566:                                     ; preds = %.preheader32.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.rs, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body568

vector.body568:                                   ; preds = %vector.body568, %vector.ph566
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next580, %vector.body568 ] ; 2 uses
  %vec.ind570 = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph566 ], [ %vec.ind.next581, %vector.body568 ] ; 2 uses
  %i.rt = add i64 %index569, %i.rr
  %i.ru = shl i64 %i.rt, 4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.ru
  %i.rw = add nuw nsw <4 x i64> %vec.ind570, %broadcast.splat
  %i.rx = shl <4 x i64> %i.rw, splat (i64 4)
  %wide.gep571 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.rx ; 4 uses
  %wide.vec572 = load <16 x float>, ptr %i.rv, align 4, !tbaa !13, !alias.scope !254 ; 4 uses
  %strided.vec573 = shufflevector <16 x float> %wide.vec572, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec574 = shufflevector <16 x float> %wide.vec572, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec575 = shufflevector <16 x float> %wide.vec572, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec576 = shufflevector <16 x float> %wide.vec572, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ry = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec573, splat (float 4.000000e+00)
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ry, <4 x ptr> align 4 %wide.gep571, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %i.rz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec574, splat (float 4.000000e+00)
  %wide.gep577 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep571, i64 4
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.rz, <4 x ptr> align 4 %wide.gep577, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %i.sa = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec575, splat (float 4.000000e+00)
  %wide.gep578 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep571, i64 8
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sa, <4 x ptr> align 4 %wide.gep578, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %i.sb = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec576, splat (float 4.000000e+00)
  %wide.gep579 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep571, i64 12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sb, <4 x ptr> align 4 %wide.gep579, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %index.next580 = add nuw i64 %index569, 4       ; 2 uses
  %vec.ind.next581 = add nuw nsw <4 x i64> %vec.ind570, splat (i64 8)
  %i.sc = icmp eq i64 %index.next580, %n.vec567
  br i1 %i.sc, label %middle.block582, label %vector.body568, !llvm.loop !215

middle.block582:                                  ; preds = %vector.body568
  br i1 %cmp.n, label %._crit_edge.i, label %.preheader.i292.preheader

.preheader.i292.preheader:                        ; preds = %.preheader32.i, %middle.block582
  %indvars.iv.i.ph = phi i64 [ %i.rp, %middle.block582 ], [ 0, %.preheader32.i ]
  br label %.preheader.i292

.preheader.i292:                                  ; preds = %.preheader.i292.preheader, %.preheader.i292
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i292 ], [ %indvars.iv.i.ph, %.preheader.i292.preheader ] ; 3 uses
  %i.sd = lshr exact i64 %indvars.iv.i, 1
  %i.se = add i64 %i.sd, %i.rr
  %.idx.i293 = shl i64 %i.se, 4
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qm, i64 %.idx.i293 ; 4 uses
  %i.sg = add nsw i64 %indvars.iv.i, %i.rs
  %.idx31.i = shl i64 %i.sg, 4
  %i.sh = getelementptr inbounds nuw i8, ptr %3, i64 %.idx31.i ; 4 uses
  %i.si = load float, ptr %i.sf, align 4, !tbaa !13
  %i.sj = fmul reassoc nsz arcp contract afn float %i.si, 4.000000e+00
  store float %i.sj, ptr %i.sh, align 4, !tbaa !13
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !13
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, 4.000000e+00
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  store float %i.sm, ptr %i.sn, align 4, !tbaa !13
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sp = load float, ptr %i.so, align 4, !tbaa !13
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, 4.000000e+00
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store float %i.sq, ptr %i.sr, align 4, !tbaa !13
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  %i.st = load float, ptr %i.ss, align 4, !tbaa !13
  %i.su = fmul reassoc nsz arcp contract afn float %i.st, 4.000000e+00
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sh, i64 12
  store float %i.su, ptr %i.sv, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.sw = icmp ult i64 %indvars.iv.next.i, %i.qo
  br i1 %i.sw, label %.preheader.i292, label %._crit_edge.i, !llvm.loop !216

._crit_edge.i:                                    ; preds = %.preheader.i292, %middle.block582
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %i.sx = icmp ult i64 %indvars.iv.next39.i, %i.qs
  br i1 %i.sx, label %.preheader32.i, label %.loopexit457

.loopexit457:                                     ; preds = %._crit_edge.i, %bb.ah
  tail call fastcc void @gauss_blur(ptr noundef %3, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.qo, i64 noundef range(i64 -2147483648, 2147483648) %i.qs)
  %i.sy = shl nsw i64 %i.qo, 2
  %i.sz = mul i64 %i.sy, %i.qs                    ; 4 uses
  %.not370 = icmp eq i64 %i.sz, 0
  br i1 %.not370, label %._crit_edge344, label %.lr.ph343

.thread452:                                       ; preds = %._crit_edge337
  %i.ta = extractelement <2 x i32> %i.qh, i64 0
  %.pre417 = sext i32 %i.ta to i64
  %i.tb = extractelement <2 x i32> %i.qh, i64 1
  %.pre419 = sext i32 %i.tb to i64
  %i.tc = shl nsw i64 %.pre417, 2
  %i.td = mul i64 %i.tc, %.pre419                 ; 4 uses
  %.not370455 = icmp eq i64 %i.td, 0
  br i1 %.not370455, label %._crit_edge344, label %.lr.ph343.thread

.lr.ph343.thread:                                 ; preds = %.thread452
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv391
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !126 ; 4 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv391
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !126 ; 4 uses
  %i.ti = load ptr, ptr %i.fe, align 8, !tbaa !126 ; 7 uses
  %i.tj = load ptr, ptr %i.fd, align 8, !tbaa !126 ; 10 uses
  %i.tk = add i64 %i.td, -4                       ; 2 uses
  %i.tl = lshr exact i64 %i.tk, 2
  %i.tm = add nuw nsw i64 %i.tl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.tk, 32
  br i1 %min.iters.check, label %.preheader314.us.preheader, label %vector.memcheck

.lr.ph343:                                        ; preds = %.loopexit457
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv391
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !126 ; 7 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv391
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !126 ; 8 uses
  %i.tr = add i64 %i.sz, -4                       ; 2 uses
  %i.ts = lshr exact i64 %i.tr, 2
  %i.tt = add nuw nsw i64 %i.ts, 1                ; 2 uses
  %min.iters.check526 = icmp ult i64 %i.tr, 16
  br i1 %min.iters.check526, label %.preheader316.preheader, label %vector.memcheck511

.preheader316.preheader:                          ; preds = %vector.body529, %vector.memcheck511, %.lr.ph343
  %.0260341.ph = phi i64 [ 0, %vector.memcheck511 ], [ 0, %.lr.ph343 ], [ %i.ty, %vector.body529 ]
  br label %.preheader316

vector.memcheck511:                               ; preds = %.lr.ph343
  %i.tu = shl i64 %i.sz, 2                        ; 3 uses
  %scevgep513 = getelementptr i8, ptr %i.tq, i64 %i.tu ; 2 uses
  %scevgep515 = getelementptr i8, ptr %i.to, i64 %i.tu
  %scevgep517 = getelementptr i8, ptr %i.fy, i64 %i.tu
  %bound0518 = icmp ult ptr %i.tq, %scevgep515
  %bound1519 = icmp ult ptr %i.to, %scevgep513
  %found.conflict520 = and i1 %bound0518, %bound1519
  %bound0521 = icmp ult ptr %i.tq, %scevgep517
  %bound1522 = icmp ult ptr %3, %scevgep513
  %found.conflict523 = and i1 %bound0521, %bound1522
  %conflict.rdx524 = or i1 %found.conflict520, %found.conflict523
  br i1 %conflict.rdx524, label %.preheader316.preheader, label %vector.ph527

vector.ph527:                                     ; preds = %vector.memcheck511
  %i.tv = and i64 %i.tt, 3                        ; 2 uses
  %i.tw = icmp eq i64 %i.tv, 0
  %i.tx = select i1 %i.tw, i64 4, i64 %i.tv
  %n.vec528 = sub nsw i64 %i.tt, %i.tx            ; 2 uses
  %i.ty = shl i64 %n.vec528, 2
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph527
  %index530 = phi i64 [ 0, %vector.ph527 ], [ %index.next551, %vector.body529 ] ; 2 uses
  %i.tz = shl nuw i64 %index530, 2                ; 3 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.tz ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 12 ; 2 uses
  %wide.vec531 = load <16 x float>, ptr %i.ub, align 4, !tbaa !13, !alias.scope !256
  %strided.vec532 = shufflevector <16 x float> %wide.vec531, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec533 = load <16 x float>, ptr %i.ua, align 4, !tbaa !13, !alias.scope !256 ; 4 uses
  %strided.vec534 = shufflevector <16 x float> %wide.vec533, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
end_hunk_0
begin_hunk_1_@process_fusion:bb.a
  br i1 %.not373, label %.loopexit, label %.lr.ph367

.lr.ph367:                                        ; preds = %.preheader
  %i.yp = load ptr, ptr %i.l, align 8, !tbaa !126 ; 6 uses
  %i.yq = add i64 %i.yo, -4                       ; 2 uses
  %i.yr = lshr exact i64 %i.yq, 2
  %i.ys = add nuw nsw i64 %i.yr, 1                ; 2 uses
  %min.iters.check736 = icmp ult i64 %i.yq, 32
  br i1 %min.iters.check736, label %scalar.ph735.preheader, label %vector.memcheck723

scalar.ph735.preheader:                           ; preds = %vector.body739, %vector.memcheck723, %.lr.ph367
  %.0251366.ph = phi i64 [ 0, %vector.memcheck723 ], [ 0, %.lr.ph367 ], [ %i.yy, %vector.body739 ]
  br label %scalar.ph735

vector.memcheck723:                               ; preds = %.lr.ph367
  %i.yt = shl i64 %i.yo, 2                        ; 3 uses
  %scevgep724 = getelementptr i8, ptr %3, i64 %i.yt ; 2 uses
  %i.yu = getelementptr i8, ptr %i.yp, i64 %i.yt
  %scevgep725 = getelementptr i8, ptr %i.yu, i64 -4
  %scevgep726 = getelementptr i8, ptr %2, i64 12
  %scevgep727 = getelementptr i8, ptr %2, i64 %i.yt
  %bound0728 = icmp ult ptr %3, %scevgep725
  %bound1729 = icmp ult ptr %i.yp, %scevgep724
  %found.conflict730 = and i1 %bound0728, %bound1729
  %bound0731 = icmp ult ptr %3, %scevgep727
  %bound1732 = icmp ult ptr %scevgep726, %scevgep724
  %found.conflict733 = and i1 %bound0731, %bound1732
  %conflict.rdx734 = or i1 %found.conflict730, %found.conflict733
  br i1 %conflict.rdx734, label %scalar.ph735.preheader, label %vector.ph737

vector.ph737:                                     ; preds = %vector.memcheck723
  %i.yv = and i64 %i.ys, 3                        ; 2 uses
  %i.yw = icmp eq i64 %i.yv, 0
  %i.yx = select i1 %i.yw, i64 4, i64 %i.yv
  %n.vec738 = sub nsw i64 %i.ys, %i.yx            ; 2 uses
  %i.yy = shl i64 %n.vec738, 2
  br label %vector.body739

vector.body739:                                   ; preds = %vector.body739, %vector.ph737
  %index740 = phi i64 [ 0, %vector.ph737 ], [ %index.next748, %vector.body739 ] ; 2 uses
  %i.yz = shl nuw i64 %index740, 2                ; 3 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.yz
  %wide.vec741 = load <16 x float>, ptr %i.za, align 4, !tbaa !13, !alias.scope !266 ; 2 uses
  %strided.vec744 = shufflevector <16 x float> %wide.vec741, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yz
  %i.zc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %strided.vec744, <4 x float> zeroinitializer)
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yz
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  %wide.vec745 = load <16 x float>, ptr %i.ze, align 4, !tbaa !13, !alias.scope !267
  %strided.vec746 = shufflevector <16 x float> %wide.vec745, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.zf = shufflevector <16 x float> %wide.vec741, <16 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.zg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.zf, <8 x float> zeroinitializer)
  %i.zh = shufflevector <4 x float> %i.zc, <4 x float> %strided.vec746, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec747 = shufflevector <8 x float> %i.zg, <8 x float> %i.zh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec747, ptr %i.zb, align 4, !tbaa !13, !alias.scope !268, !noalias !269
  %index.next748 = add nuw i64 %index740, 4       ; 2 uses
  %i.zi = icmp eq i64 %index.next748, %n.vec738
  br i1 %i.zi, label %scalar.ph735.preheader, label %vector.body739, !llvm.loop !234

.preheader312.loopexit.unr-lcssa:                 ; preds = %.lr.ph354
  %lcmp.mod768.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod768.not, label %.preheader312.loopexit, label %.lr.ph354.epil.preheader

.lr.ph354.epil.preheader:                         ; preds = %.preheader312.loopexit.unr-lcssa, %.lr.ph354.preheader
  %.epil.init767 = phi <2 x i32> [ %i.fz, %.lr.ph354.preheader ], [ %i.aaa, %.preheader312.loopexit.unr-lcssa ]
  %lcmp.mod770 = icmp ne i64 %xtraiter764, 0
  tail call void @llvm.assume(i1 %lcmp.mod770)
  br label %.lr.ph354.epil

.lr.ph354.epil:                                   ; preds = %.lr.ph354.epil, %.lr.ph354.epil.preheader
  %i.zj = phi <2 x i32> [ %i.zk, %.lr.ph354.epil ], [ %.epil.init767, %.lr.ph354.epil.preheader ]
  %epil.iter765 = phi i64 [ %epil.iter765.next, %.lr.ph354.epil ], [ 0, %.lr.ph354.epil.preheader ]
  %i.zk = sdiv <2 x i32> %i.zj, splat (i32 2)     ; 2 uses
  %epil.iter765.next = add i64 %epil.iter765, 1   ; 2 uses
  %epil.iter765.cmp.not = icmp eq i64 %epil.iter765.next, %xtraiter764
  br i1 %epil.iter765.cmp.not, label %.preheader312.loopexit, label %.lr.ph354.epil, !llvm.loop !235

.preheader312.loopexit:                           ; preds = %.lr.ph354.epil, %.preheader312.loopexit.unr-lcssa
  %.lcssa = phi <2 x i32> [ %i.aaa, %.preheader312.loopexit.unr-lcssa ], [ %i.zk, %.lr.ph354.epil ]
  %i.zl = add nsw <2 x i32> %.lcssa, splat (i32 1) ; 2 uses
  %i.zm = sext <2 x i32> %i.zl to <2 x i64>
  br label %.preheader312

.preheader312:                                    ; preds = %.preheader312.loopexit, %.preheader313
  %i.zn = phi <2 x i32> [ %i.zl, %.preheader312.loopexit ], [ %i.j, %.preheader313 ]
  %i.zo = phi <2 x i64> [ %i.zm, %.preheader312.loopexit ], [ %i.v, %.preheader313 ] ; 3 uses
  %i.zp = extractelement <2 x i64> %i.zo, i64 0   ; 10 uses
  %i.zq = shl nsw i64 %i.zp, 2
  %i.zr = extractelement <2 x i64> %i.zo, i64 1   ; 4 uses
  %i.zs = mul i64 %i.zq, %i.zr                    ; 5 uses
  %.not371 = icmp eq i64 %i.zs, 0                 ; 2 uses
  br i1 %.not371, label %._crit_edge360, label %.lr.ph359

.lr.ph359:                                        ; preds = %.preheader312
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv403
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !126 ; 3 uses
  %i.zv = add i64 %i.zs, -4                       ; 3 uses
  %i.zw = lshr exact i64 %i.zv, 2
  %i.zx = add nuw nsw i64 %i.zw, 1                ; 2 uses
  %i.zy = icmp eq i64 %i.zv, 0
  br i1 %i.zy, label %.epil.preheader, label %.lr.ph359.new

.lr.ph359.new:                                    ; preds = %.lr.ph359
  %unroll_iter777 = and i64 %i.zx, 9223372036854775806
  br label %bb.ai

.lr.ph354:                                        ; preds = %.lr.ph354, %.lr.ph354.preheader.new
  %i.zz = phi <2 x i32> [ %i.fz, %.lr.ph354.preheader.new ], [ %i.aaa, %.lr.ph354 ]
  %niter772 = phi i64 [ 0, %.lr.ph354.preheader.new ], [ %niter772.next.7, %.lr.ph354 ]
  %i.aaa = sdiv <2 x i32> %i.zz, splat (i32 256)  ; 3 uses
  %niter772.next.7 = add i64 %niter772, 8         ; 2 uses
  %niter772.ncmp.7 = icmp eq i64 %niter772.next.7, %unroll_iter771
  br i1 %niter772.ncmp.7, label %.preheader312.loopexit.unr-lcssa, label %.lr.ph354

._crit_edge360.loopexit.unr-lcssa:                ; preds = %.loopexit310.1
  %i.aab = and i64 %i.zv, 4
  %lcmp.mod775.not.not = icmp eq i64 %i.aab, 0
  br i1 %lcmp.mod775.not.not, label %.epil.preheader, label %._crit_edge360

.epil.preheader:                                  ; preds = %._crit_edge360.loopexit.unr-lcssa, %.lr.ph359
  %.0255358.epil.init = phi i64 [ 0, %.lr.ph359 ], [ %i.abl, %._crit_edge360.loopexit.unr-lcssa ]
  %lcmp.mod776 = trunc i64 %i.zx to i1
  tail call void @llvm.assume(i1 %lcmp.mod776)
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.0255358.epil.init ; 4 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 12
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !13 ; 3 uses
  %i.aaf = fcmp reassoc nsz arcp contract afn ogt float %i.aae, f0x322BCC77
  br i1 %i.aaf, label %.preheader309.epil, label %._crit_edge360

.preheader309.epil:                               ; preds = %.epil.preheader
  %i.aag = load <2 x float>, ptr %i.aac, align 4, !tbaa !13
  %i.aah = insertelement <2 x float> poison, float %i.aae, i64 0
  %i.aai = shufflevector <2 x float> %i.aah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaj = fdiv reassoc nsz arcp contract afn <2 x float> %i.aag, %i.aai
  store <2 x float> %i.aaj, ptr %i.aac, align 4, !tbaa !13
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aac, i64 8 ; 2 uses
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !13
  %i.aam = fdiv reassoc nsz arcp contract afn float %i.aal, %i.aae
  store float %i.aam, ptr %i.aak, align 4, !tbaa !13
  br label %._crit_edge360

._crit_edge360:                                   ; preds = %._crit_edge360.loopexit.unr-lcssa, %.preheader309.epil, %.epil.preheader, %.preheader312
  %i.aan = icmp sgt i32 %.pre-phi414, %i.yj
  br i1 %i.aan, label %bb.aj, label %.loopexit311

bb.ai:                                            ; preds = %.loopexit310.1, %.lr.ph359.new
  %.0255358 = phi i64 [ 0, %.lr.ph359.new ], [ %i.abl, %.loopexit310.1 ] ; 3 uses
  %niter778 = phi i64 [ 0, %.lr.ph359.new ], [ %niter778.next.1, %.loopexit310.1 ]
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.0255358 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 12
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !13 ; 3 uses
  %i.aar = fcmp reassoc nsz arcp contract afn ogt float %i.aaq, f0x322BCC77
  br i1 %i.aar, label %.preheader309, label %.loopexit310

.preheader309:                                    ; preds = %bb.ai
  %i.aas = load <2 x float>, ptr %i.aao, align 4, !tbaa !13
  %i.aat = insertelement <2 x float> poison, float %i.aaq, i64 0
  %i.aau = shufflevector <2 x float> %i.aat, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aav = fdiv reassoc nsz arcp contract afn <2 x float> %i.aas, %i.aau
  store <2 x float> %i.aav, ptr %i.aao, align 4, !tbaa !13
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 8 ; 2 uses
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !13
  %i.aay = fdiv reassoc nsz arcp contract afn float %i.aax, %i.aaq
  store float %i.aay, ptr %i.aaw, align 4, !tbaa !13
  br label %.loopexit310

.loopexit310:                                     ; preds = %.preheader309, %bb.ai
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %.0255358 ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 28
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !13 ; 3 uses
  %i.abc = fcmp reassoc nsz arcp contract afn ogt float %i.abb, f0x322BCC77
  br i1 %i.abc, label %.preheader309.1, label %.loopexit310.1

.preheader309.1:                                  ; preds = %.loopexit310
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16 ; 2 uses
  %i.abe = load <2 x float>, ptr %i.abd, align 4, !tbaa !13
  %i.abf = insertelement <2 x float> poison, float %i.abb, i64 0
  %i.abg = shufflevector <2 x float> %i.abf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abh = fdiv reassoc nsz arcp contract afn <2 x float> %i.abe, %i.abg
  store <2 x float> %i.abh, ptr %i.abd, align 4, !tbaa !13
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24 ; 2 uses
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !13
  %i.abk = fdiv reassoc nsz arcp contract afn float %i.abj, %i.abb
  store float %i.abk, ptr %i.abi, align 4, !tbaa !13
  br label %.loopexit310.1

.loopexit310.1:                                   ; preds = %.preheader309.1, %.loopexit310
  %i.abl = add nuw i64 %.0255358, 8               ; 2 uses
  %niter778.next.1 = add i64 %niter778, 2         ; 2 uses
  %niter778.ncmp.1.not = icmp eq i64 %niter778.next.1, %unroll_iter777
  br i1 %niter778.ncmp.1.not, label %._crit_edge360.loopexit.unr-lcssa, label %bb.ai

bb.aj:                                            ; preds = %._crit_edge360
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv403 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !126 ; 4 uses
  %i.abp = add nsw i64 %i.zp, 2305843009213693951
  %i.abq = lshr i64 %i.abp, 1                     ; 2 uses
  %i.abr = add nuw nsw i64 %i.abq, 1
  tail call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef range(i64 -2147483648, 2147483648) %i.zp, i64 noundef range(i64 -2147483648, 2147483648) %i.zr, i64 noundef 4) #26
  %9 = icmp ne <2 x i32> %i.zn, zeroinitializer   ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %or.cond.i294 = and i1 %10, %11
  br i1 %or.cond.i294, label %.preheader32.i295.preheader, label %gauss_expand.exit304

.preheader32.i295.preheader:                      ; preds = %bb.aj
  %i.abs = shl nsw i64 %i.zp, 5
  %i.abt = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.zo, <2 x i64> splat (i64 2))
  %i.abu = add <2 x i64> %i.abt, splat (i64 -1)   ; 2 uses
  %i.abv = extractelement <2 x i64> %i.abu, i64 1
  %i.abw = lshr i64 %i.abv, 1                     ; 2 uses
  %i.abx = mul i64 %i.abs, %i.abw
  %i.aby = extractelement <2 x i64> %i.abu, i64 0
  %i.abz = lshr i64 %i.aby, 1                     ; 2 uses
  %i.aca = shl i64 %i.abz, 5
  %i.acb = getelementptr i8, ptr %scevgep689, i64 %i.abx
  %scevgep692 = getelementptr i8, ptr %i.acb, i64 %i.aca
  %scevgep693 = getelementptr i8, ptr %i.abo, i64 16
  %i.acc = shl i64 %i.abq, 4                      ; 2 uses
  %i.acd = add nsw i64 %i.acc, 16
  %i.ace = mul i64 %i.abw, %i.acd
  %i.acf = shl i64 %i.abz, 4
  %i.acg = getelementptr i8, ptr %scevgep693, i64 %i.ace
  %scevgep694 = getelementptr i8, ptr %i.acg, i64 %i.acf
  %i.ach = tail call i64 @llvm.umax.i64(i64 %i.zp, i64 2)
  %i.aci = add i64 %i.ach, -1
  %i.acj = lshr i64 %i.aci, 1
  %i.ack = add nuw i64 %i.acj, 1                  ; 2 uses
  %min.iters.check701 = icmp ult i64 %i.zp, 7
  %bound0695 = icmp ult ptr %3, %scevgep694
  %bound1696 = icmp ult ptr %i.abo, %scevgep692
  %found.conflict697 = and i1 %bound0695, %bound1696
  %stride.check698 = icmp slt i64 %i.zp, 0
  %i.acl = or i1 %found.conflict697, %stride.check698
  %stride.check699 = icmp slt i64 %i.acc, -16
  %i.acm = or i1 %i.acl, %stride.check699
  %n.vec703 = and i64 %i.ack, -4                  ; 3 uses
  %i.acn = shl i64 %n.vec703, 1
  %cmp.n721 = icmp eq i64 %i.ack, %n.vec703
  br label %.preheader32.i295

.preheader32.i295:                                ; preds = %.preheader32.i295.preheader, %._crit_edge.i302
  %indvars.iv38.i296 = phi i64 [ %indvars.iv.next39.i303, %._crit_edge.i302 ], [ 0, %.preheader32.i295.preheader ] ; 3 uses
  %i.aco = lshr exact i64 %indvars.iv38.i296, 1
  %i.acp = mul i64 %i.aco, %i.abr                 ; 2 uses
  %i.acq = mul nsw i64 %indvars.iv38.i296, %i.zp  ; 2 uses
  %brmerge788 = select i1 %min.iters.check701, i1 true, i1 %i.acm
  br i1 %brmerge788, label %.preheader.i297.preheader, label %vector.ph702

vector.ph702:                                     ; preds = %.preheader32.i295
  %broadcast.splatinsert704 = insertelement <4 x i64> poison, i64 %i.acq, i64 0
  %broadcast.splat705 = shufflevector <4 x i64> %broadcast.splatinsert704, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body706

vector.body706:                                   ; preds = %vector.body706, %vector.ph702
  %index707 = phi i64 [ 0, %vector.ph702 ], [ %index.next718, %vector.body706 ] ; 2 uses
  %vec.ind708 = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph702 ], [ %vec.ind.next719, %vector.body706 ] ; 2 uses
  %i.acr = add i64 %index707, %i.acp
  %i.acs = shl i64 %i.acr, 4
  %i.act = getelementptr inbounds nuw i8, ptr %i.abo, i64 %i.acs
  %i.acu = add nuw nsw <4 x i64> %vec.ind708, %broadcast.splat705
  %i.acv = shl <4 x i64> %i.acu, splat (i64 4)
  %wide.gep709 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.acv ; 4 uses
  %wide.vec710 = load <16 x float>, ptr %i.act, align 4, !tbaa !13, !alias.scope !270 ; 4 uses
  %strided.vec711 = shufflevector <16 x float> %wide.vec710, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec712 = shufflevector <16 x float> %wide.vec710, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec713 = shufflevector <16 x float> %wide.vec710, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec714 = shufflevector <16 x float> %wide.vec710, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.acw = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec711, splat (float 4.000000e+00)
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.acw, <4 x ptr> align 4 %wide.gep709, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %i.acx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec712, splat (float 4.000000e+00)
  %wide.gep715 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep709, i64 4
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.acx, <4 x ptr> align 4 %wide.gep715, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %i.acy = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec713, splat (float 4.000000e+00)
  %wide.gep716 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep709, i64 8
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.acy, <4 x ptr> align 4 %wide.gep716, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %i.acz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec714, splat (float 4.000000e+00)
  %wide.gep717 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep709, i64 12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.acz, <4 x ptr> align 4 %wide.gep717, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %index.next718 = add nuw i64 %index707, 4       ; 2 uses
  %vec.ind.next719 = add nuw nsw <4 x i64> %vec.ind708, splat (i64 8)
  %i.ada = icmp eq i64 %index.next718, %n.vec703
  br i1 %i.ada, label %middle.block720, label %vector.body706, !llvm.loop !239

middle.block720:                                  ; preds = %vector.body706
  br i1 %cmp.n721, label %._crit_edge.i302, label %.preheader.i297.preheader

.preheader.i297.preheader:                        ; preds = %.preheader32.i295, %middle.block720
  %indvars.iv.i298.ph = phi i64 [ %i.acn, %middle.block720 ], [ 0, %.preheader32.i295 ]
  br label %.preheader.i297

.preheader.i297:                                  ; preds = %.preheader.i297.preheader, %.preheader.i297
  %indvars.iv.i298 = phi i64 [ %indvars.iv.next.i301, %.preheader.i297 ], [ %indvars.iv.i298.ph, %.preheader.i297.preheader ] ; 3 uses
  %i.adb = lshr exact i64 %indvars.iv.i298, 1
  %i.adc = add i64 %i.adb, %i.acp
  %.idx.i299 = shl i64 %i.adc, 4
  %i.add = getelementptr inbounds nuw i8, ptr %i.abo, i64 %.idx.i299 ; 4 uses
  %i.ade = add nsw i64 %indvars.iv.i298, %i.acq
  %.idx31.i300 = shl i64 %i.ade, 4
  %i.adf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx31.i300 ; 4 uses
  %i.adg = load float, ptr %i.add, align 4, !tbaa !13
  %i.adh = fmul reassoc nsz arcp contract afn float %i.adg, 4.000000e+00
  store float %i.adh, ptr %i.adf, align 4, !tbaa !13
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !13
  %i.adk = fmul reassoc nsz arcp contract afn float %i.adj, 4.000000e+00
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  store float %i.adk, ptr %i.adl, align 4, !tbaa !13
  %i.adm = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !13
  %i.ado = fmul reassoc nsz arcp contract afn float %i.adn, 4.000000e+00
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  store float %i.ado, ptr %i.adp, align 4, !tbaa !13
  %i.adq = getelementptr inbounds nuw i8, ptr %i.add, i64 12
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !13
  %i.ads = fmul reassoc nsz arcp contract afn float %i.adr, 4.000000e+00
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adf, i64 12
  store float %i.ads, ptr %i.adt, align 4, !tbaa !13
  %indvars.iv.next.i301 = add nuw nsw i64 %indvars.iv.i298, 2 ; 2 uses
  %i.adu = icmp ult i64 %indvars.iv.next.i301, %i.zp
  br i1 %i.adu, label %.preheader.i297, label %._crit_edge.i302, !llvm.loop !240

._crit_edge.i302:                                 ; preds = %.preheader.i297, %middle.block720
  %indvars.iv.next39.i303 = add nuw nsw i64 %indvars.iv38.i296, 2 ; 2 uses
  %i.adv = icmp ult i64 %indvars.iv.next39.i303, %i.zr
  br i1 %i.adv, label %.preheader32.i295, label %gauss_expand.exit304

gauss_expand.exit304:                             ; preds = %._crit_edge.i302, %bb.aj
  tail call fastcc void @gauss_blur(ptr noundef %3, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.zp, i64 noundef range(i64 -2147483648, 2147483648) %i.zr)
  br i1 %.not371, label %.loopexit311, label %.preheader308.lr.ph

.preheader308.lr.ph:                              ; preds = %gauss_expand.exit304
  %i.adw = load ptr, ptr %i.abm, align 8, !tbaa !126 ; 8 uses
  %i.adx = add i64 %i.zs, -4                      ; 2 uses
  %i.ady = lshr exact i64 %i.adx, 2
  %i.adz = add nuw nsw i64 %i.ady, 1              ; 2 uses
  %min.iters.check667 = icmp ult i64 %i.adx, 16
  br i1 %min.iters.check667, label %.preheader308.preheader, label %vector.memcheck658

vector.memcheck658:                               ; preds = %.preheader308.lr.ph
  %scevgep659 = getelementptr i8, ptr %i.adw, i64 12
  %i.aea = shl i64 %i.zs, 2
  %i.aeb = add i64 %i.aea, -16                    ; 2 uses
  %scevgep660 = getelementptr i8, ptr %scevgep659, i64 %i.aeb
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.aeb
  %bound0663 = icmp ult ptr %i.adw, %scevgep662
  %bound1664 = icmp ult ptr %3, %scevgep660
  %found.conflict665 = and i1 %bound0663, %bound1664
  br i1 %found.conflict665, label %.preheader308.preheader, label %vector.ph668

vector.ph668:                                     ; preds = %vector.memcheck658
  %i.aec = and i64 %i.adz, 3                      ; 2 uses
  %i.aed = icmp eq i64 %i.aec, 0
  %i.aee = select i1 %i.aed, i64 4, i64 %i.aec
  %n.vec669 = sub nsw i64 %i.adz, %i.aee          ; 2 uses
  %i.aef = shl i64 %n.vec669, 2
  br label %vector.body670

vector.body670:                                   ; preds = %vector.body670, %vector.ph668
  %index671 = phi i64 [ 0, %vector.ph668 ], [ %index.next684, %vector.body670 ] ; 2 uses
  %vec.ind672 = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph668 ], [ %vec.ind.next685, %vector.body670 ] ; 4 uses
  %.idx753 = shl nuw i64 %index671, 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx753
  %wide.vec673 = load <16 x float>, ptr %i.aeg, align 4, !tbaa !13, !alias.scope !272 ; 3 uses
  %strided.vec674 = shufflevector <16 x float> %wide.vec673, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec675 = shufflevector <16 x float> %wide.vec673, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec676 = shufflevector <16 x float> %wide.vec673, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %wide.gep677 = getelementptr inbounds nuw [4 x i8], ptr %i.adw, <4 x i64> %vec.ind672 ; 2 uses
  %i.aeh = extractelement <4 x ptr> %wide.gep677, i64 0
  %wide.vec678 = load <16 x float>, ptr %i.aeh, align 4, !tbaa !13, !alias.scope !273, !noalias !272 ; 3 uses
  %strided.vec679 = shufflevector <16 x float> %wide.vec678, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec680 = shufflevector <16 x float> %wide.vec678, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec681 = shufflevector <16 x float> %wide.vec678, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.aei = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec679, %strided.vec674
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aei, <4 x ptr> align 4 %wide.gep677, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %i.aej = or disjoint <4 x i64> %vec.ind672, splat (i64 1)
  %wide.gep682 = getelementptr inbounds nuw [4 x i8], ptr %i.adw, <4 x i64> %i.aej
  %i.aek = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec680, %strided.vec675
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aek, <4 x ptr> align 4 %wide.gep682, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %i.ael = or disjoint <4 x i64> %vec.ind672, splat (i64 2)
  %wide.gep683 = getelementptr inbounds nuw [4 x i8], ptr %i.adw, <4 x i64> %i.ael
  %i.aem = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec681, %strided.vec676
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aem, <4 x ptr> align 4 %wide.gep683, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %index.next684 = add nuw i64 %index671, 4       ; 2 uses
  %vec.ind.next685 = add nuw <4 x i64> %vec.ind672, splat (i64 16)
  %i.aen = icmp eq i64 %index.next684, %n.vec669
  br i1 %i.aen, label %.preheader308.preheader, label %vector.body670, !llvm.loop !244

.preheader308.preheader:                          ; preds = %vector.body670, %vector.memcheck658, %.preheader308.lr.ph
  %.0253364.ph = phi i64 [ 0, %vector.memcheck658 ], [ 0, %.preheader308.lr.ph ], [ %i.aef, %vector.body670 ]
  br label %.preheader308

.preheader308:                                    ; preds = %.preheader308.preheader, %.preheader308
  %.0253364 = phi i64 [ %i.aff, %.preheader308 ], [ %.0253364.ph, %.preheader308.preheader ] ; 5 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0253364
  %i.aep = load float, ptr %i.aeo, align 4, !tbaa !13
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %.0253364 ; 2 uses
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !13
  %i.aes = fadd reassoc nsz arcp contract afn float %i.aer, %i.aep
  store float %i.aes, ptr %i.aeq, align 4, !tbaa !13
  %i.aet = or disjoint i64 %.0253364, 1           ; 2 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aet
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !13
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.adw, i64 %i.aet ; 2 uses
end_hunk_1
