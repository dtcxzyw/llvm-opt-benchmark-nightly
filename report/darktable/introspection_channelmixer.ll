Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_channelmixer?download=true
inline.NumInlined: 31
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@process:bb.a

bb.u:                                             ; preds = %bb.s
  %i.gj = fadd reassoc nsz arcp contract afn float %i.ga, %i.gb
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gb, %i.ga
  %i.gl = fsub reassoc nsz arcp contract afn float %i.gj, %i.gk
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gm = phi float [ %i.gi, %bb.t ], [ %i.gl, %bb.u ] ; 10 uses
  %i.gn = fmul reassoc nsz arcp contract afn double %i.gd, 2.000000e+00
  %i.go = fpext reassoc nsz arcp contract afn float %i.gm to double
  %i.gp = fsub reassoc nsz arcp contract afn double %i.gn, %i.go
  %i.gq = fptrunc reassoc nsz arcp contract afn double %i.gp to float ; 15 uses
  %i.gr = fmul reassoc nsz arcp contract afn float %i.fz, 6.000000e+00 ; 8 uses
  %i.gs = fcmp reassoc nsz arcp contract afn olt float %i.gr, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.gs, float 2.000000e+00, float -4.000000e+00
  %i.gt = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.gr ; 5 uses
  %i.gu = fcmp reassoc nsz arcp contract afn olt float %i.gt, 1.000000e+00
  br i1 %i.gu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gv = fsub reassoc nsz arcp contract afn float %i.gm, %i.gq
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.gt
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, %i.gq
  br label %hue2rgb.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.gy = fcmp reassoc nsz arcp contract afn olt float %i.gt, 3.000000e+00
  br i1 %i.gy, label %hue2rgb.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gz = fcmp reassoc nsz arcp contract afn olt float %i.gt, 4.000000e+00
  %i.ha = fsub reassoc nsz arcp contract afn float %i.gm, %i.gq
  %i.hb = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gt
  %i.hc = fmul reassoc nsz arcp contract afn float %i.ha, %i.hb
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hc, %i.gq
  %i.he = select reassoc nsz arcp contract afn i1 %i.gz, float %i.hd, float %i.gq
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.i.i = phi nsz float [ %i.gx, %bb.w ], [ %i.he, %bb.y ], [ %i.gm, %bb.x ] ; 3 uses
  %i.hf = fcmp reassoc nsz arcp contract afn olt float %i.gr, 1.000000e+00
  br i1 %i.hf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %hue2rgb.exit.i.i
  %i.hg = fsub reassoc nsz arcp contract afn float %i.gm, %i.gq
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, %i.gr
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hh, %i.gq
  br label %hue2rgb.exit36.i.i

bb.aa:                                            ; preds = %hue2rgb.exit.i.i
  %i.hj = fcmp reassoc nsz arcp contract afn olt float %i.gr, 3.000000e+00
  br i1 %i.hj, label %hue2rgb.exit36.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = fsub reassoc nsz arcp contract afn float %i.gm, %i.gq
  %i.hl = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gr
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hk, %i.hl
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, %i.gq
  %i.ho = select reassoc nsz arcp contract afn i1 %i.gs, float %i.hn, float %i.gq
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.i35.i.i = phi nsz float [ %i.hi, %bb.z ], [ %i.ho, %bb.ab ], [ %i.gm, %bb.aa ] ; 3 uses
  %i.hp = fcmp reassoc nsz arcp contract afn ogt float %i.gr, 2.000000e+00
  %.v34.i.i = select i1 %i.hp, float -2.000000e+00, float 4.000000e+00
  %i.hq = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.gr ; 5 uses
  %i.hr = fcmp reassoc nsz arcp contract afn olt float %i.hq, 1.000000e+00
  br i1 %i.hr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %hue2rgb.exit36.i.i
  %i.hs = fsub reassoc nsz arcp contract afn float %i.gm, %i.gq
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hs, %i.hq
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.gq
  br label %.loopexit.i

bb.ad:                                            ; preds = %hue2rgb.exit36.i.i
  %i.hv = fcmp reassoc nsz arcp contract afn olt float %i.hq, 3.000000e+00
  br i1 %i.hv, label %.loopexit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hw = fcmp reassoc nsz arcp contract afn olt float %i.hq, 4.000000e+00
  %i.hx = fsub reassoc nsz arcp contract afn float %i.gm, %i.gq
  %i.hy = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.hq
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hx, %i.hy
  %i.ia = fadd reassoc nsz arcp contract afn float %i.hz, %i.gq
  %i.ib = select reassoc nsz arcp contract afn i1 %i.hw, float %i.ia, float %i.gq
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ae, %bb.ad, %bb.ac, %rgb2hsl.exit.i, %bb.f
  %.sroa.9.1.i = phi nsz float [ %i.dx, %bb.f ], [ %i.gb, %rgb2hsl.exit.i ], [ %i.hu, %bb.ac ], [ %i.ib, %bb.ae ], [ %i.gm, %bb.ad ] ; 3 uses
  %.sroa.6.1.i = phi nsz float [ %i.dy, %bb.f ], [ %i.gb, %rgb2hsl.exit.i ], [ %.0.i35.i.i, %bb.ac ], [ %.0.i35.i.i, %bb.ae ], [ %.0.i35.i.i, %bb.ad ] ; 3 uses
  %.sroa.0.1.i = phi nsz float [ %i.dl, %bb.f ], [ %i.gb, %rgb2hsl.exit.i ], [ %.0.i.i.i, %bb.ac ], [ %.0.i.i.i, %bb.ae ], [ %.0.i.i.i, %bb.ad ] ; 3 uses
  %i.ic = getelementptr [4 x i8], ptr %3, i64 %.07110.i ; 3 uses
  %i.id = fmul reassoc nsz arcp contract afn float %.sroa.0.1.i, %i.ct
  %i.ie = fmul reassoc nsz arcp contract afn float %.sroa.6.1.i, %i.cv
  %i.if = fmul reassoc nsz arcp contract afn float %.sroa.9.1.i, %i.cx
  %i.ig = fadd reassoc nsz arcp contract afn float %i.ie, %i.if
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ig, %i.id
  %i.ii = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ih, float 0.000000e+00)
  %i.ij = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ii, float 1.000000e+00)
  store float %i.ij, ptr %i.ic, align 4, !tbaa !12, !alias.scope !126, !noalias !125
  %i.ik = fmul reassoc nsz arcp contract afn float %.sroa.0.1.i, %i.cz
  %i.il = fmul reassoc nsz arcp contract afn float %.sroa.6.1.i, %i.db
  %i.im = fmul reassoc nsz arcp contract afn float %.sroa.9.1.i, %i.dd
  %i.in = fadd reassoc nsz arcp contract afn float %i.il, %i.im
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.ik
  %i.ip = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.io, float 0.000000e+00)
  %i.iq = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ip, float 1.000000e+00)
  %i.ir = getelementptr i8, ptr %i.ic, i64 4
  store float %i.iq, ptr %i.ir, align 4, !tbaa !12, !alias.scope !126, !noalias !125
  %i.is = fmul reassoc nsz arcp contract afn float %.sroa.0.1.i, %i.df
  %i.it = fmul reassoc nsz arcp contract afn float %.sroa.6.1.i, %i.dh
  %i.iu = fmul reassoc nsz arcp contract afn float %.sroa.9.1.i, %i.dj
  %i.iv = fadd reassoc nsz arcp contract afn float %i.it, %i.iu
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, %i.is
  %i.ix = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iw, float 0.000000e+00)
  %i.iy = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ix, float 1.000000e+00)
  %i.iz = getelementptr i8, ptr %i.ic, i64 8
  store float %i.iy, ptr %i.iz, align 4, !tbaa !12, !alias.scope !126, !noalias !125
  %i.ja = add i64 %.07110.i, %i.cc                ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.cg
  br i1 %i.jb, label %bb.f, label %process_rgb.exit

bb.af:                                            ; preds = %bb.a
  %i.jc = getelementptr i8, ptr %1, i64 132
  %.val30 = load i32, ptr %i.jc, align 4, !tbaa !116
  %i.jd = getelementptr i8, ptr %5, i64 8
  %.val31 = load i32, ptr %i.jd, align 4, !tbaa !117
  %i.je = getelementptr i8, ptr %5, i64 12
  %.val32 = load i32, ptr %i.je, align 4, !tbaa !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.jf = sext i32 %.val30 to i64                 ; 2 uses
  %i.jg = sext i32 %.val31 to i64
  %i.jh = mul nsw i64 %i.jg, %i.jf
  %i.ji = sext i32 %.val32 to i64
  %i.jj = mul i64 %i.jh, %i.ji                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.jj, 0
  br i1 %.not.i36, label %process_rgb.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.af
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.phi.trans.insert45.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.jl = load <4 x float>, ptr %i.b, align 4, !tbaa !12, !noalias !130 ; 3 uses
  %i.jm = load <2 x float>, ptr %.phi.trans.insert45.i, align 4, !tbaa !12, !noalias !130
  %.phi.trans.insert50.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre51.i = load float, ptr %.phi.trans.insert50.i, align 4, !tbaa !12, !noalias !130
  %.phi.trans.insert53.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.pre54.i = load float, ptr %.phi.trans.insert53.i, align 4, !tbaa !12, !noalias !130
  %.phi.trans.insert56.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre57.i = load float, ptr %.phi.trans.insert56.i, align 4, !tbaa !12, !noalias !130
  %i.jn = load float, ptr %i.jk, align 4, !tbaa !12, !noalias !130
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !12, !noalias !130
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !12, !noalias !130
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.jt = load float, ptr %i.js, align 4, !tbaa !12, !noalias !130
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !12, !noalias !130
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !12, !noalias !130
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !12, !noalias !130
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !12, !noalias !130
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !12, !noalias !130
  %i.ke = shufflevector <2 x float> %i.jm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kf = shufflevector <4 x float> %i.jl, <4 x float> %i.ke, <2 x i32> <i32 0, i32 4>
  %i.kg = shufflevector <4 x float> %i.jl, <4 x float> %i.ke, <2 x i32> <i32 2, i32 5>
  %i.kh = shufflevector <4 x float> %i.jl, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  br label %bb.ag

bb.ag:                                            ; preds = %hsl2rgb.exit.i, %.lr.ph.i37
  %.05310.i = phi i64 [ 0, %.lr.ph.i37 ], [ %i.pu, %hsl2rgb.exit.i ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05310.i ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 8
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !12, !alias.scope !128, !noalias !129 ; 4 uses
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kk, %.pre57.i
  %i.km = load <2 x float>, ptr %i.ki, align 4, !tbaa !12, !alias.scope !128, !noalias !129 ; 4 uses
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ko = fmul reassoc nsz arcp contract afn <2 x float> %i.kn, %i.kh
  %i.kp = fmul reassoc nsz arcp contract afn <2 x float> %i.km, %i.kf
  %i.kq = fadd reassoc nsz arcp contract afn <2 x float> %i.kp, %i.ko
  %i.kr = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul reassoc nsz arcp contract afn <2 x float> %i.ks, %i.kg
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kq, %i.kt
  %i.kv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ku, <2 x float> zeroinitializer)
  %i.kw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.kv, <2 x float> splat (float 1.000000e+00)) ; 3 uses
  %i.kx = extractelement <2 x float> %i.km, i64 0 ; 3 uses
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, %.pre51.i
  %i.kz = extractelement <2 x float> %i.km, i64 1 ; 3 uses
  %i.la = fmul reassoc nsz arcp contract afn float %i.kz, %.pre54.i
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.ky
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.kl
  %i.ld = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lc, float 0.000000e+00)
  %i.le = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ld, float 1.000000e+00) ; 2 uses
  %i.lf = fcmp reassoc nsz arcp contract afn une <2 x float> %i.kw, zeroinitializer ; 2 uses
  %6 = extractelement <2 x i1> %i.lf, i64 0       ; 2 uses
  %7 = extractelement <2 x i1> %i.lf, i64 1       ; 2 uses
  %or.cond.i40 = or i1 %6, %7
  %i.lg = fcmp reassoc nsz arcp contract afn une float %i.le, 0.000000e+00 ; 2 uses
  %or.cond61.i = or i1 %i.lg, %or.cond.i40
  br i1 %or.cond61.i, label %bb.ah, label %hsl2rgb.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.lh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kx, float 0.000000e+00)
  %i.li = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.lh, float 1.000000e+00) ; 5 uses
  %i.lj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kz, float 0.000000e+00)
  %i.lk = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.lj, float 1.000000e+00) ; 5 uses
  %i.ll = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kk, float 0.000000e+00)
  %i.lm = tail call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ll, float 1.000000e+00) ; 5 uses
  %i.ln = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.li, float %i.lk)
  %i.lo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ln, float %i.lm) ; 6 uses
  %i.lp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.li, float %i.lk)
  %i.lq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.lp, float %i.lm) ; 3 uses
  %i.lr = fsub reassoc nsz arcp contract afn float %i.lo, %i.lq ; 5 uses
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lq, %i.lo ; 2 uses
  %i.lt = fmul reassoc nnan nsz arcp contract afn float %i.ls, 5.000000e-01 ; 2 uses
  %i.lu = fcmp reassoc nsz arcp contract afn une float %i.lr, 0.000000e+00
  br i1 %i.lu, label %bb.ai, label %rgb2hsl.exit.i41

bb.ai:                                            ; preds = %bb.ah
  %i.lv = fcmp reassoc nsz arcp contract afn olt float %i.lt, 5.000000e-01
  br i1 %i.lv, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lw = fpext reassoc nsz arcp contract afn float %i.lo to double
  %i.lx = fpext reassoc nsz arcp contract afn float %i.lq to double
  %i.ly = fadd reassoc nsz arcp contract afn double %i.lx, %i.lw
  %i.lz = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.ly
  %i.ma = fptrunc reassoc nsz arcp contract afn double %i.lz to float
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i.i50 = phi float [ %i.ma, %bb.aj ], [ %i.ls, %bb.ai ]
  %i.mb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i.i50, float f0x37800000)
  %i.mc = fdiv reassoc nsz arcp contract afn float %i.lr, %i.mb ; 2 uses
  %i.md = fcmp reassoc nsz arcp contract afn oeq float %i.lo, %i.li
  br i1 %i.md, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.me = fsub reassoc nsz arcp contract afn float %i.lk, %i.lm
  %i.mf = fdiv reassoc nsz arcp contract afn float %i.me, %i.lr
  br label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %i.mg = fcmp reassoc nsz arcp contract afn oeq float %i.lo, %i.lk
  br i1 %i.mg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.mh = fsub reassoc nsz arcp contract afn float %i.lm, %i.li
  %i.mi = fdiv reassoc nsz arcp contract afn float %i.mh, %i.lr
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mi, 2.000000e+00
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.mk = fcmp reassoc nsz arcp contract afn oeq float %i.lo, %i.lm
  br i1 %i.mk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ml = fsub reassoc nsz arcp contract afn float %i.li, %i.lk
  %i.mm = fdiv reassoc nsz arcp contract afn float %i.ml, %i.lr
  %i.mn = fadd reassoc nsz arcp contract afn float %i.mm, 4.000000e+00
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al
  %.043.i.i51 = phi nsz float [ %i.mf, %bb.al ], [ %i.mj, %bb.an ], [ %i.mn, %bb.ap ], [ 0.000000e+00, %bb.ao ]
  %i.mo = fpext reassoc nsz arcp contract afn float %.043.i.i51 to double
  %i.mp = fmul reassoc nsz arcp contract afn double %i.mo, f0x3FC5555555555555 ; 3 uses
  %i.mq = fptrunc reassoc nsz arcp contract afn double %i.mp to float ; 3 uses
  %i.mr = fcmp reassoc nsz arcp contract afn olt double %i.mp, f0xB690000000000000
  br i1 %i.mr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ms = fadd reassoc nnan nsz arcp contract afn float %i.mq, 1.000000e+00
  br label %rgb2hsl.exit.i41

bb.as:                                            ; preds = %bb.aq
  %i.mt = fcmp reassoc nsz arcp contract afn ogt double %i.mp, f0x3FF0000010000000
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mq, -1.000000e+00
  %spec.select.i.i52 = select nsz i1 %i.mt, float %i.mu, float %i.mq
  br label %rgb2hsl.exit.i41

rgb2hsl.exit.i41:                                 ; preds = %bb.as, %bb.ar, %bb.ah
  %.1.i.i42 = phi nsz float [ %i.ms, %bb.ar ], [ 0.000000e+00, %bb.ah ], [ %spec.select.i.i52, %bb.as ]
  %.0.i.i43 = phi nsz float [ %i.mc, %bb.ar ], [ 0.000000e+00, %bb.ah ], [ %i.mc, %bb.as ]
  %i.mv = extractelement <2 x float> %i.kw, i64 0
  %spec.select.i = select reassoc nsz arcp contract afn i1 %6, float %i.mv, float %.1.i.i42
  %i.mw = extractelement <2 x float> %i.kw, i64 1
  %i.mx = select reassoc nsz arcp contract afn i1 %7, float %i.mw, float %.0.i.i43 ; 4 uses
  %i.my = select reassoc nsz arcp contract afn i1 %i.lg, float %i.le, float %i.lt ; 7 uses
  %i.mz = fcmp reassoc nsz arcp contract afn oeq float %i.mx, 0.000000e+00
  br i1 %i.mz, label %hsl2rgb.exit.i, label %bb.at

bb.at:                                            ; preds = %rgb2hsl.exit.i41
  %i.na = fpext reassoc nsz arcp contract afn float %i.my to double ; 2 uses
  %i.nb = fcmp reassoc nsz arcp contract afn olt float %i.my, 5.000000e-01
  br i1 %i.nb, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nc = fpext reassoc nsz arcp contract afn float %i.mx to double
  %i.nd = fadd reassoc nsz arcp contract afn double %i.nc, 1.000000e+00
  %i.ne = fmul reassoc nsz arcp contract afn double %i.nd, %i.na
  %i.nf = fptrunc reassoc nsz arcp contract afn double %i.ne to float
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ng = fadd reassoc nsz arcp contract afn float %i.mx, %i.my
  %i.nh = fmul reassoc nsz arcp contract afn float %i.my, %i.mx
  %i.ni = fsub reassoc nsz arcp contract afn float %i.ng, %i.nh
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.nj = phi float [ %i.nf, %bb.au ], [ %i.ni, %bb.av ] ; 10 uses
  %i.nk = fmul reassoc nnan nsz arcp contract afn double %i.na, 2.000000e+00
  %i.nl = fpext reassoc nsz arcp contract afn float %i.nj to double
  %i.nm = fsub reassoc nsz arcp contract afn double %i.nk, %i.nl
  %i.nn = fptrunc reassoc nsz arcp contract afn double %i.nm to float ; 15 uses
  %i.no = fmul reassoc nsz arcp contract afn float %spec.select.i, 6.000000e+00 ; 8 uses
  %i.np = fcmp reassoc nsz arcp contract afn olt float %i.no, 4.000000e+00 ; 2 uses
  %.v.i.i44 = select i1 %i.np, float 2.000000e+00, float -4.000000e+00
  %i.nq = fadd reassoc nsz arcp contract afn float %.v.i.i44, %i.no ; 5 uses
  %i.nr = fcmp reassoc nsz arcp contract afn olt float %i.nq, 1.000000e+00
  br i1 %i.nr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ns = fsub reassoc nsz arcp contract afn float %i.nj, %i.nn
  %i.nt = fmul reassoc nsz arcp contract afn float %i.ns, %i.nq
  %i.nu = fadd reassoc nsz arcp contract afn float %i.nt, %i.nn
  br label %hue2rgb.exit.i.i45

bb.ay:                                            ; preds = %bb.aw
  %i.nv = fcmp reassoc nsz arcp contract afn olt float %i.nq, 3.000000e+00
  br i1 %i.nv, label %hue2rgb.exit.i.i45, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nw = fcmp reassoc nsz arcp contract afn olt float %i.nq, 4.000000e+00
  %i.nx = fsub reassoc nsz arcp contract afn float %i.nj, %i.nn
  %i.ny = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.nq
  %i.nz = fmul reassoc nsz arcp contract afn float %i.nx, %i.ny
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, %i.nn
  %i.ob = select reassoc nsz arcp contract afn i1 %i.nw, float %i.oa, float %i.nn
  br label %hue2rgb.exit.i.i45

hue2rgb.exit.i.i45:                               ; preds = %bb.az, %bb.ay, %bb.ax
  %.0.i.i.i46 = phi nsz float [ %i.nu, %bb.ax ], [ %i.ob, %bb.az ], [ %i.nj, %bb.ay ] ; 3 uses
  %i.oc = fcmp reassoc nsz arcp contract afn olt float %i.no, 1.000000e+00
  br i1 %i.oc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %hue2rgb.exit.i.i45
  %i.od = fsub reassoc nsz arcp contract afn float %i.nj, %i.nn
  %i.oe = fmul reassoc nsz arcp contract afn float %i.od, %i.no
  %i.of = fadd reassoc nsz arcp contract afn float %i.oe, %i.nn
  br label %hue2rgb.exit36.i.i47

bb.bb:                                            ; preds = %hue2rgb.exit.i.i45
  %i.og = fcmp reassoc nsz arcp contract afn olt float %i.no, 3.000000e+00
  br i1 %i.og, label %hue2rgb.exit36.i.i47, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oh = fsub reassoc nsz arcp contract afn float %i.nj, %i.nn
  %i.oi = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.no
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oh, %i.oi
  %i.ok = fadd reassoc nsz arcp contract afn float %i.oj, %i.nn
  %i.ol = select reassoc nsz arcp contract afn i1 %i.np, float %i.ok, float %i.nn
  br label %hue2rgb.exit36.i.i47

hue2rgb.exit36.i.i47:                             ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0.i35.i.i48 = phi nsz float [ %i.of, %bb.ba ], [ %i.ol, %bb.bc ], [ %i.nj, %bb.bb ] ; 3 uses
  %i.om = fcmp reassoc nsz arcp contract afn ogt float %i.no, 2.000000e+00
  %.v34.i.i49 = select i1 %i.om, float -2.000000e+00, float 4.000000e+00
  %i.on = fadd reassoc nsz arcp contract afn float %.v34.i.i49, %i.no ; 5 uses
  %i.oo = fcmp reassoc nsz arcp contract afn olt float %i.on, 1.000000e+00
  br i1 %i.oo, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %hue2rgb.exit36.i.i47
  %i.op = fsub reassoc nsz arcp contract afn float %i.nj, %i.nn
  %i.oq = fmul reassoc nsz arcp contract afn float %i.op, %i.on
  %i.or = fadd reassoc nsz arcp contract afn float %i.oq, %i.nn
  br label %hsl2rgb.exit.i

bb.be:                                            ; preds = %hue2rgb.exit36.i.i47
  %i.os = fcmp reassoc nsz arcp contract afn olt float %i.on, 3.000000e+00
  br i1 %i.os, label %hsl2rgb.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ot = fcmp reassoc nsz arcp contract afn olt float %i.on, 4.000000e+00
  %i.ou = fsub reassoc nsz arcp contract afn float %i.nj, %i.nn
  %i.ov = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.on
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ou, %i.ov
  %i.ox = fadd reassoc nsz arcp contract afn float %i.ow, %i.nn
  %i.oy = select reassoc nsz arcp contract afn i1 %i.ot, float %i.ox, float %i.nn
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.bf, %bb.be, %bb.bd, %rgb2hsl.exit.i41, %bb.ag
  %.sroa.1033.1.i = phi nsz float [ %i.kz, %bb.ag ], [ %i.my, %rgb2hsl.exit.i41 ], [ %.0.i35.i.i48, %bb.bf ], [ %.0.i35.i.i48, %bb.be ], [ %.0.i35.i.i48, %bb.bd ] ; 3 uses
  %.sroa.029.1.i = phi nsz float [ %i.kx, %bb.ag ], [ %i.my, %rgb2hsl.exit.i41 ], [ %.0.i.i.i46, %bb.bf ], [ %.0.i.i.i46, %bb.be ], [ %.0.i.i.i46, %bb.bd ] ; 3 uses
  %.sroa.18.1.i = phi nsz float [ %i.kk, %bb.ag ], [ %i.my, %rgb2hsl.exit.i41 ], [ %i.oy, %bb.bf ], [ %i.nj, %bb.be ], [ %i.or, %bb.bd ] ; 3 uses
  %i.oz = getelementptr [4 x i8], ptr %3, i64 %.05310.i ; 3 uses
  %i.pa = fmul reassoc nsz arcp contract afn float %.sroa.029.1.i, %i.jn
  %i.pb = fmul reassoc nsz arcp contract afn float %.sroa.1033.1.i, %i.jp
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pa, %i.pb
  %i.pd = fmul reassoc nsz arcp contract afn float %.sroa.18.1.i, %i.jr
  %i.pe = fadd reassoc nsz arcp contract afn float %i.pc, %i.pd
  %i.pf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pe, float 0.000000e+00)
  store float %i.pf, ptr %i.oz, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %i.pg = fmul reassoc nsz arcp contract afn float %.sroa.029.1.i, %i.jt
  %i.ph = fmul reassoc nsz arcp contract afn float %.sroa.1033.1.i, %i.jv
  %i.pi = fadd reassoc nsz arcp contract afn float %i.pg, %i.ph
  %i.pj = fmul reassoc nsz arcp contract afn float %.sroa.18.1.i, %i.jx
  %i.pk = fadd reassoc nsz arcp contract afn float %i.pi, %i.pj
  %i.pl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pk, float 0.000000e+00)
  %i.pm = getelementptr i8, ptr %i.oz, i64 4
  store float %i.pl, ptr %i.pm, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %i.pn = fmul reassoc nsz arcp contract afn float %.sroa.029.1.i, %i.jz
  %i.po = fmul reassoc nsz arcp contract afn float %.sroa.1033.1.i, %i.kb
  %i.pp = fadd reassoc nsz arcp contract afn float %i.pn, %i.po
  %i.pq = fmul reassoc nsz arcp contract afn float %.sroa.18.1.i, %i.kd
  %i.pr = fadd reassoc nsz arcp contract afn float %i.pp, %i.pq
  %i.ps = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pr, float 0.000000e+00)
  %i.pt = getelementptr i8, ptr %i.oz, i64 8
  store float %i.ps, ptr %i.pt, align 4, !tbaa !12, !alias.scope !129, !noalias !128
  %i.pu = add i64 %.05310.i, %i.jf                ; 2 uses
  %i.pv = icmp ult i64 %i.pu, %i.jj
  br i1 %i.pv, label %bb.ag, label %process_rgb.exit

process_rgb.exit:                                 ; preds = %hsl2rgb.exit.i, %.loopexit.i, %bb.d, %.preheader.i, %bb.af, %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !39
  store i32 -999, ptr %i.a, align 4, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31  ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load float, ptr %1, align 4, !tbaa !12
  store float %i.e, ptr %i.b, align 4, !tbaa !12
  %i.f = load float, ptr %i.c, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.f, ptr %i.g, align 4, !tbaa !12
  %i.h = load float, ptr %i.d, align 4, !tbaa !12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !12
  %i.j = load float, ptr %1, align 4, !tbaa !12
  %i.k = fcmp reassoc nsz arcp contract afn une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load float, ptr %i.c, align 4, !tbaa !12
  %i.m = fcmp reassoc nsz arcp contract afn une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp reassoc nsz arcp contract afn une float %i.h, 0.000000e+00
  %i.o = zext i1 %i.n to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.r, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
end_hunk_0
