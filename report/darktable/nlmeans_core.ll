Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/nlmeans_core?download=true
inline.NumInlined: 20
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@nlmeans_denoise:bb.a
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, %.0.i ; 3 uses
  %i.ic = trunc i64 %indvars.iv.next546 to i32
  %i.id = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %i.hl) ; 8 uses
  %i.ie = icmp sgt i32 %., %indvars586            ; 3 uses
  br i1 %i.ie, label %.lr.ph, label %.preheader474

.lr.ph:                                           ; preds = %bb.r
  %i.if = sext i32 %i.id to i64
  %i.ig = sub nsw i64 %i.if, %indvars.iv545
  %i.ih = shl nsw i64 %i.ig, 4                    ; 5 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hk, i32 %indvars.iv)
  %i.ii = add i32 %., %i.gr
  %i.ij = add i32 %i.gt, %.
  %xtraiter = and i32 %i.ii, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.0407476.prol = phi i32 [ %i.iq, %.prol.preheader ], [ %indvars586, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.ik = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.il = mul nsw i32 %i.ik, %.0407476.prol
  %i.im = add nsw i32 %i.il, %indvars585
  %i.in = shl nsw i32 %i.im, 2
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %1, i64 %i.io
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ip, i8 0, i64 %i.ih, i1 false)
  %i.iq = add nsw i32 %.0407476.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !12

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.0407476.unr = phi i32 [ %indvars586, %.lr.ph ], [ %i.iq, %.prol.preheader ]
  %i.ir = icmp ult i32 %i.ij, 3
  br i1 %i.ir, label %.preheader474.loopexit, label %.lr.ph.new

.preheader474.loopexit:                           ; preds = %.lr.ph.new, %.prol.loopexit
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !52 ; 2 uses
  %.pre599 = load i32, ptr %i.fg, align 4, !tbaa !42 ; 2 uses
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.loopexit, %bb.r
  %i.is = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hi, %bb.r ] ; 2 uses
  %i.it = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hj, %bb.r ] ; 5 uses
  %i.iu = phi i32 [ %.pre599, %.preheader474.loopexit ], [ %i.hl, %bb.r ] ; 7 uses
  %i.iv = phi i32 [ %.pre, %.preheader474.loopexit ], [ %i.hk, %bb.r ] ; 5 uses
  %i.iw = load ptr, ptr %i.fv, align 8, !tbaa !55 ; 9 uses
  %i.ix = add i32 %indvars585, %i.fw              ; 2 uses
  %i.iy = add i32 %i.id, %i.cj                    ; 3 uses
  %i.iz = sext i32 %i.ix to i64
  %i.ja = shl nsw i64 %i.iz, 2
  %scevgep.i = getelementptr i8, ptr %i.ib, i64 %i.ja
  %i.jb = sub i32 %i.cj, %indvars585
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 4 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 5 uses
  %i.je = xor i32 %indvars585, -1
  %i.jf = add i32 %i.id, %i.je
  %i.jg = sext i32 %i.iu to i64
  %i.jh = shl nsw i64 %i.jg, 2
  %smin547 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %indvars585)
  %invariant.gep642 = getelementptr [4 x i8], ptr %i.ib, i64 %i.fs
  %invariant.gep643 = getelementptr [4 x i8], ptr %i.ib, i64 %i.fs
  %scevgep711 = getelementptr i8, ptr %i.iw, i64 12
  %i.ji = sext i32 %i.hl to i64
  %smin747 = tail call i64 @llvm.smin.i64(i64 %i.ji, i64 %i.ho)
  br label %bb.t

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0407476 = phi i32 [ %i.kk, %.lr.ph.new ], [ %.0407476.unr, %.prol.loopexit ] ; 5 uses
  %i.jj = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jk = mul nsw i32 %i.jj, %.0407476
  %i.jl = add nsw i32 %i.jk, %indvars585
  %i.jm = shl nsw i32 %i.jl, 2
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jn
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jo, i8 0, i64 %i.ih, i1 false)
  %i.jp = add nsw i32 %.0407476, 1
  %i.jq = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jr = mul nsw i32 %i.jq, %i.jp
  %i.js = add nsw i32 %i.jr, %indvars585
  %i.jt = shl nsw i32 %i.js, 2
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ju
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jv, i8 0, i64 %i.ih, i1 false)
  %i.jw = add nsw i32 %.0407476, 2
  %i.jx = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.jy = mul nsw i32 %i.jx, %i.jw
  %i.jz = add nsw i32 %i.jy, %indvars585
  %i.ka = shl nsw i32 %i.jz, 2
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kb
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kc, i8 0, i64 %i.ih, i1 false)
  %i.kd = add nsw i32 %.0407476, 3
  %i.ke = load i32, ptr %i.fg, align 4, !tbaa !42
  %i.kf = mul nsw i32 %i.ke, %i.kd
  %i.kg = add nsw i32 %i.kf, %indvars585
  %i.kh = shl nsw i32 %i.kg, 2
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ki
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kj, i8 0, i64 %i.ih, i1 false)
  %i.kk = add nsw i32 %.0407476, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.kk, %smin
  br i1 %exitcond.not.3, label %.preheader474.loopexit, label %.lr.ph.new

bb.s:                                             ; preds = %._crit_edge504
  br i1 %spec.select448, label %.preheader470, label %.preheader472

.preheader472:                                    ; preds = %bb.s
  br i1 %i.ie, label %.lr.ph510, label %.loopexit471

.lr.ph510:                                        ; preds = %.preheader472
  %factor.op.mul = shl i32 %i.iu, 2
  %i.kl = sext i32 %i.hl to i64
  %i.km = icmp slt i64 %indvars.iv545, %i.kl
  br i1 %i.km, label %.preheader463.lr.ph.preheader, label %.loopexit471

.preheader463.lr.ph.preheader:                    ; preds = %.lr.ph510
  %i.kn = sext i32 %i.id to i64                   ; 3 uses
  %i.ko = sext i32 %. to i64                      ; 2 uses
  %i.kp = mul i32 %i.gu, %i.iu
  %i.kq = shl i32 %i.iu, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %i.kn, i64 %i.hv)
  %i.kr = add i64 %smax, %i.hx
  %i.ks = shl nsw i64 %i.kr, 4                    ; 2 uses
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.ks
  %smax668 = tail call i64 @llvm.smax.i64(i64 %i.ko, i64 %i.gy)
  %i.kt = add i64 %smax668, %i.gx
  %i.ku = mul i64 %i.gf, %i.kt
  %i.kv = getelementptr i8, ptr %scevgep667, i64 %i.ku
  %scevgep669 = getelementptr i8, ptr %i.kv, i64 %i.ks
  %i.kw = tail call i64 @llvm.smax.i64(i64 %i.kn, i64 %i.hs) ; 2 uses
  %i.kx = sub i64 %i.kw, %i.hr                    ; 2 uses
  %min.iters.check671 = icmp ult i64 %i.kx, 5
  %i.ky = and i64 %i.kw, 3                        ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 0
  %i.la = select i1 %i.kz, i64 4, i64 %i.ky
  %n.vec673 = sub i64 %i.kx, %i.la                ; 2 uses
  %i.lb = add i64 %indvars.iv545, %n.vec673
  br label %.preheader463.lr.ph

.preheader470:                                    ; preds = %bb.s
  br i1 %i.ie, label %.lr.ph517, label %.loopexit471

.lr.ph517:                                        ; preds = %.preheader470
  %factor.op.mul518 = shl i32 %i.iu, 2
  %i.lc = sext i32 %i.hl to i64
  %i.ld = icmp slt i64 %indvars.iv545, %i.lc
  br i1 %i.ld, label %.preheader.lr.ph.preheader, label %.loopexit471

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph517
  %i.le = sext i32 %i.id to i64                   ; 2 uses
  %i.lf = sext i32 %. to i64
  %i.lg = tail call i64 @llvm.smax.i64(i64 %i.le, i64 %i.hz) ; 2 uses
  %i.lh = sub i64 %i.lg, %i.hy                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.lh, 4
  %i.li = and i64 %i.lg, 3                        ; 2 uses
  %n.vec = sub nuw i64 %i.lh, %i.li               ; 2 uses
  %i.lj = add i64 %indvars.iv545, %n.vec
  %cmp.n = icmp eq i64 %i.li, 0
  br label %.preheader.lr.ph

bb.t:                                             ; preds = %.preheader474, %._crit_edge504
  %indvars.iv567 = phi i64 [ 0, %.preheader474 ], [ %indvars.iv.next568, %._crit_edge504 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv567 ; 4 uses
  %i.ll = load i16, ptr %i.lk, align 8, !tbaa !49 ; 5 uses
  %i.lm = icmp sgt i16 %i.ll, 0
  %i.ln = sext i16 %i.ll to i32                   ; 2 uses
  %i.lo = sub nsw i32 0, %i.ln
  %i.lp = select i1 %i.lm, i32 0, i32 %i.lo       ; 2 uses
  %i.lq = tail call i32 @llvm.smax.i32(i32 %i.lp, i32 %indvars586) ; 7 uses
  %i.lr = icmp slt i16 %i.ll, 0
  %spec.select453 = tail call i16 @llvm.smax.i16(i16 %i.ll, i16 0)
  %spec.select = zext nneg i16 %spec.select453 to i32 ; 2 uses
  %i.ls = sub i32 %i.iv, %spec.select
  %spec.select450 = tail call i32 @llvm.smin.i32(i32 %., i32 %i.ls) ; 3 uses
  %i.lt = tail call i16 @llvm.smin.i16(i16 %i.ll, i16 0)
  %i.lu = sext i16 %i.lt to i32
  %i.lv = sub nsw i32 %i.cj, %i.lu
  %i.lw = tail call i32 @llvm.smax.i32(i32 %i.lq, i32 %i.lv) ; 2 uses
  %i.lx = add nsw i32 %i.cj, %spec.select
  %i.ly = xor i32 %i.lx, -1
  %i.lz = add i32 %i.iv, %i.ly
  %spec.select452 = tail call i32 @llvm.smin.i32(i32 %spec.select450, i32 %i.lz) ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !50 ; 2 uses
  %i.mc = sext i16 %i.mb to i32                   ; 3 uses
  %i.md = sub nsw i32 0, %i.mc
  %i.me = tail call i32 @llvm.smax.i32(i32 %indvars585, i32 %i.md) ; 5 uses
  %i.mf = sub i32 %i.iu, %i.mc                    ; 2 uses
  %.437 = tail call i32 @llvm.smin.i32(i32 %i.id, i32 %i.mf) ; 3 uses
  %i.mg = add nsw i32 %indvars585, %i.mc          ; 2 uses
  %i.mh = tail call i32 @llvm.smin.i32(i32 %indvars585, i32 %i.mg)
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mh) ; 2 uses
  %i.mi = sub nsw i32 %indvars585, %..i           ; 5 uses
  %i.mj = tail call i16 @llvm.smax.i16(i16 %i.mb, i16 0)
  %i.mk = zext nneg i16 %i.mj to i32
  %i.ml = add i32 %i.id, %i.mk
  %i.mm = sub i32 %i.iu, %i.ml
  %i.mn = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mm) ; 2 uses
  %i.mo = add i32 %i.mn, %i.id                    ; 5 uses
  %i.mp = add i32 %i.lq, %i.ln                    ; 2 uses
  %i.mq = tail call i32 @llvm.smin.i32(i32 %i.lq, i32 %i.mp)
  %i.mr = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mq) ; 2 uses
  %i.ms = sub i32 %i.lq, %i.mr                    ; 2 uses
  %.v138.i = select i1 %i.lr, i32 %i.lq, i32 %i.mp ; 2 uses
  %i.mt = xor i32 %.v138.i, -1
  %i.mu = add i32 %i.iv, %i.mt
  %i.mv = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.mu)
  %i.mw = add i32 %i.mv, %i.lq                    ; 2 uses
  %i.mx = tail call i32 @llvm.smin.i32(i32 %i.mi, i32 %i.iy) ; 2 uses
  %i.my = icmp slt i32 %i.ix, %i.mx
  br i1 %i.my, label %.lr.ph.preheader.i, label %.preheader140.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.mz = add i32 %i.jb, %i.mx
  %i.na = zext i32 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, 2
  %i.nc = add nuw nsw i64 %i.nb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, i8 0, i64 %i.nc, i1 false), !tbaa !56
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.lr.ph.preheader.i, %bb.t
  %i.nd = icmp slt i32 %i.mi, %i.mo               ; 4 uses
  br i1 %i.nd, label %.preheader.lr.ph.i444, label %._crit_edge148.i

.preheader.lr.ph.i444:                            ; preds = %.preheader140.i
  %.not142.i = icmp sgt i32 %i.ms, %i.mw
  br i1 %.not142.i, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i444
  %i.ne = sext i32 %i.mi to i64
  %i.nf = shl nuw nsw i64 %i.ne, 2
  %scevgep158.i = getelementptr i8, ptr %i.ib, i64 %i.nf
  %i.ng = add i32 %i.jf, %..i
  %i.nh = add i32 %i.ng, %i.mn
  %i.ni = zext i32 %i.nh to i64
  %i.nj = shl nuw nsw i64 %i.ni, 2
  %i.nk = add nuw nsw i64 %i.nj, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep158.i, i8 0, i64 %i.nk, i1 false), !tbaa !56
  br label %._crit_edge148.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i444
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !51
  %i.nn = sext i32 %i.nm to i64                   ; 4 uses
  %i.no = sext i32 %i.ms to i64                   ; 5 uses
  %i.np = add i32 %i.mw, 1
  %i.nq = sext i32 %i.mi to i64
  %i.nr = sext i32 %i.mo to i64
  %i.ns = xor i32 %.v138.i, -1
  %i.nt = add i32 %i.iv, %i.ns
  %smin778 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.nt)
  %i.nu = add i32 %i.mr, %smin778                 ; 3 uses
  %i.nv = zext i32 %i.nu to i64
  %i.nw = add nuw nsw i64 %i.nv, 1                ; 5 uses
  %min.iters.check780 = icmp ult i32 %i.nu, 3
  %min.iters.check782 = icmp ult i32 %i.nu, 15
  %i.nx = and i64 %i.nw, 12
  %n.vec784 = and i64 %i.nw, 8589934576           ; 4 uses
  %i.ny = add nsw i64 %n.vec784, %i.no            ; 2 uses
  %broadcast.splatinsert793 = insertelement <8 x i64> poison, i64 %i.no, i64 0
  %broadcast.splat794 = shufflevector <8 x i64> %broadcast.splatinsert793, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat794, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n824 = icmp eq i64 %i.nw, %n.vec784
  %min.epilog.iters.check831 = icmp eq i64 %i.nx, 0
  %n.vec833 = and i64 %i.nw, 8589934588           ; 3 uses
  %i.nz = add nsw i64 %n.vec833, %i.no
  %cmp.n864 = icmp eq i64 %i.nw, %n.vec833
  br label %iter.check828

iter.check828:                                    ; preds = %._crit_edge.i447, %.preheader.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ %i.nq, %.preheader.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge.i447 ] ; 3 uses
  %invariant.gep.idx.i = shl nsw i64 %indvars.iv156.i, 4
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %invariant.gep.idx.i ; 4 uses
  %i.oa = load <2 x float>, ptr %i.iw, align 4, !tbaa !56 ; 5 uses
  %i.ob = load float, ptr %i.jd, align 4, !tbaa !56 ; 3 uses
  br i1 %min.iters.check780, label %vec.epilog.scalar.ph829.preheader, label %vector.main.loop.iter.check781

vector.main.loop.iter.check781:                   ; preds = %iter.check828
  br i1 %min.iters.check782, label %vec.epilog.ph832, label %vector.ph783

vector.ph783:                                     ; preds = %vector.main.loop.iter.check781
  %broadcast.splat786 = shufflevector <2 x float> %i.oa, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat788 = shufflevector <2 x float> %i.oa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert789 = insertelement <8 x float> poison, float %i.ob, i64 0
  %broadcast.splat790 = shufflevector <8 x float> %broadcast.splatinsert789, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.ph783, %vector.body795
  %index796 = phi i64 [ 0, %vector.ph783 ], [ %index.next821, %vector.body795 ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph783 ], [ %vec.ind.next, %vector.body795 ] ; 3 uses
  %vec.phi797 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.pa, %vector.body795 ]
  %vec.phi798 = phi <8 x float> [ zeroinitializer, %vector.ph783 ], [ %i.pb, %vector.body795 ]
  %step.add = add nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.oc = mul nsw <8 x i64> %vec.ind, %broadcast.splat792
  %i.od = mul nsw <8 x i64> %step.add, %broadcast.splat792
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.oc ; 4 uses
  %wide.gep799 = getelementptr [4 x i8], ptr %invariant.gep.i, <8 x i64> %i.od ; 4 uses
  %wide.gep800 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep, i64 %i.nn ; 3 uses
  %wide.gep801 = getelementptr inbounds [4 x i8], <8 x ptr> %wide.gep799, i64 %i.nn ; 3 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather802 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep799, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather803 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep800, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather804 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep801, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oe = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather803 ; 2 uses
  %i.of = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather802, %wide.masked.gather804 ; 2 uses
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %i.oe, %i.oe
  %i.oh = fmul reassoc nsz arcp contract afn <8 x float> %i.of, %i.of
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %i.og, %broadcast.splat786
  %i.oj = fmul reassoc nsz arcp contract afn <8 x float> %i.oh, %broadcast.splat786
  %wide.gep805 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep806 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 4
  %wide.masked.gather807 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep805, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather808 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep806, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep809 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 4
  %wide.gep810 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 4
  %wide.masked.gather811 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep809, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather812 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep810, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.ok = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather807, %wide.masked.gather811 ; 2 uses
  %i.ol = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather808, %wide.masked.gather812 ; 2 uses
  %i.om = fmul reassoc nsz arcp contract afn <8 x float> %i.ok, %i.ok
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.ol, %i.ol
  %i.oo = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat788
  %i.op = fmul reassoc nsz arcp contract afn <8 x float> %i.on, %broadcast.splat788
  %wide.gep813 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep814 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep799, i64 8
  %wide.masked.gather815 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep813, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather816 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep814, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.gep817 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep800, i64 8
  %wide.gep818 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep801, i64 8
  %wide.masked.gather819 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep817, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %wide.masked.gather820 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep818, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !56
  %i.oq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather815, %wide.masked.gather819 ; 2 uses
  %i.or = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather816, %wide.masked.gather820 ; 2 uses
  %i.os = fmul reassoc nsz arcp contract afn <8 x float> %i.oq, %i.oq
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %i.or, %i.or
  %i.ou = fmul reassoc nsz arcp contract afn <8 x float> %i.os, %broadcast.splat790
  %i.ov = fmul reassoc nsz arcp contract afn <8 x float> %i.ot, %broadcast.splat790
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi797, %i.oi
  %i.ox = fadd reassoc nsz arcp contract afn <8 x float> %vec.phi798, %i.oj
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.oo, %i.ow
  %i.oz = fadd reassoc nsz arcp contract afn <8 x float> %i.op, %i.ox
  %i.pa = fadd reassoc nsz arcp contract afn <8 x float> %i.oy, %i.ou ; 2 uses
  %i.pb = fadd reassoc nsz arcp contract afn <8 x float> %i.oz, %i.ov ; 2 uses
  %index.next821 = add nuw i64 %index796, 16      ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 16)
  %i.pc = icmp eq i64 %index.next821, %n.vec784
  br i1 %i.pc, label %middle.block822, label %vector.body795, !llvm.loop !13

middle.block822:                                  ; preds = %vector.body795
  %bin.rdx823 = fadd reassoc nsz arcp contract afn <8 x float> %i.pb, %i.pa
  %i.pd = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx823) ; 3 uses
  br i1 %cmp.n824, label %._crit_edge.i447, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block822
  %slprdx.init867 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pd, i64 0
  br i1 %min.epilog.iters.check831, label %vec.epilog.scalar.ph829.preheader, label %vec.epilog.ph832, !prof !59

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check781, %vec.epilog.iter.check830
  %vec.epilog.resume.val825 = phi i64 [ %n.vec784, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check781 ]
  %bc.resume.val826 = phi i64 [ %i.ny, %vec.epilog.iter.check830 ], [ %i.no, %vector.main.loop.iter.check781 ]
  %bc.merge.rdx827 = phi float [ %i.pd, %vec.epilog.iter.check830 ], [ 0.000000e+00, %vector.main.loop.iter.check781 ]
  %i.pe = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx827, i64 0
  %broadcast.splat835 = shufflevector <2 x float> %i.oa, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat837 = shufflevector <2 x float> %i.oa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert838 = insertelement <4 x float> poison, float %i.ob, i64 0
  %broadcast.splat839 = shufflevector <4 x float> %broadcast.splatinsert838, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert842 = insertelement <4 x i64> poison, i64 %bc.resume.val826, i64 0
  %broadcast.splat843 = shufflevector <4 x i64> %broadcast.splatinsert842, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction844 = add nsw <4 x i64> %broadcast.splat843, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body845

vec.epilog.vector.body845:                        ; preds = %vec.epilog.vector.body845, %vec.epilog.ph832
  %index846 = phi i64 [ %vec.epilog.resume.val825, %vec.epilog.ph832 ], [ %index.next861, %vec.epilog.vector.body845 ]
  %vec.ind847 = phi <4 x i64> [ %induction844, %vec.epilog.ph832 ], [ %vec.ind.next862, %vec.epilog.vector.body845 ] ; 2 uses
  %vec.phi848 = phi <4 x float> [ %i.pe, %vec.epilog.ph832 ], [ %i.pr, %vec.epilog.vector.body845 ]
  %i.pf = mul nsw <4 x i64> %vec.ind847, %broadcast.splat841
  %wide.gep849 = getelementptr [4 x i8], ptr %invariant.gep.i, <4 x i64> %i.pf ; 4 uses
  %wide.gep850 = getelementptr inbounds [4 x i8], <4 x ptr> %wide.gep849, i64 %i.nn ; 3 uses
  %wide.masked.gather851 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep849, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.masked.gather852 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep850, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pg = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather851, %wide.masked.gather852 ; 2 uses
  %i.ph = fmul reassoc nsz arcp contract afn <4 x float> %i.pg, %i.pg
  %i.pi = fmul reassoc nsz arcp contract afn <4 x float> %i.ph, %broadcast.splat835
  %wide.gep853 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849, i64 4
  %wide.masked.gather854 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep853, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep855 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 4
  %wide.masked.gather856 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep855, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pj = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather854, %wide.masked.gather856 ; 2 uses
  %i.pk = fmul reassoc nsz arcp contract afn <4 x float> %i.pj, %i.pj
  %i.pl = fmul reassoc nsz arcp contract afn <4 x float> %i.pk, %broadcast.splat837
  %wide.gep857 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep849, i64 8
  %wide.masked.gather858 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep857, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %wide.gep859 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep850, i64 8
  %wide.masked.gather860 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep859, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !56
  %i.pm = fsub reassoc nsz arcp contract afn <4 x float> %wide.masked.gather858, %wide.masked.gather860 ; 2 uses
  %i.pn = fmul reassoc nsz arcp contract afn <4 x float> %i.pm, %i.pm
  %i.po = fmul reassoc nsz arcp contract afn <4 x float> %i.pn, %broadcast.splat839
  %i.pp = fadd reassoc nsz arcp contract afn <4 x float> %vec.phi848, %i.pi
  %i.pq = fadd reassoc nsz arcp contract afn <4 x float> %i.pl, %i.pp
  %i.pr = fadd reassoc nsz arcp contract afn <4 x float> %i.pq, %i.po ; 2 uses
  %index.next861 = add nuw i64 %index846, 4       ; 2 uses
  %vec.ind.next862 = add nsw <4 x i64> %vec.ind847, splat (i64 4)
  %i.ps = icmp eq i64 %index.next861, %n.vec833
  br i1 %i.ps, label %vec.epilog.middle.block863, label %vec.epilog.vector.body845, !llvm.loop !14

vec.epilog.middle.block863:                       ; preds = %vec.epilog.vector.body845
  %i.pt = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pr) ; 2 uses
  %slprdx.init = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.pt, i64 0
  br i1 %cmp.n864, label %._crit_edge.i447, label %vec.epilog.scalar.ph829.preheader

vec.epilog.scalar.ph829.preheader:                ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block863
  %indvars.iv.i.ph = phi i64 [ %i.no, %iter.check828 ], [ %i.ny, %vec.epilog.iter.check830 ], [ %i.nz, %vec.epilog.middle.block863 ]
  %slprdx.acc.ph = phi <4 x float> [ zeroinitializer, %iter.check828 ], [ %slprdx.init867, %vec.epilog.iter.check830 ], [ %slprdx.init, %vec.epilog.middle.block863 ]
  %i.pu = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ob, i64 2
  %i.pv = shufflevector <2 x float> %i.oa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pw = shufflevector <4 x float> %i.pv, <4 x float> %i.pu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %vec.epilog.scalar.ph829

._crit_edge148.i:                                 ; preds = %._crit_edge.i447, %.preheader.us.preheader.i, %.preheader140.i
  %i.px = tail call i32 @llvm.smax.i32(i32 %i.mi, i32 %i.mo) ; 3 uses
  %i.py = icmp slt i32 %i.px, %i.iy
  br i1 %i.py, label %.lr.ph151.preheader.i, label %init_column_sums.exit

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %smax.i = sext i32 %i.px to i64
  %i.pz = shl nuw nsw i64 %smax.i, 2
  %scevgep161.i = getelementptr i8, ptr %i.ib, i64 %i.pz
  %i.qa = xor i32 %i.px, -1
  %i.qb = add i32 %i.iy, %i.qa
  %i.qc = zext i32 %i.qb to i64
  %i.qd = shl nuw nsw i64 %i.qc, 2
  %i.qe = add nuw nsw i64 %i.qd, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep161.i, i8 0, i64 %i.qe, i1 false), !tbaa !56
  br label %init_column_sums.exit

._crit_edge.i447:                                 ; preds = %vec.epilog.scalar.ph829, %vec.epilog.middle.block863, %middle.block822
  %slprdx.exit = phi <4 x float> [ poison, %vec.epilog.middle.block863 ], [ poison, %middle.block822 ], [ %slprdx.acc868, %vec.epilog.scalar.ph829 ]
  %slprdx.fromloop = phi i1 [ false, %vec.epilog.middle.block863 ], [ false, %middle.block822 ], [ true, %vec.epilog.scalar.ph829 ]
  %.lcssa = phi float [ %i.pt, %vec.epilog.middle.block863 ], [ %i.pd, %middle.block822 ], [ poison, %vec.epilog.scalar.ph829 ]
  %i.qf = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %slprdx.exit)
  %slprdx.sel = select i1 %slprdx.fromloop, float %i.qf, float %.lcssa
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv156.i
  store float %slprdx.sel, ptr %i.qg, align 4, !tbaa !56
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.qh = icmp slt i64 %indvars.iv.next157.i, %i.nr
  br i1 %i.qh, label %iter.check828, label %._crit_edge148.i

vec.epilog.scalar.ph829:                          ; preds = %vec.epilog.scalar.ph829.preheader, %vec.epilog.scalar.ph829
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph829 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph829.preheader ] ; 2 uses
  %slprdx.acc = phi <4 x float> [ %slprdx.acc868, %vec.epilog.scalar.ph829 ], [ %slprdx.acc.ph, %vec.epilog.scalar.ph829.preheader ]
  %i.qi = mul nsw i64 %indvars.iv.i, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qi ; 3 uses
  %i.qj = getelementptr inbounds [4 x i8], ptr %gep.i, i64 %i.nn ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !56
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !56
  %i.qo = load <2 x float>, ptr %gep.i, align 4, !tbaa !56
  %i.qp = load <2 x float>, ptr %i.qj, align 4, !tbaa !56
  %i.qq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ql, i64 2
  %i.qr = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> %i.qq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qn, i64 2
  %i.qu = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> %i.qt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qw = fsub reassoc nsz arcp contract afn <4 x float> %i.qs, %i.qv ; 2 uses
  %i.qx = insertelement <4 x float> %i.qw, float 1.000000e+00, i64 3
  %i.qy = fmul reassoc nsz arcp contract afn <4 x float> %i.qw, %i.qx
  %i.qz = fmul reassoc nsz arcp contract afn <4 x float> %i.qy, %i.pw
  %slprdx.acc868 = fadd reassoc nsz arcp afn <4 x float> %slprdx.acc, %i.qz ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i446 = icmp eq i32 %i.np, %lftr.wideiv.i
  br i1 %exitcond.not.i446, label %._crit_edge.i447, label %vec.epilog.scalar.ph829, !llvm.loop !15

init_column_sums.exit:                            ; preds = %._crit_edge148.i, %.lr.ph151.preheader.i
  %i.ra = icmp slt i32 %i.lq, %spec.select450
  br i1 %i.ra, label %.lr.ph503, label %._crit_edge504

.lr.ph503:                                        ; preds = %init_column_sums.exit
  %i.rb = sub nsw i32 %i.me, %i.cj
  %i.rc = add i32 %i.me, %i.cj                    ; 2 uses
  %i.rd = tail call i32 @llvm.smin.i32(i32 %i.rc, i32 %.437) ; 2 uses
  %i.re = icmp slt i32 %i.rb, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !51
  %i.rh = icmp slt i32 %i.me, %.437               ; 2 uses
  %i.ri = sext i32 %i.rg to i64                   ; 8 uses
  %i.rj = tail call i32 @llvm.smin.i32(i32 %i.lw, i32 %spec.select452)
  %i.rk = sub i32 %i.me, %i.cj
  %i.rl = sext i32 %i.rk to i64                   ; 6 uses
  %i.rm = sext i32 %i.rd to i64
  %i.rn = zext nneg i32 %i.me to i64              ; 2 uses
  %i.ro = sext i32 %.437 to i64                   ; 2 uses
  %smin548 = tail call i32 @llvm.smin.i32(i32 %smin547, i32 %i.mg)
  %i.rp = sub i32 0, %smin548
  %i.rq = sext i32 %i.rp to i64                   ; 4 uses
  %i.rr = add i64 %indvars.iv545, %i.rq           ; 7 uses
  %i.rs = sext i32 %i.mo to i64                   ; 4 uses
  %i.rt = sext i32 %i.lp to i64
  %smax564 = tail call i64 @llvm.smax.i64(i64 %indvars.iv562, i64 %i.rt) ; 3 uses
  %i.ru = sext i32 %spec.select450 to i64         ; 3 uses
  %i.rv = sext i32 %i.lw to i64
  %i.rw = sext i32 %spec.select452 to i64
  %i.rx = sext i32 %i.rj to i64
  %invariant.op = add nsw i64 %i.ru, -1
  %i.ry = shl nsw i64 %i.rr, 2
  %scevgep701 = getelementptr i8, ptr %i.ib, i64 %i.ry ; 3 uses
  %i.rz = add i64 %i.hq, %i.rq
  %5 = sext i32 %i.mo to i64
  %smax702 = tail call i64 @llvm.smax.i64(i64 %i.rz, i64 %5) ; 2 uses
  %i.sa = shl nsw i64 %smax702, 2
  %scevgep703 = getelementptr i8, ptr %i.ib, i64 %i.sa ; 3 uses
  %i.sb = sub i64 %smax564, %i.fs
  %i.sc = mul i64 %i.gg, %i.sb                    ; 2 uses
  %i.sd = shl nsw i64 %i.rr, 4                    ; 2 uses
  %i.se = shl nsw i64 %i.ri, 2                    ; 2 uses
  %i.sf = getelementptr i8, ptr %0, i64 %i.sc
  %i.sg = getelementptr i8, ptr %i.sf, i64 %i.sd
  %scevgep704 = getelementptr i8, ptr %i.sg, i64 %i.se
  %i.sh = add nuw i64 %smax564, 1
  %smax706 = tail call i64 @llvm.smax.i64(i64 %i.ru, i64 %i.sh)
  %i.si = sub i64 %smax706, %i.fs
  %reass.sub = shl i64 %i.si, 2
  %i.sj = add i64 %reass.sub, -4
  %i.sk = mul i64 %i.sj, %i.s
  %i.sl = shl nsw i64 %smax702, 4
  %i.sm = add i64 %i.sk, %i.sl                    ; 2 uses
  %i.sn = getelementptr i8, ptr %scevgep705, i64 %i.sm
  %scevgep707 = getelementptr i8, ptr %i.sn, i64 %i.se
  %i.so = getelementptr i8, ptr %0, i64 %i.sc
  %scevgep708 = getelementptr i8, ptr %i.so, i64 %i.sd
  %scevgep710 = getelementptr i8, ptr %scevgep709, i64 %i.sm
  %i.sp = sext i32 %i.rc to i64
  %smin748 = tail call i64 @llvm.smin.i64(i64 %smin747, i64 %i.sp)
  %i.sq = sext i32 %i.mf to i64
  %smin749 = tail call i64 @llvm.smin.i64(i64 %smin748, i64 %i.sq)
  %i.sr = sub i64 %smin749, %i.rl                 ; 7 uses
  %min.iters.check751 = icmp ult i64 %i.sr, 8
  %min.iters.check752 = icmp ult i64 %i.sr, 32
  %i.ss = and i64 %i.sr, 24
  %n.vec754 = and i64 %i.sr, -32                  ; 4 uses
  %i.st = add i64 %n.vec754, %i.rl
  %invariant.gep898 = getelementptr [4 x i8], ptr %i.ib, i64 %i.rl
  %cmp.n768 = icmp eq i64 %i.sr, %n.vec754
  %min.epilog.iters.check = icmp eq i64 %i.ss, 0
  %n.vec770 = and i64 %i.sr, -8                   ; 3 uses
  %i.su = add i64 %n.vec770, %i.rl
  %invariant.gep900 = getelementptr [4 x i8], ptr %i.ib, i64 %i.rl
  %cmp.n775 = icmp eq i64 %i.sr, %n.vec770
  %i.sv = add i64 %i.hp, %i.rq
  %i.sw = tail call i64 @llvm.smax.i64(i64 %i.sv, i64 %i.rs)
  %i.sx = add i64 %indvars.iv545, %i.rq
  %i.sy = sub i64 %i.sw, %i.sx                    ; 3 uses
  %min.iters.check725 = icmp ult i64 %i.sy, 9
  %bound0712 = icmp ult ptr %scevgep701, %scevgep707
  %bound1713 = icmp ult ptr %scevgep704, %scevgep703
  %found.conflict714 = and i1 %bound0712, %bound1713
  %bound0716 = icmp ult ptr %scevgep701, %scevgep710
  %bound1717 = icmp ult ptr %scevgep708, %scevgep703
  %found.conflict718 = and i1 %bound0716, %bound1717
  %i.sz = or i1 %found.conflict718, %stride.check719
  %conflict.rdx = or i1 %found.conflict714, %i.sz
  %bound0720 = icmp ult ptr %scevgep701, %scevgep711
  %bound1721 = icmp ult ptr %i.iw, %scevgep703
  %found.conflict722 = and i1 %bound0720, %bound1721
  %conflict.rdx723 = or i1 %conflict.rdx, %found.conflict722
  %i.ta = and i64 %i.sy, 7                        ; 2 uses
  %i.tb = icmp eq i64 %i.ta, 0
  %i.tc = select i1 %i.tb, i64 8, i64 %i.ta
  %n.vec727 = sub i64 %i.sy, %i.tc                ; 2 uses
  %i.td = add i64 %i.rr, %n.vec727
  br label %bb.u

._crit_edge504:                                   ; preds = %.loopexit, %init_column_sums.exit
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next568, %i.af
  br i1 %exitcond570.not, label %bb.s, label %bb.t

bb.u:                                             ; preds = %.lr.ph503, %.loopexit
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph503 ], [ %indvars.iv.next566, %.loopexit ] ; 11 uses
  br i1 %i.re, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.u
  br i1 %min.iters.check751, label %.lr.ph479.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check752, label %vec.epilog.ph, label %vector.body755

vector.body755:                                   ; preds = %vector.main.loop.iter.check, %vector.body755
  %index756 = phi i64 [ %index.next764, %vector.body755 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.th, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi757 = phi <8 x float> [ %i.ti, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi758 = phi <8 x float> [ %i.tj, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi759 = phi <8 x float> [ %i.tk, %vector.body755 ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %gep899 = getelementptr [4 x i8], ptr %invariant.gep898, i64 %index756 ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %gep899, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %gep899, i64 64
  %i.tg = getelementptr inbounds nuw i8, ptr %gep899, i64 96
  %wide.load760 = load <8 x float>, ptr %gep899, align 4, !tbaa !56
  %wide.load761 = load <8 x float>, ptr %i.te, align 4, !tbaa !56
  %wide.load762 = load <8 x float>, ptr %i.tf, align 4, !tbaa !56
  %wide.load763 = load <8 x float>, ptr %i.tg, align 4, !tbaa !56
  %i.th = fadd reassoc nsz arcp contract afn <8 x float> %wide.load760, %vec.phi ; 2 uses
  %i.ti = fadd reassoc nsz arcp contract afn <8 x float> %wide.load761, %vec.phi757 ; 2 uses
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load762, %vec.phi758 ; 2 uses
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load763, %vec.phi759 ; 2 uses
  %index.next764 = add nuw i64 %index756, 32      ; 2 uses
  %i.tl = icmp eq i64 %index.next764, %n.vec754
  br i1 %i.tl, label %middle.block765, label %vector.body755, !llvm.loop !16

middle.block765:                                  ; preds = %vector.body755
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.ti, %i.th
  %bin.rdx766 = fadd reassoc nsz arcp contract afn <8 x float> %i.tj, %bin.rdx
  %bin.rdx767 = fadd reassoc nsz arcp contract afn <8 x float> %i.tk, %bin.rdx766
  %i.tm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx767) ; 3 uses
  br i1 %cmp.n768, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block765
  br i1 %min.epilog.iters.check, label %.lr.ph479.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec754, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.tm, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.tn = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index771 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next774, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi772 = phi <8 x float> [ %i.tn, %vec.epilog.ph ], [ %i.to, %vec.epilog.vector.body ]
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %index771
  %wide.load773 = load <8 x float>, ptr %gep901, align 4, !tbaa !56
  %i.to = fadd reassoc nsz arcp contract afn <8 x float> %wide.load773, %vec.phi772 ; 2 uses
  %index.next774 = add nuw i64 %index771, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next774, %n.vec770
  br i1 %i.tp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.tq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.to) ; 2 uses
  br i1 %cmp.n775, label %._crit_edge, label %.lr.ph479.preheader

.lr.ph479.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv532.ph = phi i64 [ %i.rl, %iter.check ], [ %i.st, %vec.epilog.iter.check ], [ %i.su, %vec.epilog.middle.block ]
  %.0404477.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.tm, %vec.epilog.iter.check ], [ %i.tq, %vec.epilog.middle.block ]
  br label %.lr.ph479

._crit_edge:                                      ; preds = %.lr.ph479, %middle.block765, %vec.epilog.middle.block, %bb.u
  %.0404.lcssa = phi float [ 0.000000e+00, %bb.u ], [ %i.tq, %vec.epilog.middle.block ], [ %i.tm, %middle.block765 ], [ %i.ub, %.lr.ph479 ] ; 2 uses
  %i.tr = mul nsw i64 %indvars.iv565, %i.s
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tr ; 2 uses
  %i.tt = mul i64 %i.jh, %indvars.iv565
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tt ; 2 uses
  %i.tv = load float, ptr %i.fx, align 4, !tbaa !61 ; 2 uses
  %i.tw = load float, ptr %i.i, align 8, !tbaa !39
  %i.tx = fcmp reassoc nsz arcp contract afn olt float %i.tw, 0.000000e+00
  br i1 %i.tx, label %.preheader466, label %.preheader468

.preheader468:                                    ; preds = %._crit_edge
  br i1 %i.rh, label %.lr.ph483, label %.loopexit467

.preheader466:                                    ; preds = %._crit_edge
  br i1 %i.rh, label %.lr.ph489, label %.loopexit467

.lr.ph489:                                        ; preds = %.preheader466
  %i.ty = fmul reassoc nsz arcp contract afn float %i.tv, f0xCB000000
  %invariant.gep490 = getelementptr [4 x i8], ptr %i.ts, i64 %i.ri
  br label %bb.v

.lr.ph479:                                        ; preds = %.lr.ph479.preheader, %.lr.ph479
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph479 ], [ %indvars.iv532.ph, %.lr.ph479.preheader ] ; 2 uses
  %.0404477 = phi float [ %i.ub, %.lr.ph479 ], [ %.0404477.ph, %.lr.ph479.preheader ]
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %indvars.iv532
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !56
  %i.ub = fadd reassoc nsz arcp contract afn float %i.ua, %.0404477 ; 2 uses
  %indvars.iv.next533 = add nsw i64 %indvars.iv532, 1 ; 2 uses
  %i.uc = icmp slt i64 %indvars.iv.next533, %i.rm
  br i1 %i.uc, label %.lr.ph479, label %._crit_edge, !llvm.loop !18

bb.v:                                             ; preds = %.lr.ph489, %bb.v
  %indvars.iv542 = phi i64 [ %i.rn, %.lr.ph489 ], [ %indvars.iv.next543, %bb.v ] ; 4 uses
  %.1487 = phi float [ %.0404.lcssa, %.lr.ph489 ], [ %i.uk, %bb.v ]
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %indvars.iv542
  %i.ud = load float, ptr %gep644, align 4, !tbaa !56
  %i.ue = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.uf = add i32 %i.ue, %i.fw
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ug
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !56
  %i.uj = fsub reassoc nsz arcp contract afn float %i.ud, %i.ui
  %i.uk = fadd reassoc nsz arcp contract afn float %i.uj, %.1487 ; 2 uses
  %i.ul = fmul reassoc nsz arcp contract afn float %i.ty, %i.uk
  %i.um = fptosi float %i.ul to i32               ; 2 uses
  %i.un = add nsw i32 %i.um, 1065353216
  %i.uo = icmp sgt i32 %i.um, -1056964609
  %i.up = bitcast i32 %i.un to float
  %i.uq = shl nuw nsw i64 %indvars.iv542, 2       ; 2 uses
  %gep491 = getelementptr [4 x i8], ptr %invariant.gep490, i64 %i.uq ; 3 uses
  %i.ur = getelementptr i8, ptr %gep491, i64 8
  %i.us = load float, ptr %i.ur, align 4, !tbaa !56
  %invariant.gep484 = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.uq ; 2 uses
  %i.ut = select i1 %i.uo, float %i.up, float 0.000000e+00
  %i.uu = load <2 x float>, ptr %gep491, align 4, !tbaa !56
  %i.uv = insertelement <4 x float> poison, float %i.ut, i64 0
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ux = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.us, i64 2
  %i.uy = shufflevector <2 x float> %i.uu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uz = shufflevector <4 x float> %i.uy, <4 x float> %i.ux, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.va = fmul reassoc nsz arcp contract afn <4 x float> %i.uw, %i.uz
  %i.vb = load <4 x float>, ptr %invariant.gep484, align 4, !tbaa !56
  %i.vc = fadd reassoc nsz arcp contract afn <4 x float> %i.vb, %i.va
  store <4 x float> %i.vc, ptr %invariant.gep484, align 4, !tbaa !56
end_hunk_0
