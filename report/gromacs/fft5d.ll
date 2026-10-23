Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/fft5d?download=true
inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z13fft5d_plan_3diiiPP10tmpi_comm_iPP9t_complexS4_S4_S4_iN3gmx13PinningPolicyE:bb.a
  %exitcond503.not = icmp eq i64 %indvars.iv.next500, %wide.trip.count502
  br i1 %exitcond503.not, label %._crit_edge, label %.lr.ph477.split, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph477.split, %middle.block628, %.preheader468
  %.lcssa472 = phi i1 [ %i.ch, %.preheader468 ], [ true, %middle.block628 ], [ true, %.lr.ph477.split ] ; 5 uses
  %i.fq = sext i32 %i.dw to i64                   ; 6 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !9
  %i.ft = sub nsw i32 %.0268, %i.fs
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.fq
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !9
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.fq
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !9
  %i.fx = sub nsw i32 %.0269, %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.fq
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !9
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fq
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !9
  %i.gb = sub nsw i32 %.0270, %i.ga
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.fq
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !9
  %i.gd = add i32 %.fr, -1                        ; 2 uses
  %i.ge = icmp sgt i32 %.fr, 1
  br i1 %i.ge, label %.lr.ph482.split.preheader, label %._crit_edge483

.lr.ph482.split.preheader:                        ; preds = %._crit_edge
  %wide.trip.count507 = zext nneg i32 %i.gd to i64 ; 3 uses
  %.pre519 = load i32, ptr %i.cc, align 4, !tbaa !9 ; 2 uses
  %.pre520 = load i32, ptr %i.ce, align 4, !tbaa !9 ; 2 uses
  %.pre521 = load i32, ptr %i.cg, align 4, !tbaa !9 ; 2 uses
  %min.iters.check636 = icmp ult i32 %.fr, 9
  br i1 %min.iters.check636, label %.lr.ph482.split.preheader1201, label %vector.ph637

vector.ph637:                                     ; preds = %.lr.ph482.split.preheader
  %n.vec638 = and i64 %wide.trip.count507, 2147483640 ; 3 uses
  %vector.recur.init641 = insertelement <8 x i32> poison, i32 %.pre521, i64 7
  %vector.recur.init643 = insertelement <8 x i32> poison, i32 %.pre520, i64 7
  %vector.recur.init645 = insertelement <8 x i32> poison, i32 %.pre519, i64 7
  br label %vector.body639

vector.body639:                                   ; preds = %vector.body639, %vector.ph637
  %index640 = phi i64 [ 0, %vector.ph637 ], [ %index.next650, %vector.body639 ] ; 5 uses
  %vector.recur642 = phi <8 x i32> [ %vector.recur.init641, %vector.ph637 ], [ %wide.load649, %vector.body639 ]
  %vector.recur644 = phi <8 x i32> [ %vector.recur.init643, %vector.ph637 ], [ %wide.load648, %vector.body639 ]
  %vector.recur646 = phi <8 x i32> [ %vector.recur.init645, %vector.ph637 ], [ %wide.load647, %vector.body639 ]
  %i.gf = or disjoint i64 %index640, 1            ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.gf
  %wide.load647 = load <8 x i32>, ptr %i.gg, align 4, !tbaa !9 ; 4 uses
  %i.gh = shufflevector <8 x i32> %vector.recur646, <8 x i32> %wide.load647, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gi = sub nsw <8 x i32> %wide.load647, %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index640
  store <8 x i32> %i.gi, ptr %i.gj, align 4, !tbaa !9
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.gf
  %wide.load648 = load <8 x i32>, ptr %i.gk, align 4, !tbaa !9 ; 4 uses
  %i.gl = shufflevector <8 x i32> %vector.recur644, <8 x i32> %wide.load648, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gm = sub nsw <8 x i32> %wide.load648, %i.gl
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index640
  store <8 x i32> %i.gm, ptr %i.gn, align 4, !tbaa !9
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gf
  %wide.load649 = load <8 x i32>, ptr %i.go, align 4, !tbaa !9 ; 4 uses
  %i.gp = shufflevector <8 x i32> %vector.recur642, <8 x i32> %wide.load649, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gq = sub nsw <8 x i32> %wide.load649, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index640
  store <8 x i32> %i.gq, ptr %i.gr, align 4, !tbaa !9
  %index.next650 = add nuw i64 %index640, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next650, %n.vec638
  br i1 %i.gs, label %middle.block651, label %vector.body639, !llvm.loop !48

middle.block651:                                  ; preds = %vector.body639
  %vector.recur.extract652 = extractelement <8 x i32> %wide.load649, i64 7
  %vector.recur.extract653 = extractelement <8 x i32> %wide.load648, i64 7
  %vector.recur.extract654 = extractelement <8 x i32> %wide.load647, i64 7
  %cmp.n655 = icmp eq i64 %n.vec638, %wide.trip.count507
  br i1 %cmp.n655, label %._crit_edge483, label %.lr.ph482.split.preheader1201

.lr.ph482.split.preheader1201:                    ; preds = %.lr.ph482.split.preheader, %middle.block651
  %.ph = phi i32 [ %.pre521, %.lr.ph482.split.preheader ], [ %vector.recur.extract652, %middle.block651 ]
  %.ph1202 = phi i32 [ %.pre520, %.lr.ph482.split.preheader ], [ %vector.recur.extract653, %middle.block651 ]
  %.ph1203 = phi i32 [ %.pre519, %.lr.ph482.split.preheader ], [ %vector.recur.extract654, %middle.block651 ]
  %indvars.iv504.ph = phi i64 [ 0, %.lr.ph482.split.preheader ], [ %n.vec638, %middle.block651 ]
  br label %.lr.ph482.split

.lr.ph482.split:                                  ; preds = %.lr.ph482.split.preheader1201, %.lr.ph482.split
  %i.gt = phi i32 [ %i.hf, %.lr.ph482.split ], [ %.ph, %.lr.ph482.split.preheader1201 ]
  %i.gu = phi i32 [ %i.hb, %.lr.ph482.split ], [ %.ph1202, %.lr.ph482.split.preheader1201 ]
  %i.gv = phi i32 [ %i.gx, %.lr.ph482.split ], [ %.ph1203, %.lr.ph482.split.preheader1201 ]
  %indvars.iv504 = phi i64 [ %indvars.iv.next505, %.lr.ph482.split ], [ %indvars.iv504.ph, %.lr.ph482.split.preheader1201 ] ; 4 uses
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 5 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next505
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !9  ; 2 uses
  %i.gy = sub nsw i32 %i.gx, %i.gv
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv504
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !9
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next505
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !9  ; 2 uses
  %i.hc = sub nsw i32 %i.hb, %i.gu
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv504
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !9
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next505
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !9  ; 2 uses
  %i.hg = sub nsw i32 %i.hf, %i.gt
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv504
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !9
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %wide.trip.count507
  br i1 %exitcond508.not, label %._crit_edge483, label %.lr.ph482.split, !llvm.loop !49

._crit_edge483:                                   ; preds = %.lr.ph482.split, %middle.block651, %._crit_edge
  %.lcssa470 = phi i1 [ %i.cu, %._crit_edge ], [ true, %middle.block651 ], [ true, %.lr.ph482.split ] ; 5 uses
  %i.hi = sext i32 %i.gd to i64                   ; 6 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !9
  %i.hl = sub nsw i32 %.0268, %i.hk
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.hi
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !9
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.hi
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !9
  %i.hp = sub nsw i32 %.0269, %i.ho
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.hi
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !9
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.hi
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !9
  %i.ht = sub nsw i32 %.0270, %i.hs
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.hi
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !9
  %i.hv = load i32, ptr %i.d, align 4, !tbaa !9
  %i.hw = sext i32 %i.hv to i64                   ; 6 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !9  ; 5 uses
  store i32 %i.hy, ptr %i.i, align 4, !tbaa !9
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.hw
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !9  ; 2 uses
  store i32 %i.ia, ptr %i.k, align 4, !tbaa !9
  %i.ib = load i32, ptr %i.al, align 4, !tbaa !9
  %i.ic = sext i32 %i.ib to i64                   ; 6 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !9  ; 4 uses
  store i32 %i.ie, ptr %i.j, align 4, !tbaa !9
  %i.if = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ic
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !9  ; 2 uses
  store i32 %i.ig, ptr %i.l, align 4, !tbaa !9
  store i32 %.0268, ptr %i.q, align 4, !tbaa !9
  store i32 %0, ptr %i.r, align 4, !tbaa !9
  %i.ih = and i32 %4, 1
  %.not294 = icmp eq i32 %i.ih, 0                 ; 6 uses
  br i1 %.not294, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge483
  br i1 %.lcssa470, label %iter.check918, label %_ZL4vmaxPKii.exit

iter.check918:                                    ; preds = %bb.s
  %wide.trip.count.i = zext nneg i32 %.fr to i64  ; 12 uses
  %min.iters.check895 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check895, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check896

vector.main.loop.iter.check896:                   ; preds = %iter.check918
  %min.iters.check897 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check897, label %vec.epilog.ph922, label %vector.ph898

vector.ph898:                                     ; preds = %vector.main.loop.iter.check896
  %i.ii = and i64 %wide.trip.count.i, 28
  %n.vec899 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body900

vector.body900:                                   ; preds = %vector.ph898, %vector.body900
  %index901 = phi i64 [ 0, %vector.ph898 ], [ %index.next910, %vector.body900 ] ; 2 uses
  %vec.phi902 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.in, %vector.body900 ]
  %vec.phi903 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.io, %vector.body900 ]
  %vec.phi904 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.ip, %vector.body900 ]
  %vec.phi905 = phi <8 x i32> [ zeroinitializer, %vector.ph898 ], [ %i.iq, %vector.body900 ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index901 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  %wide.load906 = load <8 x i32>, ptr %i.ij, align 4, !tbaa !9
  %wide.load907 = load <8 x i32>, ptr %i.ik, align 4, !tbaa !9
  %wide.load908 = load <8 x i32>, ptr %i.il, align 4, !tbaa !9
  %wide.load909 = load <8 x i32>, ptr %i.im, align 4, !tbaa !9
  %i.in = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load906, <8 x i32> %vec.phi902) ; 2 uses
  %i.io = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load907, <8 x i32> %vec.phi903) ; 2 uses
  %i.ip = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load908, <8 x i32> %vec.phi904) ; 2 uses
  %i.iq = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load909, <8 x i32> %vec.phi905) ; 2 uses
  %index.next910 = add nuw i64 %index901, 32      ; 2 uses
  %i.ir = icmp eq i64 %index.next910, %n.vec899
  br i1 %i.ir, label %middle.block911, label %vector.body900, !llvm.loop !50

middle.block911:                                  ; preds = %vector.body900
  %rdx.minmax912 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.in, <8 x i32> %i.io)
  %rdx.minmax913 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax912, <8 x i32> %i.ip)
  %rdx.minmax914 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax913, <8 x i32> %i.iq)
  %i.is = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax914) ; 3 uses
  %cmp.n915 = icmp eq i64 %n.vec899, %wide.trip.count.i
  br i1 %cmp.n915, label %iter.check959, label %vec.epilog.iter.check920

vec.epilog.iter.check920:                         ; preds = %middle.block911
  %min.epilog.iters.check921 = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check921, label %.lr.ph.i.preheader, label %vec.epilog.ph922, !prof !89

vec.epilog.ph922:                                 ; preds = %vector.main.loop.iter.check896, %vec.epilog.iter.check920
  %vec.epilog.resume.val916 = phi i64 [ %n.vec899, %vec.epilog.iter.check920 ], [ 0, %vector.main.loop.iter.check896 ]
  %bc.merge.rdx917 = phi i32 [ %i.is, %vec.epilog.iter.check920 ], [ 0, %vector.main.loop.iter.check896 ]
  %n.vec923 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert924 = insertelement <4 x i32> poison, i32 %bc.merge.rdx917, i64 0
  %broadcast.splat925 = shufflevector <4 x i32> %broadcast.splatinsert924, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body926

vec.epilog.vector.body926:                        ; preds = %vec.epilog.vector.body926, %vec.epilog.ph922
  %index927 = phi i64 [ %vec.epilog.resume.val916, %vec.epilog.ph922 ], [ %index.next930, %vec.epilog.vector.body926 ] ; 2 uses
  %vec.phi928 = phi <4 x i32> [ %broadcast.splat925, %vec.epilog.ph922 ], [ %i.iu, %vec.epilog.vector.body926 ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index927
  %wide.load929 = load <4 x i32>, ptr %i.it, align 4, !tbaa !9
  %i.iu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load929, <4 x i32> %vec.phi928) ; 2 uses
  %index.next930 = add nuw i64 %index927, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next930, %n.vec923
  br i1 %i.iv, label %vec.epilog.middle.block931, label %vec.epilog.vector.body926, !llvm.loop !51

vec.epilog.middle.block931:                       ; preds = %vec.epilog.vector.body926
  %i.iw = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.iu) ; 2 uses
  %cmp.n932 = icmp eq i64 %n.vec923, %wide.trip.count.i
  br i1 %cmp.n932, label %iter.check959, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check918, %vec.epilog.iter.check920, %vec.epilog.middle.block931
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check918 ], [ %n.vec899, %vec.epilog.iter.check920 ], [ %n.vec923, %vec.epilog.middle.block931 ]
  %.011.i.ph = phi i32 [ 0, %iter.check918 ], [ %i.is, %vec.epilog.iter.check920 ], [ %i.iw, %vec.epilog.middle.block931 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.011.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !9
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.iy, i32 %.011.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %iter.check959, label %.lr.ph.i, !llvm.loop !52

_ZL4vmaxPKii.exit:                                ; preds = %bb.s
  store i32 0, ptr %i.e, align 4, !tbaa !9
  store i32 %i.hy, ptr %i.f, align 4, !tbaa !9
  br label %_ZL4vmaxPKii.exit330

iter.check959:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block931, %middle.block911
  %spec.select.i.lcssa = phi i32 [ %i.iw, %vec.epilog.middle.block931 ], [ %i.is, %middle.block911 ], [ %spec.select.i, %.lr.ph.i ] ; 4 uses
  store i32 %spec.select.i.lcssa, ptr %i.e, align 4, !tbaa !9
  store i32 %i.hy, ptr %i.f, align 4, !tbaa !9
  %min.iters.check936 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check936, label %.lr.ph.i324.preheader, label %vector.main.loop.iter.check937

vector.main.loop.iter.check937:                   ; preds = %iter.check959
  %min.iters.check938 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check938, label %vec.epilog.ph963, label %vector.ph939

vector.ph939:                                     ; preds = %vector.main.loop.iter.check937
  %i.iz = and i64 %wide.trip.count.i, 28
  %n.vec940 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body941

vector.body941:                                   ; preds = %vector.ph939, %vector.body941
  %index942 = phi i64 [ 0, %vector.ph939 ], [ %index.next951, %vector.body941 ] ; 2 uses
  %vec.phi943 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.je, %vector.body941 ]
  %vec.phi944 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.jf, %vector.body941 ]
  %vec.phi945 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.jg, %vector.body941 ]
  %vec.phi946 = phi <8 x i32> [ zeroinitializer, %vector.ph939 ], [ %i.jh, %vector.body941 ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index942 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 96
  %wide.load947 = load <8 x i32>, ptr %i.ja, align 4, !tbaa !9
  %wide.load948 = load <8 x i32>, ptr %i.jb, align 4, !tbaa !9
  %wide.load949 = load <8 x i32>, ptr %i.jc, align 4, !tbaa !9
  %wide.load950 = load <8 x i32>, ptr %i.jd, align 4, !tbaa !9
  %i.je = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load947, <8 x i32> %vec.phi943) ; 2 uses
  %i.jf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load948, <8 x i32> %vec.phi944) ; 2 uses
  %i.jg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load949, <8 x i32> %vec.phi945) ; 2 uses
  %i.jh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load950, <8 x i32> %vec.phi946) ; 2 uses
  %index.next951 = add nuw i64 %index942, 32      ; 2 uses
  %i.ji = icmp eq i64 %index.next951, %n.vec940
  br i1 %i.ji, label %middle.block952, label %vector.body941, !llvm.loop !53

middle.block952:                                  ; preds = %vector.body941
  %rdx.minmax953 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.je, <8 x i32> %i.jf)
  %rdx.minmax954 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax953, <8 x i32> %i.jg)
  %rdx.minmax955 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax954, <8 x i32> %i.jh)
  %i.jj = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax955) ; 3 uses
  %cmp.n956 = icmp eq i64 %n.vec940, %wide.trip.count.i
  br i1 %cmp.n956, label %_ZL4vmaxPKii.exit330, label %vec.epilog.iter.check961

vec.epilog.iter.check961:                         ; preds = %middle.block952
  %min.epilog.iters.check962 = icmp eq i64 %i.iz, 0
  br i1 %min.epilog.iters.check962, label %.lr.ph.i324.preheader, label %vec.epilog.ph963, !prof !89

vec.epilog.ph963:                                 ; preds = %vector.main.loop.iter.check937, %vec.epilog.iter.check961
  %vec.epilog.resume.val957 = phi i64 [ %n.vec940, %vec.epilog.iter.check961 ], [ 0, %vector.main.loop.iter.check937 ]
  %bc.merge.rdx958 = phi i32 [ %i.jj, %vec.epilog.iter.check961 ], [ 0, %vector.main.loop.iter.check937 ]
  %n.vec964 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert965 = insertelement <4 x i32> poison, i32 %bc.merge.rdx958, i64 0
  %broadcast.splat966 = shufflevector <4 x i32> %broadcast.splatinsert965, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body967

vec.epilog.vector.body967:                        ; preds = %vec.epilog.vector.body967, %vec.epilog.ph963
  %index968 = phi i64 [ %vec.epilog.resume.val957, %vec.epilog.ph963 ], [ %index.next971, %vec.epilog.vector.body967 ] ; 2 uses
  %vec.phi969 = phi <4 x i32> [ %broadcast.splat966, %vec.epilog.ph963 ], [ %i.jl, %vec.epilog.vector.body967 ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index968
  %wide.load970 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !9
  %i.jl = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load970, <4 x i32> %vec.phi969) ; 2 uses
  %index.next971 = add nuw i64 %index968, 4       ; 2 uses
  %i.jm = icmp eq i64 %index.next971, %n.vec964
  br i1 %i.jm, label %vec.epilog.middle.block972, label %vec.epilog.vector.body967, !llvm.loop !54

vec.epilog.middle.block972:                       ; preds = %vec.epilog.vector.body967
  %i.jn = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.jl) ; 2 uses
  %cmp.n973 = icmp eq i64 %n.vec964, %wide.trip.count.i
  br i1 %cmp.n973, label %_ZL4vmaxPKii.exit330, label %.lr.ph.i324.preheader

.lr.ph.i324.preheader:                            ; preds = %iter.check959, %vec.epilog.iter.check961, %vec.epilog.middle.block972
  %indvars.iv.i325.ph = phi i64 [ 0, %iter.check959 ], [ %n.vec940, %vec.epilog.iter.check961 ], [ %n.vec964, %vec.epilog.middle.block972 ]
  %.011.i326.ph = phi i32 [ 0, %iter.check959 ], [ %i.jj, %vec.epilog.iter.check961 ], [ %i.jn, %vec.epilog.middle.block972 ]
  br label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %.lr.ph.i324.preheader, %.lr.ph.i324
  %indvars.iv.i325 = phi i64 [ %indvars.iv.next.i328, %.lr.ph.i324 ], [ %indvars.iv.i325.ph, %.lr.ph.i324.preheader ] ; 2 uses
  %.011.i326 = phi i32 [ %spec.select.i327, %.lr.ph.i324 ], [ %.011.i326.ph, %.lr.ph.i324.preheader ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i325
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !9
  %spec.select.i327 = call i32 @llvm.smax.i32(i32 %i.jp, i32 %.011.i326) ; 2 uses
  %indvars.iv.next.i328 = add nuw nsw i64 %indvars.iv.i325, 1 ; 2 uses
  %exitcond.not.i329 = icmp eq i64 %indvars.iv.next.i328, %wide.trip.count.i
  br i1 %exitcond.not.i329, label %_ZL4vmaxPKii.exit330, label %.lr.ph.i324, !llvm.loop !55

_ZL4vmaxPKii.exit330:                             ; preds = %.lr.ph.i324, %middle.block952, %vec.epilog.middle.block972, %_ZL4vmaxPKii.exit
  %.0.lcssa.i457 = phi i32 [ 0, %_ZL4vmaxPKii.exit ], [ %spec.select.i.lcssa, %middle.block952 ], [ %spec.select.i.lcssa, %vec.epilog.middle.block972 ], [ %spec.select.i.lcssa, %.lr.ph.i324 ]
  %.0.lcssa.i321 = phi i32 [ 0, %_ZL4vmaxPKii.exit ], [ %i.jj, %middle.block952 ], [ %i.jn, %vec.epilog.middle.block972 ], [ %spec.select.i327, %.lr.ph.i324 ] ; 2 uses
  store i32 %.0.lcssa.i321, ptr %i.g, align 4, !tbaa !9
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ic
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !9  ; 5 uses
  store i32 %i.jr, ptr %i.h, align 4, !tbaa !9
  store ptr %i.bw, ptr %i.o, align 16, !tbaa !19
  store ptr %i.cc, ptr %i.p, align 16, !tbaa !19
  store i32 %.fr, ptr %i.s, align 4, !tbaa !9
  %i.js = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.0270, ptr %i.js, align 4, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %2, ptr %i.jt, align 4, !tbaa !9
  br i1 %.lcssa472, label %iter.check1000, label %_ZL4vmaxPKii.exit340

iter.check1000:                                   ; preds = %_ZL4vmaxPKii.exit330
  %wide.trip.count.i333 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check977 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check977, label %.lr.ph.i334.preheader, label %vector.main.loop.iter.check978

vector.main.loop.iter.check978:                   ; preds = %iter.check1000
  %min.iters.check979 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check979, label %vec.epilog.ph1004, label %vector.ph980

vector.ph980:                                     ; preds = %vector.main.loop.iter.check978
  %i.ju = and i64 %wide.trip.count.i333, 28
  %n.vec981 = and i64 %wide.trip.count.i333, 2147483616 ; 4 uses
  br label %vector.body982

vector.body982:                                   ; preds = %vector.ph980, %vector.body982
  %index983 = phi i64 [ 0, %vector.ph980 ], [ %index.next992, %vector.body982 ] ; 2 uses
  %vec.phi984 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.jz, %vector.body982 ]
  %vec.phi985 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.ka, %vector.body982 ]
  %vec.phi986 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.kb, %vector.body982 ]
  %vec.phi987 = phi <8 x i32> [ zeroinitializer, %vector.ph980 ], [ %i.kc, %vector.body982 ]
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index983 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  %wide.load988 = load <8 x i32>, ptr %i.jv, align 4, !tbaa !9
  %wide.load989 = load <8 x i32>, ptr %i.jw, align 4, !tbaa !9
  %wide.load990 = load <8 x i32>, ptr %i.jx, align 4, !tbaa !9
  %wide.load991 = load <8 x i32>, ptr %i.jy, align 4, !tbaa !9
  %i.jz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load988, <8 x i32> %vec.phi984) ; 2 uses
  %i.ka = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load989, <8 x i32> %vec.phi985) ; 2 uses
  %i.kb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load990, <8 x i32> %vec.phi986) ; 2 uses
  %i.kc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load991, <8 x i32> %vec.phi987) ; 2 uses
  %index.next992 = add nuw i64 %index983, 32      ; 2 uses
  %i.kd = icmp eq i64 %index.next992, %n.vec981
  br i1 %i.kd, label %middle.block993, label %vector.body982, !llvm.loop !56

middle.block993:                                  ; preds = %vector.body982
  %rdx.minmax994 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> %i.ka)
  %rdx.minmax995 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax994, <8 x i32> %i.kb)
  %rdx.minmax996 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax995, <8 x i32> %i.kc)
  %i.ke = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax996) ; 3 uses
  %cmp.n997 = icmp eq i64 %n.vec981, %wide.trip.count.i333
  br i1 %cmp.n997, label %_ZL4vmaxPKii.exit340, label %vec.epilog.iter.check1002

vec.epilog.iter.check1002:                        ; preds = %middle.block993
  %min.epilog.iters.check1003 = icmp eq i64 %i.ju, 0
  br i1 %min.epilog.iters.check1003, label %.lr.ph.i334.preheader, label %vec.epilog.ph1004, !prof !89

vec.epilog.ph1004:                                ; preds = %vector.main.loop.iter.check978, %vec.epilog.iter.check1002
  %vec.epilog.resume.val998 = phi i64 [ %n.vec981, %vec.epilog.iter.check1002 ], [ 0, %vector.main.loop.iter.check978 ]
  %bc.merge.rdx999 = phi i32 [ %i.ke, %vec.epilog.iter.check1002 ], [ 0, %vector.main.loop.iter.check978 ]
  %n.vec1005 = and i64 %wide.trip.count.i333, 2147483644 ; 3 uses
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %bc.merge.rdx999, i64 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1008

vec.epilog.vector.body1008:                       ; preds = %vec.epilog.vector.body1008, %vec.epilog.ph1004
  %index1009 = phi i64 [ %vec.epilog.resume.val998, %vec.epilog.ph1004 ], [ %index.next1012, %vec.epilog.vector.body1008 ] ; 2 uses
  %vec.phi1010 = phi <4 x i32> [ %broadcast.splat1007, %vec.epilog.ph1004 ], [ %i.kg, %vec.epilog.vector.body1008 ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index1009
  %wide.load1011 = load <4 x i32>, ptr %i.kf, align 4, !tbaa !9
  %i.kg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1011, <4 x i32> %vec.phi1010) ; 2 uses
  %index.next1012 = add nuw i64 %index1009, 4     ; 2 uses
  %i.kh = icmp eq i64 %index.next1012, %n.vec1005
  br i1 %i.kh, label %vec.epilog.middle.block1013, label %vec.epilog.vector.body1008, !llvm.loop !57

vec.epilog.middle.block1013:                      ; preds = %vec.epilog.vector.body1008
  %i.ki = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.kg) ; 2 uses
  %cmp.n1014 = icmp eq i64 %n.vec1005, %wide.trip.count.i333
  br i1 %cmp.n1014, label %_ZL4vmaxPKii.exit340, label %.lr.ph.i334.preheader

.lr.ph.i334.preheader:                            ; preds = %iter.check1000, %vec.epilog.iter.check1002, %vec.epilog.middle.block1013
  %indvars.iv.i335.ph = phi i64 [ 0, %iter.check1000 ], [ %n.vec981, %vec.epilog.iter.check1002 ], [ %n.vec1005, %vec.epilog.middle.block1013 ]
  %.011.i336.ph = phi i32 [ 0, %iter.check1000 ], [ %i.ke, %vec.epilog.iter.check1002 ], [ %i.ki, %vec.epilog.middle.block1013 ]
  br label %.lr.ph.i334

.lr.ph.i334:                                      ; preds = %.lr.ph.i334.preheader, %.lr.ph.i334
  %indvars.iv.i335 = phi i64 [ %indvars.iv.next.i338, %.lr.ph.i334 ], [ %indvars.iv.i335.ph, %.lr.ph.i334.preheader ] ; 2 uses
  %.011.i336 = phi i32 [ %spec.select.i337, %.lr.ph.i334 ], [ %.011.i336.ph, %.lr.ph.i334.preheader ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i335
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !9
  %spec.select.i337 = call i32 @llvm.smax.i32(i32 %i.kk, i32 %.011.i336) ; 2 uses
  %indvars.iv.next.i338 = add nuw nsw i64 %indvars.iv.i335, 1 ; 2 uses
  %exitcond.not.i339 = icmp eq i64 %indvars.iv.next.i338, %wide.trip.count.i333
  br i1 %exitcond.not.i339, label %_ZL4vmaxPKii.exit340, label %.lr.ph.i334, !llvm.loop !58

_ZL4vmaxPKii.exit340:                             ; preds = %.lr.ph.i334, %middle.block993, %vec.epilog.middle.block1013, %_ZL4vmaxPKii.exit330
  %.0.lcssa.i331 = phi i32 [ 0, %_ZL4vmaxPKii.exit330 ], [ %i.ki, %vec.epilog.middle.block1013 ], [ %i.ke, %middle.block993 ], [ %spec.select.i337, %.lr.ph.i334 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.0.lcssa.i331, ptr %i.kl, align 4, !tbaa !9
  %i.km = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.hw
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !9  ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !9
  %i.kp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ca, ptr %i.kp, align 8, !tbaa !19
  %i.kq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cg, ptr %i.kq, align 8, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bz, ptr %i.kr, align 8, !tbaa !19
  %i.ks = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.cf, ptr %i.ks, align 8, !tbaa !19
  br i1 %.lcssa472, label %iter.check1041, label %_ZL4vmaxPKii.exit350

iter.check1041:                                   ; preds = %_ZL4vmaxPKii.exit340
  %wide.trip.count.i343 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check1018 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check1018, label %.lr.ph.i344.preheader, label %vector.main.loop.iter.check1019

vector.main.loop.iter.check1019:                  ; preds = %iter.check1041
  %min.iters.check1020 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check1020, label %vec.epilog.ph1045, label %vector.ph1021

vector.ph1021:                                    ; preds = %vector.main.loop.iter.check1019
  %i.kt = and i64 %wide.trip.count.i343, 28
  %n.vec1022 = and i64 %wide.trip.count.i343, 2147483616 ; 4 uses
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.ph1021, %vector.body1023
  %index1024 = phi i64 [ 0, %vector.ph1021 ], [ %index.next1033, %vector.body1023 ] ; 2 uses
  %vec.phi1025 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.ky, %vector.body1023 ]
  %vec.phi1026 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.kz, %vector.body1023 ]
  %vec.phi1027 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.la, %vector.body1023 ]
  %vec.phi1028 = phi <8 x i32> [ zeroinitializer, %vector.ph1021 ], [ %i.lb, %vector.body1023 ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1024 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 96
  %wide.load1029 = load <8 x i32>, ptr %i.ku, align 4, !tbaa !9
  %wide.load1030 = load <8 x i32>, ptr %i.kv, align 4, !tbaa !9
  %wide.load1031 = load <8 x i32>, ptr %i.kw, align 4, !tbaa !9
  %wide.load1032 = load <8 x i32>, ptr %i.kx, align 4, !tbaa !9
  %i.ky = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1029, <8 x i32> %vec.phi1025) ; 2 uses
  %i.kz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1030, <8 x i32> %vec.phi1026) ; 2 uses
  %i.la = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1031, <8 x i32> %vec.phi1027) ; 2 uses
  %i.lb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1032, <8 x i32> %vec.phi1028) ; 2 uses
  %index.next1033 = add nuw i64 %index1024, 32    ; 2 uses
  %i.lc = icmp eq i64 %index.next1033, %n.vec1022
  br i1 %i.lc, label %middle.block1034, label %vector.body1023, !llvm.loop !59

middle.block1034:                                 ; preds = %vector.body1023
  %rdx.minmax1035 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ky, <8 x i32> %i.kz)
  %rdx.minmax1036 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1035, <8 x i32> %i.la)
  %rdx.minmax1037 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1036, <8 x i32> %i.lb)
  %i.ld = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1037) ; 3 uses
  %cmp.n1038 = icmp eq i64 %n.vec1022, %wide.trip.count.i343
  br i1 %cmp.n1038, label %_ZL4vmaxPKii.exit350, label %vec.epilog.iter.check1043

vec.epilog.iter.check1043:                        ; preds = %middle.block1034
  %min.epilog.iters.check1044 = icmp eq i64 %i.kt, 0
  br i1 %min.epilog.iters.check1044, label %.lr.ph.i344.preheader, label %vec.epilog.ph1045, !prof !89

vec.epilog.ph1045:                                ; preds = %vector.main.loop.iter.check1019, %vec.epilog.iter.check1043
  %vec.epilog.resume.val1039 = phi i64 [ %n.vec1022, %vec.epilog.iter.check1043 ], [ 0, %vector.main.loop.iter.check1019 ]
  %bc.merge.rdx1040 = phi i32 [ %i.ld, %vec.epilog.iter.check1043 ], [ 0, %vector.main.loop.iter.check1019 ]
  %n.vec1046 = and i64 %wide.trip.count.i343, 2147483644 ; 3 uses
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1040, i64 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1049

vec.epilog.vector.body1049:                       ; preds = %vec.epilog.vector.body1049, %vec.epilog.ph1045
  %index1050 = phi i64 [ %vec.epilog.resume.val1039, %vec.epilog.ph1045 ], [ %index.next1053, %vec.epilog.vector.body1049 ] ; 2 uses
  %vec.phi1051 = phi <4 x i32> [ %broadcast.splat1048, %vec.epilog.ph1045 ], [ %i.lf, %vec.epilog.vector.body1049 ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1050
  %wide.load1052 = load <4 x i32>, ptr %i.le, align 4, !tbaa !9
  %i.lf = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1052, <4 x i32> %vec.phi1051) ; 2 uses
  %index.next1053 = add nuw i64 %index1050, 4     ; 2 uses
  %i.lg = icmp eq i64 %index.next1053, %n.vec1046
  br i1 %i.lg, label %vec.epilog.middle.block1054, label %vec.epilog.vector.body1049, !llvm.loop !60

vec.epilog.middle.block1054:                      ; preds = %vec.epilog.vector.body1049
  %i.lh = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.lf) ; 2 uses
  %cmp.n1055 = icmp eq i64 %n.vec1046, %wide.trip.count.i343
  br i1 %cmp.n1055, label %_ZL4vmaxPKii.exit350, label %.lr.ph.i344.preheader

.lr.ph.i344.preheader:                            ; preds = %iter.check1041, %vec.epilog.iter.check1043, %vec.epilog.middle.block1054
  %indvars.iv.i345.ph = phi i64 [ 0, %iter.check1041 ], [ %n.vec1022, %vec.epilog.iter.check1043 ], [ %n.vec1046, %vec.epilog.middle.block1054 ]
  %.011.i346.ph = phi i32 [ 0, %iter.check1041 ], [ %i.ld, %vec.epilog.iter.check1043 ], [ %i.lh, %vec.epilog.middle.block1054 ]
  br label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %.lr.ph.i344.preheader, %.lr.ph.i344
  %indvars.iv.i345 = phi i64 [ %indvars.iv.next.i348, %.lr.ph.i344 ], [ %indvars.iv.i345.ph, %.lr.ph.i344.preheader ] ; 2 uses
  %.011.i346 = phi i32 [ %spec.select.i347, %.lr.ph.i344 ], [ %.011.i346.ph, %.lr.ph.i344.preheader ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i345
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !9
  %spec.select.i347 = call i32 @llvm.smax.i32(i32 %i.lj, i32 %.011.i346) ; 2 uses
  %indvars.iv.next.i348 = add nuw nsw i64 %indvars.iv.i345, 1 ; 2 uses
  %exitcond.not.i349 = icmp eq i64 %indvars.iv.next.i348, %wide.trip.count.i343
  br i1 %exitcond.not.i349, label %_ZL4vmaxPKii.exit350, label %.lr.ph.i344, !llvm.loop !61

_ZL4vmaxPKii.exit350:                             ; preds = %.lr.ph.i344, %middle.block1034, %vec.epilog.middle.block1054, %_ZL4vmaxPKii.exit340
  %.0.lcssa.i341 = phi i32 [ 0, %_ZL4vmaxPKii.exit340 ], [ %i.lh, %vec.epilog.middle.block1054 ], [ %i.ld, %middle.block1034 ], [ %spec.select.i347, %.lr.ph.i344 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.0.lcssa.i341, ptr %i.lk, align 4, !tbaa !9
  %i.ll = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.hy, ptr %i.ll, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.ia, ptr %i.lm, align 4, !tbaa !9
  %i.ln = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.jr, ptr %i.ln, align 4, !tbaa !9
  %i.lo = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.jr, ptr %i.lo, align 4, !tbaa !9
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ic
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !9  ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.fr492, ptr %i.ls, align 4, !tbaa !9
  %i.lt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.0269, ptr %i.lt, align 4, !tbaa !9
  %i.lu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %1, ptr %i.lu, align 4, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.bx, ptr %i.lv, align 16, !tbaa !19
  %i.lw = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.cd, ptr %i.lw, align 16, !tbaa !19
  br i1 %.lcssa472, label %iter.check1082, label %_ZL4vmaxPKii.exit360

iter.check1082:                                   ; preds = %_ZL4vmaxPKii.exit350
  %wide.trip.count.i353 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check1059 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check1059, label %.lr.ph.i354.preheader, label %vector.main.loop.iter.check1060

vector.main.loop.iter.check1060:                  ; preds = %iter.check1082
  %min.iters.check1061 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check1061, label %vec.epilog.ph1086, label %vector.ph1062

vector.ph1062:                                    ; preds = %vector.main.loop.iter.check1060
  %i.lx = and i64 %wide.trip.count.i353, 28
  %n.vec1063 = and i64 %wide.trip.count.i353, 2147483616 ; 4 uses
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.ph1062, %vector.body1064
  %index1065 = phi i64 [ 0, %vector.ph1062 ], [ %index.next1074, %vector.body1064 ] ; 2 uses
  %vec.phi1066 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.mc, %vector.body1064 ]
  %vec.phi1067 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.md, %vector.body1064 ]
  %vec.phi1068 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.me, %vector.body1064 ]
  %vec.phi1069 = phi <8 x i32> [ zeroinitializer, %vector.ph1062 ], [ %i.mf, %vector.body1064 ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index1065 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 96
  %wide.load1070 = load <8 x i32>, ptr %i.ly, align 4, !tbaa !9
  %wide.load1071 = load <8 x i32>, ptr %i.lz, align 4, !tbaa !9
  %wide.load1072 = load <8 x i32>, ptr %i.ma, align 4, !tbaa !9
  %wide.load1073 = load <8 x i32>, ptr %i.mb, align 4, !tbaa !9
  %i.mc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1070, <8 x i32> %vec.phi1066) ; 2 uses
  %i.md = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1071, <8 x i32> %vec.phi1067) ; 2 uses
  %i.me = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1072, <8 x i32> %vec.phi1068) ; 2 uses
  %i.mf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1073, <8 x i32> %vec.phi1069) ; 2 uses
  %index.next1074 = add nuw i64 %index1065, 32    ; 2 uses
  %i.mg = icmp eq i64 %index.next1074, %n.vec1063
  br i1 %i.mg, label %middle.block1075, label %vector.body1064, !llvm.loop !62

middle.block1075:                                 ; preds = %vector.body1064
  %rdx.minmax1076 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.mc, <8 x i32> %i.md)
  %rdx.minmax1077 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1076, <8 x i32> %i.me)
  %rdx.minmax1078 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1077, <8 x i32> %i.mf)
  %i.mh = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1078) ; 3 uses
  %cmp.n1079 = icmp eq i64 %n.vec1063, %wide.trip.count.i353
  br i1 %cmp.n1079, label %_ZL4vmaxPKii.exit360, label %vec.epilog.iter.check1084

vec.epilog.iter.check1084:                        ; preds = %middle.block1075
  %min.epilog.iters.check1085 = icmp eq i64 %i.lx, 0
  br i1 %min.epilog.iters.check1085, label %.lr.ph.i354.preheader, label %vec.epilog.ph1086, !prof !89

vec.epilog.ph1086:                                ; preds = %vector.main.loop.iter.check1060, %vec.epilog.iter.check1084
  %vec.epilog.resume.val1080 = phi i64 [ %n.vec1063, %vec.epilog.iter.check1084 ], [ 0, %vector.main.loop.iter.check1060 ]
  %bc.merge.rdx1081 = phi i32 [ %i.mh, %vec.epilog.iter.check1084 ], [ 0, %vector.main.loop.iter.check1060 ]
  %n.vec1087 = and i64 %wide.trip.count.i353, 2147483644 ; 3 uses
  %broadcast.splatinsert1088 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1081, i64 0
  %broadcast.splat1089 = shufflevector <4 x i32> %broadcast.splatinsert1088, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1090

vec.epilog.vector.body1090:                       ; preds = %vec.epilog.vector.body1090, %vec.epilog.ph1086
  %index1091 = phi i64 [ %vec.epilog.resume.val1080, %vec.epilog.ph1086 ], [ %index.next1094, %vec.epilog.vector.body1090 ] ; 2 uses
  %vec.phi1092 = phi <4 x i32> [ %broadcast.splat1089, %vec.epilog.ph1086 ], [ %i.mj, %vec.epilog.vector.body1090 ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index1091
  %wide.load1093 = load <4 x i32>, ptr %i.mi, align 4, !tbaa !9
  %i.mj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1093, <4 x i32> %vec.phi1092) ; 2 uses
  %index.next1094 = add nuw i64 %index1091, 4     ; 2 uses
  %i.mk = icmp eq i64 %index.next1094, %n.vec1087
  br i1 %i.mk, label %vec.epilog.middle.block1095, label %vec.epilog.vector.body1090, !llvm.loop !63

vec.epilog.middle.block1095:                      ; preds = %vec.epilog.vector.body1090
  %i.ml = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.mj) ; 2 uses
  %cmp.n1096 = icmp eq i64 %n.vec1087, %wide.trip.count.i353
  br i1 %cmp.n1096, label %_ZL4vmaxPKii.exit360, label %.lr.ph.i354.preheader

.lr.ph.i354.preheader:                            ; preds = %iter.check1082, %vec.epilog.iter.check1084, %vec.epilog.middle.block1095
  %indvars.iv.i355.ph = phi i64 [ 0, %iter.check1082 ], [ %n.vec1063, %vec.epilog.iter.check1084 ], [ %n.vec1087, %vec.epilog.middle.block1095 ]
  %.011.i356.ph = phi i32 [ 0, %iter.check1082 ], [ %i.mh, %vec.epilog.iter.check1084 ], [ %i.ml, %vec.epilog.middle.block1095 ]
  br label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %.lr.ph.i354.preheader, %.lr.ph.i354
  %indvars.iv.i355 = phi i64 [ %indvars.iv.next.i358, %.lr.ph.i354 ], [ %indvars.iv.i355.ph, %.lr.ph.i354.preheader ] ; 2 uses
  %.011.i356 = phi i32 [ %spec.select.i357, %.lr.ph.i354 ], [ %.011.i356.ph, %.lr.ph.i354.preheader ]
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i355
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !9
  %spec.select.i357 = call i32 @llvm.smax.i32(i32 %i.mn, i32 %.011.i356) ; 2 uses
  %indvars.iv.next.i358 = add nuw nsw i64 %indvars.iv.i355, 1 ; 2 uses
  %exitcond.not.i359 = icmp eq i64 %indvars.iv.next.i358, %wide.trip.count.i353
  br i1 %exitcond.not.i359, label %_ZL4vmaxPKii.exit360, label %.lr.ph.i354, !llvm.loop !64

_ZL4vmaxPKii.exit360:                             ; preds = %.lr.ph.i354, %middle.block1075, %vec.epilog.middle.block1095, %_ZL4vmaxPKii.exit350
  %.0.lcssa.i351 = phi i32 [ 0, %_ZL4vmaxPKii.exit350 ], [ %i.ml, %vec.epilog.middle.block1095 ], [ %i.mh, %middle.block1075 ], [ %spec.select.i357, %.lr.ph.i354 ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.0.lcssa.i351, ptr %i.mo, align 4, !tbaa !9
  %i.mp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.kn, ptr %i.mp, align 4, !tbaa !9
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.hw
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !9
  %i.ms = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check1123, label %_ZL4vmaxPKii.exit370

iter.check1123:                                   ; preds = %_ZL4vmaxPKii.exit360
  %wide.trip.count.i363 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check1100 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check1100, label %.lr.ph.i364.preheader, label %vector.main.loop.iter.check1101

vector.main.loop.iter.check1101:                  ; preds = %iter.check1123
  %min.iters.check1102 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check1102, label %vec.epilog.ph1127, label %vector.ph1103

vector.ph1103:                                    ; preds = %vector.main.loop.iter.check1101
  %i.mt = and i64 %wide.trip.count.i363, 28
  %n.vec1104 = and i64 %wide.trip.count.i363, 2147483616 ; 4 uses
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.ph1103, %vector.body1105
  %index1106 = phi i64 [ 0, %vector.ph1103 ], [ %index.next1115, %vector.body1105 ] ; 2 uses
  %vec.phi1107 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.my, %vector.body1105 ]
  %vec.phi1108 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.mz, %vector.body1105 ]
  %vec.phi1109 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.na, %vector.body1105 ]
  %vec.phi1110 = phi <8 x i32> [ zeroinitializer, %vector.ph1103 ], [ %i.nb, %vector.body1105 ]
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index1106 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 96
  %wide.load1111 = load <8 x i32>, ptr %i.mu, align 4, !tbaa !9
  %wide.load1112 = load <8 x i32>, ptr %i.mv, align 4, !tbaa !9
  %wide.load1113 = load <8 x i32>, ptr %i.mw, align 4, !tbaa !9
  %wide.load1114 = load <8 x i32>, ptr %i.mx, align 4, !tbaa !9
  %i.my = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1111, <8 x i32> %vec.phi1107) ; 2 uses
  %i.mz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1112, <8 x i32> %vec.phi1108) ; 2 uses
  %i.na = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1113, <8 x i32> %vec.phi1109) ; 2 uses
  %i.nb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1114, <8 x i32> %vec.phi1110) ; 2 uses
  %index.next1115 = add nuw i64 %index1106, 32    ; 2 uses
  %i.nc = icmp eq i64 %index.next1115, %n.vec1104
  br i1 %i.nc, label %middle.block1116, label %vector.body1105, !llvm.loop !65

middle.block1116:                                 ; preds = %vector.body1105
  %rdx.minmax1117 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.my, <8 x i32> %i.mz)
  %rdx.minmax1118 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1117, <8 x i32> %i.na)
  %rdx.minmax1119 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1118, <8 x i32> %i.nb)
  %i.nd = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1119) ; 3 uses
  %cmp.n1120 = icmp eq i64 %n.vec1104, %wide.trip.count.i363
  br i1 %cmp.n1120, label %_ZL4vmaxPKii.exit370, label %vec.epilog.iter.check1125

vec.epilog.iter.check1125:                        ; preds = %middle.block1116
  %min.epilog.iters.check1126 = icmp eq i64 %i.mt, 0
  br i1 %min.epilog.iters.check1126, label %.lr.ph.i364.preheader, label %vec.epilog.ph1127, !prof !89

vec.epilog.ph1127:                                ; preds = %vector.main.loop.iter.check1101, %vec.epilog.iter.check1125
  %vec.epilog.resume.val1121 = phi i64 [ %n.vec1104, %vec.epilog.iter.check1125 ], [ 0, %vector.main.loop.iter.check1101 ]
  %bc.merge.rdx1122 = phi i32 [ %i.nd, %vec.epilog.iter.check1125 ], [ 0, %vector.main.loop.iter.check1101 ]
  %n.vec1128 = and i64 %wide.trip.count.i363, 2147483644 ; 3 uses
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1122, i64 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1131

vec.epilog.vector.body1131:                       ; preds = %vec.epilog.vector.body1131, %vec.epilog.ph1127
  %index1132 = phi i64 [ %vec.epilog.resume.val1121, %vec.epilog.ph1127 ], [ %index.next1135, %vec.epilog.vector.body1131 ] ; 2 uses
  %vec.phi1133 = phi <4 x i32> [ %broadcast.splat1130, %vec.epilog.ph1127 ], [ %i.nf, %vec.epilog.vector.body1131 ]
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index1132
  %wide.load1134 = load <4 x i32>, ptr %i.ne, align 4, !tbaa !9
  %i.nf = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1134, <4 x i32> %vec.phi1133) ; 2 uses
  %index.next1135 = add nuw i64 %index1132, 4     ; 2 uses
  %i.ng = icmp eq i64 %index.next1135, %n.vec1128
  br i1 %i.ng, label %vec.epilog.middle.block1136, label %vec.epilog.vector.body1131, !llvm.loop !66

vec.epilog.middle.block1136:                      ; preds = %vec.epilog.vector.body1131
  %i.nh = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.nf) ; 2 uses
  %cmp.n1137 = icmp eq i64 %n.vec1128, %wide.trip.count.i363
  br i1 %cmp.n1137, label %_ZL4vmaxPKii.exit370, label %.lr.ph.i364.preheader

.lr.ph.i364.preheader:                            ; preds = %iter.check1123, %vec.epilog.iter.check1125, %vec.epilog.middle.block1136
  %indvars.iv.i365.ph = phi i64 [ 0, %iter.check1123 ], [ %n.vec1104, %vec.epilog.iter.check1125 ], [ %n.vec1128, %vec.epilog.middle.block1136 ]
  %.011.i366.ph = phi i32 [ 0, %iter.check1123 ], [ %i.nd, %vec.epilog.iter.check1125 ], [ %i.nh, %vec.epilog.middle.block1136 ]
  br label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.lr.ph.i364.preheader, %.lr.ph.i364
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i368, %.lr.ph.i364 ], [ %indvars.iv.i365.ph, %.lr.ph.i364.preheader ] ; 2 uses
  %.011.i366 = phi i32 [ %spec.select.i367, %.lr.ph.i364 ], [ %.011.i366.ph, %.lr.ph.i364.preheader ]
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i365
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !9
  %spec.select.i367 = call i32 @llvm.smax.i32(i32 %i.nj, i32 %.011.i366) ; 2 uses
  %indvars.iv.next.i368 = add nuw nsw i64 %indvars.iv.i365, 1 ; 2 uses
  %exitcond.not.i369 = icmp eq i64 %indvars.iv.next.i368, %wide.trip.count.i363
  br i1 %exitcond.not.i369, label %_ZL4vmaxPKii.exit370, label %.lr.ph.i364, !llvm.loop !67

_ZL4vmaxPKii.exit370:                             ; preds = %.lr.ph.i364, %middle.block1116, %vec.epilog.middle.block1136, %_ZL4vmaxPKii.exit360
  %.0.lcssa.i361 = phi i32 [ 0, %_ZL4vmaxPKii.exit360 ], [ %i.nh, %vec.epilog.middle.block1136 ], [ %i.nd, %middle.block1116 ], [ %spec.select.i367, %.lr.ph.i364 ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.0.lcssa.i361, ptr %i.nk, align 4, !tbaa !9
  %i.nl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.jr, ptr %i.nl, align 4, !tbaa !9
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge483
  br i1 %.lcssa472, label %iter.check, label %_ZL4vmaxPKii.exit380

iter.check:                                       ; preds = %bb.t
  %wide.trip.count.i373 = zext nneg i32 %.fr492 to i64 ; 12 uses
  %min.iters.check661 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check661, label %.lr.ph.i374.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check662 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check662, label %vec.epilog.ph, label %vector.ph663

vector.ph663:                                     ; preds = %vector.main.loop.iter.check
  %i.nm = and i64 %wide.trip.count.i373, 28
  %n.vec664 = and i64 %wide.trip.count.i373, 2147483616 ; 4 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.ph663, %vector.body665
  %index666 = phi i64 [ 0, %vector.ph663 ], [ %index.next674, %vector.body665 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.nr, %vector.body665 ]
  %vec.phi667 = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.ns, %vector.body665 ]
  %vec.phi668 = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.nt, %vector.body665 ]
  %vec.phi669 = phi <8 x i32> [ zeroinitializer, %vector.ph663 ], [ %i.nu, %vector.body665 ]
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index666 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 96
  %wide.load670 = load <8 x i32>, ptr %i.nn, align 4, !tbaa !9
  %wide.load671 = load <8 x i32>, ptr %i.no, align 4, !tbaa !9
  %wide.load672 = load <8 x i32>, ptr %i.np, align 4, !tbaa !9
  %wide.load673 = load <8 x i32>, ptr %i.nq, align 4, !tbaa !9
  %i.nr = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load670, <8 x i32> %vec.phi) ; 2 uses
  %i.ns = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load671, <8 x i32> %vec.phi667) ; 2 uses
  %i.nt = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load672, <8 x i32> %vec.phi668) ; 2 uses
  %i.nu = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load673, <8 x i32> %vec.phi669) ; 2 uses
  %index.next674 = add nuw i64 %index666, 32      ; 2 uses
  %i.nv = icmp eq i64 %index.next674, %n.vec664
  br i1 %i.nv, label %middle.block675, label %vector.body665, !llvm.loop !68

middle.block675:                                  ; preds = %vector.body665
  %rdx.minmax = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.nr, <8 x i32> %i.ns)
  %rdx.minmax676 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.nt)
  %rdx.minmax677 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax676, <8 x i32> %i.nu)
  %i.nw = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax677) ; 3 uses
  %cmp.n678 = icmp eq i64 %n.vec664, %wide.trip.count.i373
  br i1 %cmp.n678, label %iter.check713, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block675
  %min.epilog.iters.check = icmp eq i64 %i.nm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i374.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec664, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.nw, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec679 = and i64 %wide.trip.count.i373, 2147483644 ; 3 uses
  %broadcast.splatinsert680 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat681 = shufflevector <4 x i32> %broadcast.splatinsert680, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index682 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next685, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi683 = phi <4 x i32> [ %broadcast.splat681, %vec.epilog.ph ], [ %i.ny, %vec.epilog.vector.body ]
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index682
  %wide.load684 = load <4 x i32>, ptr %i.nx, align 4, !tbaa !9
  %i.ny = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load684, <4 x i32> %vec.phi683) ; 2 uses
  %index.next685 = add nuw i64 %index682, 4       ; 2 uses
  %i.nz = icmp eq i64 %index.next685, %n.vec679
  br i1 %i.nz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.oa = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ny) ; 2 uses
  %cmp.n686 = icmp eq i64 %n.vec679, %wide.trip.count.i373
  br i1 %cmp.n686, label %iter.check713, label %.lr.ph.i374.preheader

.lr.ph.i374.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i375.ph = phi i64 [ 0, %iter.check ], [ %n.vec664, %vec.epilog.iter.check ], [ %n.vec679, %vec.epilog.middle.block ]
  %.011.i376.ph = phi i32 [ 0, %iter.check ], [ %i.nw, %vec.epilog.iter.check ], [ %i.oa, %vec.epilog.middle.block ]
  br label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374.preheader, %.lr.ph.i374
  %indvars.iv.i375 = phi i64 [ %indvars.iv.next.i378, %.lr.ph.i374 ], [ %indvars.iv.i375.ph, %.lr.ph.i374.preheader ] ; 2 uses
  %.011.i376 = phi i32 [ %spec.select.i377, %.lr.ph.i374 ], [ %.011.i376.ph, %.lr.ph.i374.preheader ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i375
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !9
  %spec.select.i377 = call i32 @llvm.smax.i32(i32 %i.oc, i32 %.011.i376) ; 2 uses
  %indvars.iv.next.i378 = add nuw nsw i64 %indvars.iv.i375, 1 ; 2 uses
  %exitcond.not.i379 = icmp eq i64 %indvars.iv.next.i378, %wide.trip.count.i373
  br i1 %exitcond.not.i379, label %iter.check713, label %.lr.ph.i374, !llvm.loop !70

_ZL4vmaxPKii.exit380:                             ; preds = %bb.t
  store i32 0, ptr %i.e, align 4, !tbaa !9
  br label %_ZL4vmaxPKii.exit390

iter.check713:                                    ; preds = %.lr.ph.i374, %vec.epilog.middle.block, %middle.block675
  %spec.select.i377.lcssa = phi i32 [ %i.oa, %vec.epilog.middle.block ], [ %i.nw, %middle.block675 ], [ %spec.select.i377, %.lr.ph.i374 ] ; 4 uses
  store i32 %spec.select.i377.lcssa, ptr %i.e, align 4, !tbaa !9
  %min.iters.check690 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check690, label %.lr.ph.i384.preheader, label %vector.main.loop.iter.check691

vector.main.loop.iter.check691:                   ; preds = %iter.check713
  %min.iters.check692 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check692, label %vec.epilog.ph717, label %vector.ph693

vector.ph693:                                     ; preds = %vector.main.loop.iter.check691
  %i.od = and i64 %wide.trip.count.i373, 28
  %n.vec694 = and i64 %wide.trip.count.i373, 2147483616 ; 4 uses
  br label %vector.body695

vector.body695:                                   ; preds = %vector.ph693, %vector.body695
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next705, %vector.body695 ] ; 2 uses
  %vec.phi697 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.oi, %vector.body695 ]
  %vec.phi698 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.oj, %vector.body695 ]
  %vec.phi699 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.ok, %vector.body695 ]
  %vec.phi700 = phi <8 x i32> [ zeroinitializer, %vector.ph693 ], [ %i.ol, %vector.body695 ]
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index696 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 96
  %wide.load701 = load <8 x i32>, ptr %i.oe, align 4, !tbaa !9
  %wide.load702 = load <8 x i32>, ptr %i.of, align 4, !tbaa !9
  %wide.load703 = load <8 x i32>, ptr %i.og, align 4, !tbaa !9
  %wide.load704 = load <8 x i32>, ptr %i.oh, align 4, !tbaa !9
  %i.oi = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load701, <8 x i32> %vec.phi697) ; 2 uses
  %i.oj = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load702, <8 x i32> %vec.phi698) ; 2 uses
  %i.ok = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load703, <8 x i32> %vec.phi699) ; 2 uses
  %i.ol = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load704, <8 x i32> %vec.phi700) ; 2 uses
  %index.next705 = add nuw i64 %index696, 32      ; 2 uses
  %i.om = icmp eq i64 %index.next705, %n.vec694
  br i1 %i.om, label %middle.block706, label %vector.body695, !llvm.loop !71

middle.block706:                                  ; preds = %vector.body695
  %rdx.minmax707 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.oi, <8 x i32> %i.oj)
  %rdx.minmax708 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax707, <8 x i32> %i.ok)
  %rdx.minmax709 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax708, <8 x i32> %i.ol)
  %i.on = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax709) ; 3 uses
  %cmp.n710 = icmp eq i64 %n.vec694, %wide.trip.count.i373
  br i1 %cmp.n710, label %_ZL4vmaxPKii.exit390, label %vec.epilog.iter.check715

vec.epilog.iter.check715:                         ; preds = %middle.block706
  %min.epilog.iters.check716 = icmp eq i64 %i.od, 0
  br i1 %min.epilog.iters.check716, label %.lr.ph.i384.preheader, label %vec.epilog.ph717, !prof !89

vec.epilog.ph717:                                 ; preds = %vector.main.loop.iter.check691, %vec.epilog.iter.check715
  %vec.epilog.resume.val711 = phi i64 [ %n.vec694, %vec.epilog.iter.check715 ], [ 0, %vector.main.loop.iter.check691 ]
  %bc.merge.rdx712 = phi i32 [ %i.on, %vec.epilog.iter.check715 ], [ 0, %vector.main.loop.iter.check691 ]
  %n.vec718 = and i64 %wide.trip.count.i373, 2147483644 ; 3 uses
  %broadcast.splatinsert719 = insertelement <4 x i32> poison, i32 %bc.merge.rdx712, i64 0
  %broadcast.splat720 = shufflevector <4 x i32> %broadcast.splatinsert719, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph717
  %index722 = phi i64 [ %vec.epilog.resume.val711, %vec.epilog.ph717 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 2 uses
  %vec.phi723 = phi <4 x i32> [ %broadcast.splat720, %vec.epilog.ph717 ], [ %i.op, %vec.epilog.vector.body721 ]
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index722
  %wide.load724 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !9
  %i.op = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load724, <4 x i32> %vec.phi723) ; 2 uses
  %index.next725 = add nuw i64 %index722, 4       ; 2 uses
  %i.oq = icmp eq i64 %index.next725, %n.vec718
  br i1 %i.oq, label %vec.epilog.middle.block726, label %vec.epilog.vector.body721, !llvm.loop !72

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body721
  %i.or = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.op) ; 2 uses
  %cmp.n727 = icmp eq i64 %n.vec718, %wide.trip.count.i373
  br i1 %cmp.n727, label %_ZL4vmaxPKii.exit390, label %.lr.ph.i384.preheader

.lr.ph.i384.preheader:                            ; preds = %iter.check713, %vec.epilog.iter.check715, %vec.epilog.middle.block726
  %indvars.iv.i385.ph = phi i64 [ 0, %iter.check713 ], [ %n.vec694, %vec.epilog.iter.check715 ], [ %n.vec718, %vec.epilog.middle.block726 ]
  %.011.i386.ph = phi i32 [ 0, %iter.check713 ], [ %i.on, %vec.epilog.iter.check715 ], [ %i.or, %vec.epilog.middle.block726 ]
  br label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.preheader, %.lr.ph.i384
  %indvars.iv.i385 = phi i64 [ %indvars.iv.next.i388, %.lr.ph.i384 ], [ %indvars.iv.i385.ph, %.lr.ph.i384.preheader ] ; 2 uses
  %.011.i386 = phi i32 [ %spec.select.i387, %.lr.ph.i384 ], [ %.011.i386.ph, %.lr.ph.i384.preheader ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i385
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !9
  %spec.select.i387 = call i32 @llvm.smax.i32(i32 %i.ot, i32 %.011.i386) ; 2 uses
  %indvars.iv.next.i388 = add nuw nsw i64 %indvars.iv.i385, 1 ; 2 uses
  %exitcond.not.i389 = icmp eq i64 %indvars.iv.next.i388, %wide.trip.count.i373
  br i1 %exitcond.not.i389, label %_ZL4vmaxPKii.exit390, label %.lr.ph.i384, !llvm.loop !73

_ZL4vmaxPKii.exit390:                             ; preds = %.lr.ph.i384, %middle.block706, %vec.epilog.middle.block726, %_ZL4vmaxPKii.exit380
  %.0.lcssa.i371460 = phi i32 [ 0, %_ZL4vmaxPKii.exit380 ], [ %spec.select.i377.lcssa, %middle.block706 ], [ %spec.select.i377.lcssa, %vec.epilog.middle.block726 ], [ %spec.select.i377.lcssa, %.lr.ph.i384 ]
  %.0.lcssa.i381 = phi i32 [ 0, %_ZL4vmaxPKii.exit380 ], [ %i.on, %middle.block706 ], [ %i.or, %vec.epilog.middle.block726 ], [ %spec.select.i387, %.lr.ph.i384 ] ; 2 uses
  store i32 %.0.lcssa.i381, ptr %i.f, align 4, !tbaa !9
  store i32 %i.ie, ptr %i.g, align 4, !tbaa !9
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.hw
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !9  ; 5 uses
  store i32 %i.ov, ptr %i.h, align 4, !tbaa !9
  store ptr %i.br, ptr %i.o, align 16, !tbaa !19
  store ptr %i.cb, ptr %i.p, align 16, !tbaa !19
  store i32 %.fr492, ptr %i.s, align 4, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %.0269, ptr %i.ow, align 4, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %1, ptr %i.ox, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check754, label %_ZL4vmaxPKii.exit400

iter.check754:                                    ; preds = %_ZL4vmaxPKii.exit390
  %wide.trip.count.i393 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check731 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check731, label %.lr.ph.i394.preheader, label %vector.main.loop.iter.check732

vector.main.loop.iter.check732:                   ; preds = %iter.check754
  %min.iters.check733 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check733, label %vec.epilog.ph758, label %vector.ph734

vector.ph734:                                     ; preds = %vector.main.loop.iter.check732
  %i.oy = and i64 %wide.trip.count.i393, 28
  %n.vec735 = and i64 %wide.trip.count.i393, 2147483616 ; 4 uses
  br label %vector.body736

vector.body736:                                   ; preds = %vector.ph734, %vector.body736
  %index737 = phi i64 [ 0, %vector.ph734 ], [ %index.next746, %vector.body736 ] ; 2 uses
  %vec.phi738 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pd, %vector.body736 ]
  %vec.phi739 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pe, %vector.body736 ]
  %vec.phi740 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pf, %vector.body736 ]
  %vec.phi741 = phi <8 x i32> [ zeroinitializer, %vector.ph734 ], [ %i.pg, %vector.body736 ]
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index737 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 96
  %wide.load742 = load <8 x i32>, ptr %i.oz, align 4, !tbaa !9
  %wide.load743 = load <8 x i32>, ptr %i.pa, align 4, !tbaa !9
  %wide.load744 = load <8 x i32>, ptr %i.pb, align 4, !tbaa !9
  %wide.load745 = load <8 x i32>, ptr %i.pc, align 4, !tbaa !9
  %i.pd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load742, <8 x i32> %vec.phi738) ; 2 uses
  %i.pe = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load743, <8 x i32> %vec.phi739) ; 2 uses
  %i.pf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load744, <8 x i32> %vec.phi740) ; 2 uses
  %i.pg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load745, <8 x i32> %vec.phi741) ; 2 uses
  %index.next746 = add nuw i64 %index737, 32      ; 2 uses
  %i.ph = icmp eq i64 %index.next746, %n.vec735
  br i1 %i.ph, label %middle.block747, label %vector.body736, !llvm.loop !74

middle.block747:                                  ; preds = %vector.body736
  %rdx.minmax748 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.pd, <8 x i32> %i.pe)
  %rdx.minmax749 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax748, <8 x i32> %i.pf)
  %rdx.minmax750 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax749, <8 x i32> %i.pg)
  %i.pi = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax750) ; 3 uses
  %cmp.n751 = icmp eq i64 %n.vec735, %wide.trip.count.i393
  br i1 %cmp.n751, label %_ZL4vmaxPKii.exit400, label %vec.epilog.iter.check756

vec.epilog.iter.check756:                         ; preds = %middle.block747
  %min.epilog.iters.check757 = icmp eq i64 %i.oy, 0
  br i1 %min.epilog.iters.check757, label %.lr.ph.i394.preheader, label %vec.epilog.ph758, !prof !89

vec.epilog.ph758:                                 ; preds = %vector.main.loop.iter.check732, %vec.epilog.iter.check756
  %vec.epilog.resume.val752 = phi i64 [ %n.vec735, %vec.epilog.iter.check756 ], [ 0, %vector.main.loop.iter.check732 ]
  %bc.merge.rdx753 = phi i32 [ %i.pi, %vec.epilog.iter.check756 ], [ 0, %vector.main.loop.iter.check732 ]
  %n.vec759 = and i64 %wide.trip.count.i393, 2147483644 ; 3 uses
  %broadcast.splatinsert760 = insertelement <4 x i32> poison, i32 %bc.merge.rdx753, i64 0
  %broadcast.splat761 = shufflevector <4 x i32> %broadcast.splatinsert760, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body762

vec.epilog.vector.body762:                        ; preds = %vec.epilog.vector.body762, %vec.epilog.ph758
  %index763 = phi i64 [ %vec.epilog.resume.val752, %vec.epilog.ph758 ], [ %index.next766, %vec.epilog.vector.body762 ] ; 2 uses
  %vec.phi764 = phi <4 x i32> [ %broadcast.splat761, %vec.epilog.ph758 ], [ %i.pk, %vec.epilog.vector.body762 ]
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index763
  %wide.load765 = load <4 x i32>, ptr %i.pj, align 4, !tbaa !9
  %i.pk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load765, <4 x i32> %vec.phi764) ; 2 uses
  %index.next766 = add nuw i64 %index763, 4       ; 2 uses
  %i.pl = icmp eq i64 %index.next766, %n.vec759
  br i1 %i.pl, label %vec.epilog.middle.block767, label %vec.epilog.vector.body762, !llvm.loop !75

vec.epilog.middle.block767:                       ; preds = %vec.epilog.vector.body762
  %i.pm = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.pk) ; 2 uses
  %cmp.n768 = icmp eq i64 %n.vec759, %wide.trip.count.i393
  br i1 %cmp.n768, label %_ZL4vmaxPKii.exit400, label %.lr.ph.i394.preheader

.lr.ph.i394.preheader:                            ; preds = %iter.check754, %vec.epilog.iter.check756, %vec.epilog.middle.block767
  %indvars.iv.i395.ph = phi i64 [ 0, %iter.check754 ], [ %n.vec735, %vec.epilog.iter.check756 ], [ %n.vec759, %vec.epilog.middle.block767 ]
  %.011.i396.ph = phi i32 [ 0, %iter.check754 ], [ %i.pi, %vec.epilog.iter.check756 ], [ %i.pm, %vec.epilog.middle.block767 ]
  br label %.lr.ph.i394

.lr.ph.i394:                                      ; preds = %.lr.ph.i394.preheader, %.lr.ph.i394
  %indvars.iv.i395 = phi i64 [ %indvars.iv.next.i398, %.lr.ph.i394 ], [ %indvars.iv.i395.ph, %.lr.ph.i394.preheader ] ; 2 uses
  %.011.i396 = phi i32 [ %spec.select.i397, %.lr.ph.i394 ], [ %.011.i396.ph, %.lr.ph.i394.preheader ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i395
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !9
  %spec.select.i397 = call i32 @llvm.smax.i32(i32 %i.po, i32 %.011.i396) ; 2 uses
  %indvars.iv.next.i398 = add nuw nsw i64 %indvars.iv.i395, 1 ; 2 uses
  %exitcond.not.i399 = icmp eq i64 %indvars.iv.next.i398, %wide.trip.count.i393
  br i1 %exitcond.not.i399, label %_ZL4vmaxPKii.exit400, label %.lr.ph.i394, !llvm.loop !76

_ZL4vmaxPKii.exit400:                             ; preds = %.lr.ph.i394, %middle.block747, %vec.epilog.middle.block767, %_ZL4vmaxPKii.exit390
  %.0.lcssa.i391 = phi i32 [ 0, %_ZL4vmaxPKii.exit390 ], [ %i.pm, %vec.epilog.middle.block767 ], [ %i.pi, %middle.block747 ], [ %spec.select.i397, %.lr.ph.i394 ] ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.0.lcssa.i391, ptr %i.pp, align 4, !tbaa !9
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ic
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !9  ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.pr, ptr %i.ps, align 4, !tbaa !9
  %i.pt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bx, ptr %i.pt, align 8, !tbaa !19
  %i.pu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.cd, ptr %i.pu, align 8, !tbaa !19
  %i.pv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.by, ptr %i.pv, align 8, !tbaa !19
  %i.pw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ce, ptr %i.pw, align 8, !tbaa !19
  %i.px = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.ov, ptr %i.px, align 4, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ov, ptr %i.py, align 4, !tbaa !9
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.hw
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !9  ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check795, label %_ZL4vmaxPKii.exit410

iter.check795:                                    ; preds = %_ZL4vmaxPKii.exit400
  %wide.trip.count.i403 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check772 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check772, label %.lr.ph.i404.preheader, label %vector.main.loop.iter.check773

vector.main.loop.iter.check773:                   ; preds = %iter.check795
  %min.iters.check774 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check774, label %vec.epilog.ph799, label %vector.ph775

vector.ph775:                                     ; preds = %vector.main.loop.iter.check773
  %i.qc = and i64 %wide.trip.count.i403, 28
  %n.vec776 = and i64 %wide.trip.count.i403, 2147483616 ; 4 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.ph775, %vector.body777
  %index778 = phi i64 [ 0, %vector.ph775 ], [ %index.next787, %vector.body777 ] ; 2 uses
  %vec.phi779 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qh, %vector.body777 ]
  %vec.phi780 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qi, %vector.body777 ]
  %vec.phi781 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qj, %vector.body777 ]
  %vec.phi782 = phi <8 x i32> [ zeroinitializer, %vector.ph775 ], [ %i.qk, %vector.body777 ]
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index778 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 96
  %wide.load783 = load <8 x i32>, ptr %i.qd, align 4, !tbaa !9
  %wide.load784 = load <8 x i32>, ptr %i.qe, align 4, !tbaa !9
  %wide.load785 = load <8 x i32>, ptr %i.qf, align 4, !tbaa !9
  %wide.load786 = load <8 x i32>, ptr %i.qg, align 4, !tbaa !9
  %i.qh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load783, <8 x i32> %vec.phi779) ; 2 uses
  %i.qi = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load784, <8 x i32> %vec.phi780) ; 2 uses
  %i.qj = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load785, <8 x i32> %vec.phi781) ; 2 uses
  %i.qk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load786, <8 x i32> %vec.phi782) ; 2 uses
  %index.next787 = add nuw i64 %index778, 32      ; 2 uses
  %i.ql = icmp eq i64 %index.next787, %n.vec776
  br i1 %i.ql, label %middle.block788, label %vector.body777, !llvm.loop !77

middle.block788:                                  ; preds = %vector.body777
  %rdx.minmax789 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.qh, <8 x i32> %i.qi)
  %rdx.minmax790 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax789, <8 x i32> %i.qj)
  %rdx.minmax791 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax790, <8 x i32> %i.qk)
  %i.qm = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax791) ; 3 uses
  %cmp.n792 = icmp eq i64 %n.vec776, %wide.trip.count.i403
  br i1 %cmp.n792, label %_ZL4vmaxPKii.exit410, label %vec.epilog.iter.check797

vec.epilog.iter.check797:                         ; preds = %middle.block788
  %min.epilog.iters.check798 = icmp eq i64 %i.qc, 0
  br i1 %min.epilog.iters.check798, label %.lr.ph.i404.preheader, label %vec.epilog.ph799, !prof !89

vec.epilog.ph799:                                 ; preds = %vector.main.loop.iter.check773, %vec.epilog.iter.check797
  %vec.epilog.resume.val793 = phi i64 [ %n.vec776, %vec.epilog.iter.check797 ], [ 0, %vector.main.loop.iter.check773 ]
  %bc.merge.rdx794 = phi i32 [ %i.qm, %vec.epilog.iter.check797 ], [ 0, %vector.main.loop.iter.check773 ]
  %n.vec800 = and i64 %wide.trip.count.i403, 2147483644 ; 3 uses
  %broadcast.splatinsert801 = insertelement <4 x i32> poison, i32 %bc.merge.rdx794, i64 0
  %broadcast.splat802 = shufflevector <4 x i32> %broadcast.splatinsert801, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body803

vec.epilog.vector.body803:                        ; preds = %vec.epilog.vector.body803, %vec.epilog.ph799
  %index804 = phi i64 [ %vec.epilog.resume.val793, %vec.epilog.ph799 ], [ %index.next807, %vec.epilog.vector.body803 ] ; 2 uses
  %vec.phi805 = phi <4 x i32> [ %broadcast.splat802, %vec.epilog.ph799 ], [ %i.qo, %vec.epilog.vector.body803 ]
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index804
  %wide.load806 = load <4 x i32>, ptr %i.qn, align 4, !tbaa !9
  %i.qo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load806, <4 x i32> %vec.phi805) ; 2 uses
  %index.next807 = add nuw i64 %index804, 4       ; 2 uses
  %i.qp = icmp eq i64 %index.next807, %n.vec800
  br i1 %i.qp, label %vec.epilog.middle.block808, label %vec.epilog.vector.body803, !llvm.loop !78

vec.epilog.middle.block808:                       ; preds = %vec.epilog.vector.body803
  %i.qq = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.qo) ; 2 uses
  %cmp.n809 = icmp eq i64 %n.vec800, %wide.trip.count.i403
  br i1 %cmp.n809, label %_ZL4vmaxPKii.exit410, label %.lr.ph.i404.preheader

.lr.ph.i404.preheader:                            ; preds = %iter.check795, %vec.epilog.iter.check797, %vec.epilog.middle.block808
  %indvars.iv.i405.ph = phi i64 [ 0, %iter.check795 ], [ %n.vec776, %vec.epilog.iter.check797 ], [ %n.vec800, %vec.epilog.middle.block808 ]
  %.011.i406.ph = phi i32 [ 0, %iter.check795 ], [ %i.qm, %vec.epilog.iter.check797 ], [ %i.qq, %vec.epilog.middle.block808 ]
  br label %.lr.ph.i404

.lr.ph.i404:                                      ; preds = %.lr.ph.i404.preheader, %.lr.ph.i404
  %indvars.iv.i405 = phi i64 [ %indvars.iv.next.i408, %.lr.ph.i404 ], [ %indvars.iv.i405.ph, %.lr.ph.i404.preheader ] ; 2 uses
  %.011.i406 = phi i32 [ %spec.select.i407, %.lr.ph.i404 ], [ %.011.i406.ph, %.lr.ph.i404.preheader ]
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i405
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !9
  %spec.select.i407 = call i32 @llvm.smax.i32(i32 %i.qs, i32 %.011.i406) ; 2 uses
  %indvars.iv.next.i408 = add nuw nsw i64 %indvars.iv.i405, 1 ; 2 uses
  %exitcond.not.i409 = icmp eq i64 %indvars.iv.next.i408, %wide.trip.count.i403
  br i1 %exitcond.not.i409, label %_ZL4vmaxPKii.exit410, label %.lr.ph.i404, !llvm.loop !79

_ZL4vmaxPKii.exit410:                             ; preds = %.lr.ph.i404, %middle.block788, %vec.epilog.middle.block808, %_ZL4vmaxPKii.exit400
  %.0.lcssa.i401 = phi i32 [ 0, %_ZL4vmaxPKii.exit400 ], [ %i.qq, %vec.epilog.middle.block808 ], [ %i.qm, %middle.block788 ], [ %spec.select.i407, %.lr.ph.i404 ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.0.lcssa.i401, ptr %i.qt, align 4, !tbaa !9
  %i.qu = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.ie, ptr %i.qu, align 4, !tbaa !9
  %i.qv = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.ig, ptr %i.qv, align 4, !tbaa !9
  %i.qw = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.fr, ptr %i.qw, align 4, !tbaa !9
  %i.qx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %.0270, ptr %i.qx, align 4, !tbaa !9
  %i.qy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %2, ptr %i.qy, align 4, !tbaa !9
  %i.qz = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.ca, ptr %i.qz, align 16, !tbaa !19
  %i.ra = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.cg, ptr %i.ra, align 16, !tbaa !19
  br i1 %.lcssa472, label %iter.check836, label %_ZL4vmaxPKii.exit420

iter.check836:                                    ; preds = %_ZL4vmaxPKii.exit410
  %wide.trip.count.i413 = zext nneg i32 %.fr492 to i64 ; 6 uses
  %min.iters.check813 = icmp ult i32 %.fr492, 4
  br i1 %min.iters.check813, label %.lr.ph.i414.preheader, label %vector.main.loop.iter.check814

vector.main.loop.iter.check814:                   ; preds = %iter.check836
  %min.iters.check815 = icmp ult i32 %.fr492, 32
  br i1 %min.iters.check815, label %vec.epilog.ph840, label %vector.ph816

vector.ph816:                                     ; preds = %vector.main.loop.iter.check814
  %i.rb = and i64 %wide.trip.count.i413, 28
  %n.vec817 = and i64 %wide.trip.count.i413, 2147483616 ; 4 uses
  br label %vector.body818

vector.body818:                                   ; preds = %vector.ph816, %vector.body818
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next828, %vector.body818 ] ; 2 uses
  %vec.phi820 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.rg, %vector.body818 ]
  %vec.phi821 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.rh, %vector.body818 ]
  %vec.phi822 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.ri, %vector.body818 ]
  %vec.phi823 = phi <8 x i32> [ zeroinitializer, %vector.ph816 ], [ %i.rj, %vector.body818 ]
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index819 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 64
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 96
  %wide.load824 = load <8 x i32>, ptr %i.rc, align 4, !tbaa !9
  %wide.load825 = load <8 x i32>, ptr %i.rd, align 4, !tbaa !9
  %wide.load826 = load <8 x i32>, ptr %i.re, align 4, !tbaa !9
  %wide.load827 = load <8 x i32>, ptr %i.rf, align 4, !tbaa !9
  %i.rg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load824, <8 x i32> %vec.phi820) ; 2 uses
  %i.rh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load825, <8 x i32> %vec.phi821) ; 2 uses
  %i.ri = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load826, <8 x i32> %vec.phi822) ; 2 uses
  %i.rj = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load827, <8 x i32> %vec.phi823) ; 2 uses
  %index.next828 = add nuw i64 %index819, 32      ; 2 uses
  %i.rk = icmp eq i64 %index.next828, %n.vec817
  br i1 %i.rk, label %middle.block829, label %vector.body818, !llvm.loop !80

middle.block829:                                  ; preds = %vector.body818
  %rdx.minmax830 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rg, <8 x i32> %i.rh)
  %rdx.minmax831 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax830, <8 x i32> %i.ri)
  %rdx.minmax832 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax831, <8 x i32> %i.rj)
  %i.rl = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax832) ; 3 uses
  %cmp.n833 = icmp eq i64 %n.vec817, %wide.trip.count.i413
  br i1 %cmp.n833, label %_ZL4vmaxPKii.exit420, label %vec.epilog.iter.check838

vec.epilog.iter.check838:                         ; preds = %middle.block829
  %min.epilog.iters.check839 = icmp eq i64 %i.rb, 0
  br i1 %min.epilog.iters.check839, label %.lr.ph.i414.preheader, label %vec.epilog.ph840, !prof !89

vec.epilog.ph840:                                 ; preds = %vector.main.loop.iter.check814, %vec.epilog.iter.check838
  %vec.epilog.resume.val834 = phi i64 [ %n.vec817, %vec.epilog.iter.check838 ], [ 0, %vector.main.loop.iter.check814 ]
  %bc.merge.rdx835 = phi i32 [ %i.rl, %vec.epilog.iter.check838 ], [ 0, %vector.main.loop.iter.check814 ]
  %n.vec841 = and i64 %wide.trip.count.i413, 2147483644 ; 3 uses
  %broadcast.splatinsert842 = insertelement <4 x i32> poison, i32 %bc.merge.rdx835, i64 0
  %broadcast.splat843 = shufflevector <4 x i32> %broadcast.splatinsert842, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body844

vec.epilog.vector.body844:                        ; preds = %vec.epilog.vector.body844, %vec.epilog.ph840
  %index845 = phi i64 [ %vec.epilog.resume.val834, %vec.epilog.ph840 ], [ %index.next848, %vec.epilog.vector.body844 ] ; 2 uses
  %vec.phi846 = phi <4 x i32> [ %broadcast.splat843, %vec.epilog.ph840 ], [ %i.rn, %vec.epilog.vector.body844 ]
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index845
  %wide.load847 = load <4 x i32>, ptr %i.rm, align 4, !tbaa !9
  %i.rn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load847, <4 x i32> %vec.phi846) ; 2 uses
  %index.next848 = add nuw i64 %index845, 4       ; 2 uses
  %i.ro = icmp eq i64 %index.next848, %n.vec841
  br i1 %i.ro, label %vec.epilog.middle.block849, label %vec.epilog.vector.body844, !llvm.loop !81

vec.epilog.middle.block849:                       ; preds = %vec.epilog.vector.body844
  %i.rp = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.rn) ; 2 uses
  %cmp.n850 = icmp eq i64 %n.vec841, %wide.trip.count.i413
  br i1 %cmp.n850, label %_ZL4vmaxPKii.exit420, label %.lr.ph.i414.preheader

.lr.ph.i414.preheader:                            ; preds = %iter.check836, %vec.epilog.iter.check838, %vec.epilog.middle.block849
  %indvars.iv.i415.ph = phi i64 [ 0, %iter.check836 ], [ %n.vec817, %vec.epilog.iter.check838 ], [ %n.vec841, %vec.epilog.middle.block849 ]
  %.011.i416.ph = phi i32 [ 0, %iter.check836 ], [ %i.rl, %vec.epilog.iter.check838 ], [ %i.rp, %vec.epilog.middle.block849 ]
  br label %.lr.ph.i414

.lr.ph.i414:                                      ; preds = %.lr.ph.i414.preheader, %.lr.ph.i414
  %indvars.iv.i415 = phi i64 [ %indvars.iv.next.i418, %.lr.ph.i414 ], [ %indvars.iv.i415.ph, %.lr.ph.i414.preheader ] ; 2 uses
  %.011.i416 = phi i32 [ %spec.select.i417, %.lr.ph.i414 ], [ %.011.i416.ph, %.lr.ph.i414.preheader ]
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i415
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !9
  %spec.select.i417 = call i32 @llvm.smax.i32(i32 %i.rr, i32 %.011.i416) ; 2 uses
  %indvars.iv.next.i418 = add nuw nsw i64 %indvars.iv.i415, 1 ; 2 uses
  %exitcond.not.i419 = icmp eq i64 %indvars.iv.next.i418, %wide.trip.count.i413
  br i1 %exitcond.not.i419, label %_ZL4vmaxPKii.exit420, label %.lr.ph.i414, !llvm.loop !82

_ZL4vmaxPKii.exit420:                             ; preds = %.lr.ph.i414, %middle.block829, %vec.epilog.middle.block849, %_ZL4vmaxPKii.exit410
  %.0.lcssa.i411 = phi i32 [ 0, %_ZL4vmaxPKii.exit410 ], [ %i.rp, %vec.epilog.middle.block849 ], [ %i.rl, %middle.block829 ], [ %spec.select.i417, %.lr.ph.i414 ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %.0.lcssa.i411, ptr %i.rs, align 4, !tbaa !9
  %i.rt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.ov, ptr %i.rt, align 4, !tbaa !9
  %i.ru = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.qa, ptr %i.ru, align 4, !tbaa !9
  br i1 %.lcssa470, label %iter.check877, label %_ZL4vmaxPKii.exit430

iter.check877:                                    ; preds = %_ZL4vmaxPKii.exit420
  %wide.trip.count.i423 = zext nneg i32 %.fr to i64 ; 6 uses
  %min.iters.check854 = icmp ult i32 %.fr, 4
  br i1 %min.iters.check854, label %.lr.ph.i424.preheader, label %vector.main.loop.iter.check855

vector.main.loop.iter.check855:                   ; preds = %iter.check877
  %min.iters.check856 = icmp ult i32 %.fr, 32
  br i1 %min.iters.check856, label %vec.epilog.ph881, label %vector.ph857

vector.ph857:                                     ; preds = %vector.main.loop.iter.check855
  %i.rv = and i64 %wide.trip.count.i423, 28
  %n.vec858 = and i64 %wide.trip.count.i423, 2147483616 ; 4 uses
  br label %vector.body859

vector.body859:                                   ; preds = %vector.ph857, %vector.body859
  %index860 = phi i64 [ 0, %vector.ph857 ], [ %index.next869, %vector.body859 ] ; 2 uses
  %vec.phi861 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.sa, %vector.body859 ]
  %vec.phi862 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.sb, %vector.body859 ]
  %vec.phi863 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.sc, %vector.body859 ]
  %vec.phi864 = phi <8 x i32> [ zeroinitializer, %vector.ph857 ], [ %i.sd, %vector.body859 ]
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index860 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 64
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 96
  %wide.load865 = load <8 x i32>, ptr %i.rw, align 4, !tbaa !9
  %wide.load866 = load <8 x i32>, ptr %i.rx, align 4, !tbaa !9
  %wide.load867 = load <8 x i32>, ptr %i.ry, align 4, !tbaa !9
  %wide.load868 = load <8 x i32>, ptr %i.rz, align 4, !tbaa !9
  %i.sa = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load865, <8 x i32> %vec.phi861) ; 2 uses
  %i.sb = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load866, <8 x i32> %vec.phi862) ; 2 uses
  %i.sc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load867, <8 x i32> %vec.phi863) ; 2 uses
  %i.sd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load868, <8 x i32> %vec.phi864) ; 2 uses
  %index.next869 = add nuw i64 %index860, 32      ; 2 uses
  %i.se = icmp eq i64 %index.next869, %n.vec858
  br i1 %i.se, label %middle.block870, label %vector.body859, !llvm.loop !83

middle.block870:                                  ; preds = %vector.body859
  %rdx.minmax871 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.sa, <8 x i32> %i.sb)
  %rdx.minmax872 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax871, <8 x i32> %i.sc)
  %rdx.minmax873 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax872, <8 x i32> %i.sd)
  %i.sf = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax873) ; 3 uses
  %cmp.n874 = icmp eq i64 %n.vec858, %wide.trip.count.i423
  br i1 %cmp.n874, label %_ZL4vmaxPKii.exit430, label %vec.epilog.iter.check879

vec.epilog.iter.check879:                         ; preds = %middle.block870
  %min.epilog.iters.check880 = icmp eq i64 %i.rv, 0
  br i1 %min.epilog.iters.check880, label %.lr.ph.i424.preheader, label %vec.epilog.ph881, !prof !89

vec.epilog.ph881:                                 ; preds = %vector.main.loop.iter.check855, %vec.epilog.iter.check879
  %vec.epilog.resume.val875 = phi i64 [ %n.vec858, %vec.epilog.iter.check879 ], [ 0, %vector.main.loop.iter.check855 ]
  %bc.merge.rdx876 = phi i32 [ %i.sf, %vec.epilog.iter.check879 ], [ 0, %vector.main.loop.iter.check855 ]
  %n.vec882 = and i64 %wide.trip.count.i423, 2147483644 ; 3 uses
  %broadcast.splatinsert883 = insertelement <4 x i32> poison, i32 %bc.merge.rdx876, i64 0
  %broadcast.splat884 = shufflevector <4 x i32> %broadcast.splatinsert883, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body885

vec.epilog.vector.body885:                        ; preds = %vec.epilog.vector.body885, %vec.epilog.ph881
  %index886 = phi i64 [ %vec.epilog.resume.val875, %vec.epilog.ph881 ], [ %index.next889, %vec.epilog.vector.body885 ] ; 2 uses
  %vec.phi887 = phi <4 x i32> [ %broadcast.splat884, %vec.epilog.ph881 ], [ %i.sh, %vec.epilog.vector.body885 ]
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index886
  %wide.load888 = load <4 x i32>, ptr %i.sg, align 4, !tbaa !9
  %i.sh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load888, <4 x i32> %vec.phi887) ; 2 uses
  %index.next889 = add nuw i64 %index886, 4       ; 2 uses
  %i.si = icmp eq i64 %index.next889, %n.vec882
  br i1 %i.si, label %vec.epilog.middle.block890, label %vec.epilog.vector.body885, !llvm.loop !84

vec.epilog.middle.block890:                       ; preds = %vec.epilog.vector.body885
  %i.sj = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.sh) ; 2 uses
  %cmp.n891 = icmp eq i64 %n.vec882, %wide.trip.count.i423
  br i1 %cmp.n891, label %_ZL4vmaxPKii.exit430, label %.lr.ph.i424.preheader

.lr.ph.i424.preheader:                            ; preds = %iter.check877, %vec.epilog.iter.check879, %vec.epilog.middle.block890
  %indvars.iv.i425.ph = phi i64 [ 0, %iter.check877 ], [ %n.vec858, %vec.epilog.iter.check879 ], [ %n.vec882, %vec.epilog.middle.block890 ]
  %.011.i426.ph = phi i32 [ 0, %iter.check877 ], [ %i.sf, %vec.epilog.iter.check879 ], [ %i.sj, %vec.epilog.middle.block890 ]
  br label %.lr.ph.i424

.lr.ph.i424:                                      ; preds = %.lr.ph.i424.preheader, %.lr.ph.i424
  %indvars.iv.i425 = phi i64 [ %indvars.iv.next.i428, %.lr.ph.i424 ], [ %indvars.iv.i425.ph, %.lr.ph.i424.preheader ] ; 2 uses
  %.011.i426 = phi i32 [ %spec.select.i427, %.lr.ph.i424 ], [ %.011.i426.ph, %.lr.ph.i424.preheader ]
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i425
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !9
  %spec.select.i427 = call i32 @llvm.smax.i32(i32 %i.sl, i32 %.011.i426) ; 2 uses
  %indvars.iv.next.i428 = add nuw nsw i64 %indvars.iv.i425, 1 ; 2 uses
  %exitcond.not.i429 = icmp eq i64 %indvars.iv.next.i428, %wide.trip.count.i423
  br i1 %exitcond.not.i429, label %_ZL4vmaxPKii.exit430, label %.lr.ph.i424, !llvm.loop !85

_ZL4vmaxPKii.exit430:                             ; preds = %.lr.ph.i424, %middle.block870, %vec.epilog.middle.block890, %_ZL4vmaxPKii.exit420
  %.0.lcssa.i421 = phi i32 [ 0, %_ZL4vmaxPKii.exit420 ], [ %i.sj, %vec.epilog.middle.block890 ], [ %i.sf, %middle.block870 ], [ %spec.select.i427, %.lr.ph.i424 ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.0.lcssa.i421, ptr %i.sm, align 4, !tbaa !9
  %i.sn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.pr, ptr %i.sn, align 4, !tbaa !9
  %i.so = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ic
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %_ZL4vmaxPKii.exit430, %_ZL4vmaxPKii.exit370
  %.sink571 = phi i32 [ %i.sp, %_ZL4vmaxPKii.exit430 ], [ %i.lq, %_ZL4vmaxPKii.exit370 ]
  %.sink570 = phi ptr [ %i.bw, %_ZL4vmaxPKii.exit430 ], [ %i.br, %_ZL4vmaxPKii.exit370 ]
  %.sink569 = phi ptr [ %i.cc, %_ZL4vmaxPKii.exit430 ], [ %i.cb, %_ZL4vmaxPKii.exit370 ]
  %.sink568 = phi ptr [ %i.bz, %_ZL4vmaxPKii.exit430 ], [ %i.by, %_ZL4vmaxPKii.exit370 ]
  %.sink567 = phi ptr [ %i.cf, %_ZL4vmaxPKii.exit430 ], [ %i.ce, %_ZL4vmaxPKii.exit370 ]
  %i.sq = phi i32 [ %.0270, %_ZL4vmaxPKii.exit430 ], [ %.0269, %_ZL4vmaxPKii.exit370 ]
  %i.sr = phi i32 [ %.0.lcssa.i391, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i331, %_ZL4vmaxPKii.exit370 ]
  %i.ss = phi i32 [ %.0.lcssa.i371460, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i457, %_ZL4vmaxPKii.exit370 ]
  %i.st = phi i32 [ %.0.lcssa.i411, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i351, %_ZL4vmaxPKii.exit370 ]
  %i.su = phi i32 [ %i.ov, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i341, %_ZL4vmaxPKii.exit370 ]
  %i.sv = phi i32 [ %.0.lcssa.i381, %_ZL4vmaxPKii.exit430 ], [ %i.hy, %_ZL4vmaxPKii.exit370 ]
  %i.sw = phi i32 [ %.0.lcssa.i421, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i361, %_ZL4vmaxPKii.exit370 ]
  %i.sx = phi i32 [ %.0.lcssa.i401, %_ZL4vmaxPKii.exit430 ], [ %i.jr, %_ZL4vmaxPKii.exit370 ]
  %i.sy = phi i32 [ %i.ie, %_ZL4vmaxPKii.exit430 ], [ %.0.lcssa.i321, %_ZL4vmaxPKii.exit370 ]
  %i.sz = phi i32 [ %.fr, %_ZL4vmaxPKii.exit430 ], [ %.fr492, %_ZL4vmaxPKii.exit370 ]
  %i.ta = phi i32 [ %.fr492, %_ZL4vmaxPKii.exit430 ], [ %.fr, %_ZL4vmaxPKii.exit370 ]
  %i.tb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.sink571, ptr %i.tb, align 4, !tbaa !9
  call void @free(ptr noundef nonnull %.sink570) #13
  call void @free(ptr noundef nonnull %.sink569) #13
  call void @free(ptr noundef nonnull %.sink568) #13
  call void @free(ptr noundef nonnull %.sink567) #13
  %i.tc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 -1, ptr %i.tc, align 4, !tbaa !9
  %i.td = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -1, ptr %i.td, align 4, !tbaa !9
  %i.te = mul nsw i32 %i.sv, %i.ss
  %i.tf = mul nsw i32 %i.te, %i.sy
  %i.tg = mul nsw i32 %i.tf, %i.ta
  %i.th = mul nsw i32 %i.su, %i.sr
  %i.ti = mul nsw i32 %i.th, %i.sx
  %i.tj = mul nsw i32 %i.ti, %i.sz
  %i.tk = mul i32 %i.sw, %i.st
  %i.tl = mul i32 %i.tk, %i.sq
  %i.tm = call i32 @llvm.smax.i32(i32 %i.tj, i32 %i.tl)
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.tg, i32 %i.tm) ; 2 uses
  %i.tn = and i32 %4, 64
  %.not295 = icmp eq i32 %i.tn, 0
  br i1 %.not295, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.to = sext i32 %.sroa.speculated to i64       ; 4 uses
  %i.tp = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 438, i64 noundef range(i64 -2147483648, 2147483648) %i.to, i64 noundef 8, i64 noundef 32) ; 3 uses
  %i.tq = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 440, i64 noundef range(i64 -2147483648, 2147483648) %i.to, i64 noundef 8, i64 noundef 32) ; 3 uses
  %i.tr = icmp sgt i32 %9, 1
  br i1 %i.tr, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ts = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 444, i64 noundef range(i64 -2147483648, 2147483648) %i.to, i64 noundef 8, i64 noundef 32)
  %i.tt = call noundef ptr @_Z19save_calloc_alignedPKcS0_immm(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef 445, i64 noundef range(i64 -2147483648, 2147483648) %i.to, i64 noundef 8, i64 noundef 32)
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.tu = load ptr, ptr %5, align 8, !tbaa !90    ; 3 uses
  %i.tv = load ptr, ptr %6, align 8, !tbaa !90    ; 3 uses
  %i.tw = icmp sgt i32 %9, 1
  br i1 %i.tw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.tx = load ptr, ptr %7, align 8, !tbaa !90
  %i.ty = load ptr, ptr %8, align 8, !tbaa !90
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.v, %bb.y, %bb.w
  %.0455 = phi ptr [ %i.tq, %bb.w ], [ %i.tq, %bb.v ], [ %i.tv, %bb.y ], [ %i.tv, %bb.x ] ; 5 uses
  %.0454 = phi ptr [ %i.ts, %bb.w ], [ %i.tp, %bb.v ], [ %i.tx, %bb.y ], [ %i.tu, %bb.x ] ; 2 uses
  %.0453 = phi ptr [ %i.tt, %bb.w ], [ %i.tq, %bb.v ], [ %i.ty, %bb.y ], [ %i.tv, %bb.x ] ; 2 uses
  %.0 = phi ptr [ %i.tp, %bb.w ], [ %i.tp, %bb.v ], [ %i.tu, %bb.y ], [ %i.tu, %bb.x ] ; 5 uses
  %i.tz = call noalias dereferenceable_or_null(336) ptr @calloc(i64 noundef 1, i64 noundef 336) #20 ; 3 uses
  store ptr %i.tz, ptr %i.t, align 8, !tbaa !22
  %i.ua = load ptr, ptr @debug, align 8, !tbaa !14 ; 2 uses
  %.not296 = icmp eq ptr %i.ua, null
  br i1 %.not296, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ub = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ua, ptr noundef nonnull @.str.8, i32 noundef %9) #13 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.uc = and i32 %4, 32
  %i.ud = icmp eq i32 %i.uc, 0
  %i.ue = load i32, ptr %i.c, align 4
  %i.uf = icmp slt i32 %i.ue, 2
  %or.cond6.not301 = select i1 %i.ud, i1 %i.uf, i1 false
  %i.ug = load i32, ptr %i.bs, align 4
  %i.uh = icmp slt i32 %i.ug, 2
  %or.cond9.not298 = select i1 %or.cond6.not301, i1 %i.uh, i1 false
  %i.ui = icmp eq i32 %9, 1
  %or.cond11 = and i1 %or.cond9.not298, %i.ui
  br i1 %or.cond11, label %bb.ac, label %bb.at

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.uj = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull @_ZL14big_fftw_mutex) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.uj, 0
  br i1 %.not.i, label %_ZNSt5mutex4lockEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.uj) #21
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.uk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ul = extractvalue { ptr, i32 } %i.uk, 1
  %i.um = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #13
  %i.un = icmp eq i32 %i.ul, %i.um
  br i1 %i.un, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.uo = extractvalue { ptr, i32 } %i.uk, 0
  %i.up = call ptr @__cxa_begin_catch(ptr %i.uo) #13
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.up) #21
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.uq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.bb

_ZNSt5mutex4lockEv.exit:                          ; preds = %bb.ac
  %i.ur = shl i32 %4, 2
  %i.us = and i32 %i.ur, 64
  %i.ut = or disjoint i32 %i.us, 1                ; 3 uses
  %.pre524 = and i32 %4, 2                        ; 2 uses
  %.not306 = icmp eq i32 %.pre524, 0              ; 2 uses
  br i1 %.not291, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt5mutex4lockEv.exit
  br i1 %.not306, label %.thread547, label %bb.aj

.thread547:                                       ; preds = %bb.ai
  %i.uu = shl nsw i32 %.0268, 1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not294, label %.thread537.thread, label %.thread537.thread561

.thread537.thread:                                ; preds = %bb.aj
  %i.uv = shl nsw i32 %.0269, 1
  br label %bb.am

.thread537.thread561:                             ; preds = %bb.aj
  %i.uw = shl nsw i32 %.0270, 1
  br label %bb.an

bb.ak:                                            ; preds = %_ZNSt5mutex4lockEv.exit
  br i1 %.not306, label %bb.al, label %.thread537

bb.al:                                            ; preds = %.thread547, %bb.ak
  %.0265554 = phi i32 [ %i.uu, %.thread547 ], [ %.0268, %bb.ak ] ; 2 uses
  store i32 %.0270, ptr %11, align 16, !tbaa !92
  %i.ux = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %.0269, ptr %i.ux, align 4, !tbaa !92
end_hunk_0
