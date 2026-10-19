Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a

middle.block818:                                  ; preds = %vector.body791
  %bin.rdx819 = fadd reassoc nsz arcp contract afn <8 x float> %i.ow, %i.ov
  %i.oy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx819) ; 3 uses
  br i1 %cmp.n820, label %._crit_edge.i447, label %vec.epilog.iter.check826

vec.epilog.iter.check826:                         ; preds = %middle.block818
  br i1 %min.epilog.iters.check827, label %vec.epilog.scalar.ph825.preheader, label %vec.epilog.ph828, !prof !59

vec.epilog.ph828:                                 ; preds = %vector.main.loop.iter.check777, %vec.epilog.iter.check826
  %vec.epilog.resume.val821 = phi i64 [ %n.vec780, %vec.epilog.iter.check826 ], [ 0, %vector.main.loop.iter.check777 ]
  %bc.resume.val822 = phi i64 [ %i.ns, %vec.epilog.iter.check826 ], [ %i.nk, %vector.main.loop.iter.check777 ]
  %bc.merge.rdx823 = phi float [ %i.oy, %vec.epilog.iter.check826 ], [ 0.000000e+00, %vector.main.loop.iter.check777 ]
  %i.oz = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx823, i64 0
  %broadcast.splatinsert830 = insertelement <4 x float> poison, float %i.nu, i64 0
  %broadcast.splat831 = shufflevector <4 x float> %broadcast.splatinsert830, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert832 = insertelement <4 x float> poison, float %i.nv, i64 0
  %broadcast.splat833 = shufflevector <4 x float> %broadcast.splatinsert832, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert834 = insertelement <4 x float> poison, float %i.nw, i64 0
  %broadcast.splat835 = shufflevector <4 x float> %broadcast.splatinsert834, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert838 = insertelement <4 x i64> poison, i64 %bc.resume.val822, i64 0
  %broadcast.splat839 = shufflevector <4 x i64> %broadcast.splatinsert838, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction840 = add nsw <4 x i64> %broadcast.splat839, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body841

vec.epilog.vector.body841:                        ; preds = %vec.epilog.vector.body841, %vec.epilog.ph828
  %index842 = phi i64 [ %vec.epilog.resume.val821, %vec.epilog.ph828 ], [ %index.next857, %vec.epilog.vector.body841 ]
  %vec.ind843 = phi <4 x i64> [ %induction840, %vec.epilog.ph828 ], [ %vec.ind.next858, %vec.epilog.vector.body841 ] ; 2 uses
  %vec.phi844 = phi <4 x float> [ %i.oz, %vec.epilog.ph828 ], [ %i.pm, %vec.epilog.vector.body841 ]
  %i.pa = mul nsw <4 x i64> %vec.ind843, %broadcast.splat837
  %wide.gep845.a = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pa ; 4 uses
  %wide.gep846 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep845.a, i64 %i.nj ; 3 uses
  %wide.masked.gather847.a = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep845.a, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather848 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep846, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pb = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather847.a, %wide.masked.gather848 ; 2 uses
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %i.pb
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %broadcast.splat831
  %wide.gep849 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep845.a, i64 4
  %wide.masked.gather850 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep851 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep846, i64 4
  %wide.masked.gather852 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep851, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pe = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather850, %wide.masked.gather852 ; 2 uses
  %i.pf = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %i.pe
  %i.pg = fmul reassoc nsz arcp contract afn <4 x float> %i.pf, %broadcast.splat833
  %wide.gep853 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep845.a, i64 8
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep846, i64 8
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.ph = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854, %wide.masked.gather856 ; 2 uses
  %i.pi = fmul reassoc nsz arcp contract afn <4 x float> %i.ph, %i.ph
  %i.pj = fmul reassoc nsz arcp contract afn <4 x float> %i.pi, %broadcast.splat835
  %i.pk = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi844, %i.pd
  %i.pl = fadd reassoc nsz arcp contract afn <4 x float> %i.pg, %i.pk
  %i.pm = fadd reassoc nsz arcp contract afn <4 x float> %i.pl, %i.pj ; 2 uses
  %index.next857 = add nuw i64 %index842, 4       ; 2 uses
  %vec.ind.next858 = add nsw <4 x i64> %vec.ind843, splat (i64 4)
  %i.pn = icmp eq i64 %index.next857, %n.vec829
  br i1 %i.pn, label %vec.epilog.middle.block859, label %vec.epilog.vector.body841, !llvm.loop !14

vec.epilog.middle.block859:                       ; preds = %vec.epilog.vector.body841
  %i.po = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pm) ; 2 uses
  br i1 %cmp.n860, label %._crit_edge.i447, label %vec.epilog.scalar.ph825.preheader

vec.epilog.scalar.ph825.preheader:                ; preds = %iter.check824, %vec.epilog.iter.check826, %vec.epilog.middle.block859
  %indvars.iv.i.ph = phi i64 [ %i.nk, %iter.check824 ], [ %i.ns, %vec.epilog.iter.check826 ], [ %i.nt, %vec.epilog.middle.block859 ]
  %.0121143.i.ph = phi float [ 0.000000e+00, %iter.check824 ], [ %i.oy, %vec.epilog.iter.check826 ], [ %i.po, %vec.epilog.middle.block859 ]
  br label %vec.epilog.scalar.ph825

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.pp = tail call i32 @llvm.smax.i32(i32 %i.me, i32 %i.mk) ; 3 uses
  %i.pq = icmp slt i32 %i.pp, %i.iv
  br i1 %i.pq, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.pp to i64
  %i.pr = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.hy, i64 %i.pr
  %i.ps = xor i32 %i.pp, -1
  %i.pt = add i32 %i.iv, %i.ps
  %i.pu = zext i32 %i.pt to i64
  %i.pv = shl nuw nsw i64 %i.pu, 2
  %i.pw = add nuw nsw i64 %i.pv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.pw, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph825, %vec.epilog.middle.block859, %middle.block818
  %.lcssa = phi float [ %i.po, %vec.epilog.middle.block859 ], [ %i.oy, %middle.block818 ], [ %i.qs, %vec.epilog.scalar.ph825 ]
  %i.px = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv156.i
  store float %.lcssa, ptr %i.px, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.py = icmp slt i64 %indvars.iv.next157.i, %i.nn
  br i1 %i.py, label %iter.check824, label %._crit_edge148.i

vec.epilog.scalar.ph825:                          ; preds = %vec.epilog.scalar.ph825.preheader, %vec.epilog.scalar.ph825
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph825 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph825.preheader ] ; 2 uses
  %.0121143.i = phi float [ %i.qs, %vec.epilog.scalar.ph825 ], [ %.0121143.i.ph, %vec.epilog.scalar.ph825.preheader ]
  %i.pz = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.pz ; 3 uses
  %i.qa = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.nj ; 2 uses
  %i.qb = load float, ptr %gep.i, align 4, !tbaa !56
  %i.qc = load float, ptr %i.qa, align 4, !tbaa !56
  %i.qd = fsub reassoc nsz arcp contract afn float %i.qb, %i.qc ; 2 uses
  %i.qe = fmul reassoc nsz arcp contract afn float %i.qd, %i.qd
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qe, %i.nu
  %i.qg = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  %i.qi = load <2 x float>, ptr %i.qg, align 4, !tbaa !56
  %i.qj = load <2 x float>, ptr %i.qh, align 4, !tbaa !56
  %i.qk = fsub reassoc nsz arcp contract afn <2 x float> %i.qi, %i.qj ; 2 uses
  %i.ql = fmul reassoc nsz arcp contract afn <2 x float> %i.qk, %i.qk ; 2 uses
  %i.qm = extractelement <2 x float> %i.ql, i64 0
  %i.qn = fmul reassoc nsz arcp contract afn float %i.qm, %i.nv
  %i.qo = extractelement <2 x float> %i.ql, i64 1
  %i.qp = fmul reassoc nsz arcp contract afn float %i.qo, %i.nw
  %i.qq = fadd reassoc nsz arcp contract afn float %.0121143.i, %i.qf
  %i.qr = fadd reassoc nsz arcp contract afn float %i.qn, %i.qq
  %i.qs = fadd reassoc nsz arcp contract afn float %i.qr, %i.qp ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.nl, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph825, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.qt = icmp slt i32 %i.lm, %spec.select450
  br i1 %i.qt, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.qu = sub nsw i32 %i.ma, %i.cj
  %i.qv = add i32 %i.ma, %i.cj
  %i.qw = tail call i32 @llvm.smin.i32(i32 %i.qv, i32 %.437) ; 2 uses
  %i.qx = icmp slt i32 %i.qu, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !51
  %i.ra = icmp slt i32 %i.ma, %.437               ; 2 uses
  %i.rb = sext i32 %i.qz to i64                   ; 8 uses
  %i.rc = tail call i32 @llvm.smin.i32(i32 %i.ls, i32 %spec.select452)
  %i.rd = sub i32 %i.ma, %i.cj
  %i.re = sext i32 %i.rd to i64                   ; 6 uses
  %i.rf = sext i32 %i.qw to i64                   ; 2 uses
  %i.rg = zext nneg i32 %i.ma to i64              ; 2 uses
  %i.rh = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.mc)
  %i.ri = sub i32 0, %smin548
  %i.rj = sext i32 %i.ri to i64                   ; 4 uses
  %i.rk = add i64 %indvars.iv545, %i.rj           ; 7 uses
  %i.rl = sext i32 %i.mk to i64                   ; 5 uses
  %i.rm = sext i32 %i.ll to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.rm) ; 3 uses
  %i.rn = sext i32 %spec.select450 to i64         ; 3 uses
  %i.ro = sext i32 %i.ls to i64
  %i.rp = sext i32 %spec.select452 to i64
  %i.rq = sext i32 %i.rc to i64
  %invariant.op = add nsw i64 %i.rn, -1
  %i.rr = shl nsw i64 %i.rk, 2
  %scevgep701 = getelementptr i8, ptr %i.hy, i64 %i.rr ; 3 uses
  %i.rs = add i64 %i.hn, %i.rj
  %smax702 = tail call i64 @llvm.smax.i64(i64 %i.rs, i64 %i.rl) ; 2 uses
  %i.rt = shl nsw i64 %smax702, 2
  %scevgep703 = getelementptr i8, ptr %i.hy, i64 %i.rt ; 3 uses
  %i.ru = sub i64 %smax564, %i.fs
  %i.rv = mul i64 %i.gg, %i.ru                    ; 2 uses
  %i.rw = shl nsw i64 %i.rk, 4                    ; 2 uses
  %i.rx = shl nsw i64 %i.rb, 2                    ; 2 uses
  %i.ry = getelementptr i8, ptr %0, i64 %i.rv
  %i.rz = getelementptr i8, ptr %i.ry, i64 %i.rw
  %scevgep704 = getelementptr i8, ptr %i.rz, i64 %i.rx
  %i.sa = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.rn, i64 %i.sa)
  %i.sb = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.sb, 2
  %i.sc = add i64 %reass.sub, -4
  %i.sd = mul i64 %i.sc, %i.s
  %i.se = shl nsw i64 %smax702, 4
  %i.sf = add i64 %i.sd, %i.se                    ; 2 uses
  %i.sg = getelementptr i8, ptr %scevgep705, i64 %i.sf
  %scevgep707 = getelementptr i8, ptr %i.sg, i64 %i.rx
  %i.sh = getelementptr i8, ptr %0, i64 %i.rv
  %scevgep708 = getelementptr i8, ptr %i.sh, i64 %i.rw
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.sf
  %i.si = sub nsw i64 %i.rf, %i.re                ; 7 uses
  %min.iters.check748.a = icmp ult i64 %i.si, 8
  %min.iters.check749 = icmp ult i64 %i.si, 32
  %i.sj = and i64 %i.si, 24
  %n.vec751 = and i64 %i.si, -32                  ; 4 uses
  %i.sk = add nsw i64 %n.vec751, %i.re
  %invariant.gep894 = getelementptr [4 x i8], ptr %i.hy, i64 %i.re
  %cmp.n765 = icmp eq i64 %i.si, %n.vec751
  %min.epilog.iters.check = icmp eq i64 %i.sj, 0
  %n.vec767 = and i64 %i.si, -8                   ; 3 uses
  %i.sl = add nsw i64 %n.vec767, %i.re
  %invariant.gep896 = getelementptr [4 x i8], ptr %i.hy, i64 %i.re
  %cmp.n772 = icmp eq i64 %i.si, %n.vec767
  %i.sm = add i64 %i.hm, %i.rj
  %i.sn = tail call i64 @llvm.smax.i64(i64 %i.sm, i64 %i.rl)
  %i.so = add i64 %indvars.iv545, %i.rj
  %i.sp = sub i64 %i.sn, %i.so                    ; 3 uses
  %min.iters.check725 = icmp ult i64 %i.sp, 9
  %bound0712 = icmp ult ptr %scevgep701, %scevgep707
  %bound1713 = icmp ult ptr %scevgep704, %scevgep703
  %found.conflict714 = and i1 %bound0712, %bound1713
  %bound0716 = icmp ult ptr %scevgep701, %scevgep710
  %bound1717.a = icmp ult ptr %scevgep708, %scevgep703
  %found.conflict718 = and i1 %bound0716, %bound1717.a
  %5 = or i1 %found.conflict718, %stride.check719
  %conflict.rdx = or i1 %found.conflict714, %5
  %bound0720 = icmp ult ptr %scevgep701, %scevgep711
  %bound1721 = icmp ult ptr %i.it, %scevgep703
  %found.conflict722 = and i1 %bound0720, %bound1721
  %conflict.rdx723 = or i1 %conflict.rdx, %found.conflict722
  %i.sq = and i64 %i.sp, 7                        ; 2 uses
  %i.sr = icmp eq i64 %i.sq, 0
  %i.ss = select i1 %i.sr, i64 8, i64 %i.sq
  %n.vec727 = sub i64 %i.sp, %i.ss                ; 2 uses
  %i.st = add i64 %i.rk, %n.vec727
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.qx, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check748.a, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check749, label %vec.epilog.ph, label %vector.body752

vector.body752:                                   ; preds = %vector.main.loop.iter.check, %vector.body752
  %index753 = phi i64 [ %index.next761, %vector.body752 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.sx, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi754.a = phi <8 x float> [ %i.sy, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi755.a = phi <8 x float> [ %i.sz, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi756 = phi <8 x float> [ %i.ta, %vector.body752 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep895 = getelementptr [4 x i8], ptr %invariant.gep894, i64 %index753 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %gep895, i64 32
  %i.sv = getelementptr inbounds nuw i8, ptr %gep895, i64 64
  %i.sw = getelementptr inbounds nuw i8, ptr %gep895, i64 96
  %wide.load757.a = load <8 x float>, ptr %gep895, align 4, !tbaa !56
  %wide.load758.a = load <8 x float>, ptr %i.su, align 4, !tbaa !56
  %wide.load759.a = load <8 x float>, ptr %i.sv, align 4, !tbaa !56
  %wide.load760 = load <8 x float>, ptr %i.sw, align 4, !tbaa !56
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load757.a, %vec.phi ; 2 uses
  %i.sy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load758.a, %vec.phi754.a ; 2 uses
  %i.sz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load759.a, %vec.phi755.a ; 2 uses
  %i.ta = fadd reassoc nsz arcp contract afn <8 x float> %wide.load760, %vec.phi756 ; 2 uses
  %index.next761 = add nuw i64 %index753, 32      ; 2 uses
  %i.tb = icmp eq i64 %index.next761, %n.vec751
  br i1 %i.tb, label %middle.block762, label %vector.body752, !llvm.loop !16

middle.block762:                                  ; preds = %vector.body752
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.sy, %i.sx
  %bin.rdx763.a = fadd reassoc nsz arcp contract afn <8 x float> %i.sz, %bin.rdx
  %bin.rdx764 = fadd reassoc nsz arcp contract afn <8 x float> %i.ta, %bin.rdx763.a
  %i.tc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx764) ; 3 uses
  br i1 %cmp.n765, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block762
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec751, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.tc, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.td = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index768 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next771, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi769 = phi <8 x float> [ %i.td, %vec.epilog.ph ], [ %i.te, %vec.epilog.vector.body ]
  %gep897 = getelementptr [4 x i8], ptr %invariant.gep896, i64 %index768
  %wide.load770 = load <8 x float>, ptr %gep897, align 4, !tbaa !56
  %i.te = fadd reassoc nsz arcp contract afn <8 x float> %wide.load770, %vec.phi769 ; 2 uses
  %index.next771 = add nuw i64 %index768, 8       ; 2 uses
  %i.tf = icmp eq i64 %index.next771, %n.vec767
  br i1 %i.tf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.tg = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.te) ; 2 uses
  br i1 %cmp.n772, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.re, %iter.check ], [ %i.sk, %vec.epilog.iter.check ], [ %i.sl, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.tc, %vec.epilog.iter.check ], [ %i.tg, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block762, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.tg, %vec.epilog.middle.block ], [ %i.tc, %middle.block762 ], [ %i.tr, %.lr.ph479 ] ; 2 uses
  %i.th = mul nsw i64 %indvars.iv565, %i.s
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.th ; 2 uses
  %i.tj = mul i64 %i.je, %indvars.iv565
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tj ; 2 uses
  %i.tl = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.tm = load float, ptr %i.i, align 8, !tbaa !39
  %i.tn = fcmp reassoc nsz arcp contract afn olt float %i.tm, 0.000000e+00
  br i1 %i.tn, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.ra, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.ra, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.to = fmul reassoc nsz arcp contract afn float %i.tl, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.ti, i64 %i.rb
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.tr, %.lr.ph479 ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %indvars.iv532
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !56
  %i.tr = fadd reassoc nsz arcp contract afn float %i.tq, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.ts = icmp slt i64 %indvars.iv.next533, %i.rf
  br i1 %i.ts, label %.lr.ph479, label %._crit_edge, !llvm.loop !18

bb.v:                                             ; preds = %.lr.ph489, %bb.v
  %indvars.iv542 = phi i64 [ %i.rg, %.lr.ph489 ], [ %indvars.iv.next543, %bb.v ] ; 4 uses
  %.1487 = phi float [ %.0404.lcssa, %.lr.ph489 ], [ %i.ua, %bb.v ]
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %indvars.iv542
  %i.tt = load float, ptr %gep644, align 4, !tbaa !56
  %i.tu = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.tv = add i32 %i.tu, %i.fw
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.tw
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !56
  %i.tz = fsub reassoc nsz arcp contract afn float %i.tt, %i.ty
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tz, %.1487 ; 2 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %i.to, %i.ua
  %i.uc = fptosi float %i.ub to i32               ; 2 uses
  %i.ud = add nsw i32 %i.uc, 1065353216
  %i.ue = icmp sgt i32 %i.uc, -1056964609
  %i.uf = bitcast i32 %i.ud to float
  %i.ug = shl nuw nsw i64 %indvars.iv542, 2       ; 2 uses
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %i.ug ; 3 uses
  %i.uh = getelementptr i8, ptr %gep491, i64 8
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !56
  %invariant.gep484 = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.ug ; 2 uses
  %i.uj = select i1 %i.ue, float %i.uf, float 0.000000e+00
  %i.uk = load <2 x float>, ptr %gep491, align 4, !tbaa !56
  %i.ul = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> zeroinitializer
  %i.un = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ui, i64 2
  %i.uo = shufflevector <2 x float> %i.uk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> %i.un, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uq = fmul <4 x float> %i.um, %i.up
  %i.ur = load <4 x float>, ptr %invariant.gep484, align 4, !tbaa !56
  %i.us = fadd reassoc nsz arcp contract afn <4 x float> %i.ur, %i.uq
  store <4 x float> %i.us, ptr %invariant.gep484, align 4, !tbaa !56
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %gep491, i64 %i.s
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ut, i32 0, i32 3, i32 1)
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.uu = icmp slt i64 %indvars.iv.next543, %i.rh
  br i1 %i.uu, label %bb.v, label %.loopexit467

.lr.ph483:                                        ; preds = %.preheader468, %.lr.ph483
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.lr.ph483 ], [ %i.rg, %.preheader468 ] ; 4 uses
  %.2481 = phi float [ %i.vc, %.lr.ph483 ], [ %.0404.lcssa, %.preheader468 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep642, i64 %indvars.iv537
  %i.uv = load float, ptr %gep, align 4, !tbaa !56
  %i.uw = trunc nuw nsw i64 %indvars.iv537 to i32
  %i.ux = add i32 %i.uw, %i.fw
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.uy
  %i.va = load float, ptr %i.uz, align 4, !tbaa !56
  %i.vb = fsub reassoc nsz arcp contract afn float %i.uv, %i.va
  %i.vc = fadd reassoc nsz arcp contract afn float %i.vb, %.2481 ; 2 uses
  %i.vd = shl nuw nsw i64 %indvars.iv537, 2       ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.vd ; 4 uses
  %i.vf = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %i.rb ; 4 uses
  %i.vg = load float, ptr %i.ve, align 4, !tbaa !56
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !56
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !56
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !56 ; 2 uses
  %i.vo = fsub reassoc nsz arcp contract afn float %i.vl, %i.vn ; 2 uses
  %i.vp = fmul reassoc nsz arcp contract afn float %i.vo, %i.vo
  %i.vq = load float, ptr %i.i, align 8, !tbaa !39
  %i.vr = fadd reassoc nsz arcp contract afn float %i.vq, 1.000000e+00
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.vd ; 2 uses
  %i.vs = load <2 x float>, ptr %i.vf, align 4, !tbaa !56 ; 2 uses
  %i.vt = load float, ptr %i.vj, align 4, !tbaa !56
  %i.vu = extractelement <2 x float> %i.vs, i64 0
  %i.vv = fsub reassoc nsz arcp contract afn float %i.vg, %i.vu ; 2 uses
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, %i.vv
  %i.vx = fsub reassoc nsz arcp contract afn float %i.vi, %i.vt ; 2 uses
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vx, %i.vx
  %i.vz = fadd reassoc nsz arcp contract afn float %i.vy, %i.vw
  %i.wa = fadd reassoc nsz arcp contract afn float %i.vz, %i.vp
  %i.wb = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.wa
  %i.wc = fadd reassoc nsz arcp contract afn float %i.wb, %i.vc
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wc, %i.tl
  %i.we = fdiv reassoc nsz arcp contract afn float %i.wd, %i.vr
  %i.wf = fadd reassoc nsz arcp contract afn float %i.we, -2.000000e+00
  %i.wg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wf, float 0.000000e+00)
  %i.wh = fmul reassoc nnan nsz arcp contract afn float %i.wg, f0xCB000000
  %i.wi = fptosi float %i.wh to i32               ; 2 uses
  %i.wj = add nsw i32 %i.wi, 1065353216
end_hunk_0
