inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@filter_freq_expr_8:bb.a
  %i.ed = fmul nsz <4 x float> %i.dy, splat (float f0x3E8D42AF)
  %i.ee = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> splat (float f0x3FB18A86), <4 x float> %i.ed) ; 2 uses
  %i.ef = fmul nsz <4 x float> %i.dx, splat (float f0x3F49234E)
  %i.eg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> splat (float f0x3F968317), <4 x float> %i.ef) ; 2 uses
  %i.eh = fmul nsz <4 x float> %i.dx, splat (float f0x3F968317)
  %i.ei = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> splat (float f0xBF49234E), <4 x float> %i.eh) ; 2 uses
  %i.ej = fmul nsz <4 x float> %i.dy, splat (float f0xBFB18A86)
  %i.ek = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> splat (float f0x3E8D42AF), <4 x float> %i.ej) ; 2 uses
  %i.el = fsub nsz <4 x float> %i.ee, %i.eg
  %i.em = fmul nsz <4 x float> %i.el, splat (float f0x3EB504F3) ; 2 uses
  %i.en = fsub nsz <4 x float> %i.ei, %i.ek
  %i.eo = fmul nsz <4 x float> %i.en, splat (float f0x3EB504F3) ; 2 uses
  %i.ep = fadd nsz <4 x float> %i.ea, %i.dz
  %i.eq = fmul nsz <4 x float> %i.ep, splat (float f0x3EB504F3)
  store <4 x float> %i.eq, ptr %next.gep.1, align 16, !tbaa !76
  %i.er = fadd nsz <4 x float> %i.eg, %i.ee
  %i.es = fmul nsz <4 x float> %i.er, splat (float f0x3EB504F3)
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x float> %i.es, ptr %i.et, align 16, !tbaa !76
  %i.eu = fmul nsz <4 x float> %i.ec, splat (float f0x3E43EF15)
  %i.ev = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> splat (float f0x3EEC835E), <4 x float> %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <4 x float> %i.ev, ptr %i.ew, align 16, !tbaa !76
  %i.ex = fsub nsz <4 x float> %i.em, %i.eo
  %i.ey = fmul nsz <4 x float> %i.ex, splat (float f0x3F3504F3)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store <4 x float> %i.ey, ptr %i.ez, align 16, !tbaa !76
  %i.fa = fsub nsz <4 x float> %i.dz, %i.ea
  %i.fb = fmul nsz <4 x float> %i.fa, splat (float f0x3EB504F3)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <4 x float> %i.fb, ptr %i.fc, align 16, !tbaa !76
  %i.fd = fadd nsz <4 x float> %i.em, %i.eo
  %i.fe = fmul nsz <4 x float> %i.fd, splat (float f0x3F3504F3)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store <4 x float> %i.fe, ptr %i.ff, align 16, !tbaa !76
  %i.fg = fmul nsz <4 x float> %i.ec, splat (float f0xBEEC835E)
  %i.fh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> splat (float f0x3E43EF15), <4 x float> %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store <4 x float> %i.fh, ptr %i.fi, align 16, !tbaa !76
  %i.fj = fadd nsz <4 x float> %i.ei, %i.ek
  %i.fk = fmul nsz <4 x float> %i.fj, splat (float f0x3EB504F3)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store <4 x float> %i.fk, ptr %i.fl, align 16, !tbaa !76
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.d ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %vector.body46.preheader, label %fdct8_1d.exit

vector.body46.preheader:                          ; preds = %fdct8_1d.exit, %vector.body
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46.preheader, %vector.body46
  %index47 = phi i64 [ %index.next53, %vector.body46 ], [ 0, %vector.body46.preheader ] ; 2 uses
  %i.fo = shl i64 %index47, 5                     ; 5 uses
  %next.gep48 = getelementptr i8, ptr %i.a, i64 %i.fo
  %next.gep49 = getelementptr i8, ptr %i.b, i64 %i.fo ; 8 uses
  %i.fp = getelementptr i8, ptr %i.b, i64 %i.fo   ; 8 uses
  %next.gep50 = getelementptr i8, ptr %i.fp, i64 32
  %i.fq = getelementptr i8, ptr %i.b, i64 %i.fo   ; 8 uses
  %next.gep51 = getelementptr i8, ptr %i.fq, i64 64
  %i.fr = getelementptr i8, ptr %i.b, i64 %i.fo   ; 8 uses
  %next.gep52 = getelementptr i8, ptr %i.fr, i64 96
  %i.fs = load float, ptr %next.gep49, align 16, !tbaa !76
  %i.ft = load float, ptr %next.gep50, align 16, !tbaa !76
  %i.fu = load float, ptr %next.gep51, align 16, !tbaa !76
  %i.fv = load float, ptr %next.gep52, align 16, !tbaa !76
  %i.fw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 2
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 3
  %i.ga = fmul nsz <4 x float> %i.fz, splat (float f0x3FB504F3) ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %next.gep49, i64 4
  %i.gc = getelementptr i8, ptr %i.fp, i64 36
  %i.gd = getelementptr i8, ptr %i.fq, i64 68
  %i.ge = getelementptr i8, ptr %i.fr, i64 100
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !76
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !76
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !76
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !76
  %i.gj = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gk = insertelement <4 x float> %i.gj, float %i.gg, i64 1
  %i.gl = insertelement <4 x float> %i.gk, float %i.gh, i64 2
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %next.gep49, i64 28
  %i.go = getelementptr i8, ptr %i.fp, i64 60
  %i.gp = getelementptr i8, ptr %i.fq, i64 92
  %i.gq = getelementptr i8, ptr %i.fr, i64 124
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !76
  %i.gs = load float, ptr %i.go, align 4, !tbaa !76
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !76
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !76
  %i.gv = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 2
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 3 ; 2 uses
  %i.gz = fmul nsz <4 x float> %i.gy, splat (float f0x3E8D42AF)
  %i.ha = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> splat (float f0x3FB18A86), <4 x float> %i.gz) ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %next.gep49, i64 8
  %i.hc = getelementptr i8, ptr %i.fp, i64 40
  %i.hd = getelementptr i8, ptr %i.fq, i64 72
  %i.he = getelementptr i8, ptr %i.fr, i64 104
  %i.hf = load float, ptr %i.hb, align 8, !tbaa !76
  %i.hg = load float, ptr %i.hc, align 8, !tbaa !76
  %i.hh = load float, ptr %i.hd, align 8, !tbaa !76
  %i.hi = load float, ptr %i.he, align 8, !tbaa !76
  %i.hj = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 1
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 2
  %i.hm = insertelement <4 x float> %i.hl, float %i.hi, i64 3 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %next.gep49, i64 24
  %i.ho = getelementptr i8, ptr %i.fp, i64 56
  %i.hp = getelementptr i8, ptr %i.fq, i64 88
  %i.hq = getelementptr i8, ptr %i.fr, i64 120
  %i.hr = load float, ptr %i.hn, align 8, !tbaa !76
  %i.hs = load float, ptr %i.ho, align 8, !tbaa !76
  %i.ht = load float, ptr %i.hp, align 8, !tbaa !76
  %i.hu = load float, ptr %i.hq, align 8, !tbaa !76
  %i.hv = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 1
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 2
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 3 ; 2 uses
  %i.hz = fmul nsz <4 x float> %i.hy, splat (float f0x3F0A8BD4)
  %i.ia = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.hz)
  %i.ib = getelementptr inbounds nuw i8, ptr %next.gep49, i64 12
  %i.ic = getelementptr i8, ptr %i.fp, i64 44
  %i.id = getelementptr i8, ptr %i.fq, i64 76
  %i.ie = getelementptr i8, ptr %i.fr, i64 108
  %i.if = load float, ptr %i.ib, align 4, !tbaa !76
  %i.ig = load float, ptr %i.ic, align 4, !tbaa !76
  %i.ih = load float, ptr %i.id, align 4, !tbaa !76
  %i.ii = load float, ptr %i.ie, align 4, !tbaa !76
  %i.ij = insertelement <4 x float> poison, float %i.if, i64 0
  %i.ik = insertelement <4 x float> %i.ij, float %i.ig, i64 1
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 2
  %i.im = insertelement <4 x float> %i.il, float %i.ii, i64 3 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %next.gep49, i64 20
  %i.io = getelementptr i8, ptr %i.fp, i64 52
  %i.ip = getelementptr i8, ptr %i.fq, i64 84
  %i.iq = getelementptr i8, ptr %i.fr, i64 116
  %i.ir = load float, ptr %i.in, align 4, !tbaa !76
  %i.is = load float, ptr %i.io, align 4, !tbaa !76
  %i.it = load float, ptr %i.ip, align 4, !tbaa !76
  %i.iu = load float, ptr %i.iq, align 4, !tbaa !76
  %i.iv = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.iw = insertelement <4 x float> %i.iv, float %i.is, i64 1
  %i.ix = insertelement <4 x float> %i.iw, float %i.it, i64 2
  %i.iy = insertelement <4 x float> %i.ix, float %i.iu, i64 3 ; 2 uses
  %i.iz = fmul nsz <4 x float> %i.iy, splat (float f0x3F49234E)
  %i.ja = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> splat (float f0x3F968317), <4 x float> %i.iz) ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %next.gep49, i64 16
  %i.jc = getelementptr i8, ptr %i.fp, i64 48
  %i.jd = getelementptr i8, ptr %i.fq, i64 80
  %i.je = getelementptr i8, ptr %i.fr, i64 112
  %i.jf = load float, ptr %i.jb, align 16, !tbaa !76
  %i.jg = load float, ptr %i.jc, align 16, !tbaa !76
  %i.jh = load float, ptr %i.jd, align 16, !tbaa !76
  %i.ji = load float, ptr %i.je, align 16, !tbaa !76
  %i.jj = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jk = insertelement <4 x float> %i.jj, float %i.jg, i64 1
  %i.jl = insertelement <4 x float> %i.jk, float %i.jh, i64 2
  %i.jm = insertelement <4 x float> %i.jl, float %i.ji, i64 3
  %i.jn = fmul nsz <4 x float> %i.jm, splat (float f0x3FB504F3) ; 2 uses
  %i.jo = fmul nsz <4 x float> %i.iy, splat (float f0x3F968317)
  %i.jp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> splat (float f0xBF49234E), <4 x float> %i.jo) ; 2 uses
  %i.jq = fmul nsz <4 x float> %i.hy, splat (float f0xBFA73D75)
  %i.jr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.jq)
  %i.js = fmul nsz <4 x float> %i.gy, splat (float f0x3FB18A86)
  %i.jt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> splat (float f0xBE8D42AF), <4 x float> %i.js) ; 2 uses
  %i.ju = fadd nsz <4 x float> %i.ga, %i.jn       ; 2 uses
  %i.jv = fadd nsz <4 x float> %i.ha, %i.ja       ; 2 uses
  %i.jw = fmul nsz <4 x float> %i.ia, splat (float f0x3FB504F3) ; 2 uses
  %i.jx = fsub nsz <4 x float> %i.ga, %i.jn       ; 2 uses
  %i.jy = fsub nsz <4 x float> %i.ha, %i.ja       ; 2 uses
  %i.jz = fsub nsz <4 x float> %i.ju, %i.jw
  %i.ka = fmul nsz <4 x float> %i.jz, splat (float f0x3EB504F3) ; 2 uses
  %i.kb = fadd nsz <4 x float> %i.jx, %i.jy
  %i.kc = fmul nsz <4 x float> %i.kb, splat (float f0x3EB504F3) ; 2 uses
  %i.kd = fsub nsz <4 x float> %i.jx, %i.jy
  %i.ke = fmul nsz <4 x float> %i.kd, splat (float f0x3EB504F3) ; 2 uses
  %i.kf = fmul nsz <4 x float> %i.jr, splat (float f0x3FB504F3) ; 2 uses
  %i.kg = fadd nsz <4 x float> %i.jt, %i.jp       ; 2 uses
  %i.kh = fsub nsz <4 x float> %i.jp, %i.jt
  %i.ki = fadd nsz <4 x float> %i.kf, %i.kg
  %i.kj = fmul nsz <4 x float> %i.ki, splat (float f0x3EB504F3) ; 2 uses
  %i.kk = fsub nsz <4 x float> %i.kf, %i.kg
  %i.kl = fmul nsz <4 x float> %i.kk, splat (float f0x3EB504F3) ; 2 uses
  %i.km = fmul nsz <4 x float> %i.kh, splat (float 5.000000e-01) ; 2 uses
  %i.kn = fadd nsz <4 x float> %i.jw, %i.ju
  %i.ko = fmul nsz <4 x float> %i.kn, splat (float 2.500000e-01) ; 2 uses
  %i.kp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jv, <4 x float> splat (float f0x3EB504F3), <4 x float> %i.ko)
  %i.kq = fadd nsz <4 x float> %i.kc, %i.kl
  %i.kr = fmul nsz <4 x float> %i.kq, splat (float f0x3F3504F3)
  %i.ks = fsub nsz <4 x float> %i.kc, %i.kl
  %i.kt = fadd nsz <4 x float> %i.km, %i.ka
  %i.ku = fadd nsz <4 x float> %i.ke, %i.kj
  %i.kv = fmul nsz <4 x float> %i.ku, splat (float f0x3F3504F3)
  %i.kw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jv, <4 x float> splat (float f0xBEB504F3), <4 x float> %i.ko)
  %i.kx = shufflevector <4 x float> %i.kp, <4 x float> %i.kr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ky = shufflevector <4 x float> %i.ks, <4 x float> %i.kt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kz = fmul nsz <8 x float> %i.ky, splat (float f0x3F3504F3)
  %6 = shufflevector <4 x float> %i.ka, <4 x float> %i.ke, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x float> %i.km, <4 x float> %i.kj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = fsub nsz <8 x float> %6, %7
  %i.la = fmul nsz <8 x float> %8, splat (float f0x3F3504F3)
  %i.lb = shufflevector <4 x float> %i.kv, <4 x float> %i.kw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lc = shufflevector <8 x float> %i.kx, <8 x float> %i.kz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ld = shufflevector <8 x float> %i.la, <8 x float> %i.lb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.lc, <16 x float> %i.ld, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep48, align 16, !tbaa !76
  %index.next53 = add nuw i64 %index47, 4         ; 2 uses
  %i.le = icmp eq i64 %index.next53, 8
  br i1 %i.le, label %idct8_1d.exit16.preheader, label %vector.body46, !llvm.loop !179

fdct8_1d.exit:                                    ; preds = %vector.body, %fdct8_1d.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %fdct8_1d.exit ], [ 0, %vector.body ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !76 ; 2 uses
  %i.lh = tail call nsz float @llvm.fabs.f32(float %i.lg)
  %i.li = fpext nsz float %i.lh to double
  store double %i.li, ptr %i.fn, align 8, !tbaa !180
  %i.lj = tail call nsz double @av_expr_eval(ptr noundef nonnull %i.f, ptr noundef nonnull %i.fn, ptr noundef null) #12
  %i.lk = fpext nsz float %i.lg to double
  %i.ll = fmul nsz double %i.lj, %i.lk
  %i.lm = fptrunc nsz double %i.ll to float
  store float %i.lm, ptr %i.lf, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond33.not, label %vector.body46.preheader, label %fdct8_1d.exit, !llvm.loop !182

idct8_1d.exit16.preheader:                        ; preds = %vector.body46
  %i.ln = sext i32 %4 to i64
  %i.lo = shl nsw i32 %4, 1
  %i.lp = sext i32 %i.lo to i64
  %i.lq = mul nsw i32 %4, 3
  %i.lr = sext i32 %i.lq to i64
  %i.ls = shl nsw i32 %4, 2
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i32 %4, 5
  %i.lv = sext i32 %i.lu to i64
  %i.lw = mul nsw i32 %4, 6
  %i.lx = sext i32 %i.lw to i64
  %i.ly = mul nsw i32 %4, 7
  %i.lz = sext i32 %i.ly to i64
  br label %idct8_1d.exit16

idct8_1d.exit16:                                  ; preds = %idct8_1d.exit16.preheader, %idct8_1d.exit16
  %.0.i1229 = phi ptr [ %3, %idct8_1d.exit16.preheader ], [ %i.pi, %idct8_1d.exit16 ] ; 10 uses
  %.0116.i28 = phi ptr [ %i.a, %idct8_1d.exit16.preheader ], [ %i.pj, %idct8_1d.exit16 ] ; 9 uses
  %.0117.i27 = phi i32 [ 0, %idct8_1d.exit16.preheader ], [ %i.pk, %idct8_1d.exit16 ]
  %i.ma = load float, ptr %.0116.i28, align 4, !tbaa !76
  %i.mb = fmul nsz float %i.ma, f0x3FB504F3       ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 32
  %i.md = load float, ptr %i.mc, align 4, !tbaa !76 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 224
  %i.mf = load float, ptr %i.me, align 4, !tbaa !76 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 64
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !76 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 192
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !76 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 96
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !76
  %i.mm = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 160
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !76
  %i.mo = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 128
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !76
  %i.mq = fmul nsz float %i.mp, f0x3FB504F3       ; 2 uses
  %i.mr = insertelement <4 x float> poison, float %i.mf, i64 0
  %i.ms = insertelement <4 x float> %i.mr, float %i.mj, i64 1
  %i.mt = insertelement <4 x float> %i.ms, float %i.mn, i64 2
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.mv = fmul nsz <4 x float> %i.mu, <float f0x3E8D42AF, float f0x3F0A8BD4, float f0x3F49234E, float f0x3F968317>
  %i.mw = insertelement <4 x float> poison, float %i.md, i64 0
  %i.mx = insertelement <4 x float> %i.mw, float %i.mh, i64 1
  %i.my = insertelement <4 x float> %i.mx, float %i.ml, i64 2
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.na = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mz, <4 x float> <float f0x3FB18A86, float f0x3FA73D75, float f0x3F968317, float f0xBF49234E>, <4 x float> %i.mv) ; 4 uses
  %i.nb = fmul nsz float %i.mj, f0xBFA73D75
  %i.nc = tail call nsz float @llvm.fmuladd.f32(float %i.mh, float f0x3F0A8BD4, float %i.nb)
  %i.nd = fmul nsz float %i.mf, f0x3FB18A86
  %i.ne = tail call nsz float @llvm.fmuladd.f32(float %i.md, float f0xBE8D42AF, float %i.nd) ; 2 uses
  %i.nf = fadd nsz float %i.mb, %i.mq             ; 2 uses
  %i.ng = extractelement <4 x float> %i.na, i64 0 ; 2 uses
  %i.nh = extractelement <4 x float> %i.na, i64 2 ; 2 uses
  %i.ni = fadd nsz float %i.ng, %i.nh             ; 2 uses
  %i.nj = extractelement <4 x float> %i.na, i64 1
  %i.nk = fmul nsz float %i.nj, f0x3FB504F3       ; 2 uses
  %i.nl = fsub nsz float %i.mb, %i.mq             ; 2 uses
  %i.nm = fsub nsz float %i.ng, %i.nh             ; 2 uses
  %i.nn = fsub nsz float %i.nf, %i.nk
  %i.no = fmul nsz float %i.nn, f0x3EB504F3       ; 2 uses
  %i.np = fadd nsz float %i.nl, %i.nm
  %i.nq = fmul nsz float %i.np, f0x3EB504F3       ; 2 uses
  %i.nr = fsub nsz float %i.nl, %i.nm
  %i.ns = fmul nsz float %i.nr, f0x3EB504F3       ; 2 uses
  %i.nt = fmul nsz float %i.nc, f0x3FB504F3       ; 2 uses
  %i.nu = extractelement <4 x float> %i.na, i64 3 ; 2 uses
  %i.nv = fadd nsz float %i.ne, %i.nu             ; 2 uses
  %i.nw = fsub nsz float %i.nu, %i.ne
  %i.nx = fadd nsz float %i.nt, %i.nv
  %i.ny = fmul nsz float %i.nx, f0x3EB504F3       ; 2 uses
  %i.nz = fsub nsz float %i.nt, %i.nv
  %i.oa = fmul nsz float %i.nz, f0x3EB504F3       ; 2 uses
  %i.ob = fmul nsz float %i.nw, 5.000000e-01      ; 2 uses
  %i.oc = load float, ptr %.0.i1229, align 4, !tbaa !76
  %i.od = fadd nsz float %i.nk, %i.nf             ; 2 uses
  %i.oe = tail call nsz float @llvm.fmuladd.f32(float %i.od, float 2.500000e-01, float %i.oc)
  %i.of = tail call nsz float @llvm.fmuladd.f32(float %i.ni, float f0x3EB504F3, float %i.oe)
  store float %i.of, ptr %.0.i1229, align 4, !tbaa !76
  %i.og = getelementptr inbounds [4 x i8], ptr %.0.i1229, i64 %i.ln ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !76
  %i.oi = fadd nsz float %i.nq, %i.oa
  %i.oj = tail call nsz float @llvm.fmuladd.f32(float %i.oi, float f0x3F3504F3, float %i.oh)
  store float %i.oj, ptr %i.og, align 4, !tbaa !76
  %i.ok = getelementptr inbounds [4 x i8], ptr %.0.i1229, i64 %i.lp ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !76
  %i.om = fsub nsz float %i.nq, %i.oa
  %i.on = tail call nsz float @llvm.fmuladd.f32(float %i.om, float f0x3F3504F3, float %i.ol)
  store float %i.on, ptr %i.ok, align 4, !tbaa !76
  %i.oo = getelementptr inbounds [4 x i8], ptr %.0.i1229, i64 %i.lr ; 2 uses
  %i.op = load float, ptr %i.oo, align 4, !tbaa !76
  %i.oq = fadd nsz float %i.ob, %i.no
  %i.or = tail call nsz float @llvm.fmuladd.f32(float %i.oq, float f0x3F3504F3, float %i.op)
  store float %i.or, ptr %i.oo, align 4, !tbaa !76
  %i.os = getelementptr inbounds [4 x i8], ptr %.0.i1229, i64 %i.lt ; 2 uses
  %i.ot = load float, ptr %i.os, align 4, !tbaa !76
  %i.ou = fsub nsz float %i.no, %i.ob
  %i.ov = tail call nsz float @llvm.fmuladd.f32(float %i.ou, float f0x3F3504F3, float %i.ot)
  store float %i.ov, ptr %i.os, align 4, !tbaa !76
  %i.ow = getelementptr inbounds [4 x i8], ptr %.0.i1229, i64 %i.lv ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !76
  %i.oy = fsub nsz float %i.ns, %i.ny
  %i.oz = tail call nsz float @llvm.fmuladd.f32(float %i.oy, float f0x3F3504F3, float %i.ox)
  store float %i.oz, ptr %i.ow, align 4, !tbaa !76
  %i.pa = getelementptr inbounds [4 x i8], ptr %.0.i1229, i64 %i.lx ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !76
  %i.pc = fadd nsz float %i.ns, %i.ny
  %i.pd = tail call nsz float @llvm.fmuladd.f32(float %i.pc, float f0x3F3504F3, float %i.pb)
  store float %i.pd, ptr %i.pa, align 4, !tbaa !76
  %i.pe = getelementptr inbounds [4 x i8], ptr %.0.i1229, i64 %i.lz ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !76
  %i.pg = tail call nsz float @llvm.fmuladd.f32(float %i.od, float 2.500000e-01, float %i.pf)
  %i.ph = tail call nsz float @llvm.fmuladd.f32(float %i.ni, float f0xBEB504F3, float %i.pg)
  store float %i.ph, ptr %i.pe, align 4, !tbaa !76
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i1229, i64 4
  %i.pj = getelementptr inbounds nuw i8, ptr %.0116.i28, i64 4
  %i.pk = add nuw nsw i32 %.0117.i27, 1           ; 2 uses
  %exitcond35.not = icmp eq i32 %i.pk, 8
  br i1 %exitcond35.not, label %idct8_1d.exit, label %idct8_1d.exit16, !llvm.loop !183

idct8_1d.exit:                                    ; preds = %idct8_1d.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @filter_freq_expr_16(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = alloca [256 x float], align 16           ; 10 uses
  %i.b = alloca [256 x float], align 16           ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = sext i32 %5 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.g = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0.i1019 = phi ptr [ %i.a, %bb.a ], [ %i.dx, %bb.b ] ; 5 uses
  %.0213.i918 = phi ptr [ %1, %bb.a ], [ %i.dy, %bb.b ] ; 5 uses
  %.0214.i817 = phi i32 [ 0, %bb.a ], [ %i.dz, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0213.i918, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %.0213.i918, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.0213.i918, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i1019, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i1019, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i1019, i64 48
  %i.n = load <4 x float>, ptr %i.h, align 4, !tbaa !76 ; 4 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.p = load <4 x float>, ptr %.0213.i918, align 4, !tbaa !76 ; 5 uses
  %foldExtExtBinop = fadd nsz <4 x float> %i.p, %i.o ; 2 uses
  %i.q = load <4 x float>, ptr %i.i, align 4, !tbaa !76 ; 4 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.s = load <4 x float>, ptr %i.j, align 4, !tbaa !76 ; 5 uses
  %i.t = shufflevector <4 x float> %i.p, <4 x float> %i.q, <2 x i32> <i32 3, i32 4>
  %i.u = shufflevector <4 x float> %i.n, <4 x float> %i.s, <2 x i32> <i32 0, i32 7>
  %i.v = fadd nsz <2 x float> %i.t, %i.u          ; 4 uses
  %foldExtExtBinop685 = fadd nsz <4 x float> %i.r, %i.s ; 2 uses
  %i.w = fsub nsz <4 x float> %i.r, %i.s          ; 3 uses
  %foldExtExtBinop687 = fadd nsz <4 x float> %foldExtExtBinop, %foldExtExtBinop685
  %i.x = extractelement <4 x float> %foldExtExtBinop687, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop689 = fadd nsz <2 x float> %i.v, %shift ; 2 uses
  %i.y = extractelement <2 x float> %foldExtExtBinop689, i64 0
  %i.z = fsub nsz <4 x float> %i.p, %i.o          ; 3 uses
  %i.aa = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ab = fmul nsz <2 x float> %i.aa, <float f0x3F8BEE0A, float f0xBFB425CE>
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ad = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> <float f0xBF65ACC6, float f0x3E0DF1A9>, <2 x float> %i.ab) ; 4 uses
  %i.ae = fmul nsz <4 x float> %i.w, <float f0x3E0DF1A9, float f0x3ED23045, float f0x3F2AA9F2, float f0x3F65ACC6>
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> <float f0x3FB425CE, float f0x3FAD3986, float f0x3F9FA512, float f0x3F8BEE0A>, <4 x float> %i.ae) ; 6 uses
end_hunk_0
begin_hunk_1_@filter_freq_sigma_8:bb.a
pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index42
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store float 0.000000e+00, ptr %i.gb, align 4, !tbaa !76
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.gc = extractelement <4 x i1> %i.fr, i64 0
  br i1 %i.gc, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index42
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store float 0.000000e+00, ptr %i.ge, align 16, !tbaa !76
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.gf = extractelement <4 x i1> %i.fr, i64 1
  br i1 %i.gf, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index42
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 20
  store float 0.000000e+00, ptr %i.gh, align 4, !tbaa !76
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.gi = extractelement <4 x i1> %i.fr, i64 2
  br i1 %i.gi, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index42
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store float 0.000000e+00, ptr %i.gk, align 8, !tbaa !76
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.gl = extractelement <4 x i1> %i.fr, i64 3
  br i1 %i.gl, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index42
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  store float 0.000000e+00, ptr %i.gn, align 4, !tbaa !76
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %index.next59 = add nuw i64 %index42, 8         ; 2 uses
  %i.go = icmp eq i64 %index.next59, 64
  br i1 %i.go, label %vector.body62, label %vector.body41, !llvm.loop !237

vector.body62:                                    ; preds = %pred.store.continue58, %vector.body62
  %index63 = phi i64 [ %index.next69, %vector.body62 ], [ 0, %pred.store.continue58 ] ; 2 uses
  %i.gp = shl i64 %index63, 5                     ; 5 uses
  %next.gep64 = getelementptr i8, ptr %i.a, i64 %i.gp
  %next.gep65 = getelementptr i8, ptr %i.b, i64 %i.gp ; 8 uses
  %i.gq = getelementptr i8, ptr %i.b, i64 %i.gp   ; 8 uses
  %next.gep66 = getelementptr i8, ptr %i.gq, i64 32
  %i.gr = getelementptr i8, ptr %i.b, i64 %i.gp   ; 8 uses
  %next.gep67 = getelementptr i8, ptr %i.gr, i64 64
  %i.gs = getelementptr i8, ptr %i.b, i64 %i.gp   ; 8 uses
  %next.gep68 = getelementptr i8, ptr %i.gs, i64 96
  %i.gt = load float, ptr %next.gep65, align 16, !tbaa !76
  %i.gu = load float, ptr %next.gep66, align 16, !tbaa !76
  %i.gv = load float, ptr %next.gep67, align 16, !tbaa !76
  %i.gw = load float, ptr %next.gep68, align 16, !tbaa !76
  %i.gx = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 2
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 3
  %i.hb = fmul nsz <4 x float> %i.ha, splat (float f0x3FB504F3) ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %next.gep65, i64 4
  %i.hd = getelementptr i8, ptr %i.gq, i64 36
  %i.he = getelementptr i8, ptr %i.gr, i64 68
  %i.hf = getelementptr i8, ptr %i.gs, i64 100
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !76
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !76
  %i.hi = load float, ptr %i.he, align 4, !tbaa !76
  %i.hj = load float, ptr %i.hf, align 4, !tbaa !76
  %i.hk = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 1
  %i.hm = insertelement <4 x float> %i.hl, float %i.hi, i64 2
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 3 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %next.gep65, i64 28
  %i.hp = getelementptr i8, ptr %i.gq, i64 60
  %i.hq = getelementptr i8, ptr %i.gr, i64 92
  %i.hr = getelementptr i8, ptr %i.gs, i64 124
  %i.hs = load float, ptr %i.ho, align 4, !tbaa !76
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !76
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !76
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !76
  %i.hw = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 1
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 2
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 3 ; 2 uses
  %i.ia = fmul nsz <4 x float> %i.hz, splat (float f0x3E8D42AF)
  %i.ib = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> splat (float f0x3FB18A86), <4 x float> %i.ia) ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %next.gep65, i64 8
  %i.id = getelementptr i8, ptr %i.gq, i64 40
  %i.ie = getelementptr i8, ptr %i.gr, i64 72
  %i.if = getelementptr i8, ptr %i.gs, i64 104
  %i.ig = load float, ptr %i.ic, align 8, !tbaa !76
  %i.ih = load float, ptr %i.id, align 8, !tbaa !76
  %i.ii = load float, ptr %i.ie, align 8, !tbaa !76
  %i.ij = load float, ptr %i.if, align 8, !tbaa !76
  %i.ik = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 1
  %i.im = insertelement <4 x float> %i.il, float %i.ii, i64 2
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 3 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %next.gep65, i64 24
  %i.ip = getelementptr i8, ptr %i.gq, i64 56
  %i.iq = getelementptr i8, ptr %i.gr, i64 88
  %i.ir = getelementptr i8, ptr %i.gs, i64 120
  %i.is = load float, ptr %i.io, align 8, !tbaa !76
  %i.it = load float, ptr %i.ip, align 8, !tbaa !76
  %i.iu = load float, ptr %i.iq, align 8, !tbaa !76
  %i.iv = load float, ptr %i.ir, align 8, !tbaa !76
  %i.iw = insertelement <4 x float> poison, float %i.is, i64 0
  %i.ix = insertelement <4 x float> %i.iw, float %i.it, i64 1
  %i.iy = insertelement <4 x float> %i.ix, float %i.iu, i64 2
  %i.iz = insertelement <4 x float> %i.iy, float %i.iv, i64 3 ; 2 uses
  %i.ja = fmul nsz <4 x float> %i.iz, splat (float f0x3F0A8BD4)
  %i.jb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.ja)
  %i.jc = getelementptr inbounds nuw i8, ptr %next.gep65, i64 12
  %i.jd = getelementptr i8, ptr %i.gq, i64 44
  %i.je = getelementptr i8, ptr %i.gr, i64 76
  %i.jf = getelementptr i8, ptr %i.gs, i64 108
  %i.jg = load float, ptr %i.jc, align 4, !tbaa !76
  %i.jh = load float, ptr %i.jd, align 4, !tbaa !76
  %i.ji = load float, ptr %i.je, align 4, !tbaa !76
  %i.jj = load float, ptr %i.jf, align 4, !tbaa !76
  %i.jk = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.jl = insertelement <4 x float> %i.jk, float %i.jh, i64 1
  %i.jm = insertelement <4 x float> %i.jl, float %i.ji, i64 2
  %i.jn = insertelement <4 x float> %i.jm, float %i.jj, i64 3 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %next.gep65, i64 20
  %i.jp = getelementptr i8, ptr %i.gq, i64 52
  %i.jq = getelementptr i8, ptr %i.gr, i64 84
  %i.jr = getelementptr i8, ptr %i.gs, i64 116
  %i.js = load float, ptr %i.jo, align 4, !tbaa !76
  %i.jt = load float, ptr %i.jp, align 4, !tbaa !76
  %i.ju = load float, ptr %i.jq, align 4, !tbaa !76
  %i.jv = load float, ptr %i.jr, align 4, !tbaa !76
  %i.jw = insertelement <4 x float> poison, float %i.js, i64 0
  %i.jx = insertelement <4 x float> %i.jw, float %i.jt, i64 1
  %i.jy = insertelement <4 x float> %i.jx, float %i.ju, i64 2
  %i.jz = insertelement <4 x float> %i.jy, float %i.jv, i64 3 ; 2 uses
  %i.ka = fmul nsz <4 x float> %i.jz, splat (float f0x3F49234E)
  %i.kb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> splat (float f0x3F968317), <4 x float> %i.ka) ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %next.gep65, i64 16
  %i.kd = getelementptr i8, ptr %i.gq, i64 48
  %i.ke = getelementptr i8, ptr %i.gr, i64 80
  %i.kf = getelementptr i8, ptr %i.gs, i64 112
  %i.kg = load float, ptr %i.kc, align 16, !tbaa !76
  %i.kh = load float, ptr %i.kd, align 16, !tbaa !76
  %i.ki = load float, ptr %i.ke, align 16, !tbaa !76
  %i.kj = load float, ptr %i.kf, align 16, !tbaa !76
  %i.kk = insertelement <4 x float> poison, float %i.kg, i64 0
  %i.kl = insertelement <4 x float> %i.kk, float %i.kh, i64 1
  %i.km = insertelement <4 x float> %i.kl, float %i.ki, i64 2
  %i.kn = insertelement <4 x float> %i.km, float %i.kj, i64 3
  %i.ko = fmul nsz <4 x float> %i.kn, splat (float f0x3FB504F3) ; 2 uses
  %i.kp = fmul nsz <4 x float> %i.jz, splat (float f0x3F968317)
  %i.kq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> splat (float f0xBF49234E), <4 x float> %i.kp) ; 2 uses
  %i.kr = fmul nsz <4 x float> %i.iz, splat (float f0xBFA73D75)
  %i.ks = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.kr)
  %i.kt = fmul nsz <4 x float> %i.hz, splat (float f0x3FB18A86)
  %i.ku = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> splat (float f0xBE8D42AF), <4 x float> %i.kt) ; 2 uses
  %i.kv = fadd nsz <4 x float> %i.hb, %i.ko       ; 2 uses
  %i.kw = fadd nsz <4 x float> %i.ib, %i.kb       ; 2 uses
  %i.kx = fmul nsz <4 x float> %i.jb, splat (float f0x3FB504F3) ; 2 uses
  %i.ky = fsub nsz <4 x float> %i.hb, %i.ko       ; 2 uses
  %i.kz = fsub nsz <4 x float> %i.ib, %i.kb       ; 2 uses
  %i.la = fsub nsz <4 x float> %i.kv, %i.kx
  %i.lb = fmul nsz <4 x float> %i.la, splat (float f0x3EB504F3) ; 2 uses
  %i.lc = fadd nsz <4 x float> %i.ky, %i.kz
  %i.ld = fmul nsz <4 x float> %i.lc, splat (float f0x3EB504F3) ; 2 uses
  %i.le = fsub nsz <4 x float> %i.ky, %i.kz
  %i.lf = fmul nsz <4 x float> %i.le, splat (float f0x3EB504F3) ; 2 uses
  %i.lg = fmul nsz <4 x float> %i.ks, splat (float f0x3FB504F3) ; 2 uses
  %i.lh = fadd nsz <4 x float> %i.ku, %i.kq       ; 2 uses
  %i.li = fsub nsz <4 x float> %i.kq, %i.ku
  %i.lj = fadd nsz <4 x float> %i.lg, %i.lh
  %i.lk = fmul nsz <4 x float> %i.lj, splat (float f0x3EB504F3) ; 2 uses
  %i.ll = fsub nsz <4 x float> %i.lg, %i.lh
  %i.lm = fmul nsz <4 x float> %i.ll, splat (float f0x3EB504F3) ; 2 uses
  %i.ln = fmul nsz <4 x float> %i.li, splat (float 5.000000e-01) ; 2 uses
  %i.lo = fadd nsz <4 x float> %i.kx, %i.kv
  %i.lp = fmul nsz <4 x float> %i.lo, splat (float 2.500000e-01) ; 2 uses
  %i.lq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kw, <4 x float> splat (float f0x3EB504F3), <4 x float> %i.lp)
  %i.lr = fadd nsz <4 x float> %i.ld, %i.lm
  %i.ls = fmul nsz <4 x float> %i.lr, splat (float f0x3F3504F3)
  %i.lt = fsub nsz <4 x float> %i.ld, %i.lm
  %i.lu = fadd nsz <4 x float> %i.ln, %i.lb
  %i.lv = fadd nsz <4 x float> %i.lf, %i.lk
  %i.lw = fmul nsz <4 x float> %i.lv, splat (float f0x3F3504F3)
  %i.lx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kw, <4 x float> splat (float f0xBEB504F3), <4 x float> %i.lp)
  %i.ly = shufflevector <4 x float> %i.lq, <4 x float> %i.ls, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lz = shufflevector <4 x float> %i.lt, <4 x float> %i.lu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ma = fmul nsz <8 x float> %i.lz, splat (float f0x3F3504F3)
  %6 = shufflevector <4 x float> %i.lb, <4 x float> %i.lf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x float> %i.ln, <4 x float> %i.lk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = fsub nsz <8 x float> %6, %7
  %i.mb = fmul nsz <8 x float> %8, splat (float f0x3F3504F3)
  %i.mc = shufflevector <4 x float> %i.lw, <4 x float> %i.lx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.md = shufflevector <8 x float> %i.ly, <8 x float> %i.ma, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.me = shufflevector <8 x float> %i.mb, <8 x float> %i.mc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.md, <16 x float> %i.me, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep64, align 16, !tbaa !76
  %index.next69 = add nuw i64 %index63, 4         ; 2 uses
  %i.mf = icmp eq i64 %index.next69, 8
  br i1 %i.mf, label %idct8_1d.exit13.preheader, label %vector.body62, !llvm.loop !238

idct8_1d.exit13.preheader:                        ; preds = %vector.body62
  %i.mg = sext i32 %4 to i64
  %i.mh = shl nsw i32 %4, 1
  %i.mi = sext i32 %i.mh to i64
  %i.mj = mul nsw i32 %4, 3
  %i.mk = sext i32 %i.mj to i64
  %i.ml = shl nsw i32 %4, 2
  %i.mm = sext i32 %i.ml to i64
  %i.mn = mul nsw i32 %4, 5
  %i.mo = sext i32 %i.mn to i64
  %i.mp = mul nsw i32 %4, 6
  %i.mq = sext i32 %i.mp to i64
  %i.mr = mul nsw i32 %4, 7
  %i.ms = sext i32 %i.mr to i64
  br label %idct8_1d.exit13

idct8_1d.exit13:                                  ; preds = %idct8_1d.exit13.preheader, %idct8_1d.exit13
  %.0.i926 = phi ptr [ %3, %idct8_1d.exit13.preheader ], [ %i.qb, %idct8_1d.exit13 ] ; 10 uses
  %.0116.i25 = phi ptr [ %i.a, %idct8_1d.exit13.preheader ], [ %i.qc, %idct8_1d.exit13 ] ; 9 uses
  %.0117.i24 = phi i32 [ 0, %idct8_1d.exit13.preheader ], [ %i.qd, %idct8_1d.exit13 ]
  %i.mt = load float, ptr %.0116.i25, align 4, !tbaa !76
  %i.mu = fmul nsz float %i.mt, f0x3FB504F3       ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 32
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !76 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 224
  %i.my = load float, ptr %i.mx, align 4, !tbaa !76 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 64
  %i.na = load float, ptr %i.mz, align 4, !tbaa !76 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 192
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !76 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 96
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !76
  %i.nf = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 160
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !76
  %i.nh = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 128
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !76
  %i.nj = fmul nsz float %i.ni, f0x3FB504F3       ; 2 uses
  %i.nk = insertelement <4 x float> poison, float %i.my, i64 0
  %i.nl = insertelement <4 x float> %i.nk, float %i.nc, i64 1
  %i.nm = insertelement <4 x float> %i.nl, float %i.ng, i64 2
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.no = fmul nsz <4 x float> %i.nn, <float f0x3E8D42AF, float f0x3F0A8BD4, float f0x3F49234E, float f0x3F968317>
  %i.np = insertelement <4 x float> poison, float %i.mw, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.na, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.ne, i64 2
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.nt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ns, <4 x float> <float f0x3FB18A86, float f0x3FA73D75, float f0x3F968317, float f0xBF49234E>, <4 x float> %i.no) ; 4 uses
  %i.nu = fmul nsz float %i.nc, f0xBFA73D75
  %i.nv = tail call nsz float @llvm.fmuladd.f32(float %i.na, float f0x3F0A8BD4, float %i.nu)
  %i.nw = fmul nsz float %i.my, f0x3FB18A86
  %i.nx = tail call nsz float @llvm.fmuladd.f32(float %i.mw, float f0xBE8D42AF, float %i.nw) ; 2 uses
  %i.ny = fadd nsz float %i.mu, %i.nj             ; 2 uses
  %i.nz = extractelement <4 x float> %i.nt, i64 0 ; 2 uses
  %i.oa = extractelement <4 x float> %i.nt, i64 2 ; 2 uses
  %i.ob = fadd nsz float %i.nz, %i.oa             ; 2 uses
  %i.oc = extractelement <4 x float> %i.nt, i64 1
  %i.od = fmul nsz float %i.oc, f0x3FB504F3       ; 2 uses
  %i.oe = fsub nsz float %i.mu, %i.nj             ; 2 uses
  %i.of = fsub nsz float %i.nz, %i.oa             ; 2 uses
  %i.og = fsub nsz float %i.ny, %i.od
  %i.oh = fmul nsz float %i.og, f0x3EB504F3       ; 2 uses
  %i.oi = fadd nsz float %i.oe, %i.of
  %i.oj = fmul nsz float %i.oi, f0x3EB504F3       ; 2 uses
  %i.ok = fsub nsz float %i.oe, %i.of
  %i.ol = fmul nsz float %i.ok, f0x3EB504F3       ; 2 uses
  %i.om = fmul nsz float %i.nv, f0x3FB504F3       ; 2 uses
  %i.on = extractelement <4 x float> %i.nt, i64 3 ; 2 uses
  %i.oo = fadd nsz float %i.nx, %i.on             ; 2 uses
  %i.op = fsub nsz float %i.on, %i.nx
  %i.oq = fadd nsz float %i.om, %i.oo
  %i.or = fmul nsz float %i.oq, f0x3EB504F3       ; 2 uses
  %i.os = fsub nsz float %i.om, %i.oo
  %i.ot = fmul nsz float %i.os, f0x3EB504F3       ; 2 uses
  %i.ou = fmul nsz float %i.op, 5.000000e-01      ; 2 uses
  %i.ov = load float, ptr %.0.i926, align 4, !tbaa !76
  %i.ow = fadd nsz float %i.od, %i.ny             ; 2 uses
  %i.ox = tail call nsz float @llvm.fmuladd.f32(float %i.ow, float 2.500000e-01, float %i.ov)
  %i.oy = tail call nsz float @llvm.fmuladd.f32(float %i.ob, float f0x3EB504F3, float %i.ox)
  store float %i.oy, ptr %.0.i926, align 4, !tbaa !76
  %i.oz = getelementptr inbounds [4 x i8], ptr %.0.i926, i64 %i.mg ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !76
  %i.pb = fadd nsz float %i.oj, %i.ot
  %i.pc = tail call nsz float @llvm.fmuladd.f32(float %i.pb, float f0x3F3504F3, float %i.pa)
  store float %i.pc, ptr %i.oz, align 4, !tbaa !76
  %i.pd = getelementptr inbounds [4 x i8], ptr %.0.i926, i64 %i.mi ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !76
  %i.pf = fsub nsz float %i.oj, %i.ot
  %i.pg = tail call nsz float @llvm.fmuladd.f32(float %i.pf, float f0x3F3504F3, float %i.pe)
  store float %i.pg, ptr %i.pd, align 4, !tbaa !76
  %i.ph = getelementptr inbounds [4 x i8], ptr %.0.i926, i64 %i.mk ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !76
  %i.pj = fadd nsz float %i.ou, %i.oh
  %i.pk = tail call nsz float @llvm.fmuladd.f32(float %i.pj, float f0x3F3504F3, float %i.pi)
  store float %i.pk, ptr %i.ph, align 4, !tbaa !76
  %i.pl = getelementptr inbounds [4 x i8], ptr %.0.i926, i64 %i.mm ; 2 uses
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !76
  %i.pn = fsub nsz float %i.oh, %i.ou
  %i.po = tail call nsz float @llvm.fmuladd.f32(float %i.pn, float f0x3F3504F3, float %i.pm)
  store float %i.po, ptr %i.pl, align 4, !tbaa !76
  %i.pp = getelementptr inbounds [4 x i8], ptr %.0.i926, i64 %i.mo ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !76
  %i.pr = fsub nsz float %i.ol, %i.or
  %i.ps = tail call nsz float @llvm.fmuladd.f32(float %i.pr, float f0x3F3504F3, float %i.pq)
  store float %i.ps, ptr %i.pp, align 4, !tbaa !76
  %i.pt = getelementptr inbounds [4 x i8], ptr %.0.i926, i64 %i.mq ; 2 uses
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !76
  %i.pv = fadd nsz float %i.ol, %i.or
  %i.pw = tail call nsz float @llvm.fmuladd.f32(float %i.pv, float f0x3F3504F3, float %i.pu)
  store float %i.pw, ptr %i.pt, align 4, !tbaa !76
  %i.px = getelementptr inbounds [4 x i8], ptr %.0.i926, i64 %i.ms ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !76
  %i.pz = tail call nsz float @llvm.fmuladd.f32(float %i.ow, float 2.500000e-01, float %i.py)
  %i.qa = tail call nsz float @llvm.fmuladd.f32(float %i.ob, float f0xBEB504F3, float %i.pz)
  store float %i.qa, ptr %i.px, align 4, !tbaa !76
  %i.qb = getelementptr inbounds nuw i8, ptr %.0.i926, i64 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.0116.i25, i64 4
  %i.qd = add nuw nsw i32 %.0117.i24, 1           ; 2 uses
  %exitcond31.not = icmp eq i32 %i.qd, 8
  br i1 %exitcond31.not, label %idct8_1d.exit, label %idct8_1d.exit13, !llvm.loop !183

idct8_1d.exit:                                    ; preds = %idct8_1d.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @filter_freq_sigma_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 %5) #10 {
bb.a:
  %i.a = alloca [256 x float], align 16           ; 10 uses
  %i.b = alloca [256 x float], align 16           ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load float, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.e = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0.i716 = phi ptr [ %i.a, %bb.a ], [ %i.dv, %bb.b ] ; 5 uses
  %.0213.i615 = phi ptr [ %1, %bb.a ], [ %i.dw, %bb.b ] ; 5 uses
  %.0214.i514 = phi i32 [ 0, %bb.a ], [ %i.dx, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0213.i615, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.0213.i615, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0213.i615, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i716, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i716, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i716, i64 48
  %i.l = load <4 x float>, ptr %i.f, align 4, !tbaa !76 ; 4 uses
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.n = load <4 x float>, ptr %.0213.i615, align 4, !tbaa !76 ; 5 uses
  %foldExtExtBinop = fadd nsz <4 x float> %i.n, %i.m ; 2 uses
  %i.o = load <4 x float>, ptr %i.g, align 4, !tbaa !76 ; 4 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.q = load <4 x float>, ptr %i.h, align 4, !tbaa !76 ; 5 uses
  %i.r = shufflevector <4 x float> %i.n, <4 x float> %i.o, <2 x i32> <i32 3, i32 4>
  %i.s = shufflevector <4 x float> %i.l, <4 x float> %i.q, <2 x i32> <i32 0, i32 7>
  %i.t = fadd nsz <2 x float> %i.r, %i.s          ; 4 uses
  %foldExtExtBinop701 = fadd nsz <4 x float> %i.p, %i.q ; 2 uses
  %i.u = fsub nsz <4 x float> %i.p, %i.q          ; 3 uses
  %foldExtExtBinop703 = fadd nsz <4 x float> %foldExtExtBinop, %foldExtExtBinop701
  %i.v = extractelement <4 x float> %foldExtExtBinop703, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop705 = fadd nsz <2 x float> %i.t, %shift ; 2 uses
  %i.w = extractelement <2 x float> %foldExtExtBinop705, i64 0
  %i.x = fsub nsz <4 x float> %i.n, %i.m          ; 3 uses
  %i.y = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.z = fmul nsz <2 x float> %i.y, <float f0x3F8BEE0A, float f0xBFB425CE>
  %i.aa = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.ab = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float f0xBF65ACC6, float f0x3E0DF1A9>, <2 x float> %i.z) ; 4 uses
  %i.ac = fmul nsz <4 x float> %i.u, <float f0x3E0DF1A9, float f0x3ED23045, float f0x3F2AA9F2, float f0x3F65ACC6>
  %i.ad = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> <float f0x3FB425CE, float f0x3FAD3986, float f0x3F9FA512, float f0x3F8BEE0A>, <4 x float> %i.ac) ; 6 uses
  %i.ae = shufflevector <4 x float> %i.n, <4 x float> %i.o, <2 x i32> <i32 1, i32 6>
  %i.af = shufflevector <4 x float> %i.l, <4 x float> %i.q, <2 x i32> <i32 2, i32 5>
  %i.ag = fadd nsz <2 x float> %i.ae, %i.af       ; 4 uses
  %i.ah = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ai = fmul nsz <2 x float> %i.ah, <float f0x3FAD3986, float f0xBF9FA512>
  %i.aj = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> <float f0xBED23045, float f0x3F2AA9F2>, <2 x float> %i.ai) ; 4 uses
  %shift707 = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop708 = fadd nsz <2 x float> %shift707, %i.ak ; 2 uses
  %i.al = shufflevector <4 x float> %i.n, <4 x float> %i.o, <2 x i32> <i32 2, i32 5>
  %i.am = shufflevector <4 x float> %i.l, <4 x float> %i.q, <2 x i32> <i32 1, i32 6>
  %i.an = fadd nsz <2 x float> %i.al, %i.am       ; 4 uses
  %shift710 = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop711 = fadd nsz <2 x float> %i.ag, %shift710 ; 2 uses
  %shift713 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop714 = fadd nsz <2 x float> %i.an, %shift713 ; 2 uses
  %foldExtExtBinop716 = fsub nsz <2 x float> %foldExtExtBinop711, %foldExtExtBinop714
  %i.ao = extractelement <2 x float> %foldExtExtBinop716, i64 0 ; 2 uses
end_hunk_1
