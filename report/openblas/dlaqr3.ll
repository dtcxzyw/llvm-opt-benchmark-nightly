Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr3?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dlaqr3_:bb.a
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.fn = mul nsw i64 %indvars.iv.epil, %i.dr
  %i.fo = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.epil
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %i.fq = getelementptr [8 x i8], ptr %i.fp, i64 %i.fn
  store <2 x double> zeroinitializer, ptr %i.fq, align 8, !tbaa !9
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.epil, !llvm.loop !13

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph.epil, %._crit_edge
  %i.fr = add nsw i32 %i.ea, -2
  %i.fs = mul nsw i32 %i.fr, %i.ae
  %i.ft = add nsw i32 %i.fs, %i.ea
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fu
  store double 0.000000e+00, ptr %i.fv, align 8, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread, %._crit_edge
  store i32 %i.ea, ptr %12, align 4, !tbaa !8
  %i.fw = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %i.fx = add nsw i32 %i.fw, 1                    ; 2 uses
  store i32 %i.fx, ptr %i.g, align 4, !tbaa !8
  %.not657677.not = icmp slt i32 %i.fw, %i.ea
  br i1 %.not657677.not, label %.lr.ph679, label %._crit_edge680.thread

._crit_edge680.thread:                            ; preds = %bb.p
  %i.fy = icmp eq i32 %i.ea, 0
  %spec.select737 = select i1 %i.fy, double 0.000000e+00, double %.0625
  br label %.loopexit674.a

.lr.ph679:                                        ; preds = %bb.p
  %i.fz = add i32 %i.ae, 1                        ; 2 uses
  %i.ga = fcmp oge double %.0625, 0.000000e+00
  %i.gb = fneg double %.0625
  %i.gc = select i1 %i.ga, double %.0625, double %i.gb ; 2 uses
  %i.gd = insertelement <2 x double> poison, double %.0625, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph679, %bb.x
  %i.gf = phi i32 [ %i.fx, %.lr.ph679 ], [ %i.jm, %bb.x ] ; 2 uses
  %i.gg = phi i32 [ %i.ea, %.lr.ph679 ], [ %.pr, %bb.x ] ; 8 uses
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = add nsw i32 %i.gg, -1
  %i.gj = mul nsw i32 %i.gi, %i.ae
  %i.gk = add nsw i32 %i.gj, %i.gg
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9 ; 4 uses
  %i.go = fcmp oeq double %i.gn, 0.000000e+00
  br i1 %i.go, label %.critedge, label %bb.u

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.gp = mul i32 %i.gg, %i.fz
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !9 ; 4 uses
  %i.gt = fcmp oge double %i.gs, 0.000000e+00
  %i.gu = fneg double %i.gs
  %i.gv = select i1 %i.gt, double %i.gs, double %i.gu
  %i.gw = fcmp oeq double %i.gs, 0.000000e+00
  %.0 = select i1 %i.gw, double %i.gc, double %i.gv
  %i.gx = fmul double %i.bm, %.0                  ; 2 uses
  %i.gy = mul nsw i32 %i.gg, %i.ab
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr [8 x i8], ptr %i.ad, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !9
  %i.hd = fmul double %.0625, %i.hc
  %i.he = call double @llvm.fabs.f64(double %i.hd)
  %i.hf = fcmp oge double %i.br, %i.gx
  %i.hg = select i1 %i.hf, double %i.br, double %i.gx
  %i.hh = fcmp ugt double %i.he, %i.hg
  br i1 %i.hh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.hi = add nsw i32 %i.gg, -1
  store i32 %i.hi, ptr %12, align 4, !tbaa !8
  br label %bb.x

bb.t:                                             ; preds = %.critedge
  store i32 %i.gg, ptr %i.f, align 4, !tbaa !8
  call void @dtrexc_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.hj = load i32, ptr %i.g, align 4, !tbaa !8
  %i.hk = add nsw i32 %i.hj, 1                    ; 2 uses
  store i32 %i.hk, ptr %i.g, align 4, !tbaa !8
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.hl = mul i32 %i.gg, %i.fz
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !9 ; 3 uses
  %i.hp = fcmp oge double %i.ho, 0.000000e+00
  %i.hq = fneg double %i.ho
  %i.hr = select i1 %i.hp, double %i.ho, double %i.hq
  %i.hs = fcmp oge double %i.gn, 0.000000e+00
  %i.ht = fneg double %i.gn
  %i.hu = select i1 %i.hs, double %i.gn, double %i.ht
  %i.hv = call double @sqrt(double noundef %i.hu) #6
  %i.hw = load i32, ptr %12, align 4, !tbaa !8    ; 2 uses
  %i.hx = add nsw i32 %i.hw, -1
  %i.hy = mul nsw i32 %i.hw, %i.ae
  %i.hz = add nsw i32 %i.hx, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !9 ; 3 uses
  %i.id = fcmp oge double %i.ic, 0.000000e+00
  %i.ie = fneg double %i.ic
  %i.if = select i1 %i.id, double %i.ic, double %i.ie
  %i.ig = call double @sqrt(double noundef %i.if) #6
  %i.ih = call double @llvm.fmuladd.f64(double %i.hv, double %i.ig, double %i.hr) ; 2 uses
  %i.ii = fcmp oeq double %i.ih, 0.000000e+00
  %.1 = select i1 %i.ii, double %i.gc, double %i.ih
  %i.ij = load i32, ptr %12, align 4, !tbaa !8    ; 4 uses
  %i.ik = mul nsw i32 %i.ij, %i.ab
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [8 x i8], ptr %i.ad, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %i.io = load double, ptr %i.in, align 8, !tbaa !9
  %i.ip = add nsw i32 %i.ij, -1
  %i.iq = mul nsw i32 %i.ip, %i.ab
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr [8 x i8], ptr %i.ad, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 8
  %i.iu = load double, ptr %i.it, align 8, !tbaa !9
  %i.iv = insertelement <2 x double> poison, double %i.io, i64 0
  %i.iw = insertelement <2 x double> %i.iv, double %i.iu, i64 1
  %i.ix = fmul <2 x double> %i.ge, %i.iw          ; 3 uses
  %i.iy = fcmp oge <2 x double> %i.ix, zeroinitializer
  %i.iz = fneg <2 x double> %i.ix
  %i.ja = select <2 x i1> %i.iy, <2 x double> %i.ix, <2 x double> %i.iz ; 2 uses
  %i.jb = fmul double %i.bm, %.1                  ; 2 uses
  %i.jc = extractelement <2 x double> %i.ja, i64 0 ; 2 uses
  %i.jd = extractelement <2 x double> %i.ja, i64 1 ; 2 uses
  %i.je = fcmp oge double %i.jc, %i.jd
  %i.jf = select i1 %i.je, double %i.jc, double %i.jd
  %i.jg = fcmp oge double %i.br, %i.jb
  %i.jh = select i1 %i.jg, double %i.br, double %i.jb
  %i.ji = fcmp ugt double %i.jf, %i.jh
  br i1 %i.ji, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jj = add nsw i32 %i.ij, -2
  store i32 %i.jj, ptr %12, align 4, !tbaa !8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i32 %i.ij, ptr %i.f, align 4, !tbaa !8
  call void @dtrexc_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.jk = load i32, ptr %i.g, align 4, !tbaa !8
  %i.jl = add nsw i32 %i.jk, 2                    ; 2 uses
  store i32 %i.jl, ptr %i.g, align 4, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s, %bb.t
  %i.jm = phi i32 [ %i.gf, %bb.v ], [ %i.jl, %bb.w ], [ %i.gf, %bb.s ], [ %i.hk, %bb.t ] ; 2 uses
  %.pr = load i32, ptr %12, align 4, !tbaa !8     ; 5 uses
  %.not657 = icmp sgt i32 %i.jm, %.pr
  br i1 %.not657, label %._crit_edge680, label %bb.q

._crit_edge680:                                   ; preds = %bb.x
  %.pre = load i32, ptr %i.o, align 4, !tbaa !8   ; 2 uses
  %i.jn = icmp eq i32 %.pr, 0
  %spec.select = select i1 %i.jn, double 0.000000e+00, double %.0625 ; 2 uses
  %i.jo = icmp slt i32 %.pr, %.pre
  br i1 %i.jo, label %bb.y, label %.loopexit674.a

bb.y:                                             ; preds = %._crit_edge680
  %i.jp = add nsw i32 %.pr, 1
  %i.jq = add i32 %i.ae, 1                        ; 2 uses
  br label %bb.z

.loopexit673:                                     ; preds = %bb.ak, %bb.al
  %i.jr = icmp eq i32 %.2, 0
  br i1 %i.jr, label %bb.z, label %.loopexit674.loopexit

bb.z:                                             ; preds = %bb.y, %.loopexit673
  %.0631689 = phi i32 [ %i.jp, %bb.y ], [ %.2633, %.loopexit673 ] ; 3 uses
  %i.js = add nsw i32 %.0631689, -1               ; 3 uses
  %i.jt = load i32, ptr %i.h, align 4, !tbaa !8   ; 3 uses
  %i.ju = add nsw i32 %i.jt, 1                    ; 3 uses
  %i.jv = load i32, ptr %12, align 4, !tbaa !8
  %i.jw = icmp eq i32 %i.ju, %i.jv
  %i.jx = add nsw i32 %i.jt, 2                    ; 3 uses
  br i1 %i.jw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jy = mul nsw i32 %i.ju, %i.ae
  %i.jz = add nsw i32 %i.jy, %i.jx
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ka
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !9
  %i.kd = fcmp oeq double %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.ab, label %26

26:                                               ; preds = %bb.aa
  %27 = add nsw i32 %i.jt, 3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %26
  %.0627 = phi i32 [ %i.jx, %bb.aa ], [ %27, %26 ], [ %i.jx, %bb.z ] ; 2 uses
  %.not659.not681 = icmp slt i32 %.0627, %.0631689
  br i1 %.not659.not681, label %.lr.ph686.preheader, label %.loopexit674.loopexit

.lr.ph686.preheader:                              ; preds = %bb.ab
  %i.ke = mul i32 %i.js, %i.jq
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.kf
  br label %.lr.ph686

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %bb.al
  %.1623684 = phi i32 [ %.2, %bb.al ], [ 1, %.lr.ph686.preheader ]
  %.1628683 = phi i32 [ %.2629, %bb.al ], [ %.0627, %.lr.ph686.preheader ] ; 9 uses
  %.1632682 = phi i32 [ %.2633, %bb.al ], [ %i.ju, %.lr.ph686.preheader ] ; 6 uses
  %i.kh = add nsw i32 %.1632682, 1                ; 3 uses
  %i.ki = icmp eq i32 %.1628683, %i.kh
  br i1 %i.ki, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph686
  %i.kj = mul i32 %.1632682, %i.jq
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !9 ; 3 uses
  %i.kn = fcmp oge double %i.km, 0.000000e+00
  %i.ko = fneg double %i.km
  %i.kp = select i1 %i.kn, double %i.km, double %i.ko
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph686
  %i.kq = mul nsw i32 %.1632682, %i.ae            ; 2 uses
  %i.kr = add nsw i32 %i.kq, %.1632682
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !9 ; 3 uses
  %i.kv = fcmp oge double %i.ku, 0.000000e+00
  %i.kw = fneg double %i.ku
  %i.kx = select i1 %i.kv, double %i.ku, double %i.kw
  %i.ky = add nsw i32 %i.kh, %i.kq
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !9 ; 3 uses
  %i.lc = fcmp oge double %i.lb, 0.000000e+00
  %i.ld = fneg double %i.lb
  %i.le = select i1 %i.lc, double %i.lb, double %i.ld
  %i.lf = call double @sqrt(double noundef %i.le) #6
  %i.lg = mul nsw i32 %i.kh, %i.ae
  %i.lh = add nsw i32 %i.lg, %.1632682
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !9 ; 3 uses
  %i.ll = fcmp oge double %i.lk, 0.000000e+00
  %i.lm = fneg double %i.lk
  %i.ln = select i1 %i.ll, double %i.lk, double %i.lm
  %i.lo = call double @sqrt(double noundef %i.ln) #6
  %i.lp = call double @llvm.fmuladd.f64(double %i.lf, double %i.lo, double %i.kx)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0620 = phi double [ %i.kp, %bb.ac ], [ %i.lp, %bb.ad ]
  %i.lq = icmp eq i32 %.1628683, %i.js
  br i1 %i.lq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lr = load double, ptr %i.kg, align 8, !tbaa !9 ; 3 uses
  %i.ls = fcmp oge double %i.lr, 0.000000e+00
  %i.lt = fneg double %i.lr
  %i.lu = select i1 %i.ls, double %i.lr, double %i.lt
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.lv = add nsw i32 %.1628683, 1                ; 2 uses
  %i.lw = mul nsw i32 %.1628683, %i.ae            ; 2 uses
  %i.lx = add nsw i32 %i.lv, %i.lw
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !9 ; 4 uses
  %i.mb = fcmp oeq double %i.ma, 0.000000e+00
  %i.mc = add nsw i32 %i.lw, %.1628683
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !9 ; 3 uses
  %i.mg = fcmp oge double %i.mf, 0.000000e+00
  %i.mh = fneg double %i.mf
  %i.mi = select i1 %i.mg, double %i.mf, double %i.mh ; 2 uses
  br i1 %i.mb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mj = fcmp oge double %i.ma, 0.000000e+00
  %i.mk = fneg double %i.ma
  %i.ml = select i1 %i.mj, double %i.ma, double %i.mk
  %i.mm = call double @sqrt(double noundef %i.ml) #6
  %i.mn = mul nsw i32 %i.lv, %i.ae
  %i.mo = add nsw i32 %i.mn, %.1628683
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !9 ; 3 uses
  %i.ms = fcmp oge double %i.mr, 0.000000e+00
  %i.mt = fneg double %i.mr
  %i.mu = select i1 %i.ms, double %i.mr, double %i.mt
  %i.mv = call double @sqrt(double noundef %i.mu) #6
  %i.mw = call double @llvm.fmuladd.f64(double %i.mm, double %i.mv, double %i.mi)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.0619 = phi double [ %i.lu, %bb.af ], [ %i.mw, %bb.ah ], [ %i.mi, %bb.ag ]
  %i.mx = fcmp ult double %.0620, %.0619
  br i1 %i.mx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %.1632682, ptr %i.f, align 4, !tbaa !8
  store i32 %.1628683, ptr %i.g, align 4, !tbaa !8
  call void @dtrexc_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.my = load i32, ptr %i.e, align 4, !tbaa !8
  %i.mz = icmp eq i32 %i.my, 0
  %i.na = load i32, ptr %i.g, align 4
  %spec.select671.a = select i1 %i.mz, i32 %i.na, i32 %.1628683
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2633 = phi i32 [ %.1628683, %bb.ai ], [ %spec.select671.a, %bb.aj ] ; 6 uses
  %.2 = phi i32 [ %.1623684, %bb.ai ], [ 0, %bb.aj ] ; 2 uses
  %i.nb = icmp eq i32 %.2633, %i.js
  br i1 %i.nb, label %.loopexit673, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nc = add nsw i32 %.2633, 1                   ; 2 uses
  %i.nd = mul nsw i32 %.2633, %i.ae
  %i.ne = add nsw i32 %i.nc, %i.nd
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.nf
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !9
  %i.ni = fcmp oeq double %i.nh, 0.000000e+00
  %i.nj = add nsw i32 %.2633, 2
  %.2629 = select i1 %i.ni, i32 %i.nc, i32 %i.nj  ; 2 uses
  %.not659.not = icmp slt i32 %.2629, %.0631689
  br i1 %.not659.not, label %.lr.ph686, label %.loopexit673

.loopexit674.loopexit:                            ; preds = %bb.ab, %.loopexit673
  %.pre710 = load i32, ptr %i.o, align 4, !tbaa !8
  br label %.loopexit674.a

.loopexit674.a:                                   ; preds = %._crit_edge680.thread, %.loopexit674.loopexit, %._crit_edge680
  %spec.select738 = phi double [ %spec.select, %.loopexit674.loopexit ], [ %spec.select, %._crit_edge680 ], [ %spec.select737, %._crit_edge680.thread ] ; 3 uses
  %i.nk = phi i32 [ %.pre710, %.loopexit674.loopexit ], [ %.pre, %._crit_edge680 ], [ %i.ea, %._crit_edge680.thread ] ; 3 uses
  %i.nl = load i32, ptr %i.h, align 4, !tbaa !8   ; 2 uses
  %.not660.not690 = icmp sgt i32 %i.nk, %i.nl
  br i1 %.not660.not690, label %.lr.ph693, label %._crit_edge694

.lr.ph693:                                        ; preds = %.loopexit674.a
  %i.nm = add i32 %i.by, -1
  %i.nn = add i32 %i.ae, 1                        ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph693, %bb.ar
  %i.no = phi i32 [ %i.nl, %.lr.ph693 ], [ %i.pl, %bb.ar ] ; 3 uses
  %.3691 = phi i32 [ %i.nk, %.lr.ph693 ], [ %.4, %bb.ar ] ; 13 uses
  %i.np = add nsw i32 %i.no, 1
  %i.nq = icmp eq i32 %.3691, %i.np
  br i1 %i.nq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nr = mul i32 %.3691, %i.nn
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ns
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !9
  %i.nv = add i32 %.3691, %i.by
  %i.nw = sext i32 %i.nv to i64                   ; 2 uses
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.nw
  store double %i.nu, ptr %i.nx, align 8, !tbaa !9
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.nw
  store double 0.000000e+00, ptr %i.ny, align 8, !tbaa !9
  %i.nz = add nsw i32 %.3691, -1
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.oa = add nsw i32 %.3691, -1                  ; 4 uses
  %i.ob = mul nsw i32 %i.oa, %i.ae                ; 2 uses
  %i.oc = add nsw i32 %i.ob, %.3691
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.od
  %i.of = load double, ptr %i.oe, align 8, !tbaa !9 ; 2 uses
  %i.og = fcmp oeq double %i.of, 0.000000e+00
  br i1 %i.og, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.oh = mul i32 %.3691, %i.nn
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.oi
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !9
  %i.ol = add i32 %.3691, %i.by
  %i.om = sext i32 %i.ol to i64                   ; 2 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.om
  store double %i.ok, ptr %i.on, align 8, !tbaa !9
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.om
  store double 0.000000e+00, ptr %i.oo, align 8, !tbaa !9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.op = add nsw i32 %i.ob, %i.oa
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.oq
end_hunk_0
