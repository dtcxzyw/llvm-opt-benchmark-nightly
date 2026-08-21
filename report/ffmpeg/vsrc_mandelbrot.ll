Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_mandelbrot?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@request_frame:bb.a
  %i.hf = load i32, ptr %gep706.i, align 4, !tbaa !44 ; 3 uses
  %i.hg = icmp ne i32 %i.hb, 0
  %i.hh = icmp ne i32 %i.he, 0                    ; 2 uses
  %or.cond3.i.i = select i1 %i.hg, i1 %i.hh, i1 false
  br i1 %or.cond3.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %gep724.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hc
  %i.hi = load i32, ptr %gep724.i, align 4, !tbaa !44
  %gep726.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %indvars.iv606.i
  %i.hj = load i32, ptr %gep726.i, align 4, !tbaa !44
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.hk = icmp ne i32 %i.hd, 0
  %i.hl = icmp ne i32 %i.hf, 0                    ; 2 uses
  %or.cond5.i.i = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond5.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %gep720.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.gk
  %i.hm = load i32, ptr %gep720.i, align 4, !tbaa !44
  %gep722.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.hc
  %i.hn = load i32, ptr %gep722.i, align 4, !tbaa !44
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  br i1 %i.hh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %gep714.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %indvars.iv606.i
  %i.ho = load i32, ptr %gep714.i, align 4, !tbaa !44
  %gep716.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hc
  %i.hp = load i32, ptr %gep716.i, align 4, !tbaa !44
  %gep718.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.gk
  %i.hq = load i32, ptr %gep718.i, align 4, !tbaa !44
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  br i1 %i.hl, label %bb.aa, label %interpol.exit.thread.thread.i

bb.aa:                                            ; preds = %bb.z
  %gep708.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.hc
  %i.hr = load i32, ptr %gep708.i, align 4, !tbaa !44
  %gep710.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hc
  %i.hs = load i32, ptr %gep710.i, align 4, !tbaa !44
  %gep712.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.gk
  %i.ht = load i32, ptr %gep712.i, align 4, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  %.0152.i.i = phi i32 [ %i.hb, %bb.u ], [ %i.hm, %bb.w ], [ %i.hp, %bb.y ], [ %i.hs, %bb.aa ] ; 3 uses
  %.0151.i.i = phi i32 [ %i.hi, %bb.u ], [ %i.hd, %bb.w ], [ %i.hq, %bb.y ], [ %i.ht, %bb.aa ] ; 3 uses
  %.0150.i.i = phi i32 [ %i.he, %bb.u ], [ %i.hn, %bb.w ], [ %i.he, %bb.y ], [ %i.hr, %bb.aa ] ; 3 uses
  %.0149.i.i = phi i32 [ %i.hj, %bb.u ], [ %i.hf, %bb.w ], [ %i.ho, %bb.y ], [ %i.hf, %bb.aa ] ; 3 uses
  %i.hu = and i32 %.0152.i.i, 255                 ; 2 uses
  %i.hv = and i32 %.0151.i.i, 255                 ; 2 uses
  %i.hw = add nuw nsw i32 %i.hv, %i.hu            ; 2 uses
  %i.hx = and i32 %.0150.i.i, 255                 ; 2 uses
  %i.hy = and i32 %.0149.i.i, 255                 ; 2 uses
  %i.hz = add nuw nsw i32 %i.hy, %i.hx            ; 2 uses
  %reass.sub.i.i = add nsw i32 %i.hw, -6
  %i.ia = sub nsw i32 %reass.sub.i.i, %i.hz
  %i.ib = icmp ult i32 %i.ia, -11
  br i1 %i.ib, label %interpol.exit.thread.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = sub nsw i32 %i.hu, %i.hv
  %i.id = tail call i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.ie = sub nsw i32 %i.hx, %i.hy
  %i.if = tail call i32 @llvm.abs.i32(i32 %i.ie, i1 true)
  %i.ig = add nuw nsw i32 %i.if, %i.id
  %i.ih = icmp samesign ugt i32 %i.ig, 20
  br i1 %i.ih, label %interpol.exit.thread.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ii = add nuw nsw i32 %i.hw, 2
  %i.ij = add nuw nsw i32 %i.ii, %i.hz
  %i.ik = lshr i32 %i.ij, 2
  %i.il = lshr i32 %.0152.i.i, 8
  %i.im = lshr i32 %.0151.i.i, 8
  %i.in = lshr i32 %.0150.i.i, 8
  %i.io = lshr i32 %.0149.i.i, 8
  %i.ip = and i32 %i.il, 255                      ; 2 uses
  %i.iq = and i32 %i.im, 255                      ; 2 uses
  %i.ir = add nuw nsw i32 %i.iq, %i.ip            ; 2 uses
  %i.is = and i32 %i.in, 255                      ; 2 uses
  %i.it = and i32 %i.io, 255                      ; 2 uses
  %i.iu = add nuw nsw i32 %i.it, %i.is            ; 2 uses
  %reass.sub.1.i.i = add nsw i32 %i.ir, -6
  %i.iv = sub nsw i32 %reass.sub.1.i.i, %i.iu
  %i.iw = icmp ult i32 %i.iv, -11
  br i1 %i.iw, label %interpol.exit.thread.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ix = sub nsw i32 %i.ip, %i.iq
  %i.iy = tail call i32 @llvm.abs.i32(i32 %i.ix, i1 true)
  %i.iz = sub nsw i32 %i.is, %i.it
  %i.ja = tail call i32 @llvm.abs.i32(i32 %i.iz, i1 true)
  %i.jb = add nuw nsw i32 %i.ja, %i.iy
  %i.jc = icmp samesign ugt i32 %i.jb, 20
  br i1 %i.jc, label %interpol.exit.thread.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jd = add nuw nsw i32 %i.ir, 2
  %i.je = add nuw nsw i32 %i.jd, %i.iu
  %i.jf = shl nuw nsw i32 %i.je, 6
  %i.jg = and i32 %i.jf, 130816
  %i.jh = lshr i32 %.0152.i.i, 16
  %i.ji = lshr i32 %.0151.i.i, 16
  %i.jj = lshr i32 %.0150.i.i, 16
  %i.jk = lshr i32 %.0149.i.i, 16
  %i.jl = and i32 %i.jh, 255                      ; 2 uses
  %i.jm = and i32 %i.ji, 255                      ; 2 uses
  %i.jn = add nuw nsw i32 %i.jm, %i.jl            ; 2 uses
  %i.jo = and i32 %i.jj, 255                      ; 2 uses
  %i.jp = and i32 %i.jk, 255                      ; 2 uses
  %i.jq = add nuw nsw i32 %i.jp, %i.jo            ; 2 uses
  %reass.sub.2.i.i = add nsw i32 %i.jn, -6
  %i.jr = sub nsw i32 %reass.sub.2.i.i, %i.jq
  %i.js = icmp ult i32 %i.jr, -11
  br i1 %i.js, label %interpol.exit.thread.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jt = sub nsw i32 %i.jl, %i.jm
  %i.ju = tail call i32 @llvm.abs.i32(i32 %i.jt, i1 true)
  %i.jv = sub nsw i32 %i.jo, %i.jp
  %i.jw = tail call i32 @llvm.abs.i32(i32 %i.jv, i1 true)
  %i.jx = add nuw nsw i32 %i.jw, %i.ju
  %i.jy = icmp samesign ugt i32 %i.jx, 20
  br i1 %i.jy, label %interpol.exit.thread.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jz = add nuw nsw i32 %i.jn, 2
  %i.ka = add nuw nsw i32 %i.jz, %i.jq
  %i.kb = shl nuw nsw i32 %i.ka, 14
  %i.kc = and i32 %i.kb, 16711680
  %i.kd = or i32 %i.ik, %i.jg
  %i.ke = or i32 %i.kd, %i.kc
  %i.kf = or i32 %i.ke, -16777216                 ; 2 uses
  store i32 %i.kf, ptr %gep.i, align 4, !tbaa !44
  %i.kg = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.kh = icmp slt i32 %.1457541.i, %i.kg
  br i1 %i.kh, label %.sink.split.i, label %bb.be

bb.ai:                                            ; preds = %bb.o
  %i.ki = load <2 x double>, ptr %i.bn, align 8, !tbaa !28
  %i.kj = fmul nsz <2 x double> %i.ki, %i.bw      ; 2 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 0
  %i.kl = tail call nsz double @llvm.cos.f64(double %i.kk)
  %i.km = tail call nsz double @llvm.fmuladd.f64(double %i.kl, double %i.gh, double %i.ga)
  %i.kn = extractelement <2 x double> %i.kj, i64 1
  %i.ko = tail call nsz double @llvm.sin.f64(double %i.kn)
  %i.kp = tail call nsz double @llvm.fmuladd.f64(double %i.ko, double %i.gh, double %i.cc)
  br label %interpol.exit.thread.i

interpol.exit.thread.i:                           ; preds = %bb.ai, %bb.q, %bb.p
  %.0388.i = phi nsz double [ %i.km, %bb.ai ], [ %i.ga, %bb.q ], [ %i.ga, %bb.p ] ; 2 uses
  %.0382.i = phi nsz double [ %i.kp, %bb.ai ], [ %i.cc, %bb.q ], [ %i.cc, %bb.p ] ; 2 uses
  %i.kq = icmp eq i64 %indvars.iv606.i, 0
  br i1 %i.kq, label %.thread.i, label %interpol.exit.thread.thread.i

interpol.exit.thread.thread.i:                    ; preds = %interpol.exit.thread.i, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.s, %bb.r
  %.0382646.i.a = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ad ], [ %i.cc, %bb.ae ], [ %i.cc, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.r ], [ %i.cc, %bb.z ], [ %i.cc, %bb.s ] ; 3 uses
  %.0388643.i.a = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %i.ga, %bb.ab ], [ %i.ga, %bb.ac ], [ %i.ga, %bb.ad ], [ %i.ga, %bb.ae ], [ %i.ga, %bb.af ], [ %i.ga, %bb.ag ], [ %i.ga, %bb.r ], [ %i.ga, %bb.z ], [ %i.ga, %bb.s ] ; 3 uses
  %i.kr = load i32, ptr %i.bo, align 4, !tbaa !66
  %.not413.i = icmp eq i32 %i.kr, 0
  br i1 %.not413.i, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %interpol.exit.thread.thread.i
  %i.ks = add nsw i64 %i.ft, %indvars.iv606.i
  %sext.i.a = shl i64 %i.ks, 32
  %i.kt = ashr exact i64 %sext.i.a, 30
  %i.ku = getelementptr inbounds i8, ptr %i.p, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !44
  %i.kw = icmp eq i32 %i.kv, -16777216
  br i1 %i.kw, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %bb.aj, %interpol.exit.thread.thread.i, %interpol.exit.thread.i
  %.0382645.i.a = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %.0382646.i.a, %interpol.exit.thread.thread.i ], [ %.0382646.i.a, %bb.aj ]
  %.0388642.i.a = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %.0388643.i.a, %interpol.exit.thread.thread.i ], [ %.0388643.i.a, %bb.aj ]
  %i.kx = tail call i32 @llvm.abs.i32(i32 %i.fy, i1 true)
  %i.ky = load i32, ptr %i.ai, align 4, !tbaa !27
  %.neg415.i = sdiv i32 %i.ky, -2
  %i.kz = add i32 %.neg415.i, %i.bz
  %i.la = tail call i32 @llvm.abs.i32(i32 %i.kz, i1 true)
  %i.lb = add nuw nsw i32 %i.la, %i.kx
  %i.lc = uitofp nneg i32 %i.lb to double
  %i.ld = fmul nsz double %i.af, %i.lc
  %i.le = sitofp nsz i32 %i.fv to double
  %i.lf = fdiv nsz double %i.ld, %i.le
  %i.lg = fptrunc nsz double %i.lf to float
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  %.0382644.i = phi double [ %.0382645.i.a, %.thread.i ], [ %.0382646.i.a, %bb.aj ] ; 2 uses
  %.0388641.i = phi double [ %.0388642.i.a, %.thread.i ], [ %.0388643.i.a, %bb.aj ] ; 2 uses
  %i.lh = phi i1 [ true, %.thread.i ], [ false, %bb.aj ] ; 4 uses
  %.0394.i = phi nsz float [ %i.lg, %.thread.i ], [ undef, %bb.aj ] ; 3 uses
  %i.li = load i32, ptr %i.bp, align 8, !tbaa !34 ; 6 uses
  %i.lj = icmp sgt i32 %i.li, 8
  br i1 %i.lj, label %.lr.ph.i, label %.thread472.thread.i

.lr.ph.i:                                         ; preds = %bb.ak
  %1 = add nsw i32 %i.li, -8
  %i.lk = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 9 uses
  %i.ll = fpext nsz float %.0394.i to double      ; 4 uses
  %sext.i = zext nneg i32 %1 to i64
  %i.lm = add nsw i32 %i.li, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv591.i = phi i32 [ %i.lm, %.lr.ph.i ], [ %indvars.iv.next592.i, %bb.az ] ; 2 uses
  %indvars.iv588.i = phi i32 [ 1, %.lr.ph.i ], [ %indvars.iv.next589.i, %bb.az ] ; 2 uses
  %indvars.iv581.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next582.i, %bb.az ] ; 11 uses
  %.1383506.i = phi double [ %.0382644.i, %.lr.ph.i ], [ %i.qe, %bb.az ] ; 3 uses
  %.1389505.i = phi double [ %.0388641.i, %.lr.ph.i ], [ %i.qg, %bb.az ] ; 3 uses
  %i.ln = fneg nsz double %.1383506.i
  %i.lo = fmul nsz double %.1383506.i, %i.ln
  %i.lp = tail call nsz double @llvm.fmuladd.f64(double %.1389505.i, double %.1389505.i, double %i.lo)
  %i.lq = fmul nsz double %.1389505.i, 2.000000e+00
  %i.lr = tail call nsz double @llvm.fmuladd.f64(double %i.lq, double %.1383506.i, double %i.cc) ; 4 uses
  %i.ls = getelementptr [16 x i8], ptr %i.lk, i64 %indvars.iv581.i ; 10 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store double %i.lr, ptr %i.lt, align 8, !tbaa !28
  %i.lu = fneg nsz double %i.lr
  %i.lv = fmul nsz double %i.lr, %i.lu
  %i.lw = fadd nsz double %i.ga, %i.lp            ; 2 uses
  store double %i.lw, ptr %i.ls, align 8, !tbaa !28
  %i.lx = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.ly = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lz = fmul nsz <2 x double> %i.ly, <double 1.000000e+00, double 2.000000e+00>
  %i.ma = insertelement <2 x double> %i.ly, double %i.lr, i64 1
  %i.mb = insertelement <2 x double> %i.fu, double %i.lv, i64 0
  %i.mc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.ma, <2 x double> %i.mb) ; 4 uses
  %i.md = extractelement <2 x double> %i.mc, i64 1 ; 4 uses
  %i.me = extractelement <2 x double> %i.mc, i64 0
  %i.mf = fadd nsz double %i.ga, %i.me            ; 5 uses
  br i1 %i.lh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mg = lshr exact i64 %indvars.iv581.i, 1
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.mg
  %i.mi = load <2 x double>, ptr %i.mh, align 8, !tbaa !28
  %i.mj = insertelement <2 x double> %i.mc, double %i.mf, i64 0
  %i.mk = fsub nsz <2 x double> %i.mi, %i.mj
  %i.ml = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mk) ; 2 uses
  %shift = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x double> %i.ml, %shift
  %i.mm = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.mn = fcmp nsz ugt double %i.mm, %i.ll
  br i1 %i.mn, label %bb.an, label %.thread472.thread.loopexit.split.loop.exit682.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store double %i.mf, ptr %i.mo, align 8, !tbaa !28
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store double %i.md, ptr %i.mp, align 8, !tbaa !28
  %i.mq = fneg nsz double %i.md
  %i.mr = fmul nsz double %i.md, %i.mq
  %i.ms = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mu = fmul nsz <2 x double> %i.mt, <double 1.000000e+00, double 2.000000e+00>
  %i.mv = insertelement <2 x double> %i.mc, double %i.mf, i64 0
  %i.mw = insertelement <2 x double> %i.fu, double %i.mr, i64 0
  %i.mx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.mv, <2 x double> %i.mw) ; 3 uses
  %i.my = extractelement <2 x double> %i.mx, i64 1 ; 3 uses
  %i.mz = extractelement <2 x double> %i.mx, i64 0
  %i.na = getelementptr i8, ptr %i.ls, i64 32
  %i.nb = getelementptr i8, ptr %i.ls, i64 40
  store double %i.my, ptr %i.nb, align 8, !tbaa !28
  %i.nc = or disjoint i64 %indvars.iv581.i, 3     ; 2 uses
  %i.nd = fneg nsz double %i.my
  %i.ne = fmul nsz double %i.my, %i.nd
  %i.nf = fadd nsz double %i.ga, %i.mz            ; 3 uses
  store double %i.nf, ptr %i.na, align 8, !tbaa !28
  %i.ng = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = fmul nsz <2 x double> %i.nh, <double 1.000000e+00, double 2.000000e+00>
  %i.nj = insertelement <2 x double> %i.mx, double %i.nf, i64 0
  %i.nk = insertelement <2 x double> %i.fu, double %i.ne, i64 0
  %i.nl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.nj, <2 x double> %i.nk) ; 4 uses
  %i.nm = extractelement <2 x double> %i.nl, i64 1 ; 4 uses
  %i.nn = extractelement <2 x double> %i.nl, i64 0
  %i.no = fadd nsz double %i.ga, %i.nn            ; 5 uses
  br i1 %i.lh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.np = lshr i64 %i.nc, 1
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.np
  %i.nr = load <2 x double>, ptr %i.nq, align 8, !tbaa !28
  %i.ns = insertelement <2 x double> %i.nl, double %i.no, i64 0
  %i.nt = fsub nsz <2 x double> %i.nr, %i.ns
  %i.nu = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nt) ; 2 uses
  %shift303 = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop304 = fadd nsz <2 x double> %i.nu, %shift303
  %i.nv = extractelement <2 x double> %foldExtExtBinop304, i64 0
  %i.nw = fcmp nsz ugt double %i.nv, %i.ll
  br i1 %i.nw, label %bb.ap, label %.thread472.thread.loopexit.split.loop.exit678.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.nc ; 2 uses
  store double %i.no, ptr %i.nx, align 8, !tbaa !28
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store double %i.nm, ptr %i.ny, align 8, !tbaa !28
  %i.nz = fneg nsz double %i.nm
  %i.oa = fmul nsz double %i.nm, %i.nz
  %i.ob = insertelement <2 x double> poison, double %i.no, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = fmul nsz <2 x double> %i.oc, <double 1.000000e+00, double 2.000000e+00>
  %i.oe = insertelement <2 x double> %i.nl, double %i.no, i64 0
  %i.of = insertelement <2 x double> %i.fu, double %i.oa, i64 0
  %i.og = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.oe, <2 x double> %i.of) ; 3 uses
  %i.oh = extractelement <2 x double> %i.og, i64 1 ; 3 uses
  %i.oi = extractelement <2 x double> %i.og, i64 0
  %i.oj = getelementptr i8, ptr %i.ls, i64 64
  %i.ok = getelementptr i8, ptr %i.ls, i64 72
  store double %i.oh, ptr %i.ok, align 8, !tbaa !28
  %i.ol = or disjoint i64 %indvars.iv581.i, 5     ; 3 uses
  %i.om = fneg nsz double %i.oh
  %i.on = fmul nsz double %i.oh, %i.om
  %i.oo = fadd nsz double %i.ga, %i.oi            ; 3 uses
  store double %i.oo, ptr %i.oj, align 8, !tbaa !28
  %i.op = insertelement <2 x double> poison, double %i.oo, i64 0
  %i.oq = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> zeroinitializer
  %i.or = fmul nsz <2 x double> %i.oq, <double 1.000000e+00, double 2.000000e+00>
  %i.os = insertelement <2 x double> %i.og, double %i.oo, i64 0
  %i.ot = insertelement <2 x double> %i.fu, double %i.on, i64 0
  %i.ou = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.os, <2 x double> %i.ot) ; 4 uses
  %i.ov = extractelement <2 x double> %i.ou, i64 1 ; 4 uses
  %i.ow = extractelement <2 x double> %i.ou, i64 0
  %i.ox = fadd nsz double %i.ga, %i.ow            ; 5 uses
  br i1 %i.lh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.oy = lshr i64 %i.ol, 1
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.oy
  %i.pa = load <2 x double>, ptr %i.oz, align 8, !tbaa !28
  %i.pb = insertelement <2 x double> %i.ou, double %i.ox, i64 0
  %i.pc = fsub nsz <2 x double> %i.pa, %i.pb
  %i.pd = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pc) ; 2 uses
  %shift306 = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop307 = fadd nsz <2 x double> %i.pd, %shift306
  %i.pe = extractelement <2 x double> %foldExtExtBinop307, i64 0
  %i.pf = fcmp nsz ugt double %i.pe, %i.ll
  br i1 %i.pf, label %bb.ar, label %.thread472.thread.loopexit.split.loop.exit674.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pg = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.ol ; 2 uses
  store double %i.ox, ptr %i.pg, align 8, !tbaa !28
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store double %i.ov, ptr %i.ph, align 8, !tbaa !28
  %i.pi = fneg nsz double %i.ov
  %i.pj = fmul nsz double %i.ov, %i.pi
  %i.pk = insertelement <2 x double> poison, double %i.ox, i64 0
  %i.pl = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pm = fmul nsz <2 x double> %i.pl, <double 1.000000e+00, double 2.000000e+00>
  %i.pn = insertelement <2 x double> %i.ou, double %i.ox, i64 0
  %i.po = insertelement <2 x double> %i.fu, double %i.pj, i64 0
  %i.pp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pm, <2 x double> %i.pn, <2 x double> %i.po) ; 3 uses
  %i.pq = extractelement <2 x double> %i.pp, i64 1 ; 3 uses
  %i.pr = extractelement <2 x double> %i.pp, i64 0
  %i.ps = getelementptr i8, ptr %i.ls, i64 96
  %i.pt = getelementptr i8, ptr %i.ls, i64 104
  store double %i.pq, ptr %i.pt, align 8, !tbaa !28
  %i.pu = or disjoint i64 %indvars.iv581.i, 7     ; 2 uses
  %i.pv = fneg nsz double %i.pq
  %i.pw = fmul nsz double %i.pq, %i.pv
  %i.px = fadd nsz double %i.ga, %i.pr            ; 3 uses
  store double %i.px, ptr %i.ps, align 8, !tbaa !28
  %i.py = insertelement <2 x double> poison, double %i.px, i64 0
  %i.pz = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qa = fmul nsz <2 x double> %i.pz, <double 1.000000e+00, double 2.000000e+00>
  %i.qb = insertelement <2 x double> %i.pp, double %i.px, i64 0
  %i.qc = insertelement <2 x double> %i.fu, double %i.pw, i64 0
  %i.qd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qa, <2 x double> %i.qb, <2 x double> %i.qc) ; 3 uses
  %i.qe = extractelement <2 x double> %i.qd, i64 1 ; 7 uses
  %i.qf = extractelement <2 x double> %i.qd, i64 0
  %i.qg = fadd nsz double %i.ga, %i.qf            ; 8 uses
  br i1 %i.lh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qh = lshr i64 %i.pu, 1
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.qh
  %i.qj = load <2 x double>, ptr %i.qi, align 8, !tbaa !28
  %i.qk = insertelement <2 x double> %i.qd, double %i.qg, i64 0
  %i.ql = fsub nsz <2 x double> %i.qj, %i.qk
  %i.qm = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ql) ; 2 uses
  %shift309 = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop310 = fadd nsz <2 x double> %i.qm, %shift309
  %i.qn = extractelement <2 x double> %foldExtExtBinop310, i64 0
  %i.qo = fcmp nsz ugt double %i.qn, %i.ll
  br i1 %i.qo, label %bb.at, label %.thread472.thread.loopexit.split.loop.exit.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %i.pu ; 2 uses
  store double %i.qg, ptr %i.qp, align 8, !tbaa !28
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store double %i.qe, ptr %i.qq, align 8, !tbaa !28
  %i.qr = fmul nsz double %i.qe, %i.qe
  %i.qs = tail call nsz double @llvm.fmuladd.f64(double %i.qg, double %i.qg, double %i.qr)
  %i.qt = load double, ptr %i.br, align 8, !tbaa !20 ; 4 uses
  %i.qu = fcmp nsz ogt double %i.qs, %i.qt
  br i1 %i.qu, label %.preheader487.i, label %bb.az

.preheader487.i:                                  ; preds = %bb.at
  %indvars584.le697.i = trunc i64 %indvars.iv581.i to i32 ; 2 uses
  %i.qv = icmp sgt i32 %i.li, %indvars584.le697.i
  br i1 %i.qv, label %.lr.ph531.preheader.i, label %.thread472.thread.i

.lr.ph531.preheader.i:                            ; preds = %.preheader487.i
  %wide.trip.count596.i = zext nneg i32 %i.li to i64
  br label %.lr.ph531.i

.lr.ph531.i:                                      ; preds = %bb.ay, %.lr.ph531.preheader.i
  %indvars.iv586.i = phi i64 [ %indvars.iv581.i, %.lr.ph531.preheader.i ], [ %indvars.iv.next587.i, %bb.ay ] ; 3 uses
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %indvars.iv586.i
  %i.qx = load <2 x double>, ptr %i.qw, align 8, !tbaa !28 ; 5 uses
  %i.qy = extractelement <2 x double> %i.qx, i64 1 ; 4 uses
  %i.qz = fmul nsz double %i.qy, %i.qy
  %i.ra = extractelement <2 x double> %i.qx, i64 0 ; 4 uses
  %i.rb = tail call nsz double @llvm.fmuladd.f64(double %i.ra, double %i.ra, double %i.qz) ; 2 uses
  %i.rc = fcmp nsz ogt double %i.rb, %i.qt
  br i1 %i.rc, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %.lr.ph531.i
  %i.rd = trunc nuw nsw i64 %indvars.iv586.i to i32 ; 5 uses
  %i.re = load i32, ptr %i.bs, align 8, !tbaa !67
  switch i32 %i.re, label %.thread472.thread.i [
    i32 0, label %bb.av
    i32 1, label %bb.aw
    i32 2, label %.critedge.i
    i32 3, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.rf = uitofp nneg i32 %i.rd to double         ; 2 uses
  %i.rg = uitofp nneg i32 %i.rd to float
  %i.rh = tail call nsz float @llvm.sin.f32(float %i.rg)
  %i.ri = fadd nnan nsz float %i.rh, 1.000000e+00
  %i.rj = fmul nnan nsz float %i.ri, 1.270000e+02
  %i.rk = tail call i64 @llvm.lrint.i64.f32(float %i.rj)
  %i.rl = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.rm = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rn = fdiv nsz <2 x double> %i.rm, <double 1.234000e+00, double 1.000000e+02> ; 2 uses
  %i.ro = extractelement <2 x double> %i.rn, i64 0
  %i.rp = fptrunc nsz double %i.ro to float
  %i.rq = tail call nsz float @llvm.sin.f32(float %i.rp)
  %i.rr = fadd nsz float %i.rq, 1.000000e+00
  %i.rs = fmul nsz float %i.rr, 1.270000e+02
  %i.rt = tail call i64 @llvm.lrint.i64.f32(float %i.rs)
  %i.ru = shl nsw i64 %i.rt, 16
  %i.rv = add nsw i64 %i.ru, %i.rk
  %i.rw = extractelement <2 x double> %i.rn, i64 1
  %i.rx = fptrunc nsz double %i.rw to float
  %i.ry = tail call nsz float @llvm.sin.f32(float %i.rx)
  %i.rz = fadd nsz float %i.ry, 1.000000e+00
  %i.sa = fmul nsz float %i.rz, 1.270000e+02
  %i.sb = tail call i64 @llvm.lrint.i64.f32(float %i.sa)
  %i.sc = shl nsw i64 %i.sb, 8
  %i.sd = add nsw i64 %i.rv, %i.sc
  %i.se = trunc i64 %i.sd to i32
  %i.sf = insertelement <2 x double> %i.qx, double %i.rf, i64 0
  br label %.thread472.i

bb.aw:                                            ; preds = %bb.au
  %i.sg = uitofp nneg i32 %i.rd to double
  %i.sh = tail call nsz double @llvm.log.f64(double %i.qt)
  %i.si = tail call nsz double @llvm.log.f64(double %i.rb)
  %i.sj = fdiv nsz double %i.sh, %i.si
  %i.sk = tail call nsz double @llvm.log2.f64(double %i.sj)
  %i.sl = fadd nsz double %i.sk, %i.sg            ; 4 uses
  %i.sm = fptrunc nsz double %i.sl to float
  %i.sn = tail call nsz float @llvm.sin.f32(float %i.sm)
  %i.so = fadd nsz float %i.sn, 1.000000e+00
  %i.sp = fmul nsz float %i.so, 1.270000e+02
  %i.sq = tail call i64 @llvm.lrint.i64.f32(float %i.sp)
  %i.sr = fdiv nsz double %i.sl, 1.234000e+00
  %i.ss = fptrunc nsz double %i.sr to float
  %i.st = tail call nsz float @llvm.sin.f32(float %i.ss)
  %i.su = fadd nsz float %i.st, 1.000000e+00
  %i.sv = fmul nsz float %i.su, 1.270000e+02
  %i.sw = tail call i64 @llvm.lrint.i64.f32(float %i.sv)
  %i.sx = shl nsw i64 %i.sw, 16
  %i.sy = add nsw i64 %i.sx, %i.sq
  %i.sz = fdiv nsz double %i.sl, 1.000000e+02
  %i.ta = fptrunc nsz double %i.sz to float
  %i.tb = tail call nsz float @llvm.sin.f32(float %i.ta)
  %i.tc = fadd nsz float %i.tb, 1.000000e+00
  %i.td = fmul nsz float %i.tc, 1.270000e+02
  %i.te = tail call i64 @llvm.lrint.i64.f32(float %i.td)
  %i.tf = shl nsw i64 %i.te, 8
  %i.tg = add nsw i64 %i.sy, %i.tf
  %i.th = trunc i64 %i.tg to i32
  %i.ti = insertelement <2 x double> %i.qx, double %i.sl, i64 0
  br label %.thread472.i

bb.ax:                                            ; preds = %bb.au
  %i.tj = insertelement <2 x double> poison, double %i.qt, i64 0
  %i.tk = shufflevector <2 x double> %i.tj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tl = fdiv nsz <2 x double> %i.qx, %i.tk      ; 2 uses
  %i.tm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> splat (double 1.280000e+02), <2 x double> splat (double 1.280000e+02)) ; 2 uses
  %i.tn = extractelement <2 x double> %i.tm, i64 0
  %i.to = fptosi double %i.tn to i32
  %i.tp = shl i32 %i.to, 8
  %i.tq = and i32 %i.tp, 65280
  %i.tr = extractelement <2 x double> %i.tm, i64 1
  %i.ts = fptosi double %i.tr to i32
  %i.tt = and i32 %i.ts, 255
  %i.tu = or disjoint i32 %i.tq, %i.tt
  br label %.thread472.i

bb.ay:                                            ; preds = %.lr.ph531.i
  %indvars.iv.next587.i = add nuw i64 %indvars.iv586.i, 1 ; 2 uses
  %exitcond597.not.i = icmp eq i64 %indvars.iv.next587.i, %wide.trip.count596.i
  br i1 %exitcond597.not.i, label %.thread472.loopexit.i, label %.lr.ph531.i, !llvm.loop !68

bb.az:                                            ; preds = %bb.at
  %indvars.iv.next582.i = add nuw nsw i64 %indvars.iv581.i, 8 ; 3 uses
  %2 = icmp samesign ult i64 %indvars.iv.next582.i, %sext.i
  %indvars.iv.next589.i = add i32 %indvars.iv588.i, 8
  %indvars.iv.next592.i = add i32 %indvars.iv591.i, -8
  br i1 %2, label %bb.al, label %.thread472.thread.loopexit.split.loop.exit687.i, !llvm.loop !69

.thread472.loopexit.i:                            ; preds = %bb.ay
  %i.tv = add i32 %indvars.iv588.i, %indvars.iv591.i
  br label %.thread472.thread.i

.thread472.i:                                     ; preds = %bb.ax, %bb.aw, %bb.av
  %.3.i = phi i32 [ %i.th, %bb.aw ], [ %i.tu, %bb.ax ], [ %i.se, %bb.av ] ; 2 uses
  %i.tw = phi <2 x double> [ %i.ti, %bb.aw ], [ %i.tl, %bb.ax ], [ %i.sf, %bb.av ] ; 2 uses
  %.not416.i = icmp eq i32 %.3.i, 0
  %i.tx = extractelement <2 x double> %i.tw, i64 0
  %i.ty = extractelement <2 x double> %i.tw, i64 1
  br i1 %.not416.i, label %.thread472.thread.i, label %.critedge.i

.thread472.thread.loopexit.split.loop.exit.i:     ; preds = %bb.as
  %indvars584.le695.i = trunc i64 %indvars.iv581.i to i32
  %i.tz = or disjoint i32 %indvars584.le695.i, 7
  br label %.thread472.thread.i

.thread472.thread.loopexit.split.loop.exit674.i:  ; preds = %bb.aq
  %i.ua = trunc nuw nsw i64 %i.ol to i32
  br label %.thread472.thread.i

.thread472.thread.loopexit.split.loop.exit678.i:  ; preds = %bb.ao
  %indvars584.le693.i = trunc i64 %indvars.iv581.i to i32
  %i.ub = or disjoint i32 %indvars584.le693.i, 3
  br label %.thread472.thread.i

.thread472.thread.loopexit.split.loop.exit682.i:  ; preds = %bb.am
  %indvars584.le.i = trunc i64 %indvars.iv581.i to i32
  %i.uc = or disjoint i32 %indvars584.le.i, 1
  br label %.thread472.thread.i

.thread472.thread.loopexit.split.loop.exit687.i:  ; preds = %bb.az
  %indvars583.le.i = trunc i64 %indvars.iv.next582.i to i32
  br label %.thread472.thread.i

.thread472.thread.i:                              ; preds = %.thread472.thread.loopexit.split.loop.exit687.i, %.thread472.thread.loopexit.split.loop.exit682.i, %.thread472.thread.loopexit.split.loop.exit678.i, %.thread472.thread.loopexit.split.loop.exit674.i, %.thread472.thread.loopexit.split.loop.exit.i, %.thread472.i, %.thread472.loopexit.i, %bb.au, %.preheader487.i, %bb.ak
  %.5387654.i = phi double [ %i.ty, %.thread472.i ], [ %i.qy, %bb.au ], [ %.0382644.i, %bb.ak ], [ %i.qe, %.preheader487.i ], [ %i.qy, %.thread472.loopexit.i ], [ %i.md, %.thread472.thread.loopexit.split.loop.exit682.i ], [ %i.qe, %.thread472.thread.loopexit.split.loop.exit.i ], [ %i.ov, %.thread472.thread.loopexit.split.loop.exit674.i ], [ %i.nm, %.thread472.thread.loopexit.split.loop.exit678.i ], [ %i.qe, %.thread472.thread.loopexit.split.loop.exit687.i ]
  %.5393653.i = phi double [ %i.tx, %.thread472.i ], [ %i.ra, %bb.au ], [ %.0388641.i, %bb.ak ], [ %i.qg, %.preheader487.i ], [ %i.ra, %.thread472.loopexit.i ], [ %i.mf, %.thread472.thread.loopexit.split.loop.exit682.i ], [ %i.qg, %.thread472.thread.loopexit.split.loop.exit.i ], [ %i.ox, %.thread472.thread.loopexit.split.loop.exit674.i ], [ %i.no, %.thread472.thread.loopexit.split.loop.exit678.i ], [ %i.qg, %.thread472.thread.loopexit.split.loop.exit687.i ]
  %.3398652.i = phi i32 [ %i.rd, %.thread472.i ], [ %i.rd, %bb.au ], [ 0, %bb.ak ], [ %indvars584.le697.i, %.preheader487.i ], [ %i.tv, %.thread472.loopexit.i ], [ %i.uc, %.thread472.thread.loopexit.split.loop.exit682.i ], [ %i.tz, %.thread472.thread.loopexit.split.loop.exit.i ], [ %i.ua, %.thread472.thread.loopexit.split.loop.exit674.i ], [ %i.ub, %.thread472.thread.loopexit.split.loop.exit678.i ], [ %indvars583.le.i, %.thread472.thread.loopexit.split.loop.exit687.i ] ; 7 uses
  %i.ud = load i32, ptr %i.bo, align 4, !tbaa !66
  switch i32 %i.ud, label %.critedge.i [
    i32 1, label %.preheader.i
    i32 2, label %bb.bc
    i32 3, label %.preheader486.i
  ]

.preheader486.i:                                  ; preds = %.thread472.thread.i
  %i.ue = icmp sgt i32 %.3398652.i, 0
  %.pre620.i = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 4 uses
  br i1 %i.ue, label %.lr.ph538.i, label %._crit_edge.i

.lr.ph538.i:                                      ; preds = %.preheader486.i
  %i.uf = zext nneg i32 %.3398652.i to i64        ; 4 uses
  %xtraiter = and i64 %i.uf, 1
  %i.ug = icmp eq i32 %.3398652.i, 1
  br i1 %i.ug, label %.epil.preheader, label %.lr.ph538.i.new

.lr.ph538.i.new:                                  ; preds = %.lr.ph538.i
  %unroll_iter = and i64 %i.uf, 2147483646
  br label %bb.bd

.preheader.i:                                     ; preds = %.thread472.thread.i
  %i.uh = fmul nsz float %.0394.i, %.0394.i
  %i.ui = fmul nsz float %i.uh, 1.000000e+01
  %i.uj = fpext nsz float %i.ui to double
  %i.uk = sext i32 %.3398652.i to i64
  %indvars.iv.next603.i299 = add nsw i64 %i.uk, -1 ; 2 uses
  %.not417.i300 = icmp eq i64 %indvars.iv.next603.i299, 0
  br i1 %.not417.i300, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.i
  %i.ul = load ptr, ptr %i.bq, align 8, !tbaa !35
  br label %.lr.ph

bb.ba:                                            ; preds = %.lr.ph
  %indvars.iv.next603.i = add nsw i64 %indvars.iv.next603.i301, -1 ; 2 uses
  %.not417.i = icmp eq i64 %indvars.iv.next603.i, 0
  br i1 %.not417.i, label %.critedge.i, label %.lr.ph, !llvm.loop !70

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ba
  %indvars.iv.next603.i301 = phi i64 [ %indvars.iv.next603.i, %bb.ba ], [ %indvars.iv.next603.i299, %.lr.ph.preheader ] ; 3 uses
  %i.um = getelementptr inbounds [16 x i8], ptr %i.ul, i64 %indvars.iv.next603.i301 ; 2 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !28
  %i.uo = fsub nsz double %i.un, %.5393653.i      ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uq = load double, ptr %i.up, align 8, !tbaa !28
  %i.ur = fsub nsz double %i.uq, %.5387654.i      ; 2 uses
  %i.us = fmul nsz double %i.ur, %i.ur
  %i.ut = tail call nsz double @llvm.fmuladd.f64(double %i.uo, double %i.uo, double %i.us)
  %i.uu = fcmp nsz olt double %i.ut, %i.uj
  br i1 %i.uu, label %bb.bb, label %bb.ba, !llvm.loop !70

bb.bb:                                            ; preds = %.lr.ph
  %i.uv = trunc nsw i64 %indvars.iv.next603.i301 to i32
  %i.uw = sub nsw i32 %.3398652.i, %i.uv          ; 3 uses
  %i.ux = shl i32 %i.uw, 5
  %i.uy = and i32 %i.ux, 224
  %i.uz = shl i32 %i.uw, 10
  %i.va = and i32 %i.uz, 57344
  %i.vb = or disjoint i32 %i.uy, %i.va
  %i.vc = shl i32 %i.uw, 15
  %i.vd = and i32 %i.vc, 14680064
  %i.ve = or disjoint i32 %i.vb, %i.vd
  br label %.critedge.i

bb.bc:                                            ; preds = %.thread472.thread.i
  %i.vf = sitofp nsz i32 %.3398652.i to double
  %i.vg = fmul nnan nsz double %i.vf, 2.550000e+02
  %i.vh = sitofp nsz i32 %i.li to double
  %i.vi = fdiv nsz double %i.vg, %i.vh
  %i.vj = fadd nsz double %i.gd, %i.vi
  %i.vk = tail call nsz double @llvm.floor.f64(double %i.vj)
  %i.vl = fmul nsz double %i.vk, 6.579300e+04
  %i.vm = fptoui double %i.vl to i32
  br label %.critedge.i

bb.bd:                                            ; preds = %bb.bd, %.lr.ph538.i.new
  %indvars.iv598.i = phi i64 [ %i.uf, %.lr.ph538.i.new ], [ %indvars.iv.next599.i.1, %bb.bd ] ; 2 uses
  %.0537.i = phi i32 [ 0, %.lr.ph538.i.new ], [ %.1.i.1, %bb.bd ]
  %.0375536.i = phi double [ 9.999000e+03, %.lr.ph538.i.new ], [ %.1376.i.1, %bb.bd ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph538.i.new ], [ %niter.next.1, %bb.bd ]
  %indvars.iv.next599.i = add nsw i64 %indvars.iv598.i, -1 ; 2 uses
  %i.vn = getelementptr inbounds nuw [16 x i8], ptr %.pre620.i, i64 %indvars.iv.next599.i ; 2 uses
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !28 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !28 ; 2 uses
  %i.vr = fmul nsz double %i.vq, %i.vq
  %i.vs = tail call nsz double @llvm.fmuladd.f64(double %i.vo, double %i.vo, double %i.vr) ; 2 uses
  %i.vt = fcmp nsz olt double %i.vs, %.0375536.i  ; 2 uses
  %.1376.i = select nsz i1 %i.vt, double %i.vs, double %.0375536.i ; 2 uses
  %i.vu = trunc nuw nsw i64 %indvars.iv.next599.i to i32
  %.1.i = select i1 %i.vt, i32 %i.vu, i32 %.0537.i
  %indvars.iv.next599.i.1 = add nsw i64 %indvars.iv598.i, -2 ; 4 uses
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %.pre620.i, i64 %indvars.iv.next599.i.1 ; 2 uses
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !28 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !28 ; 2 uses
  %i.vz = fmul nsz double %i.vy, %i.vy
  %i.wa = tail call nsz double @llvm.fmuladd.f64(double %i.vw, double %i.vw, double %i.vz) ; 2 uses
  %i.wb = fcmp nsz olt double %i.wa, %.1376.i     ; 2 uses
  %.1376.i.1 = select nsz i1 %i.wb, double %i.wa, double %.1376.i ; 3 uses
  %i.wc = trunc nuw nsw i64 %indvars.iv.next599.i.1 to i32
  %.1.i.1 = select i1 %i.wb, i32 %i.wc, i32 %.1.i ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.bd, !llvm.loop !71

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.bd
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph538.i
  %indvars.iv598.i.epil.init = phi i64 [ %i.uf, %.lr.ph538.i ], [ %indvars.iv.next599.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0537.i.epil.init = phi i32 [ 0, %.lr.ph538.i ], [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0375536.i.epil.init = phi double [ 9.999000e+03, %.lr.ph538.i ], [ %.1376.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod382 = trunc i32 %.3398652.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %indvars.iv.next599.i.epil = add nsw i64 %indvars.iv598.i.epil.init, -1 ; 2 uses
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %.pre620.i, i64 %indvars.iv.next599.i.epil ; 2 uses
  %i.we = load double, ptr %i.wd, align 8, !tbaa !28 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !28 ; 2 uses
  %i.wh = fmul nsz double %i.wg, %i.wg
  %i.wi = tail call nsz double @llvm.fmuladd.f64(double %i.we, double %i.we, double %i.wh) ; 2 uses
  %i.wj = fcmp nsz olt double %i.wi, %.0375536.i.epil.init ; 2 uses
  %.1376.i.epil = select nsz i1 %i.wj, double %i.wi, double %.0375536.i.epil.init
  %i.wk = trunc nuw nsw i64 %indvars.iv.next599.i.epil to i32
  %.1.i.epil = select i1 %i.wj, i32 %i.wk, i32 %.0537.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.1376.i.lcssa = phi double [ %.1376.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.1376.i.epil, %.epil.preheader ]
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.wl = tail call nsz double @llvm.sqrt.f64(double %.1376.i.lcssa)
  %i.wm = zext nneg i32 %.1.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader486.i
  %.0375.lcssa.i = phi double [ f0x4058FFAE13F4A7D3, %.preheader486.i ], [ %i.wl, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader486.i ], [ %i.wm, %._crit_edge.loopexit.i ]
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %.pre620.i, i64 %.0.lcssa.i
  %i.wo = load <2 x double>, ptr %i.wn, align 8, !tbaa !28
  %i.wp = insertelement <2 x double> poison, double %.0375.lcssa.i, i64 0
  %i.wq = shufflevector <2 x double> %i.wp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wr = fdiv nsz <2 x double> %i.wo, %i.wq
  %i.ws = fadd nsz <2 x double> %i.wr, splat (double 1.000000e+00)
  %i.wt = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.wu = shufflevector <2 x double> %i.wt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ws, <2 x double> splat (double 1.270000e+02), <2 x double> %i.wu)
  %i.ww = fptrunc <2 x double> %i.wv to <2 x float> ; 2 uses
  %i.wx = extractelement <2 x float> %i.ww, i64 0
  %i.wy = tail call i64 @llvm.lrint.i64.f32(float %i.wx)
  %i.wz = extractelement <2 x float> %i.ww, i64 1
  %i.xa = tail call i64 @llvm.lrint.i64.f32(float %i.wz)
  %i.xb = shl nsw i64 %i.xa, 8
  %i.xc = add nsw i64 %i.xb, %i.wy
  %i.xd = trunc i64 %i.xc to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ba, %.preheader.i, %._crit_edge.i, %bb.bc, %bb.bb, %.thread472.thread.i, %.thread472.i, %bb.au
  %.5.i = phi i32 [ %.3.i, %.thread472.i ], [ 0, %.thread472.thread.i ], [ %i.vm, %bb.bc ], [ %i.xd, %._crit_edge.i ], [ %i.ve, %bb.bb ], [ 16777215, %bb.au ], [ 0, %.preheader.i ], [ 0, %bb.ba ]
  %i.xe = or i32 %.5.i, -16777216                 ; 2 uses
  store i32 %i.xe, ptr %gep.i, align 4, !tbaa !44
  %i.xf = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.xg = icmp slt i32 %.1457541.i, %i.xf
  br i1 %i.xg, label %.sink.split.i, label %bb.be

.sink.split.i:                                    ; preds = %.critedge.i, %bb.ah
  %.sink.i = phi i32 [ %i.kf, %bb.ah ], [ %i.xe, %.critedge.i ]
  %i.xh = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.xi = sext i32 %.1457541.i to i64
  %i.xj = getelementptr inbounds [24 x i8], ptr %i.xh, i64 %i.xi ; 3 uses
  store double %i.ga, ptr %i.xj, align 8, !tbaa !28
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store double %i.cc, ptr %i.xk, align 8, !tbaa !28
  %i.xl = add nsw i32 %.1457541.i, 1
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store i32 %.sink.i, ptr %i.xm, align 8, !tbaa !63
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i, %.critedge.i, %bb.ah, %bb.n
  %.2458.i = phi i32 [ %.1457541.i, %bb.ah ], [ %.1457541.i, %.critedge.i ], [ %.1457541.i, %bb.n ], [ %i.xl, %.sink.split.i ] ; 2 uses
  %indvars.iv.next607.i = add nuw nsw i64 %indvars.iv606.i, 1 ; 2 uses
  %i.xn = load i32, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.xo = sext i32 %i.xn to i64
  %i.xp = icmp slt i64 %indvars.iv.next607.i, %i.xo
  br i1 %i.xp, label %bb.n, label %._crit_edge545.i, !llvm.loop !72

._crit_edge545.i:                                 ; preds = %bb.be, %fill_from_cache.exit428.i
  %.1457.lcssa.i = phi i32 [ %.5461.i, %fill_from_cache.exit428.i ], [ %.2458.i, %bb.be ] ; 3 uses
  %i.xq = fadd nsz double %i.bt, %i.cc
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !9 ; 7 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.val.i, i64 152
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !57
  %i.xt = fcmp nsz une double %i.xs, 0.000000e+00
  br i1 %i.xt, label %fill_from_cache.exit436.i, label %.preheader.i429.i

.preheader.i429.i:                                ; preds = %._crit_edge545.i
  %i.xu = getelementptr inbounds nuw i8, ptr %.val.i, i64 104
end_hunk_0
