Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.8?download=true
inline.NumInlined: 12661
inline.NumDeleted: 4783
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_:bb.a
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !130 ; 2 uses
  %i.hi = fmul double %i.hh, %i.hh
  %i.hj = fadd double %i.he, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !130 ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = fadd double %i.hj, %i.hn                ; 3 uses
  %i.hp = add nuw nsw i64 %.sroa.611.016.us.i.i.i.us, 4 ; 2 uses
  %niter802.next.3 = add i64 %niter802, 4         ; 2 uses
  %niter802.ncmp.3 = icmp eq i64 %niter802.next.3, %unroll_iter801
  br i1 %niter802.ncmp.3, label %.loopexit519.us.loopexit.unr-lcssa, label %.lr.ph.us.i.i.i.us

.loopexit519.us.loopexit.unr-lcssa:               ; preds = %.lr.ph.us.i.i.i.us
  %lcmp.mod798.not = icmp eq i64 %xtraiter796, 0
  br i1 %lcmp.mod798.not, label %.loopexit519.us, label %.lr.ph.us.i.i.i.us.epil.preheader

.lr.ph.us.i.i.i.us.epil.preheader:                ; preds = %.loopexit519.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.preheader
  %.117.us.i.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.i.i.i.us.preheader ], [ %i.ho, %.loopexit519.us.loopexit.unr-lcssa ]
  %.sroa.611.016.us.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader ], [ %i.hp, %.loopexit519.us.loopexit.unr-lcssa ]
  %lcmp.mod800 = icmp ne i64 %xtraiter796, 0
  tail call void @llvm.assume(i1 %lcmp.mod800)
  br label %.lr.ph.us.i.i.i.us.epil

.lr.ph.us.i.i.i.us.epil:                          ; preds = %.lr.ph.us.i.i.i.us.epil, %.lr.ph.us.i.i.i.us.epil.preheader
  %.117.us.i.i.i.us.epil = phi double [ %i.ht, %.lr.ph.us.i.i.i.us.epil ], [ %.117.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %.sroa.611.016.us.i.i.i.us.epil = phi i64 [ %i.hu, %.lr.ph.us.i.i.i.us.epil ], [ %.sroa.611.016.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter797 = phi i64 [ %epil.iter797.next, %.lr.ph.us.i.i.i.us.epil ], [ 0, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us.epil
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !130 ; 2 uses
  %i.hs = fmul double %i.hr, %i.hr
  %i.ht = fadd double %.117.us.i.i.i.us.epil, %i.hs ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.611.016.us.i.i.i.us.epil, 1
  %epil.iter797.next = add i64 %epil.iter797, 1   ; 2 uses
  %epil.iter797.cmp.not = icmp eq i64 %epil.iter797.next, %xtraiter796
  br i1 %epil.iter797.cmp.not, label %.loopexit519.us, label %.lr.ph.us.i.i.i.us.epil, !llvm.loop !502

.loopexit519.us:                                  ; preds = %.loopexit519.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.epil, %.split.us.split.i.i.i.us
  %.us-phi.i.i.i.us = phi double [ 0.000000e+00, %.split.us.split.i.i.i.us ], [ %i.ho, %.loopexit519.us.loopexit.unr-lcssa ], [ %i.ht, %.lr.ph.us.i.i.i.us.epil ]
  %i.hv = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i.us) #33 ; 2 uses
  %i.hw = fcmp olt double %.0450539.us, %i.hv
  %.sroa.speculated.us = select i1 %i.hw, double %i.hv, double %.0450539.us ; 2 uses
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %exitcond626.not = icmp eq i64 %indvars.iv.next623, %wide.trip.count625
  br i1 %exitcond626.not, label %._crit_edge542, label %.split.us.split.i.i.i.us, !llvm.loop !503

bb.x:                                             ; preds = %bb.ab, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ab ] ; 5 uses
  %niter795 = phi i64 [ 0, %.lr.ph.new ], [ %niter795.next.1, %bb.ab ]
  br i1 %.not239, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hx = load ptr, ptr %i.fq, align 8, !tbaa !94
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !113
  %i.ia = sext i32 %i.hz to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ib = phi i64 [ %i.ia, %bb.y ], [ %indvars.iv, %bb.x ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !113 ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.ib
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !113
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !113
  %i.ih = sub nsw i32 %i.ig, %i.id
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.ib
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !113
  br i1 %.not239, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ij = load ptr, ptr %i.fq, align 8, !tbaa !94
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !113
  %i.im = sext i32 %i.il to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.in = phi i64 [ %i.im, %bb.aa ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !113 ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.in
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !113
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.1
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !113
  %i.it = sub nsw i32 %i.is, %i.ip
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.in
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !113
  %niter795.next.1 = add i64 %niter795, 2         ; 2 uses
  %niter795.ncmp.1 = icmp eq i64 %niter795.next.1, %unroll_iter794
  br i1 %niter795.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.x, !llvm.loop !504

._crit_edge542:                                   ; preds = %.loopexit520, %.loopexit519.us, %._crit_edge.thread
  %.0450.lcssa = phi double [ %.sroa.speculated.us, %.loopexit519.us ], [ 0.000000e+00, %._crit_edge.thread ], [ %.sroa.speculated, %.loopexit520 ] ; 2 uses
  %i.iv = fcmp oeq double %.0450.lcssa, 0.000000e+00
  %.1451 = select i1 %i.iv, double 1.000000e+00, double %.0450.lcssa
  %i.iw = add nsw i32 %i.f, %i.c
  %i.ix = mul nsw i32 %i.iw, 20
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fmul double %.1451, %i.iy
  %i.ja = fmul double %i.iz, f0x3CB0000000000000
  br label %bb.ac

.split.i.i.i:                                     ; preds = %.lr.ph541, %.loopexit520
  %indvars.iv617 = phi i64 [ %indvars.iv.next618, %.loopexit520 ], [ 0, %.lr.ph541 ] ; 3 uses
  %.0450539 = phi double [ %.sroa.speculated, %.loopexit520 ], [ 0.000000e+00, %.lr.ph541 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv617
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !113
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv617
  %i.je = sext i32 %i.jc to i64                   ; 2 uses
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !113 ; 2 uses
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = add nsw i64 %i.jg, %i.je
  %i.ji = icmp sgt i32 %i.jf, 0
  br i1 %i.ji, label %.lr.ph.i.i.i, label %.loopexit520

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.117.i.i.i = phi double [ %i.jm, %.lr.ph.i.i.i ], [ 0.000000e+00, %.split.i.i.i ]
  %.sroa.611.016.i.i.i = phi i64 [ %i.jn, %.lr.ph.i.i.i ], [ %i.je, %.split.i.i.i ] ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.go, i64 %.sroa.611.016.i.i.i
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !130 ; 2 uses
  %i.jl = fmul double %i.jk, %i.jk
  %i.jm = fadd double %.117.i.i.i, %i.jl          ; 2 uses
  %i.jn = add nsw i64 %.sroa.611.016.i.i.i, 1     ; 2 uses
  %i.jo = icmp slt i64 %i.jn, %i.jh
  br i1 %i.jo, label %.lr.ph.i.i.i, label %.loopexit520

.loopexit520:                                     ; preds = %.lr.ph.i.i.i, %.split.i.i.i
  %.us-phi.i.i.i = phi double [ 0.000000e+00, %.split.i.i.i ], [ %i.jm, %.lr.ph.i.i.i ]
  %i.jp = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i) #33 ; 2 uses
  %i.jq = fcmp olt double %.0450539, %i.jp
  %.sroa.speculated = select i1 %i.jq, double %i.jp, double %.0450539 ; 2 uses
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %exitcond621.not = icmp eq i64 %indvars.iv.next618, %wide.trip.count625
  br i1 %exitcond621.not, label %._crit_edge542, label %.split.i.i.i, !llvm.loop !503

bb.ac:                                            ; preds = %._crit_edge.thread, %._crit_edge542, %._crit_edge
  %.0171 = phi double [ %i.ja, %._crit_edge542 ], [ %i.af, %._crit_edge ], [ %i.af, %._crit_edge.thread ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  invoke void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.jr, i64 noundef %i.m)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.js = load ptr, ptr %i.au, align 8, !tbaa !127 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !113
  %i.ju = getelementptr i8, ptr %i.js, i64 4
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !113
  br i1 %i.n, label %.lr.ph599, label %.thread494

.lr.ph599:                                        ; preds = %bb.ad
  %.idx.i.i.i.i.i.i.i.i.i.i274 = shl nuw nsw i64 %i.g, 2
  %i.jv = icmp slt i64 %sext504, 4294967296
  %.idx.i.i.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext504, 29
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %sext507 = add nsw i64 %sext503, -4294967296
  %i.kg = ashr exact i64 %sext507, 32             ; 4 uses
  %wide.trip.count638 = and i64 %i.e, 2147483647
  br label %.loopexit516

bb.ae:                                            ; preds = %._crit_edge591, %bb.bw, %bb.bx
  %.2167 = phi i32 [ %.0165596, %bb.bx ], [ %i.aak, %bb.bw ], [ %i.aak, %._crit_edge591 ] ; 2 uses
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond639.not = icmp eq i64 %indvars.iv.next636, %wide.trip.count638
  br i1 %exitcond639.not, label %.thread494, label %.loopexit516, !llvm.loop !505

.loopexit516:                                     ; preds = %.lr.ph599, %bb.ae
  %indvars.iv635 = phi i64 [ 0, %.lr.ph599 ], [ %indvars.iv.next636, %bb.ae ] ; 13 uses
  %.0165596 = phi i32 [ 0, %.lr.ph599 ], [ %.2167, %bb.ae ] ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0402.0453, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i274, i1 false), !tbaa !113
  %i.kh = load ptr, ptr %i.ai, align 8, !tbaa !127
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv635 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !113
  %i.kk = getelementptr i8, ptr %i.ki, i64 4
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !113
  %i.kl = sext i32 %.0165596 to i64               ; 10 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %.sroa.0402.0453, i64 %i.kl
  %i.kn = trunc nuw nsw i64 %indvars.iv635 to i32 ; 6 uses
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !113
  store i32 %.0165596, ptr %.sroa.0379.0469, align 4, !tbaa !113
  br i1 %i.jv, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %.loopexit516
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0362.0, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !130
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %.loopexit516
  %i.ko = icmp sge i32 %.0165596, %i.c            ; 2 uses
  %4 = zext i1 %i.ko to i8
  %i.kp = load ptr, ptr %i.jw, align 8, !tbaa !134
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.kr = load ptr, ptr %i.jy, align 8, !tbaa !127
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv635 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !113
  %i.ku = sext i32 %i.kt to i64                   ; 3 uses
  %i.kv = load ptr, ptr %i.dd, align 8, !tbaa !133 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.kx = getelementptr i8, ptr %i.ks, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !113
  %i.kz = sext i32 %i.ky to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ag:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv635
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !113
  %i.lc = sext i32 %i.lb to i64
  %i.ld = add nsw i64 %i.lc, %i.ku
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.af, %bb.ag
  %.sink.i = phi i64 [ %i.kz, %bb.af ], [ %i.ld, %bb.ag ] ; 2 uses
  %5 = icmp sgt i64 %.sink.i, %i.ku               ; 2 uses
  %6 = xor i1 %i.ko, true
  %7 = or i1 %5, %6
  br i1 %7, label %.lr.ph558, label %.preheader511

.lr.ph558:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.le = load ptr, ptr %i.jz, align 8, !tbaa !94
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph558, %bb.ar
  %i.lf = phi i1 [ %5, %.lr.ph558 ], [ %8, %bb.ar ] ; 2 uses
  %.0159555 = phi i8 [ %4, %.lr.ph558 ], [ %spec.select, %bb.ar ]
  %.0172556 = phi i64 [ 1, %.lr.ph558 ], [ %.2174, %bb.ar ] ; 4 uses
  %.0176555 = phi i64 [ 0, %.lr.ph558 ], [ %.1177.lcssa, %bb.ar ] ; 4 uses
  %.sroa.8336.0554 = phi i64 [ %i.ku, %.lr.ph558 ], [ %i.nm, %bb.ar ] ; 3 uses
  br i1 %i.lf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %.sroa.8336.0554
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !113 ; 2 uses
  %.pre = sext i32 %i.lh to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.pre-phi = phi i64 [ %i.kl, %bb.ah ], [ %.pre, %bb.ai ] ; 3 uses
  %.0158 = phi i32 [ %.0165596, %bb.ah ], [ %i.lh, %bb.ai ] ; 3 uses
  %i.li = icmp eq i32 %.0158, %.0165596
  %spec.select = select i1 %i.li, i8 1, i8 %.0159555 ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.le, i64 %.pre-phi
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !113 ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, -1
  br i1 %i.ll, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %bb.aj
  %i.lm = zext nneg i32 %i.lk to i64              ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0402.0453, i64 %i.lm ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !113
  %i.lp = zext i32 %i.lo to i64
  %.not543 = icmp eq i64 %indvars.iv635, %i.lp
  br i1 %.not543, label %._crit_edge547, label %.lr.ph546

.lr.ph546:                                        ; preds = %.preheader
  %i.lq = load ptr, ptr %i.ka, align 8, !tbaa !94
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !70
  %i.lu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i64 noundef 0, i64 noundef %i.lt, ptr noundef nonnull @.str.9, i64 noundef 46)
          to label %.thread492 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.al:                                            ; preds = %.lr.ph546, %bb.al
  %i.lv = phi ptr [ %i.ln, %.lr.ph546 ], [ %i.mc, %bb.al ]
  %i.lw = phi i64 [ %i.lm, %.lr.ph546 ], [ %i.mb, %bb.al ]
  %.0157545 = phi i32 [ %i.lk, %.lr.ph546 ], [ %i.ma, %bb.al ]
  %.1177544 = phi i64 [ %.0176555, %.lr.ph546 ], [ %i.lz, %bb.al ] ; 2 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %.sroa.0391.0, i64 %.1177544
  store i32 %.0157545, ptr %i.lx, align 4, !tbaa !113
  store i32 %i.kn, ptr %i.lv, align 4, !tbaa !113
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.lw
  %i.lz = add nsw i64 %.1177544, 1                ; 2 uses
  %i.ma = load i32, ptr %i.ly, align 4, !tbaa !113 ; 2 uses
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %.sroa.0402.0453, i64 %i.mb ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !113
  %i.me = zext i32 %i.md to i64
  %.not = icmp eq i64 %indvars.iv635, %i.me
  br i1 %.not, label %._crit_edge547, label %bb.al, !llvm.loop !506

._crit_edge547:                                   ; preds = %bb.al, %.preheader
  %.1177.lcssa = phi i64 [ %.0176555, %.preheader ], [ %i.lz, %bb.al ] ; 5 uses
  %i.mf = sub nsw i64 %.1177.lcssa, %.0176555     ; 3 uses
  %i.mg = lshr i64 %i.mf, 1                       ; 3 uses
  %i.mh = icmp sgt i64 %i.mf, 1
  br i1 %i.mh, label %.lr.ph551, label %._crit_edge552

.lr.ph551:                                        ; preds = %._crit_edge547
  %i.mi = getelementptr [4 x i8], ptr %.sroa.0391.0, i64 %.0176555 ; 3 uses
  %i.mj = getelementptr [4 x i8], ptr %.sroa.0391.0, i64 %.1177.lcssa ; 3 uses
  %i.mk = icmp eq i64 %i.mg, 1
  br i1 %i.mk, label %.epil.preheader803, label %.lr.ph551.new

.lr.ph551.new:                                    ; preds = %.lr.ph551
  %unroll_iter808 = and i64 %i.mg, 4611686018427387902
  br label %bb.am

._crit_edge552.loopexit.unr-lcssa:                ; preds = %bb.am
  %i.ml = and i64 %i.mf, 2
  %lcmp.mod806.not = icmp eq i64 %i.ml, 0
  br i1 %lcmp.mod806.not, label %._crit_edge552, label %.epil.preheader803

.epil.preheader803:                               ; preds = %._crit_edge552.loopexit.unr-lcssa, %.lr.ph551
  %.0156549.epil.init = phi i64 [ 0, %.lr.ph551 ], [ %i.nc, %._crit_edge552.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod807 = trunc i64 %i.mg to i1
  tail call void @llvm.assume(i1 %lcmp.mod807)
  %i.mm = getelementptr [4 x i8], ptr %i.mi, i64 %.0156549.epil.init ; 2 uses
  %i.mn = xor i64 %.0156549.epil.init, -1
  %i.mo = getelementptr [4 x i8], ptr %i.mj, i64 %i.mn ; 2 uses
  %i.mp = load i32, ptr %i.mm, align 4, !tbaa !113
  %i.mq = load i32, ptr %i.mo, align 4, !tbaa !113
  store i32 %i.mq, ptr %i.mm, align 4, !tbaa !113
  store i32 %i.mp, ptr %i.mo, align 4, !tbaa !113
  br label %._crit_edge552

._crit_edge552:                                   ; preds = %.epil.preheader803, %._crit_edge552.loopexit.unr-lcssa, %._crit_edge547
  br i1 %i.lf, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.am, %.lr.ph551.new
  %.0156549 = phi i64 [ 0, %.lr.ph551.new ], [ %i.nc, %bb.am ] ; 5 uses
  %niter809 = phi i64 [ 0, %.lr.ph551.new ], [ %niter809.next.1, %bb.am ]
  %i.mr = getelementptr [4 x i8], ptr %i.mi, i64 %.0156549 ; 2 uses
  %i.ms = xor i64 %.0156549, -1
  %i.mt = getelementptr [4 x i8], ptr %i.mj, i64 %i.ms ; 2 uses
  %i.mu = load i32, ptr %i.mr, align 4, !tbaa !113
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !113
  store i32 %i.mv, ptr %i.mr, align 4, !tbaa !113
  store i32 %i.mu, ptr %i.mt, align 4, !tbaa !113
  %i.mw = getelementptr [4 x i8], ptr %i.mi, i64 %.0156549
  %i.mx = getelementptr i8, ptr %i.mw, i64 4      ; 2 uses
  %i.my = xor i64 %.0156549, -2
  %i.mz = getelementptr [4 x i8], ptr %i.mj, i64 %i.my ; 2 uses
  %i.na = load i32, ptr %i.mx, align 4, !tbaa !113
  %i.nb = load i32, ptr %i.mz, align 4, !tbaa !113
  store i32 %i.nb, ptr %i.mx, align 4, !tbaa !113
  store i32 %i.na, ptr %i.mz, align 4, !tbaa !113
  %i.nc = add nuw nsw i64 %.0156549, 2            ; 2 uses
  %niter809.next.1 = add i64 %niter809, 2         ; 2 uses
  %niter809.ncmp.1 = icmp eq i64 %niter809.next.1, %unroll_iter808
  br i1 %niter809.ncmp.1, label %._crit_edge552.loopexit.unr-lcssa, label %bb.am, !llvm.loop !507

bb.an:                                            ; preds = %._crit_edge552
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.sroa.8336.0554
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !130
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge552, %bb.an
  %.sink = phi double [ %i.ne, %bb.an ], [ 0.000000e+00, %._crit_edge552 ]
  %i.nf = getelementptr inbounds [8 x i8], ptr %.sroa.0362.0, i64 %.pre-phi
  store double %.sink, ptr %i.nf, align 8, !tbaa !130
  %i.ng = icmp sgt i32 %.0158, %.0165596
  br i1 %i.ng, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.nh = getelementptr inbounds [4 x i8], ptr %.sroa.0402.0453, i64 %.pre-phi ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !113
  %i.nj = zext i32 %i.ni to i64
  %.not214 = icmp eq i64 %indvars.iv635, %i.nj
  br i1 %.not214, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nk = getelementptr inbounds [4 x i8], ptr %.sroa.0379.0469, i64 %.0172556
  store i32 %.0158, ptr %i.nk, align 4, !tbaa !113
  store i32 %i.kn, ptr %i.nh, align 4, !tbaa !113
  %i.nl = add nsw i64 %.0172556, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.2174 = phi i64 [ %.0172556, %bb.ao ], [ %i.nl, %bb.aq ], [ %.0172556, %bb.ap ] ; 3 uses
  %i.nm = add nsw i64 %.sroa.8336.0554, 1         ; 2 uses
  %8 = icmp slt i64 %i.nm, %.sink.i               ; 2 uses
  %9 = icmp eq i8 %spec.select, 0
  %.not506.a = select i1 %8, i1 true, i1 %9
  br i1 %.not506.a, label %bb.ah, label %.thread487, !llvm.loop !508

.thread487:                                       ; preds = %bb.ar
  %i.nn = add nsw i64 %.1177.lcssa, -1            ; 2 uses
  %i.no = icmp sgt i64 %.1177.lcssa, 0            ; 4 uses
  br i1 %i.no, label %.lr.ph571, label %._crit_edge572

.lr.ph571:                                        ; preds = %.thread487
  %i.np = load ptr, ptr %i.kb, align 8, !tbaa !134 ; 8 uses
  %i.nq = load ptr, ptr %i.kc, align 8, !tbaa !135 ; 11 uses
  %i.nr = load ptr, ptr %i.au, align 8, !tbaa !127 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  %i.nt = load ptr, ptr %i.kd, align 8, !tbaa !165
  %i.nu = load ptr, ptr %i.ba, align 8, !tbaa !133 ; 6 uses
  %i.nv = icmp eq ptr %i.nu, null                 ; 3 uses
  %i.nw = load ptr, ptr %i.ka, align 8, !tbaa !94
  br label %bb.as

._crit_edge572:                                   ; preds = %.loopexit, %.thread487
  %.4.lcssa = phi i64 [ %.2174, %.thread487 ], [ %.7, %.loopexit ] ; 9 uses
  %.not734 = icmp sge i32 %.0165596, %.sroa.speculated429 ; 2 uses
  br i1 %.not734, label %bb.bl, label %bb.bh

bb.as:                                            ; preds = %.lr.ph571, %.loopexit
  %i.nx = phi ptr [ %i.nu, %.lr.ph571 ], [ %i.os, %.loopexit ] ; 3 uses
  %.0155570 = phi i64 [ %i.nn, %.lr.ph571 ], [ %i.tx, %.loopexit ] ; 3 uses
  %.4569 = phi i64 [ %.2174, %.lr.ph571 ], [ %.7, %.loopexit ] ; 6 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0391.0, i64 %.0155570
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !113
  %i.oa = sext i32 %i.nz to i64                   ; 7 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.oa ; 7 uses
  br i1 %i.ns, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  br i1 %i.nv, label %bb.au, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !113
  %i.oe = load i32, ptr %i.ob, align 4, !tbaa !113
  %i.of = sub nsw i32 %i.od, %i.oe
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i: ; preds = %bb.at
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.oa
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !113
  br label %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i

_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i: ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i, %bb.au
  %.0.in.i.i.i = phi i32 [ %i.oh, %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i ], [ %i.of, %bb.au ]
  %.0.i.i.i = sext i32 %.0.in.i.i.i to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i

bb.av:                                            ; preds = %bb.as
  %i.oi = load i32, ptr %i.ob, align 4, !tbaa !113
  %i.oj = sext i32 %i.oi to i64                   ; 3 uses
  %i.ok = icmp eq ptr %i.nx, null
  br i1 %i.ok, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ol = getelementptr i8, ptr %i.ob, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !113
  %i.on = sext i32 %i.om to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.oa
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !113
  %i.oq = sext i32 %i.op to i64
  %i.or = add nsw i64 %i.oq, %i.oj
  br label %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i

_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i: ; preds = %bb.ax, %bb.aw, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i
  %i.os = phi ptr [ %i.nu, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i ], [ null, %bb.aw ], [ %i.nx, %bb.ax ]
  %.sroa.78.1.i = phi i64 [ 0, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i ], [ %i.oj, %bb.aw ], [ %i.oj, %bb.ax ] ; 5 uses
  %.sink.i.i = phi i64 [ %.0.i.i.i, %_ZNK5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE8nonZerosEv.exit.i.i ], [ %i.on, %bb.aw ], [ %i.or, %bb.ax ] ; 4 uses
  %i.ot = icmp slt i64 %.sroa.78.1.i, %.sink.i.i
  br i1 %i.ot, label %.lr.ph.i279.preheader, label %.loopexit510

.lr.ph.i279.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i
  %i.ou = sub nsw i64 %.sink.i.i, %.sroa.78.1.i
  %xtraiter810 = and i64 %i.ou, 3                 ; 2 uses
  %lcmp.mod811.not = icmp eq i64 %xtraiter810, 0
  br i1 %lcmp.mod811.not, label %.lr.ph.i279.prol.loopexit, label %.lr.ph.i279.prol

.lr.ph.i279.prol:                                 ; preds = %.lr.ph.i279.preheader, %.lr.ph.i279.prol
  %.015.i.prol = phi double [ %i.pc, %.lr.ph.i279.prol ], [ 0.000000e+00, %.lr.ph.i279.preheader ]
  %.sroa.78.014.i.prol = phi i64 [ %i.pd, %.lr.ph.i279.prol ], [ %.sroa.78.1.i, %.lr.ph.i279.preheader ] ; 3 uses
  %prol.iter812 = phi i64 [ %prol.iter812.next, %.lr.ph.i279.prol ], [ 0, %.lr.ph.i279.preheader ]
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.np, i64 %.sroa.78.014.i.prol
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !130
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %.sroa.78.014.i.prol
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !113
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds [8 x i8], ptr %.sroa.0362.0, i64 %i.oz
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !130
  %i.pc = tail call double @llvm.fmuladd.f64(double %i.ow, double %i.pb, double %.015.i.prol) ; 3 uses
  %i.pd = add nsw i64 %.sroa.78.014.i.prol, 1     ; 2 uses
  %prol.iter812.next = add i64 %prol.iter812, 1   ; 2 uses
  %prol.iter812.cmp.not = icmp eq i64 %prol.iter812.next, %xtraiter810
  br i1 %prol.iter812.cmp.not, label %.lr.ph.i279.prol.loopexit, label %.lr.ph.i279.prol, !llvm.loop !509

.lr.ph.i279.prol.loopexit:                        ; preds = %.lr.ph.i279.prol, %.lr.ph.i279.preheader
  %.lcssa780.unr = phi double [ poison, %.lr.ph.i279.preheader ], [ %i.pc, %.lr.ph.i279.prol ]
  %.015.i.unr = phi double [ 0.000000e+00, %.lr.ph.i279.preheader ], [ %i.pc, %.lr.ph.i279.prol ]
  %.sroa.78.014.i.unr = phi i64 [ %.sroa.78.1.i, %.lr.ph.i279.preheader ], [ %i.pd, %.lr.ph.i279.prol ]
  %i.pe = sub nsw i64 %.sroa.78.1.i, %.sink.i.i
  %i.pf = icmp ugt i64 %i.pe, -4
  br i1 %i.pf, label %.loopexit510, label %.lr.ph.i279

.lr.ph.i279:                                      ; preds = %.lr.ph.i279.prol.loopexit, %.lr.ph.i279
  %.015.i = phi double [ %i.qo, %.lr.ph.i279 ], [ %.015.i.unr, %.lr.ph.i279.prol.loopexit ]
  %.sroa.78.014.i = phi i64 [ %i.qp, %.lr.ph.i279 ], [ %.sroa.78.014.i.unr, %.lr.ph.i279.prol.loopexit ] ; 6 uses
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.np, i64 %.sroa.78.014.i
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !130
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %.sroa.78.014.i
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !113
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %.sroa.0362.0, i64 %i.pk
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !130
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.pm, double %.015.i)
  %i.po = add nsw i64 %.sroa.78.014.i, 1          ; 2 uses
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.po
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !130
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.po
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !113
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %.sroa.0362.0, i64 %i.pt
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !130
  %i.pw = tail call double @llvm.fmuladd.f64(double %i.pq, double %i.pv, double %i.pn)
  %i.px = add nsw i64 %.sroa.78.014.i, 2          ; 2 uses
  %i.py = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.px
  %i.pz = load double, ptr %i.py, align 8, !tbaa !130
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.px
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !113
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %.sroa.0362.0, i64 %i.qc
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !130
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.pz, double %i.qe, double %i.pw)
  %i.qg = add nsw i64 %.sroa.78.014.i, 3          ; 2 uses
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.qg
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !130
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.qg
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !113
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %.sroa.0362.0, i64 %i.ql
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !130
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qi, double %i.qn, double %i.qf) ; 2 uses
  %i.qp = add nsw i64 %.sroa.78.014.i, 4          ; 2 uses
  %exitcond.not.i280.3 = icmp eq i64 %i.qp, %.sink.i.i
  br i1 %exitcond.not.i280.3, label %.loopexit510, label %.lr.ph.i279, !llvm.loop !510

.loopexit510:                                     ; preds = %.lr.ph.i279.prol.loopexit, %.lr.ph.i279, %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i
  %.0.lcssa.i = phi double [ 0.000000e+00, %_ZN5Eigen20SparseCompressedBaseINS_5BlockINS_12SparseMatrixIdLi0EiEELin1ELi1ELb1EEEE13InnerIteratorC2ERKS5_l.exit.i ], [ %.lcssa780.unr, %.lr.ph.i279.prol.loopexit ], [ %i.qo, %.lr.ph.i279 ]
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.oa
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !130
  %i.qs = fmul double %.0.lcssa.i, %i.qr          ; 3 uses
  %i.qt = load i32, ptr %i.ob, align 4, !tbaa !113
  %i.qu = sext i32 %i.qt to i64                   ; 15 uses
  br i1 %i.nv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.loopexit510
  %i.qv = getelementptr i8, ptr %i.ob, i64 4
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !113
  %i.qx = sext i32 %i.qw to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit282

bb.az:                                            ; preds = %.loopexit510
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.oa
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !113
  %i.ra = sext i32 %i.qz to i64
  %i.rb = add nsw i64 %i.ra, %i.qu
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit282

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit282: ; preds = %bb.ay, %bb.az
  %.sink.i281 = phi i64 [ %i.qx, %bb.ay ], [ %i.rb, %bb.az ] ; 4 uses
  %i.rc = icmp sgt i64 %.sink.i281, %i.qu
  br i1 %i.rc, label %.lr.ph563.preheader, label %._crit_edge564

.lr.ph563.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit282
  %i.rd = sub nsw i64 %.sink.i281, %i.qu
  %.neg = add nsw i64 %i.qu, 1
  %xtraiter813 = and i64 %i.rd, 1
  %lcmp.mod814.not = icmp eq i64 %xtraiter813, 0
  br i1 %lcmp.mod814.not, label %.lr.ph563.prol.loopexit, label %.lr.ph563.prol

.lr.ph563.prol:                                   ; preds = %.lr.ph563.preheader
  %i.re = getelementptr inbounds [8 x i8], ptr %i.np, i64 %i.qu
  %i.rf = load double, ptr %i.re, align 8, !tbaa !130
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.qu
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !113
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %.sroa.0362.0, i64 %i.ri ; 2 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !130
  %i.rl = fneg double %i.rf
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.rl, double %i.qs, double %i.rk)
  store double %i.rm, ptr %i.rj, align 8, !tbaa !130
  %i.rn = add nsw i64 %i.qu, 1
  br label %.lr.ph563.prol.loopexit

.lr.ph563.prol.loopexit:                          ; preds = %.lr.ph563.prol, %.lr.ph563.preheader
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal8coletreeINS_12SparseMatrixIdLi0EiEENS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEiRKT_RT0_SA_PNS6_12StorageIndexE:bb.a
  %i.as = add nsw i32 %.sroa.speculated149, -1
  %i.at = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated149, i32 2)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sdiv i32 %i.as, %i.au                   ; 2 uses
  %or.cond = icmp sgt i32 %.sroa.speculated149, 0
  br i1 %or.cond, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.loopexit190
  %min.iters.check234 = icmp ult i32 %.sroa.speculated149, 8
  br i1 %min.iters.check234, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, label %vector.ph235

vector.ph235:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec236 = and i64 %i.ar, 2147483640           ; 3 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph235
  %index240 = phi i64 [ 0, %vector.ph235 ], [ %index.next241, %vector.body239 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph235 ], [ %vec.ind.next, %vector.body239 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aw = mul nsw <4 x i32> %broadcast.splat238, %vec.ind
  %i.ax = mul nsw <4 x i32> %broadcast.splat238, %step.add
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index240 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !113
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !113
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ba, label %middle.block242, label %vector.body239, !llvm.loop !553

middle.block242:                                  ; preds = %vector.body239
  %cmp.n243 = icmp eq i64 %n.vec236, %i.ar
  br i1 %cmp.n243, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec236, %middle.block242 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246 ] ; 3 uses
  %i.bb = trunc i64 %.05.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.bc = mul nsw i32 %i.av, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !113
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.ar
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !554

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %.loopexit190
  br i1 %i.g, label %.lr.ph193, label %._crit_edge202

.lr.ph193:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  %.not83 = icmp eq ptr %3, null                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !135 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !133 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  %wide.trip.count209 = and i64 %i.b, 2147483647  ; 2 uses
  br i1 %i.bl, label %.lr.ph193.split.us, label %.lr.ph193.split

.lr.ph193.split.us:                               ; preds = %.lr.ph193, %._crit_edge.us
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %._crit_edge.us ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv206 to i32 ; 3 uses
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph193.split.us
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv206
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !113
  %i.bp = sext i32 %i.bo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %bb.m, %.lr.ph193.split.us
  %.058.us = phi i64 [ %i.bp, %bb.m ], [ %indvars.iv206, %.lr.ph193.split.us ]
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.058.us ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !113 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !113 ; 2 uses
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bt
  br i1 %i.bv, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bw = sext i32 %i.br to i64                   ; 5 uses
  %i.bx = sub nsw i64 %i.bu, %i.bw
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !113
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !113
  %.sroa.speculated.us.prol = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cc)
  store i32 %.sroa.speculated.us.prol, ptr %i.cb, align 4, !tbaa !113
  %i.cd = add nsw i64 %i.bw, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.7115.0191.us.unr = phi i64 [ %i.bw, %.lr.ph.us.preheader ], [ %i.cd, %.lr.ph.us.prol ]
  %i.ce = add nsw i64 %i.bu, -1
  %i.cf = icmp eq i64 %i.ce, %i.bw
  br i1 %i.cf, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.7115.0191.us = phi i64 [ %i.cr, %.lr.ph.us ], [ %.sroa.7115.0191.us.unr, %.lr.ph.us.prol.loopexit ] ; 3 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !113
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !113
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.ck)
  store i32 %.sroa.speculated.us, ptr %i.cj, align 4, !tbaa !113
  %i.cl = getelementptr [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !113
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !113
  %.sroa.speculated.us.1 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cq)
  store i32 %.sroa.speculated.us.1, ptr %i.cp, align 4, !tbaa !113
  %i.cr = add nsw i64 %.sroa.7115.0191.us, 2      ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.cr, %i.bu
  br i1 %exitcond205.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !555

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.lr.ph201, label %.lr.ph193.split.us, !llvm.loop !556

.lr.ph201:                                        ; preds = %._crit_edge, %._crit_edge.us
  %i.cs = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %.not = icmp eq ptr %3, null
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !135
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !127
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !133 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %sext = shl i64 %i.e, 32
  %i.da = ashr exact i64 %sext, 32
  %wide.trip.count214 = and i64 %i.b, 2147483647
  br label %bb.o

.lr.ph193.split:                                  ; preds = %.lr.ph193, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph193.split
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !113
  %i.de = sext i32 %i.dd to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.n, %.lr.ph193.split
  %.058 = phi i64 [ %i.de, %bb.n ], [ %indvars.iv, %.lr.ph193.split ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.058
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !113
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.058
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !113 ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add nsw i64 %i.dk, %i.dh
  %i.dm = icmp sgt i32 %i.dj, 0
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count209
  br i1 %exitcond.not, label %.lr.ph201, label %.lr.ph193.split, !llvm.loop !556

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.7115.0191 = phi i64 [ %i.ds, %.lr.ph ], [ %i.dh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !113
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !113
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.dr)
  store i32 %.sroa.speculated, ptr %i.dq, align 4, !tbaa !113
  %i.ds = add nsw i64 %.sroa.7115.0191, 1         ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.dl
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !llvm.loop !555

._crit_edge202:                                   ; preds = %._crit_edge199, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  tail call void @free(ptr noundef %.sroa.0137.0164171178) #33
  ret i32 0

bb.o:                                             ; preds = %.lr.ph201, %._crit_edge199
  %indvars.iv211 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next212, %._crit_edge199 ] ; 12 uses
  %i.du = icmp sge i64 %indvars.iv211, %i.da      ; 2 uses
  %4 = zext i1 %i.du to i8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0129.0179, i64 %indvars.iv211
  %i.dw = trunc nuw nsw i64 %indvars.iv211 to i32 ; 5 uses
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !113
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0164171178, i64 %indvars.iv211
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !113
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv211
  store i32 %i.c, ptr %i.dy, align 4, !tbaa !113
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv211
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !113
  %i.eb = sext i32 %i.ea to i64
  br label %bb.r

bb.q:                                             ; preds = %.invoke
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  br label %.body

bb.r:                                             ; preds = %bb.p, %bb.o
  %.055 = phi i64 [ %i.eb, %bb.p ], [ %indvars.iv211, %bb.o ] ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.055 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !113
  %i.ef = sext i32 %i.ee to i64                   ; 3 uses
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr i8, ptr %i.ed, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !113
  %i.ei = sext i32 %i.eh to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

bb.t:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.055
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !113
  %i.el = sext i32 %i.ek to i64
  %i.em = add nsw i64 %i.el, %i.ef
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107: ; preds = %bb.s, %bb.t
  %.sink.i106 = phi i64 [ %i.ei, %bb.s ], [ %i.em, %bb.t ] ; 2 uses
  %5 = icmp sgt i64 %.sink.i106, %i.ef            ; 2 uses
  %6 = xor i1 %i.du, true
  %.not188194 = select i1 %5, i1 true, i1 %6
  br i1 %.not188194, label %.lr.ph198, label %._crit_edge199

._crit_edge199:                                   ; preds = %bb.y, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge202, label %bb.o, !llvm.loop !557

.lr.ph198:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107, %bb.y
  %i.en = phi i1 [ %7, %bb.y ], [ %5, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.057197 = phi i32 [ %.2, %bb.y ], [ %i.dw, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 3 uses
  %.059193 = phi i8 [ %spec.select, %bb.y ], [ %4, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.sroa.7.0195 = phi i64 [ %i.fe, %bb.y ], [ %i.ef, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 2 uses
  br i1 %i.en, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph198
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %.sroa.7.0195
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !113
  %i.eq = sext i32 %i.ep to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph198, %bb.u
  %.0 = phi i64 [ %i.eq, %bb.u ], [ %indvars.iv211, %.lr.ph198 ] ; 2 uses
  %i.er = icmp eq i64 %.0, %indvars.iv211
  %spec.select = select i1 %i.er, i8 1, i8 %.059193 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.0
  %i.et = load i32, ptr %i.es, align 4, !tbaa !113 ; 2 uses
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %.not78 = icmp sgt i64 %indvars.iv211, %i.eu
  br i1 %.not78, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.014.in18.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.eu
  %.01419.i = load i32, ptr %.014.in18.i, align 4, !tbaa !113 ; 3 uses
  %.pn20.i = sext i32 %.01419.i to i64            ; 2 uses
  %.0.in21.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn20.i
  %.022.i = load i32, ptr %.0.in21.i, align 4, !tbaa !113 ; 2 uses
  %.not23.i = icmp eq i32 %.022.i, %.01419.i
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.025.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.022.i, %bb.w ] ; 3 uses
  %.01524.i = phi i32 [ %.025.i, %.lr.ph.i ], [ %i.et, %bb.w ]
  %i.ev = sext i32 %.01524.i to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.ev
  store i32 %.025.i, ptr %i.ew, align 4, !tbaa !113
  %.pn16.i = sext i32 %.025.i to i64
  %.014.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn16.i
  %.014.i = load i32, ptr %.014.in.i, align 4, !tbaa !113 ; 3 uses
  %.pn.i = sext i32 %.014.i to i64                ; 2 uses
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !113 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.014.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !558

.loopexit:                                        ; preds = %.lr.ph.i, %bb.w
  %.pre-phi = phi i64 [ %.pn20.i, %bb.w ], [ %.pn.i, %.lr.ph.i ]
  %.014.lcssa.i = phi i32 [ %.01419.i, %bb.w ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %.sroa.0137.0164171178, i64 %.pre-phi ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !113 ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %.not79 = icmp eq i64 %indvars.iv211, %i.ez
  br i1 %.not79, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.fa
  store i32 %i.dw, ptr %i.fb, align 4, !tbaa !113
  %i.fc = sext i32 %.057197 to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.fc
  store i32 %.014.lcssa.i, ptr %i.fd, align 4, !tbaa !113
  store i32 %i.dw, ptr %i.ex, align 4, !tbaa !113
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %bb.x, %bb.v
  %.2 = phi i32 [ %.057197, %bb.v ], [ %.014.lcssa.i, %bb.x ], [ %.057197, %.loopexit ]
  %i.fe = add nsw i64 %.sroa.7.0195, 1            ; 2 uses
  %7 = icmp slt i64 %i.fe, %.sink.i106            ; 2 uses
  %8 = icmp eq i8 %spec.select, 0
  %.not188 = select i1 %7, i1 true, i1 %8
  br i1 %.not188, label %.lr.ph198, label %._crit_edge199, !llvm.loop !559

.body:                                            ; preds = %bb.q, %bb.e
  %.sroa.0137.0165 = phi ptr [ %calloc, %bb.e ], [ %.sroa.0137.0164171178, %bb.q ]
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.ec, %bb.q ]
  tail call void @free(ptr noundef %.sroa.0137.0165) #33
  resume { ptr, i32 } %.pn84.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !182
  %.not.i = icmp eq i64 %1, %i.b
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !165
  tail call void @free(ptr noundef %i.c) #33
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #35 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !119
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.b
  %.sink.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !165
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %bb.a, %.sink.split.i
  store i64 %1, ptr %i.a, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5Eigen8internal6ColamdL14init_rows_colsIiEET_S3_S3_PNS1_12RowStructureIS3_EEPNS1_12ColStructureIS3_EEPS3_SA_SA_(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(address) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #20 {
bb.a:
  %.not247 = icmp eq i32 %1, 0                    ; 4 uses
  br i1 %.not247, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.b = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv ; 4 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !186
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next
  %i.e = load i32, ptr %i.d, align 4, !tbaa !113
  %i.f = sub nsw i32 %i.e, %i.b                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !187
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 -8, ptr %i.k, align 4, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.j, ptr %i.l, align 4, !tbaa !113
  %i.m = load i32, ptr %i.i, align 4, !tbaa !187
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.m, ptr %i.n, align 4, !tbaa !113
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 -1>, ptr %i.o, align 4, !tbaa !71
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !560

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store i32 0, ptr %i.p, align 4, !tbaa !113
  %.not248 = icmp eq i32 %0, 0                    ; 3 uses
  br i1 %.not248, label %.preheader204, label %.lr.ph212.preheader

.lr.ph212.preheader:                              ; preds = %._crit_edge
  %wide.trip.count264 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count264, 3      ; 3 uses
  %i.q = icmp samesign ult i32 %0, 4
  br i1 %i.q, label %.lr.ph212.epil.preheader, label %.lr.ph212.preheader.new

.lr.ph212.preheader.new:                          ; preds = %.lr.ph212.preheader
  %unroll_iter = and i64 %wide.trip.count264, 2147483644
  br label %.lr.ph212

.preheader204.loopexit.unr-lcssa:                 ; preds = %.lr.ph212
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader204, label %.lr.ph212.epil.preheader

.lr.ph212.epil.preheader:                         ; preds = %.preheader204.loopexit.unr-lcssa, %.lr.ph212.preheader
  %indvars.iv261.epil.init = phi i64 [ 0, %.lr.ph212.preheader ], [ %indvars.iv.next262.3, %.preheader204.loopexit.unr-lcssa ]
  %lcmp.mod339 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod339)
  br label %.lr.ph212.epil

.lr.ph212.epil:                                   ; preds = %.lr.ph212.epil, %.lr.ph212.epil.preheader
  %indvars.iv261.epil = phi i64 [ %indvars.iv261.epil.init, %.lr.ph212.epil.preheader ], [ %indvars.iv.next262.epil, %.lr.ph212.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph212.epil.preheader ], [ %epil.iter.next, %.lr.ph212.epil ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261.epil ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !189
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 -1, ptr %i.t, align 4, !tbaa !71
  %indvars.iv.next262.epil = add nuw nsw i64 %indvars.iv261.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader204, label %.lr.ph212.epil, !llvm.loop !561

.preheader204:                                    ; preds = %.preheader204.loopexit.unr-lcssa, %.lr.ph212.epil, %._crit_edge
  br i1 %.not247, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %.preheader204
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %wide.trip.count269 = zext nneg i32 %1 to i64   ; 2 uses
  br label %bb.d

.lr.ph212:                                        ; preds = %.lr.ph212, %.lr.ph212.preheader.new
  %indvars.iv261 = phi i64 [ 0, %.lr.ph212.preheader.new ], [ %indvars.iv.next262.3, %.lr.ph212 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph212.preheader.new ], [ %niter.next.3, %.lr.ph212 ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !189
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 -1, ptr %i.z, align 4, !tbaa !71
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !189
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 -1, ptr %i.ac, align 4, !tbaa !71
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  store i32 0, ptr %i.ae, align 4, !tbaa !189
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  store i32 -1, ptr %i.af, align 4, !tbaa !71
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv261 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  store i32 0, ptr %i.ah, align 4, !tbaa !189
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  store i32 -1, ptr %i.ai, align 4, !tbaa !71
  %indvars.iv.next262.3 = add nuw nsw i64 %indvars.iv261, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader204.loopexit.unr-lcssa, label %.lr.ph212, !llvm.loop !562

.loopexit203:                                     ; preds = %bb.k, %bb.d
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge219, label %bb.d, !llvm.loop !563

bb.d:                                             ; preds = %.lr.ph218, %.loopexit203
  %indvars.iv266 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next267, %.loopexit203 ] ; 8 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv266
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !113 ; 2 uses
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next267
  %i.am = load i32, ptr %i.al, align 4, !tbaa !113 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %4, i64 %i.an
  %i.ap = icmp slt i32 %i.ak, %i.am
  br i1 %i.ap, label %.lr.ph216, label %.loopexit203

.lr.ph216:                                        ; preds = %bb.d
  %i.aq = sext i32 %i.ak to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aq
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv266
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv266 to i32
  %i.av = trunc nuw nsw i64 %indvars.iv266 to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph216, %bb.k
end_hunk_1
