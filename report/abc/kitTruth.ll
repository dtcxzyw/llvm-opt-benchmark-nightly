Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitTruth?download=true
inline.NumInlined: 125
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 157
begin_hunk_0_@Kit_TruthExist:bb.a

.lr.ph84.1:                                       ; preds = %.lr.ph84
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !8  ; 3 uses
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = and i32 %i.gs, 252645135
  %i.gu = shl i32 %i.gr, 4
  %i.gv = and i32 %i.gu, -252645136
  %i.gw = or disjoint i32 %i.gv, %i.gt
  %i.gx = or i32 %i.gw, %i.gr
  store i32 %i.gx, ptr %i.gq, align 4, !tbaa !8
  %exitcond108.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond108.not.1, label %.loopexit, label %.lr.ph84.2

.lr.ph84.2:                                       ; preds = %.lr.ph84.1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !8  ; 3 uses
  %i.ha = lshr i32 %i.gz, 4
  %i.hb = and i32 %i.ha, 252645135
  %i.hc = shl i32 %i.gz, 4
  %i.hd = and i32 %i.hc, -252645136
  %i.he = or disjoint i32 %i.hd, %i.hb
  %i.hf = or i32 %i.he, %i.gz
  store i32 %i.hf, ptr %i.gy, align 4, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8  ; 3 uses
  %i.hi = lshr i32 %i.hh, 4
  %i.hj = and i32 %i.hi, 252645135
  %i.hk = shl i32 %i.hh, 4
  %i.hl = and i32 %i.hk, -252645136
  %i.hm = or disjoint i32 %i.hl, %i.hj
  %i.hn = or i32 %i.hm, %i.hh
  store i32 %i.hn, ptr %i.hg, align 4, !tbaa !8
  %exitcond108.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond108.not.3, label %.loopexit, label %.lr.ph84.4

.lr.ph84.4:                                       ; preds = %.lr.ph84.2
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !8  ; 3 uses
  %i.hq = lshr i32 %i.hp, 4
  %i.hr = and i32 %i.hq, 252645135
  %i.hs = shl i32 %i.hp, 4
  %i.ht = and i32 %i.hs, -252645136
  %i.hu = or disjoint i32 %i.ht, %i.hr
  %i.hv = or i32 %i.hu, %i.hp
  store i32 %i.hv, ptr %i.ho, align 4, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !8  ; 3 uses
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = and i32 %i.hy, 252645135
  %i.ia = shl i32 %i.hx, 4
  %i.ib = and i32 %i.ia, -252645136
  %i.ic = or disjoint i32 %i.ib, %i.hz
  %i.id = or i32 %i.ic, %i.hx
  store i32 %i.id, ptr %i.hw, align 4, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !8  ; 3 uses
  %i.ig = lshr i32 %i.if, 4
  %i.ih = and i32 %i.ig, 252645135
  %i.ii = shl i32 %i.if, 4
  %i.ij = and i32 %i.ii, -252645136
  %i.ik = or disjoint i32 %i.ij, %i.ih
  %i.il = or i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.ie, align 4, !tbaa !8
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph82.preheader
  %i.im = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.in = lshr i32 %i.im, 8
  %i.io = and i32 %i.in, 16711935
  %i.ip = shl i32 %i.im, 8
  %i.iq = and i32 %i.ip, -16711936
  %i.ir = or disjoint i32 %i.iq, %i.io
  %i.is = or i32 %i.ir, %i.im
  store i32 %i.is, ptr %0, align 4, !tbaa !8
  %exitcond103.not = icmp eq i32 %i.d, 1
  br i1 %exitcond103.not, label %.loopexit, label %.lr.ph82.1

.lr.ph82.1:                                       ; preds = %.lr.ph82
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8  ; 3 uses
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = and i32 %i.iv, 16711935
  %i.ix = shl i32 %i.iu, 8
  %i.iy = and i32 %i.ix, -16711936
  %i.iz = or disjoint i32 %i.iy, %i.iw
  %i.ja = or i32 %i.iz, %i.iu
  store i32 %i.ja, ptr %i.it, align 4, !tbaa !8
  %exitcond103.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond103.not.1, label %.loopexit, label %.lr.ph82.2

.lr.ph82.2:                                       ; preds = %.lr.ph82.1
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8  ; 3 uses
  %i.jd = lshr i32 %i.jc, 8
  %i.je = and i32 %i.jd, 16711935
  %i.jf = shl i32 %i.jc, 8
  %i.jg = and i32 %i.jf, -16711936
  %i.jh = or disjoint i32 %i.jg, %i.je
  %i.ji = or i32 %i.jh, %i.jc
  store i32 %i.ji, ptr %i.jb, align 4, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !8  ; 3 uses
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = and i32 %i.jl, 16711935
  %i.jn = shl i32 %i.jk, 8
  %i.jo = and i32 %i.jn, -16711936
  %i.jp = or disjoint i32 %i.jo, %i.jm
  %i.jq = or i32 %i.jp, %i.jk
  store i32 %i.jq, ptr %i.jj, align 4, !tbaa !8
  %exitcond103.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond103.not.3, label %.loopexit, label %.lr.ph82.4

.lr.ph82.4:                                       ; preds = %.lr.ph82.2
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !8  ; 3 uses
  %i.jt = lshr i32 %i.js, 8
  %i.ju = and i32 %i.jt, 16711935
  %i.jv = shl i32 %i.js, 8
  %i.jw = and i32 %i.jv, -16711936
  %i.jx = or disjoint i32 %i.jw, %i.ju
  %i.jy = or i32 %i.jx, %i.js
  store i32 %i.jy, ptr %i.jr, align 4, !tbaa !8
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !8  ; 3 uses
  %i.kb = lshr i32 %i.ka, 8
  %i.kc = and i32 %i.kb, 16711935
  %i.kd = shl i32 %i.ka, 8
  %i.ke = and i32 %i.kd, -16711936
  %i.kf = or disjoint i32 %i.ke, %i.kc
  %i.kg = or i32 %i.kf, %i.ka
  store i32 %i.kg, ptr %i.jz, align 4, !tbaa !8
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !8  ; 3 uses
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = and i32 %i.kj, 16711935
  %i.kl = shl i32 %i.ki, 8
  %i.km = and i32 %i.kl, -16711936
  %i.kn = or disjoint i32 %i.km, %i.kk
  %i.ko = or i32 %i.kn, %i.ki
  store i32 %i.ko, ptr %i.kh, align 4, !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.kp = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.kq = tail call i32 @llvm.fshl.i32(i32 %i.kp, i32 %i.kp, i32 16)
  %i.kr = or i32 %i.kq, %i.kp
  store i32 %i.kr, ptr %0, align 4, !tbaa !8
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8  ; 3 uses
  %i.ku = tail call i32 @llvm.fshl.i32(i32 %i.kt, i32 %i.kt, i32 16)
  %i.kv = or i32 %i.ku, %i.kt
  store i32 %i.kv, ptr %i.ks, align 4, !tbaa !8
  %exitcond.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !8  ; 3 uses
  %i.ky = tail call i32 @llvm.fshl.i32(i32 %i.kx, i32 %i.kx, i32 16)
  %i.kz = or i32 %i.ky, %i.kx
  store i32 %i.kz, ptr %i.kw, align 4, !tbaa !8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !8  ; 3 uses
  %i.lc = tail call i32 @llvm.fshl.i32(i32 %i.lb, i32 %i.lb, i32 16)
  %i.ld = or i32 %i.lc, %i.lb
  store i32 %i.ld, ptr %i.la, align 4, !tbaa !8
  %exitcond.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.2
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8  ; 3 uses
  %i.lg = tail call i32 @llvm.fshl.i32(i32 %i.lf, i32 %i.lf, i32 16)
  %i.lh = or i32 %i.lg, %i.lf
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !8
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !8  ; 3 uses
  %i.lk = tail call i32 @llvm.fshl.i32(i32 %i.lj, i32 %i.lj, i32 16)
  %i.ll = or i32 %i.lk, %i.lj
  store i32 %i.ll, ptr %i.li, align 4, !tbaa !8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !8  ; 3 uses
  %i.lo = tail call i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 16)
  %i.lp = or i32 %i.lo, %i.ln
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !8
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.lq = add nsw i32 %2, -5                      ; 3 uses
  %i.lr = shl nuw i32 1, %i.lq                    ; 4 uses
  %i.ls = icmp sgt i32 %i.d, 0
  br i1 %i.ls, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %i.lq, 31
  %i.lt = shl i32 2, %i.lq                        ; 4 uses
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.lv = sext i32 %i.lr to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.lr, i32 1) ; 2 uses
  %wide.trip.count122 = zext nneg i32 %smax to i64 ; 4 uses
  %smax184 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.lt)
  %i.lw = add nsw i32 %smax184, -1
  %i.lx = shl nuw nsw i64 %wide.trip.count122, 2  ; 2 uses
  %i.ly = shl nsw i64 %i.lv, 2                    ; 2 uses
  %scevgep185.a = getelementptr i8, ptr %0, i64 %i.ly
  %min.iters.check189 = icmp slt i32 %i.lr, 12
  %i.lz = add i32 %2, -4
  %i.ma = lshr i32 %i.lw, %i.lz
  %i.mb = zext i32 %i.ma to i64
  %i.mc = mul nsw i64 %i.mb, %i.lu
  %i.md = shl i64 %i.mc, 2                        ; 2 uses
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %scevgep = getelementptr i8, ptr %i.me, i64 %i.lx
  %i.mf = getelementptr i8, ptr %0, i64 %i.md
  %i.mg = getelementptr i8, ptr %i.mf, i64 %i.ly
  %scevgep186 = getelementptr i8, ptr %i.mg, i64 %i.lx
  %bound0 = icmp ult ptr %0, %scevgep186
  %bound1 = icmp ult ptr %scevgep185.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.lt, 0
  %i.mh = or i1 %found.conflict, %stride.check
  %n.vec191 = and i64 %wide.trip.count122, 2147483640
  %xtraiter = and i64 %wide.trip.count122, 1
  %i.mi = icmp slt i32 %i.lr, 2
  %unroll_iter = and i64 %wide.trip.count122, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod218 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.092 = phi i32 [ %i.nd, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.06791 = phi ptr [ %i.nc, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06791, i64 %i.lv ; 4 uses
  %brmerge = select i1 %min.iters.check189, i1 true, i1 %i.mh
  br i1 %brmerge, label %scalar.ph188.preheader, label %vector.body192

scalar.ph188.preheader:                           ; preds = %.preheader
  br i1 %i.mi, label %scalar.ph188.epil.preheader, label %scalar.ph188

vector.body192:                                   ; preds = %.preheader, %vector.body192
  %index193 = phi i64 [ %index.next198, %vector.body192 ], [ 0, %.preheader ] ; 3 uses
  %i.mj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index193 ; 3 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 16     ; 2 uses
  %wide.load194.a = load <4 x i32>, ptr %i.mj, align 4, !tbaa !8, !alias.scope !200
  %wide.load195.a = load <4 x i32>, ptr %i.mk, align 4, !tbaa !8, !alias.scope !200
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %index193 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 2 uses
  %wide.load196.a = load <4 x i32>, ptr %i.ml, align 4, !tbaa !8, !alias.scope !203, !noalias !200
  %wide.load197 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !8, !alias.scope !203, !noalias !200
  %i.mn = or <4 x i32> %wide.load196.a, %wide.load194.a ; 2 uses
  %i.mo = or <4 x i32> %wide.load197, %wide.load195.a ; 2 uses
  store <4 x i32> %i.mn, ptr %i.ml, align 4, !tbaa !8, !alias.scope !203, !noalias !200
  store <4 x i32> %i.mo, ptr %i.mm, align 4, !tbaa !8, !alias.scope !203, !noalias !200
  store <4 x i32> %i.mn, ptr %i.mj, align 4, !tbaa !8, !alias.scope !200
  store <4 x i32> %i.mo, ptr %i.mk, align 4, !tbaa !8, !alias.scope !200
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.mp = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.mp, label %._crit_edge, label %vector.body192, !llvm.loop !205

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %scalar.ph188 ], [ 0, %scalar.ph188.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph188 ], [ 0, %scalar.ph188.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119 ; 2 uses
  %i.mq = load i32, ptr %gep, align 4, !tbaa !8
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8
  %i.mt = or i32 %i.ms, %i.mq                     ; 2 uses
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !8
  store i32 %i.mt, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next120 ; 2 uses
  %i.mu = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv.next120 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %i.mx = or i32 %i.mw, %i.mu                     ; 2 uses
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !8
  store i32 %i.mx, ptr %gep.1, align 4, !tbaa !8
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph188, !llvm.loop !206

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph188
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph188.epil.preheader

scalar.ph188.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph188.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %scalar.ph188.preheader ], [ %indvars.iv.next120.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119.epil.init ; 2 uses
  %i.my = load i32, ptr %gep.epil, align 4, !tbaa !8
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119.epil.init ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !8
  %i.nb = or i32 %i.na, %i.my                     ; 2 uses
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !8
  store i32 %i.nb, ptr %gep.epil, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body192, %scalar.ph188.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.nc = getelementptr inbounds [4 x i8], ptr %.06791, i64 %i.lu
  %i.nd = add nsw i32 %.092, %i.lt                ; 2 uses
  %i.ne = icmp slt i32 %i.nd, %i.d
  br i1 %i.ne, label %.preheader, label %.loopexit, !llvm.loop !207

.loopexit:                                        ; preds = %vector.body, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.4, %vector.body140, %.lr.ph82, %.lr.ph82.1, %.lr.ph82.2, %.lr.ph82.4, %vector.body152, %.lr.ph84, %.lr.ph84.1, %.lr.ph84.2, %.lr.ph84.4, %vector.body164, %.lr.ph86, %.lr.ph86.1, %.lr.ph86.2, %.lr.ph86.4, %vector.body176, %.lr.ph88, %.lr.ph88.1, %.lr.ph88.2, %.lr.ph88.4, %._crit_edge, %.preheader78, %.preheader76, %.preheader74, %.preheader72, %.preheader70, %bb.b, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthExistNew(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.c = icmp slt i32 %2, 6
  %i.d = add nsw i32 %2, -5
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 26 uses
  switch i32 %3, label %bb.b [
    i32 0, label %.preheader85
    i32 1, label %.preheader87
    i32 2, label %.preheader89
    i32 3, label %.preheader91
    i32 4, label %.preheader93
  ]

.preheader93:                                     ; preds = %bb.a
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader93
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader246, label %vector.ph

.lr.ph.preheader246:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.i = icmp ult i32 %i.f, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader246.new

.lr.ph.preheader246.new:                          ; preds = %.lr.ph.preheader246
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !8 ; 3 uses
  %wide.load151 = load <4 x i32>, ptr %i.k, align 4, !tbaa !8 ; 3 uses
  %i.l = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load, <4 x i32> splat (i32 16))
  %i.m = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load151, <4 x i32> %wide.load151, <4 x i32> splat (i32 16))
  %i.n = or <4 x i32> %i.l, %wide.load
  %i.o = or <4 x i32> %i.m, %wide.load151
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %i.n, ptr %i.p, align 4, !tbaa !8
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %.loopexit, label %vector.body, !llvm.loop !208

.preheader91:                                     ; preds = %bb.a
  %i.s = icmp sgt i32 %i.f, 0
  br i1 %i.s, label %.lr.ph97.preheader, label %.loopexit

.lr.ph97.preheader:                               ; preds = %.preheader91
  %wide.trip.count118 = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check155 = icmp ult i32 %i.f, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check153 = icmp ugt i64 %i.t, -32
  %or.cond229 = or i1 %min.iters.check155, %diff.check153
  br i1 %or.cond229, label %.lr.ph97.preheader243, label %vector.ph156

.lr.ph97.preheader243:                            ; preds = %.lr.ph97.preheader
  %xtraiter250 = and i64 %wide.trip.count118, 1
  %i.u = icmp eq i32 %i.f, 1
  br i1 %i.u, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader243.new

.lr.ph97.preheader243.new:                        ; preds = %.lr.ph97.preheader243
  %unroll_iter254 = and i64 %wide.trip.count118, 2147483646
  br label %.lr.ph97

vector.ph156:                                     ; preds = %.lr.ph97.preheader
  %n.vec157 = and i64 %wide.trip.count118, 2147483640
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index159 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.v, align 4, !tbaa !8 ; 3 uses
  %wide.load161 = load <4 x i32>, ptr %i.w, align 4, !tbaa !8 ; 3 uses
  %i.x = lshr <4 x i32> %wide.load160, splat (i32 8)
  %i.y = lshr <4 x i32> %wide.load161, splat (i32 8)
  %i.z = and <4 x i32> %i.x, splat (i32 16711935)
  %i.aa = and <4 x i32> %i.y, splat (i32 16711935)
end_hunk_0
begin_hunk_1_@Kit_TruthForall:bb.a

.lr.ph84.1:                                       ; preds = %.lr.ph84
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !8  ; 3 uses
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = and i32 %i.gs, 252645135
  %i.gu = shl i32 %i.gr, 4
  %i.gv = and i32 %i.gu, -252645136
  %i.gw = or disjoint i32 %i.gt, %i.gv
  %i.gx = and i32 %i.gw, %i.gr
  store i32 %i.gx, ptr %i.gq, align 4, !tbaa !8
  %exitcond108.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond108.not.1, label %.loopexit, label %.lr.ph84.2

.lr.ph84.2:                                       ; preds = %.lr.ph84.1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !8  ; 3 uses
  %i.ha = lshr i32 %i.gz, 4
  %i.hb = and i32 %i.ha, 252645135
  %i.hc = shl i32 %i.gz, 4
  %i.hd = and i32 %i.hc, -252645136
  %i.he = or disjoint i32 %i.hb, %i.hd
  %i.hf = and i32 %i.he, %i.gz
  store i32 %i.hf, ptr %i.gy, align 4, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8  ; 3 uses
  %i.hi = lshr i32 %i.hh, 4
  %i.hj = and i32 %i.hi, 252645135
  %i.hk = shl i32 %i.hh, 4
  %i.hl = and i32 %i.hk, -252645136
  %i.hm = or disjoint i32 %i.hj, %i.hl
  %i.hn = and i32 %i.hm, %i.hh
  store i32 %i.hn, ptr %i.hg, align 4, !tbaa !8
  %exitcond108.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond108.not.3, label %.loopexit, label %.lr.ph84.4

.lr.ph84.4:                                       ; preds = %.lr.ph84.2
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !8  ; 3 uses
  %i.hq = lshr i32 %i.hp, 4
  %i.hr = and i32 %i.hq, 252645135
  %i.hs = shl i32 %i.hp, 4
  %i.ht = and i32 %i.hs, -252645136
  %i.hu = or disjoint i32 %i.hr, %i.ht
  %i.hv = and i32 %i.hu, %i.hp
  store i32 %i.hv, ptr %i.ho, align 4, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !8  ; 3 uses
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = and i32 %i.hy, 252645135
  %i.ia = shl i32 %i.hx, 4
  %i.ib = and i32 %i.ia, -252645136
  %i.ic = or disjoint i32 %i.hz, %i.ib
  %i.id = and i32 %i.ic, %i.hx
  store i32 %i.id, ptr %i.hw, align 4, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !8  ; 3 uses
  %i.ig = lshr i32 %i.if, 4
  %i.ih = and i32 %i.ig, 252645135
  %i.ii = shl i32 %i.if, 4
  %i.ij = and i32 %i.ii, -252645136
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = and i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.ie, align 4, !tbaa !8
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph82.preheader
  %i.im = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.in = lshr i32 %i.im, 8
  %i.io = and i32 %i.in, 16711935
  %i.ip = shl i32 %i.im, 8
  %i.iq = and i32 %i.ip, -16711936
  %i.ir = or disjoint i32 %i.io, %i.iq
  %i.is = and i32 %i.ir, %i.im
  store i32 %i.is, ptr %0, align 4, !tbaa !8
  %exitcond103.not = icmp eq i32 %i.d, 1
  br i1 %exitcond103.not, label %.loopexit, label %.lr.ph82.1

.lr.ph82.1:                                       ; preds = %.lr.ph82
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8  ; 3 uses
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = and i32 %i.iv, 16711935
  %i.ix = shl i32 %i.iu, 8
  %i.iy = and i32 %i.ix, -16711936
  %i.iz = or disjoint i32 %i.iw, %i.iy
  %i.ja = and i32 %i.iz, %i.iu
  store i32 %i.ja, ptr %i.it, align 4, !tbaa !8
  %exitcond103.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond103.not.1, label %.loopexit, label %.lr.ph82.2

.lr.ph82.2:                                       ; preds = %.lr.ph82.1
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8  ; 3 uses
  %i.jd = lshr i32 %i.jc, 8
  %i.je = and i32 %i.jd, 16711935
  %i.jf = shl i32 %i.jc, 8
  %i.jg = and i32 %i.jf, -16711936
  %i.jh = or disjoint i32 %i.je, %i.jg
  %i.ji = and i32 %i.jh, %i.jc
  store i32 %i.ji, ptr %i.jb, align 4, !tbaa !8
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !8  ; 3 uses
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = and i32 %i.jl, 16711935
  %i.jn = shl i32 %i.jk, 8
  %i.jo = and i32 %i.jn, -16711936
  %i.jp = or disjoint i32 %i.jm, %i.jo
  %i.jq = and i32 %i.jp, %i.jk
  store i32 %i.jq, ptr %i.jj, align 4, !tbaa !8
  %exitcond103.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond103.not.3, label %.loopexit, label %.lr.ph82.4

.lr.ph82.4:                                       ; preds = %.lr.ph82.2
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !8  ; 3 uses
  %i.jt = lshr i32 %i.js, 8
  %i.ju = and i32 %i.jt, 16711935
  %i.jv = shl i32 %i.js, 8
  %i.jw = and i32 %i.jv, -16711936
  %i.jx = or disjoint i32 %i.ju, %i.jw
  %i.jy = and i32 %i.jx, %i.js
  store i32 %i.jy, ptr %i.jr, align 4, !tbaa !8
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !8  ; 3 uses
  %i.kb = lshr i32 %i.ka, 8
  %i.kc = and i32 %i.kb, 16711935
  %i.kd = shl i32 %i.ka, 8
  %i.ke = and i32 %i.kd, -16711936
  %i.kf = or disjoint i32 %i.kc, %i.ke
  %i.kg = and i32 %i.kf, %i.ka
  store i32 %i.kg, ptr %i.jz, align 4, !tbaa !8
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !8  ; 3 uses
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = and i32 %i.kj, 16711935
  %i.kl = shl i32 %i.ki, 8
  %i.km = and i32 %i.kl, -16711936
  %i.kn = or disjoint i32 %i.kk, %i.km
  %i.ko = and i32 %i.kn, %i.ki
  store i32 %i.ko, ptr %i.kh, align 4, !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.kp = load i32, ptr %0, align 4, !tbaa !8     ; 3 uses
  %i.kq = tail call i32 @llvm.fshl.i32(i32 %i.kp, i32 %i.kp, i32 16)
  %i.kr = and i32 %i.kq, %i.kp
  store i32 %i.kr, ptr %0, align 4, !tbaa !8
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8  ; 3 uses
  %i.ku = tail call i32 @llvm.fshl.i32(i32 %i.kt, i32 %i.kt, i32 16)
  %i.kv = and i32 %i.ku, %i.kt
  store i32 %i.kv, ptr %i.ks, align 4, !tbaa !8
  %exitcond.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !8  ; 3 uses
  %i.ky = tail call i32 @llvm.fshl.i32(i32 %i.kx, i32 %i.kx, i32 16)
  %i.kz = and i32 %i.ky, %i.kx
  store i32 %i.kz, ptr %i.kw, align 4, !tbaa !8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !8  ; 3 uses
  %i.lc = tail call i32 @llvm.fshl.i32(i32 %i.lb, i32 %i.lb, i32 16)
  %i.ld = and i32 %i.lc, %i.lb
  store i32 %i.ld, ptr %i.la, align 4, !tbaa !8
  %exitcond.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.2
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8  ; 3 uses
  %i.lg = tail call i32 @llvm.fshl.i32(i32 %i.lf, i32 %i.lf, i32 16)
  %i.lh = and i32 %i.lg, %i.lf
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !8
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !8  ; 3 uses
  %i.lk = tail call i32 @llvm.fshl.i32(i32 %i.lj, i32 %i.lj, i32 16)
  %i.ll = and i32 %i.lk, %i.lj
  store i32 %i.ll, ptr %i.li, align 4, !tbaa !8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !8  ; 3 uses
  %i.lo = tail call i32 @llvm.fshl.i32(i32 %i.ln, i32 %i.ln, i32 16)
  %i.lp = and i32 %i.lo, %i.ln
  store i32 %i.lp, ptr %i.lm, align 4, !tbaa !8
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.lq = add nsw i32 %2, -5                      ; 3 uses
  %i.lr = shl nuw i32 1, %i.lq                    ; 4 uses
  %i.ls = icmp sgt i32 %i.d, 0
  br i1 %i.ls, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %i.lq, 31
  %i.lt = shl i32 2, %i.lq                        ; 4 uses
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.lv = sext i32 %i.lr to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.lr, i32 1) ; 2 uses
  %wide.trip.count122 = zext nneg i32 %smax to i64 ; 4 uses
  %smax184 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.lt)
  %i.lw = add nsw i32 %smax184, -1
  %i.lx = shl nuw nsw i64 %wide.trip.count122, 2  ; 2 uses
  %i.ly = shl nsw i64 %i.lv, 2                    ; 2 uses
  %scevgep185.a = getelementptr i8, ptr %0, i64 %i.ly
  %min.iters.check189 = icmp slt i32 %i.lr, 12
  %i.lz = add i32 %2, -4
  %i.ma = lshr i32 %i.lw, %i.lz
  %i.mb = zext i32 %i.ma to i64
  %i.mc = mul nsw i64 %i.mb, %i.lu
  %i.md = shl i64 %i.mc, 2                        ; 2 uses
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %scevgep = getelementptr i8, ptr %i.me, i64 %i.lx
  %i.mf = getelementptr i8, ptr %0, i64 %i.md
  %i.mg = getelementptr i8, ptr %i.mf, i64 %i.ly
  %scevgep186 = getelementptr i8, ptr %i.mg, i64 %i.lx
  %bound0 = icmp ult ptr %0, %scevgep186
  %bound1 = icmp ult ptr %scevgep185.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.lt, 0
  %i.mh = or i1 %found.conflict, %stride.check
  %n.vec191 = and i64 %wide.trip.count122, 2147483640
  %xtraiter = and i64 %wide.trip.count122, 1
  %i.mi = icmp slt i32 %i.lr, 2
  %unroll_iter = and i64 %wide.trip.count122, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod218 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.092 = phi i32 [ %i.nd, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.06791 = phi ptr [ %i.nc, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06791, i64 %i.lv ; 4 uses
  %brmerge = select i1 %min.iters.check189, i1 true, i1 %i.mh
  br i1 %brmerge, label %scalar.ph188.preheader, label %vector.body192

scalar.ph188.preheader:                           ; preds = %.preheader
  br i1 %i.mi, label %scalar.ph188.epil.preheader, label %scalar.ph188

vector.body192:                                   ; preds = %.preheader, %vector.body192
  %index193 = phi i64 [ %index.next198, %vector.body192 ], [ 0, %.preheader ] ; 3 uses
  %i.mj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index193 ; 3 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 16     ; 2 uses
  %wide.load194.a = load <4 x i32>, ptr %i.mj, align 4, !tbaa !8, !alias.scope !231
  %wide.load195.a = load <4 x i32>, ptr %i.mk, align 4, !tbaa !8, !alias.scope !231
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %index193 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 2 uses
  %wide.load196.a = load <4 x i32>, ptr %i.ml, align 4, !tbaa !8, !alias.scope !234, !noalias !231
  %wide.load197 = load <4 x i32>, ptr %i.mm, align 4, !tbaa !8, !alias.scope !234, !noalias !231
  %i.mn = and <4 x i32> %wide.load196.a, %wide.load194.a ; 2 uses
  %i.mo = and <4 x i32> %wide.load197, %wide.load195.a ; 2 uses
  store <4 x i32> %i.mn, ptr %i.ml, align 4, !tbaa !8, !alias.scope !234, !noalias !231
  store <4 x i32> %i.mo, ptr %i.mm, align 4, !tbaa !8, !alias.scope !234, !noalias !231
  store <4 x i32> %i.mn, ptr %i.mj, align 4, !tbaa !8, !alias.scope !231
  store <4 x i32> %i.mo, ptr %i.mk, align 4, !tbaa !8, !alias.scope !231
  %index.next198 = add nuw i64 %index193, 8       ; 2 uses
  %i.mp = icmp eq i64 %index.next198, %n.vec191
  br i1 %i.mp, label %._crit_edge, label %vector.body192, !llvm.loop !236

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %scalar.ph188 ], [ 0, %scalar.ph188.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph188 ], [ 0, %scalar.ph188.preheader ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119 ; 2 uses
  %i.mq = load i32, ptr %gep, align 4, !tbaa !8
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8
  %i.mt = and i32 %i.ms, %i.mq                    ; 2 uses
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !8
  store i32 %i.mt, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next120 ; 2 uses
  %i.mu = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv.next120 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %i.mx = and i32 %i.mw, %i.mu                    ; 2 uses
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !8
  store i32 %i.mx, ptr %gep.1, align 4, !tbaa !8
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph188, !llvm.loop !237

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph188
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph188.epil.preheader

scalar.ph188.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph188.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %scalar.ph188.preheader ], [ %indvars.iv.next120.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv119.epil.init ; 2 uses
  %i.my = load i32, ptr %gep.epil, align 4, !tbaa !8
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.06791, i64 %indvars.iv119.epil.init ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !8
  %i.nb = and i32 %i.na, %i.my                    ; 2 uses
  store i32 %i.nb, ptr %i.mz, align 4, !tbaa !8
  store i32 %i.nb, ptr %gep.epil, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body192, %scalar.ph188.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.nc = getelementptr inbounds [4 x i8], ptr %.06791, i64 %i.lu
  %i.nd = add nsw i32 %.092, %i.lt                ; 2 uses
  %i.ne = icmp slt i32 %i.nd, %i.d
  br i1 %i.ne, label %.preheader, label %.loopexit, !llvm.loop !238

.loopexit:                                        ; preds = %vector.body, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.4, %vector.body140, %.lr.ph82, %.lr.ph82.1, %.lr.ph82.2, %.lr.ph82.4, %vector.body152, %.lr.ph84, %.lr.ph84.1, %.lr.ph84.2, %.lr.ph84.4, %vector.body164, %.lr.ph86, %.lr.ph86.1, %.lr.ph86.2, %.lr.ph86.4, %vector.body176, %.lr.ph88, %.lr.ph88.1, %.lr.ph88.2, %.lr.ph88.4, %._crit_edge, %.preheader78, %.preheader76, %.preheader74, %.preheader72, %.preheader70, %bb.b, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthForallNew(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.c = icmp slt i32 %2, 6
  %i.d = add nsw i32 %2, -5
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 26 uses
  switch i32 %3, label %bb.b [
    i32 0, label %.preheader85
    i32 1, label %.preheader87
    i32 2, label %.preheader89
    i32 3, label %.preheader91
    i32 4, label %.preheader93
  ]

.preheader93:                                     ; preds = %bb.a
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader93
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader246, label %vector.ph

.lr.ph.preheader246:                              ; preds = %.lr.ph.preheader
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.i = icmp ult i32 %i.f, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader246.new

.lr.ph.preheader246.new:                          ; preds = %.lr.ph.preheader246
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !8 ; 3 uses
  %wide.load151 = load <4 x i32>, ptr %i.k, align 4, !tbaa !8 ; 3 uses
  %i.l = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load, <4 x i32> splat (i32 16))
  %i.m = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load151, <4 x i32> %wide.load151, <4 x i32> splat (i32 16))
  %i.n = and <4 x i32> %i.l, %wide.load
  %i.o = and <4 x i32> %i.m, %wide.load151
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %i.n, ptr %i.p, align 4, !tbaa !8
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %.loopexit, label %vector.body, !llvm.loop !239

.preheader91:                                     ; preds = %bb.a
  %i.s = icmp sgt i32 %i.f, 0
  br i1 %i.s, label %.lr.ph97.preheader, label %.loopexit

.lr.ph97.preheader:                               ; preds = %.preheader91
  %wide.trip.count118 = zext nneg i32 %i.f to i64 ; 3 uses
  %min.iters.check155 = icmp ult i32 %i.f, 8
  %i.t = sub i64 %i.a, %i.b
  %diff.check153 = icmp ugt i64 %i.t, -32
  %or.cond229 = or i1 %min.iters.check155, %diff.check153
  br i1 %or.cond229, label %.lr.ph97.preheader243, label %vector.ph156

.lr.ph97.preheader243:                            ; preds = %.lr.ph97.preheader
  %xtraiter250 = and i64 %wide.trip.count118, 1
  %i.u = icmp eq i32 %i.f, 1
  br i1 %i.u, label %.lr.ph97.epil.preheader, label %.lr.ph97.preheader243.new

.lr.ph97.preheader243.new:                        ; preds = %.lr.ph97.preheader243
  %unroll_iter254 = and i64 %wide.trip.count118, 2147483646
  br label %.lr.ph97

vector.ph156:                                     ; preds = %.lr.ph97.preheader
  %n.vec157 = and i64 %wide.trip.count118, 2147483640
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body158 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index159 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.v, align 4, !tbaa !8 ; 3 uses
  %wide.load161 = load <4 x i32>, ptr %i.w, align 4, !tbaa !8 ; 3 uses
  %i.x = lshr <4 x i32> %wide.load160, splat (i32 8)
  %i.y = lshr <4 x i32> %wide.load161, splat (i32 8)
  %i.z = and <4 x i32> %i.x, splat (i32 16711935)
  %i.aa = and <4 x i32> %i.y, splat (i32 16711935)
end_hunk_1
begin_hunk_2_@Kit_TruthChangePhase:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !8  ; 2 uses
  %i.fg = shl i32 %i.ff, 2
  %i.fh = and i32 %i.fg, -858993460
  %i.fi = lshr i32 %i.ff, 2
  %i.fj = and i32 %i.fi, 858993459
  %i.fk = or disjoint i32 %i.fh, %i.fj
  store i32 %i.fk, ptr %i.fe, align 4, !tbaa !8
  br label %.loopexit

.lr.ph85:                                         ; preds = %.lr.ph85.preheader
  %i.fl = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %i.fm = shl i32 %i.fl, 4
  %i.fn = and i32 %i.fm, -252645136
  %i.fo = lshr i32 %i.fl, 4
  %i.fp = and i32 %i.fo, 252645135
  %i.fq = or disjoint i32 %i.fn, %i.fp
  store i32 %i.fq, ptr %0, align 4, !tbaa !8
  %exitcond109.not = icmp eq i32 %i.d, 1
  br i1 %exitcond109.not, label %.loopexit, label %.lr.ph85.1

.lr.ph85.1:                                       ; preds = %.lr.ph85
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8  ; 2 uses
  %i.ft = shl i32 %i.fs, 4
  %i.fu = and i32 %i.ft, -252645136
  %i.fv = lshr i32 %i.fs, 4
  %i.fw = and i32 %i.fv, 252645135
  %i.fx = or disjoint i32 %i.fu, %i.fw
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !8
  %exitcond109.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond109.not.1, label %.loopexit, label %.lr.ph85.2

.lr.ph85.2:                                       ; preds = %.lr.ph85.1
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8  ; 2 uses
  %i.ga = shl i32 %i.fz, 4
  %i.gb = and i32 %i.ga, -252645136
  %i.gc = lshr i32 %i.fz, 4
  %i.gd = and i32 %i.gc, 252645135
  %i.ge = or disjoint i32 %i.gb, %i.gd
  store i32 %i.ge, ptr %i.fy, align 4, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !8  ; 2 uses
  %i.gh = shl i32 %i.gg, 4
  %i.gi = and i32 %i.gh, -252645136
  %i.gj = lshr i32 %i.gg, 4
  %i.gk = and i32 %i.gj, 252645135
  %i.gl = or disjoint i32 %i.gi, %i.gk
  store i32 %i.gl, ptr %i.gf, align 4, !tbaa !8
  %exitcond109.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond109.not.3, label %.loopexit, label %.lr.ph85.4

.lr.ph85.4:                                       ; preds = %.lr.ph85.2
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8  ; 2 uses
  %i.go = shl i32 %i.gn, 4
  %i.gp = and i32 %i.go, -252645136
  %i.gq = lshr i32 %i.gn, 4
  %i.gr = and i32 %i.gq, 252645135
  %i.gs = or disjoint i32 %i.gp, %i.gr
  store i32 %i.gs, ptr %i.gm, align 4, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !8  ; 2 uses
  %i.gv = shl i32 %i.gu, 4
  %i.gw = and i32 %i.gv, -252645136
  %i.gx = lshr i32 %i.gu, 4
  %i.gy = and i32 %i.gx, 252645135
  %i.gz = or disjoint i32 %i.gw, %i.gy
  store i32 %i.gz, ptr %i.gt, align 4, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !8  ; 2 uses
  %i.hc = shl i32 %i.hb, 4
  %i.hd = and i32 %i.hc, -252645136
  %i.he = lshr i32 %i.hb, 4
  %i.hf = and i32 %i.he, 252645135
  %i.hg = or disjoint i32 %i.hd, %i.hf
  store i32 %i.hg, ptr %i.ha, align 4, !tbaa !8
  br label %.loopexit

.lr.ph83:                                         ; preds = %.lr.ph83.preheader
  %i.hh = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %i.hi = shl i32 %i.hh, 8
  %i.hj = and i32 %i.hi, -16711936
  %i.hk = lshr i32 %i.hh, 8
  %i.hl = and i32 %i.hk, 16711935
  %i.hm = or disjoint i32 %i.hj, %i.hl
  store i32 %i.hm, ptr %0, align 4, !tbaa !8
  %exitcond104.not = icmp eq i32 %i.d, 1
  br i1 %exitcond104.not, label %.loopexit, label %.lr.ph83.1

.lr.ph83.1:                                       ; preds = %.lr.ph83
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8  ; 2 uses
  %i.hp = shl i32 %i.ho, 8
  %i.hq = and i32 %i.hp, -16711936
  %i.hr = lshr i32 %i.ho, 8
  %i.hs = and i32 %i.hr, 16711935
  %i.ht = or disjoint i32 %i.hq, %i.hs
  store i32 %i.ht, ptr %i.hn, align 4, !tbaa !8
  %exitcond104.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond104.not.1, label %.loopexit, label %.lr.ph83.2

.lr.ph83.2:                                       ; preds = %.lr.ph83.1
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !8  ; 2 uses
  %i.hw = shl i32 %i.hv, 8
  %i.hx = and i32 %i.hw, -16711936
  %i.hy = lshr i32 %i.hv, 8
  %i.hz = and i32 %i.hy, 16711935
  %i.ia = or disjoint i32 %i.hx, %i.hz
  store i32 %i.ia, ptr %i.hu, align 4, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !8  ; 2 uses
  %i.id = shl i32 %i.ic, 8
  %i.ie = and i32 %i.id, -16711936
  %i.if = lshr i32 %i.ic, 8
  %i.ig = and i32 %i.if, 16711935
  %i.ih = or disjoint i32 %i.ie, %i.ig
  store i32 %i.ih, ptr %i.ib, align 4, !tbaa !8
  %exitcond104.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond104.not.3, label %.loopexit, label %.lr.ph83.4

.lr.ph83.4:                                       ; preds = %.lr.ph83.2
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !8  ; 2 uses
  %i.ik = shl i32 %i.ij, 8
  %i.il = and i32 %i.ik, -16711936
  %i.im = lshr i32 %i.ij, 8
  %i.in = and i32 %i.im, 16711935
  %i.io = or disjoint i32 %i.il, %i.in
  store i32 %i.io, ptr %i.ii, align 4, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8  ; 2 uses
  %i.ir = shl i32 %i.iq, 8
  %i.is = and i32 %i.ir, -16711936
  %i.it = lshr i32 %i.iq, 8
  %i.iu = and i32 %i.it, 16711935
  %i.iv = or disjoint i32 %i.is, %i.iu
  store i32 %i.iv, ptr %i.ip, align 4, !tbaa !8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !8  ; 2 uses
  %i.iy = shl i32 %i.ix, 8
  %i.iz = and i32 %i.iy, -16711936
  %i.ja = lshr i32 %i.ix, 8
  %i.jb = and i32 %i.ja, 16711935
  %i.jc = or disjoint i32 %i.iz, %i.jb
  store i32 %i.jc, ptr %i.iw, align 4, !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.jd = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %i.je = tail call i32 @llvm.fshl.i32(i32 %i.jd, i32 %i.jd, i32 16)
  store i32 %i.je, ptr %0, align 4, !tbaa !8
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !8  ; 2 uses
  %i.jh = tail call i32 @llvm.fshl.i32(i32 %i.jg, i32 %i.jg, i32 16)
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !8
  %exitcond.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !8  ; 2 uses
  %i.jk = tail call i32 @llvm.fshl.i32(i32 %i.jj, i32 %i.jj, i32 16)
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !8  ; 2 uses
  %i.jn = tail call i32 @llvm.fshl.i32(i32 %i.jm, i32 %i.jm, i32 16)
  store i32 %i.jn, ptr %i.jl, align 4, !tbaa !8
  %exitcond.not.3 = icmp eq i32 %i.d, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.2
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !8  ; 2 uses
  %i.jq = tail call i32 @llvm.fshl.i32(i32 %i.jp, i32 %i.jp, i32 16)
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !8  ; 2 uses
  %i.jt = tail call i32 @llvm.fshl.i32(i32 %i.js, i32 %i.js, i32 16)
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !8  ; 2 uses
  %i.jw = tail call i32 @llvm.fshl.i32(i32 %i.jv, i32 %i.jv, i32 16)
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !8
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.jx = add nsw i32 %2, -5                      ; 3 uses
  %i.jy = shl nuw i32 1, %i.jx                    ; 4 uses
  %i.jz = icmp sgt i32 %i.d, 0
  br i1 %i.jz, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %i.jx, 31
  %i.ka = shl i32 2, %i.jx                        ; 4 uses
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kc = sext i32 %i.jy to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.jy, i32 1) ; 2 uses
  %wide.trip.count123 = zext nneg i32 %smax to i64 ; 4 uses
  %smax185 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.ka)
  %i.kd = add nsw i32 %smax185, -1
  %i.ke = shl nuw nsw i64 %wide.trip.count123, 2  ; 2 uses
  %i.kf = shl nsw i64 %i.kc, 2                    ; 2 uses
  %scevgep186.a = getelementptr i8, ptr %0, i64 %i.kf
  %min.iters.check190 = icmp slt i32 %i.jy, 12
  %i.kg = add i32 %2, -4
  %i.kh = lshr i32 %i.kd, %i.kg
  %i.ki = zext i32 %i.kh to i64
  %i.kj = mul nsw i64 %i.ki, %i.kb
  %i.kk = shl i64 %i.kj, 2                        ; 2 uses
  %i.kl = getelementptr i8, ptr %0, i64 %i.kk
  %scevgep = getelementptr i8, ptr %i.kl, i64 %i.ke
  %i.km = getelementptr i8, ptr %0, i64 %i.kk
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.kf
  %scevgep187 = getelementptr i8, ptr %i.kn, i64 %i.ke
  %bound0 = icmp ult ptr %0, %scevgep187
  %bound1 = icmp ult ptr %scevgep186.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ka, 0
  %i.ko = or i1 %found.conflict, %stride.check
  %n.vec192 = and i64 %wide.trip.count123, 2147483640
  %xtraiter = and i64 %wide.trip.count123, 1
  %i.kp = icmp slt i32 %i.jy, 2
  %unroll_iter = and i64 %wide.trip.count123, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod219 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.093 = phi i32 [ %i.lf, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.06892 = phi ptr [ %i.le, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.06892, i64 %i.kc ; 4 uses
  %brmerge = select i1 %min.iters.check190, i1 true, i1 %i.ko
  br i1 %brmerge, label %scalar.ph189.preheader, label %vector.body193

scalar.ph189.preheader:                           ; preds = %.preheader
  br i1 %i.kp, label %scalar.ph189.epil.preheader, label %scalar.ph189

vector.body193:                                   ; preds = %.preheader, %vector.body193
  %index194 = phi i64 [ %index.next199, %vector.body193 ], [ 0, %.preheader ] ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %index194 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16 ; 2 uses
  %wide.load195.a = load <4 x i32>, ptr %i.kq, align 4, !tbaa !8, !alias.scope !321, !noalias !324
  %wide.load196.a = load <4 x i32>, ptr %i.kr, align 4, !tbaa !8, !alias.scope !321, !noalias !324
  %i.ks = getelementptr [4 x i8], ptr %invariant.gep, i64 %index194 ; 3 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 16     ; 2 uses
  %wide.load197.a = load <4 x i32>, ptr %i.ks, align 4, !tbaa !8, !alias.scope !324
  %wide.load198 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !8, !alias.scope !324
  store <4 x i32> %wide.load197.a, ptr %i.kq, align 4, !tbaa !8, !alias.scope !321, !noalias !324
  store <4 x i32> %wide.load198, ptr %i.kr, align 4, !tbaa !8, !alias.scope !321, !noalias !324
  store <4 x i32> %wide.load195.a, ptr %i.ks, align 4, !tbaa !8, !alias.scope !324
  store <4 x i32> %wide.load196.a, ptr %i.kt, align 4, !tbaa !8, !alias.scope !324
  %index.next199 = add nuw i64 %index194, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.ku, label %._crit_edge, label %vector.body193, !llvm.loop !326

scalar.ph189:                                     ; preds = %scalar.ph189.preheader, %scalar.ph189
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.1, %scalar.ph189 ], [ 0, %scalar.ph189.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph189 ], [ 0, %scalar.ph189.preheader ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %indvars.iv120 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv120 ; 2 uses
  %i.kx = load i32, ptr %gep, align 4, !tbaa !8
  store i32 %i.kx, ptr %i.kv, align 4, !tbaa !8
  store i32 %i.kw, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next121 = or disjoint i64 %indvars.iv120, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %indvars.iv.next121 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !8
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next121 ; 2 uses
  %i.la = load i32, ptr %gep.1, align 4, !tbaa !8
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !8
  store i32 %i.kz, ptr %gep.1, align 4, !tbaa !8
  %indvars.iv.next121.1 = add nuw nsw i64 %indvars.iv120, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph189, !llvm.loop !327

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph189
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph189.epil.preheader

scalar.ph189.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph189.preheader
  %indvars.iv120.epil.init = phi i64 [ 0, %scalar.ph189.preheader ], [ %indvars.iv.next121.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.06892, i64 %indvars.iv120.epil.init ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !8
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv120.epil.init ; 2 uses
  %i.ld = load i32, ptr %gep.epil, align 4, !tbaa !8
  store i32 %i.ld, ptr %i.lb, align 4, !tbaa !8
  store i32 %i.lc, ptr %gep.epil, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body193, %scalar.ph189.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.le = getelementptr inbounds [4 x i8], ptr %.06892, i64 %i.kb
  %i.lf = add nsw i32 %.093, %i.ka                ; 2 uses
  %i.lg = icmp slt i32 %i.lf, %i.d
  br i1 %i.lg, label %.preheader, label %.loopexit, !llvm.loop !328

.loopexit:                                        ; preds = %vector.body, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.4, %vector.body141, %.lr.ph83, %.lr.ph83.1, %.lr.ph83.2, %.lr.ph83.4, %vector.body153, %.lr.ph85, %.lr.ph85.1, %.lr.ph85.2, %.lr.ph85.4, %vector.body165, %.lr.ph87, %.lr.ph87.1, %.lr.ph87.2, %.lr.ph87.4, %vector.body177, %.lr.ph89, %.lr.ph89.1, %.lr.ph89.2, %.lr.ph89.4, %._crit_edge, %.preheader79, %.preheader77, %.preheader75, %.preheader73, %.preheader71, %bb.b, %.preheader.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 33) i32 @Kit_TruthMinCofSuppOverlap(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %Kit_TruthSupport.exit51.loopexit._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp samesign ult i32 %1, 6
  %i.d = add nsw i32 %1, -5
  %i.e = shl nuw i32 1, %i.d
  %spec.select.i = select i1 %i.c, i32 1, i32 %i.e ; 7 uses
  %i.f = icmp sgt i32 %spec.select.i, 0           ; 14 uses
  %i.g = zext i32 %spec.select.i to i64           ; 18 uses
  %i.h = sub i64 %i.b, ptrtoaddr (ptr @Kit_TruthMinCofSuppOverlap.uCofactor to i64) ; 2 uses
  %min.iters.check233 = icmp ult i32 %spec.select.i, 8
  %i.i = add i64 %i.h, -1
  %diff.check231 = icmp ult i64 %i.i, 31
  %or.cond244 = or i1 %min.iters.check233, %diff.check231
  %n.vec235 = and i64 %i.g, 2147483640
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = icmp ult i32 %spec.select.i, 4
  %min.iters.check = icmp ult i32 %spec.select.i, 8
  %i.k = add i64 %i.h, -1
  %diff.check = icmp ult i64 %i.k, 31
  %or.cond245 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.g, 4294967288
  br label %bb.c

bb.b:                                             ; preds = %Kit_TruthSupport.exit51.loopexit
  %i.l = add nuw nsw i32 %.033151, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %Kit_TruthSupport.exit51.loopexit._crit_edge, label %bb.c, !llvm.loop !329

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0153 = phi i32 [ -1, %.lr.ph ], [ %spec.select37, %bb.b ]
  %.030152 = phi i32 [ 32, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %.033151 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 4 uses
  br i1 %i.f, label %select.unfold.i.preheader, label %Kit_TruthCopy.exit

select.unfold.i.preheader:                        ; preds = %bb.c
  br i1 %or.cond244, label %select.unfold.i.preheader268, label %vector.body236

select.unfold.i.preheader268:                     ; preds = %select.unfold.i.preheader
  br i1 %lcmp.mod.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol

select.unfold.i.prol:                             ; preds = %select.unfold.i.preheader268, %select.unfold.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %select.unfold.i.prol ], [ %i.g, %select.unfold.i.preheader268 ]
  %prol.iter = phi i64 [ %prol.iter.next, %select.unfold.i.prol ], [ 0, %select.unfold.i.preheader268 ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.prol
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i.prol
  store i32 %i.n, ptr %i.o, align 4, !tbaa !8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %select.unfold.i.prol.loopexit, label %select.unfold.i.prol, !llvm.loop !330

select.unfold.i.prol.loopexit:                    ; preds = %select.unfold.i.prol, %select.unfold.i.preheader268
  %indvars.iv.i.unr = phi i64 [ %i.g, %select.unfold.i.preheader268 ], [ %indvars.iv.next.i.prol, %select.unfold.i.prol ]
  br i1 %i.j, label %Kit_TruthCopy.exit, label %select.unfold.i

vector.body236:                                   ; preds = %select.unfold.i.preheader, %vector.body236
  %index237 = phi i64 [ %index.next240, %vector.body236 ], [ 0, %select.unfold.i.preheader ] ; 2 uses
  %i.p = xor i64 %index237, -1
  %i.q = add i64 %i.p, %i.g                       ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -28
  %wide.load238 = load <4 x i32>, ptr %i.s, align 4, !tbaa !8
  %wide.load239 = load <4 x i32>, ptr %i.t, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  store <4 x i32> %wide.load238, ptr %i.v, align 4, !tbaa !8
  store <4 x i32> %wide.load239, ptr %i.w, align 4, !tbaa !8
  %index.next240 = add nuw i64 %index237, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next240, %n.vec235
  br i1 %i.x, label %Kit_TruthCopy.exit, label %vector.body236, !llvm.loop !331

select.unfold.i:                                  ; preds = %select.unfold.i.prol.loopexit, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %select.unfold.i ], [ %indvars.iv.i.unr, %select.unfold.i.prol.loopexit ] ; 5 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !8
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @Kit_TruthMinCofSuppOverlap.uCofactor, i64 %indvars.iv.next.i.2
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.3
end_hunk_2
