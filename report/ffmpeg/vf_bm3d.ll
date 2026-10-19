Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_bm3d?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@basic_block_filtering:bb.a
  %wide.trip.count449 = zext i32 %i.k to i64      ; 13 uses
  %wide.trip.count459 = zext nneg i32 %i.k to i64 ; 2 uses
  %wide.trip.count469 = zext nneg i32 %i.k to i64 ; 2 uses
  %i.ou = add nuw nsw i64 %wide.trip.count449, 4611686018427387903
  %i.ov = mul i64 %i.ou, %i.or
  %i.ow = add i64 %i.ov, %i.ol
  %i.ox = add i64 %i.ow, %i.ok
  %i.oy = shl nuw nsw i64 %wide.trip.count449, 2
  %i.oz = add i64 %i.ox, %wide.trip.count449
  %i.pa = shl i64 %i.oz, 2                        ; 2 uses
  %scevgep577 = getelementptr i8, ptr %i.z, i64 %i.oy ; 2 uses
  %i.pb = sub i64 %i.x, %i.aa
  %xtraiter660 = and i64 %wide.trip.count449, 3   ; 3 uses
  %i.pc = add i32 %i.k, -1
  %i.pd = icmp ult i32 %i.pc, 3
  %unroll_iter663 = and i64 %wide.trip.count449, 4294967292
  %lcmp.mod661.not = icmp eq i64 %xtraiter660, 0
  %lcmp.mod662 = icmp ne i64 %xtraiter660, 0
  %min.iters.check610 = icmp ult i32 %i.k, 8
  %ident.check606.not = icmp ne i32 %i.f, 1
  %or.cond622.not625 = select i1 %min.iters.check610, i1 true, i1 %ident.check606.not
  %invariant.op686 = add i64 %i.pb, -1
  %n.vec612 = and i64 %wide.trip.count449, 4294967288 ; 3 uses
  %cmp.n619 = icmp eq i64 %n.vec612, %wide.trip.count449
  %xtraiter665.a = and i64 %wide.trip.count449, 3 ; 2 uses
  %lcmp.mod666.not.a = icmp eq i64 %xtraiter665.a, 0
  %min.iters.check593 = icmp ult i32 %i.k, 8
  %stride.check586 = icmp slt i32 %i.o, 0
  %n.vec595 = and i64 %wide.trip.count449, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.og, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n603 = icmp eq i64 %n.vec595, %wide.trip.count449
  %xtraiter668 = and i64 %wide.trip.count449, 1
  %lcmp.mod669.not = icmp eq i64 %xtraiter668, 0
  %i.pe = add nsw i64 %wide.trip.count449, -1
  br label %bb.q

._crit_edge372:                                   ; preds = %._crit_edge368, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.q:                                             ; preds = %.lr.ph371, %._crit_edge368
  %indvars.iv471 = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next472, %._crit_edge368 ] ; 2 uses
  %i.pf = load ptr, ptr %i.oi, align 8, !tbaa !68 ; 2 uses
  %i.pg = getelementptr [4 x i8], ptr %i.pf, i64 %i.ok
  %i.ph = getelementptr [4 x i8], ptr %i.pg, i64 %i.ol ; 3 uses
  %i.pi = load ptr, ptr %i.om, align 8, !tbaa !69 ; 2 uses
  %i.pj = getelementptr [4 x i8], ptr %i.pi, i64 %i.ok
  %i.pk = getelementptr [4 x i8], ptr %i.pj, i64 %i.ol ; 3 uses
  br i1 %i.jc, label %.lr.ph352, label %._crit_edge368

.lr.ph352:                                        ; preds = %bb.q
  %i.pl = mul nuw nsw i64 %indvars.iv471, %i.ot
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.pl ; 5 uses
  br i1 %i.pd, label %.epil.preheader659, label %.lr.ph352.new

.lr.ph355.us:                                     ; preds = %.lr.ph355.us.preheader, %._crit_edge356.us
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %._crit_edge356.us ], [ 0, %.lr.ph355.us.preheader ] ; 4 uses
  %i.pn = shl i64 %indvars.iv456, 2
  %i.po = load ptr, ptr %i.op, align 8, !tbaa !98
  %i.pp = load ptr, ptr %i.oq, align 8, !tbaa !99
  %i.pq = mul nsw i64 %indvars.iv456, %i.os
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.pq
  tail call void %i.po(ptr noundef %i.pp, ptr noundef %i.z, ptr noundef %i.pr, i64 noundef 4) #14
  %invariant.gep518 = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv456 ; 6 uses
  %.reass687 = add i64 %i.pn, %invariant.op686
  %diff.check608 = icmp ult i64 %.reass687, 31
  %or.cond623 = select i1 %or.cond622.not625, i1 true, i1 %diff.check608
  br i1 %or.cond623, label %scalar.ph609.preheader, label %vector.body613

vector.body613:                                   ; preds = %.lr.ph355.us, %vector.body613
  %index614 = phi i64 [ %index.next617, %vector.body613 ], [ 0, %.lr.ph355.us ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index614 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %wide.load615 = load <4 x float>, ptr %i.ps, align 4, !tbaa !89
  %wide.load616 = load <4 x float>, ptr %i.pt, align 4, !tbaa !89
  %i.pu = getelementptr [4 x i8], ptr %invariant.gep518, i64 %index614 ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 16
  store <4 x float> %wide.load615, ptr %i.pu, align 4, !tbaa !89
  store <4 x float> %wide.load616, ptr %i.pv, align 4, !tbaa !89
  %index.next617 = add nuw i64 %index614, 8       ; 2 uses
  %i.pw = icmp eq i64 %index.next617, %n.vec612
  br i1 %i.pw, label %middle.block618, label %vector.body613, !llvm.loop !167

middle.block618:                                  ; preds = %vector.body613
  br i1 %cmp.n619, label %._crit_edge356.us, label %scalar.ph609.preheader

scalar.ph609.preheader:                           ; preds = %.lr.ph355.us, %middle.block618
  %indvars.iv451.ph = phi i64 [ 0, %.lr.ph355.us ], [ %n.vec612, %middle.block618 ] ; 3 uses
  br i1 %lcmp.mod666.not.a, label %scalar.ph609.prol.loopexit, label %scalar.ph609.prol

scalar.ph609.prol:                                ; preds = %scalar.ph609.preheader, %scalar.ph609.prol
  %indvars.iv451.prol = phi i64 [ %indvars.iv.next452.prol, %scalar.ph609.prol ], [ %indvars.iv451.ph, %scalar.ph609.preheader ] ; 3 uses
  %prol.iter667 = phi i64 [ %prol.iter667.next, %scalar.ph609.prol ], [ 0, %scalar.ph609.preheader ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv451.prol
  %i.py = load float, ptr %i.px, align 4, !tbaa !89
  %i.pz = mul nsw i64 %indvars.iv451.prol, %i.os
  %gep519.prol = getelementptr [4 x i8], ptr %invariant.gep518, i64 %i.pz
  store float %i.py, ptr %gep519.prol, align 4, !tbaa !89
  %indvars.iv.next452.prol = add nuw nsw i64 %indvars.iv451.prol, 1 ; 2 uses
  %prol.iter667.next = add i64 %prol.iter667, 1   ; 2 uses
  %prol.iter667.cmp.not = icmp eq i64 %prol.iter667.next, %xtraiter665.a
  br i1 %prol.iter667.cmp.not, label %scalar.ph609.prol.loopexit, label %scalar.ph609.prol, !llvm.loop !168

scalar.ph609.prol.loopexit:                       ; preds = %scalar.ph609.prol, %scalar.ph609.preheader
  %indvars.iv451.unr = phi i64 [ %indvars.iv451.ph, %scalar.ph609.preheader ], [ %indvars.iv.next452.prol, %scalar.ph609.prol ]
  %i.qa = sub nsw i64 %indvars.iv451.ph, %wide.trip.count449
  %i.qb = icmp ugt i64 %i.qa, -4
  br i1 %i.qb, label %._crit_edge356.us, label %scalar.ph609

scalar.ph609:                                     ; preds = %scalar.ph609.prol.loopexit, %scalar.ph609
  %indvars.iv451 = phi i64 [ %indvars.iv.next452.3, %scalar.ph609 ], [ %indvars.iv451.unr, %scalar.ph609.prol.loopexit ] ; 6 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv451
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !89
  %i.qe = mul nsw i64 %indvars.iv451, %i.os
  %gep519 = getelementptr [4 x i8], ptr %invariant.gep518, i64 %i.qe
  store float %i.qd, ptr %gep519, align 4, !tbaa !89
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next452
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !89
  %i.qh = mul nsw i64 %indvars.iv.next452, %i.os
  %gep519.1 = getelementptr [4 x i8], ptr %invariant.gep518, i64 %i.qh
  store float %i.qg, ptr %gep519.1, align 4, !tbaa !89
  %indvars.iv.next452.1 = add nuw nsw i64 %indvars.iv451, 2 ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next452.1
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !89
  %i.qk = mul nsw i64 %indvars.iv.next452.1, %i.os
  %gep519.2 = getelementptr [4 x i8], ptr %invariant.gep518, i64 %i.qk
  store float %i.qj, ptr %gep519.2, align 4, !tbaa !89
  %indvars.iv.next452.2 = add nuw nsw i64 %indvars.iv451, 3 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next452.2
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !89
  %i.qn = mul nsw i64 %indvars.iv.next452.2, %i.os
  %gep519.3 = getelementptr [4 x i8], ptr %invariant.gep518, i64 %i.qn
  store float %i.qm, ptr %gep519.3, align 4, !tbaa !89
  %indvars.iv.next452.3 = add nuw nsw i64 %indvars.iv451, 4 ; 2 uses
  %exitcond455.not.3 = icmp eq i64 %indvars.iv.next452.3, %wide.trip.count459
  br i1 %exitcond455.not.3, label %._crit_edge356.us, label %scalar.ph609, !llvm.loop !169

._crit_edge356.us:                                ; preds = %scalar.ph609.prol.loopexit, %scalar.ph609, %middle.block618
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %wide.trip.count459
  br i1 %exitcond460.not, label %.preheader, label %.lr.ph355.us, !llvm.loop !170

.lr.ph352.new:                                    ; preds = %.lr.ph352, %.lr.ph352.new
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.3, %.lr.ph352.new ], [ 0, %.lr.ph352 ] ; 5 uses
  %niter664 = phi i64 [ %niter664.next.3, %.lr.ph352.new ], [ 0, %.lr.ph352 ]
  %i.qo = mul nsw i64 %indvars.iv446, %i.os       ; 2 uses
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.qo
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.qo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qp, ptr align 4 %i.qq, i64 %i.oo, i1 false)
  %indvars.iv.next447 = or disjoint i64 %indvars.iv446, 1
  %i.qr = mul nsw i64 %indvars.iv.next447, %i.os  ; 2 uses
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.qr
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.qr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qs, ptr align 4 %i.qt, i64 %i.oo, i1 false)
  %indvars.iv.next447.1 = or disjoint i64 %indvars.iv446, 2
  %i.qu = mul nsw i64 %indvars.iv.next447.1, %i.os ; 2 uses
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.qu
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.qu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qv, ptr align 4 %i.qw, i64 %i.oo, i1 false)
  %indvars.iv.next447.2 = or disjoint i64 %indvars.iv446, 3
  %i.qx = mul nsw i64 %indvars.iv.next447.2, %i.os ; 2 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.qx
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.qx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qy, ptr align 4 %i.qz, i64 %i.oo, i1 false)
  %indvars.iv.next447.3 = add nuw nsw i64 %indvars.iv446, 4 ; 2 uses
  %niter664.next.3 = add i64 %niter664, 4         ; 2 uses
  %niter664.ncmp.3 = icmp eq i64 %niter664.next.3, %unroll_iter663
  br i1 %niter664.ncmp.3, label %.lr.ph355.us.preheader.unr-lcssa, label %.lr.ph352.new, !llvm.loop !171

.lr.ph355.us.preheader.unr-lcssa:                 ; preds = %.lr.ph352.new
  br i1 %lcmp.mod661.not, label %.lr.ph355.us.preheader, label %.epil.preheader659

.epil.preheader659:                               ; preds = %.lr.ph355.us.preheader.unr-lcssa, %.lr.ph352
  %indvars.iv446.epil.init = phi i64 [ 0, %.lr.ph352 ], [ %indvars.iv.next447.3, %.lr.ph355.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod662)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader659
  %indvars.iv446.epil = phi i64 [ %indvars.iv446.epil.init, %.epil.preheader659 ], [ %indvars.iv.next447.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader659 ], [ %epil.iter.next, %bb.r ]
  %i.ra = mul nsw i64 %indvars.iv446.epil, %i.os  ; 2 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ra
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.ra
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.rb, ptr align 4 %i.rc, i64 %i.oo, i1 false)
  %indvars.iv.next447.epil = add nuw nsw i64 %indvars.iv446.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter660
  br i1 %epil.iter.cmp.not, label %.lr.ph355.us.preheader, label %bb.r, !llvm.loop !172

.lr.ph355.us.preheader:                           ; preds = %bb.r, %.lr.ph355.us.preheader.unr-lcssa
  br label %.lr.ph355.us

.preheader:                                       ; preds = %._crit_edge356.us
  %scevgep575 = getelementptr i8, ptr %i.pf, i64 %i.pa ; 2 uses
  %scevgep576 = getelementptr i8, ptr %i.pi, i64 %i.pa ; 2 uses
  %bound0578 = icmp ult ptr %i.ph, %scevgep576
  %bound1579 = icmp ult ptr %i.pk, %scevgep575
  %found.conflict580 = and i1 %bound0578, %bound1579
  %9 = or i1 %found.conflict580, %stride.check586
  %bound0583 = icmp ult ptr %i.ph, %scevgep577
  %bound1584 = icmp ult ptr %i.z, %scevgep575
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx = or i1 %9, %found.conflict585
  %bound0587 = icmp ult ptr %i.pk, %scevgep577
  %bound1588 = icmp ult ptr %i.z, %scevgep576
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx591 = or i1 %conflict.rdx, %found.conflict589
  br label %.lr.ph367

._crit_edge368:                                   ; preds = %._crit_edge363, %bb.q
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge372, label %bb.q, !llvm.loop !173

.lr.ph367:                                        ; preds = %.preheader, %._crit_edge363
  %indvars.iv466 = phi i64 [ %indvars.iv.next467, %._crit_edge363 ], [ 0, %.preheader ] ; 2 uses
  %.0218365 = phi ptr [ %i.rx, %._crit_edge363 ], [ %i.pk, %.preheader ] ; 5 uses
  %.0219364 = phi ptr [ %i.rw, %._crit_edge363 ], [ %i.ph, %.preheader ] ; 5 uses
  %i.rd = load ptr, ptr %i.op, align 8, !tbaa !98
  %i.re = load ptr, ptr %i.oq, align 8, !tbaa !99
  %i.rf = mul nsw i64 %indvars.iv466, %i.os
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.rf
  tail call void %i.rd(ptr noundef %i.re, ptr noundef nonnull %i.z, ptr noundef %i.rg, i64 noundef 4) #14
  %brmerge = select i1 %min.iters.check593, i1 true, i1 %conflict.rdx591
  br i1 %brmerge, label %scalar.ph592.preheader, label %vector.body596

vector.body596:                                   ; preds = %.lr.ph367, %vector.body596
  %index597 = phi i64 [ %index.next601, %vector.body596 ], [ 0, %.lr.ph367 ] ; 4 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index597
  %wide.load598 = load <4 x float>, ptr %i.rh, align 4, !tbaa !89, !alias.scope !187
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.0219364, i64 %index597 ; 2 uses
  %wide.load599 = load <4 x float>, ptr %i.ri, align 4, !tbaa !89, !alias.scope !188, !noalias !189
  %i.rj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load598, <4 x float> %broadcast.splat, <4 x float> %wide.load599)
  store <4 x float> %i.rj, ptr %i.ri, align 4, !tbaa !89, !alias.scope !188, !noalias !189
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.0218365, i64 %index597 ; 2 uses
  %wide.load600 = load <4 x float>, ptr %i.rk, align 4, !tbaa !89, !alias.scope !190, !noalias !187
  %i.rl = fadd nsz <4 x float> %broadcast.splat, %wide.load600
  store <4 x float> %i.rl, ptr %i.rk, align 4, !tbaa !89, !alias.scope !190, !noalias !187
  %index.next601 = add nuw i64 %index597, 4       ; 2 uses
  %i.rm = icmp eq i64 %index.next601, %n.vec595
  br i1 %i.rm, label %middle.block602, label %vector.body596, !llvm.loop !178

middle.block602:                                  ; preds = %vector.body596
  br i1 %cmp.n603, label %._crit_edge363, label %scalar.ph592.preheader

scalar.ph592.preheader:                           ; preds = %.lr.ph367, %middle.block602
  %indvars.iv461.ph = phi i64 [ %n.vec595, %middle.block602 ], [ 0, %.lr.ph367 ] ; 6 uses
  br i1 %lcmp.mod669.not, label %scalar.ph592.prol.loopexit, label %scalar.ph592.prol

scalar.ph592.prol:                                ; preds = %scalar.ph592.preheader
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv461.ph
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !89
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.0219364, i64 %indvars.iv461.ph ; 2 uses
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !89
  %i.rr = tail call nsz float @llvm.fmuladd.f32(float %i.ro, float %i.og, float %i.rq)
  store float %i.rr, ptr %i.rp, align 4, !tbaa !89
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.0218365, i64 %indvars.iv461.ph ; 2 uses
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !89
  %i.ru = fadd nsz float %i.og, %i.rt
  store float %i.ru, ptr %i.rs, align 4, !tbaa !89
  %indvars.iv.next462.prol = or disjoint i64 %indvars.iv461.ph, 1
  br label %scalar.ph592.prol.loopexit

scalar.ph592.prol.loopexit:                       ; preds = %scalar.ph592.prol, %scalar.ph592.preheader
  %indvars.iv461.unr = phi i64 [ %indvars.iv461.ph, %scalar.ph592.preheader ], [ %indvars.iv.next462.prol, %scalar.ph592.prol ]
  %i.rv = icmp eq i64 %indvars.iv461.ph, %i.pe
  br i1 %i.rv, label %._crit_edge363, label %scalar.ph592

._crit_edge363:                                   ; preds = %scalar.ph592.prol.loopexit, %scalar.ph592, %middle.block602
  %i.rw = getelementptr inbounds [4 x i8], ptr %.0219364, i64 %i.or
  %i.rx = getelementptr inbounds [4 x i8], ptr %.0218365, i64 %i.or
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next467, %wide.trip.count469
  br i1 %exitcond470.not, label %._crit_edge368, label %.lr.ph367, !llvm.loop !179

scalar.ph592:                                     ; preds = %scalar.ph592.prol.loopexit, %scalar.ph592
  %indvars.iv461 = phi i64 [ %indvars.iv.next462.1, %scalar.ph592 ], [ %indvars.iv461.unr, %scalar.ph592.prol.loopexit ] ; 5 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv461
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !89
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %.0219364, i64 %indvars.iv461 ; 2 uses
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !89
  %i.sc = tail call nsz float @llvm.fmuladd.f32(float %i.rz, float %i.og, float %i.sb)
  store float %i.sc, ptr %i.sa, align 4, !tbaa !89
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.0218365, i64 %indvars.iv461 ; 2 uses
  %i.se = load float, ptr %i.sd, align 4, !tbaa !89
  %i.sf = fadd nsz float %i.og, %i.se
  store float %i.sf, ptr %i.sd, align 4, !tbaa !89
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next462
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !89
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.0219364, i64 %indvars.iv.next462 ; 2 uses
  %i.sj = load float, ptr %i.si, align 4, !tbaa !89
  %i.sk = tail call nsz float @llvm.fmuladd.f32(float %i.sh, float %i.og, float %i.sj)
  store float %i.sk, ptr %i.si, align 4, !tbaa !89
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.0218365, i64 %indvars.iv.next462 ; 2 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !89
  %i.sn = fadd nsz float %i.og, %i.sm
  store float %i.sn, ptr %i.sl, align 4, !tbaa !89
  %indvars.iv.next462.1 = add nuw nsw i64 %indvars.iv461, 2 ; 2 uses
  %exitcond465.not.1 = icmp eq i64 %indvars.iv.next462.1, %wide.trip.count469
  br i1 %exitcond465.not.1, label %._crit_edge363, label %scalar.ph592, !llvm.loop !180
}

; Function Attrs: nounwind uwtable
define internal void @final_block_filtering(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = sext i32 %8 to i64
  %i.c = getelementptr inbounds [4264 x i8], ptr %i.a, i64 %i.b ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !82   ; 11 uses
  %i.f = mul nsw i32 %i.e, %i.e                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4248
  %i.h = load i32, ptr %i.g, align 8, !tbaa !71
  %.fr460 = freeze i32 %i.h                       ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !33   ; 31 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = sext i32 %7 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !83   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !70   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !29 ; 2 uses
  %i.u = fmul nsz float %i.t, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85   ; 15 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87 ; 19 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !100 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !101 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !102 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !103 ; 3 uses
  %i.an = icmp sgt i32 %.fr460, 0                 ; 3 uses
  br i1 %i.an, label %.lr.ph347, label %.preheader334.thread

.lr.ph347:                                        ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.ap = icmp sgt i32 %i.j, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136656 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.at = sext i32 %i.j to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 6 uses
  %i.av = sext i32 %i.e to i64                    ; 9 uses
  %i.aw = zext nneg i32 %i.f to i64
  %wide.trip.count503 = zext nneg i32 %.fr460 to i64 ; 5 uses
  %wide.trip.count = zext i32 %i.j to i64         ; 10 uses
  %wide.trip.count493 = zext nneg i32 %i.j to i64 ; 2 uses
  %i.ax = add nuw nsw i64 %wide.trip.count, 4611686018427387903
  %i.ay = mul i64 %i.ax, %i.av
  %i.az = add i64 %i.ay, %wide.trip.count
  %i.ba = shl i64 %i.az, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ba ; 2 uses
  %scevgep651 = getelementptr i8, ptr %i.ak, i64 %i.ba ; 3 uses
  %i.bb = shl nuw nsw i64 %wide.trip.count, 3
  %i.bc = add nsw i64 %i.bb, -4                   ; 2 uses
  %scevgep652 = getelementptr i8, ptr %i.y, i64 %i.bc ; 2 uses
  %scevgep653 = getelementptr i8, ptr %i.ai, i64 %i.bc ; 2 uses
  %i.bd = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ugt i32 %i.j, 15
  %ident.check.not = icmp eq i32 %i.e, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.be = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.bf = shufflevector <2 x ptr> %i.be, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x ptr> poison, ptr %scevgep651, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %scevgep652, i64 1
  %i.bi = icmp ult <2 x ptr> %i.bf, %i.bh
  %i.bj = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %i.y, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.bm = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bn = icmp ult <2 x ptr> %i.bk, %i.bm
  %i.bo = and <2 x i1> %i.bi, %i.bn
  %i.bp = bitcast <2 x i1> %i.bo to i2
  %i.bq = icmp ne i2 %i.bp, 0
  %bound0659 = icmp ult ptr %i.ab, %scevgep653
  %bound1660 = icmp ult ptr %i.ai, %scevgep
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx663 = or i1 %i.bq, %found.conflict661
  %bound0664 = icmp ult ptr %i.ak, %scevgep652
  %bound1665 = icmp ult ptr %i.y, %scevgep651
  %found.conflict666 = and i1 %bound0664, %bound1665
  %conflict.rdx668.a = or i1 %conflict.rdx663, %found.conflict666
  %bound0669 = icmp ult ptr %i.ak, %scevgep653
  %bound1670 = icmp ult ptr %i.ai, %scevgep651
  %found.conflict671 = and i1 %bound0669, %bound1670
  %conflict.rdx673 = or i1 %conflict.rdx668.a, %found.conflict671
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter744 = and i64 %wide.trip.count, 1
  %i.br = icmp eq i64 %i.bd, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod745.not = icmp eq i64 %xtraiter744, 0
  %lcmp.mod746 = trunc i32 %i.j to i1
  br label %bb.b

.preheader334:                                    ; preds = %._crit_edge344
  %i.bs = icmp sgt i32 %i.j, 0
  br i1 %i.bs, label %.preheader333.lr.ph, label %._crit_edge395.thread602

.preheader334.thread:                             ; preds = %bb.a
  %i.bt = icmp sgt i32 %i.j, 0
  br i1 %i.bt, label %.preheader333.lr.ph.thread, label %._crit_edge395.thread602

.preheader333.lr.ph.thread:                       ; preds = %.preheader334.thread
  %i.bu = icmp sgt i32 %i.r, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bw = sext i32 %i.p to i64                    ; 2 uses
  br i1 %i.bu, label %.preheader333.us371, label %.preheader331.lr.ph.thread

.preheader333.lr.ph:                              ; preds = %.preheader334
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.by = sext i32 %i.p to i64                    ; 4 uses
  %i.bz = icmp sgt i32 %i.r, 1
  br i1 %i.bz, label %.preheader333.us.us.preheader, label %.preheader333.us.preheader

.preheader333.us.preheader:                       ; preds = %.preheader333.lr.ph
  %xtraiter748 = and i64 %wide.trip.count503, 1
  %i.ca = icmp eq i32 %.fr460, 1
  %unroll_iter751 = and i64 %wide.trip.count503, 2147483646
  %lcmp.mod749.not = icmp eq i64 %xtraiter748, 0
  %lcmp.mod750 = trunc i32 %.fr460 to i1
  br label %.preheader333.us

.preheader333.us.us.preheader:                    ; preds = %.preheader333.lr.ph
  %xtraiter754 = and i64 %wide.trip.count503, 1
  %i.cb = icmp eq i32 %.fr460, 1
  %unroll_iter757 = and i64 %wide.trip.count503, 2147483646
  %lcmp.mod755.not = icmp eq i64 %xtraiter754, 0
  %lcmp.mod756 = trunc i32 %.fr460 to i1
  br label %.preheader333.us.us

.preheader333.us.us:                              ; preds = %.preheader333.us.us.preheader, %._crit_edge354.split.us.us.split.us.us
  %.0310367.us.us = phi i32 [ %i.dp, %._crit_edge354.split.us.us.split.us.us ], [ 0, %.preheader333.us.us.preheader ] ; 2 uses
  %.0317366.us.us = phi ptr [ %i.dn, %._crit_edge354.split.us.us.split.us.us ], [ %i.am, %.preheader333.us.us.preheader ]
  %.0320365.us.us = phi ptr [ %i.dm, %._crit_edge354.split.us.us.split.us.us ], [ %i.ae, %.preheader333.us.us.preheader ]
  %i.cc = mul nsw i32 %.0310367.us.us, %i.e
  br label %.preheader332.us.us.us.us

.preheader332.us.us.us.us:                        ; preds = %._crit_edge350.us.us.us.us, %.preheader333.us.us
  %.0309353.us.us.us.us = phi i32 [ 0, %.preheader333.us.us ], [ %i.do, %._crit_edge350.us.us.us.us ] ; 2 uses
  %.1318352.us.us.us.us = phi ptr [ %.0317366.us.us, %.preheader333.us.us ], [ %i.dn, %._crit_edge350.us.us.us.us ] ; 6 uses
  %.1321351.us.us.us.us = phi ptr [ %.0320365.us.us, %.preheader333.us.us ], [ %i.dm, %._crit_edge350.us.us.us.us ] ; 6 uses
  %i.cd = add i32 %.0309353.us.us.us.us, %i.cc    ; 3 uses
  br i1 %i.cb, label %.epil.preheader753, label %.preheader332.us.us.us.us.new

.preheader332.us.us.us.us.new:                    ; preds = %.preheader332.us.us.us.us, %.preheader332.us.us.us.us.new
  %indvars.iv515 = phi i64 [ %indvars.iv.next516.1, %.preheader332.us.us.us.us.new ], [ 0, %.preheader332.us.us.us.us ] ; 5 uses
  %niter758 = phi i64 [ %niter758.next.1, %.preheader332.us.us.us.us.new ], [ 0, %.preheader332.us.us.us.us ]
  %i.ce = trunc i64 %indvars.iv515 to i32
  %i.cf = mul i32 %i.f, %i.ce
  %i.cg = add i32 %i.cd, %i.cf
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !89
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.1321351.us.us.us.us, i64 %indvars.iv515
  store float %i.cj, ptr %i.ck, align 4, !tbaa !89
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ch
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !89
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.1318352.us.us.us.us, i64 %indvars.iv515
  store float %i.cm, ptr %i.cn, align 4, !tbaa !89
  %indvars.iv.next516 = or disjoint i64 %indvars.iv515, 1 ; 3 uses
  %i.co = trunc i64 %indvars.iv.next516 to i32
  %i.cp = mul i32 %i.f, %i.co
  %i.cq = add i32 %i.cd, %i.cp
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !89
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.1321351.us.us.us.us, i64 %indvars.iv.next516
  store float %i.ct, ptr %i.cu, align 4, !tbaa !89
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.cr
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !89
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.1318352.us.us.us.us, i64 %indvars.iv.next516
  store float %i.cw, ptr %i.cx, align 4, !tbaa !89
  %indvars.iv.next516.1 = add nuw nsw i64 %indvars.iv515, 2 ; 2 uses
  %niter758.next.1 = add i64 %niter758, 2         ; 2 uses
  %niter758.ncmp.1 = icmp eq i64 %niter758.next.1, %unroll_iter757
  br i1 %niter758.ncmp.1, label %._crit_edge350.us.us.us.us.unr-lcssa, label %.preheader332.us.us.us.us.new, !llvm.loop !191

._crit_edge350.us.us.us.us.unr-lcssa:             ; preds = %.preheader332.us.us.us.us.new
  br i1 %lcmp.mod755.not, label %._crit_edge350.us.us.us.us, label %.epil.preheader753

.epil.preheader753:                               ; preds = %._crit_edge350.us.us.us.us.unr-lcssa, %.preheader332.us.us.us.us
  %indvars.iv515.epil.init = phi i64 [ 0, %.preheader332.us.us.us.us ], [ %indvars.iv.next516.1, %._crit_edge350.us.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod756)
  %i.cy = trunc i64 %indvars.iv515.epil.init to i32
  %i.cz = mul i32 %i.f, %i.cy
  %i.da = add i32 %i.cd, %i.cz
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !89
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.1321351.us.us.us.us, i64 %indvars.iv515.epil.init
  store float %i.dd, ptr %i.de, align 4, !tbaa !89
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.db
  %i.dg = load float, ptr %i.df, align 4, !tbaa !89
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.1318352.us.us.us.us, i64 %indvars.iv515.epil.init
  store float %i.dg, ptr %i.dh, align 4, !tbaa !89
  br label %._crit_edge350.us.us.us.us

._crit_edge350.us.us.us.us:                       ; preds = %._crit_edge350.us.us.us.us.unr-lcssa, %.epil.preheader753
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !90
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !91
  tail call void %i.di(ptr noundef %i.dj, ptr noundef nonnull %.1321351.us.us.us.us, ptr noundef nonnull %.1321351.us.us.us.us, i64 noundef 4) #14
  %i.dk = load ptr, ptr %i.bx, align 8, !tbaa !90
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !91
  tail call void %i.dk(ptr noundef %i.dl, ptr noundef nonnull %.1318352.us.us.us.us, ptr noundef nonnull %.1318352.us.us.us.us, i64 noundef 4) #14
  %i.dm = getelementptr inbounds [4 x i8], ptr %.1321351.us.us.us.us, i64 %i.by ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %.1318352.us.us.us.us, i64 %i.by ; 2 uses
  %i.do = add nuw nsw i32 %.0309353.us.us.us.us, 1 ; 2 uses
  %exitcond520.not = icmp eq i32 %i.do, %i.j
  br i1 %exitcond520.not, label %._crit_edge354.split.us.us.split.us.us, label %.preheader332.us.us.us.us, !llvm.loop !192

._crit_edge354.split.us.us.split.us.us:           ; preds = %._crit_edge350.us.us.us.us
  %i.dp = add nuw nsw i32 %.0310367.us.us, 1      ; 2 uses
  %exitcond521.not = icmp eq i32 %i.dp, %i.j
  br i1 %exitcond521.not, label %._crit_edge368.split, label %.preheader333.us.us, !llvm.loop !193

.preheader333.us:                                 ; preds = %.preheader333.us.preheader, %._crit_edge354.split.us.us.split
  %.0310367.us = phi i32 [ %i.ez, %._crit_edge354.split.us.us.split ], [ 0, %.preheader333.us.preheader ] ; 2 uses
  %.0317366.us = phi ptr [ %i.ex, %._crit_edge354.split.us.us.split ], [ %i.am, %.preheader333.us.preheader ]
  %.0320365.us = phi ptr [ %i.ew, %._crit_edge354.split.us.us.split ], [ %i.ae, %.preheader333.us.preheader ]
  %i.dq = mul nsw i32 %.0310367.us, %i.e
  br label %.preheader332.us.us

.preheader332.us.us:                              ; preds = %._crit_edge350.us.us, %.preheader333.us
  %.0309353.us.us = phi i32 [ 0, %.preheader333.us ], [ %i.ey, %._crit_edge350.us.us ] ; 2 uses
  %.1318352.us.us = phi ptr [ %.0317366.us, %.preheader333.us ], [ %i.ex, %._crit_edge350.us.us ] ; 4 uses
  %.1321351.us.us = phi ptr [ %.0320365.us, %.preheader333.us ], [ %i.ew, %._crit_edge350.us.us ] ; 4 uses
  %i.dr = add i32 %.0309353.us.us, %i.dq          ; 3 uses
  br i1 %i.ca, label %.epil.preheader747, label %.preheader332.us.us.new

.preheader332.us.us.new:                          ; preds = %.preheader332.us.us, %.preheader332.us.us.new
  %indvars.iv508 = phi i64 [ %indvars.iv.next509.1, %.preheader332.us.us.new ], [ 0, %.preheader332.us.us ] ; 5 uses
  %niter752 = phi i64 [ %niter752.next.1, %.preheader332.us.us.new ], [ 0, %.preheader332.us.us ]
  %i.ds = trunc i64 %indvars.iv508 to i32
  %i.dt = mul i32 %i.f, %i.ds
  %i.du = add i32 %i.dr, %i.dt
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !89
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.1321351.us.us, i64 %indvars.iv508
  store float %i.dx, ptr %i.dy, align 4, !tbaa !89
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.dv
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !89
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.1318352.us.us, i64 %indvars.iv508
  store float %i.ea, ptr %i.eb, align 4, !tbaa !89
  %indvars.iv.next509 = or disjoint i64 %indvars.iv508, 1 ; 3 uses
  %i.ec = trunc i64 %indvars.iv.next509 to i32
  %i.ed = mul i32 %i.f, %i.ec
  %i.ee = add i32 %i.dr, %i.ed
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !89
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.1321351.us.us, i64 %indvars.iv.next509
  store float %i.eh, ptr %i.ei, align 4, !tbaa !89
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ef
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !89
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.1318352.us.us, i64 %indvars.iv.next509
end_hunk_0
begin_hunk_1_@final_block_filtering:bb.a
  br label %.lr.ph408.us.us.us.us

.lr.ph408.us.us.us.us:                            ; preds = %._crit_edge409.us.us.us.us, %.preheader329.us.us
  %.0303411.us.us.us.us = phi i32 [ 0, %.preheader329.us.us ], [ %i.kp, %._crit_edge409.us.us.us.us ] ; 2 uses
  %.5410.us.us.us.us = phi ptr [ %.4421.us.us, %.preheader329.us.us ], [ %i.ko, %._crit_edge409.us.us.us.us ] ; 6 uses
  %i.jq = load ptr, ptr %i.jj, align 8, !tbaa !96
  %i.jr = load ptr, ptr %i.jk, align 8, !tbaa !97
  tail call void %i.jq(ptr noundef %i.jr, ptr noundef %.5410.us.us.us.us, ptr noundef %.5410.us.us.us.us, i64 noundef 4) #14
  %i.js = add i32 %.0303411.us.us.us.us, %i.jp    ; 3 uses
  br i1 %i.jo, label %.epil.preheader765, label %.lr.ph408.us.us.us.us.new

.lr.ph408.us.us.us.us.new:                        ; preds = %.lr.ph408.us.us.us.us, %.lr.ph408.us.us.us.us.new
  %indvars.iv539 = phi i64 [ %indvars.iv.next540.1, %.lr.ph408.us.us.us.us.new ], [ 0, %.lr.ph408.us.us.us.us ] ; 4 uses
  %niter770 = phi i64 [ %niter770.next.1, %.lr.ph408.us.us.us.us.new ], [ 0, %.lr.ph408.us.us.us.us ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.5410.us.us.us.us, i64 %indvars.iv539
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !89
  %i.jv = trunc i64 %indvars.iv539 to i32
  %i.jw = mul i32 %i.f, %i.jv
  %i.jx = add i32 %i.js, %i.jw
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jy
  store float %i.ju, ptr %i.jz, align 4, !tbaa !89
  %indvars.iv.next540 = or disjoint i64 %indvars.iv539, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.5410.us.us.us.us, i64 %indvars.iv.next540
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !89
  %i.kc = trunc i64 %indvars.iv.next540 to i32
  %i.kd = mul i32 %i.f, %i.kc
  %i.ke = add i32 %i.js, %i.kd
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.kf
  store float %i.kb, ptr %i.kg, align 4, !tbaa !89
  %indvars.iv.next540.1 = add nuw nsw i64 %indvars.iv539, 2 ; 2 uses
  %niter770.next.1 = add i64 %niter770, 2         ; 2 uses
  %niter770.ncmp.1 = icmp eq i64 %niter770.next.1, %unroll_iter769
  br i1 %niter770.ncmp.1, label %._crit_edge409.us.us.us.us.unr-lcssa, label %.lr.ph408.us.us.us.us.new, !llvm.loop !208

._crit_edge409.us.us.us.us.unr-lcssa:             ; preds = %.lr.ph408.us.us.us.us.new
  br i1 %lcmp.mod767.not, label %._crit_edge409.us.us.us.us, label %.epil.preheader765

.epil.preheader765:                               ; preds = %._crit_edge409.us.us.us.us.unr-lcssa, %.lr.ph408.us.us.us.us
  %indvars.iv539.epil.init = phi i64 [ 0, %.lr.ph408.us.us.us.us ], [ %indvars.iv.next540.1, %._crit_edge409.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod768)
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.5410.us.us.us.us, i64 %indvars.iv539.epil.init
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !89
  %i.kj = trunc i64 %indvars.iv539.epil.init to i32
  %i.kk = mul i32 %i.f, %i.kj
  %i.kl = add i32 %i.js, %i.kk
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.km
  store float %i.ki, ptr %i.kn, align 4, !tbaa !89
  br label %._crit_edge409.us.us.us.us

._crit_edge409.us.us.us.us:                       ; preds = %._crit_edge409.us.us.us.us.unr-lcssa, %.epil.preheader765
  %i.ko = getelementptr inbounds [4 x i8], ptr %.5410.us.us.us.us, i64 %i.jl ; 2 uses
  %i.kp = add nuw nsw i32 %.0303411.us.us.us.us, 1 ; 2 uses
  %exitcond544.not = icmp eq i32 %i.kp, %i.j
  br i1 %exitcond544.not, label %._crit_edge413.split.us.split.us.us.us, label %.lr.ph408.us.us.us.us, !llvm.loop !209

._crit_edge413.split.us.split.us.us.us:           ; preds = %._crit_edge409.us.us.us.us
  %i.kq = add nuw nsw i32 %.0304422.us.us, 1      ; 2 uses
  %exitcond545.not = icmp eq i32 %i.kq, %i.j
  br i1 %exitcond545.not, label %._crit_edge423.split, label %.preheader329.us.us, !llvm.loop !210

.preheader329.us:                                 ; preds = %.preheader329.us.preheader, %._crit_edge413.split.us.split.us430
  %.0304422.us = phi i32 [ %i.lq, %._crit_edge413.split.us.split.us430 ], [ 0, %.preheader329.us.preheader ] ; 2 uses
  %.4421.us = phi ptr [ %i.lo, %._crit_edge413.split.us.split.us430 ], [ %i.il, %.preheader329.us.preheader ]
  %i.kr = mul nsw i32 %.0304422.us, %i.e
  br label %.lr.ph408.us.us425

.lr.ph408.us.us425:                               ; preds = %._crit_edge409.us.us429, %.preheader329.us
  %.0303411.us.us426 = phi i32 [ 0, %.preheader329.us ], [ %i.lp, %._crit_edge409.us.us429 ] ; 2 uses
  %.5410.us.us427 = phi ptr [ %.4421.us, %.preheader329.us ], [ %i.lo, %._crit_edge409.us.us429 ] ; 4 uses
  %i.ks = add i32 %.0303411.us.us426, %i.kr       ; 3 uses
  br i1 %i.jn, label %.epil.preheader759, label %.lr.ph408.us.us425.new

.lr.ph408.us.us425.new:                           ; preds = %.lr.ph408.us.us425, %.lr.ph408.us.us425.new
  %indvars.iv532 = phi i64 [ %indvars.iv.next533.1, %.lr.ph408.us.us425.new ], [ 0, %.lr.ph408.us.us425 ] ; 4 uses
  %niter764 = phi i64 [ %niter764.next.1, %.lr.ph408.us.us425.new ], [ 0, %.lr.ph408.us.us425 ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.5410.us.us427, i64 %indvars.iv532
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !89
  %i.kv = trunc i64 %indvars.iv532 to i32
  %i.kw = mul i32 %i.f, %i.kv
  %i.kx = add i32 %i.ks, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.ky
  store float %i.ku, ptr %i.kz, align 4, !tbaa !89
  %indvars.iv.next533 = or disjoint i64 %indvars.iv532, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.5410.us.us427, i64 %indvars.iv.next533
  %i.lb = load float, ptr %i.la, align 4, !tbaa !89
  %i.lc = trunc i64 %indvars.iv.next533 to i32
  %i.ld = mul i32 %i.f, %i.lc
  %i.le = add i32 %i.ks, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.lf
  store float %i.lb, ptr %i.lg, align 4, !tbaa !89
  %indvars.iv.next533.1 = add nuw nsw i64 %indvars.iv532, 2 ; 2 uses
  %niter764.next.1 = add i64 %niter764, 2         ; 2 uses
  %niter764.ncmp.1 = icmp eq i64 %niter764.next.1, %unroll_iter763
  br i1 %niter764.ncmp.1, label %._crit_edge409.us.us429.unr-lcssa, label %.lr.ph408.us.us425.new, !llvm.loop !208

._crit_edge409.us.us429.unr-lcssa:                ; preds = %.lr.ph408.us.us425.new
  br i1 %lcmp.mod761.not, label %._crit_edge409.us.us429, label %.epil.preheader759

.epil.preheader759:                               ; preds = %._crit_edge409.us.us429.unr-lcssa, %.lr.ph408.us.us425
  %indvars.iv532.epil.init = phi i64 [ 0, %.lr.ph408.us.us425 ], [ %indvars.iv.next533.1, %._crit_edge409.us.us429.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod762)
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.5410.us.us427, i64 %indvars.iv532.epil.init
  %i.li = load float, ptr %i.lh, align 4, !tbaa !89
  %i.lj = trunc i64 %indvars.iv532.epil.init to i32
  %i.lk = mul i32 %i.f, %i.lj
  %i.ll = add i32 %i.ks, %i.lk
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.lm
  store float %i.li, ptr %i.ln, align 4, !tbaa !89
  br label %._crit_edge409.us.us429

._crit_edge409.us.us429:                          ; preds = %._crit_edge409.us.us429.unr-lcssa, %.epil.preheader759
  %i.lo = getelementptr inbounds [4 x i8], ptr %.5410.us.us427, i64 %i.jl ; 2 uses
  %i.lp = add nuw nsw i32 %.0303411.us.us426, 1   ; 2 uses
  %exitcond537.not = icmp eq i32 %i.lp, %i.j
  br i1 %exitcond537.not, label %._crit_edge413.split.us.split.us430, label %.lr.ph408.us.us425, !llvm.loop !209

._crit_edge413.split.us.split.us430:              ; preds = %._crit_edge409.us.us429
  %i.lq = add nuw nsw i32 %.0304422.us, 1         ; 2 uses
  %exitcond538.not = icmp eq i32 %i.lq, %i.j
  br i1 %exitcond538.not, label %._crit_edge423.split, label %.preheader329.us, !llvm.loop !210

.preheader329.us434:                              ; preds = %.preheader329.lr.ph.thread, %._crit_edge413.split.split.us.us
  %.0304422.us435 = phi i32 [ %i.lv, %._crit_edge413.split.split.us.us ], [ 0, %.preheader329.lr.ph.thread ]
  %.4421.us436 = phi ptr [ %i.lt, %._crit_edge413.split.split.us.us ], [ %.ph594, %.preheader329.lr.ph.thread ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader329.us434
  %.0303411.us416.us = phi i32 [ 0, %.preheader329.us434 ], [ %i.lu, %bb.d ]
  %.5410.us417.us = phi ptr [ %.4421.us436, %.preheader329.us434 ], [ %i.lt, %bb.d ] ; 3 uses
  %i.lr = load ptr, ptr %i.je, align 8, !tbaa !96
  %i.ls = load ptr, ptr %i.jf, align 8, !tbaa !97
  tail call void %i.lr(ptr noundef %i.ls, ptr noundef %.5410.us417.us, ptr noundef %.5410.us417.us, i64 noundef 4) #14
  %i.lt = getelementptr inbounds [4 x i8], ptr %.5410.us417.us, i64 %i.jg ; 2 uses
  %i.lu = add nuw nsw i32 %.0303411.us416.us, 1   ; 2 uses
  %exitcond530.not = icmp eq i32 %i.lu, %i.j
  br i1 %exitcond530.not, label %._crit_edge413.split.split.us.us, label %bb.d, !llvm.loop !209

._crit_edge413.split.split.us.us:                 ; preds = %bb.d
  %i.lv = add nuw nsw i32 %.0304422.us435, 1      ; 2 uses
  %exitcond531.not = icmp eq i32 %i.lv, %i.j
  br i1 %exitcond531.not, label %._crit_edge423.split, label %.preheader329.us434, !llvm.loop !210

._crit_edge423.split:                             ; preds = %._crit_edge413.split.split.us.us, %._crit_edge413.split.us.split.us430, %._crit_edge413.split.us.split.us.us.us, %._crit_edge395.thread602
  %i.lw = phi ptr [ %i.jh, %._crit_edge395.thread602 ], [ %i.ji, %._crit_edge413.split.us.split.us.us.us ], [ %i.ji, %._crit_edge413.split.us.split.us430 ], [ %i.jc, %._crit_edge413.split.split.us.us ]
  %.0316.lcssa597 = phi float [ 0.000000e+00, %._crit_edge395.thread602 ], [ %i.ix, %._crit_edge413.split.us.split.us.us.us ], [ %i.ix, %._crit_edge413.split.us.split.us430 ], [ 0.000000e+00, %._crit_edge413.split.split.us.us ] ; 2 uses
  %i.lx = phi i1 [ false, %._crit_edge395.thread602 ], [ true, %._crit_edge413.split.us.split.us.us.us ], [ true, %._crit_edge413.split.us.split.us430 ], [ true, %._crit_edge413.split.split.us.us ]
  %i.ly = fcmp nsz ogt float %.0316.lcssa597, 1.000000e-15
  %i.lz = select nsz i1 %i.ly, float %.0316.lcssa597, float 1.000000e-15
  %i.ma = fdiv nsz float 1.000000e+00, %i.lz      ; 7 uses
  br i1 %i.an, label %.lr.ph458, label %._crit_edge459

.lr.ph458:                                        ; preds = %._crit_edge423.split
  %i.mb = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.mc = mul i32 %i.n, %5
  %i.md = sext i32 %i.mc to i64                   ; 3 uses
  %i.me = sext i32 %6 to i64                      ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.mg = sext i32 %i.j to i64
  %i.mh = shl nuw nsw i64 %i.mg, 2                ; 5 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.mk = sext i32 %i.n to i64                    ; 3 uses
  %i.ml = sext i32 %i.e to i64                    ; 13 uses
  %i.mm = zext nneg i32 %i.f to i64
  %wide.trip.count574 = zext nneg i32 %.fr460 to i64
  %wide.trip.count549 = zext i32 %i.j to i64      ; 13 uses
  %wide.trip.count559 = zext nneg i32 %i.j to i64 ; 2 uses
  %wide.trip.count569 = zext nneg i32 %i.j to i64 ; 2 uses
  %i.mn = add nsw i64 %wide.trip.count549, -1     ; 2 uses
  %i.mo = mul i64 %i.mn, %i.mk
  %i.mp = add i64 %i.mo, %i.me
  %i.mq = add i64 %i.mp, %i.md
  %i.mr = add i64 %i.mq, %wide.trip.count549
  %i.ms = shl i64 %i.mr, 2                        ; 2 uses
  %i.mt = mul i64 %i.mn, %i.ml
  %i.mu = add i64 %i.mt, %wide.trip.count549
  %i.mv = shl i64 %i.mu, 2
  %scevgep680 = getelementptr i8, ptr %i.y, i64 %i.mv ; 2 uses
  %xtraiter772 = and i64 %wide.trip.count549, 3   ; 3 uses
  %i.mw = add i32 %i.j, -1
  %i.mx = icmp ult i32 %i.mw, 3
  %unroll_iter775 = and i64 %wide.trip.count549, 4294967292
  %lcmp.mod773.not = icmp eq i64 %xtraiter772, 0
  %lcmp.mod774 = icmp ne i64 %xtraiter772, 0
  %min.iters.check715 = icmp ult i32 %i.j, 8
  %ident.check712.not = icmp ne i32 %i.e, 1
  %or.cond726.not728 = select i1 %min.iters.check715, i1 true, i1 %ident.check712.not
  %i.my = sub i64 %i.ac, %i.z
  %diff.check = icmp ugt i64 %i.my, -32
  %or.cond727 = select i1 %or.cond726.not728, i1 true, i1 %diff.check
  %n.vec717 = and i64 %wide.trip.count549, 4294967288 ; 3 uses
  %cmp.n724 = icmp eq i64 %n.vec717, %wide.trip.count549
  %xtraiter777 = and i64 %wide.trip.count549, 3   ; 2 uses
  %lcmp.mod778.not = icmp eq i64 %xtraiter777, 0
  %9 = insertelement <2 x ptr> poison, ptr %i.y, i64 1
  %10 = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %11 = insertelement <2 x i32> %10, i32 %i.e, i64 1
  %12 = insertelement <2 x ptr> poison, ptr %scevgep680, i64 1
  %min.iters.check690 = icmp ult i32 %i.j, 8
  %13 = icmp slt <2 x i32> %11, zeroinitializer
  %n.vec701 = and i64 %wide.trip.count549, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ma, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n709 = icmp eq i64 %n.vec701, %wide.trip.count549
  %xtraiter779 = and i64 %wide.trip.count549, 1
  %lcmp.mod780.not = icmp eq i64 %xtraiter779, 0
  %i.mz = add nsw i64 %wide.trip.count549, -1
  br label %bb.e

._crit_edge459:                                   ; preds = %._crit_edge455, %.preheader329.lr.ph.thread, %._crit_edge423.split
  ret void

bb.e:                                             ; preds = %.lr.ph458, %._crit_edge455
  %indvars.iv571 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next572, %._crit_edge455 ] ; 2 uses
  %i.na = load ptr, ptr %i.mb, align 8, !tbaa !68 ; 2 uses
  %i.nb = getelementptr [4 x i8], ptr %i.na, i64 %i.md
  %i.nc = getelementptr [4 x i8], ptr %i.nb, i64 %i.me ; 3 uses
  %i.nd = load ptr, ptr %i.mf, align 8, !tbaa !69 ; 2 uses
  %i.ne = getelementptr [4 x i8], ptr %i.nd, i64 %i.md
  %i.nf = getelementptr [4 x i8], ptr %i.ne, i64 %i.me ; 3 uses
  br i1 %i.lx, label %.lr.ph439, label %._crit_edge455

.lr.ph439:                                        ; preds = %bb.e
  %i.ng = mul nuw nsw i64 %indvars.iv571, %i.mm
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.ng ; 5 uses
  br i1 %i.mx, label %.epil.preheader771, label %.lr.ph439.new

.lr.ph442.us:                                     ; preds = %.lr.ph442.us.preheader, %._crit_edge443.us
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %._crit_edge443.us ], [ 0, %.lr.ph442.us.preheader ] ; 3 uses
  %i.ni = load ptr, ptr %i.mi, align 8, !tbaa !98
  %i.nj = load ptr, ptr %i.mj, align 8, !tbaa !99
  %i.nk = mul nsw i64 %indvars.iv556, %i.ml       ; 2 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.nk ; 2 uses
  tail call void %i.ni(ptr noundef %i.nj, ptr noundef %i.nl, ptr noundef %i.nl, i64 noundef 4) #14
  %invariant.gep = getelementptr [4 x i8], ptr %i.ab, i64 %i.nk ; 6 uses
  %invariant.gep632 = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv556 ; 6 uses
  br i1 %or.cond727, label %scalar.ph714.preheader, label %vector.body718

vector.body718:                                   ; preds = %.lr.ph442.us, %vector.body718
  %index719 = phi i64 [ %index.next722, %vector.body718 ], [ 0, %.lr.ph442.us ] ; 3 uses
  %i.nm = getelementptr [4 x i8], ptr %invariant.gep, i64 %index719 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 16
  %wide.load720 = load <4 x float>, ptr %i.nm, align 4, !tbaa !89
  %wide.load721 = load <4 x float>, ptr %i.nn, align 4, !tbaa !89
  %i.no = getelementptr [4 x i8], ptr %invariant.gep632, i64 %index719 ; 2 uses
  %i.np = getelementptr i8, ptr %i.no, i64 16
  store <4 x float> %wide.load720, ptr %i.no, align 4, !tbaa !89
  store <4 x float> %wide.load721, ptr %i.np, align 4, !tbaa !89
  %index.next722 = add nuw i64 %index719, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next722, %n.vec717
  br i1 %i.nq, label %middle.block723, label %vector.body718, !llvm.loop !211

middle.block723:                                  ; preds = %vector.body718
  br i1 %cmp.n724, label %._crit_edge443.us, label %scalar.ph714.preheader

scalar.ph714.preheader:                           ; preds = %.lr.ph442.us, %middle.block723
  %indvars.iv551.ph = phi i64 [ 0, %.lr.ph442.us ], [ %n.vec717, %middle.block723 ] ; 3 uses
  br i1 %lcmp.mod778.not, label %scalar.ph714.prol.loopexit, label %scalar.ph714.prol

scalar.ph714.prol:                                ; preds = %scalar.ph714.preheader, %scalar.ph714.prol
  %indvars.iv551.prol = phi i64 [ %indvars.iv.next552.prol, %scalar.ph714.prol ], [ %indvars.iv551.ph, %scalar.ph714.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph714.prol ], [ 0, %scalar.ph714.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv551.prol
  %i.nr = load float, ptr %gep.prol, align 4, !tbaa !89
  %i.ns = mul nsw i64 %indvars.iv551.prol, %i.ml
  %gep633.prol = getelementptr [4 x i8], ptr %invariant.gep632, i64 %i.ns
  store float %i.nr, ptr %gep633.prol, align 4, !tbaa !89
  %indvars.iv.next552.prol = add nuw nsw i64 %indvars.iv551.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter777
  br i1 %prol.iter.cmp.not, label %scalar.ph714.prol.loopexit, label %scalar.ph714.prol, !llvm.loop !212

scalar.ph714.prol.loopexit:                       ; preds = %scalar.ph714.prol, %scalar.ph714.preheader
  %indvars.iv551.unr = phi i64 [ %indvars.iv551.ph, %scalar.ph714.preheader ], [ %indvars.iv.next552.prol, %scalar.ph714.prol ]
  %i.nt = sub nsw i64 %indvars.iv551.ph, %wide.trip.count549
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %._crit_edge443.us, label %scalar.ph714

scalar.ph714:                                     ; preds = %scalar.ph714.prol.loopexit, %scalar.ph714
  %indvars.iv551 = phi i64 [ %indvars.iv.next552.3, %scalar.ph714 ], [ %indvars.iv551.unr, %scalar.ph714.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv551
  %i.nv = load float, ptr %gep, align 4, !tbaa !89
  %i.nw = mul nsw i64 %indvars.iv551, %i.ml
  %gep633 = getelementptr [4 x i8], ptr %invariant.gep632, i64 %i.nw
  store float %i.nv, ptr %gep633, align 4, !tbaa !89
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next552
  %i.nx = load float, ptr %gep.1, align 4, !tbaa !89
  %i.ny = mul nsw i64 %indvars.iv.next552, %i.ml
  %gep633.1 = getelementptr [4 x i8], ptr %invariant.gep632, i64 %i.ny
  store float %i.nx, ptr %gep633.1, align 4, !tbaa !89
  %indvars.iv.next552.1 = add nuw nsw i64 %indvars.iv551, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next552.1
  %i.nz = load float, ptr %gep.2, align 4, !tbaa !89
  %i.oa = mul nsw i64 %indvars.iv.next552.1, %i.ml
  %gep633.2 = getelementptr [4 x i8], ptr %invariant.gep632, i64 %i.oa
  store float %i.nz, ptr %gep633.2, align 4, !tbaa !89
  %indvars.iv.next552.2 = add nuw nsw i64 %indvars.iv551, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next552.2
  %i.ob = load float, ptr %gep.3, align 4, !tbaa !89
  %i.oc = mul nsw i64 %indvars.iv.next552.2, %i.ml
  %gep633.3 = getelementptr [4 x i8], ptr %invariant.gep632, i64 %i.oc
  store float %i.ob, ptr %gep633.3, align 4, !tbaa !89
  %indvars.iv.next552.3 = add nuw nsw i64 %indvars.iv551, 4 ; 2 uses
  %exitcond555.not.3 = icmp eq i64 %indvars.iv.next552.3, %wide.trip.count559
  br i1 %exitcond555.not.3, label %._crit_edge443.us, label %scalar.ph714, !llvm.loop !213

._crit_edge443.us:                                ; preds = %scalar.ph714.prol.loopexit, %scalar.ph714, %middle.block723
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %exitcond560.not = icmp eq i64 %indvars.iv.next557, %wide.trip.count559
  br i1 %exitcond560.not, label %.preheader, label %.lr.ph442.us, !llvm.loop !214

.lr.ph439.new:                                    ; preds = %.lr.ph439, %.lr.ph439.new
  %indvars.iv546 = phi i64 [ %indvars.iv.next547.3, %.lr.ph439.new ], [ 0, %.lr.ph439 ] ; 5 uses
  %niter776 = phi i64 [ %niter776.next.3, %.lr.ph439.new ], [ 0, %.lr.ph439 ]
  %i.od = mul nsw i64 %indvars.iv546, %i.ml       ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.od
  %i.of = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.od
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oe, ptr align 4 %i.of, i64 %i.mh, i1 false)
  %indvars.iv.next547 = or disjoint i64 %indvars.iv546, 1
  %i.og = mul nsw i64 %indvars.iv.next547, %i.ml  ; 2 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.og
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.og
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oh, ptr align 4 %i.oi, i64 %i.mh, i1 false)
  %indvars.iv.next547.1 = or disjoint i64 %indvars.iv546, 2
  %i.oj = mul nsw i64 %indvars.iv.next547.1, %i.ml ; 2 uses
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.oj
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.oj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ok, ptr align 4 %i.ol, i64 %i.mh, i1 false)
  %indvars.iv.next547.2 = or disjoint i64 %indvars.iv546, 3
  %i.om = mul nsw i64 %indvars.iv.next547.2, %i.ml ; 2 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.om
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.om
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.on, ptr align 4 %i.oo, i64 %i.mh, i1 false)
  %indvars.iv.next547.3 = add nuw nsw i64 %indvars.iv546, 4 ; 2 uses
  %niter776.next.3 = add i64 %niter776, 4         ; 2 uses
  %niter776.ncmp.3 = icmp eq i64 %niter776.next.3, %unroll_iter775
  br i1 %niter776.ncmp.3, label %.lr.ph442.us.preheader.unr-lcssa, label %.lr.ph439.new, !llvm.loop !215

.lr.ph442.us.preheader.unr-lcssa:                 ; preds = %.lr.ph439.new
  br i1 %lcmp.mod773.not, label %.lr.ph442.us.preheader, label %.epil.preheader771

.epil.preheader771:                               ; preds = %.lr.ph442.us.preheader.unr-lcssa, %.lr.ph439
  %indvars.iv546.epil.init = phi i64 [ 0, %.lr.ph439 ], [ %indvars.iv.next547.3, %.lr.ph442.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod774)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader771
  %indvars.iv546.epil = phi i64 [ %indvars.iv546.epil.init, %.epil.preheader771 ], [ %indvars.iv.next547.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader771 ], [ %epil.iter.next, %bb.f ]
  %i.op = mul nsw i64 %indvars.iv546.epil, %i.ml  ; 2 uses
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.op
  %i.or = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.op
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.oq, ptr align 4 %i.or, i64 %i.mh, i1 false)
  %indvars.iv.next547.epil = add nuw nsw i64 %indvars.iv546.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter772
  br i1 %epil.iter.cmp.not, label %.lr.ph442.us.preheader, label %bb.f, !llvm.loop !216

.lr.ph442.us.preheader:                           ; preds = %bb.f, %.lr.ph442.us.preheader.unr-lcssa
  br label %.lr.ph442.us

.preheader:                                       ; preds = %._crit_edge443.us
  %scevgep678 = getelementptr i8, ptr %i.na, i64 %i.ms ; 2 uses
  %scevgep679 = getelementptr i8, ptr %i.nd, i64 %i.ms ; 2 uses
  %14 = insertelement <2 x ptr> poison, ptr %i.nf, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %i.nc, i64 1
  %16 = insertelement <2 x ptr> %9, ptr %i.nc, i64 0
  %17 = insertelement <2 x ptr> poison, ptr %scevgep679, i64 0
  %18 = insertelement <2 x ptr> %17, ptr %scevgep678, i64 1
  %19 = insertelement <2 x ptr> %12, ptr %scevgep678, i64 0
  %20 = icmp ult <2 x ptr> %16, %18
  %21 = icmp ult <2 x ptr> %15, %19
  %22 = and <2 x i1> %21, %20
  %23 = or <2 x i1> %22, %13
  %24 = bitcast <2 x i1> %23 to i2
  %25 = icmp ne i2 %24, 0
  %bound0692 = icmp ult ptr %i.nf, %scevgep680
  %bound1693 = icmp ult ptr %i.y, %scevgep679
  %found.conflict694 = and i1 %bound0692, %bound1693
  %conflict.rdx697 = or i1 %25, %found.conflict694
  br label %.lr.ph454

._crit_edge455:                                   ; preds = %._crit_edge450, %bb.e
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next572, %wide.trip.count574
  br i1 %exitcond575.not, label %._crit_edge459, label %bb.e, !llvm.loop !217

.lr.ph454:                                        ; preds = %.preheader, %._crit_edge450
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %._crit_edge450 ], [ 0, %.preheader ] ; 2 uses
  %.0299452 = phi ptr [ %i.pl, %._crit_edge450 ], [ %i.nf, %.preheader ] ; 5 uses
  %.0300451 = phi ptr [ %i.pk, %._crit_edge450 ], [ %i.nc, %.preheader ] ; 5 uses
  %i.os = load ptr, ptr %i.mi, align 8, !tbaa !98
  %i.ot = load ptr, ptr %i.mj, align 8, !tbaa !99
  %i.ou = mul nsw i64 %indvars.iv566, %i.ml       ; 2 uses
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ou ; 2 uses
  tail call void %i.os(ptr noundef %i.ot, ptr noundef %i.ov, ptr noundef %i.ov, i64 noundef 4) #14
  %invariant.gep634 = getelementptr [4 x i8], ptr %i.y, i64 %i.ou ; 4 uses
  %brmerge793 = select i1 %min.iters.check690, i1 true, i1 %conflict.rdx697
  br i1 %brmerge793, label %scalar.ph698.preheader, label %vector.body702

vector.body702:                                   ; preds = %.lr.ph454, %vector.body702
  %index703 = phi i64 [ %index.next707, %vector.body702 ], [ 0, %.lr.ph454 ] ; 4 uses
  %i.ow = getelementptr [4 x i8], ptr %invariant.gep634, i64 %index703
  %wide.load704 = load <4 x float>, ptr %i.ow, align 4, !tbaa !89, !alias.scope !231
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.0300451, i64 %index703 ; 2 uses
  %wide.load705 = load <4 x float>, ptr %i.ox, align 4, !tbaa !89, !alias.scope !232, !noalias !233
  %i.oy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load704, <4 x float> %broadcast.splat, <4 x float> %wide.load705)
  store <4 x float> %i.oy, ptr %i.ox, align 4, !tbaa !89, !alias.scope !232, !noalias !233
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.0299452, i64 %index703 ; 2 uses
  %wide.load706 = load <4 x float>, ptr %i.oz, align 4, !tbaa !89, !alias.scope !234, !noalias !231
  %i.pa = fadd nsz <4 x float> %broadcast.splat, %wide.load706
  store <4 x float> %i.pa, ptr %i.oz, align 4, !tbaa !89, !alias.scope !234, !noalias !231
  %index.next707 = add nuw i64 %index703, 4       ; 2 uses
  %i.pb = icmp eq i64 %index.next707, %n.vec701
  br i1 %i.pb, label %middle.block708, label %vector.body702, !llvm.loop !222

middle.block708:                                  ; preds = %vector.body702
  br i1 %cmp.n709, label %._crit_edge450, label %scalar.ph698.preheader

scalar.ph698.preheader:                           ; preds = %.lr.ph454, %middle.block708
  %indvars.iv561.ph = phi i64 [ %n.vec701, %middle.block708 ], [ 0, %.lr.ph454 ] ; 6 uses
  br i1 %lcmp.mod780.not, label %scalar.ph698.prol.loopexit, label %scalar.ph698.prol

scalar.ph698.prol:                                ; preds = %scalar.ph698.preheader
  %gep635.prol = getelementptr [4 x i8], ptr %invariant.gep634, i64 %indvars.iv561.ph
  %i.pc = load float, ptr %gep635.prol, align 4, !tbaa !89
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.0300451, i64 %indvars.iv561.ph ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !89
  %i.pf = tail call nsz float @llvm.fmuladd.f32(float %i.pc, float %i.ma, float %i.pe)
  store float %i.pf, ptr %i.pd, align 4, !tbaa !89
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.0299452, i64 %indvars.iv561.ph ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !89
  %i.pi = fadd nsz float %i.ma, %i.ph
  store float %i.pi, ptr %i.pg, align 4, !tbaa !89
  %indvars.iv.next562.prol = or disjoint i64 %indvars.iv561.ph, 1
  br label %scalar.ph698.prol.loopexit

scalar.ph698.prol.loopexit:                       ; preds = %scalar.ph698.prol, %scalar.ph698.preheader
  %indvars.iv561.unr = phi i64 [ %indvars.iv561.ph, %scalar.ph698.preheader ], [ %indvars.iv.next562.prol, %scalar.ph698.prol ]
  %i.pj = icmp eq i64 %indvars.iv561.ph, %i.mz
  br i1 %i.pj, label %._crit_edge450, label %scalar.ph698

._crit_edge450:                                   ; preds = %scalar.ph698.prol.loopexit, %scalar.ph698, %middle.block708
  %i.pk = getelementptr inbounds [4 x i8], ptr %.0300451, i64 %i.mk
  %i.pl = getelementptr inbounds [4 x i8], ptr %.0299452, i64 %i.mk
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count569
  br i1 %exitcond570.not, label %._crit_edge455, label %.lr.ph454, !llvm.loop !223

scalar.ph698:                                     ; preds = %scalar.ph698.prol.loopexit, %scalar.ph698
  %indvars.iv561 = phi i64 [ %indvars.iv.next562.1, %scalar.ph698 ], [ %indvars.iv561.unr, %scalar.ph698.prol.loopexit ] ; 5 uses
  %gep635 = getelementptr [4 x i8], ptr %invariant.gep634, i64 %indvars.iv561
  %i.pm = load float, ptr %gep635, align 4, !tbaa !89
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.0300451, i64 %indvars.iv561 ; 2 uses
  %i.po = load float, ptr %i.pn, align 4, !tbaa !89
  %i.pp = tail call nsz float @llvm.fmuladd.f32(float %i.pm, float %i.ma, float %i.po)
  store float %i.pp, ptr %i.pn, align 4, !tbaa !89
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0299452, i64 %indvars.iv561 ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !89
  %i.ps = fadd nsz float %i.ma, %i.pr
  store float %i.ps, ptr %i.pq, align 4, !tbaa !89
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 1 ; 3 uses
  %gep635.1 = getelementptr [4 x i8], ptr %invariant.gep634, i64 %indvars.iv.next562
  %i.pt = load float, ptr %gep635.1, align 4, !tbaa !89
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.0300451, i64 %indvars.iv.next562 ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !89
  %i.pw = tail call nsz float @llvm.fmuladd.f32(float %i.pt, float %i.ma, float %i.pv)
  store float %i.pw, ptr %i.pu, align 4, !tbaa !89
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0299452, i64 %indvars.iv.next562 ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !89
  %i.pz = fadd nsz float %i.ma, %i.py
  store float %i.pz, ptr %i.px, align 4, !tbaa !89
  %indvars.iv.next562.1 = add nuw nsw i64 %indvars.iv561, 2 ; 2 uses
  %exitcond565.not.1 = icmp eq i64 %indvars.iv.next562.1, %wide.trip.count569
  br i1 %exitcond565.not.1, label %._crit_edge450, label %scalar.ph698, !llvm.loop !224
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !236
  %i.f = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.e) #14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !237  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 23 uses
  %i.k = tail call i32 @ff_filter_get_nb_threads(ptr noundef %i.h) #16
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.k, i32 32)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 136648 ; 3 uses
  store i32 %spec.select, ptr %i.l, align 8, !tbaa !38
  %i.m = load i32, ptr %i.d, align 4, !tbaa !236
  %i.n = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.m) #14
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i32 %i.n, ptr %i.o, align 4, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !239  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 52 ; 2 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !56
  %notmask = shl nsw i32 -1, %i.q
  %i.s = xor i32 %notmask, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 %i.s, ptr %i.t, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !54
  %i.w = sub nsw i32 0, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !241
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = ashr i32 %i.w, %i.z
  %i.ab = sub nsw i32 0, %i.aa                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i32 %i.ab, ptr %i.ad, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !46
  store i32 %i.ag, ptr %i.ac, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !53
  %i.ak = sub nsw i32 0, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.am = load i8, ptr %i.al, align 1, !tbaa !242
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = ashr i32 %i.ak, %i.an
  %i.ap = sub nsw i32 0, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 %i.ap, ptr %i.ar, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !53 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 %i.au, ptr %i.av, align 4, !tbaa !46
  store i32 %i.au, ptr %i.aq, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33
  %i.ay = shl nsw i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = tail call i64 @av_cpu_max_align() #14
  %i.bb = add i64 %i.ba, 4294967295
  %i.bc = add i64 %i.bb, %i.az
  %i.bd = tail call i64 @av_cpu_max_align() #14
  %i.be = sub i64 0, %i.bd
  %i.bf = and i64 %i.bc, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 10 uses
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !82
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !70
  %i.bk = shl nsw i32 %i.bj, 1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = tail call i64 @av_cpu_max_align() #14
  %i.bn = add i64 %i.bm, 4294967295
  %i.bo = add i64 %i.bn, %i.bl
  %i.bp = tail call i64 @av_cpu_max_align() #14
  %i.bq = sub i64 0, %i.bp
  %i.br = and i64 %i.bo, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 100 ; 5 uses
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !83
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !38
  %.not160172 = icmp sgt i32 %i.bu, 0
  br i1 %.not160172, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  br label %bb.c

bb.b:                                             ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.l, align 8, !tbaa !38
  %i.ca = sext i32 %i.bz to i64
  %.not160 = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %.not160, label %bb.c, label %._crit_edge, !llvm.loop !235

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4264 x i8], ptr %i.bv, i64 %indvars.iv ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cc = load i32, ptr %i.aw, align 4, !tbaa !33 ; 3 uses
  %i.cd = sitofp nsz i32 %i.cc to float
  %i.ce = fdiv nsz float 5.000000e-01, %i.cd
  store float %i.ce, ptr %i.a, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !89
  %i.cf = load i32, ptr %i.aq, align 8, !tbaa !46
  %i.cg = add i32 %i.cc, -1                       ; 2 uses
end_hunk_1
