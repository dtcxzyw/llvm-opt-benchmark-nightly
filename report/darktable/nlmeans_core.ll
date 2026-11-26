Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
  %wide.gep834 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep825, i64 4
  %wide.masked.gather835 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep833, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather836 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep834, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.ob = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather831, %wide.masked.gather835 ; 2 uses
  %i.oc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather832, %wide.masked.gather836 ; 2 uses
  %i.od = fmul reassoc nsz arcp contract afn <8 x float> %i.ob, %i.ob
  %i.oe = fmul reassoc nsz arcp contract afn <8 x float> %i.oc, %i.oc
  %i.of = fmul reassoc nsz arcp contract afn <8 x float> %i.od, %broadcast.splat812
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.oe, %broadcast.splat812
  %wide.gep837 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep838 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep823, i64 8
  %wide.masked.gather839 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep837, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather840 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep838, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep841 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep824, i64 8
  %wide.gep842 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep825, i64 8
  %wide.masked.gather843 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep841, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather844 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep842, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oh = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather839, %wide.masked.gather843 ; 2 uses
  %i.oi = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather840, %wide.masked.gather844 ; 2 uses
  %i.oj = fmul reassoc nsz arcp contract afn <8 x float> %i.oh, %i.oh
  %i.ok = fmul reassoc nsz arcp contract afn <8 x float> %i.oi, %i.oi
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %i.oj, %broadcast.splat814
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %broadcast.splat814
  %i.on = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi821, %i.nz
  %i.oo = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi822, %i.oa
  %i.op = fadd reassoc nsz arcp contract afn <8 x float> %i.of, %i.on
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %i.og, %i.oo
  %i.or = fadd reassoc nsz arcp contract afn <8 x float> %i.op, %i.ol ; 2 uses
  %i.os = fadd reassoc nsz arcp contract afn <8 x float> %i.oq, %i.om ; 2 uses
  %index.next845 = add nuw i64 %index820, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.ot = icmp eq i64 %index.next845, %n.vec808
  br i1 %i.ot, label %middle.block846, label %vector.body819, !llvm.loop !13

middle.block846:                                  ; preds = %vector.body819
  %bin.rdx847 = fadd reassoc nsz arcp contract afn <8 x float> %i.os, %i.or
  %i.ou = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx847) ; 3 uses
  br i1 %cmp.n848, label %._crit_edge.i447, label %vec.epilog.iter.check850

vec.epilog.iter.check850:                         ; preds = %middle.block846
  %slprdx.init891 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ou, i64 0
  br i1 %min.epilog.iters.check852, label %vec.epilog.scalar.ph851.preheader, label %vec.epilog.ph853, !prof !59

vec.epilog.ph853:                                 ; preds = %vector.main.loop.iter.check805, %vec.epilog.iter.check850
  %vec.epilog.resume.val854 = phi i64 [ %n.vec808, %vec.epilog.iter.check850 ], [ 0, %vector.main.loop.iter.check805 ]
  %bc.resume.val855 = phi i64 [ %i.np, %vec.epilog.iter.check850 ], [ %i.nh, %vector.main.loop.iter.check805 ]
  %bc.merge.rdx856 = phi float [ %i.ou, %vec.epilog.iter.check850 ], [ 0.000000e+00, %vector.main.loop.iter.check805 ]
  %i.ov = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx856, i64 0
  %broadcast.splat859 = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat861 = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert862 = insertelement <4 x float> poison, float %i.ns, i64 0
  %broadcast.splat863 = shufflevector <4 x float> %broadcast.splatinsert862, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert866 = insertelement <4 x i64> poison, i64 %bc.resume.val855, i64 0
  %broadcast.splat867 = shufflevector <4 x i64> %broadcast.splatinsert866, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction868 = add nsw <4 x i64> %broadcast.splat867, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body869

vec.epilog.vector.body869:                        ; preds = %vec.epilog.vector.body869, %vec.epilog.ph853
  %index870 = phi i64 [ %vec.epilog.resume.val854, %vec.epilog.ph853 ], [ %index.next885, %vec.epilog.vector.body869 ]
  %vec.ind871 = phi <4 x i64> [ %induction868, %vec.epilog.ph853 ], [ %vec.ind.next886, %vec.epilog.vector.body869 ] ; 2 uses
  %vec.phi872 = phi <4 x float> [ %i.ov, %vec.epilog.ph853 ], [ %i.pi, %vec.epilog.vector.body869 ]
  %i.ow = mul nsw <4 x i64> %vec.ind871, %broadcast.splat865
  %wide.gep873 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.ow ; 4 uses
  %wide.gep874 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep873, i64 %i.ng ; 3 uses
  %wide.masked.gather875 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep873, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather876 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep874, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.ox = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather875, %wide.masked.gather876 ; 2 uses
  %i.oy = fmul reassoc nsz arcp contract afn <4 x float> %i.ox, %i.ox
  %i.oz = fmul reassoc nsz arcp contract afn <4 x float> %i.oy, %broadcast.splat859
  %wide.gep877 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep873, i64 4
  %wide.masked.gather878 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep877, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep879 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep874, i64 4
  %wide.masked.gather880 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep879, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pa = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather878, %wide.masked.gather880 ; 2 uses
  %i.pb = fmul reassoc nsz arcp contract afn <4 x float> %i.pa, %i.pa
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %broadcast.splat861
  %wide.gep881 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep873, i64 8
  %wide.masked.gather882 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep881, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep883 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep874, i64 8
  %wide.masked.gather884 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep883, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pd = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather882, %wide.masked.gather884 ; 2 uses
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pd, %i.pd
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %broadcast.splat863
  %i.pg = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi872, %i.oz
  %i.ph = fadd reassoc nsz arcp contract afn <4 x float> %i.pc, %i.pg
  %i.pi = fadd reassoc nsz arcp contract afn <4 x float> %i.ph, %i.pf ; 2 uses
  %index.next885 = add nuw i64 %index870, 4       ; 2 uses
  %vec.ind.next886 = add nsw <4 x i64> %vec.ind871, splat (i64 4)
  %i.pj = icmp eq i64 %index.next885, %n.vec857
  br i1 %i.pj, label %vec.epilog.middle.block887, label %vec.epilog.vector.body869, !llvm.loop !14

vec.epilog.middle.block887:                       ; preds = %vec.epilog.vector.body869
  %i.pk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pi) ; 2 uses
  %slprdx.init = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pk, i64 0
  br i1 %cmp.n888, label %._crit_edge.i447, label %vec.epilog.scalar.ph851.preheader

vec.epilog.scalar.ph851.preheader:                ; preds = %iter.check849, %vec.epilog.iter.check850, %vec.epilog.middle.block887
  %indvars.iv.i.ph = phi i64 [ %i.nh, %iter.check849 ], [ %i.np, %vec.epilog.iter.check850 ], [ %i.nq, %vec.epilog.middle.block887 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %iter.check849 ], [ %slprdx.init891, %vec.epilog.iter.check850 ], [ %slprdx.init, %vec.epilog.middle.block887 ]
  %i.pl = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ns, i64 2
  %i.pm = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> %i.pl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %vec.epilog.scalar.ph851

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.po = tail call i32 @llvm.smax.i32(i32 %i.mb, i32 %i.mh) ; 3 uses
  %i.pp = icmp slt i32 %i.po, %i.io
  br i1 %i.pp, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.po to i64
  %i.pq = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.hr, i64 %i.pq
  %i.pr = xor i32 %i.po, -1
  %i.ps = add i32 %i.io, %i.pr
  %i.pt = zext i32 %i.ps to i64
  %i.pu = shl nuw nsw i64 %i.pt, 2
  %i.pv = add nuw nsw i64 %i.pu, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.pv, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph851, %vec.epilog.middle.block887, %middle.block846
  %slprdx.exit = phi <4 x float> [ poison, %vec.epilog.middle.block887 ], [ poison, %middle.block846 ], [ %slprdx.acc892, %vec.epilog.scalar.ph851 ]
  %slprdx.fromloop = phi i1 [ false, %vec.epilog.middle.block887 ], [ false, %middle.block846 ], [ true, %vec.epilog.scalar.ph851 ]
  %.lcssa = phi float [ %i.pk, %vec.epilog.middle.block887 ], [ %i.ou, %middle.block846 ], [ poison, %vec.epilog.scalar.ph851 ]
  %i.pw = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %slprdx.fromloop, float %i.pw, float %.lcssa
  %i.px = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv156.i
  store float %slprdx.sel, ptr %i.px, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.py = icmp slt i64 %indvars.iv.next157.i, %i.nk
  br i1 %i.py, label %iter.check849, label %._crit_edge148.i

vec.epilog.scalar.ph851:                          ; preds = %vec.epilog.scalar.ph851.preheader, %vec.epilog.scalar.ph851
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph851 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph851.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x float> [ %slprdx.acc892, %vec.epilog.scalar.ph851 ], [ %slprdx.acc.ph, %vec.epilog.scalar.ph851.preheader ]
  %i.pz = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.pz ; 3 uses
  %i.qa = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.ng ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !56
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !56
  %i.qf = load <2 x float>, ptr %gep.i, align 4, !tbaa !56
  %i.qg = load <2 x float>, ptr %i.qa, align 4, !tbaa !56
  %i.qh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qc, i64 2
  %i.qi = shufflevector <2 x float> %i.qf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> %i.qh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qe, i64 2
  %i.ql = shufflevector <2 x float> %i.qg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> %i.qk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qn = fsub reassoc nsz arcp contract afn <4 x float> %i.qj, %i.qm ; 2 uses
  %i.qo = insertelement <4 x float> %i.qn, float 1.000000e+00, i64 3
  %i.qp = fmul reassoc nsz arcp contract afn <4 x float> %i.qn, %i.qo
  %i.qq = fmul reassoc nsz arcp contract afn <4 x float> %i.qp, %i.pn
  %slprdx.acc892 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %i.qq ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.ni, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph851, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qr = icmp slt i32 %i.lj, %spec.select450
  br i1 %i.qr, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qs = sub nsw i32 %i.lx, %i.cj
  %i.qt = add i32 %i.lx, %i.cj
  %i.qu = tail call i32 @llvm.smin.i32(i32 %i.qt, i32 %.437) ; 2 uses
  %i.qv = icmp slt i32 %i.qs, %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !51
  %i.qy = icmp slt i32 %i.lx, %.437               ; 2 uses
  %i.qz = sext i32 %i.qx to i64                   ; 8 uses
  %i.ra = tail call i32 @llvm.smin.i32(i32 %i.lp, i32 %spec.select452)
  %i.rb = sub i32 %i.lx, %i.cj
  %i.rc = sext i32 %i.rb to i64                   ; 6 uses
  %i.rd = sext i32 %i.qu to i64                   ; 2 uses
  %i.re = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.rf = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.lz)
  %i.rg = sub i32 0, %smin548
  %i.rh = sext i32 %i.rg to i64                   ; 4 uses
  %i.ri = add i64 %indvars.iv545, %i.rh           ; 7 uses
  %i.rj = sext i32 %i.mh to i64                   ; 5 uses
  %i.rk = sext i32 %i.li to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.rk) ; 3 uses
  %i.rl = sext i32 %spec.select450 to i64         ; 3 uses
  %i.rm = sext i32 %i.lp to i64
  %i.rn = sext i32 %spec.select452 to i64
  %i.ro = sext i32 %i.ra to i64
  %invariant.op = add nsw i64 %i.rl, -1
  %i.rp = add nuw i64 %smax564, 1
  %smax732 = tail call i64 @llvm.smax.i64(i64 %i.rl, i64 %i.rp)
  %i.rq = sub i64 %smax732, %i.fs
  %reass.sub = shl i64 %i.rq, 2
  %i.rr = add i64 %reass.sub, -4
  %i.rs = mul i64 %i.rr, %i.s                     ; 2 uses
  %i.rt = add i64 %i.hk, %i.rh
  %smax733 = tail call i64 @llvm.smax.i64(i64 %i.rt, i64 %i.rj) ; 2 uses
  %i.ru = shl nsw i64 %smax733, 4                 ; 2 uses
  %i.rv = getelementptr i8, ptr %scevgep731, i64 %i.rs
  %scevgep734 = getelementptr i8, ptr %i.rv, i64 %i.ru
  %i.rw = sub i64 %smax564, %i.fs
  %i.rx = mul i64 %i.gf, %i.rw
  %i.ry = shl nsw i64 %i.ri, 4
  %i.rz = add i64 %i.rx, %i.ry                    ; 2 uses
  %scevgep735 = getelementptr i8, ptr %0, i64 %i.rz
  %5 = shl nsw i64 %i.qz, 2                       ; 2 uses
  %i.sa = getelementptr i8, ptr %scevgep736, i64 %i.rs
  %i.sb = getelementptr i8, ptr %i.sa, i64 %i.ru
  %scevgep737.a = getelementptr i8, ptr %i.sb, i64 %5
  %i.sc = getelementptr i8, ptr %0, i64 %i.rz
  %scevgep738 = getelementptr i8, ptr %i.sc, i64 %5
  %i.sd = shl nsw i64 %smax733, 2
  %scevgep739 = getelementptr i8, ptr %i.hr, i64 %i.sd ; 3 uses
  %i.se = shl nsw i64 %i.ri, 2
  %scevgep740 = getelementptr i8, ptr %i.hr, i64 %i.se ; 3 uses
  %i.sf = sub nsw i64 %i.rd, %i.rc                ; 7 uses
  %min.iters.check777 = icmp ult i64 %i.sf, 8
  %min.iters.check778 = icmp ult i64 %i.sf, 32
  %i.sg = and i64 %i.sf, 24
  %n.vec780 = and i64 %i.sf, -32                  ; 4 uses
  %i.sh = add nsw i64 %n.vec780, %i.rc
  %invariant.gep922 = getelementptr [4 x i8], ptr %i.hr, i64 %i.rc
  %cmp.n794 = icmp eq i64 %i.sf, %n.vec780
  %min.epilog.iters.check = icmp eq i64 %i.sg, 0
  %n.vec795 = and i64 %i.sf, -8                   ; 3 uses
  %i.si = add nsw i64 %n.vec795, %i.rc
  %invariant.gep924 = getelementptr [4 x i8], ptr %i.hr, i64 %i.rc
  %cmp.n800 = icmp eq i64 %i.sf, %n.vec795
  %i.sj = add i64 %i.iy, %i.rh
  %i.sk = tail call i64 @llvm.smax.i64(i64 %i.sj, i64 %i.rj)
  %i.sl = add i64 %indvars.iv545, %i.rh
  %i.sm = sub i64 %i.sk, %i.sl                    ; 3 uses
  %min.iters.check742 = icmp ult i64 %i.sm, 9
  %bound0744 = icmp ult ptr %scevgep740, %scevgep737.a
  %bound1745 = icmp ult ptr %scevgep738, %scevgep739
  %found.conflict746 = and i1 %bound0744, %bound1745
  %i.sn = or i1 %found.conflict746, %stride.check747
  %bound0748 = icmp ult ptr %scevgep740, %scevgep734
  %bound1749 = icmp ult ptr %scevgep735, %scevgep739
  %found.conflict750 = and i1 %bound0748, %bound1749
  %conflict.rdx = or i1 %i.sn, %found.conflict750
  %bound0751 = icmp ult ptr %scevgep740, %scevgep730
  %bound1752 = icmp ult ptr %i.im, %scevgep739
  %found.conflict753 = and i1 %bound0751, %bound1752
  %conflict.rdx754 = or i1 %conflict.rdx, %found.conflict753
  %i.so = and i64 %i.sm, 7                        ; 2 uses
  %i.sp = icmp eq i64 %i.so, 0
  %i.sq = select i1 %i.sp, i64 8, i64 %i.so
  %n.vec756 = sub i64 %i.sm, %i.sq                ; 2 uses
  %i.sr = add i64 %i.ri, %n.vec756
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qv, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check777, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check778, label %vec.epilog.ph, label %vector.body781

vector.body781:                                   ; preds = %vector.main.loop.iter.check, %vector.body781
  %index782 = phi i64 [ %index.next790, %vector.body781 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.sv, %vector.body781 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi783 = phi <8 x float> [ %i.sw, %vector.body781 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi784 = phi <8 x float> [ %i.sx, %vector.body781 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi785 = phi <8 x float> [ %i.sy, %vector.body781 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep923 = getelementptr [4 x i8], ptr %invariant.gep922, i64 %index782 ; 4 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %gep923, i64 32
  %i.st = getelementptr inbounds nuw i8, ptr %gep923, i64 64
  %i.su = getelementptr inbounds nuw i8, ptr %gep923, i64 96
  %wide.load786 = load <8 x float>, ptr %gep923, align 4, !tbaa !56
  %wide.load787 = load <8 x float>, ptr %i.ss, align 4, !tbaa !56
  %wide.load788 = load <8 x float>, ptr %i.st, align 4, !tbaa !56
  %wide.load789 = load <8 x float>, ptr %i.su, align 4, !tbaa !56
  %i.sv = fadd reassoc nsz arcp contract afn <8 x float> %wide.load786, %vec.phi ; 2 uses
  %i.sw = fadd reassoc nsz arcp contract afn <8 x float> %wide.load787, %vec.phi783 ; 2 uses
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load788, %vec.phi784 ; 2 uses
  %i.sy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load789, %vec.phi785 ; 2 uses
  %index.next790 = add nuw i64 %index782, 32      ; 2 uses
  %i.sz = icmp eq i64 %index.next790, %n.vec780
  br i1 %i.sz, label %middle.block791, label %vector.body781, !llvm.loop !16

middle.block791:                                  ; preds = %vector.body781
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.sw, %i.sv
  %bin.rdx792 = fadd reassoc nsz arcp contract afn <8 x float> %i.sx, %bin.rdx
  %bin.rdx793 = fadd reassoc nsz arcp contract afn <8 x float> %i.sy, %bin.rdx792
  %i.ta = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx793) ; 3 uses
  br i1 %cmp.n794, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block791
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec780, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.ta, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.tb = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index796 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next799, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi797 = phi <8 x float> [ %i.tb, %vec.epilog.ph ], [ %i.tc, %vec.epilog.vector.body ]
  %gep925 = getelementptr [4 x i8], ptr %invariant.gep924, i64 %index796
  %wide.load798 = load <8 x float>, ptr %gep925, align 4, !tbaa !56
  %i.tc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load798, %vec.phi797 ; 2 uses
  %index.next799 = add nuw i64 %index796, 8       ; 2 uses
  %i.td = icmp eq i64 %index.next799, %n.vec795
  br i1 %i.td, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.te = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.tc) ; 2 uses
  br i1 %cmp.n800, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.rc, %iter.check ], [ %i.sh, %vec.epilog.iter.check ], [ %i.si, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.ta, %vec.epilog.iter.check ], [ %i.te, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block791, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.te, %vec.epilog.middle.block ], [ %i.ta, %middle.block791 ], [ %i.tp, %.lr.ph479 ] ; 2 uses
  %i.tf = mul nsw i64 %indvars.iv565, %i.s
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tf ; 2 uses
  %i.th = mul i64 %i.ix, %indvars.iv565
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.th ; 2 uses
  %i.tj = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.tk = load float, ptr %i.i, align 8, !tbaa !39
  %i.tl = fcmp reassoc nsz arcp contract afn olt float %i.tk, 0.000000e+00
  br i1 %i.tl, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.qy, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.qy, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tj, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.tg, i64 %i.qz
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.tp, %.lr.ph479 ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %indvars.iv532
  %i.to = load float, ptr %i.tn, align 4, !tbaa !56
  %i.tp = fadd reassoc nsz arcp contract afn float %i.to, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.tq = icmp slt i64 %indvars.iv.next533, %i.rd
  br i1 %i.tq, label %.lr.ph479, label %._crit_edge, !llvm.loop !18

bb.v:                                             ; preds = %.lr.ph489, %bb.v
  %indvars.iv542 = phi i64 [ %i.re, %.lr.ph489 ], [ %indvars.iv.next543, %bb.v ] ; 4 uses
  %.1487 = phi float [ %.0404.lcssa, %.lr.ph489 ], [ %i.ty, %bb.v ]
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %indvars.iv542
  %i.tr = load float, ptr %gep644, align 4, !tbaa !56
  %i.ts = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.tt = add i32 %i.ts, %i.fw
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.tu
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !56
  %i.tx = fsub reassoc nsz arcp contract afn float %i.tr, %i.tw
  %i.ty = fadd reassoc nsz arcp contract afn float %i.tx, %.1487 ; 2 uses
  %i.tz = fmul reassoc nsz arcp contract afn float %i.tm, %i.ty
  %i.ua = fptosi float %i.tz to i32               ; 2 uses
  %i.ub = add nsw i32 %i.ua, 1065353216
  %i.uc = icmp sgt i32 %i.ua, -1056964609
  %i.ud = bitcast i32 %i.ub to float
  %i.ue = shl nuw nsw i64 %indvars.iv542, 2       ; 2 uses
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %i.ue ; 3 uses
  %i.uf = getelementptr i8, ptr %gep491, i64 8
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !56
  %invariant.gep484 = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.ue ; 2 uses
  %i.uh = select i1 %i.uc, float %i.ud, float 0.000000e+00
  %i.ui = load <2 x float>, ptr %gep491, align 4, !tbaa !56
  %i.uj = insertelement <4 x float> poison, float %i.uh, i64 0
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ul = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ug, i64 2
  %i.um = shufflevector <2 x float> %i.ui, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.un = shufflevector <4 x float> %i.um, <4 x float> %i.ul, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uo = fmul <4 x float> %i.uk, %i.un
  %i.up = load <4 x float>, ptr %invariant.gep484, align 4, !tbaa !56
  %i.uq = fadd reassoc nsz arcp contract afn <4 x float> %i.up, %i.uo
  store <4 x float> %i.uq, ptr %invariant.gep484, align 4, !tbaa !56
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %gep491, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ur, i32 0, i32 3, i32 1)
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.us = icmp slt i64 %indvars.iv.next543, %i.rf
  br i1 %i.us, label %bb.v, label %.loopexit467

.lr.ph483:                                        ; preds = %.preheader468, %.lr.ph483
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.lr.ph483 ], [ %i.re, %.preheader468 ] ; 4 uses
  %.2481 = phi float [ %i.va, %.lr.ph483 ], [ %.0404.lcssa, %.preheader468 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv537
  %i.ut = load float, ptr %gep, align 4, !tbaa !56
  %i.uu = trunc nuw nsw i64 %indvars.iv537 to i32
  %i.uv = add i32 %i.uu, %i.fw
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.uw
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !56
  %i.uz = fsub reassoc nsz arcp contract afn float %i.ut, %i.uy
  %i.va = fadd reassoc nsz arcp contract afn float %i.uz, %.2481 ; 2 uses
  %i.vb = shl nuw nsw i64 %indvars.iv537, 2       ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.vb ; 4 uses
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.vc, i64 %i.qz ; 4 uses
  %i.ve = load float, ptr %i.vc, align 4, !tbaa !56
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !56
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !56
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !56 ; 2 uses
  %i.vm = fsub reassoc nsz arcp contract afn float %i.vj, %i.vl ; 2 uses
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, %i.vm
  %i.vo = load float, ptr %i.i, align 8, !tbaa !39
  %i.vp = fadd reassoc nsz arcp contract afn float %i.vo, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.vb ; 2 uses
  %i.vq = load <2 x float>, ptr %i.vd, align 4, !tbaa !56 ; 2 uses
  %i.vr = load float, ptr %i.vh, align 4, !tbaa !56
  %i.vs = extractelement <2 x float> %i.vq, i64 0
  %i.vt = fsub reassoc nsz arcp contract afn float %i.ve, %i.vs ; 2 uses
  %i.vu = fmul reassoc nsz arcp contract afn float %i.vt, %i.vt
  %i.vv = fsub reassoc nsz arcp contract afn float %i.vg, %i.vr ; 2 uses
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, %i.vv
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vw, %i.vu
  %i.vy = fadd reassoc nsz arcp contract afn float %i.vx, %i.vn
  %i.vz = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.vy
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vz, %i.va
  %i.wb = fmul reassoc nsz arcp contract afn float %i.wa, %i.tj
  %i.wc = fdiv reassoc nsz arcp contract afn float %i.wb, %i.vp
  %i.wd = fadd reassoc nsz arcp contract afn float %i.wc, -2.000000e+00
  %i.we = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wd, float 0.000000e+00)
  %i.wf = fmul reassoc nnan nsz arcp contract afn float %i.we, f0xCB000000
end_hunk_0
begin_hunk_1_@nlmeans_denoise:bb.a
  br i1 %i.adw, label %.preheader463.preheader, label %vector.body687, !llvm.loop !31

.preheader463.preheader:                          ; preds = %vector.body687, %vector.memcheck, %.preheader463.lr.ph
  %indvars.iv572.ph = phi i64 [ %indvars.iv545, %vector.memcheck ], [ %indvars.iv545, %.preheader463.lr.ph ], [ %i.ks, %vector.body687 ]
  br label %.preheader463

.preheader463:                                    ; preds = %.preheader463.preheader, %.preheader463
  %indvars.iv572 = phi i64 [ %indvars.iv.next573, %.preheader463 ], [ %indvars.iv572.ph, %.preheader463.preheader ] ; 2 uses
  %i.adx = shl nuw nsw i64 %indvars.iv572, 2      ; 5 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.adx ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 12 ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.adx
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !56
  %i.aec = fmul reassoc nsz arcp contract afn float %i.e, %i.aeb
  %i.aed = load float, ptr %i.ady, align 4, !tbaa !56
  %i.aee = load float, ptr %i.adz, align 4, !tbaa !56 ; 2 uses
  %i.aef = fmul reassoc nsz arcp contract afn float %i.b, %i.aed
  %i.aeg = fdiv reassoc nsz arcp contract afn float %i.aef, %i.aee
  %i.aeh = fadd reassoc nsz arcp contract afn float %i.aeg, %i.aec
  store float %i.aeh, ptr %i.ady, align 4, !tbaa !56
  %i.aei = or disjoint i64 %i.adx, 1              ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.aei
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !56
  %i.ael = fmul reassoc nsz arcp contract afn float %i.f, %i.aek
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.aei ; 2 uses
  %i.aen = or disjoint i64 %i.adx, 2              ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.aen
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.aen
  %i.aeq = load float, ptr %i.adz, align 4, !tbaa !56 ; 2 uses
  %i.aer = load <2 x float>, ptr %i.aem, align 4, !tbaa !56
  %i.aes = fmul reassoc nsz arcp contract afn <2 x float> %i.gj, %i.aer ; 2 uses
  %i.aet = extractelement <2 x float> %i.aes, i64 0
  %i.aeu = fdiv reassoc nsz arcp contract afn float %i.aet, %i.aee
  %i.aev = fadd reassoc nsz arcp contract afn float %i.aeu, %i.ael
  store float %i.aev, ptr %i.aem, align 4, !tbaa !56
  %i.aew = load float, ptr %i.aeo, align 4, !tbaa !56
  %i.aex = fmul reassoc nsz arcp contract afn float %i.f, %i.aew
  %i.aey = extractelement <2 x float> %i.aes, i64 1
  %i.aez = fdiv reassoc nsz arcp contract afn float %i.aey, %i.aeq
  %i.afa = fadd reassoc nsz arcp contract afn float %i.aez, %i.aex
  store float %i.afa, ptr %i.aep, align 4, !tbaa !56
  %i.afb = or disjoint i64 %i.adx, 3              ; 2 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.afb
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !56
  %i.afe = fmul reassoc nsz arcp contract afn float %i.afd, 0.000000e+00
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.afb ; 2 uses
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !56
  %i.afh = fdiv reassoc nsz arcp contract afn float %i.afg, %i.aeq
  %i.afi = fadd reassoc nsz arcp contract afn float %i.afh, %i.afe
  store float %i.afi, ptr %i.aff, align 4, !tbaa !56
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %i.afj = icmp slt i64 %indvars.iv.next573, %i.kd
  br i1 %i.afj, label %.preheader463, label %._crit_edge508, !llvm.loop !32

._crit_edge508:                                   ; preds = %.preheader463
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %i.afk = icmp slt i64 %indvars.iv.next576, %i.ke
  br i1 %i.afk, label %.preheader463.lr.ph, label %.loopexit471

.loopexit471:                                     ; preds = %._crit_edge508, %._crit_edge515, %.preheader472, %.lr.ph510, %.preheader470, %.lr.ph517
  %i.afl = sext i32 %i.ij to i64
  %i.afm = icmp slt i64 %indvars.iv.next546, %i.afl
  %indvar.next = add i64 %indvar, 1
  br i1 %i.afm, label %bb.r, label %._crit_edge522
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !53}
!12 = distinct !{!12, !54}
!13 = distinct !{!13, !57, !58}
!14 = distinct !{!14, !57, !58}
!15 = distinct !{!15, !58, !57}
!16 = distinct !{!16, !57, !58}
!17 = distinct !{!17, !57, !58}
!18 = distinct !{!18, !58, !57}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !57, !58}
!25 = distinct !{!25, !57}
!26 = distinct !{!26, !57, !58}
!27 = distinct !{!27, !58, !57}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !57, !58}
!32 = distinct !{!32, !57}
!33 = !{!"float", !7, i64 0}
!34 = !{!"any pointer", !7, i64 0}
!35 = !{!"p1 float", !34, i64 0}
!36 = !{!"dt_nlmeans_param_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !35, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68}
!37 = !{!36, !33, i64 8}
!38 = !{!36, !33, i64 12}
!39 = !{!36, !33, i64 16}
!40 = !{!36, !8, i64 24}
!41 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !33, i64 16}
!42 = !{!41, !8, i64 8}
!43 = !{!36, !8, i64 28}
!44 = !{!36, !33, i64 4}
!45 = !{!36, !33, i64 0}
!46 = !{!36, !8, i64 32}
!47 = !{!"short", !7, i64 0}
!48 = !{!"patch_t", !47, i64 0, !47, i64 2, !8, i64 4}
!49 = !{!48, !47, i64 0}
!50 = !{!48, !47, i64 2}
!51 = !{!48, !8, i64 4}
!52 = !{!41, !8, i64 12}
!53 = !{!"llvm.loop.unswitch.partial.disable"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!36, !35, i64 40}
!56 = !{!33, !33, i64 0}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!"branch_weights", i32 4, i32 12}
!60 = !{!"branch_weights", i32 8, i32 24}
!61 = !{!36, !33, i64 20}
!62 = !{!20}
!63 = !{!21}
!64 = !{!22}
!65 = !{!23}
!66 = !{!22, !21, !20}
!67 = !{!29}
!68 = !{!30}
end_hunk_1
