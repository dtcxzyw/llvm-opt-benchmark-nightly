Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_defringe?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@process:bb.a

vector.body654:                                   ; preds = %vector.ph638, %vector.body654
  %index655 = phi i64 [ 0, %vector.ph638 ], [ %index.next684, %vector.body654 ] ; 5 uses
  %vec.phi656 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.nc, %vector.body654 ]
  %vec.phi657 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.nd, %vector.body654 ]
  %vec.phi658 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.ne, %vector.body654 ]
  %vec.phi659 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.nf, %vector.body654 ]
  %i.kr = shl nuw nsw i64 %index655, 3
  %i.ks = shl i64 %index655, 3
  %i.kt = shl i64 %index655, 3
  %i.ku = shl i64 %index655, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.kr
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ks
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.kt
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 128
  %i.la = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ku
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 192
  %wide.vec660 = load <16 x i32>, ptr %i.kv, align 4, !tbaa !77 ; 2 uses
  %strided.vec661 = shufflevector <16 x i32> %wide.vec660, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec662 = shufflevector <16 x i32> %wide.vec660, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec663 = load <16 x i32>, ptr %i.kx, align 4, !tbaa !77 ; 2 uses
  %strided.vec664 = shufflevector <16 x i32> %wide.vec663, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec665 = shufflevector <16 x i32> %wide.vec663, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec666 = load <16 x i32>, ptr %i.kz, align 4, !tbaa !77 ; 2 uses
  %strided.vec667 = shufflevector <16 x i32> %wide.vec666, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec668 = shufflevector <16 x i32> %wide.vec666, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec669 = load <16 x i32>, ptr %i.lb, align 4, !tbaa !77 ; 2 uses
  %strided.vec670 = shufflevector <16 x i32> %wide.vec669, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec671 = shufflevector <16 x i32> %wide.vec669, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.lc = add nsw <8 x i32> %strided.vec661, %broadcast.splat641 ; 2 uses
  %i.ld = add nsw <8 x i32> %strided.vec664, %broadcast.splat641 ; 2 uses
  %i.le = add nsw <8 x i32> %strided.vec667, %broadcast.splat641 ; 2 uses
  %i.lf = add nsw <8 x i32> %strided.vec670, %broadcast.splat641 ; 2 uses
  %i.lg = icmp slt <8 x i32> %i.lc, %broadcast.splat643
  %i.lh = icmp slt <8 x i32> %i.ld, %broadcast.splat643
  %i.li = icmp slt <8 x i32> %i.le, %broadcast.splat643
  %i.lj = icmp slt <8 x i32> %i.lf, %broadcast.splat643
  %i.lk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lc, <8 x i32> zeroinitializer)
  %i.ll = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ld, <8 x i32> zeroinitializer)
  %i.lm = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.le, <8 x i32> zeroinitializer)
  %i.ln = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lf, <8 x i32> zeroinitializer)
  %i.lo = select <8 x i1> %i.lg, <8 x i32> %i.lk, <8 x i32> %broadcast.splat645
  %i.lp = select <8 x i1> %i.lh, <8 x i32> %i.ll, <8 x i32> %broadcast.splat645
  %i.lq = select <8 x i1> %i.li, <8 x i32> %i.lm, <8 x i32> %broadcast.splat645
  %i.lr = select <8 x i1> %i.lj, <8 x i32> %i.ln, <8 x i32> %broadcast.splat645
  %i.ls = add nsw <8 x i32> %strided.vec662, %broadcast.splat647 ; 2 uses
  %i.lt = add nsw <8 x i32> %strided.vec665, %broadcast.splat647 ; 2 uses
  %i.lu = add nsw <8 x i32> %strided.vec668, %broadcast.splat647 ; 2 uses
  %i.lv = add nsw <8 x i32> %strided.vec671, %broadcast.splat647 ; 2 uses
  %i.lw = icmp slt <8 x i32> %i.ls, %broadcast.splat649
  %i.lx = icmp slt <8 x i32> %i.lt, %broadcast.splat649
  %i.ly = icmp slt <8 x i32> %i.lu, %broadcast.splat649
  %i.lz = icmp slt <8 x i32> %i.lv, %broadcast.splat649
  %i.ma = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ls, <8 x i32> zeroinitializer)
  %i.mb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lt, <8 x i32> zeroinitializer)
  %i.mc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lu, <8 x i32> zeroinitializer)
  %i.md = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lv, <8 x i32> zeroinitializer)
  %i.me = select <8 x i1> %i.lw, <8 x i32> %i.ma, <8 x i32> %broadcast.splat651
  %i.mf = select <8 x i1> %i.lx, <8 x i32> %i.mb, <8 x i32> %broadcast.splat651
  %i.mg = select <8 x i1> %i.ly, <8 x i32> %i.mc, <8 x i32> %broadcast.splat651
  %i.mh = select <8 x i1> %i.lz, <8 x i32> %i.md, <8 x i32> %broadcast.splat651
  %i.mi = zext nneg <8 x i32> %i.me to <8 x i64>
  %i.mj = zext nneg <8 x i32> %i.mf to <8 x i64>
  %i.mk = zext nneg <8 x i32> %i.mg to <8 x i64>
  %i.ml = zext nneg <8 x i32> %i.mh to <8 x i64>
  %i.mm = mul nuw nsw <8 x i64> %broadcast.splat653, %i.mi
  %i.mn = mul nuw nsw <8 x i64> %broadcast.splat653, %i.mj
  %i.mo = mul nuw nsw <8 x i64> %broadcast.splat653, %i.mk
  %i.mp = mul nuw nsw <8 x i64> %broadcast.splat653, %i.ml
  %i.mq = sext <8 x i32> %i.lo to <8 x i64>
  %i.mr = sext <8 x i32> %i.lp to <8 x i64>
  %i.ms = sext <8 x i32> %i.lq to <8 x i64>
  %i.mt = sext <8 x i32> %i.lr to <8 x i64>
  %i.mu = add nsw <8 x i64> %i.mm, %i.mq
  %i.mv = add nsw <8 x i64> %i.mn, %i.mr
  %i.mw = add nsw <8 x i64> %i.mo, %i.ms
  %i.mx = add nsw <8 x i64> %i.mp, %i.mt
  %i.my = shl <8 x i64> %i.mu, splat (i64 4)
  %i.mz = shl <8 x i64> %i.mv, splat (i64 4)
  %i.na = shl <8 x i64> %i.mw, splat (i64 4)
  %i.nb = shl <8 x i64> %i.mx, splat (i64 4)
  %wide.gep672 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.my
  %wide.gep673 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.mz
  %wide.gep674 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.na
  %wide.gep675 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.nb
  %wide.gep676 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep672, i64 12
  %wide.gep677 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep673, i64 12
  %wide.gep678 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep674, i64 12
  %wide.gep679 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep675, i64 12
  %wide.masked.gather680 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep676, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %wide.masked.gather681 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep677, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %wide.masked.gather682 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep678, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %wide.masked.gather683 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep679, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %i.nc = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather680, %vec.phi656 ; 2 uses
  %i.nd = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather681, %vec.phi657 ; 2 uses
  %i.ne = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather682, %vec.phi658 ; 2 uses
  %i.nf = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather683, %vec.phi659 ; 2 uses
  %index.next684 = add nuw i64 %index655, 32      ; 2 uses
  %i.ng = icmp eq i64 %index.next684, %n.vec639
  br i1 %i.ng, label %middle.block685, label %vector.body654, !llvm.loop !69

middle.block685:                                  ; preds = %vector.body654
  %bin.rdx686 = fadd reassoc nsz arcp contract afn <8 x float> %i.nd, %i.nc
  %bin.rdx687 = fadd reassoc nsz arcp contract afn <8 x float> %i.ne, %bin.rdx686
  %bin.rdx688 = fadd reassoc nsz arcp contract afn <8 x float> %i.nf, %bin.rdx687
  %i.nh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx688) ; 3 uses
  br i1 %cmp.n689, label %._crit_edge336, label %vec.epilog.iter.check694

vec.epilog.iter.check694:                         ; preds = %middle.block685
  br i1 %min.epilog.iters.check695, label %.lr.ph335.preheader, label %vec.epilog.ph696, !prof !83

vec.epilog.ph696:                                 ; preds = %vector.main.loop.iter.check636, %vec.epilog.iter.check694
  %vec.epilog.resume.val690 = phi i64 [ %n.vec639, %vec.epilog.iter.check694 ], [ 0, %vector.main.loop.iter.check636 ]
  %bc.merge.rdx691 = phi float [ %i.nh, %vec.epilog.iter.check694 ], [ 0.000000e+00, %vector.main.loop.iter.check636 ]
  %i.ni = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx691, i64 0
  %broadcast.splatinsert698 = insertelement <4 x i32> poison, i32 %i.kq, i64 0
  %broadcast.splat699 = shufflevector <4 x i32> %broadcast.splatinsert698, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body712

vec.epilog.vector.body712:                        ; preds = %vec.epilog.vector.body712, %vec.epilog.ph696
  %index713 = phi i64 [ %vec.epilog.resume.val690, %vec.epilog.ph696 ], [ %index.next721, %vec.epilog.vector.body712 ] ; 2 uses
  %vec.phi714 = phi <4 x float> [ %i.ni, %vec.epilog.ph696 ], [ %i.ny, %vec.epilog.vector.body712 ]
  %i.nj = shl nuw nsw i64 %index713, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.nj
  %wide.vec715 = load <8 x i32>, ptr %i.nk, align 4, !tbaa !77 ; 2 uses
  %strided.vec716 = shufflevector <8 x i32> %wide.vec715, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec717 = shufflevector <8 x i32> %wide.vec715, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nl = add nsw <4 x i32> %strided.vec716, %broadcast.splat699 ; 2 uses
  %i.nm = icmp slt <4 x i32> %i.nl, %broadcast.splat701
  %i.nn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nl, <4 x i32> zeroinitializer)
  %i.no = select <4 x i1> %i.nm, <4 x i32> %i.nn, <4 x i32> %broadcast.splat703
  %i.np = add nsw <4 x i32> %strided.vec717, %broadcast.splat705 ; 2 uses
  %i.nq = icmp slt <4 x i32> %i.np, %broadcast.splat707
  %i.nr = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.np, <4 x i32> zeroinitializer)
  %i.ns = select <4 x i1> %i.nq, <4 x i32> %i.nr, <4 x i32> %broadcast.splat709
  %i.nt = zext nneg <4 x i32> %i.ns to <4 x i64>
  %i.nu = mul nuw nsw <4 x i64> %broadcast.splat711, %i.nt
  %i.nv = sext <4 x i32> %i.no to <4 x i64>
  %i.nw = add nsw <4 x i64> %i.nu, %i.nv
  %i.nx = shl <4 x i64> %i.nw, splat (i64 4)
  %wide.gep718 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.nx
  %wide.gep719 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep718, i64 12
  %wide.masked.gather720 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep719, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !78
  %i.ny = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather720, %vec.phi714 ; 2 uses
  %index.next721 = add nuw i64 %index713, 4       ; 2 uses
  %i.nz = icmp eq i64 %index.next721, %n.vec697
  br i1 %i.nz, label %vec.epilog.middle.block722, label %vec.epilog.vector.body712, !llvm.loop !70

vec.epilog.middle.block722:                       ; preds = %vec.epilog.vector.body712
  %i.oa = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ny) ; 2 uses
  br i1 %cmp.n723, label %._crit_edge336, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %iter.check692, %vec.epilog.iter.check694, %vec.epilog.middle.block722
  %indvars.iv374.ph = phi i64 [ 0, %iter.check692 ], [ %n.vec639, %vec.epilog.iter.check694 ], [ %n.vec697, %vec.epilog.middle.block722 ]
  %.0269333.ph = phi float [ 0.000000e+00, %iter.check692 ], [ %i.nh, %vec.epilog.iter.check694 ], [ %i.oa, %vec.epilog.middle.block722 ]
  %i.ob = insertelement <2 x i32> %i.ki, i32 %i.kq, i64 0
  br label %.lr.ph335

._crit_edge336:                                   ; preds = %.lr.ph335, %middle.block685, %vec.epilog.middle.block722, %.preheader313
  %.0269.lcssa = phi float [ 0.000000e+00, %.preheader313 ], [ %i.oa, %vec.epilog.middle.block722 ], [ %i.nh, %middle.block685 ], [ %i.pa, %.lr.ph335 ]
  %i.oc = fmul reassoc nsz arcp contract afn float %.0269.lcssa, %i.jv
  %i.od = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oc, float f0x3C23D70A) ; 2 uses
  %i.oe = load float, ptr %i.jq, align 4, !tbaa !36
  %i.of = fpext reassoc nsz arcp contract afn float %i.oe to double
  %i.og = fpext reassoc nnan nsz arcp contract afn float %i.od to double
  %i.oh = fmul reassoc nnan nsz arcp contract afn double %i.og, f0x3FBF07C1F07C1F08
  %i.oi = fmul reassoc nsz arcp contract afn double %i.oh, %i.of
  %i.oj = call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.oi, double f0x3FB99999A0000000)
  %i.ok = fptrunc reassoc nsz arcp contract afn double %i.oj to float
  br label %._crit_edge401

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph335 ], [ %indvars.iv374.ph, %.lr.ph335.preheader ] ; 2 uses
  %.0269333 = phi float [ %i.pa, %.lr.ph335 ], [ %.0269333.ph, %.lr.ph335.preheader ]
  %.idx419 = shl nuw nsw i64 %indvars.iv374, 3
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx419
  %i.om = load <2 x i32>, ptr %i.ol, align 4, !tbaa !77
  %i.on = add nsw <2 x i32> %i.om, %i.ob          ; 2 uses
  %i.oo = icmp slt <2 x i32> %i.on, %i.af
  %i.op = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.on, <2 x i32> zeroinitializer)
  %i.oq = select <2 x i1> %i.oo, <2 x i32> %i.op, <2 x i32> %i.jp ; 2 uses
  %i.or = extractelement <2 x i32> %i.oq, i64 1
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = mul nuw nsw i64 %i.os, %i.em
  %i.ou = extractelement <2 x i32> %i.oq, i64 0
  %i.ov = sext i32 %i.ou to i64
  %i.ow = add nsw i64 %i.ot, %i.ov
  %.idx = shl i64 %i.ow, 4
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !78
  %i.pa = fadd reassoc nsz arcp contract afn float %i.oz, %.0269333 ; 2 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %._crit_edge336, label %.lr.ph335, !llvm.loop !71

._crit_edge401:                                   ; preds = %bb.n, %._crit_edge336
  %.4 = phi nsz float [ %i.od, %._crit_edge336 ], [ %.3352, %bb.n ] ; 5 uses
  %.0270 = phi nsz float [ %i.ok, %._crit_edge336 ], [ %.0273, %bb.n ] ; 9 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kl ; 4 uses
  %i.pc = fcmp reassoc nsz arcp contract afn ogt float %i.ko, %.0270
  br i1 %i.pc, label %bb.w, label %bb.o

bb.o:                                             ; preds = %._crit_edge401
  %i.pd = trunc nuw nsw i64 %indvars.iv391 to i32
  %i.pe = call i32 @llvm.smax.i32(i32 %i.pd, i32 1)
  %i.pf = shl i32 %i.pe, 2
  %i.pg = add i32 %i.pf, -4
  %i.ph = sext i32 %i.pg to i64                   ; 3 uses
  %i.pi = getelementptr [4 x i8], ptr %i.kf, i64 %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !78
  %i.pl = fcmp reassoc nsz arcp contract afn ogt float %i.pk, %.0270
  br i1 %i.pl, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.pm = shl nuw nsw i64 %indvars.iv391, 2       ; 2 uses
  %i.pn = getelementptr [4 x i8], ptr %i.kf, i64 %i.pm
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %i.pp = load float, ptr %i.po, align 4, !tbaa !78
  %i.pq = fcmp reassoc nsz arcp contract afn ogt float %i.pp, %.0270
  br i1 %i.pq, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pr = add nuw nsw i64 %indvars.iv391, 1       ; 2 uses
  %i.ps = trunc nuw nsw i64 %i.pr to i32
  %i.pt = call i32 @llvm.smin.i32(i32 %i.jt, i32 %i.ps)
  %i.pu = shl nsw i32 %i.pt, 2
  %i.pv = sext i32 %i.pu to i64                   ; 3 uses
  %i.pw = getelementptr [4 x i8], ptr %i.kf, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 12
  %i.py = load float, ptr %i.px, align 4, !tbaa !78
  %i.pz = fcmp reassoc nsz arcp contract afn ogt float %i.py, %.0270
  br i1 %i.pz, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.qa = getelementptr [4 x i8], ptr %i.kg, i64 %i.ph
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !78
  %i.qd = fcmp reassoc nsz arcp contract afn ogt float %i.qc, %.0270
  br i1 %i.qd, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.qe = getelementptr [4 x i8], ptr %i.kg, i64 %i.pv
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !78
  %i.qh = fcmp reassoc nsz arcp contract afn ogt float %i.qg, %.0270
  br i1 %i.qh, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.qi = getelementptr [4 x i8], ptr %i.kh, i64 %i.ph
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !78
  %i.ql = fcmp reassoc nsz arcp contract afn ogt float %i.qk, %.0270
  br i1 %i.ql, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.qm = getelementptr [4 x i8], ptr %i.kh, i64 %i.pm
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !78
  %i.qp = fcmp reassoc nsz arcp contract afn ogt float %i.qo, %.0270
  br i1 %i.qp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.qq = getelementptr [4 x i8], ptr %i.kh, i64 %i.pv
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 12
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !78
  %i.qt = fcmp reassoc nsz arcp contract afn ogt float %i.qs, %.0270
  br i1 %i.qt, label %bb.w, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.v
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kl
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !78
  store float %i.qv, ptr %i.pb, align 4, !tbaa !78
  %i.qw = or disjoint i64 %i.kl, 1                ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qw
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !78
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qw
  store float %i.qy, ptr %i.qz, align 4, !tbaa !78
  %i.ra = or disjoint i64 %i.kl, 2                ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ra
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !78
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ra
  store float %i.rc, ptr %i.rd, align 4, !tbaa !78
  br label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %._crit_edge401
  br i1 %i.cm, label %iter.check589, label %._crit_edge345

iter.check589:                                    ; preds = %bb.w
  %i.re = trunc nsw i64 %indvars.iv391 to i32     ; 3 uses
  br i1 %min.iters.check529, label %.lr.ph344.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %iter.check589
  br i1 %min.iters.check531, label %vec.epilog.ph593, label %vector.ph532

vector.ph532:                                     ; preds = %vector.main.loop.iter.check530
  %broadcast.splatinsert534 = insertelement <8 x i32> poison, i32 %i.re, i64 0
  %broadcast.splat535 = shufflevector <8 x i32> %broadcast.splatinsert534, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert548 = insertelement <8 x float> poison, float %.4, i64 0
  %broadcast.splat549 = shufflevector <8 x float> %broadcast.splatinsert548, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.ph532, %vector.body550
  %index551 = phi i64 [ 0, %vector.ph532 ], [ %index.next579, %vector.body550 ] ; 3 uses
  %vec.phi552 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sw, %vector.body550 ]
  %vec.phi553 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sx, %vector.body550 ]
  %vec.phi554 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.su, %vector.body550 ]
  %vec.phi555 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sv, %vector.body550 ]
  %vec.phi556 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sq, %vector.body550 ]
  %vec.phi557 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sr, %vector.body550 ]
  %i.rf = shl nuw nsw i64 %index551, 3
  %i.rg = shl i64 %index551, 3
  %i.rh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.rf
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.rg
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 64
  %wide.vec558 = load <16 x i32>, ptr %i.rh, align 4, !tbaa !77 ; 2 uses
  %strided.vec559 = shufflevector <16 x i32> %wide.vec558, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec560 = shufflevector <16 x i32> %wide.vec558, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec561 = load <16 x i32>, ptr %i.rj, align 4, !tbaa !77 ; 2 uses
  %strided.vec562 = shufflevector <16 x i32> %wide.vec561, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec563 = shufflevector <16 x i32> %wide.vec561, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.rk = add nsw <8 x i32> %strided.vec559, %broadcast.splat535 ; 2 uses
  %i.rl = add nsw <8 x i32> %strided.vec562, %broadcast.splat535 ; 2 uses
  %i.rm = icmp slt <8 x i32> %i.rk, %broadcast.splat537
  %i.rn = icmp slt <8 x i32> %i.rl, %broadcast.splat537
  %i.ro = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rk, <8 x i32> zeroinitializer)
  %i.rp = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rl, <8 x i32> zeroinitializer)
  %i.rq = select <8 x i1> %i.rm, <8 x i32> %i.ro, <8 x i32> %broadcast.splat539
  %i.rr = select <8 x i1> %i.rn, <8 x i32> %i.rp, <8 x i32> %broadcast.splat539
  %i.rs = add nsw <8 x i32> %strided.vec560, %broadcast.splat541 ; 2 uses
  %i.rt = add nsw <8 x i32> %strided.vec563, %broadcast.splat541 ; 2 uses
  %i.ru = icmp slt <8 x i32> %i.rs, %broadcast.splat543
  %i.rv = icmp slt <8 x i32> %i.rt, %broadcast.splat543
  %i.rw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rs, <8 x i32> zeroinitializer)
  %i.rx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rt, <8 x i32> zeroinitializer)
  %i.ry = select <8 x i1> %i.ru, <8 x i32> %i.rw, <8 x i32> %broadcast.splat545
  %i.rz = select <8 x i1> %i.rv, <8 x i32> %i.rx, <8 x i32> %broadcast.splat545
  %i.sa = zext nneg <8 x i32> %i.ry to <8 x i64>
  %i.sb = zext nneg <8 x i32> %i.rz to <8 x i64>
  %i.sc = mul nuw nsw <8 x i64> %broadcast.splat547, %i.sa
  %i.sd = mul nuw nsw <8 x i64> %broadcast.splat547, %i.sb
  %i.se = sext <8 x i32> %i.rq to <8 x i64>
  %i.sf = sext <8 x i32> %i.rr to <8 x i64>
  %i.sg = add nsw <8 x i64> %i.sc, %i.se
  %i.sh = add nsw <8 x i64> %i.sd, %i.sf
  %i.si = shl <8 x i64> %i.sg, splat (i64 2)      ; 2 uses
  %i.sj = shl <8 x i64> %i.sh, splat (i64 2)      ; 2 uses
  %wide.gep564 = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %i.si
  %wide.gep565 = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %i.sj
  %wide.gep566 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep564, i64 12
  %wide.gep567 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep565, i64 12
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep566, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %wide.masked.gather568 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep567, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %i.sk = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %broadcast.splat549
  %i.sl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather568, %broadcast.splat549
  %i.sm = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.sk ; 3 uses
  %i.sn = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.sl ; 3 uses
  %wide.gep569 = getelementptr inbounds nuw [4 x i8], ptr %2, <8 x i64> %i.si ; 2 uses
  %wide.gep570 = getelementptr inbounds nuw [4 x i8], ptr %2, <8 x i64> %i.sj ; 2 uses
  %wide.gep571 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep569, i64 4
  %wide.gep572 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep570, i64 4
  %wide.masked.gather573 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep571, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %wide.masked.gather574 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep572, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %i.so = fmul reassoc nsz arcp contract afn <8 x float> %i.sm, %wide.masked.gather573
  %i.sp = fmul reassoc nsz arcp contract afn <8 x float> %i.sn, %wide.masked.gather574
  %i.sq = fadd reassoc nsz arcp contract afn <8 x float> %i.so, %vec.phi556 ; 2 uses
  %i.sr = fadd reassoc nsz arcp contract afn <8 x float> %i.sp, %vec.phi557 ; 2 uses
  %wide.gep575 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep569, i64 8
  %wide.gep576 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep570, i64 8
  %wide.masked.gather577 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep575, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %wide.masked.gather578 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep576, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !78
  %i.ss = fmul reassoc nsz arcp contract afn <8 x float> %i.sm, %wide.masked.gather577
  %i.st = fmul reassoc nsz arcp contract afn <8 x float> %i.sn, %wide.masked.gather578
  %i.su = fadd reassoc nsz arcp contract afn <8 x float> %i.ss, %vec.phi554 ; 2 uses
  %i.sv = fadd reassoc nsz arcp contract afn <8 x float> %i.st, %vec.phi555 ; 2 uses
  %i.sw = fadd reassoc nsz arcp contract afn <8 x float> %i.sm, %vec.phi552 ; 2 uses
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %i.sn, %vec.phi553 ; 2 uses
  %index.next579 = add nuw i64 %index551, 16      ; 2 uses
  %i.sy = icmp eq i64 %index.next579, %n.vec533
  br i1 %i.sy, label %middle.block580, label %vector.body550, !llvm.loop !72

middle.block580:                                  ; preds = %vector.body550
  %bin.rdx581 = fadd reassoc nsz arcp contract afn <8 x float> %i.sx, %i.sw
  %i.sz = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx581) ; 3 uses
  %bin.rdx582 = fadd reassoc nsz arcp contract afn <8 x float> %i.sv, %i.su
  %i.ta = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx582) ; 3 uses
  %bin.rdx583 = fadd reassoc nsz arcp contract afn <8 x float> %i.sr, %i.sq
  %i.tb = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx583) ; 3 uses
  br i1 %cmp.n584, label %._crit_edge345, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block580
  br i1 %min.epilog.iters.check592, label %.lr.ph344.preheader, label %vec.epilog.ph593, !prof !84

vec.epilog.ph593:                                 ; preds = %vector.main.loop.iter.check530, %vec.epilog.iter.check591
  %vec.epilog.resume.val585 = phi i64 [ %n.vec533, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check530 ]
  %bc.merge.rdx586 = phi float [ %i.sz, %vec.epilog.iter.check591 ], [ 0.000000e+00, %vector.main.loop.iter.check530 ]
  %bc.merge.rdx587 = phi float [ %i.ta, %vec.epilog.iter.check591 ], [ 0.000000e+00, %vector.main.loop.iter.check530 ]
  %bc.merge.rdx588 = phi float [ %i.tb, %vec.epilog.iter.check591 ], [ 0.000000e+00, %vector.main.loop.iter.check530 ]
  %i.tc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx586, i64 0
  %i.td = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx587, i64 0
  %i.te = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx588, i64 0
  %broadcast.splatinsert595 = insertelement <4 x i32> poison, i32 %i.re, i64 0
  %broadcast.splat596 = shufflevector <4 x i32> %broadcast.splatinsert595, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <4 x float> poison, float %.4, i64 0
  %broadcast.splat610 = shufflevector <4 x float> %broadcast.splatinsert609, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body611

vec.epilog.vector.body611:                        ; preds = %vec.epilog.vector.body611, %vec.epilog.ph593
  %index612 = phi i64 [ %vec.epilog.resume.val585, %vec.epilog.ph593 ], [ %index.next627, %vec.epilog.vector.body611 ] ; 2 uses
  %vec.phi613 = phi <4 x float> [ %i.tc, %vec.epilog.ph593 ], [ %i.ua, %vec.epilog.vector.body611 ]
  %vec.phi614 = phi <4 x float> [ %i.td, %vec.epilog.ph593 ], [ %i.tz, %vec.epilog.vector.body611 ]
  %vec.phi615 = phi <4 x float> [ %i.te, %vec.epilog.ph593 ], [ %i.tx, %vec.epilog.vector.body611 ]
  %i.tf = shl nuw nsw i64 %index612, 3
  %i.tg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.tf
  %wide.vec616 = load <8 x i32>, ptr %i.tg, align 4, !tbaa !77 ; 2 uses
  %strided.vec617 = shufflevector <8 x i32> %wide.vec616, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec618 = shufflevector <8 x i32> %wide.vec616, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.th = add nsw <4 x i32> %strided.vec617, %broadcast.splat596 ; 2 uses
  %i.ti = icmp slt <4 x i32> %i.th, %broadcast.splat598
  %i.tj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.th, <4 x i32> zeroinitializer)
  %i.tk = select <4 x i1> %i.ti, <4 x i32> %i.tj, <4 x i32> %broadcast.splat600
  %i.tl = add nsw <4 x i32> %strided.vec618, %broadcast.splat602 ; 2 uses
  %i.tm = icmp slt <4 x i32> %i.tl, %broadcast.splat604
  %i.tn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.tl, <4 x i32> zeroinitializer)
  %i.to = select <4 x i1> %i.tm, <4 x i32> %i.tn, <4 x i32> %broadcast.splat606
  %i.tp = zext nneg <4 x i32> %i.to to <4 x i64>
  %i.tq = mul nuw nsw <4 x i64> %broadcast.splat608, %i.tp
  %i.tr = sext <4 x i32> %i.tk to <4 x i64>
  %i.ts = add nsw <4 x i64> %i.tq, %i.tr
  %i.tt = shl <4 x i64> %i.ts, splat (i64 2)      ; 2 uses
  %wide.gep619 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %i.tt
  %wide.gep620 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep619, i64 12
  %wide.masked.gather621 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep620, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !78
  %i.tu = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather621, %broadcast.splat610
  %i.tv = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.tu ; 3 uses
  %wide.gep622 = getelementptr inbounds nuw [4 x i8], ptr %2, <4 x i64> %i.tt ; 2 uses
  %wide.gep623 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep622, i64 4
  %wide.masked.gather624 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep623, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !78
  %i.tw = fmul reassoc nsz arcp contract afn <4 x float> %i.tv, %wide.masked.gather624
  %i.tx = fadd reassoc nsz arcp contract afn <4 x float> %i.tw, %vec.phi615 ; 2 uses
  %wide.gep625 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep622, i64 8
  %wide.masked.gather626 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep625, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !78
  %i.ty = fmul reassoc nsz arcp contract afn <4 x float> %i.tv, %wide.masked.gather626
  %i.tz = fadd reassoc nsz arcp contract afn <4 x float> %i.ty, %vec.phi614 ; 2 uses
  %i.ua = fadd reassoc nsz arcp contract afn <4 x float> %i.tv, %vec.phi613 ; 2 uses
  %index.next627 = add nuw i64 %index612, 4       ; 2 uses
  %i.ub = icmp eq i64 %index.next627, %n.vec594
  br i1 %i.ub, label %vec.epilog.middle.block628, label %vec.epilog.vector.body611, !llvm.loop !73

vec.epilog.middle.block628:                       ; preds = %vec.epilog.vector.body611
  %i.uc = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ua) ; 2 uses
  %i.ud = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.tz) ; 2 uses
  %i.ue = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.tx) ; 2 uses
  br i1 %cmp.n629, label %._crit_edge345, label %.lr.ph344.preheader

.lr.ph344.preheader:                              ; preds = %iter.check589, %vec.epilog.iter.check591, %vec.epilog.middle.block628
  %indvars.iv386.ph = phi i64 [ 0, %iter.check589 ], [ %n.vec533, %vec.epilog.iter.check591 ], [ %n.vec594, %vec.epilog.middle.block628 ]
  %.0265341.ph = phi float [ 0.000000e+00, %iter.check589 ], [ %i.sz, %vec.epilog.iter.check591 ], [ %i.uc, %vec.epilog.middle.block628 ]
  %.0266340.ph = phi float [ 0.000000e+00, %iter.check589 ], [ %i.ta, %vec.epilog.iter.check591 ], [ %i.ud, %vec.epilog.middle.block628 ]
  %.0267339.ph = phi float [ 0.000000e+00, %iter.check589 ], [ %i.tb, %vec.epilog.iter.check591 ], [ %i.ue, %vec.epilog.middle.block628 ]
  %i.uf = insertelement <2 x i32> %i.kj, i32 %i.re, i64 0
  br label %.lr.ph344

._crit_edge345:                                   ; preds = %.lr.ph344, %middle.block580, %vec.epilog.middle.block628, %bb.w
  %.0267.lcssa = phi float [ 0.000000e+00, %bb.w ], [ %i.ue, %vec.epilog.middle.block628 ], [ %i.tb, %middle.block580 ], [ %11, %.lr.ph344 ]
  %.0266.lcssa = phi float [ 0.000000e+00, %bb.w ], [ %i.ud, %vec.epilog.middle.block628 ], [ %i.ta, %middle.block580 ], [ %15, %.lr.ph344 ]
  %.0265.lcssa = phi float [ 0.000000e+00, %bb.w ], [ %i.uc, %vec.epilog.middle.block628 ], [ %i.sz, %middle.block580 ], [ %i.vd, %.lr.ph344 ] ; 2 uses
  %6 = fdiv reassoc nsz arcp contract afn float %.0267.lcssa, %.0265.lcssa
  %7 = fdiv reassoc nsz arcp contract afn float %.0266.lcssa, %.0265.lcssa
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kl
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !78
  store float %i.uh, ptr %i.pb, align 4, !tbaa !78
  %i.ui = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  store float %6, ptr %i.ui, align 4, !tbaa !78
  %8 = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store float %7, ptr %8, align 4, !tbaa !78
  %.pre403 = add nuw nsw i64 %indvars.iv391, 1
  br label %.loopexit

.lr.ph344:                                        ; preds = %.lr.ph344.preheader, %.lr.ph344
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph344 ], [ %indvars.iv386.ph, %.lr.ph344.preheader ] ; 2 uses
  %.0265341 = phi float [ %i.vd, %.lr.ph344 ], [ %.0265341.ph, %.lr.ph344.preheader ]
  %.0266340 = phi float [ %15, %.lr.ph344 ], [ %.0266340.ph, %.lr.ph344.preheader ]
  %.0267339 = phi float [ %11, %.lr.ph344 ], [ %.0267339.ph, %.lr.ph344.preheader ]
  %.idx420 = shl nuw nsw i64 %indvars.iv386, 3
  %i.uj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx420
  %i.uk = load <2 x i32>, ptr %i.uj, align 4, !tbaa !77
  %i.ul = add nsw <2 x i32> %i.uk, %i.uf          ; 2 uses
  %i.um = icmp slt <2 x i32> %i.ul, %i.af
  %i.un = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ul, <2 x i32> zeroinitializer)
  %i.uo = select <2 x i1> %i.um, <2 x i32> %i.un, <2 x i32> %i.jp ; 2 uses
  %i.up = extractelement <2 x i32> %i.uo, i64 1
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = mul nuw nsw i64 %i.uq, %i.em
  %i.us = extractelement <2 x i32> %i.uo, i64 0
  %i.ut = sext i32 %i.us to i64
  %i.uu = add nsw i64 %i.ur, %i.ut
  %i.uv = shl i64 %i.uu, 2                        ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 12
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !78
  %i.uz = fadd reassoc nsz arcp contract afn float %i.uy, %.4
  %i.va = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.uz ; 3 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uv ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %9 = load float, ptr %i.vc, align 4, !tbaa !78
  %10 = fmul reassoc nsz arcp contract afn float %i.va, %9
  %11 = fadd reassoc nsz arcp contract afn float %10, %.0267339 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %13 = load float, ptr %12, align 4, !tbaa !78
  %14 = fmul reassoc nsz arcp contract afn float %i.va, %13
  %15 = fadd reassoc nsz arcp contract afn float %14, %.0266340 ; 2 uses
  %i.vd = fadd reassoc nsz arcp contract afn float %i.va, %.0265341 ; 2 uses
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge345, label %.lr.ph344, !llvm.loop !74

.loopexit:                                        ; preds = %.preheader.preheader, %._crit_edge345
  %indvars.iv.next392.pre-phi = phi i64 [ %i.pr, %.preheader.preheader ], [ %.pre403, %._crit_edge345 ] ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392.pre-phi, %wide.trip.count394
  br i1 %exitcond395.not, label %..loopexit314_crit_edge, label %bb.n

.sink.split:                                      ; preds = %bb.j, %bb.d
  %.str.9.sink = phi ptr [ @.str.8, %bb.d ], [ @.str.9, %bb.j ]
  %.0278.ph = phi ptr [ null, %bb.d ], [ %i.bd, %bb.j ]
  %.0275.ph = phi ptr [ null, %bb.d ], [ %i.ba, %bb.j ]
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull %.str.9.sink) #14
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %.0278 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.0278.ph, %.sink.split ]
  %.0275 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.0275.ph, %.sink.split ]
  %i.ve = load i32, ptr %i.z, align 4, !tbaa !30
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !31
  %i.vi = sext i32 %i.vh to i64
  %i.vj = shl nsw i64 %i.vf, 2
  %i.vk = mul i64 %i.vj, %i.vi
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.vk) #14
  br label %.loopexit315

.loopexit315:                                     ; preds = %..loopexit314_crit_edge, %bb.m, %.lr.ph362, %bb.x
  %.1279 = phi ptr [ %.0278, %bb.x ], [ %i.bd, %.lr.ph362 ], [ %i.bd, %bb.m ], [ %i.bd, %..loopexit314_crit_edge ]
  %.1 = phi ptr [ %.0275, %bb.x ], [ %i.ba, %.lr.ph362 ], [ %i.ba, %bb.m ], [ %i.ba, %..loopexit314_crit_edge ]
  call void @free(ptr noundef %.1279) #14
  call void @free(ptr noundef %.1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %.loopexit315
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 24) #14 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !48
  %i.c = tail call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.10) #14 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !50
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #14
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.c, ptr noundef %i.d) #14
  %i.e = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.12) #14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !51
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #14
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.e, ptr noundef %i.g) #14
  %i.h = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.14) #14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !52
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #14
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.h, ptr noundef %i.j) #14
  ret void
}

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !48  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.e, i32 noundef %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.j = load float, ptr %i.d, align 4, !tbaa !34
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.j) #14
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !36
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.l, float noundef %i.n) #14
  ret void
}

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !89
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !90
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !90
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !90
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !90
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !90
  store ptr @introspection_init.f2, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 248), align 8, !tbaa !90
  store ptr @introspection_init.f3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 336), align 16, !tbaa !90
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.12) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.14) #16
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.10) #16
  %.not9 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %.not9, ptr %i.e, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
end_hunk_0
