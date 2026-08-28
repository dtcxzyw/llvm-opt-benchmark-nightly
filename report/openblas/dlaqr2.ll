Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr2?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dlaqr2_:bb.a
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.fh = mul nsw i64 %indvars.iv.epil, %i.do
  %i.fi = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.epil
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %i.fk = getelementptr [8 x i8], ptr %i.fj, i64 %i.fh
  store <2 x double> zeroinitializer, ptr %i.fk, align 8, !tbaa !9
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.epil, !llvm.loop !13

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph.epil, %._crit_edge
  %i.fl = add nsw i32 %i.du, -2
  %i.fm = mul nsw i32 %i.fl, %i.ae
  %i.fn = add nsw i32 %i.fm, %i.du
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fo
  store double 0.000000e+00, ptr %i.fp, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread, %._crit_edge
  store i32 %i.du, ptr %12, align 4, !tbaa !8
  %i.fq = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %i.fr = add nsw i32 %i.fq, 1                    ; 2 uses
  store i32 %i.fr, ptr %i.g, align 4, !tbaa !8
  %.not631651.not = icmp slt i32 %i.fq, %i.du
  br i1 %.not631651.not, label %.lr.ph653, label %._crit_edge654.thread

._crit_edge654.thread:                            ; preds = %bb.m
  %i.fs = icmp eq i32 %i.du, 0
  %spec.select711 = select i1 %i.fs, double 0.000000e+00, double %.0599
  br label %.loopexit648.a

.lr.ph653:                                        ; preds = %bb.m
  %i.ft = add i32 %i.ae, 1                        ; 2 uses
  %i.fu = fcmp oge double %.0599, 0.000000e+00
  %i.fv = fneg double %.0599
  %i.fw = select i1 %i.fu, double %.0599, double %i.fv ; 2 uses
  %i.fx = insertelement <2 x double> poison, double %.0599, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph653, %bb.u
  %i.fz = phi i32 [ %i.fr, %.lr.ph653 ], [ %i.jg, %bb.u ] ; 2 uses
  %i.ga = phi i32 [ %i.du, %.lr.ph653 ], [ %.pr, %bb.u ] ; 8 uses
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gc = add nsw i32 %i.ga, -1
  %i.gd = mul nsw i32 %i.gc, %i.ae
  %i.ge = add nsw i32 %i.gd, %i.ga
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.gf
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !9 ; 4 uses
  %i.gi = fcmp oeq double %i.gh, 0.000000e+00
  br i1 %i.gi, label %.critedge, label %bb.r

.critedge:                                        ; preds = %bb.n, %bb.o
  %i.gj = mul i32 %i.ga, %i.ft
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.gk
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !9 ; 4 uses
  %i.gn = fcmp oge double %i.gm, 0.000000e+00
  %i.go = fneg double %i.gm
  %i.gp = select i1 %i.gn, double %i.gm, double %i.go
  %i.gq = fcmp oeq double %i.gm, 0.000000e+00
  %.0 = select i1 %i.gq, double %i.fw, double %i.gp
  %i.gr = fmul double %i.bj, %.0                  ; 2 uses
  %i.gs = mul nsw i32 %i.ga, %i.ab
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr [8 x i8], ptr %i.ad, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 8
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !9
  %i.gx = fmul double %.0599, %i.gw
  %i.gy = call double @llvm.fabs.f64(double %i.gx)
  %i.gz = fcmp oge double %i.bo, %i.gr
  %i.ha = select i1 %i.gz, double %i.bo, double %i.gr
  %i.hb = fcmp ugt double %i.gy, %i.ha
  br i1 %i.hb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.hc = add nsw i32 %i.ga, -1
  store i32 %i.hc, ptr %12, align 4, !tbaa !8
  br label %bb.u

bb.q:                                             ; preds = %.critedge
  store i32 %i.ga, ptr %i.f, align 4, !tbaa !8
  call void @dtrexc_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.hd = load i32, ptr %i.g, align 4, !tbaa !8
  %i.he = add nsw i32 %i.hd, 1                    ; 2 uses
  store i32 %i.he, ptr %i.g, align 4, !tbaa !8
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.hf = mul i32 %i.ga, %i.ft
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hg
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !9 ; 3 uses
  %i.hj = fcmp oge double %i.hi, 0.000000e+00
  %i.hk = fneg double %i.hi
  %i.hl = select i1 %i.hj, double %i.hi, double %i.hk
  %i.hm = fcmp oge double %i.gh, 0.000000e+00
  %i.hn = fneg double %i.gh
  %i.ho = select i1 %i.hm, double %i.gh, double %i.hn
  %i.hp = call double @sqrt(double noundef %i.ho) #6
  %i.hq = load i32, ptr %12, align 4, !tbaa !8    ; 2 uses
  %i.hr = add nsw i32 %i.hq, -1
  %i.hs = mul nsw i32 %i.hq, %i.ae
  %i.ht = add nsw i32 %i.hr, %i.hs
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !9 ; 3 uses
  %i.hx = fcmp oge double %i.hw, 0.000000e+00
  %i.hy = fneg double %i.hw
  %i.hz = select i1 %i.hx, double %i.hw, double %i.hy
  %i.ia = call double @sqrt(double noundef %i.hz) #6
  %i.ib = call double @llvm.fmuladd.f64(double %i.hp, double %i.ia, double %i.hl) ; 2 uses
  %i.ic = fcmp oeq double %i.ib, 0.000000e+00
  %.1 = select i1 %i.ic, double %i.fw, double %i.ib
  %i.id = load i32, ptr %12, align 4, !tbaa !8    ; 4 uses
  %i.ie = mul nsw i32 %i.id, %i.ab
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [8 x i8], ptr %i.ad, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !9
  %i.ij = add nsw i32 %i.id, -1
  %i.ik = mul nsw i32 %i.ij, %i.ab
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [8 x i8], ptr %i.ad, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %i.io = load double, ptr %i.in, align 8, !tbaa !9
  %i.ip = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.io, i64 1
  %i.ir = fmul <2 x double> %i.fy, %i.iq          ; 3 uses
  %i.is = fcmp oge <2 x double> %i.ir, zeroinitializer
  %i.it = fneg <2 x double> %i.ir
  %i.iu = select <2 x i1> %i.is, <2 x double> %i.ir, <2 x double> %i.it ; 2 uses
  %i.iv = fmul double %i.bj, %.1                  ; 2 uses
  %i.iw = extractelement <2 x double> %i.iu, i64 0 ; 2 uses
  %i.ix = extractelement <2 x double> %i.iu, i64 1 ; 2 uses
  %i.iy = fcmp oge double %i.iw, %i.ix
  %i.iz = select i1 %i.iy, double %i.iw, double %i.ix
  %i.ja = fcmp oge double %i.bo, %i.iv
  %i.jb = select i1 %i.ja, double %i.bo, double %i.iv
  %i.jc = fcmp ugt double %i.iz, %i.jb
  br i1 %i.jc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jd = add nsw i32 %i.id, -2
  store i32 %i.jd, ptr %12, align 4, !tbaa !8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store i32 %i.id, ptr %i.f, align 4, !tbaa !8
  call void @dtrexc_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.je = load i32, ptr %i.g, align 4, !tbaa !8
  %i.jf = add nsw i32 %i.je, 2                    ; 2 uses
  store i32 %i.jf, ptr %i.g, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.p, %bb.q
  %i.jg = phi i32 [ %i.fz, %bb.s ], [ %i.jf, %bb.t ], [ %i.fz, %bb.p ], [ %i.he, %bb.q ] ; 2 uses
  %.pr = load i32, ptr %12, align 4, !tbaa !8     ; 5 uses
  %.not631 = icmp sgt i32 %i.jg, %.pr
  br i1 %.not631, label %._crit_edge654, label %bb.n

._crit_edge654:                                   ; preds = %bb.u
  %.pre = load i32, ptr %i.o, align 4, !tbaa !8   ; 2 uses
  %i.jh = icmp eq i32 %.pr, 0
  %spec.select = select i1 %i.jh, double 0.000000e+00, double %.0599 ; 2 uses
  %i.ji = icmp slt i32 %.pr, %.pre
  br i1 %i.ji, label %bb.v, label %.loopexit648.a

bb.v:                                             ; preds = %._crit_edge654
  %i.jj = add nsw i32 %.pr, 1
  %i.jk = add i32 %i.ae, 1                        ; 2 uses
  br label %bb.w

.loopexit647:                                     ; preds = %bb.ah, %bb.ai
  %i.jl = icmp eq i32 %.2, 0
  br i1 %i.jl, label %bb.w, label %.loopexit648.loopexit

bb.w:                                             ; preds = %bb.v, %.loopexit647
  %.0605663 = phi i32 [ %i.jj, %bb.v ], [ %.2607, %.loopexit647 ] ; 3 uses
  %i.jm = add nsw i32 %.0605663, -1               ; 3 uses
  %i.jn = load i32, ptr %i.h, align 4, !tbaa !8   ; 3 uses
  %i.jo = add nsw i32 %i.jn, 1                    ; 3 uses
  %i.jp = load i32, ptr %12, align 4, !tbaa !8
  %i.jq = icmp eq i32 %i.jo, %i.jp
  %i.jr = add nsw i32 %i.jn, 2                    ; 3 uses
  br i1 %i.jq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.js = mul nsw i32 %i.jo, %i.ae
  %i.jt = add nsw i32 %i.js, %i.jr
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !9
  %i.jx = fcmp oeq double %i.jw, 0.000000e+00
  %26 = add nsw i32 %i.jn, 3
  %spec.select645 = select i1 %i.jx, i32 %i.jr, i32 %26
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.0601 = phi i32 [ %spec.select645, %bb.x ], [ %i.jr, %bb.w ] ; 2 uses
  %.not633.not655 = icmp slt i32 %.0601, %.0605663
  br i1 %.not633.not655, label %.lr.ph660.preheader, label %.loopexit648.loopexit

.lr.ph660.preheader:                              ; preds = %bb.y
  %i.jy = mul i32 %i.jm, %i.jk
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.jz
  br label %.lr.ph660

.lr.ph660:                                        ; preds = %.lr.ph660.preheader, %bb.ai
  %.1597658 = phi i32 [ %.2, %bb.ai ], [ 1, %.lr.ph660.preheader ]
  %.1602657 = phi i32 [ %.2603, %bb.ai ], [ %.0601, %.lr.ph660.preheader ] ; 9 uses
  %.1606656 = phi i32 [ %.2607, %bb.ai ], [ %i.jo, %.lr.ph660.preheader ] ; 6 uses
  %i.kb = add nsw i32 %.1606656, 1                ; 3 uses
  %i.kc = icmp eq i32 %.1602657, %i.kb
  br i1 %i.kc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph660
  %i.kd = mul i32 %.1606656, %i.jk
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !9 ; 3 uses
  %i.kh = fcmp oge double %i.kg, 0.000000e+00
  %i.ki = fneg double %i.kg
  %i.kj = select i1 %i.kh, double %i.kg, double %i.ki
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph660
  %i.kk = mul nsw i32 %.1606656, %i.ae            ; 2 uses
  %i.kl = add nsw i32 %i.kk, %.1606656
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.km
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !9 ; 3 uses
  %i.kp = fcmp oge double %i.ko, 0.000000e+00
  %i.kq = fneg double %i.ko
  %i.kr = select i1 %i.kp, double %i.ko, double %i.kq
  %i.ks = add nsw i32 %i.kb, %i.kk
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !9 ; 3 uses
  %i.kw = fcmp oge double %i.kv, 0.000000e+00
  %i.kx = fneg double %i.kv
  %i.ky = select i1 %i.kw, double %i.kv, double %i.kx
  %i.kz = call double @sqrt(double noundef %i.ky) #6
  %i.la = mul nsw i32 %i.kb, %i.ae
  %i.lb = add nsw i32 %i.la, %.1606656
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !9 ; 3 uses
  %i.lf = fcmp oge double %i.le, 0.000000e+00
  %i.lg = fneg double %i.le
  %i.lh = select i1 %i.lf, double %i.le, double %i.lg
  %i.li = call double @sqrt(double noundef %i.lh) #6
  %i.lj = call double @llvm.fmuladd.f64(double %i.kz, double %i.li, double %i.kr)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0594 = phi double [ %i.kj, %bb.z ], [ %i.lj, %bb.aa ]
  %i.lk = icmp eq i32 %.1602657, %i.jm
  br i1 %i.lk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ll = load double, ptr %i.ka, align 8, !tbaa !9 ; 3 uses
  %i.lm = fcmp oge double %i.ll, 0.000000e+00
  %i.ln = fneg double %i.ll
  %i.lo = select i1 %i.lm, double %i.ll, double %i.ln
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.lp = add nsw i32 %.1602657, 1                ; 2 uses
  %i.lq = mul nsw i32 %.1602657, %i.ae            ; 2 uses
  %i.lr = add nsw i32 %i.lp, %i.lq
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !9 ; 4 uses
  %i.lv = fcmp oeq double %i.lu, 0.000000e+00
  %i.lw = add nsw i32 %i.lq, %.1602657
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.lx
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !9 ; 3 uses
  %i.ma = fcmp oge double %i.lz, 0.000000e+00
  %i.mb = fneg double %i.lz
  %i.mc = select i1 %i.ma, double %i.lz, double %i.mb ; 2 uses
  br i1 %i.lv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.md = fcmp oge double %i.lu, 0.000000e+00
  %i.me = fneg double %i.lu
  %i.mf = select i1 %i.md, double %i.lu, double %i.me
  %i.mg = call double @sqrt(double noundef %i.mf) #6
  %i.mh = mul nsw i32 %i.lp, %i.ae
  %i.mi = add nsw i32 %i.mh, %.1602657
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !9 ; 3 uses
  %i.mm = fcmp oge double %i.ml, 0.000000e+00
  %i.mn = fneg double %i.ml
  %i.mo = select i1 %i.mm, double %i.ml, double %i.mn
  %i.mp = call double @sqrt(double noundef %i.mo) #6
  %i.mq = call double @llvm.fmuladd.f64(double %i.mg, double %i.mp, double %i.mc)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %.0593 = phi double [ %i.lo, %bb.ac ], [ %i.mq, %bb.ae ], [ %i.mc, %bb.ad ]
  %i.mr = fcmp ult double %.0594, %.0593
  br i1 %i.mr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %.1606656, ptr %i.f, align 4, !tbaa !8
  store i32 %.1602657, ptr %i.g, align 4, !tbaa !8
  call void @dtrexc_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.ms = load i32, ptr %i.e, align 4, !tbaa !8
  %i.mt = icmp eq i32 %i.ms, 0
  %i.mu = load i32, ptr %i.g, align 4
  %spec.select645.a = select i1 %i.mt, i32 %i.mu, i32 %.1602657
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.2607 = phi i32 [ %.1602657, %bb.af ], [ %spec.select645.a, %bb.ag ] ; 6 uses
  %.2 = phi i32 [ %.1597658, %bb.af ], [ 0, %bb.ag ] ; 2 uses
  %i.mv = icmp eq i32 %.2607, %i.jm
  br i1 %i.mv, label %.loopexit647, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mw = add nsw i32 %.2607, 1                   ; 2 uses
  %i.mx = mul nsw i32 %.2607, %i.ae
  %i.my = add nsw i32 %i.mw, %i.mx
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.mz
  %i.nb = load double, ptr %i.na, align 8, !tbaa !9
  %i.nc = fcmp oeq double %i.nb, 0.000000e+00
  %i.nd = add nsw i32 %.2607, 2
  %.2603 = select i1 %i.nc, i32 %i.mw, i32 %i.nd  ; 2 uses
  %.not633.not = icmp slt i32 %.2603, %.0605663
  br i1 %.not633.not, label %.lr.ph660, label %.loopexit647

.loopexit648.loopexit:                            ; preds = %bb.y, %.loopexit647
  %.pre684 = load i32, ptr %i.o, align 4, !tbaa !8
  br label %.loopexit648.a

.loopexit648.a:                                   ; preds = %._crit_edge654.thread, %.loopexit648.loopexit, %._crit_edge654
  %spec.select712 = phi double [ %spec.select, %.loopexit648.loopexit ], [ %spec.select, %._crit_edge654 ], [ %spec.select711, %._crit_edge654.thread ] ; 3 uses
  %i.ne = phi i32 [ %.pre684, %.loopexit648.loopexit ], [ %.pre, %._crit_edge654 ], [ %i.du, %._crit_edge654.thread ] ; 3 uses
  %i.nf = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %.not634.not664 = icmp sgt i32 %i.ne, %i.nf
  br i1 %.not634.not664, label %.lr.ph667, label %._crit_edge668

.lr.ph667:                                        ; preds = %.loopexit648.a
  %i.ng = add i32 %i.bv, -1
  %i.nh = add i32 %i.ae, 1                        ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph667, %bb.ao
  %i.ni = phi i32 [ %i.nf, %.lr.ph667 ], [ %i.pf, %bb.ao ] ; 3 uses
  %.3665 = phi i32 [ %i.ne, %.lr.ph667 ], [ %.4, %bb.ao ] ; 13 uses
  %i.nj = add nsw i32 %i.ni, 1
  %i.nk = icmp eq i32 %.3665, %i.nj
  br i1 %i.nk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nl = mul i32 %.3665, %i.nh
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.nm
  %i.no = load double, ptr %i.nn, align 8, !tbaa !9
  %i.np = add i32 %.3665, %i.bv
  %i.nq = sext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.nq
  store double %i.no, ptr %i.nr, align 8, !tbaa !9
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.nq
  store double 0.000000e+00, ptr %i.ns, align 8, !tbaa !9
  %i.nt = add nsw i32 %.3665, -1
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.nu = add nsw i32 %.3665, -1                  ; 4 uses
  %i.nv = mul nsw i32 %i.nu, %i.ae                ; 2 uses
  %i.nw = add nsw i32 %i.nv, %.3665
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.nx
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !9 ; 2 uses
  %i.oa = fcmp oeq double %i.nz, 0.000000e+00
  br i1 %i.oa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ob = mul i32 %.3665, %i.nh
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.oc
  %i.oe = load double, ptr %i.od, align 8, !tbaa !9
  %i.of = add i32 %.3665, %i.bv
  %i.og = sext i32 %i.of to i64                   ; 2 uses
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.og
  store double %i.oe, ptr %i.oh, align 8, !tbaa !9
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.og
  store double 0.000000e+00, ptr %i.oi, align 8, !tbaa !9
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.oj = add nsw i32 %i.nv, %i.nu
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ok
end_hunk_0
