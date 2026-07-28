inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@bary_mul_toom3:bb.a
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !7
  %i.jb = lshr i64 %i.iy, 32
  %i.jc = or disjoint i64 %.05779.i.i652, 1       ; 3 uses
  %i.jd = getelementptr [4 x i8], ptr %.061.i.i6492475, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !7
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr [4 x i8], ptr %.063.i.i6472471, i64 %i.jc
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !7
  %i.ji = zext i32 %i.jh to i64
  %i.jj = add nuw nsw i64 %i.jb, %i.jf
  %i.jk = add nuw nsw i64 %i.jj, %i.ji            ; 2 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = getelementptr [4 x i8], ptr %i.ab, i64 %i.jc
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !7
  %i.jn = lshr i64 %i.jk, 32                      ; 3 uses
  %i.jo = add nuw i64 %.05779.i.i652, 2           ; 2 uses
  %niter3406.next.1 = add i64 %niter3406, 2       ; 2 uses
  %niter3406.ncmp.1 = icmp eq i64 %niter3406.next.1, %unroll_iter3405
  br i1 %niter3406.ncmp.1, label %.preheader72.i.i655.loopexit.unr-lcssa, label %.lr.ph.i.i651, !llvm.loop !34

.preheader70.i.i657:                              ; preds = %.preheader72.i.i655
  %.not1998 = icmp ugt i64 %.064.i.i6462470, %i.g
  br i1 %.not1998, label %.critedge597, label %.lr.ph88.preheader.i.i663

.lr.ph88.preheader.i.i663:                        ; preds = %.preheader70.i.i657
  %i.jp = icmp eq i64 %.058.lcssa.i.i656, 0
  br i1 %i.jp, label %.loopexit71.i.i665, label %bb.r

bb.r:                                             ; preds = %.lr.ph88.preheader.i.i663
  %i.jq = getelementptr [4 x i8], ptr %i.ab, i64 %.064.i.i6462470
  store i32 1, ptr %i.jq, align 4, !tbaa !7
  %i.jr = add nuw nsw i64 %.064.i.i6462470, 1
  %exitcond103.peel.not.i.i664 = icmp eq i64 %.064.i.i6462470, %i.g
  br i1 %exitcond103.peel.not.i.i664, label %.critedge597, label %.loopexit71.i.i665

.lr.ph83.i.i676:                                  ; preds = %.preheader72.i.i655, %bb.s
  %.182.i.i677 = phi i64 [ %i.ka, %bb.s ], [ %.064.i.i6462470, %.preheader72.i.i655 ] ; 4 uses
  %.15981.i.i678 = phi i64 [ %i.jz, %bb.s ], [ %.058.lcssa.i.i656, %.preheader72.i.i655 ]
  %i.js = icmp eq i64 %.15981.i.i678, 0
  br i1 %i.js, label %.loopexit71.i.i665, label %bb.s

bb.s:                                             ; preds = %.lr.ph83.i.i676
  %i.jt = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.182.i.i677
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !7
  %i.jv = zext i32 %i.ju to i64
  %i.jw = add nuw nsw i64 %i.jv, 1                ; 2 uses
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = getelementptr [4 x i8], ptr %i.ab, i64 %.182.i.i677
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !7
  %i.jz = lshr i64 %i.jw, 32
  %i.ka = add i64 %.182.i.i677, 1                 ; 2 uses
  %exitcond102.not.i.i679 = icmp eq i64 %i.ka, %.062.i.i6482474
  br i1 %exitcond102.not.i.i679, label %.critedge597, label %.lr.ph83.i.i676, !llvm.loop !36

.loopexit71.i.i665:                               ; preds = %.lr.ph83.i.i676, %bb.r, %.lr.ph88.preheader.i.i663
  %.3.i.i666 = phi i64 [ %i.jr, %bb.r ], [ %.064.i.i6462470, %.lr.ph88.preheader.i.i663 ], [ %.182.i.i677, %.lr.ph83.i.i676 ] ; 8 uses
  %i.kb = icmp eq ptr %.063.i.i6472472, %i.ab
  %i.kc = icmp eq i64 %.062.i.i6482474, %i.h
  %or.cond.i.i667 = and i1 %i.kb, %i.kc
  br i1 %or.cond.i.i667, label %.critedge597, label %.preheader69.i.i668

.preheader69.i.i668:                              ; preds = %.loopexit71.i.i665
  %i.kd = icmp ult i64 %.3.i.i666, %.062.i.i6482474
  br i1 %i.kd, label %.lr.ph91.i.i673.preheader, label %.preheader.i.i669

.lr.ph91.i.i673.preheader:                        ; preds = %.preheader69.i.i668
  %i.ke = sub nuw i64 %.062.i.i6482474, %.3.i.i666 ; 3 uses
  %min.iters.check2904 = icmp ult i64 %i.ke, 16
  br i1 %min.iters.check2904, label %.lr.ph91.i.i673.preheader3336, label %vector.memcheck2900

vector.memcheck2900:                              ; preds = %.lr.ph91.i.i673.preheader
  %i.kf = shl i64 %i.g, 3
  %i.kg = add i64 %i.kf, %.05322856
  %i.kh = sub i64 %i.kg, %.063.i.i64724722901
  %i.ki = add i64 %i.kh, 7
  %diff.check2902 = icmp ult i64 %i.ki, 31
  br i1 %diff.check2902, label %.lr.ph91.i.i673.preheader3336, label %vector.ph2905

vector.ph2905:                                    ; preds = %vector.memcheck2900
  %n.vec2907 = and i64 %i.ke, -8                  ; 3 uses
  %i.kj = add i64 %.3.i.i666, %n.vec2907
  br label %vector.body2908

vector.body2908:                                  ; preds = %vector.body2908, %vector.ph2905
  %index2909 = phi i64 [ 0, %vector.ph2905 ], [ %index.next2912, %vector.body2908 ] ; 2 uses
  %i.kk = add nuw i64 %.3.i.i666, %index2909      ; 2 uses
  %i.kl = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.kk ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  %wide.load2910 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !7
  %wide.load2911 = load <4 x i32>, ptr %i.km, align 4, !tbaa !7
  %i.kn = getelementptr [4 x i8], ptr %i.ab, i64 %i.kk ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  store <4 x i32> %wide.load2910, ptr %i.kn, align 4, !tbaa !7
  store <4 x i32> %wide.load2911, ptr %i.ko, align 4, !tbaa !7
  %index.next2912 = add nuw i64 %index2909, 8     ; 2 uses
  %i.kp = icmp eq i64 %index.next2912, %n.vec2907
  br i1 %i.kp, label %middle.block2913, label %vector.body2908, !llvm.loop !80

middle.block2913:                                 ; preds = %vector.body2908
  %cmp.n2914 = icmp eq i64 %i.ke, %n.vec2907
  br i1 %cmp.n2914, label %.critedge597, label %.lr.ph91.i.i673.preheader3336

.lr.ph91.i.i673.preheader3336:                    ; preds = %vector.memcheck2900, %.lr.ph91.i.i673.preheader, %middle.block2913
  %.490.i.i674.ph = phi i64 [ %.3.i.i666, %vector.memcheck2900 ], [ %.3.i.i666, %.lr.ph91.i.i673.preheader ], [ %i.kj, %middle.block2913 ] ; 4 uses
  %i.kq = sub i64 %.062.i.i6482474, %.490.i.i674.ph
  %xtraiter3407 = and i64 %i.kq, 3                ; 2 uses
  %lcmp.mod3408.not = icmp eq i64 %xtraiter3407, 0
  br i1 %lcmp.mod3408.not, label %.lr.ph91.i.i673.prol.loopexit, label %.lr.ph91.i.i673.prol

.lr.ph91.i.i673.prol:                             ; preds = %.lr.ph91.i.i673.preheader3336, %.lr.ph91.i.i673.prol
  %.490.i.i674.prol = phi i64 [ %i.ku, %.lr.ph91.i.i673.prol ], [ %.490.i.i674.ph, %.lr.ph91.i.i673.preheader3336 ] ; 3 uses
  %prol.iter3409 = phi i64 [ %prol.iter3409.next, %.lr.ph91.i.i673.prol ], [ 0, %.lr.ph91.i.i673.preheader3336 ]
  %i.kr = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.490.i.i674.prol
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !7
  %i.kt = getelementptr [4 x i8], ptr %i.ab, i64 %.490.i.i674.prol
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !7
  %i.ku = add nuw i64 %.490.i.i674.prol, 1        ; 2 uses
  %prol.iter3409.next = add i64 %prol.iter3409, 1 ; 2 uses
  %prol.iter3409.cmp.not = icmp eq i64 %prol.iter3409.next, %xtraiter3407
  br i1 %prol.iter3409.cmp.not, label %.lr.ph91.i.i673.prol.loopexit, label %.lr.ph91.i.i673.prol, !llvm.loop !81

.lr.ph91.i.i673.prol.loopexit:                    ; preds = %.lr.ph91.i.i673.prol, %.lr.ph91.i.i673.preheader3336
  %.490.i.i674.unr = phi i64 [ %.490.i.i674.ph, %.lr.ph91.i.i673.preheader3336 ], [ %i.ku, %.lr.ph91.i.i673.prol ]
  %i.kv = sub i64 %.490.i.i674.ph, %.062.i.i6482474
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %.critedge597, label %.lr.ph91.i.i673

.preheader.i.i669:                                ; preds = %.preheader69.i.i668
  %.not1999 = icmp ugt i64 %.3.i.i666, %i.g
  br i1 %.not1999, label %.critedge597, label %.critedge597.sink.split

.lr.ph91.i.i673:                                  ; preds = %.lr.ph91.i.i673.prol.loopexit, %.lr.ph91.i.i673
  %.490.i.i674 = phi i64 [ %i.lm, %.lr.ph91.i.i673 ], [ %.490.i.i674.unr, %.lr.ph91.i.i673.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.490.i.i674
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !7
  %i.kz = getelementptr [4 x i8], ptr %i.ab, i64 %.490.i.i674
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !7
  %i.la = add nuw i64 %.490.i.i674, 1             ; 2 uses
  %i.lb = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !7
  %i.ld = getelementptr [4 x i8], ptr %i.ab, i64 %i.la
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !7
  %i.le = add nuw i64 %.490.i.i674, 2             ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !7
  %i.lh = getelementptr [4 x i8], ptr %i.ab, i64 %i.le
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !7
  %i.li = add nuw i64 %.490.i.i674, 3             ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !7
  %i.ll = getelementptr [4 x i8], ptr %i.ab, i64 %i.li
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !7
  %i.lm = add nuw i64 %.490.i.i674, 4             ; 2 uses
  %exitcond106.not.i.i675.3 = icmp eq i64 %i.lm, %.062.i.i6482474
  br i1 %exitcond106.not.i.i675.3, label %.critedge597, label %.lr.ph91.i.i673, !llvm.loop !82

bb.t:                                             ; preds = %bb.o, %.preheader72.i.i620.thread, %bary_add.exit645
  %.0547245424582462 = phi i32 [ %.0547, %.preheader72.i.i620.thread ], [ %.05472453, %bary_add.exit645 ], [ %.05472453, %bb.o ] ; 6 uses
  %i.ln = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.h) ; 10 uses
  %.not97.i.i681 = icmp eq i64 %i.ar, 0
  br i1 %.not97.i.i681, label %._crit_edge.i.i686, label %.lr.ph.i.i682.preheader

.lr.ph.i.i682.preheader:                          ; preds = %bb.t
  %xtraiter3379 = and i64 %i.ln, 1
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %.lr.ph.i.i682.epil.preheader, label %.lr.ph.i.i682.preheader.new

.lr.ph.i.i682.preheader.new:                      ; preds = %.lr.ph.i.i682.preheader
  %unroll_iter3383 = and i64 %i.ln, 9223372036854775806
  br label %.lr.ph.i.i682

.lr.ph.i.i682:                                    ; preds = %.lr.ph.i.i682, %.lr.ph.i.i682.preheader.new
  %.06278.i.i683 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.mm, %.lr.ph.i.i682 ] ; 5 uses
  %.06377.i.i684 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.ml, %.lr.ph.i.i682 ]
  %niter3384 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %niter3384.next.1, %.lr.ph.i.i682 ]
  %i.lp = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7
  %i.lu = zext i32 %i.lt to i64
  %i.lv = sub nsw i64 %i.lr, %i.lu
  %i.lw = add nsw i64 %i.lv, %.06377.i.i684       ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !7
  %i.lz = ashr i64 %i.lw, 32
  %i.ma = or disjoint i64 %.06278.i.i683, 1       ; 3 uses
  %i.mb = getelementptr [4 x i8], ptr %i.at, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !7
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr [4 x i8], ptr %i.aa, i64 %i.ma
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !7
  %i.mg = zext i32 %i.mf to i64
  %i.mh = sub nsw i64 %i.md, %i.mg
  %i.mi = add nsw i64 %i.mh, %i.lz                ; 2 uses
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = getelementptr [4 x i8], ptr %i.ab, i64 %i.ma
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !7
  %i.ml = ashr i64 %i.mi, 32                      ; 3 uses
  %i.mm = add nuw nsw i64 %.06278.i.i683, 2       ; 2 uses
  %niter3384.next.1 = add i64 %niter3384, 2       ; 2 uses
  %niter3384.ncmp.1 = icmp eq i64 %niter3384.next.1, %unroll_iter3383
  br i1 %niter3384.ncmp.1, label %._crit_edge.i.i686.loopexit.unr-lcssa, label %.lr.ph.i.i682, !llvm.loop !48

._crit_edge.i.i686.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i682
  %lcmp.mod3380.not = icmp eq i64 %xtraiter3379, 0
  br i1 %lcmp.mod3380.not, label %._crit_edge.i.i686, label %.lr.ph.i.i682.epil.preheader

.lr.ph.i.i682.epil.preheader:                     ; preds = %._crit_edge.i.i686.loopexit.unr-lcssa, %.lr.ph.i.i682.preheader
  %.06278.i.i683.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.mm, %._crit_edge.i.i686.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i684.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.ml, %._crit_edge.i.i686.loopexit.unr-lcssa ]
  %lcmp.mod3382 = trunc i64 %i.ln to i1
  call void @llvm.assume(i1 %lcmp.mod3382)
  %i.mn = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683.epil.init
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !7
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683.epil.init
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !7
  %i.ms = zext i32 %i.mr to i64
  %i.mt = sub nsw i64 %i.mp, %i.ms
  %i.mu = add nsw i64 %i.mt, %.06377.i.i684.epil.init ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683.epil.init
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !7
  %i.mx = ashr i64 %i.mu, 32
  br label %._crit_edge.i.i686

._crit_edge.i.i686:                               ; preds = %.lr.ph.i.i682.epil.preheader, %._crit_edge.i.i686.loopexit.unr-lcssa, %bb.t
  %.063.lcssa.i.i687 = phi i64 [ 0, %bb.t ], [ %i.ml, %._crit_edge.i.i686.loopexit.unr-lcssa ], [ %i.mx, %.lr.ph.i.i682.epil.preheader ] ; 4 uses
  %.not.i.i688.not = icmp ult i64 %i.g, %i.ar
  br i1 %.not.i.i688.not, label %.preheader72.i.i689, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i686
  %i.my = add nuw nsw i64 %i.g, 1
  %i.mz = sub nuw nsw i64 %i.my, %i.ln
  %i.na = sub nuw nsw i64 %i.g, %i.ln
  %xtraiter3385 = and i64 %i.mz, 3                ; 2 uses
  %lcmp.mod3386.not = icmp eq i64 %xtraiter3385, 0
  br i1 %lcmp.mod3386.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ni, %.lr.ph87.i.i.prol ], [ %i.ln, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26585.i.i.prol = phi i64 [ %i.nh, %.lr.ph87.i.i.prol ], [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ]
  %prol.iter3387 = phi i64 [ %prol.iter3387.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.nb = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i.prol
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !7
  %i.nd = zext i32 %i.nc to i64
  %i.ne = sub nsw i64 %.26585.i.i.prol, %i.nd     ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i.prol
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !7
  %i.nh = ashr i64 %i.ne, 32                      ; 3 uses
  %i.ni = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter3387.next = add i64 %prol.iter3387, 1 ; 2 uses
  %prol.iter3387.cmp.not = icmp eq i64 %prol.iter3387.next, %xtraiter3385
  br i1 %prol.iter3387.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !83

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa3350.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.ln, %.lr.ph87.i.i.preheader ], [ %i.ni, %.lr.ph87.i.i.prol ]
  %.26585.i.i.unr = phi i64 [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %i.nj = icmp samesign ult i64 %i.na, 3
  br i1 %i.nj, label %.loopexit71.i.i690, label %.lr.ph87.i.i

.preheader72.i.i689:                              ; preds = %._crit_edge.i.i686
  %i.nk = icmp ult i64 %i.h, %i.ar
  br i1 %i.nk, label %.lr.ph82.i.i707, label %.loopexit71.i.i690

.lr.ph82.i.i707:                                  ; preds = %.preheader72.i.i689, %bb.u
  %.181.i.i708 = phi i64 [ %i.nt, %bb.u ], [ %i.ln, %.preheader72.i.i689 ] ; 4 uses
  %.16480.i.i709 = phi i64 [ %i.ns, %bb.u ], [ %.063.lcssa.i.i687, %.preheader72.i.i689 ]
  %i.nl = icmp eq i64 %.16480.i.i709, 0
  br i1 %i.nl, label %.loopexit74.i.i696, label %bb.u

bb.u:                                             ; preds = %.lr.ph82.i.i707
  %i.nm = getelementptr [4 x i8], ptr %i.at, i64 %.181.i.i708
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !7
  %i.no = zext i32 %i.nn to i64
  %i.np = add nsw i64 %i.no, -1                   ; 2 uses
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr [4 x i8], ptr %i.ab, i64 %.181.i.i708
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !7
  %i.ns = ashr i64 %i.np, 32                      ; 2 uses
  %i.nt = add i64 %.181.i.i708, 1                 ; 2 uses
  %exitcond107.not.i.i710 = icmp eq i64 %i.nt, %i.ar
  br i1 %exitcond107.not.i.i710, label %.loopexit71.i.i690, label %.lr.ph82.i.i707, !llvm.loop !50

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.oz, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26585.i.i = phi i64 [ %i.oy, %.lr.ph87.i.i ], [ %.26585.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.nu = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !7
  %i.nw = zext i32 %i.nv to i64
  %i.nx = sub nsw i64 %.26585.i.i, %i.nw          ; 2 uses
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !7
  %i.oa = ashr i64 %i.nx, 32
  %i.ob = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.oc = getelementptr [4 x i8], ptr %i.aa, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !7
  %i.oe = zext i32 %i.od to i64
  %i.of = sub nsw i64 %i.oa, %i.oe                ; 2 uses
  %i.og = trunc i64 %i.of to i32
  %i.oh = getelementptr [4 x i8], ptr %i.ab, i64 %i.ob
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !7
  %i.oi = ashr i64 %i.of, 32
  %i.oj = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.aa, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !7
  %i.om = zext i32 %i.ol to i64
  %i.on = sub nsw i64 %i.oi, %i.om                ; 2 uses
  %i.oo = trunc i64 %i.on to i32
  %i.op = getelementptr [4 x i8], ptr %i.ab, i64 %i.oj
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !7
  %i.oq = ashr i64 %i.on, 32
  %i.or = add nuw i64 %.286.i.i, 3                ; 3 uses
  %i.os = getelementptr [4 x i8], ptr %i.aa, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !7
  %i.ou = zext i32 %i.ot to i64
  %i.ov = sub nsw i64 %i.oq, %i.ou                ; 2 uses
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = getelementptr [4 x i8], ptr %i.ab, i64 %i.or
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !7
  %i.oy = ashr i64 %i.ov, 32                      ; 2 uses
  %i.oz = add nuw i64 %.286.i.i, 4
  %exitcond108.not.i.i.3 = icmp eq i64 %i.or, %i.g
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i690, label %.lr.ph87.i.i, !llvm.loop !51

.loopexit71.i.i690:                               ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %bb.u, %.preheader72.i.i689
  %.366.i.i = phi i64 [ %.063.lcssa.i.i687, %.preheader72.i.i689 ], [ %i.ns, %bb.u ], [ %.lcssa3350.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.oy, %.lr.ph87.i.i ]
  %.3.i.i691 = phi i64 [ %i.ln, %.preheader72.i.i689 ], [ %i.ar, %bb.u ], [ %i.h, %.lr.ph87.i.i ], [ %i.h, %.lr.ph87.i.i.prol.loopexit ] ; 4 uses
  %i.pa = icmp eq i64 %.366.i.i, 0
  br i1 %i.pa, label %.loopexit74.i.i696, label %.preheader68.i.i692

.preheader68.i.i692:                              ; preds = %.loopexit71.i.i690
  %.not1994 = icmp ugt i64 %.3.i.i691, %i.g
  br i1 %.not1994, label %.lr.ph.i712.preheader, label %.lr.ph91.preheader.i.i694

.lr.ph.i712.preheader:                            ; preds = %.lr.ph91.preheader.i.i694, %.preheader68.i.i692
  br label %.lr.ph.i712

.lr.ph91.preheader.i.i694:                        ; preds = %.preheader68.i.i692
  %i.pb = shl i64 %.3.i.i691, 2
  %scevgep.i.i695 = getelementptr i8, ptr %i.ab, i64 %i.pb
  %i.pc = sub nuw nsw i64 %i.h, %.3.i.i691
  %i.pd = shl i64 %i.pc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i695, i8 -1, i64 %i.pd, i1 false), !tbaa !7
  br label %.lr.ph.i712.preheader

.loopexit74.i.i696:                               ; preds = %.lr.ph82.i.i707, %.loopexit71.i.i690
  %.5.i.i697 = phi i64 [ %.3.i.i691, %.loopexit71.i.i690 ], [ %.181.i.i708, %.lr.ph82.i.i707 ] ; 7 uses
  %i.pe = icmp eq ptr %i.at, %i.ab
  %i.pf = icmp eq i64 %i.ar, %i.h
  %or.cond.i.i698 = and i1 %i.pf, %i.pe
  br i1 %or.cond.i.i698, label %.critedge597, label %.preheader67.i.i699

.preheader67.i.i699:                              ; preds = %.loopexit74.i.i696
  %i.pg = icmp ult i64 %.5.i.i697, %i.ar
  br i1 %i.pg, label %.lr.ph93.i.i704.preheader, label %.preheader.i.i700

.lr.ph93.i.i704.preheader:                        ; preds = %.preheader67.i.i699
  %i.ph = shl nuw i64 %i.g, 1
  %i.pi = add i64 %.5.i.i697, %i.ph
  %i.pj = sub i64 %3, %i.pi                       ; 3 uses
  %min.iters.check2888 = icmp ult i64 %i.pj, 12
  br i1 %min.iters.check2888, label %.lr.ph93.i.i704.preheader3340, label %vector.memcheck2885

vector.memcheck2885:                              ; preds = %.lr.ph93.i.i704.preheader
  %i.pk = sub i64 %.05322856, %i.a
  %i.pl = add i64 %i.pk, 7
  %diff.check2886 = icmp ult i64 %i.pl, 31
  br i1 %diff.check2886, label %.lr.ph93.i.i704.preheader3340, label %vector.ph2889

vector.ph2889:                                    ; preds = %vector.memcheck2885
  %n.vec2891 = and i64 %i.pj, -8                  ; 3 uses
  %i.pm = add i64 %.5.i.i697, %n.vec2891
  br label %vector.body2892

vector.body2892:                                  ; preds = %vector.body2892, %vector.ph2889
  %index2893 = phi i64 [ 0, %vector.ph2889 ], [ %index.next2896, %vector.body2892 ] ; 2 uses
  %i.pn = add nuw i64 %.5.i.i697, %index2893      ; 2 uses
  %i.po = getelementptr [4 x i8], ptr %i.at, i64 %i.pn ; 2 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 16
  %wide.load2894 = load <4 x i32>, ptr %i.po, align 4, !tbaa !7
  %wide.load2895 = load <4 x i32>, ptr %i.pp, align 4, !tbaa !7
  %i.pq = getelementptr [4 x i8], ptr %i.ab, i64 %i.pn ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 16
  store <4 x i32> %wide.load2894, ptr %i.pq, align 4, !tbaa !7
  store <4 x i32> %wide.load2895, ptr %i.pr, align 4, !tbaa !7
  %index.next2896 = add nuw i64 %index2893, 8     ; 2 uses
  %i.ps = icmp eq i64 %index.next2896, %n.vec2891
  br i1 %i.ps, label %middle.block2897, label %vector.body2892, !llvm.loop !84

middle.block2897:                                 ; preds = %vector.body2892
  %cmp.n2898 = icmp eq i64 %i.pj, %n.vec2891
  br i1 %cmp.n2898, label %.preheader.i.i700, label %.lr.ph93.i.i704.preheader3340

.lr.ph93.i.i704.preheader3340:                    ; preds = %vector.memcheck2885, %.lr.ph93.i.i704.preheader, %middle.block2897
  %.692.i.i705.ph = phi i64 [ %.5.i.i697, %vector.memcheck2885 ], [ %.5.i.i697, %.lr.ph93.i.i704.preheader ], [ %i.pm, %middle.block2897 ]
end_hunk_0
