Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat2c?download=true
inline.NumInlined: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@dmake_:bb.a
  %i.kh = getelementptr [8 x i8], ptr %i.f, i64 %i.kg
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.prol.preheader985
  %indvars.iv457.prol = phi i64 [ %i.ka, %.prol.preheader985 ], [ %indvars.iv.next458.prol, %bb.aa ] ; 3 uses
  %prol.iter989 = phi i32 [ 0, %.prol.preheader985 ], [ %prol.iter989.next, %bb.aa ]
  %gep585.prol = getelementptr [8 x i8], ptr %invariant.gep584, i64 %indvars.iv457.prol
  %i.ki = load double, ptr %gep585.prol, align 8, !tbaa !14
  %i.kj = getelementptr [8 x i8], ptr %i.kh, i64 %indvars.iv457.prol
  store double %i.ki, ptr %i.kj, align 8, !tbaa !14
  %indvars.iv.next458.prol = add nsw i64 %indvars.iv457.prol, 1 ; 2 uses
  %prol.iter989.next = add i32 %prol.iter989, 1   ; 2 uses
  %prol.iter989.cmp.not = icmp eq i32 %prol.iter989.next, %xtraiter987
  br i1 %prol.iter989.cmp.not, label %.prol.loopexit986, label %bb.aa, !llvm.loop !242

.prol.loopexit986:                                ; preds = %bb.aa, %.lr.ph344
  %indvars.iv457.unr = phi i64 [ %i.ka, %.lr.ph344 ], [ %indvars.iv.next458.prol, %bb.aa ]
  %i.kk = icmp ult i32 %i.kd, 3
  br i1 %i.kk, label %._crit_edge345, label %.lr.ph344.new

.lr.ph344.new:                                    ; preds = %.prol.loopexit986
  %i.kl = load i32, ptr %8, align 4, !tbaa !10    ; 4 uses
  %i.km = sext i32 %i.kl to i64
  %i.kn = mul nsw i64 %i.jz, %i.km
  %i.ko = getelementptr [8 x i8], ptr %i.f, i64 %i.kn
  %i.kp = sext i32 %i.kl to i64
  %i.kq = mul nsw i64 %i.jz, %i.kp
  %i.kr = getelementptr [8 x i8], ptr %i.f, i64 %i.kq
  %i.ks = sext i32 %i.kl to i64
  %i.kt = mul nsw i64 %i.jz, %i.ks
  %i.ku = getelementptr [8 x i8], ptr %i.f, i64 %i.kt
  %i.kv = sext i32 %i.kl to i64
  %i.kw = mul nsw i64 %i.jz, %i.kv
  %i.kx = getelementptr [8 x i8], ptr %i.f, i64 %i.kw
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph344.new
  %indvars.iv457 = phi i64 [ %indvars.iv457.unr, %.lr.ph344.new ], [ %indvars.iv.next458.3, %bb.ab ] ; 6 uses
  %gep585 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %indvars.iv457
  %i.ky = load double, ptr %gep585, align 8, !tbaa !14
  %i.kz = getelementptr [8 x i8], ptr %i.ko, i64 %indvars.iv457
  store double %i.ky, ptr %i.kz, align 8, !tbaa !14
  %indvars.iv.next458 = add nsw i64 %indvars.iv457, 1 ; 2 uses
  %gep585.1 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %indvars.iv.next458
  %i.la = load double, ptr %gep585.1, align 8, !tbaa !14
  %i.lb = getelementptr [8 x i8], ptr %i.kr, i64 %indvars.iv.next458
  store double %i.la, ptr %i.lb, align 8, !tbaa !14
  %indvars.iv.next458.1 = add nsw i64 %indvars.iv457, 2 ; 2 uses
  %gep585.2 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %indvars.iv.next458.1
  %i.lc = load double, ptr %gep585.2, align 8, !tbaa !14
  %i.ld = getelementptr [8 x i8], ptr %i.ku, i64 %indvars.iv.next458.1
  store double %i.lc, ptr %i.ld, align 8, !tbaa !14
  %indvars.iv.next458.2 = add nsw i64 %indvars.iv457, 3 ; 2 uses
  %gep585.3 = getelementptr [8 x i8], ptr %invariant.gep584, i64 %indvars.iv.next458.2
  %i.le = load double, ptr %gep585.3, align 8, !tbaa !14
  %i.lf = getelementptr [8 x i8], ptr %i.kx, i64 %indvars.iv.next458.2
  store double %i.le, ptr %i.lf, align 8, !tbaa !14
  %indvars.iv.next458.3 = add nsw i64 %indvars.iv457, 4 ; 2 uses
  %i.lg = trunc i64 %indvars.iv.next458.3 to i32
  %exitcond461.not.3 = icmp eq i32 %i.kb, %i.lg
  br i1 %exitcond461.not.3, label %._crit_edge345, label %bb.ab, !llvm.loop !243

._crit_edge345:                                   ; preds = %.prol.loopexit986, %bb.ab, %._crit_edge340.._crit_edge345_crit_edge
  %storemerge185347.pre-phi = phi i32 [ %.pre496, %._crit_edge340.._crit_edge345_crit_edge ], [ %i.kb, %bb.ab ], [ %i.kb, %.prol.loopexit986 ] ; 5 uses
  %i.lh = load i32, ptr %8, align 4, !tbaa !10    ; 3 uses
  %.not186.not348 = icmp slt i32 %storemerge185.in346541, %i.lh
  br i1 %.not186.not348, label %iter.check778, label %._crit_edge352

iter.check778:                                    ; preds = %._crit_edge345
  %i.li = trunc i64 %indvars.iv462 to i32
  %i.lj = add i32 %i.li, -1                       ; 3 uses
  %i.lk = sub i32 %i.lh, %storemerge185.in346541  ; 7 uses
  %min.iters.check752 = icmp ult i32 %i.lk, 4
  br i1 %min.iters.check752, label %vec.epilog.scalar.ph779.preheader, label %vector.main.loop.iter.check753

vector.main.loop.iter.check753:                   ; preds = %iter.check778
  %min.iters.check754 = icmp ult i32 %i.lk, 16
  br i1 %min.iters.check754, label %vec.epilog.ph782, label %vector.ph755

vector.ph755:                                     ; preds = %vector.main.loop.iter.check753
  %i.ll = and i32 %i.lk, 12
  %n.vec756 = and i32 %i.lk, -16                  ; 4 uses
  %i.lm = add i32 %storemerge185347.pre-phi, %n.vec756 ; 2 uses
  %broadcast.splatinsert757 = insertelement <4 x i32> poison, i32 %storemerge185347.pre-phi, i64 0
  %broadcast.splat758 = shufflevector <4 x i32> %broadcast.splatinsert757, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction759 = add nsw <4 x i32> %broadcast.splat758, <i32 0, i32 1, i32 2, i32 3>
  %i.ln = load i32, ptr %8, align 4, !tbaa !10
  %i.lo = mul nsw i32 %i.ln, %i.lj
  %broadcast.splatinsert766 = insertelement <4 x i32> poison, i32 %i.lo, i64 0
  %broadcast.splat767 = shufflevector <4 x i32> %broadcast.splatinsert766, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op1039 = add <4 x i32> splat (i32 4), %broadcast.splat767
  %invariant.op1041 = add <4 x i32> splat (i32 8), %broadcast.splat767
  %invariant.op1043 = add <4 x i32> splat (i32 12), %broadcast.splat767
  br label %vector.body760

vector.body760:                                   ; preds = %vector.body760, %vector.ph755
  %index761 = phi i32 [ 0, %vector.ph755 ], [ %index.next772, %vector.body760 ]
  %vec.ind762 = phi <4 x i32> [ %induction759, %vector.ph755 ], [ %vec.ind.next773, %vector.body760 ] ; 5 uses
  %i.lp = add nsw <4 x i32> %broadcast.splat767, %vec.ind762
  %.reass1040 = add <4 x i32> %vec.ind762, %invariant.op1039
  %.reass1042 = add <4 x i32> %vec.ind762, %invariant.op1041
  %.reass1044 = add <4 x i32> %vec.ind762, %invariant.op1043
  %i.lq = sext <4 x i32> %i.lp to <4 x i64>
  %i.lr = sext <4 x i32> %.reass1040 to <4 x i64>
  %i.ls = sext <4 x i32> %.reass1042 to <4 x i64>
  %i.lt = sext <4 x i32> %.reass1044 to <4 x i64>
  %wide.gep768 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.lq
  %wide.gep769 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.lr
  %wide.gep770 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.ls
  %wide.gep771 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.lt
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep768, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep769, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep770, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep771, <4 x i1> splat (i1 true)), !tbaa !14
  %index.next772 = add nuw i32 %index761, 16      ; 2 uses
  %vec.ind.next773 = add nsw <4 x i32> %vec.ind762, splat (i32 16)
  %i.lu = icmp eq i32 %index.next772, %n.vec756
  br i1 %i.lu, label %middle.block774, label %vector.body760, !llvm.loop !244

middle.block774:                                  ; preds = %vector.body760
  %cmp.n775 = icmp eq i32 %i.lk, %n.vec756
  br i1 %cmp.n775, label %._crit_edge352, label %vec.epilog.iter.check780

vec.epilog.iter.check780:                         ; preds = %middle.block774
  %min.epilog.iters.check781 = icmp eq i32 %i.ll, 0
  br i1 %min.epilog.iters.check781, label %vec.epilog.scalar.ph779.preheader, label %vec.epilog.ph782, !prof !18

vec.epilog.ph782:                                 ; preds = %vector.main.loop.iter.check753, %vec.epilog.iter.check780
  %vec.epilog.resume.val776 = phi i32 [ %n.vec756, %vec.epilog.iter.check780 ], [ 0, %vector.main.loop.iter.check753 ]
  %bc.resume.val777 = phi i32 [ %i.lm, %vec.epilog.iter.check780 ], [ %storemerge185347.pre-phi, %vector.main.loop.iter.check753 ]
  %n.vec783 = and i32 %i.lk, -4                   ; 3 uses
  %i.lv = add i32 %storemerge185347.pre-phi, %n.vec783
  %broadcast.splatinsert784 = insertelement <4 x i32> poison, i32 %bc.resume.val777, i64 0
  %broadcast.splat785 = shufflevector <4 x i32> %broadcast.splatinsert784, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction786 = add nsw <4 x i32> %broadcast.splat785, <i32 0, i32 1, i32 2, i32 3>
  %i.lw = load i32, ptr %8, align 4, !tbaa !10
  %i.lx = mul nsw i32 %i.lw, %i.lj
  %broadcast.splatinsert790 = insertelement <4 x i32> poison, i32 %i.lx, i64 0
  %broadcast.splat791 = shufflevector <4 x i32> %broadcast.splatinsert790, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body787

vec.epilog.vector.body787:                        ; preds = %vec.epilog.vector.body787, %vec.epilog.ph782
  %index788 = phi i32 [ %vec.epilog.resume.val776, %vec.epilog.ph782 ], [ %index.next793, %vec.epilog.vector.body787 ]
  %vec.ind789 = phi <4 x i32> [ %induction786, %vec.epilog.ph782 ], [ %vec.ind.next794, %vec.epilog.vector.body787 ] ; 2 uses
  %i.ly = add nsw <4 x i32> %broadcast.splat791, %vec.ind789
  %i.lz = sext <4 x i32> %i.ly to <4 x i64>
  %wide.gep792 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.lz
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep792, <4 x i1> splat (i1 true)), !tbaa !14
  %index.next793 = add nuw i32 %index788, 4       ; 2 uses
  %vec.ind.next794 = add nsw <4 x i32> %vec.ind789, splat (i32 4)
  %i.ma = icmp eq i32 %index.next793, %n.vec783
  br i1 %i.ma, label %vec.epilog.middle.block795, label %vec.epilog.vector.body787, !llvm.loop !245

vec.epilog.middle.block795:                       ; preds = %vec.epilog.vector.body787
  %cmp.n796 = icmp eq i32 %i.lk, %n.vec783
  br i1 %cmp.n796, label %._crit_edge352, label %vec.epilog.scalar.ph779.preheader

vec.epilog.scalar.ph779.preheader:                ; preds = %iter.check778, %vec.epilog.iter.check780, %vec.epilog.middle.block795
  %storemerge185.in.ph = phi i32 [ %storemerge185347.pre-phi, %iter.check778 ], [ %i.lm, %vec.epilog.iter.check780 ], [ %i.lv, %vec.epilog.middle.block795 ]
  %i.mb = load i32, ptr %8, align 4, !tbaa !10
  %i.mc = mul nsw i32 %i.mb, %i.lj
  br label %vec.epilog.scalar.ph779

vec.epilog.scalar.ph779:                          ; preds = %vec.epilog.scalar.ph779.preheader, %vec.epilog.scalar.ph779
  %storemerge185.in = phi i32 [ %storemerge185, %vec.epilog.scalar.ph779 ], [ %storemerge185.in.ph, %vec.epilog.scalar.ph779.preheader ] ; 3 uses
  %i.md = add nsw i32 %i.mc, %storemerge185.in
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.me
  store double -1.000000e+10, ptr %i.mf, align 8, !tbaa !14
  %storemerge185 = add nsw i32 %storemerge185.in, 1
  %.not186.not = icmp slt i32 %storemerge185.in, %i.lh
  br i1 %.not186.not, label %vec.epilog.scalar.ph779, label %._crit_edge352, !llvm.loop !246

._crit_edge352:                                   ; preds = %vec.epilog.scalar.ph779, %middle.block774, %vec.epilog.middle.block795, %._crit_edge345
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 3 uses
  %i.mg = trunc nsw i64 %indvars.iv.next463 to i32
  store i32 %i.mg, ptr @dmake_.j, align 4, !tbaa !10
  %exitcond467.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count466
  %indvar.next799 = add i32 %indvar798, 1
  br i1 %exitcond467.not, label %.loopexit, label %bb.y, !llvm.loop !247

.tail231:                                         ; preds = %.tail223
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.mi = load i8, ptr %i.mh, align 1
  %i.mj = icmp eq i8 %i.mi, 98
  br i1 %i.mj, label %bb.ac, label %.tail239

.tail235:                                         ; preds = %.tail227
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ml = load i8, ptr %i.mk, align 1
  %i.mm = icmp eq i8 %i.ml, 98
  br i1 %i.mm, label %bb.ac, label %.tail243

bb.ac:                                            ; preds = %.tail235, %.tail231
  %i.mn = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dmake_.j, align 4, !tbaa !10
  %.not163331 = icmp slt i32 %i.mn, 1
  br i1 %.not163331, label %.loopexit, label %.lr.ph335

.lr.ph335:                                        ; preds = %bb.ac
  %. = add nuw nsw i32 %.fr407, 1
  %storemerge162332412 = add i32 %i.c, 1
  %i.mo = xor i32 %.fr407, 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph335, %._crit_edge329
  %storemerge162.neg333 = phi i32 [ -1, %.lr.ph335 ], [ %storemerge162.neg, %._crit_edge329 ] ; 2 uses
  %storemerge162332 = phi i32 [ 1, %.lr.ph335 ], [ %i.qf, %._crit_edge329 ] ; 7 uses
  %i.mp = load i32, ptr %9, align 4, !tbaa !10    ; 4 uses
  br i1 %.not157521, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.neg410 = xor i32 %i.mp, -1
  %i.mq = add nsw i32 %storemerge162.neg333, 2
  %i.mr = add i32 %i.mq, %i.mp
  %i.ms = tail call i32 @llvm.smax.i32(i32 %i.mr, i32 1)
  %.606 = add nsw i32 %i.mp, %i.mo
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.mt = add nsw i32 %i.mp, 1
  %i.mu = load i32, ptr %3, align 4, !tbaa !10
  %i.mv = add nsw i32 %storemerge162.neg333, 1
  %i.mw = add i32 %i.mv, %i.mu
  %i.mx = tail call i32 @llvm.smin.i32(i32 %i.mt, i32 %i.mw)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sink605 = phi i32 [ %.606, %bb.ae ], [ %i.mx, %bb.af ] ; 7 uses
  %.330 = phi i32 [ %i.ms, %bb.ae ], [ %., %bb.af ] ; 9 uses
  %.neg411 = phi i32 [ %.neg410, %bb.ae ], [ -1, %bb.af ]
  %.not170.not313 = icmp sgt i32 %.330, 1
  br i1 %.not170.not313, label %iter.check732, label %._crit_edge317

iter.check732:                                    ; preds = %bb.ag
  %i.my = add nsw i32 %storemerge162332, -1       ; 3 uses
  %i.mz = add nsw i32 %.330, -1                   ; 5 uses
  %min.iters.check709 = icmp ult i32 %.330, 5
  br i1 %min.iters.check709, label %vec.epilog.scalar.ph733.preheader, label %vector.main.loop.iter.check710

vector.main.loop.iter.check710:                   ; preds = %iter.check732
  %min.iters.check711 = icmp ult i32 %.330, 17
  br i1 %min.iters.check711, label %vec.epilog.ph736, label %vector.ph712

vector.ph712:                                     ; preds = %vector.main.loop.iter.check710
  %i.na = and i32 %i.mz, 12
  %n.vec713 = and i32 %i.mz, -16                  ; 4 uses
  %i.nb = or disjoint i32 %n.vec713, 1            ; 2 uses
  %i.nc = load i32, ptr %8, align 4, !tbaa !10
  %i.nd = mul nsw i32 %i.nc, %i.my
  %broadcast.splatinsert720 = insertelement <4 x i32> poison, i32 %i.nd, i64 0
  %broadcast.splat721 = shufflevector <4 x i32> %broadcast.splatinsert720, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op1010 = add <4 x i32> splat (i32 4), %broadcast.splat721
  %invariant.op1012 = add <4 x i32> splat (i32 8), %broadcast.splat721
  %invariant.op1014 = add <4 x i32> splat (i32 12), %broadcast.splat721
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph712
  %index715 = phi i32 [ 0, %vector.ph712 ], [ %index.next726, %vector.body714 ]
  %vec.ind716 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph712 ], [ %vec.ind.next727, %vector.body714 ] ; 5 uses
  %i.ne = add nsw <4 x i32> %broadcast.splat721, %vec.ind716
  %.reass1011 = add <4 x i32> %vec.ind716, %invariant.op1010
  %.reass1013 = add <4 x i32> %vec.ind716, %invariant.op1012
  %.reass1015 = add <4 x i32> %vec.ind716, %invariant.op1014
  %i.nf = sext <4 x i32> %i.ne to <4 x i64>
  %i.ng = sext <4 x i32> %.reass1011 to <4 x i64>
  %i.nh = sext <4 x i32> %.reass1013 to <4 x i64>
  %i.ni = sext <4 x i32> %.reass1015 to <4 x i64>
  %wide.gep722 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.nf
  %wide.gep723 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.ng
  %wide.gep724 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.nh
  %wide.gep725 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.ni
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep722, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep723, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep724, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep725, <4 x i1> splat (i1 true)), !tbaa !14
  %index.next726 = add nuw i32 %index715, 16      ; 2 uses
  %vec.ind.next727 = add nuw nsw <4 x i32> %vec.ind716, splat (i32 16)
  %i.nj = icmp eq i32 %index.next726, %n.vec713
  br i1 %i.nj, label %middle.block728, label %vector.body714, !llvm.loop !248

middle.block728:                                  ; preds = %vector.body714
  %cmp.n729 = icmp eq i32 %i.mz, %n.vec713
  br i1 %cmp.n729, label %._crit_edge317, label %vec.epilog.iter.check734

vec.epilog.iter.check734:                         ; preds = %middle.block728
  %min.epilog.iters.check735 = icmp eq i32 %i.na, 0
  br i1 %min.epilog.iters.check735, label %vec.epilog.scalar.ph733.preheader, label %vec.epilog.ph736, !prof !18

vec.epilog.ph736:                                 ; preds = %vector.main.loop.iter.check710, %vec.epilog.iter.check734
  %vec.epilog.resume.val730 = phi i32 [ %n.vec713, %vec.epilog.iter.check734 ], [ 0, %vector.main.loop.iter.check710 ]
  %bc.resume.val731 = phi i32 [ %i.nb, %vec.epilog.iter.check734 ], [ 1, %vector.main.loop.iter.check710 ]
  %n.vec737 = and i32 %i.mz, -4                   ; 3 uses
  %i.nk = or disjoint i32 %n.vec737, 1
  %broadcast.splatinsert738 = insertelement <4 x i32> poison, i32 %bc.resume.val731, i64 0
  %broadcast.splat739 = shufflevector <4 x i32> %broadcast.splatinsert738, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction740 = add nuw nsw <4 x i32> %broadcast.splat739, <i32 0, i32 1, i32 2, i32 3>
  %i.nl = load i32, ptr %8, align 4, !tbaa !10
  %i.nm = mul nsw i32 %i.nl, %i.my
  %broadcast.splatinsert744 = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %broadcast.splat745 = shufflevector <4 x i32> %broadcast.splatinsert744, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body741

vec.epilog.vector.body741:                        ; preds = %vec.epilog.vector.body741, %vec.epilog.ph736
  %index742 = phi i32 [ %vec.epilog.resume.val730, %vec.epilog.ph736 ], [ %index.next747, %vec.epilog.vector.body741 ]
  %vec.ind743 = phi <4 x i32> [ %induction740, %vec.epilog.ph736 ], [ %vec.ind.next748, %vec.epilog.vector.body741 ] ; 2 uses
  %i.nn = add nsw <4 x i32> %broadcast.splat745, %vec.ind743
  %i.no = sext <4 x i32> %i.nn to <4 x i64>
  %wide.gep746 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.no
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep746, <4 x i1> splat (i1 true)), !tbaa !14
  %index.next747 = add nuw i32 %index742, 4       ; 2 uses
  %vec.ind.next748 = add nuw nsw <4 x i32> %vec.ind743, splat (i32 4)
  %i.np = icmp eq i32 %index.next747, %n.vec737
  br i1 %i.np, label %vec.epilog.middle.block749, label %vec.epilog.vector.body741, !llvm.loop !249

vec.epilog.middle.block749:                       ; preds = %vec.epilog.vector.body741
  %cmp.n750 = icmp eq i32 %i.mz, %n.vec737
  br i1 %cmp.n750, label %._crit_edge317, label %vec.epilog.scalar.ph733.preheader

vec.epilog.scalar.ph733.preheader:                ; preds = %iter.check732, %vec.epilog.iter.check734, %vec.epilog.middle.block749
  %storemerge169314.ph = phi i32 [ 1, %iter.check732 ], [ %i.nb, %vec.epilog.iter.check734 ], [ %i.nk, %vec.epilog.middle.block749 ]
  %i.nq = load i32, ptr %8, align 4, !tbaa !10
  %i.nr = mul nsw i32 %i.nq, %i.my
  br label %vec.epilog.scalar.ph733

vec.epilog.scalar.ph733:                          ; preds = %vec.epilog.scalar.ph733.preheader, %vec.epilog.scalar.ph733
  %storemerge169314 = phi i32 [ %i.nv, %vec.epilog.scalar.ph733 ], [ %storemerge169314.ph, %vec.epilog.scalar.ph733.preheader ] ; 2 uses
  %i.ns = add nsw i32 %i.nr, %storemerge169314
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.nt
  store double -1.000000e+10, ptr %i.nu, align 8, !tbaa !14
  %i.nv = add nuw nsw i32 %storemerge169314, 1    ; 2 uses
  %exitcond449.not = icmp eq i32 %i.nv, %.330
  br i1 %exitcond449.not, label %._crit_edge317, label %vec.epilog.scalar.ph733, !llvm.loop !250

._crit_edge317:                                   ; preds = %vec.epilog.scalar.ph733, %middle.block728, %vec.epilog.middle.block749, %bb.ag
  %.not172318 = icmp sgt i32 %.330, %.sink605
  br i1 %.not172318, label %._crit_edge317.._crit_edge322_crit_edge, label %.lr.ph321

._crit_edge317.._crit_edge322_crit_edge:          ; preds = %._crit_edge317
  %.pre497 = add nsw i32 %.sink605, 1
  br label %._crit_edge322

.lr.ph321:                                        ; preds = %._crit_edge317
  %i.nw = mul i32 %storemerge162332, %storemerge162332412
  %invariant.op = add i32 %i.nw, %.neg411         ; 5 uses
  %i.nx = add nsw i32 %storemerge162332, -1       ; 5 uses
  %i.ny = zext nneg i32 %.330 to i64              ; 2 uses
  %i.nz = add nuw i32 %.sink605, 1                ; 3 uses
  %16 = add i32 %.sink605, 1
  %17 = sub i32 %16, %.330
  %18 = sub i32 %.sink605, %.330
  %xtraiter = and i32 %17, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph321
  %i.oa = load i32, ptr %8, align 4, !tbaa !10
  %i.ob = mul nsw i32 %i.oa, %i.nx
  %i.oc = sext i32 %i.ob to i64
  %invariant.gep1031 = getelementptr [8 x i8], ptr %i.f, i64 %i.oc
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.prol.preheader
  %indvars.iv450.prol = phi i64 [ %i.ny, %.prol.preheader ], [ %indvars.iv.next451.prol, %bb.ah ] ; 3 uses
  %prol.iter = phi i32 [ 0, %.prol.preheader ], [ %prol.iter.next, %bb.ah ]
  %i.od = trunc nsw i64 %indvars.iv450.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.od
  %i.oe = sext i32 %.reass.prol to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.oe
  %i.og = load double, ptr %i.of, align 8, !tbaa !14
  %gep1032 = getelementptr [8 x i8], ptr %invariant.gep1031, i64 %indvars.iv450.prol
  store double %i.og, ptr %gep1032, align 8, !tbaa !14
  %indvars.iv.next451.prol = add nuw nsw i64 %indvars.iv450.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.ah, !llvm.loop !251

.prol.loopexit:                                   ; preds = %bb.ah, %.lr.ph321
  %indvars.iv450.unr = phi i64 [ %i.ny, %.lr.ph321 ], [ %indvars.iv.next451.prol, %bb.ah ]
  %i.oh = icmp ult i32 %18, 3
  br i1 %i.oh, label %._crit_edge322, label %.lr.ph321.new

.lr.ph321.new:                                    ; preds = %.prol.loopexit
  %i.oi = load i32, ptr %8, align 4, !tbaa !10    ; 4 uses
  %i.oj = mul nsw i32 %i.oi, %i.nx
  %i.ok = sext i32 %i.oj to i64
  %invariant.gep1016 = getelementptr [8 x i8], ptr %i.f, i64 %i.ok
  %invariant.op1018 = add i32 1, %invariant.op
  %i.ol = mul nsw i32 %i.oi, %i.nx
  %i.om = sext i32 %i.ol to i64
  %invariant.gep1019 = getelementptr [8 x i8], ptr %7, i64 %i.om
  %i.on = mul nsw i32 %i.oi, %i.nx
  %i.oo = sext i32 %i.on to i64
  %invariant.gep1021 = getelementptr [8 x i8], ptr %i.f, i64 %i.oo
  %i.op = mul nsw i32 %i.oi, %i.nx
  %i.oq = sext i32 %i.op to i64
  %invariant.gep1023 = getelementptr [8 x i8], ptr %i.f, i64 %i.oq
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph321.new
  %indvars.iv450 = phi i64 [ %indvars.iv450.unr, %.lr.ph321.new ], [ %indvars.iv.next451.3, %bb.ai ] ; 7 uses
  %i.or = trunc nsw i64 %indvars.iv450 to i32
  %.reass = add i32 %invariant.op, %i.or
  %i.os = sext i32 %.reass to i64
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.os
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !14
  %gep1017 = getelementptr [8 x i8], ptr %invariant.gep1016, i64 %indvars.iv450
  store double %i.ou, ptr %gep1017, align 8, !tbaa !14
  %i.ov = trunc i64 %indvars.iv450 to i32
  %.reass.1.reass = add i32 %i.ov, %invariant.op1018
  %i.ow = sext i32 %.reass.1.reass to i64
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ow
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !14
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %indvars.iv450
  store double %i.oy, ptr %gep1020, align 8, !tbaa !14
  %indvars.iv.next451.1 = add nuw nsw i64 %indvars.iv450, 2 ; 2 uses
  %i.oz = trunc nsw i64 %indvars.iv.next451.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.oz
  %i.pa = sext i32 %.reass.2 to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pa
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !14
  %gep1022 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %indvars.iv.next451.1
  store double %i.pc, ptr %gep1022, align 8, !tbaa !14
  %indvars.iv.next451.2 = add nuw nsw i64 %indvars.iv450, 3 ; 2 uses
  %i.pd = trunc nsw i64 %indvars.iv.next451.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.pd
  %i.pe = sext i32 %.reass.3 to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pe
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !14
  %gep1024 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %indvars.iv.next451.2
  store double %i.pg, ptr %gep1024, align 8, !tbaa !14
  %indvars.iv.next451.3 = add nuw nsw i64 %indvars.iv450, 4 ; 2 uses
  %19 = trunc i64 %indvars.iv.next451.3 to i32
  %exitcond454.not.3 = icmp eq i32 %i.nz, %19
  br i1 %exitcond454.not.3, label %._crit_edge322, label %bb.ai, !llvm.loop !252

._crit_edge322:                                   ; preds = %.prol.loopexit, %bb.ai, %._crit_edge317.._crit_edge322_crit_edge
  %storemerge173324.pre-phi = phi i32 [ %.pre497, %._crit_edge317.._crit_edge322_crit_edge ], [ %i.nz, %bb.ai ], [ %i.nz, %.prol.loopexit ] ; 5 uses
  %i.ph = load i32, ptr %8, align 4, !tbaa !10    ; 3 uses
  %.not174.not325 = icmp slt i32 %.sink605, %i.ph
  br i1 %.not174.not325, label %iter.check689, label %._crit_edge329

iter.check689:                                    ; preds = %._crit_edge322
  %i.pi = add nsw i32 %storemerge162332, -1       ; 3 uses
  %i.pj = sub i32 %i.ph, %.sink605                ; 7 uses
  %min.iters.check665 = icmp ult i32 %i.pj, 4
  br i1 %min.iters.check665, label %vec.epilog.scalar.ph690.preheader, label %vector.main.loop.iter.check666

vector.main.loop.iter.check666:                   ; preds = %iter.check689
  %min.iters.check667 = icmp ult i32 %i.pj, 16
  br i1 %min.iters.check667, label %vec.epilog.ph693, label %vector.ph668

vector.ph668:                                     ; preds = %vector.main.loop.iter.check666
  %i.pk = and i32 %i.pj, 12
  %n.vec669 = and i32 %i.pj, -16                  ; 4 uses
  %i.pl = add i32 %storemerge173324.pre-phi, %n.vec669 ; 2 uses
  %broadcast.splatinsert670 = insertelement <4 x i32> poison, i32 %storemerge173324.pre-phi, i64 0
  %broadcast.splat671 = shufflevector <4 x i32> %broadcast.splatinsert670, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction672 = add nsw <4 x i32> %broadcast.splat671, <i32 0, i32 1, i32 2, i32 3>
  %i.pm = load i32, ptr %8, align 4, !tbaa !10
  %i.pn = mul nsw i32 %i.pm, %i.pi
  %broadcast.splatinsert679 = insertelement <4 x i32> poison, i32 %i.pn, i64 0
  %broadcast.splat680 = shufflevector <4 x i32> %broadcast.splatinsert679, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op1025 = add <4 x i32> splat (i32 4), %broadcast.splat680
  %invariant.op1027 = add <4 x i32> splat (i32 8), %broadcast.splat680
  %invariant.op1029 = add <4 x i32> splat (i32 12), %broadcast.splat680
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph668
  %index674 = phi i32 [ 0, %vector.ph668 ], [ %index.next684, %vector.body673 ]
  %vec.ind675 = phi <4 x i32> [ %induction672, %vector.ph668 ], [ %vec.ind.next685, %vector.body673 ] ; 5 uses
  %i.po = add nsw <4 x i32> %broadcast.splat680, %vec.ind675
  %.reass1026 = add <4 x i32> %vec.ind675, %invariant.op1025
  %.reass1028 = add <4 x i32> %vec.ind675, %invariant.op1027
  %.reass1030 = add <4 x i32> %vec.ind675, %invariant.op1029
  %i.pp = sext <4 x i32> %i.po to <4 x i64>
  %i.pq = sext <4 x i32> %.reass1026 to <4 x i64>
  %i.pr = sext <4 x i32> %.reass1028 to <4 x i64>
  %i.ps = sext <4 x i32> %.reass1030 to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.pp
  %wide.gep681 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.pq
  %wide.gep682 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.pr
  %wide.gep683 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.ps
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep681, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep682, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep683, <4 x i1> splat (i1 true)), !tbaa !14
  %index.next684 = add nuw i32 %index674, 16      ; 2 uses
  %vec.ind.next685 = add nsw <4 x i32> %vec.ind675, splat (i32 16)
  %i.pt = icmp eq i32 %index.next684, %n.vec669
  br i1 %i.pt, label %middle.block686, label %vector.body673, !llvm.loop !253

middle.block686:                                  ; preds = %vector.body673
  %cmp.n687 = icmp eq i32 %i.pj, %n.vec669
  br i1 %cmp.n687, label %._crit_edge329, label %vec.epilog.iter.check691

vec.epilog.iter.check691:                         ; preds = %middle.block686
  %min.epilog.iters.check692 = icmp eq i32 %i.pk, 0
  br i1 %min.epilog.iters.check692, label %vec.epilog.scalar.ph690.preheader, label %vec.epilog.ph693, !prof !18

vec.epilog.ph693:                                 ; preds = %vector.main.loop.iter.check666, %vec.epilog.iter.check691
  %vec.epilog.resume.val688 = phi i32 [ %n.vec669, %vec.epilog.iter.check691 ], [ 0, %vector.main.loop.iter.check666 ]
  %bc.resume.val = phi i32 [ %i.pl, %vec.epilog.iter.check691 ], [ %storemerge173324.pre-phi, %vector.main.loop.iter.check666 ]
  %n.vec694 = and i32 %i.pj, -4                   ; 3 uses
  %i.pu = add i32 %storemerge173324.pre-phi, %n.vec694
  %broadcast.splatinsert695 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat696 = shufflevector <4 x i32> %broadcast.splatinsert695, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction697 = add nsw <4 x i32> %broadcast.splat696, <i32 0, i32 1, i32 2, i32 3>
  %i.pv = load i32, ptr %8, align 4, !tbaa !10
  %i.pw = mul nsw i32 %i.pv, %i.pi
  %broadcast.splatinsert701 = insertelement <4 x i32> poison, i32 %i.pw, i64 0
  %broadcast.splat702 = shufflevector <4 x i32> %broadcast.splatinsert701, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body698

vec.epilog.vector.body698:                        ; preds = %vec.epilog.vector.body698, %vec.epilog.ph693
  %index699 = phi i32 [ %vec.epilog.resume.val688, %vec.epilog.ph693 ], [ %index.next704, %vec.epilog.vector.body698 ]
  %vec.ind700 = phi <4 x i32> [ %induction697, %vec.epilog.ph693 ], [ %vec.ind.next705, %vec.epilog.vector.body698 ] ; 2 uses
  %i.px = add nsw <4 x i32> %broadcast.splat702, %vec.ind700
  %i.py = sext <4 x i32> %i.px to <4 x i64>
  %wide.gep703 = getelementptr inbounds [8 x i8], ptr %i.f, <4 x i64> %i.py
  tail call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> splat (double -1.000000e+10), <4 x ptr> align 8 %wide.gep703, <4 x i1> splat (i1 true)), !tbaa !14
  %index.next704 = add nuw i32 %index699, 4       ; 2 uses
  %vec.ind.next705 = add nsw <4 x i32> %vec.ind700, splat (i32 4)
  %i.pz = icmp eq i32 %index.next704, %n.vec694
  br i1 %i.pz, label %vec.epilog.middle.block706, label %vec.epilog.vector.body698, !llvm.loop !254

vec.epilog.middle.block706:                       ; preds = %vec.epilog.vector.body698
  %cmp.n707 = icmp eq i32 %i.pj, %n.vec694
  br i1 %cmp.n707, label %._crit_edge329, label %vec.epilog.scalar.ph690.preheader

vec.epilog.scalar.ph690.preheader:                ; preds = %iter.check689, %vec.epilog.iter.check691, %vec.epilog.middle.block706
  %storemerge173.in.ph = phi i32 [ %storemerge173324.pre-phi, %iter.check689 ], [ %i.pl, %vec.epilog.iter.check691 ], [ %i.pu, %vec.epilog.middle.block706 ]
  %i.qa = load i32, ptr %8, align 4, !tbaa !10
  %i.qb = mul nsw i32 %i.qa, %i.pi
  br label %vec.epilog.scalar.ph690

vec.epilog.scalar.ph690:                          ; preds = %vec.epilog.scalar.ph690.preheader, %vec.epilog.scalar.ph690
  %storemerge173.in = phi i32 [ %storemerge173, %vec.epilog.scalar.ph690 ], [ %storemerge173.in.ph, %vec.epilog.scalar.ph690.preheader ] ; 3 uses
  %i.qc = add nsw i32 %i.qb, %storemerge173.in
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.qd
  store double -1.000000e+10, ptr %i.qe, align 8, !tbaa !14
  %storemerge173 = add nsw i32 %storemerge173.in, 1
  %.not174.not = icmp slt i32 %storemerge173.in, %i.ph
  br i1 %.not174.not, label %vec.epilog.scalar.ph690, label %._crit_edge329, !llvm.loop !255

._crit_edge329:                                   ; preds = %vec.epilog.scalar.ph690, %middle.block686, %vec.epilog.middle.block706, %._crit_edge322
  %i.qf = add nuw i32 %storemerge162332, 1        ; 2 uses
  %storemerge162.neg = xor i32 %storemerge162332, -1
  store i32 %i.qf, ptr @dmake_.j, align 4, !tbaa !10
  %exitcond455.not = icmp eq i32 %storemerge162332, %i.mn
  br i1 %exitcond455.not, label %.loopexit, label %bb.ad, !llvm.loop !256

.tail239:                                         ; preds = %.tail231
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.qh = load i8, ptr %i.qg, align 1
  %i.qi = icmp eq i8 %i.qh, 112
  br i1 %i.qi, label %bb.aj, label %.loopexit

.tail243:                                         ; preds = %.tail235
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.qk = load i8, ptr %i.qj, align 1
  %i.ql = icmp eq i8 %i.qk, 112
  br i1 %i.ql, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.tail243, %.tail239
  %i.qm = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dmake_.j, align 4, !tbaa !10
  %.not156300 = icmp slt i32 %i.qm, 1
  br i1 %.not156300, label %.loopexit, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.aj
  %.dmake_.j = select i1 %.not157521, ptr %4, ptr @dmake_.j ; 2 uses
  %.not409 = icmp eq i32 %.fr407, 0
  %i.qn = sext i32 %i.c to i64                    ; 4 uses
  %i.qo = add nuw i32 %i.qm, 1
  %wide.trip.count447 = zext i32 %i.qo to i64     ; 2 uses
  %i.qp = or i64 %i.qn, %i.d
  %i.qq = shl nsw i64 %i.qp, 3
  %i.qr = add i64 %i.qq, %i.a
  %i.qs = sub i64 %i.b, %i.qr                     ; 2 uses
  %i.qt = mul nsw i64 %i.qn, -8                   ; 2 uses
  br i1 %.not409, label %.lr.ph305.split, label %.lr.ph305.split.us

.lr.ph305.split.us:                               ; preds = %.lr.ph305, %._crit_edge295.split.us309
  %indvar = phi i64 [ %indvar.next, %._crit_edge295.split.us309 ], [ 0, %.lr.ph305 ] ; 2 uses
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %._crit_edge295.split.us309 ], [ 1, %.lr.ph305 ] ; 6 uses
  %.us-phi299301.us = phi i32 [ %.us-phi298.us, %._crit_edge295.split.us309 ], [ 0, %.lr.ph305 ] ; 3 uses
  %i.qu = mul i64 %i.qt, %indvar
  %i.qv = add i64 %i.qs, %i.qu
  %i.qw = trunc nuw nsw i64 %indvars.iv428 to i32
  %storemerge155..us = select i1 %.not157521, i32 %i.qw, i32 1 ; 4 uses
  %storemerge158.us = load i32, ptr %.dmake_.j, align 4, !tbaa !10 ; 3 uses
  %.not161291.us = icmp sgt i32 %storemerge155..us, %storemerge158.us
  br i1 %.not161291.us, label %._crit_edge295.split.us309, label %iter.check

iter.check:                                       ; preds = %.lr.ph305.split.us
  %i.qx = mul nsw i64 %indvars.iv428, %i.qn
  %i.qy = zext i32 %storemerge155..us to i64      ; 9 uses
  %i.qz = sext i32 %.us-phi299301.us to i64       ; 7 uses
  %i.ra = add i32 %.us-phi299301.us, 1
  %i.rb = add i32 %i.ra, %storemerge158.us
  %i.rc = sub i32 %i.rb, %storemerge155..us       ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.e, i64 %i.qx ; 3 uses
  %i.rd = sub i32 %storemerge158.us, %storemerge155..us ; 3 uses
  %i.re = zext i32 %i.rd to i64
  %i.rf = add nuw nsw i64 %i.re, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.rd, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.rg = shl nsw i64 %i.qz, 3
  %i.rh = add i64 %i.qv, %i.rg
  %i.ri = shl nuw nsw i64 %i.qy, 3
  %i.rj = sub i64 %i.ri, %i.rh
  %diff.check = icmp ugt i64 %i.rj, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check610 = icmp ult i32 %i.rd, 15
  br i1 %min.iters.check610, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rk = and i64 %i.rf, 12
  %n.vec = and i64 %i.rf, 8589934576              ; 5 uses
  %i.rl = add nsw i64 %n.vec, %i.qz
  %i.rm = add nuw nsw i64 %n.vec, %i.qy           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv428, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert611 = insertelement <4 x i64> poison, i64 %i.qy, i64 0
  %broadcast.splat612 = shufflevector <4 x i64> %broadcast.splatinsert611, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat612, <i64 0, i64 1, i64 2, i64 3>
  %invariant.gep994 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.qy
  %invariant.gep996 = getelementptr [8 x i8], ptr %7, i64 %i.qz
end_hunk_0
