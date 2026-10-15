Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_mandelbrot?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@request_frame:bb.a
  %gep708.i = getelementptr [4 x i8], ptr %invariant.gep703.i, i64 %i.gl
  %i.hg = load i32, ptr %gep708.i, align 4, !tbaa !44 ; 3 uses
  %i.hh = icmp ne i32 %i.hc, 0
  %i.hi = icmp ne i32 %i.hf, 0                    ; 2 uses
  %or.cond3.i.i = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond3.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %gep726.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.hj = load i32, ptr %gep726.i, align 4, !tbaa !44
  %gep728.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %indvars.iv608.i
  %i.hk = load i32, ptr %gep728.i, align 4, !tbaa !44
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.hl = icmp ne i32 %i.he, 0
  %i.hm = icmp ne i32 %i.hg, 0                    ; 2 uses
  %or.cond5.i.i = select i1 %i.hl, i1 %i.hm, i1 false
  br i1 %or.cond5.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %gep722.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.gl
  %i.hn = load i32, ptr %gep722.i, align 4, !tbaa !44
  %gep724.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.hd
  %i.ho = load i32, ptr %gep724.i, align 4, !tbaa !44
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  br i1 %i.hi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %gep716.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %indvars.iv608.i
  %i.hp = load i32, ptr %gep716.i, align 4, !tbaa !44
  %gep718.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.hq = load i32, ptr %gep718.i, align 4, !tbaa !44
  %gep720.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.gl
  %i.hr = load i32, ptr %gep720.i, align 4, !tbaa !44
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  br i1 %i.hm, label %bb.aa, label %interpol.exit.thread.thread.i

bb.aa:                                            ; preds = %bb.z
  %gep710.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.hd
  %i.hs = load i32, ptr %gep710.i, align 4, !tbaa !44
  %gep712.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.ht = load i32, ptr %gep712.i, align 4, !tbaa !44
  %gep714.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.gl
  %i.hu = load i32, ptr %gep714.i, align 4, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  %.0152.i.i = phi i32 [ %i.hc, %bb.u ], [ %i.hn, %bb.w ], [ %i.hq, %bb.y ], [ %i.ht, %bb.aa ] ; 3 uses
  %.0151.i.i = phi i32 [ %i.hj, %bb.u ], [ %i.he, %bb.w ], [ %i.hr, %bb.y ], [ %i.hu, %bb.aa ] ; 3 uses
  %.0150.i.i = phi i32 [ %i.hf, %bb.u ], [ %i.ho, %bb.w ], [ %i.hf, %bb.y ], [ %i.hs, %bb.aa ] ; 3 uses
  %.0149.i.i = phi i32 [ %i.hk, %bb.u ], [ %i.hg, %bb.w ], [ %i.hp, %bb.y ], [ %i.hg, %bb.aa ] ; 3 uses
  %i.hv = and i32 %.0152.i.i, 255                 ; 2 uses
  %i.hw = and i32 %.0151.i.i, 255                 ; 2 uses
  %i.hx = add nuw nsw i32 %i.hw, %i.hv            ; 2 uses
  %i.hy = and i32 %.0150.i.i, 255                 ; 2 uses
  %i.hz = and i32 %.0149.i.i, 255                 ; 2 uses
  %i.ia = add nuw nsw i32 %i.hz, %i.hy            ; 2 uses
  %reass.sub.i.i = add nsw i32 %i.hx, -6
  %i.ib = sub nsw i32 %reass.sub.i.i, %i.ia
  %i.ic = icmp ult i32 %i.ib, -11
  br i1 %i.ic, label %interpol.exit.thread.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.id = sub nsw i32 %i.hv, %i.hw
  %i.ie = tail call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.if = sub nsw i32 %i.hy, %i.hz
  %i.ig = tail call i32 @llvm.abs.i32(i32 %i.if, i1 true)
  %i.ih = add nuw nsw i32 %i.ig, %i.ie
  %i.ii = icmp samesign ugt i32 %i.ih, 20
  br i1 %i.ii, label %interpol.exit.thread.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ij = add nuw nsw i32 %i.hx, 2
  %i.ik = add nuw nsw i32 %i.ij, %i.ia
  %i.il = lshr i32 %i.ik, 2
  %i.im = lshr i32 %.0152.i.i, 8
  %i.in = lshr i32 %.0151.i.i, 8
  %i.io = lshr i32 %.0150.i.i, 8
  %i.ip = lshr i32 %.0149.i.i, 8
  %i.iq = and i32 %i.im, 255                      ; 2 uses
  %i.ir = and i32 %i.in, 255                      ; 2 uses
  %i.is = add nuw nsw i32 %i.ir, %i.iq            ; 2 uses
  %i.it = and i32 %i.io, 255                      ; 2 uses
  %i.iu = and i32 %i.ip, 255                      ; 2 uses
  %i.iv = add nuw nsw i32 %i.iu, %i.it            ; 2 uses
  %reass.sub.1.i.i = add nsw i32 %i.is, -6
  %i.iw = sub nsw i32 %reass.sub.1.i.i, %i.iv
  %i.ix = icmp ult i32 %i.iw, -11
  br i1 %i.ix, label %interpol.exit.thread.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iy = sub nsw i32 %i.iq, %i.ir
  %i.iz = tail call i32 @llvm.abs.i32(i32 %i.iy, i1 true)
  %i.ja = sub nsw i32 %i.it, %i.iu
  %i.jb = tail call i32 @llvm.abs.i32(i32 %i.ja, i1 true)
  %i.jc = add nuw nsw i32 %i.jb, %i.iz
  %i.jd = icmp samesign ugt i32 %i.jc, 20
  br i1 %i.jd, label %interpol.exit.thread.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.je = add nuw nsw i32 %i.is, 2
  %i.jf = add nuw nsw i32 %i.je, %i.iv
  %i.jg = shl nuw nsw i32 %i.jf, 6
  %i.jh = and i32 %i.jg, 130816
  %i.ji = lshr i32 %.0152.i.i, 16
  %i.jj = lshr i32 %.0151.i.i, 16
  %i.jk = lshr i32 %.0150.i.i, 16
  %i.jl = lshr i32 %.0149.i.i, 16
  %i.jm = and i32 %i.ji, 255                      ; 2 uses
  %i.jn = and i32 %i.jj, 255                      ; 2 uses
  %i.jo = add nuw nsw i32 %i.jn, %i.jm            ; 2 uses
  %i.jp = and i32 %i.jk, 255                      ; 2 uses
  %i.jq = and i32 %i.jl, 255                      ; 2 uses
  %i.jr = add nuw nsw i32 %i.jq, %i.jp            ; 2 uses
  %reass.sub.2.i.i = add nsw i32 %i.jo, -6
  %i.js = sub nsw i32 %reass.sub.2.i.i, %i.jr
  %i.jt = icmp ult i32 %i.js, -11
  br i1 %i.jt, label %interpol.exit.thread.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ju = sub nsw i32 %i.jm, %i.jn
  %i.jv = tail call i32 @llvm.abs.i32(i32 %i.ju, i1 true)
  %i.jw = sub nsw i32 %i.jp, %i.jq
  %i.jx = tail call i32 @llvm.abs.i32(i32 %i.jw, i1 true)
  %i.jy = add nuw nsw i32 %i.jx, %i.jv
  %i.jz = icmp samesign ugt i32 %i.jy, 20
  br i1 %i.jz, label %interpol.exit.thread.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ka = add nuw nsw i32 %i.jo, 2
  %i.kb = add nuw nsw i32 %i.ka, %i.jr
  %i.kc = shl nuw nsw i32 %i.kb, 14
  %i.kd = and i32 %i.kc, 16711680
  %i.ke = or i32 %i.il, %i.jh
  %i.kf = or i32 %i.ke, %i.kd
  %i.kg = or i32 %i.kf, -16777216                 ; 2 uses
  store i32 %i.kg, ptr %gep.i, align 4, !tbaa !44
  %i.kh = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.ki = icmp slt i32 %.1459543.i, %i.kh
  br i1 %i.ki, label %.sink.split.i, label %bb.be

bb.ai:                                            ; preds = %bb.o
  %i.kj = load <2 x double>, ptr %i.bn, align 8, !tbaa !28
  %i.kk = fmul nsz <2 x double> %i.kj, %i.bw      ; 2 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0
  %i.km = tail call nsz double @llvm.cos.f64(double %i.kl)
  %i.kn = tail call nsz double @llvm.fmuladd.f64(double %i.km, double %i.gi, double %i.gb)
  %i.ko = extractelement <2 x double> %i.kk, i64 1
  %i.kp = tail call nsz double @llvm.sin.f64(double %i.ko)
  %i.kq = tail call nsz double @llvm.fmuladd.f64(double %i.kp, double %i.gi, double %i.cc)
  br label %interpol.exit.thread.i

interpol.exit.thread.i:                           ; preds = %bb.ai, %bb.q, %bb.p
  %.0388.i = phi nsz double [ %i.kn, %bb.ai ], [ %i.gb, %bb.q ], [ %i.gb, %bb.p ] ; 2 uses
  %.0382.i = phi nsz double [ %i.kq, %bb.ai ], [ %i.cc, %bb.q ], [ %i.cc, %bb.p ] ; 2 uses
  %i.kr = icmp eq i64 %indvars.iv608.i, 0
  br i1 %i.kr, label %.thread.i, label %interpol.exit.thread.thread.i

interpol.exit.thread.thread.i:                    ; preds = %interpol.exit.thread.i, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.s, %bb.r
  %.0382648.i = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ad ], [ %i.cc, %bb.ae ], [ %i.cc, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.r ], [ %i.cc, %bb.z ], [ %i.cc, %bb.s ] ; 3 uses
  %.0388645.i = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %i.gb, %bb.ab ], [ %i.gb, %bb.ac ], [ %i.gb, %bb.ad ], [ %i.gb, %bb.ae ], [ %i.gb, %bb.af ], [ %i.gb, %bb.ag ], [ %i.gb, %bb.r ], [ %i.gb, %bb.z ], [ %i.gb, %bb.s ] ; 3 uses
  %i.ks = load i32, ptr %i.bo, align 4, !tbaa !72
  %.not413.i = icmp eq i32 %i.ks, 0
  br i1 %.not413.i, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %interpol.exit.thread.thread.i
  %i.kt = add nsw i64 %i.fu, %indvars.iv608.i
  %sext.i = shl i64 %i.kt, 32
  %i.ku = ashr exact i64 %sext.i, 30
  %i.kv = getelementptr inbounds i8, ptr %i.p, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !44
  %i.kx = icmp eq i32 %i.kw, -16777216
  br i1 %i.kx, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %bb.aj, %interpol.exit.thread.thread.i, %interpol.exit.thread.i
  %.0382647.i = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %.0382648.i, %interpol.exit.thread.thread.i ], [ %.0382648.i, %bb.aj ]
  %.0388644.i = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %.0388645.i, %interpol.exit.thread.thread.i ], [ %.0388645.i, %bb.aj ]
  %i.ky = tail call i32 @llvm.abs.i32(i32 %i.fz, i1 true)
  %i.kz = load i32, ptr %i.ai, align 4, !tbaa !27
  %.neg415.i = sdiv i32 %i.kz, -2
  %i.la = add i32 %.neg415.i, %i.bz
  %i.lb = tail call i32 @llvm.abs.i32(i32 %i.la, i1 true)
  %i.lc = add nuw nsw i32 %i.lb, %i.ky
  %i.ld = uitofp nneg i32 %i.lc to double
  %i.le = fmul nsz double %i.af, %i.ld
  %i.lf = sitofp nsz i32 %i.fw to double
  %i.lg = fdiv nsz double %i.le, %i.lf
  %i.lh = fptrunc nsz double %i.lg to float
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  %.0382646.i = phi double [ %.0382647.i, %.thread.i ], [ %.0382648.i, %bb.aj ] ; 2 uses
  %.0388643.i = phi double [ %.0388644.i, %.thread.i ], [ %.0388645.i, %bb.aj ] ; 2 uses
  %i.li = phi i1 [ true, %.thread.i ], [ false, %bb.aj ] ; 4 uses
  %.0394.i = phi nsz float [ %i.lh, %.thread.i ], [ undef, %bb.aj ] ; 3 uses
  %i.lj = load i32, ptr %i.bp, align 8, !tbaa !34 ; 6 uses
  %1 = add nsw i32 %i.lj, -8
  %i.lk = icmp sgt i32 %i.lj, 8
  br i1 %i.lk, label %.lr.ph.i, label %.thread474.thread.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.ll = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 9 uses
  %i.lm = fpext nsz float %.0394.i to double      ; 4 uses
  %i.ln = add nsw i32 %i.lj, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv593.i = phi i32 [ %i.ln, %.lr.ph.i ], [ %indvars.iv.next594.i, %bb.az ] ; 2 uses
  %indvars.iv590.i = phi i32 [ 1, %.lr.ph.i ], [ %indvars.iv.next591.i, %bb.az ] ; 2 uses
  %indvars.iv583.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next584.i, %bb.az ] ; 11 uses
  %.1383508.i = phi double [ %.0382646.i, %.lr.ph.i ], [ %i.qf, %bb.az ] ; 3 uses
  %.1389507.i = phi double [ %.0388643.i, %.lr.ph.i ], [ %i.qh, %bb.az ] ; 3 uses
  %i.lo = fneg nsz double %.1383508.i
  %i.lp = fmul nsz double %.1383508.i, %i.lo
  %i.lq = tail call nsz double @llvm.fmuladd.f64(double %.1389507.i, double %.1389507.i, double %i.lp)
  %i.lr = fmul nsz double %.1389507.i, 2.000000e+00
  %i.ls = tail call nsz double @llvm.fmuladd.f64(double %i.lr, double %.1383508.i, double %i.cc) ; 4 uses
  %i.lt = getelementptr [16 x i8], ptr %i.ll, i64 %indvars.iv583.i ; 10 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store double %i.ls, ptr %i.lu, align 8, !tbaa !28
  %i.lv = fneg nsz double %i.ls
  %i.lw = fmul nsz double %i.ls, %i.lv
  %i.lx = fadd nsz double %i.gb, %i.lq            ; 2 uses
  store double %i.lx, ptr %i.lt, align 8, !tbaa !28
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ma = fmul nsz <2 x double> %i.lz, <double 1.000000e+00, double 2.000000e+00>
  %i.mb = insertelement <2 x double> %i.lz, double %i.ls, i64 1
  %i.mc = insertelement <2 x double> %i.fv, double %i.lw, i64 0
  %i.md = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.mb, <2 x double> %i.mc) ; 4 uses
  %i.me = extractelement <2 x double> %i.md, i64 1 ; 4 uses
  %i.mf = extractelement <2 x double> %i.md, i64 0
  %i.mg = fadd nsz double %i.gb, %i.mf            ; 5 uses
  br i1 %i.li, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mh = lshr exact i64 %indvars.iv583.i, 1
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.mh
  %i.mj = load <2 x double>, ptr %i.mi, align 8, !tbaa !28
  %i.mk = insertelement <2 x double> %i.md, double %i.mg, i64 0
  %i.ml = fsub nsz <2 x double> %i.mj, %i.mk
  %i.mm = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ml)
  %i.mn = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.mm)
  %i.mo = fcmp nsz ugt double %i.mn, %i.lm
  br i1 %i.mo, label %bb.an, label %.thread474.thread.loopexit.split.loop.exit684.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store double %i.mg, ptr %i.mp, align 8, !tbaa !28
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  store double %i.me, ptr %i.mq, align 8, !tbaa !28
  %i.mr = fneg nsz double %i.me
  %i.ms = fmul nsz double %i.me, %i.mr
  %i.mt = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = fmul nsz <2 x double> %i.mu, <double 1.000000e+00, double 2.000000e+00>
  %i.mw = insertelement <2 x double> %i.md, double %i.mg, i64 0
  %i.mx = insertelement <2 x double> %i.fv, double %i.ms, i64 0
  %i.my = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.mw, <2 x double> %i.mx) ; 3 uses
  %i.mz = extractelement <2 x double> %i.my, i64 1 ; 3 uses
  %i.na = extractelement <2 x double> %i.my, i64 0
  %i.nb = getelementptr i8, ptr %i.lt, i64 32
  %i.nc = getelementptr i8, ptr %i.lt, i64 40
  store double %i.mz, ptr %i.nc, align 8, !tbaa !28
  %i.nd = or disjoint i64 %indvars.iv583.i, 3     ; 2 uses
  %i.ne = fneg nsz double %i.mz
  %i.nf = fmul nsz double %i.mz, %i.ne
  %i.ng = fadd nsz double %i.gb, %i.na            ; 3 uses
  store double %i.ng, ptr %i.nb, align 8, !tbaa !28
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fmul nsz <2 x double> %i.ni, <double 1.000000e+00, double 2.000000e+00>
  %i.nk = insertelement <2 x double> %i.my, double %i.ng, i64 0
  %i.nl = insertelement <2 x double> %i.fv, double %i.nf, i64 0
  %i.nm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.nk, <2 x double> %i.nl) ; 4 uses
  %i.nn = extractelement <2 x double> %i.nm, i64 1 ; 4 uses
  %i.no = extractelement <2 x double> %i.nm, i64 0
  %i.np = fadd nsz double %i.gb, %i.no            ; 5 uses
  br i1 %i.li, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.nq = lshr i64 %i.nd, 1
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.nq
  %i.ns = load <2 x double>, ptr %i.nr, align 8, !tbaa !28
  %i.nt = insertelement <2 x double> %i.nm, double %i.np, i64 0
  %i.nu = fsub nsz <2 x double> %i.ns, %i.nt
  %i.nv = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nu)
  %i.nw = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.nv)
  %i.nx = fcmp nsz ugt double %i.nw, %i.lm
  br i1 %i.nx, label %bb.ap, label %.thread474.thread.loopexit.split.loop.exit680.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.nd ; 2 uses
  store double %i.np, ptr %i.ny, align 8, !tbaa !28
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store double %i.nn, ptr %i.nz, align 8, !tbaa !28
  %i.oa = fneg nsz double %i.nn
  %i.ob = fmul nsz double %i.nn, %i.oa
  %i.oc = insertelement <2 x double> poison, double %i.np, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fmul nsz <2 x double> %i.od, <double 1.000000e+00, double 2.000000e+00>
  %i.of = insertelement <2 x double> %i.nm, double %i.np, i64 0
  %i.og = insertelement <2 x double> %i.fv, double %i.ob, i64 0
  %i.oh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.of, <2 x double> %i.og) ; 3 uses
  %i.oi = extractelement <2 x double> %i.oh, i64 1 ; 3 uses
  %i.oj = extractelement <2 x double> %i.oh, i64 0
  %i.ok = getelementptr i8, ptr %i.lt, i64 64
  %i.ol = getelementptr i8, ptr %i.lt, i64 72
  store double %i.oi, ptr %i.ol, align 8, !tbaa !28
  %i.om = or disjoint i64 %indvars.iv583.i, 5     ; 3 uses
  %i.on = fneg nsz double %i.oi
  %i.oo = fmul nsz double %i.oi, %i.on
  %i.op = fadd nsz double %i.gb, %i.oj            ; 3 uses
  store double %i.op, ptr %i.ok, align 8, !tbaa !28
  %i.oq = insertelement <2 x double> poison, double %i.op, i64 0
  %i.or = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul nsz <2 x double> %i.or, <double 1.000000e+00, double 2.000000e+00>
  %i.ot = insertelement <2 x double> %i.oh, double %i.op, i64 0
  %i.ou = insertelement <2 x double> %i.fv, double %i.oo, i64 0
  %i.ov = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ot, <2 x double> %i.ou) ; 4 uses
  %i.ow = extractelement <2 x double> %i.ov, i64 1 ; 4 uses
  %i.ox = extractelement <2 x double> %i.ov, i64 0
  %i.oy = fadd nsz double %i.gb, %i.ox            ; 5 uses
  br i1 %i.li, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.oz = lshr i64 %i.om, 1
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.oz
  %i.pb = load <2 x double>, ptr %i.pa, align 8, !tbaa !28
  %i.pc = insertelement <2 x double> %i.ov, double %i.oy, i64 0
  %i.pd = fsub nsz <2 x double> %i.pb, %i.pc
  %i.pe = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pd)
  %i.pf = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.pe)
  %i.pg = fcmp nsz ugt double %i.pf, %i.lm
  br i1 %i.pg, label %bb.ar, label %.thread474.thread.loopexit.split.loop.exit676.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.om ; 2 uses
  store double %i.oy, ptr %i.ph, align 8, !tbaa !28
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store double %i.ow, ptr %i.pi, align 8, !tbaa !28
  %i.pj = fneg nsz double %i.ow
  %i.pk = fmul nsz double %i.ow, %i.pj
  %i.pl = insertelement <2 x double> poison, double %i.oy, i64 0
  %i.pm = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pn = fmul nsz <2 x double> %i.pm, <double 1.000000e+00, double 2.000000e+00>
  %i.po = insertelement <2 x double> %i.ov, double %i.oy, i64 0
  %i.pp = insertelement <2 x double> %i.fv, double %i.pk, i64 0
  %i.pq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.po, <2 x double> %i.pp) ; 3 uses
  %i.pr = extractelement <2 x double> %i.pq, i64 1 ; 3 uses
  %i.ps = extractelement <2 x double> %i.pq, i64 0
  %i.pt = getelementptr i8, ptr %i.lt, i64 96
  %i.pu = getelementptr i8, ptr %i.lt, i64 104
  store double %i.pr, ptr %i.pu, align 8, !tbaa !28
  %i.pv = or disjoint i64 %indvars.iv583.i, 7     ; 2 uses
  %i.pw = fneg nsz double %i.pr
  %i.px = fmul nsz double %i.pr, %i.pw
  %i.py = fadd nsz double %i.gb, %i.ps            ; 3 uses
  store double %i.py, ptr %i.pt, align 8, !tbaa !28
  %i.pz = insertelement <2 x double> poison, double %i.py, i64 0
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qb = fmul nsz <2 x double> %i.qa, <double 1.000000e+00, double 2.000000e+00>
  %i.qc = insertelement <2 x double> %i.pq, double %i.py, i64 0
  %i.qd = insertelement <2 x double> %i.fv, double %i.px, i64 0
  %i.qe = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qb, <2 x double> %i.qc, <2 x double> %i.qd) ; 3 uses
  %i.qf = extractelement <2 x double> %i.qe, i64 1 ; 7 uses
  %i.qg = extractelement <2 x double> %i.qe, i64 0
  %i.qh = fadd nsz double %i.gb, %i.qg            ; 8 uses
  br i1 %i.li, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qi = lshr i64 %i.pv, 1
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.qi
  %i.qk = load <2 x double>, ptr %i.qj, align 8, !tbaa !28
  %i.ql = insertelement <2 x double> %i.qe, double %i.qh, i64 0
  %i.qm = fsub nsz <2 x double> %i.qk, %i.ql
  %i.qn = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.qm)
  %i.qo = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.qn)
  %i.qp = fcmp nsz ugt double %i.qo, %i.lm
  br i1 %i.qp, label %bb.at, label %.thread474.thread.loopexit.split.loop.exit.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.pv ; 2 uses
  store double %i.qh, ptr %i.qq, align 8, !tbaa !28
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store double %i.qf, ptr %i.qr, align 8, !tbaa !28
  %i.qs = fmul nsz double %i.qf, %i.qf
  %i.qt = tail call nsz double @llvm.fmuladd.f64(double %i.qh, double %i.qh, double %i.qs)
  %i.qu = load double, ptr %i.br, align 8, !tbaa !26 ; 4 uses
  %i.qv = fcmp nsz ogt double %i.qt, %i.qu
  br i1 %i.qv, label %.preheader489.i, label %bb.az

.preheader489.i:                                  ; preds = %bb.at
  %indvars586.le699.i = trunc i64 %indvars.iv583.i to i32 ; 2 uses
  %i.qw = icmp sgt i32 %i.lj, %indvars586.le699.i
  br i1 %i.qw, label %.lr.ph533.preheader.i, label %.thread474.thread.i

.lr.ph533.preheader.i:                            ; preds = %.preheader489.i
  %wide.trip.count598.i = zext nneg i32 %i.lj to i64
  br label %.lr.ph533.i

.lr.ph533.i:                                      ; preds = %bb.ay, %.lr.ph533.preheader.i
  %indvars.iv588.i = phi i64 [ %indvars.iv583.i, %.lr.ph533.preheader.i ], [ %indvars.iv.next589.i, %bb.ay ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %indvars.iv588.i
  %i.qy = load <2 x double>, ptr %i.qx, align 8, !tbaa !28 ; 5 uses
  %i.qz = extractelement <2 x double> %i.qy, i64 1 ; 4 uses
  %i.ra = fmul nsz double %i.qz, %i.qz
  %i.rb = extractelement <2 x double> %i.qy, i64 0 ; 4 uses
  %i.rc = tail call nsz double @llvm.fmuladd.f64(double %i.rb, double %i.rb, double %i.ra) ; 2 uses
  %i.rd = fcmp nsz ogt double %i.rc, %i.qu
  br i1 %i.rd, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %.lr.ph533.i
  %i.re = trunc nuw nsw i64 %indvars.iv588.i to i32 ; 5 uses
  %i.rf = load i32, ptr %i.bs, align 8, !tbaa !73
  switch i32 %i.rf, label %.thread474.thread.i [
    i32 0, label %bb.av
    i32 1, label %bb.aw
    i32 2, label %.critedge.i
    i32 3, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.rg = uitofp nsz nneg i32 %i.re to double     ; 2 uses
  %i.rh = uitofp nneg i32 %i.re to float
  %i.ri = tail call nsz float @llvm.sin.f32(float %i.rh)
  %i.rj = fadd nnan nsz float %i.ri, 1.000000e+00
  %i.rk = fmul nnan nsz float %i.rj, 1.270000e+02
  %i.rl = tail call i64 @llvm.lrint.i64.f32(float %i.rk)
  %i.rm = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = fdiv nsz <2 x double> %i.rn, <double 1.234000e+00, double 1.000000e+02> ; 2 uses
  %i.rp = extractelement <2 x double> %i.ro, i64 0
  %i.rq = fptrunc nsz double %i.rp to float
  %i.rr = tail call nsz float @llvm.sin.f32(float %i.rq)
  %i.rs = fadd nsz float %i.rr, 1.000000e+00
  %i.rt = fmul nsz float %i.rs, 1.270000e+02
  %i.ru = tail call i64 @llvm.lrint.i64.f32(float %i.rt)
  %i.rv = shl nsw i64 %i.ru, 16
  %i.rw = add nsw i64 %i.rv, %i.rl
  %i.rx = extractelement <2 x double> %i.ro, i64 1
  %i.ry = fptrunc nsz double %i.rx to float
  %i.rz = tail call nsz float @llvm.sin.f32(float %i.ry)
  %i.sa = fadd nsz float %i.rz, 1.000000e+00
  %i.sb = fmul nsz float %i.sa, 1.270000e+02
  %i.sc = tail call i64 @llvm.lrint.i64.f32(float %i.sb)
  %i.sd = shl nsw i64 %i.sc, 8
  %i.se = add nsw i64 %i.rw, %i.sd
  %i.sf = trunc i64 %i.se to i32
  %i.sg = insertelement <2 x double> %i.qy, double %i.rg, i64 0
  br label %.thread474.i

bb.aw:                                            ; preds = %bb.au
  %i.sh = uitofp nsz nneg i32 %i.re to double
  %i.si = tail call nsz double @llvm.log.f64(double %i.qu)
  %i.sj = tail call nsz double @llvm.log.f64(double %i.rc)
  %i.sk = fdiv nsz double %i.si, %i.sj
  %i.sl = tail call nsz double @llvm.log2.f64(double %i.sk)
  %i.sm = fadd nsz double %i.sl, %i.sh            ; 4 uses
  %i.sn = fptrunc nsz double %i.sm to float
  %i.so = tail call nsz float @llvm.sin.f32(float %i.sn)
  %i.sp = fadd nsz float %i.so, 1.000000e+00
  %i.sq = fmul nsz float %i.sp, 1.270000e+02
  %i.sr = tail call i64 @llvm.lrint.i64.f32(float %i.sq)
  %i.ss = fdiv nsz double %i.sm, 1.234000e+00
  %i.st = fptrunc nsz double %i.ss to float
  %i.su = tail call nsz float @llvm.sin.f32(float %i.st)
  %i.sv = fadd nsz float %i.su, 1.000000e+00
  %i.sw = fmul nsz float %i.sv, 1.270000e+02
  %i.sx = tail call i64 @llvm.lrint.i64.f32(float %i.sw)
  %i.sy = shl nsw i64 %i.sx, 16
  %i.sz = add nsw i64 %i.sy, %i.sr
  %i.ta = fdiv nsz double %i.sm, 1.000000e+02
  %i.tb = fptrunc nsz double %i.ta to float
  %i.tc = tail call nsz float @llvm.sin.f32(float %i.tb)
  %i.td = fadd nsz float %i.tc, 1.000000e+00
  %i.te = fmul nsz float %i.td, 1.270000e+02
  %i.tf = tail call i64 @llvm.lrint.i64.f32(float %i.te)
  %i.tg = shl nsw i64 %i.tf, 8
  %i.th = add nsw i64 %i.sz, %i.tg
  %i.ti = trunc i64 %i.th to i32
  %i.tj = insertelement <2 x double> %i.qy, double %i.sm, i64 0
  br label %.thread474.i

bb.ax:                                            ; preds = %bb.au
  %i.tk = insertelement <2 x double> poison, double %i.qu, i64 0
  %i.tl = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tm = fdiv nsz <2 x double> %i.qy, %i.tl      ; 2 uses
  %i.tn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tm, <2 x double> splat (double 1.280000e+02), <2 x double> splat (double 1.280000e+02)) ; 2 uses
  %i.to = extractelement <2 x double> %i.tn, i64 0
  %i.tp = fptosi double %i.to to i32
  %i.tq = shl i32 %i.tp, 8
  %i.tr = and i32 %i.tq, 65280
  %i.ts = extractelement <2 x double> %i.tn, i64 1
  %i.tt = fptosi double %i.ts to i32
  %i.tu = and i32 %i.tt, 255
  %i.tv = or disjoint i32 %i.tr, %i.tu
  br label %.thread474.i

bb.ay:                                            ; preds = %.lr.ph533.i
  %indvars.iv.next589.i = add nuw i64 %indvars.iv588.i, 1 ; 2 uses
  %exitcond599.not.i = icmp eq i64 %indvars.iv.next589.i, %wide.trip.count598.i
  br i1 %exitcond599.not.i, label %.thread474.loopexit.i, label %.lr.ph533.i, !llvm.loop !46

bb.az:                                            ; preds = %bb.at
  %indvars.iv.next584.i = add nuw nsw i64 %indvars.iv583.i, 8 ; 2 uses
  %indvars585.i = trunc i64 %indvars.iv.next584.i to i32 ; 2 uses
  %2 = icmp sgt i32 %1, %indvars585.i
  %indvars.iv.next591.i = add i32 %indvars.iv590.i, 8
  %indvars.iv.next594.i = add i32 %indvars.iv593.i, -8
  br i1 %2, label %bb.al, label %.thread474.thread.i, !llvm.loop !47

.thread474.loopexit.i:                            ; preds = %bb.ay
  %i.tw = add i32 %indvars.iv590.i, %indvars.iv593.i
  br label %.thread474.thread.i

.thread474.i:                                     ; preds = %bb.ax, %bb.aw, %bb.av
  %.3.i = phi i32 [ %i.ti, %bb.aw ], [ %i.tv, %bb.ax ], [ %i.sf, %bb.av ] ; 2 uses
  %i.tx = phi <2 x double> [ %i.tj, %bb.aw ], [ %i.tm, %bb.ax ], [ %i.sg, %bb.av ] ; 2 uses
  %.not416.i = icmp eq i32 %.3.i, 0
  %i.ty = extractelement <2 x double> %i.tx, i64 0
  %i.tz = extractelement <2 x double> %i.tx, i64 1
  br i1 %.not416.i, label %.thread474.thread.i, label %.critedge.i

.thread474.thread.loopexit.split.loop.exit.i:     ; preds = %bb.as
  %indvars586.le697.i = trunc i64 %indvars.iv583.i to i32
  %i.ua = or disjoint i32 %indvars586.le697.i, 7
  br label %.thread474.thread.i

.thread474.thread.loopexit.split.loop.exit676.i:  ; preds = %bb.aq
  %i.ub = trunc nuw nsw i64 %i.om to i32
  br label %.thread474.thread.i

.thread474.thread.loopexit.split.loop.exit680.i:  ; preds = %bb.ao
  %indvars586.le695.i = trunc i64 %indvars.iv583.i to i32
  %i.uc = or disjoint i32 %indvars586.le695.i, 3
  br label %.thread474.thread.i

.thread474.thread.loopexit.split.loop.exit684.i:  ; preds = %bb.am
  %indvars586.le.i = trunc i64 %indvars.iv583.i to i32
  %i.ud = or disjoint i32 %indvars586.le.i, 1
  br label %.thread474.thread.i

.thread474.thread.i:                              ; preds = %bb.az, %.thread474.thread.loopexit.split.loop.exit684.i, %.thread474.thread.loopexit.split.loop.exit680.i, %.thread474.thread.loopexit.split.loop.exit676.i, %.thread474.thread.loopexit.split.loop.exit.i, %.thread474.i, %.thread474.loopexit.i, %bb.au, %.preheader489.i, %bb.ak
  %.5387656.i = phi double [ %i.tz, %.thread474.i ], [ %i.qz, %bb.au ], [ %.0382646.i, %bb.ak ], [ %i.qf, %.preheader489.i ], [ %i.qz, %.thread474.loopexit.i ], [ %i.me, %.thread474.thread.loopexit.split.loop.exit684.i ], [ %i.qf, %.thread474.thread.loopexit.split.loop.exit.i ], [ %i.ow, %.thread474.thread.loopexit.split.loop.exit676.i ], [ %i.nn, %.thread474.thread.loopexit.split.loop.exit680.i ], [ %i.qf, %bb.az ]
  %.5393655.i = phi double [ %i.ty, %.thread474.i ], [ %i.rb, %bb.au ], [ %.0388643.i, %bb.ak ], [ %i.qh, %.preheader489.i ], [ %i.rb, %.thread474.loopexit.i ], [ %i.mg, %.thread474.thread.loopexit.split.loop.exit684.i ], [ %i.qh, %.thread474.thread.loopexit.split.loop.exit.i ], [ %i.oy, %.thread474.thread.loopexit.split.loop.exit676.i ], [ %i.np, %.thread474.thread.loopexit.split.loop.exit680.i ], [ %i.qh, %bb.az ]
  %.3398654.i = phi i32 [ %i.re, %.thread474.i ], [ %i.re, %bb.au ], [ 0, %bb.ak ], [ %indvars586.le699.i, %.preheader489.i ], [ %i.tw, %.thread474.loopexit.i ], [ %i.ud, %.thread474.thread.loopexit.split.loop.exit684.i ], [ %i.ua, %.thread474.thread.loopexit.split.loop.exit.i ], [ %i.ub, %.thread474.thread.loopexit.split.loop.exit676.i ], [ %i.uc, %.thread474.thread.loopexit.split.loop.exit680.i ], [ %indvars585.i, %bb.az ] ; 7 uses
  %i.ue = load i32, ptr %i.bo, align 4, !tbaa !72
  switch i32 %i.ue, label %.critedge.i [
    i32 1, label %.preheader.i
    i32 2, label %bb.bc
    i32 3, label %.preheader488.i
  ]

.preheader488.i:                                  ; preds = %.thread474.thread.i
  %i.uf = icmp sgt i32 %.3398654.i, 0
  %.pre622.i = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 4 uses
  br i1 %i.uf, label %.lr.ph540.i, label %._crit_edge.i

.lr.ph540.i:                                      ; preds = %.preheader488.i
  %i.ug = zext nneg i32 %.3398654.i to i64        ; 4 uses
  %xtraiter = and i64 %i.ug, 1
  %i.uh = icmp eq i32 %.3398654.i, 1
  br i1 %i.uh, label %.epil.preheader, label %.lr.ph540.i.new

.lr.ph540.i.new:                                  ; preds = %.lr.ph540.i
  %unroll_iter = and i64 %i.ug, 2147483646
  br label %bb.bd

.preheader.i:                                     ; preds = %.thread474.thread.i
  %i.ui = fmul nsz float %.0394.i, %.0394.i
  %i.uj = fmul nsz float %i.ui, 1.000000e+01
  %i.uk = fpext nsz float %i.uj to double
  %i.ul = sext i32 %.3398654.i to i64
  %indvars.iv.next605.i299 = add nsw i64 %i.ul, -1 ; 2 uses
  %.not417.i300 = icmp eq i64 %indvars.iv.next605.i299, 0
  br i1 %.not417.i300, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.i
  %i.um = load ptr, ptr %i.bq, align 8, !tbaa !35
  br label %.lr.ph

bb.ba:                                            ; preds = %.lr.ph
  %indvars.iv.next605.i = add nsw i64 %indvars.iv.next605.i301, -1 ; 2 uses
  %.not417.i = icmp eq i64 %indvars.iv.next605.i, 0
  br i1 %.not417.i, label %.critedge.i, label %.lr.ph, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ba
  %indvars.iv.next605.i301 = phi i64 [ %indvars.iv.next605.i, %bb.ba ], [ %indvars.iv.next605.i299, %.lr.ph.preheader ] ; 3 uses
  %i.un = getelementptr inbounds [16 x i8], ptr %i.um, i64 %indvars.iv.next605.i301 ; 2 uses
  %i.uo = load double, ptr %i.un, align 8, !tbaa !28
  %i.up = fsub nsz double %i.uo, %.5393655.i      ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !28
  %i.us = fsub nsz double %i.ur, %.5387656.i      ; 2 uses
  %i.ut = fmul nsz double %i.us, %i.us
  %i.uu = tail call nsz double @llvm.fmuladd.f64(double %i.up, double %i.up, double %i.ut)
  %i.uv = fcmp nsz olt double %i.uu, %i.uk
  br i1 %i.uv, label %bb.bb, label %bb.ba, !llvm.loop !48

bb.bb:                                            ; preds = %.lr.ph
  %i.uw = trunc nsw i64 %indvars.iv.next605.i301 to i32
  %i.ux = sub nsw i32 %.3398654.i, %i.uw          ; 3 uses
  %i.uy = shl i32 %i.ux, 5
  %i.uz = and i32 %i.uy, 224
  %i.va = shl i32 %i.ux, 10
  %i.vb = and i32 %i.va, 57344
  %i.vc = or disjoint i32 %i.uz, %i.vb
  %i.vd = shl i32 %i.ux, 15
  %i.ve = and i32 %i.vd, 14680064
  %i.vf = or disjoint i32 %i.vc, %i.ve
  br label %.critedge.i

bb.bc:                                            ; preds = %.thread474.thread.i
  %i.vg = sitofp nsz i32 %.3398654.i to double
  %i.vh = fmul nnan nsz double %i.vg, 2.550000e+02
  %i.vi = sitofp nsz i32 %i.lj to double
  %i.vj = fdiv nsz double %i.vh, %i.vi
  %i.vk = fadd nsz double %i.ge, %i.vj
  %i.vl = tail call nsz double @llvm.floor.f64(double %i.vk)
  %i.vm = fmul nsz double %i.vl, 6.579300e+04
  %i.vn = fptoui double %i.vm to i32
  br label %.critedge.i

bb.bd:                                            ; preds = %bb.bd, %.lr.ph540.i.new
  %indvars.iv600.i = phi i64 [ %i.ug, %.lr.ph540.i.new ], [ %indvars.iv.next601.i.1, %bb.bd ] ; 2 uses
  %.0539.i = phi i32 [ 0, %.lr.ph540.i.new ], [ %.1.i.1, %bb.bd ]
  %.0375538.i = phi double [ 9.999000e+03, %.lr.ph540.i.new ], [ %.1376.i.1, %bb.bd ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph540.i.new ], [ %niter.next.1, %bb.bd ]
  %indvars.iv.next601.i = add nsw i64 %indvars.iv600.i, -1 ; 2 uses
  %i.vo = getelementptr inbounds nuw [16 x i8], ptr %.pre622.i, i64 %indvars.iv.next601.i ; 2 uses
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !28 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !28 ; 2 uses
  %i.vs = fmul nsz double %i.vr, %i.vr
  %i.vt = tail call nsz double @llvm.fmuladd.f64(double %i.vp, double %i.vp, double %i.vs) ; 2 uses
  %i.vu = fcmp nsz olt double %i.vt, %.0375538.i  ; 2 uses
  %.1376.i = select nsz i1 %i.vu, double %i.vt, double %.0375538.i ; 2 uses
  %i.vv = trunc nuw nsw i64 %indvars.iv.next601.i to i32
  %.1.i = select i1 %i.vu, i32 %i.vv, i32 %.0539.i
  %indvars.iv.next601.i.1 = add nsw i64 %indvars.iv600.i, -2 ; 4 uses
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %.pre622.i, i64 %indvars.iv.next601.i.1 ; 2 uses
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !28 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !28 ; 2 uses
  %i.wa = fmul nsz double %i.vz, %i.vz
  %i.wb = tail call nsz double @llvm.fmuladd.f64(double %i.vx, double %i.vx, double %i.wa) ; 2 uses
  %i.wc = fcmp nsz olt double %i.wb, %.1376.i     ; 2 uses
  %.1376.i.1 = select nsz i1 %i.wc, double %i.wb, double %.1376.i ; 3 uses
  %i.wd = trunc nuw nsw i64 %indvars.iv.next601.i.1 to i32
  %.1.i.1 = select i1 %i.wc, i32 %i.wd, i32 %.1.i ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.bd, !llvm.loop !49

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.bd
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph540.i
  %indvars.iv600.i.epil.init = phi i64 [ %i.ug, %.lr.ph540.i ], [ %indvars.iv.next601.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0539.i.epil.init = phi i32 [ 0, %.lr.ph540.i ], [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.0375538.i.epil.init = phi double [ 9.999000e+03, %.lr.ph540.i ], [ %.1376.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod372 = trunc i32 %.3398654.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod372)
  %indvars.iv.next601.i.epil = add nsw i64 %indvars.iv600.i.epil.init, -1 ; 2 uses
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %.pre622.i, i64 %indvars.iv.next601.i.epil ; 2 uses
  %i.wf = load double, ptr %i.we, align 8, !tbaa !28 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !28 ; 2 uses
  %i.wi = fmul nsz double %i.wh, %i.wh
  %i.wj = tail call nsz double @llvm.fmuladd.f64(double %i.wf, double %i.wf, double %i.wi) ; 2 uses
  %i.wk = fcmp nsz olt double %i.wj, %.0375538.i.epil.init ; 2 uses
  %.1376.i.epil = select nsz i1 %i.wk, double %i.wj, double %.0375538.i.epil.init
  %i.wl = trunc nuw nsw i64 %indvars.iv.next601.i.epil to i32
  %.1.i.epil = select i1 %i.wk, i32 %i.wl, i32 %.0539.i.epil.init
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.1376.i.lcssa = phi double [ %.1376.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.1376.i.epil, %.epil.preheader ]
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.wm = tail call nsz double @llvm.sqrt.f64(double %.1376.i.lcssa)
  %i.wn = zext nneg i32 %.1.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader488.i
  %.0375.lcssa.i = phi double [ f0x4058FFAE13F4A7D3, %.preheader488.i ], [ %i.wm, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader488.i ], [ %i.wn, %._crit_edge.loopexit.i ]
  %i.wo = getelementptr inbounds nuw [16 x i8], ptr %.pre622.i, i64 %.0.lcssa.i
  %i.wp = load <2 x double>, ptr %i.wo, align 8, !tbaa !28
  %i.wq = insertelement <2 x double> poison, double %.0375.lcssa.i, i64 0
  %i.wr = shufflevector <2 x double> %i.wq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ws = fdiv nsz <2 x double> %i.wp, %i.wr
  %i.wt = fadd nsz <2 x double> %i.ws, splat (double 1.000000e+00)
  %i.wu = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.wv = shufflevector <2 x double> %i.wu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ww = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wt, <2 x double> splat (double 1.270000e+02), <2 x double> %i.wv)
  %i.wx = fptrunc <2 x double> %i.ww to <2 x float> ; 2 uses
  %i.wy = extractelement <2 x float> %i.wx, i64 0
  %i.wz = tail call i64 @llvm.lrint.i64.f32(float %i.wy)
  %i.xa = extractelement <2 x float> %i.wx, i64 1
  %i.xb = tail call i64 @llvm.lrint.i64.f32(float %i.xa)
  %i.xc = shl nsw i64 %i.xb, 8
  %i.xd = add nsw i64 %i.xc, %i.wz
  %i.xe = trunc i64 %i.xd to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ba, %.preheader.i, %._crit_edge.i, %bb.bc, %bb.bb, %.thread474.thread.i, %.thread474.i, %bb.au
  %.5.i = phi i32 [ %.3.i, %.thread474.i ], [ 0, %.thread474.thread.i ], [ %i.vn, %bb.bc ], [ %i.xe, %._crit_edge.i ], [ %i.vf, %bb.bb ], [ 16777215, %bb.au ], [ 0, %.preheader.i ], [ 0, %bb.ba ]
  %i.xf = or i32 %.5.i, -16777216                 ; 2 uses
  store i32 %i.xf, ptr %gep.i, align 4, !tbaa !44
  %i.xg = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.xh = icmp slt i32 %.1459543.i, %i.xg
  br i1 %i.xh, label %.sink.split.i, label %bb.be

.sink.split.i:                                    ; preds = %.critedge.i, %bb.ah
  %.sink.i = phi i32 [ %i.kg, %bb.ah ], [ %i.xf, %.critedge.i ]
  %i.xi = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.xj = sext i32 %.1459543.i to i64
  %i.xk = getelementptr inbounds [24 x i8], ptr %i.xi, i64 %i.xj ; 3 uses
  store double %i.gb, ptr %i.xk, align 8, !tbaa !28
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store double %i.cc, ptr %i.xl, align 8, !tbaa !28
  %i.xm = add nsw i32 %.1459543.i, 1
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store i32 %.sink.i, ptr %i.xn, align 8, !tbaa !70
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i, %.critedge.i, %bb.ah, %bb.n
  %.2460.i = phi i32 [ %.1459543.i, %bb.ah ], [ %.1459543.i, %.critedge.i ], [ %.1459543.i, %bb.n ], [ %i.xm, %.sink.split.i ] ; 2 uses
  %indvars.iv.next609.i = add nuw nsw i64 %indvars.iv608.i, 1 ; 2 uses
  %i.xo = load i32, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.xp = sext i32 %i.xo to i64
  %i.xq = icmp slt i64 %indvars.iv.next609.i, %i.xp
  br i1 %i.xq, label %bb.n, label %._crit_edge547.i, !llvm.loop !50

._crit_edge547.i:                                 ; preds = %bb.be, %fill_from_cache.exit428.i
  %.1459.lcssa.i = phi i32 [ %.5463.i, %fill_from_cache.exit428.i ], [ %.2460.i, %bb.be ] ; 3 uses
  %i.xr = fadd nsz double %i.bt, %i.cc
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !19 ; 7 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.val.i, i64 152
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !64
  %i.xu = fcmp nsz une double %i.xt, 0.000000e+00
  br i1 %i.xu, label %fill_from_cache.exit438.i, label %.preheader.i429.i

.preheader.i429.i:                                ; preds = %._crit_edge547.i
  %i.xv = getelementptr inbounds nuw i8, ptr %.val.i, i64 104 ; 2 uses
end_hunk_0
