Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__startElement:bb.a
  br label %nsvg__pathArcTo.exit.i

nsvg__pathHLineTo.exit.i:                         ; preds = %bb.aa, %bb.aa
  %.not218.i = icmp eq i8 %.092237.i, 104
  %.val.i = load float, ptr %i.a, align 16        ; 2 uses
  %i.eh = extractelement <2 x float> %i.bl, i64 0
  %i.ei = fadd float %i.eh, %.val.i
  %storemerge.i130.i = select i1 %.not218.i, float %i.ei, float %.val.i ; 2 uses
  %i.ej = extractelement <2 x float> %i.bl, i64 1
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %storemerge.i130.i, float noundef %i.ej)
  %i.ek = insertelement <2 x float> %i.bl, float %storemerge.i130.i, i64 0 ; 2 uses
  br label %nsvg__pathArcTo.exit.i

nsvg__pathVLineTo.exit.i:                         ; preds = %bb.aa, %bb.aa
  %.not217.i = icmp eq i8 %.092237.i, 118
  %.val114.i = load float, ptr %i.a, align 16     ; 2 uses
  %i.el = extractelement <2 x float> %i.bl, i64 1
  %i.em = fadd float %i.el, %.val114.i
  %storemerge.i132.i = select i1 %.not217.i, float %i.em, float %.val114.i ; 2 uses
  %i.en = extractelement <2 x float> %i.bl, i64 0
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %i.en, float noundef %storemerge.i132.i)
  %i.eo = insertelement <2 x float> %i.bl, float %storemerge.i132.i, i64 1 ; 2 uses
  br label %nsvg__pathArcTo.exit.i

bb.ag:                                            ; preds = %bb.aa
  %i.ep = load <2 x float>, ptr %i.a, align 16, !tbaa !31
  %i.eq = fadd <2 x float> %i.bl, %i.ep
  %i.er = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.es = fadd <2 x float> %i.bl, %i.er
  %i.et = load <2 x float>, ptr %i.bh, align 16, !tbaa !31
  %i.eu = fadd <2 x float> %i.bl, %i.et
  br label %nsvg__pathCubicBezTo.exit.i

bb.ah:                                            ; preds = %bb.aa
  %i.ev = load <2 x float>, ptr %i.a, align 16, !tbaa !31
  %i.ew = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.ex = load <2 x float>, ptr %i.bh, align 16, !tbaa !31
  br label %nsvg__pathCubicBezTo.exit.i

nsvg__pathCubicBezTo.exit.i:                      ; preds = %bb.ah, %bb.ag
  %i.ey = phi <2 x float> [ %i.eu, %bb.ag ], [ %i.ex, %bb.ah ] ; 3 uses
  %i.ez = phi <2 x float> [ %i.es, %bb.ag ], [ %i.ew, %bb.ah ] ; 3 uses
  %i.fa = phi <2 x float> [ %i.eq, %bb.ag ], [ %i.ev, %bb.ah ] ; 2 uses
  %i.fb = extractelement <2 x float> %i.ey, i64 0
  %i.fc = extractelement <2 x float> %i.ey, i64 1
  %i.fd = extractelement <2 x float> %i.ez, i64 0
  %i.fe = extractelement <2 x float> %i.ez, i64 1
  %i.ff = extractelement <2 x float> %i.fa, i64 0
  %i.fg = extractelement <2 x float> %i.fa, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.ff, float noundef %i.fg, float noundef %i.fd, float noundef %i.fe, float noundef %i.fb, float noundef %i.fc)
  br label %nsvg__pathArcTo.exit.i

bb.ai:                                            ; preds = %bb.aa, %bb.aa
  %.not215.i = icmp eq i8 %.092237.i, 115
  %i.fh = load float, ptr %i.a, align 16, !tbaa !31 ; 2 uses
  br i1 %.not215.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fi = load float, ptr %i.be, align 4, !tbaa !31
  %i.fj = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.fi, i64 1
  %i.fl = fadd <2 x float> %i.bl, %i.fk
  %i.fm = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.fn = fadd <2 x float> %i.bl, %i.fm
  br label %nsvg__pathCubicBezShortTo.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.fo = load float, ptr %i.be, align 4, !tbaa !31
  %i.fp = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.fq = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fo, i64 1
  br label %nsvg__pathCubicBezShortTo.exit.i

nsvg__pathCubicBezShortTo.exit.i:                 ; preds = %bb.ak, %bb.aj
  %i.fs = phi <2 x float> [ %i.fn, %bb.aj ], [ %i.fp, %bb.ak ] ; 3 uses
  %i.ft = phi <2 x float> [ %i.fl, %bb.aj ], [ %i.fr, %bb.ak ] ; 3 uses
  %i.fu = fneg <2 x float> %i.bm
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float 2.000000e+00), <2 x float> %i.fu) ; 2 uses
  %i.fw = extractelement <2 x float> %i.fs, i64 0
  %i.fx = extractelement <2 x float> %i.fs, i64 1
  %i.fy = extractelement <2 x float> %i.ft, i64 0
  %i.fz = extractelement <2 x float> %i.ft, i64 1
  %i.ga = extractelement <2 x float> %i.fv, i64 0
  %i.gb = extractelement <2 x float> %i.fv, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.ga, float noundef %i.gb, float noundef %i.fy, float noundef %i.fz, float noundef %i.fw, float noundef %i.fx)
  br label %nsvg__pathArcTo.exit.i

bb.al:                                            ; preds = %bb.aa, %bb.aa
  %.not214.i = icmp eq i8 %.092237.i, 113
  %i.gc = load float, ptr %i.a, align 16, !tbaa !31 ; 2 uses
  br i1 %.not214.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gd = load float, ptr %i.be, align 4, !tbaa !31
  %i.ge = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gd, i64 1
  %i.gg = fadd <2 x float> %i.bl, %i.gf
  %i.gh = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.gi = fadd <2 x float> %i.bl, %i.gh
  br label %nsvg__pathQuadBezTo.exit.i

bb.an:                                            ; preds = %bb.al
  %i.gj = load float, ptr %i.be, align 4, !tbaa !31
  %i.gk = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.gl = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gj, i64 1
  br label %nsvg__pathQuadBezTo.exit.i

nsvg__pathQuadBezTo.exit.i:                       ; preds = %bb.an, %bb.am
  %i.gn = phi <2 x float> [ %i.gi, %bb.am ], [ %i.gk, %bb.an ] ; 4 uses
  %i.go = phi <2 x float> [ %i.gg, %bb.am ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gq = extractelement <2 x float> %i.gn, i64 0
  %i.gr = extractelement <2 x float> %i.gn, i64 1
  %i.gs = shufflevector <2 x float> %i.bl, <2 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gt = fsub <4 x float> %i.gp, %i.gs
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> splat (float f0x3F2AAAAB), <4 x float> %i.gs) ; 4 uses
  %i.gv = extractelement <4 x float> %i.gu, i64 0
  %i.gw = extractelement <4 x float> %i.gu, i64 1
  %i.gx = extractelement <4 x float> %i.gu, i64 2
  %i.gy = extractelement <4 x float> %i.gu, i64 3
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.gv, float noundef %i.gw, float noundef %i.gx, float noundef %i.gy, float noundef %i.gq, float noundef %i.gr)
  br label %nsvg__pathArcTo.exit.i

bb.ao:                                            ; preds = %bb.aa, %bb.aa
  %.not213.i = icmp eq i8 %.092237.i, 116
  %i.gz = fneg <2 x float> %i.bm
  %i.ha = load <2 x float>, ptr %i.a, align 16    ; 2 uses
  %i.hb = fadd <2 x float> %i.bl, %i.ha
  %i.hc = insertelement <2 x i1> poison, i1 %.not213.i, i64 0
  %i.hd = shufflevector <2 x i1> %i.hc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x float> %i.hb, <2 x float> %i.ha ; 4 uses
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float 2.000000e+00), <2 x float> %i.gz) ; 2 uses
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hh = extractelement <2 x float> %i.he, i64 0
  %i.hi = extractelement <2 x float> %i.he, i64 1
  %i.hj = shufflevector <2 x float> %i.bl, <2 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.hk = fsub <4 x float> %i.hg, %i.hj
  %i.hl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> splat (float f0x3F2AAAAB), <4 x float> %i.hj) ; 4 uses
  %i.hm = extractelement <4 x float> %i.hl, i64 0
  %i.hn = extractelement <4 x float> %i.hl, i64 1
  %i.ho = extractelement <4 x float> %i.hl, i64 2
  %i.hp = extractelement <4 x float> %i.hl, i64 3
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.hm, float noundef %i.hn, float noundef %i.ho, float noundef %i.hp, float noundef %i.hh, float noundef %i.hi)
  br label %nsvg__pathArcTo.exit.i

bb.ap:                                            ; preds = %bb.aa, %bb.aa
  %i.hq = load <2 x float>, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.hr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hq) ; 4 uses
  %i.hs = load <2 x float>, ptr %i.bg, align 4, !tbaa !31
  %i.ht = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hs)
  %i.hu = fpext <2 x float> %i.ht to <2 x double> ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 1
  %i.hw = fcmp ogt double %i.hv, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.hx = load <2 x float>, ptr %i.bi, align 4    ; 2 uses
  %i.hy = fadd <2 x float> %i.bl, %i.hx
  %i.hz = insertelement <2 x i1> poison, i1 %.not212.i, i64 0
  %i.ia = shufflevector <2 x i1> %i.hz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.hy, <2 x float> %i.hx ; 12 uses
  %i.ic = fsub <2 x float> %i.bl, %i.ib           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ic, %i.ic
  %i.id = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ie = extractelement <2 x float> %i.ic, i64 0 ; 2 uses
  %i.if = call float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.id)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.if)
  %i.ig = fcmp olt float %sqrt.i.i, f0x358637BD
  %i.ih = extractelement <2 x float> %i.hr, i64 0
  %i.ii = fcmp olt float %i.ih, f0x358637BD
  %or.cond.i145.i = select i1 %i.ig, i1 true, i1 %i.ii
  %i.ij = extractelement <2 x float> %i.hr, i64 1
  %i.ik = fcmp olt float %i.ij, f0x358637BD
  %or.cond3.i.i = select i1 %or.cond.i145.i, i1 true, i1 %i.ik
  br i1 %or.cond3.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.il = extractelement <2 x float> %i.ib, i64 0
  %i.im = extractelement <2 x float> %i.ib, i64 1
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %i.il, float noundef %i.im)
  br label %nsvg__pathArcTo.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.in = load float, ptr %i.bf, align 8, !tbaa !31
  %i.io = fdiv float %i.in, 1.800000e+02
  %i.ip = fmul float %i.io, f0x40490FDB           ; 2 uses
  %i.iq = call float @sinf(float noundef %i.ip) #30 ; 5 uses
  %i.ir = call float @cosf(float noundef %i.ip) #30 ; 5 uses
  %i.is = fneg float %i.iq                        ; 3 uses
  %i.it = insertelement <2 x float> poison, float %i.is, i64 0 ; 2 uses
  %i.iu = insertelement <2 x float> %i.it, float %i.iq, i64 1
  %i.iv = fmul <2 x float> %i.ic, %i.iu
  %i.iw = fmul <2 x float> %i.iv, splat (float 5.000000e-01)
  %i.ix = insertelement <2 x float> poison, float %i.ir, i64 0 ; 3 uses
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.ic, %i.iy
  %i.ja = fmul <2 x float> %i.iz, splat (float 5.000000e-01)
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jc = fadd <2 x float> %i.iw, %i.jb           ; 7 uses
  %i.jd = fmul <2 x float> %i.jc, %i.jc           ; 3 uses
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = fmul <2 x float> %i.hq, %i.hq
  %i.jg = fdiv <2 x float> %i.je, %i.jf
  %3 = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jg) ; 2 uses
  %i.jh = fcmp ogt float %3, 1.000000e+00
  %sqrt203.i.i = call float @llvm.sqrt.f32(float %3)
  %i.ji = insertelement <2 x float> poison, float %sqrt203.i.i, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x float> %i.hr, %i.jj
  %i.jl = insertelement <2 x i1> poison, i1 %i.jh, i64 0
  %i.jm = shufflevector <2 x i1> %i.jl, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jn = select <2 x i1> %i.jm, <2 x float> %i.jk, <2 x float> %i.hr ; 12 uses
  %foldExtExtBinop247.a = fmul <2 x float> %i.jn, %i.jn
  %i.jo = extractelement <2 x float> %foldExtExtBinop247.a, i64 0 ; 3 uses
  %i.jp = extractelement <2 x float> %i.jn, i64 1 ; 2 uses
  %i.jq = fmul float %i.jp, %i.jp                 ; 3 uses
  %i.jr = extractelement <2 x float> %i.jd, i64 1 ; 2 uses
  %i.js = fmul float %i.jr, %i.jq
  %i.jt = extractelement <2 x float> %i.jd, i64 0 ; 2 uses
  %i.ju = call float @llvm.fmuladd.f32(float %i.jo, float %i.jt, float %i.js) ; 2 uses
  %i.jv = fcmp ogt float %i.ju, 0.000000e+00
  br i1 %i.jv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jw = fneg float %i.jq
  %i.jx = fneg float %i.jt
  %i.jy = fmul float %i.jo, %i.jx
  %i.jz = call float @llvm.fmuladd.f32(float %i.jo, float %i.jq, float %i.jy)
  %i.ka = call float @llvm.fmuladd.f32(float %i.jw, float %i.jr, float %i.jz) ; 2 uses
  %i.kb = fcmp olt float %i.ka, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.kb, float 0.000000e+00, float %i.ka
  %i.kc = fdiv float %spec.store.select.i.i, %i.ju
  %i.kd = call float @sqrtf(float noundef %i.kc) #30
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0174.i.i = phi float [ %i.kd, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.ke = extractelement <2 x double> %i.hu, i64 0
  %i.kf = fcmp ule double %i.ke, f0x3EB0C6F7A0B5ED8D
  %i.kg = xor i1 %i.kf, %i.hw
  %i.kh = fneg float %.0174.i.i
  %.1.i.i = select i1 %i.kg, float %i.kh, float %.0174.i.i
  %i.ki = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kj = fneg <2 x float> %i.jn
  %i.kk = shufflevector <2 x float> %i.jn, <2 x float> %i.kj, <2 x i32> <i32 0, i32 3>
  %i.kl = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x float> %i.kk, %i.km
  %i.ko = fmul <2 x float> %i.jc, %i.kn
  %i.kp = fdiv <2 x float> %i.ko, %i.ki           ; 2 uses
  %i.kq = fadd <2 x float> %i.bl, %i.ib
  %i.kr = fmul <2 x float> %i.kq, splat (float 5.000000e-01)
  %i.ks = insertelement <2 x float> %i.ix, float %i.iq, i64 1
  %i.kt = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ku = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.kt, <2 x float> %i.kr)
  %i.kv = insertelement <2 x float> poison, float %i.is, i64 0
  %i.kw = insertelement <2 x float> %i.kv, float %i.ir, i64 1
  %i.kx = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ky = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.kx, <2 x float> %i.ku) ; 2 uses
  %i.kz = fneg <2 x float> %i.jc
  %i.la = shufflevector <2 x float> %i.jc, <2 x float> %i.kz, <2 x i32> <i32 1, i32 3>
  %i.lb = fsub <2 x float> %i.la, %i.kt
  %i.lc = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fdiv <2 x float> %i.lb, %i.lc           ; 5 uses
  %i.le = fneg <2 x float> %i.jc
  %i.lf = shufflevector <2 x float> %i.jc, <2 x float> %i.le, <2 x i32> <i32 0, i32 2>
  %i.lg = fsub <2 x float> %i.lf, %i.kx
  %i.lh = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.li = fdiv <2 x float> %i.lg, %i.lh           ; 6 uses
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lk = extractelement <2 x float> %i.li, i64 0 ; 2 uses
  %i.ll = extractelement <2 x float> %i.ld, i64 0 ; 3 uses
  %i.lm = fmul <2 x float> %i.li, %i.li
  %i.ln = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ld, <2 x float> %i.ld, <2 x float> %i.lm)
  %i.lo = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ln) ; 3 uses
  %i.lp = fmul float %i.ll, 0.000000e+00
  %i.lq = fcmp olt float %i.lk, %i.lp
  %i.lr = extractelement <2 x float> %i.ld, i64 1
  %shift249.a = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop250.a = fmul <2 x float> %i.lo, %shift249.a
  %i.ls = fmul float %i.lk, 0.000000e+00
  %shift252 = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop253 = fmul <2 x float> %i.li, %shift252
  %i.lt = extractelement <2 x float> %foldExtExtBinop253, i64 0
  %i.lu = fadd float %i.ll, %i.ls
  %i.lv = call float @llvm.fmuladd.f32(float %i.ll, float %i.lr, float %i.lt)
  %i.lw = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.lu, i64 1
  %i.ly = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lz = shufflevector <2 x float> %foldExtExtBinop250.a, <2 x float> %i.ly, <2 x i32> <i32 0, i32 3>
  %i.ma = fdiv <2 x float> %i.lx, %i.lz           ; 2 uses
  %i.mb = fcmp olt <2 x float> %i.ma, splat (float -1.000000e+00)
  %i.mc = select <2 x i1> %i.mb, <2 x float> splat (float -1.000000e+00), <2 x float> %i.ma ; 2 uses
  %i.md = fcmp ogt <2 x float> %i.mc, splat (float 1.000000e+00)
  %i.me = select <2 x i1> %i.md, <2 x float> splat (float 1.000000e+00), <2 x float> %i.mc ; 2 uses
  %i.mf = extractelement <2 x float> %i.me, i64 1
  %i.mg = call float @acosf(float noundef %i.mf) #30 ; 2 uses
  %i.mh = fneg float %i.mg
  %i.mi = select i1 %i.lq, float %i.mh, float %i.mg ; 2 uses
  %i.mj = fmul <2 x float> %i.lj, %i.ld           ; 2 uses
  %i.mk = extractelement <2 x float> %i.mj, i64 0
  %i.ml = extractelement <2 x float> %i.mj, i64 1
  %i.mm = fcmp olt float %i.mk, %i.ml
  %i.mn = extractelement <2 x float> %i.me, i64 0
  %i.mo = call float @acosf(float noundef %i.mn) #30 ; 2 uses
  %i.mp = fneg float %i.mo
  %i.mq = select i1 %i.mm, float %i.mp, float %i.mo ; 5 uses
  %i.mr = fcmp ule float %i.mq, 0.000000e+00
  %or.cond5.not.i.i = select i1 %i.hw, i1 true, i1 %i.mr
  br i1 %or.cond5.not.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ms = fadd float %i.mq, f0xC0C90FDB
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.mt = fcmp olt float %i.mq, 0.000000e+00
  %or.cond7.i.i = select i1 %i.hw, i1 %i.mt, i1 false
  br i1 %or.cond7.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mu = fadd float %i.mq, f0x40C90FDB
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0173.i.i = phi float [ %i.ms, %bb.au ], [ %i.mu, %bb.aw ], [ %i.mq, %bb.av ] ; 5 uses
  %i.mv = call float @llvm.fabs.f32(float %.0173.i.i)
  %i.mw = fdiv float %i.mv, f0x3FC90FDB
  %i.mx = fadd float %i.mw, 1.000000e+00
  %i.my = fptosi float %i.mx to i32               ; 4 uses
  %i.mz = sitofp i32 %i.my to float               ; 3 uses
  %i.na = fdiv float %.0173.i.i, %i.mz
  %i.nb = fmul float %i.na, 5.000000e-01          ; 4 uses
  %i.nc = call float @llvm.fabs.f32(float %i.nb)
  %or.cond9.i.i = fcmp olt float %i.nc, 1.000000e-03
  br i1 %or.cond9.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nd = fmul nnan float %i.nb, 5.000000e-01
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ne = call float @cosf(float noundef %i.nb) #30
  %i.nf = fsub float 1.000000e+00, %i.ne
  %i.ng = call float @sinf(float noundef %i.nb) #30
  %i.nh = fdiv float %i.nf, %i.ng
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0167.i.i = phi float [ %i.nd, %bb.ay ], [ %i.nh, %bb.az ]
  %i.ni = fmul float %.0167.i.i, f0x3FAAAAAB
  %i.nj = call float @llvm.fabs.f32(float %i.ni)  ; 2 uses
  %i.nk = fcmp olt float %.0173.i.i, 0.000000e+00
  %i.nl = fneg float %i.nj
  %.0.i146.i = select i1 %i.nk, float %i.nl, float %i.nj
  %.not187204.i.i = icmp slt i32 %i.my, 0
  br i1 %.not187204.i.i, label %nsvg__pathArcTo.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nm = fdiv float 0.000000e+00, %i.mz
  %i.nn = call float @llvm.fmuladd.f32(float %.0173.i.i, float %i.nm, float %i.mi) ; 2 uses
  %i.no = call float @cosf(float noundef %i.nn) #30 ; 2 uses
  %i.np = call float @sinf(float noundef %i.nn) #30 ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i32 %i.my, 0
  br i1 %exitcond.peel.not.i.i, label %nsvg__pathArcTo.exit.i, label %.lr.ph.peel.next.i.preheader.i

.lr.ph.peel.next.i.preheader.i:                   ; preds = %bb.bb
  %i.nq = fneg float %i.np
  %i.nr = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.no, i64 1
  %i.nt = fmul <2 x float> %i.jn, %i.ns
  %i.nu = insertelement <2 x float> poison, float %.0.i146.i, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nw = fmul <2 x float> %i.nv, %i.nt           ; 2 uses
  %i.nx = insertelement <2 x float> %i.ix, float %i.is, i64 1 ; 3 uses
  %i.ny = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nz = fmul <2 x float> %i.nx, %i.ny
  %i.oa = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.ir, i64 1 ; 3 uses
  %i.od = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.oc, <2 x float> %i.nz)
  %i.oe = insertelement <2 x float> poison, float %i.no, i64 0
  %i.of = insertelement <2 x float> %i.oe, float %i.np, i64 1
  %i.og = fmul <2 x float> %i.jn, %i.of           ; 2 uses
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oi = fmul <2 x float> %i.nx, %i.oh
  %i.oj = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oj, <2 x float> %i.oc, <2 x float> %i.oi)
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.om = fadd <2 x float> %i.ky, %i.ol
  %i.on = insertelement <2 x float> %i.it, float %i.ir, i64 1
  %i.oo = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.iq, i64 1
  br label %.lr.ph.peel.next.i.i

.lr.ph.peel.next.i.i:                             ; preds = %.lr.ph.peel.next.i.i, %.lr.ph.peel.next.i.preheader.i
  %.0168209.i.i = phi i32 [ %i.py, %.lr.ph.peel.next.i.i ], [ 1, %.lr.ph.peel.next.i.preheader.i ] ; 3 uses
  %i.oq = phi <2 x float> [ %i.pm, %.lr.ph.peel.next.i.i ], [ %i.od, %.lr.ph.peel.next.i.preheader.i ]
  %i.or = phi <2 x float> [ %i.po, %.lr.ph.peel.next.i.i ], [ %i.om, %.lr.ph.peel.next.i.preheader.i ]
  %i.os = uitofp nneg i32 %.0168209.i.i to float
  %i.ot = fdiv float %i.os, %i.mz
  %i.ou = call float @llvm.fmuladd.f32(float %.0173.i.i, float %i.ot, float %i.mi) ; 2 uses
  %i.ov = call float @cosf(float noundef %i.ou) #30 ; 2 uses
  %i.ow = call float @sinf(float noundef %i.ou) #30 ; 2 uses
end_hunk_0
begin_hunk_1_@nsvgRasterize:bb.a
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !128 ; 3 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.16.i, i64 8
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !129 ; 3 uses
  %i.aab = fneg float %i.aaa
  %i.aac = fadd float %i.zw, %i.zy
  %i.aad = fmul float %i.aac, 5.000000e-01        ; 4 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.16.i, i64 20 ; 2 uses
  store float %i.aad, ptr %i.aae, align 4, !tbaa !221
  %i.aaf = fsub float %i.aab, %i.zv
  %i.aag = fmul float %i.aaf, 5.000000e-01        ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.16.i, i64 24 ; 2 uses
  store float %i.aag, ptr %i.aah, align 4, !tbaa !222
  %i.aai = fmul float %i.aag, %i.aag
  %i.aaj = tail call float @llvm.fmuladd.f32(float %i.aad, float %i.aad, float %i.aai) ; 3 uses
  %i.aak = fcmp ogt float %i.aaj, f0x358637BD
  br i1 %i.aak, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.lr.ph7.split.i
  %i.aal = fdiv float 1.000000e+00, %i.aaj        ; 2 uses
  %i.aam = fcmp ogt float %i.aal, 6.000000e+02
  %spec.store.select.i = select i1 %i.aam, float 6.000000e+02, float %i.aal ; 2 uses
  %i.aan = fmul float %i.aad, %spec.store.select.i
  store float %i.aan, ptr %i.aae, align 4, !tbaa !221
  %i.aao = fmul float %i.aag, %spec.store.select.i
  store float %i.aao, ptr %i.aah, align 4, !tbaa !222
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph7.split.i
  %i.aap = getelementptr inbounds nuw i8, ptr %.16.i, i64 28 ; 3 uses
  %i.aaq = load i8, ptr %i.aap, align 4, !tbaa !116
  %i.aar = and i8 %i.aaq, 1                       ; 3 uses
  %i.aas = fneg float %i.zy
  %i.aat = fmul float %i.zv, %i.aas
  %i.aau = tail call float @llvm.fmuladd.f32(float %i.aaa, float %i.zw, float %i.aat)
  %i.aav = fcmp ogt float %i.aau, 0.000000e+00
  %i.aaw = or disjoint i8 %i.aar, 4
  %spec.select.i = select i1 %i.aav, i8 %i.aaw, i8 %i.aar ; 2 uses
  store i8 %spec.select.i, ptr %i.aap, align 4, !tbaa !116
  %.not.i162 = icmp eq i8 %i.aar, 0
  br i1 %.not.i162, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.aax = fmul float %i.ho, %i.aaj
  %i.aay = fmul float %i.ho, %i.aax
  %i.aaz = fcmp olt float %i.aay, 1.000000e+00
  br i1 %i.aaz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aba = or disjoint i8 %spec.select.i, 2
  store i8 %i.aba, ptr %i.aap, align 4, !tbaa !116
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.abb = getelementptr inbounds nuw i8, ptr %.16.i, i64 32
  %i.abc = add nuw nsw i32 %.0644.i, 1            ; 2 uses
  %exitcond10.not.i = icmp eq i32 %i.abc, %.val181.i
  br i1 %exitcond10.not.i, label %.sink.split.i, label %.lr.ph7.split.i, !llvm.loop !202

.sink.split.i:                                    ; preds = %bb.bj, %bb.be, %bb.bc, %bb.ax
  %i.abd = phi i32 [ %i.us, %bb.ax ], [ %.val181.i, %bb.be ], [ %i.us, %bb.bc ], [ %.val181.i, %bb.bj ]
  %i.abe = phi ptr [ %.val182.i, %bb.ax ], [ %i.ji, %bb.be ], [ %.val182.i, %bb.bc ], [ %i.ji, %bb.bj ]
  %.sink359.i = phi i32 [ 0, %bb.ax ], [ %.0167272.i, %bb.be ], [ 0, %bb.bc ], [ %.0167272.i, %bb.bj ]
  tail call fastcc void @nsvg__expandStroke(ptr noundef nonnull %0, ptr noundef %i.abe, i32 noundef %i.abd, i32 noundef %.sink359.i, i32 noundef %i.hq, i32 noundef %i.hs, float noundef %i.hk)
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %._crit_edge305.i, %._crit_edge.i134
  %i.abf = getelementptr inbounds nuw i8, ptr %.0166309.i, i64 32
  %.0166.i = load ptr, ptr %i.abf, align 8, !tbaa !60 ; 2 uses
  %.not.i135 = icmp eq ptr %.0166.i, null
  br i1 %.not.i135, label %nsvg__flattenShapeStroke.exit, label %bb.u, !llvm.loop !205

nsvg__flattenShapeStroke.exit:                    ; preds = %bb.bk
  %.pre = load i32, ptr %i.an, align 8, !tbaa !112 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  %i.abg = icmp sgt i32 %.pre, 0
  br i1 %i.abg, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %nsvg__flattenShapeStroke.exit
  %i.abh = load ptr, ptr %i.au, align 8, !tbaa !98 ; 3 uses
  %wide.trip.count227 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter342 = and i64 %wide.trip.count227, 1
  %i.abi = icmp eq i32 %.pre, 1
  br i1 %i.abi, label %.epil.preheader341, label %.lr.ph206.new

.lr.ph206.new:                                    ; preds = %.lr.ph206
  %unroll_iter346 = and i64 %wide.trip.count227, 2147483646
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.lr.ph206.new
  %indvars.iv224 = phi i64 [ 0, %.lr.ph206.new ], [ %indvars.iv.next225.1, %bb.bl ] ; 3 uses
  %niter347 = phi i64 [ 0, %.lr.ph206.new ], [ %niter347.next.1, %bb.bl ]
  %i.abj = getelementptr inbounds nuw [32 x i8], ptr %i.abh, i64 %indvars.iv224 ; 2 uses
  %i.abk = load <4 x float>, ptr %i.abj, align 8, !tbaa !31
  %i.abl = fadd <4 x float> %i.bc, %i.abk
  %i.abm = fmul <4 x float> %i.abl, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.abm, ptr %i.abj, align 8, !tbaa !31
  %i.abn = getelementptr inbounds nuw [32 x i8], ptr %i.abh, i64 %indvars.iv224
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 32 ; 2 uses
  %i.abp = load <4 x float>, ptr %i.abo, align 8, !tbaa !31
  %i.abq = fadd <4 x float> %i.bc, %i.abp
  %i.abr = fmul <4 x float> %i.abq, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.abr, ptr %i.abo, align 8, !tbaa !31
  %indvars.iv.next225.1 = add nuw nsw i64 %indvars.iv224, 2 ; 2 uses
  %niter347.next.1 = add i64 %niter347, 2         ; 2 uses
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %._crit_edge207.thread301.loopexit.unr-lcssa, label %bb.bl, !llvm.loop !206

._crit_edge207:                                   ; preds = %nsvg__flattenShapeStroke.exit
  %.not119 = icmp eq i32 %.pre, 0
  br i1 %.not119, label %bb.bm, label %._crit_edge207.thread301

._crit_edge207.thread301.loopexit.unr-lcssa:      ; preds = %bb.bl
  %lcmp.mod344.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod344.not, label %._crit_edge207.thread301, label %.epil.preheader341

.epil.preheader341:                               ; preds = %._crit_edge207.thread301.loopexit.unr-lcssa, %.lr.ph206
  %indvars.iv224.epil.init = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next225.1, %._crit_edge207.thread301.loopexit.unr-lcssa ]
  %lcmp.mod345 = trunc i32 %.pre to i1
  tail call void @llvm.assume(i1 %lcmp.mod345)
  %i.abs = getelementptr inbounds nuw [32 x i8], ptr %i.abh, i64 %indvars.iv224.epil.init ; 2 uses
  %i.abt = load <4 x float>, ptr %i.abs, align 8, !tbaa !31
  %i.abu = fadd <4 x float> %i.bc, %i.abt
  %i.abv = fmul <4 x float> %i.abu, <float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 5.000000e+00>
  store <4 x float> %i.abv, ptr %i.abs, align 8, !tbaa !31
  br label %._crit_edge207.thread301

._crit_edge207.thread301:                         ; preds = %.epil.preheader341, %._crit_edge207.thread301.loopexit.unr-lcssa, %._crit_edge207
  %i.abw = load ptr, ptr %i.au, align 8, !tbaa !98
  %i.abx = sext i32 %.pre to i64
  tail call void @qsort(ptr noundef %i.abw, i64 noundef %i.abx, i64 noundef 32, ptr noundef nonnull @nsvg__cmpEdge) #30
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge207.thread, %._crit_edge207.thread301, %._crit_edge207
  %i.aby = load float, ptr %i.bx, align 8, !tbaa !123
  call fastcc void @nsvg__initPaint(ptr noundef %10, ptr noundef %i.bo, float noundef %i.aby)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.bm, %._crit_edge204.thread
  %.sink = phi i8 [ %i.hh, %._crit_edge204.thread ], [ 0, %bb.bm ]
  call fastcc void @nsvg__rasterizeSortedEdges(ptr noundef nonnull %0, float noundef %2, float noundef %3, float noundef %4, ptr noundef %10, i8 noundef signext %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %bb.g, %bb.r, %bb.s
  %i.abz = add nuw nsw i32 %.0209, 1              ; 2 uses
  %exitcond234.not = icmp eq i32 %i.abz, 3
  br i1 %exitcond234.not, label %.loopexit, label %bb.g, !llvm.loop !207

.loopexit:                                        ; preds = %.thread, %bb.f
  %i.aca = getelementptr inbounds nuw i8, ptr %.0110212, i64 328
  %.0110 = load ptr, ptr %i.aca, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %.0110, null
  br i1 %.not, label %._crit_edge215, label %bb.f, !llvm.loop !208

._crit_edge215:                                   ; preds = %.loopexit, %._crit_edge
  %i.acb = icmp sgt i32 %6, 0                     ; 2 uses
  %or.cond.i145 = and i1 %i.acb, %i.m
  br i1 %or.cond.i145, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge215
  %i.acc = sext i32 %8 to i64
  %wide.trip.count.i151 = zext nneg i32 %7 to i64
  br label %.lr.ph.i152

.preheader.i:                                     ; preds = %._crit_edge.i155, %._crit_edge215
  br i1 %i.m, label %.lr.ph153.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph153.i:                                      ; preds = %.preheader.i
  %i.acd = sub i32 3, %8
  %i.ace = sext i32 %i.acd to i64                 ; 3 uses
  %i.acf = sub nsw i32 0, %8
  %i.acg = sext i32 %i.acf to i64                 ; 3 uses
  %i.ach = sub i32 1, %8
  %i.aci = sext i32 %i.ach to i64                 ; 3 uses
  %i.acj = sub i32 2, %8
  %i.ack = sext i32 %i.acj to i64                 ; 3 uses
  %i.acl = sext i32 %8 to i64                     ; 4 uses
  br i1 %i.acb, label %.lr.ph150.preheader.i, label %nsvg__unpremultiplyAlpha.exit

.lr.ph150.preheader.i:                            ; preds = %.lr.ph153.i
  %i.acm = zext nneg i32 %7 to i64                ; 2 uses
  %.not201.i = icmp eq i32 %6, 1                  ; 2 uses
  %i.acn = icmp samesign ugt i32 %6, 2
  %exitcond157.peel184.not.i = icmp eq i32 %6, 2
  br label %.lr.ph150.i

.lr.ph.i152:                                      ; preds = %._crit_edge.i155, %.lr.ph.preheader.i
  %indvars.iv.i153 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i156, %._crit_edge.i155 ] ; 2 uses
  %i.aco = mul nsw i64 %indvars.iv.i153, %i.acc
  %i.acp = getelementptr inbounds i8, ptr %5, i64 %i.aco
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %.lr.ph.i152
  %.0104141.i = phi ptr [ %i.acp, %.lr.ph.i152 ], [ %i.acy, %bb.bp ] ; 6 uses
  %.0107140.i = phi i32 [ 0, %.lr.ph.i152 ], [ %i.acz, %bb.bp ]
  %i.acq = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 3
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !17 ; 2 uses
  %.not115.i = icmp eq i8 %i.acr, 0
  br i1 %.not115.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.acs = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 2
  %i.act = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 1 ; 2 uses
  %i.acu = load i8, ptr %.0104141.i, align 1, !tbaa !17
  %i.acv = zext i8 %i.acu to i16
  %.lhs.trunc.i = mul nuw i16 %i.acv, 255
  %.rhs.trunc.i = zext i8 %i.acr to i16           ; 2 uses
  %i.acw = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %i.acx = trunc i16 %i.acw to i8
  store i8 %i.acx, ptr %.0104141.i, align 1, !tbaa !17
  %11 = load <2 x i8>, ptr %i.act, align 1, !tbaa !17
  %12 = zext <2 x i8> %11 to <2 x i16>
  %13 = mul nuw <2 x i16> %12, splat (i16 255)
  %14 = insertelement <2 x i16> poison, i16 %.rhs.trunc.i, i64 0
  %15 = shufflevector <2 x i16> %14, <2 x i16> poison, <2 x i32> zeroinitializer
  %16 = udiv <2 x i16> %13, %15                   ; 2 uses
  %17 = bitcast <2 x i16> %16 to <4 x i8>
  %18 = extractelement <4 x i8> %17, i64 0
  store i8 %18, ptr %i.act, align 1, !tbaa !17
  %19 = bitcast <2 x i16> %16 to <4 x i8>
  %20 = extractelement <4 x i8> %19, i64 2
  store i8 %20, ptr %i.acs, align 1, !tbaa !17
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.acy = getelementptr inbounds nuw i8, ptr %.0104141.i, i64 4
  %i.acz = add nuw nsw i32 %.0107140.i, 1         ; 2 uses
  %exitcond.not.i154 = icmp eq i32 %i.acz, %6
  br i1 %exitcond.not.i154, label %._crit_edge.i155, label %bb.bn, !llvm.loop !209

._crit_edge.i155:                                 ; preds = %bb.bp
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next.i156, %wide.trip.count.i151
  br i1 %exitcond156.not.i, label %.preheader.i, label %.lr.ph.i152, !llvm.loop !210

.lr.ph150.i:                                      ; preds = %._crit_edge151.i, %.lr.ph150.preheader.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph150.preheader.i ], [ %indvars.iv.next187.i, %._crit_edge151.i ] ; 3 uses
  %i.ada = mul nsw i64 %indvars.iv186.i, %i.acl
  %i.adb = getelementptr inbounds i8, ptr %5, i64 %i.ada ; 22 uses
  %i.adc = icmp samesign ugt i64 %indvars.iv186.i, 1 ; 3 uses
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 3 uses
  %i.add = icmp samesign ult i64 %indvars.iv.next187.i, %i.acm ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adb, i64 3
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !17
  %i.adg = icmp eq i8 %i.adf, 0
  br i1 %i.adg, label %bb.bq, label %bb.ca

bb.bq:                                            ; preds = %.lr.ph150.i
  br i1 %.not201.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 7
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !17
  %.not112.peel.i = icmp eq i8 %i.adi, 0
  br i1 %.not112.peel.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !17
  %i.adl = zext i8 %i.adk to i16
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adb, i64 5
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !17
  %i.ado = zext i8 %i.adn to i16
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adb, i64 6
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !17
  %i.adr = zext i8 %i.adq to i16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.1100.peel.i = phi i16 [ %i.adl, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %.196.peel.i = phi i16 [ %i.ado, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %.192.peel.i = phi i16 [ %i.adr, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %.1.peel.i = phi i32 [ 1, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  br i1 %i.adc, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.ads = getelementptr inbounds i8, ptr %i.adb, i64 %i.ace
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !17
  %.not113.peel.i = icmp eq i8 %i.adt, 0
  br i1 %.not113.peel.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.adu = getelementptr inbounds i8, ptr %i.adb, i64 %i.acg
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !17
  %i.adw = zext i8 %i.adv to i16
  %i.adx = add nuw nsw i16 %.1100.peel.i, %i.adw
  %i.ady = getelementptr inbounds i8, ptr %i.adb, i64 %i.aci
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !17
  %i.aea = zext i8 %i.adz to i16
  %i.aeb = add nuw nsw i16 %.196.peel.i, %i.aea
  %i.aec = getelementptr inbounds i8, ptr %i.adb, i64 %i.ack
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !17
  %i.aee = zext i8 %i.aed to i16
  %i.aef = add nuw nsw i16 %.192.peel.i, %i.aee
  %i.aeg = add nuw nsw i32 %.1.peel.i, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.2101.peel.i = phi i16 [ %i.adx, %bb.bv ], [ %.1100.peel.i, %bb.bu ], [ %.1100.peel.i, %bb.bt ] ; 2 uses
  %.297.peel.i = phi i16 [ %i.aeb, %bb.bv ], [ %.196.peel.i, %bb.bu ], [ %.196.peel.i, %bb.bt ] ; 2 uses
  %.293.peel.i = phi i16 [ %i.aef, %bb.bv ], [ %.192.peel.i, %bb.bu ], [ %.192.peel.i, %bb.bt ] ; 2 uses
  %.2.peel.i = phi i32 [ %i.aeg, %bb.bv ], [ %.1.peel.i, %bb.bu ], [ %.1.peel.i, %bb.bt ] ; 3 uses
  br i1 %i.add, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.aeh = getelementptr i8, ptr %i.adb, i64 %i.acl ; 4 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 3
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !17
  %.not114.peel.i = icmp eq i8 %i.aej, 0
  br i1 %.not114.peel.i, label %bb.by, label %.thread.peel.i

.thread.peel.i:                                   ; preds = %bb.bx
  %i.aek = load i8, ptr %i.aeh, align 1, !tbaa !17
  %i.ael = zext i8 %i.aek to i16
  %i.aem = add nuw nsw i16 %.2101.peel.i, %i.ael
  %i.aen = getelementptr i8, ptr %i.aeh, i64 1
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !17
  %i.aep = zext i8 %i.aeo to i16
  %i.aeq = add nuw nsw i16 %.297.peel.i, %i.aep
  %i.aer = getelementptr i8, ptr %i.aeh, i64 2
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !17
  %i.aet = zext i8 %i.aes to i16
  %i.aeu = add nuw nsw i16 %.293.peel.i, %i.aet
  %i.aev = add nuw nsw i32 %.2.peel.i, 1
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.not139.peel.i = icmp eq i32 %.2.peel.i, 0
  br i1 %.not139.peel.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.thread.peel.i
  %.3123.peel.i = phi i32 [ %i.aev, %.thread.peel.i ], [ %.2.peel.i, %bb.by ]
  %.394122.peel.i = phi i16 [ %i.aeu, %.thread.peel.i ], [ %.293.peel.i, %bb.by ]
  %.398121.peel.i = phi i16 [ %i.aeq, %.thread.peel.i ], [ %.297.peel.i, %bb.by ]
  %.3102120.peel.i = phi i16 [ %i.aem, %.thread.peel.i ], [ %.2101.peel.i, %bb.by ]
  %.rhs.trunc131.peel.i = trunc nuw nsw i32 %.3123.peel.i to i16 ; 3 uses
  %i.aew = udiv i16 %.3102120.peel.i, %.rhs.trunc131.peel.i
  %i.aex = trunc i16 %i.aew to i8
  store i8 %i.aex, ptr %i.adb, align 1, !tbaa !17
  %i.aey = udiv i16 %.398121.peel.i, %.rhs.trunc131.peel.i
  %i.aez = trunc i16 %i.aey to i8
  %i.afa = getelementptr inbounds nuw i8, ptr %i.adb, i64 1
  store i8 %i.aez, ptr %i.afa, align 1, !tbaa !17
  %i.afb = udiv i16 %.394122.peel.i, %.rhs.trunc131.peel.i
  %i.afc = trunc i16 %i.afb to i8
  %i.afd = getelementptr inbounds nuw i8, ptr %i.adb, i64 2
  store i8 %i.afc, ptr %i.afd, align 1, !tbaa !17
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.lr.ph150.i
  %i.afe = getelementptr inbounds nuw i8, ptr %i.adb, i64 4 ; 6 uses
  br i1 %.not201.i, label %._crit_edge151.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.ca
  %i.aff = getelementptr inbounds nuw i8, ptr %i.adb, i64 7
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !17
  %i.afh = icmp eq i8 %i.afg, 0
  br i1 %i.afh, label %bb.cb, label %bb.cl

bb.cb:                                            ; preds = %.peel.next.i
  br i1 %i.acn, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.afi = getelementptr inbounds nuw i8, ptr %i.adb, i64 11
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !17
  %.not112.peel164.i = icmp eq i8 %i.afj, 0
  br i1 %.not112.peel164.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.afk = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.afl = load i8, ptr %i.afk, align 1, !tbaa !17
  %i.afm = zext i8 %i.afl to i16
  %i.afn = getelementptr inbounds nuw i8, ptr %i.adb, i64 9
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !17
  %i.afp = zext i8 %i.afo to i16
  %i.afq = getelementptr inbounds nuw i8, ptr %i.adb, i64 10
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !17
  %i.afs = zext i8 %i.afr to i16
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %.1100.peel165.i = phi i16 [ %i.afm, %bb.cd ], [ 0, %bb.cc ], [ 0, %bb.cb ] ; 3 uses
  %.196.peel166.i = phi i16 [ %i.afp, %bb.cd ], [ 0, %bb.cc ], [ 0, %bb.cb ] ; 3 uses
  %.192.peel167.i = phi i16 [ %i.afs, %bb.cd ], [ 0, %bb.cc ], [ 0, %bb.cb ] ; 3 uses
  %.1.peel168.i = phi i32 [ 1, %bb.cd ], [ 0, %bb.cc ], [ 0, %bb.cb ] ; 3 uses
  br i1 %i.adc, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.aft = getelementptr inbounds i8, ptr %i.afe, i64 %i.ace
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !17
  %.not113.peel169.i = icmp eq i8 %i.afu, 0
  br i1 %.not113.peel169.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.afv = getelementptr inbounds i8, ptr %i.afe, i64 %i.acg
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !17
  %i.afx = zext i8 %i.afw to i16
  %i.afy = add nuw nsw i16 %.1100.peel165.i, %i.afx
  %i.afz = getelementptr inbounds i8, ptr %i.afe, i64 %i.aci
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !17
  %i.agb = zext i8 %i.aga to i16
  %i.agc = add nuw nsw i16 %.196.peel166.i, %i.agb
  %i.agd = getelementptr inbounds i8, ptr %i.afe, i64 %i.ack
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !17
  %i.agf = zext i8 %i.age to i16
  %i.agg = add nuw nsw i16 %.192.peel167.i, %i.agf
  %i.agh = add nuw nsw i32 %.1.peel168.i, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %.2101.peel170.i = phi i16 [ %i.afy, %bb.cg ], [ %.1100.peel165.i, %bb.cf ], [ %.1100.peel165.i, %bb.ce ] ; 2 uses
  %.297.peel171.i = phi i16 [ %i.agc, %bb.cg ], [ %.196.peel166.i, %bb.cf ], [ %.196.peel166.i, %bb.ce ] ; 2 uses
  %.293.peel172.i = phi i16 [ %i.agg, %bb.cg ], [ %.192.peel167.i, %bb.cf ], [ %.192.peel167.i, %bb.ce ] ; 2 uses
  %.2.peel173.i = phi i32 [ %i.agh, %bb.cg ], [ %.1.peel168.i, %bb.cf ], [ %.1.peel168.i, %bb.ce ] ; 3 uses
  br i1 %i.add, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.agi = getelementptr i8, ptr %i.afe, i64 %i.acl ; 4 uses
  %i.agj = getelementptr i8, ptr %i.agi, i64 3
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !17
  %.not114.peel174.i = icmp eq i8 %i.agk, 0
  br i1 %.not114.peel174.i, label %bb.cj, label %.thread.peel175.i
end_hunk_1
begin_hunk_2_@nsvg__addPath:bb.a

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %calloc, i64 12
  store i8 %1, ptr %i.u, align 4, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.n, ptr %i.v, align 8, !tbaa !62
  %i.w = icmp sgt i32 %i.n, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 39944
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ac = load <2 x float>, ptr %i.z, align 4, !tbaa !31 ; 5 uses
  %i.ad = load <2 x float>, ptr %i.aa, align 4, !tbaa !31 ; 5 uses
  %i.ae = load <2 x float>, ptr %i.ab, align 4, !tbaa !31 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.af = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.af
  %scevgep73 = getelementptr i8, ptr %i.y, i64 %i.af
  %bound0 = icmp ult ptr %i.s, %scevgep73
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat75 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat77 = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat79 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat81 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat83 = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl nuw nsw i64 %index, 1               ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ag
  %wide.vec = load <8 x float>, ptr %i.ai, align 4, !tbaa !31, !alias.scope !304 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec84 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.aj = fmul <4 x float> %strided.vec84, %broadcast.splat75
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat, <4 x float> %i.aj)
  %i.al = fadd <4 x float> %broadcast.splat77, %i.ak
  %i.am = fmul <4 x float> %strided.vec84, %broadcast.splat81
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat79, <4 x float> %i.am)
  %i.ao = fadd <4 x float> %broadcast.splat83, %i.an
  %interleaved.vec = shufflevector <4 x float> %i.al, <4 x float> %i.ao, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ah, align 4, !tbaa !31, !alias.scope !305, !noalias !304
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = shl nuw nsw i64 %indvars.iv.ph, 1       ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aq
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !31 ; 2 uses
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.av = fmul <2 x float> %i.au, %i.ad
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ac, <2 x float> %i.av)
  %i.ay = fadd <2 x float> %i.ae, %i.ax
  store <2 x float> %i.ay, ptr %i.ar, align 4, !tbaa !31
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.az = add nsw i64 %wide.trip.count, -1
  %i.ba = icmp eq i64 %indvars.iv.ph, %i.az
  br i1 %i.ba, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bb = add nsw i32 %i.n, -1
  %.not72 = icmp eq i32 %i.n, 1
  br i1 %.not72, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %calloc, i64 16 ; 2 uses
  call fastcc void @nsvg__curveBounds(ptr noundef %i.a, ptr noundef nonnull %i.s)
  %i.bd = load <4 x float>, ptr %i.a, align 16, !tbaa !31 ; 2 uses
  store <4 x float> %i.bd, ptr %i.bc, align 8, !tbaa !31
  %i.be = icmp samesign ugt i32 %i.n, 4
  br i1 %i.be, label %.peel.next, label %._crit_edge

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bf = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bf
  %i.bi = load <2 x float>, ptr %i.bh, align 4, !tbaa !31 ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x float> %i.bj, %i.ad
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.ac, <2 x float> %i.bk)
  %i.bn = fadd <2 x float> %i.ae, %i.bm
  store <2 x float> %i.bn, ptr %i.bg, align 4, !tbaa !31
  %indvars.iv.next = shl i64 %indvars.iv, 1
  %i.bo = add i64 %indvars.iv.next, 2             ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bo
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !31 ; 2 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.bs, %i.ad
  %i.bu = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ac, <2 x float> %i.bt)
  %i.bw = fadd <2 x float> %i.ae, %i.bv
  store <2 x float> %i.bw, ptr %i.bp, align 4, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !302

.peel.next:                                       ; preds = %bb.h, %.peel.next
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.peel.next ], [ 3, %bb.h ] ; 2 uses
  %i.bx = phi <4 x float> [ %i.cd, %.peel.next ], [ %i.bd, %bb.h ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv64, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  call fastcc void @nsvg__curveBounds(ptr noundef %i.a, ptr noundef nonnull %i.by)
  %i.bz = load <4 x float>, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.ca = fcmp olt <4 x float> %i.bx, %i.bz
  %i.cb = fcmp ogt <4 x float> %i.bx, %i.bz
  %i.cc = shufflevector <4 x i1> %i.ca, <4 x i1> %i.cb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cd = select <4 x i1> %i.cc, <4 x float> %i.bx, <4 x float> %i.bz ; 2 uses
  store <4 x float> %i.cd, ptr %i.bc, align 8, !tbaa !31
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 3 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next65 to i32
  %i.cf = icmp sgt i32 %i.bb, %i.ce
  br i1 %i.cf, label %.peel.next, label %._crit_edge, !llvm.loop !303

._crit_edge:                                      ; preds = %.peel.next, %bb.g, %bb.h, %.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 39960 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !72
  %i.ci = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !73
  store ptr %calloc, ptr %i.cg, align 8, !tbaa !72
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %calloc) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.d, %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__addShape(ptr nofree noundef captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39936
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [312 x i8], ptr %0, i64 %i.c ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39960 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(336) ptr @malloc(i64 noundef 336) #33 ; 32 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.j, i8 0, i64 272, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.l, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 4 dereferenceable(64) %i.n, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !31 ; 2 uses
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !31 ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.s
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.t)
  %i.v = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %1 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.v)
  %i.w = fmul float %1, 5.000000e-01              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !31
  %i.aa = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.z, %i.ab
  store <2 x float> %i.ac, ptr %i.y, align 4, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 276
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !151 ; 4 uses
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  store i8 %i.af, ptr %i.ag, align 4, !tbaa !66
  %i.ah = icmp sgt i32 %i.ae, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 244 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 108 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ae, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !31
  %wide.load116 = load <4 x float>, ptr %i.al, align 4, !tbaa !31
  %i.am = fmul <4 x float> %broadcast.splat, %wide.load
  %i.an = fmul <4 x float> %broadcast.splat, %wide.load116
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x float> %i.am, ptr %i.ao, align 4, !tbaa !31
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !31
  %i.at = fmul float %i.w, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  store float %i.at, ptr %i.au, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !307

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !153
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 141
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !126
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 281
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !152
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 142
  store i8 %i.az, ptr %i.ba, align 2, !tbaa !127
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store float %i.bc, ptr %i.bd, align 8, !tbaa !125
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !154
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  store i8 %i.bf, ptr %i.bg, align 4, !tbaa !124
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !147
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store float %i.bi, ptr %i.bj, align 8, !tbaa !123
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 311
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 149
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  store ptr %i.f, ptr %i.bn, align 8, !tbaa !87
  store ptr null, ptr %i.e, align 8, !tbaa !72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 2 uses
  store float %i.bp, ptr %i.bq, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !31 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 156 ; 2 uses
  store float %i.bs, ptr %i.bt, align 4, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 2 uses
  store float %i.bv, ptr %i.bw, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.by = load float, ptr %i.bx, align 4, !tbaa !31 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 164 ; 2 uses
  store float %i.by, ptr %i.bz, align 4, !tbaa !31
  %.097.in103 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.097104 = load ptr, ptr %.097.in103, align 8, !tbaa !73 ; 2 uses
  %.not105 = icmp eq ptr %.097104, null
  br i1 %.not105, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %._crit_edge, %.lr.ph109
  %i.ca = phi float [ %i.co, %.lr.ph109 ], [ %i.bv, %._crit_edge ] ; 2 uses
  %i.cb = phi float [ %i.ck, %.lr.ph109 ], [ %i.bs, %._crit_edge ] ; 2 uses
  %i.cc = phi float [ %i.cg, %.lr.ph109 ], [ %i.bp, %._crit_edge ] ; 2 uses
  %.097107 = phi ptr [ %.097, %.lr.ph109 ], [ %.097104, %._crit_edge ] ; 5 uses
  %storemerge106 = phi float [ %i.cs, %.lr.ph109 ], [ %i.by, %._crit_edge ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.097107, i64 16
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !31 ; 2 uses
  %i.cf = fcmp olt float %i.cc, %i.ce
  %i.cg = select i1 %i.cf, float %i.cc, float %i.ce ; 2 uses
  store float %i.cg, ptr %i.bq, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %.097107, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !31 ; 2 uses
  %i.cj = fcmp olt float %i.cb, %i.ci
  %i.ck = select i1 %i.cj, float %i.cb, float %i.ci ; 2 uses
  store float %i.ck, ptr %i.bt, align 4, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %.097107, i64 24
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !31 ; 2 uses
  %i.cn = fcmp ogt float %i.ca, %i.cm
  %i.co = select i1 %i.cn, float %i.ca, float %i.cm ; 2 uses
  store float %i.co, ptr %i.bw, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %.097107, i64 28
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !31 ; 2 uses
  %i.cr = fcmp ogt float %storemerge106, %i.cq
  %i.cs = select i1 %i.cr, float %storemerge106, float %i.cq ; 2 uses
  store float %i.cs, ptr %i.bz, align 4, !tbaa !31
  %.097.in = getelementptr inbounds nuw i8, ptr %.097107, i64 32
  %.097 = load ptr, ptr %.097.in, align 8, !tbaa !73 ; 2 uses
  %.not = icmp eq ptr %.097, null
  br i1 %.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !308

._crit_edge110:                                   ; preds = %.lr.ph109, %._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !37
  switch i8 %i.cu, label %bb.g [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge110
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 0, ptr %i.cv, align 8, !tbaa !44
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge110
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 1, ptr %i.cw, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !146
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.db = load float, ptr %i.da, align 4, !tbaa !148
  %i.dc = fmul float %i.db, 2.550000e+02
  %i.dd = fptoui float %i.dc to i32
  %i.de = shl i32 %i.dd, 24
  %i.df = or i32 %i.de, %i.cy
  store i32 %i.df, ptr %i.cz, align 8, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge110
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 -1, ptr %i.dg, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge110, %bb.e, %bb.f, %bb.d
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 309
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !149
  switch i8 %i.di, label %bb.k [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 0, ptr %i.dj, align 8, !tbaa !45
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 1, ptr %i.dk, align 8, !tbaa !45
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !150
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.dp = load float, ptr %i.do, align 4, !tbaa !33
end_hunk_2
begin_hunk_3_@nsvg__createGradient:bb.a
  %i.lb = load float, ptr %i.la, align 4, !tbaa !56
  %i.lc = fmul float %i.lb, %i.kd
  %i.ld = fmul float %i.lc, 5.200000e-01
  br label %nsvg__convertToPixels.exit184

bb.bw:                                            ; preds = %nsvg__convertToPixels.exit179
  %i.le = fdiv float %i.kd, 1.000000e+02
  %i.lf = extractelement <4 x float> %i.aj, i64 1
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.le, float %i.ga, float %i.lf)
  br label %nsvg__convertToPixels.exit184

nsvg__convertToPixels.exit184:                    ; preds = %nsvg__convertToPixels.exit179, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %.0.i183 = phi float [ %i.kz, %bb.bu ], [ %i.lg, %bb.bw ], [ %i.ld, %bb.bv ], [ %i.kh, %bb.bp ], [ %i.kl, %bb.bq ], [ %i.kp, %bb.br ], [ %i.kt, %bb.bs ], [ %i.kw, %bb.bt ], [ %i.kd, %nsvg__convertToPixels.exit179 ]
  %i.lh = getelementptr inbounds nuw i8, ptr %.013.i, i64 148
  %i.li = load i64, ptr %i.lh, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i185 = trunc i64 %i.li to i32
  %i.lj = bitcast i32 %.sroa.0.0.extract.trunc.i185 to float ; 9 uses
  %.sroa.12.0.extract.shift.i186 = lshr i64 %i.li, 32
  %.sroa.12.0.extract.trunc.i187 = trunc nuw i64 %.sroa.12.0.extract.shift.i186 to i32
  switch i32 %.sroa.12.0.extract.trunc.i187, label %nsvg__convertToPixels.exit189 [
    i32 7, label %bb.ce
    i32 9, label %bb.cd
    i32 2, label %bb.bx
    i32 3, label %bb.by
    i32 4, label %bb.bz
    i32 5, label %bb.ca
    i32 6, label %bb.cb
    i32 8, label %bb.cc
  ]

bb.bx:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.lk = fdiv float %i.lj, 7.200000e+01
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !40
  %i.ln = fmul float %i.lk, %i.lm
  br label %nsvg__convertToPixels.exit189

bb.by:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.lo = fdiv float %i.lj, 6.000000e+00
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !40
  %i.lr = fmul float %i.lo, %i.lq
  br label %nsvg__convertToPixels.exit189

bb.bz:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.ls = fdiv float %i.lj, 2.540000e+01
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !40
  %i.lv = fmul float %i.ls, %i.lu
  br label %nsvg__convertToPixels.exit189

bb.ca:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.lw = fdiv float %i.lj, 2.540000e+00
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !40
  %i.lz = fmul float %i.lw, %i.ly
  br label %nsvg__convertToPixels.exit189

bb.cb:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 40028
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !40
  %i.mc = fmul float %i.mb, %i.lj
  br label %nsvg__convertToPixels.exit189

bb.cc:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.md = getelementptr inbounds nuw i8, ptr %i.gl, i64 292
  %i.me = load float, ptr %i.md, align 4, !tbaa !56
  %i.mf = fmul float %i.me, %i.lj
  br label %nsvg__convertToPixels.exit189

bb.cd:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.mg = getelementptr inbounds nuw i8, ptr %i.gl, i64 292
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !56
  %i.mi = fmul float %i.mh, %i.lj
  %i.mj = fmul float %i.mi, 5.200000e-01
  br label %nsvg__convertToPixels.exit189

bb.ce:                                            ; preds = %nsvg__convertToPixels.exit184
  %i.mk = fdiv float %i.lj, 1.000000e+02
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.mk, float %i.ge, float 0.000000e+00)
  br label %nsvg__convertToPixels.exit189

nsvg__convertToPixels.exit189:                    ; preds = %nsvg__convertToPixels.exit184, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce
  %.0.i188 = phi float [ %i.mf, %bb.cc ], [ %i.ml, %bb.ce ], [ %i.mj, %bb.cd ], [ %i.ln, %bb.bx ], [ %i.lr, %bb.by ], [ %i.lv, %bb.bz ], [ %i.lz, %bb.ca ], [ %i.mc, %bb.cb ], [ %i.lj, %nsvg__convertToPixels.exit184 ] ; 3 uses
  %i.mm = insertelement <2 x float> poison, float %.0.i178, i64 0
  %i.mn = insertelement <2 x float> %i.mm, float %.0.i183, i64 1
  %i.mo = insertelement <2 x float> poison, float %.0.i188, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fdiv <2 x float> %i.mn, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store <2 x float> %i.mq, ptr %i.mr, align 4, !tbaa !31
  %i.ms = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.0.i188, i64 1
  %i.mt = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.0.i188, i64 0
  br label %bb.cf

bb.cf:                                            ; preds = %nsvg__convertToPixels.exit189, %nsvg__convertToPixels.exit164
  %i.mu = phi float [ %.0.i173, %nsvg__convertToPixels.exit189 ], [ %.0.i153, %nsvg__convertToPixels.exit164 ]
  %i.mv = phi float [ %.0.i168, %nsvg__convertToPixels.exit189 ], [ %.0.i149, %nsvg__convertToPixels.exit164 ]
  %i.mw = phi <2 x float> [ %i.ms, %nsvg__convertToPixels.exit189 ], [ %i.fx, %nsvg__convertToPixels.exit164 ] ; 2 uses
  %i.mx = phi <2 x float> [ %i.mt, %nsvg__convertToPixels.exit189 ], [ %i.fz, %nsvg__convertToPixels.exit164 ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.013.i, i64 176
  %i.mz = getelementptr inbounds nuw i8, ptr %.013.i, i64 184
  %i.na = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %.013.i, i64 192
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ne = load <2 x float>, ptr %i.mz, align 8, !tbaa !31 ; 3 uses
  %i.nf = load <2 x float>, ptr %i.my, align 8, !tbaa !31 ; 3 uses
  %i.ng = insertelement <2 x float> poison, float %i.mu, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ni = fmul <2 x float> %i.ne, %i.nh
  %i.nj = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nk, <2 x float> %i.nf, <2 x float> %i.ni)
  %i.nm = load <2 x float>, ptr %i.nb, align 8, !tbaa !31
  %i.nn = fadd <2 x float> %i.nm, %i.nl           ; 2 uses
  %i.no = load <2 x float>, ptr %i.nc, align 4, !tbaa !31 ; 2 uses
  %i.np = shufflevector <2 x float> %i.no, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.nq = load <2 x float>, ptr %3, align 4, !tbaa !31 ; 2 uses
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ns = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nt = fmul <2 x float> %i.ns, %i.no
  %i.nu = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nu, <2 x float> %i.nq, <2 x float> %i.nt)
  %i.nw = load <2 x float>, ptr %i.nd, align 4, !tbaa !31
  %i.nx = fadd <2 x float> %i.nw, %i.nv
  %i.ny = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nz = fmul <2 x float> %i.mx, %i.ny
  %i.oa = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> %i.oa, <2 x float> %i.nz)
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.od = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oe = fmul <2 x float> %i.mx, %i.od
  %i.of = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.og = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> %i.of, <2 x float> %i.oe)
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.oi = fmul <4 x float> %i.oh, %i.np
  %i.oj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oc, <4 x float> %i.nr, <4 x float> %i.oi)
  store <4 x float> %i.oj, ptr %i.o, align 4, !tbaa !31
  store <2 x float> %i.nx, ptr %i.na, align 4, !tbaa !31
  %i.ok = getelementptr inbounds nuw i8, ptr %.013.i, i64 172
  %i.ol = load i8, ptr %i.ok, align 4, !tbaa !142
  %i.om = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 %i.ol, ptr %i.om, align 4, !tbaa !135
  %i.on = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.oo = sext i32 %i.j to i64
  %i.op = shl nsw i64 %i.oo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.on, ptr nonnull align 4 %i.h, i64 %i.op, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i32 %i.j, ptr %i.oq, align 4, !tbaa !136
  store i8 %i.al, ptr %4, align 1, !tbaa !17
  br label %nsvg__findGradientData.exit.thread

nsvg__findGradientData.exit.thread:               ; preds = %bb.b, %nsvg__findGradientData.exit, %nsvg__findGradientData.exit148, %.preheader.i, %bb.a, %.thread.thread, %bb.cf
  %.0 = phi ptr [ %i.o, %bb.cf ], [ null, %.thread.thread ], [ null, %nsvg__findGradientData.exit ], [ null, %bb.a ], [ null, %.preheader.i ], [ null, %nsvg__findGradientData.exit148 ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__flattenCubicBez(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %9, 10
  br i1 %i.a, label %nsvg__addPathPoint.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = insertelement <2 x float> poison, float %1, i64 0
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1
  %i.e = insertelement <2 x float> poison, float %3, i64 0
  %i.f = insertelement <2 x float> %i.e, float %4, i64 1
  %i.g = insertelement <2 x float> poison, float %5, i64 0
  %i.h = insertelement <2 x float> %i.g, float %6, i64 1
  %i.i = insertelement <2 x float> poison, float %7, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = insertelement <2 x float> poison, float %8, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8290 = phi i32 [ %9, %.lr.ph ], [ %i.cs, %tailrecurse ]
  %.tr7585 = phi float [ %2, %.lr.ph ], [ %i.cq, %tailrecurse ] ; 2 uses
  %.tr7484 = phi float [ %1, %.lr.ph ], [ %i.cr, %tailrecurse ] ; 2 uses
  %i.m = phi <2 x float> [ %i.d, %.lr.ph ], [ %i.cp, %tailrecurse ]
  %i.n = phi <2 x float> [ %i.f, %.lr.ph ], [ %i.cn, %tailrecurse ] ; 4 uses
  %i.o = phi <2 x float> [ %i.h, %.lr.ph ], [ %i.cl, %tailrecurse ] ; 5 uses
  %i.p = fsub float %7, %.tr7484                  ; 3 uses
  %i.q = fsub float %8, %.tr7585                  ; 3 uses
  %i.r = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.s = fsub <2 x float> %i.r, %i.j
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.u = fsub <2 x float> %i.t, %i.l
  %i.v = fneg float %i.p
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.u, %i.x
  %i.z = insertelement <2 x float> poison, float %i.q, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.aa, <2 x float> %i.y) ; 3 uses
  %i.ac = fcmp olt <2 x float> %i.ab, zeroinitializer
  %i.ad = fneg <2 x float> %i.ab
  %i.ae = select <2 x i1> %i.ac, <2 x float> %i.ad, <2 x float> %i.ab
  %11 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ae) ; 2 uses
  %12 = fmul float %11, %11
  %i.af = load float, ptr %i.b, align 8, !tbaa !155
  %i.ag = fmul float %i.q, %i.q
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.ag)
  %i.ai = fmul float %i.ah, %i.af
  %i.aj = fcmp olt float %12, %i.ai
  br i1 %i.aj, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !113 ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = zext nneg i32 %i.al to i64
  %i.aq = getelementptr [32 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -32
  %i.as = load float, ptr %i.ar, align 4, !tbaa !117
  %i.at = getelementptr i8, ptr %i.aq, i64 -28
  %i.au = load float, ptr %i.at, align 4, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !119 ; 2 uses
  %i.ax = fsub float %7, %i.as                    ; 2 uses
  %i.ay = fsub float %8, %i.au                    ; 2 uses
  %i.az = fmul float %i.ay, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.az)
  %i.bb = fmul float %i.aw, %i.aw
  %i.bc = fcmp uge float %i.ba, %i.bb
  br i1 %i.bc, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr i8, ptr %i.aq, i64 -4     ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !116
  %i.bf = trunc nuw nsw i32 %10 to i8
  %i.bg = or i8 %i.be, %i.bf
  store i8 %i.bg, ptr %i.bd, align 4, !tbaa !116
  br label %nsvg__addPathPoint.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !114 ; 3 uses
  %.not29.i = icmp slt i32 %i.al, %i.bi
  br i1 %.not29.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !99
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = shl nuw nsw i32 %i.bi, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 64 ; 2 uses
  store i32 %spec.select.i, ptr %i.bh, align 4, !tbaa !114
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !99
  %i.bn = zext nneg i32 %spec.select.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 5
  %i.bp = tail call ptr @realloc(ptr noundef %i.bm, i64 noundef %i.bo) #32 ; 3 uses
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !99
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %nsvg__addPathPoint.exit, label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %bb.g
  %.pre31.i = load i32, ptr %i.ak, align 8, !tbaa !113
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge30.i, %._crit_edge.i
  %i.br = phi i32 [ %i.al, %._crit_edge.i ], [ %.pre31.i, %._crit_edge30.i ] ; 2 uses
  %i.bs = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bp, %._crit_edge30.i ]
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr inbounds [32 x i8], ptr %i.bs, i64 %i.bt ; 3 uses
  store float %7, ptr %i.bu, align 4, !tbaa !117
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store float %8, ptr %i.bv, align 4, !tbaa !118
  %i.bw = trunc nuw nsw i32 %10 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  store i8 %i.bw, ptr %i.bx, align 4, !tbaa !116
  %i.by = add nsw i32 %i.br, 1
  store i32 %i.by, ptr %i.ak, align 8, !tbaa !113
  br label %nsvg__addPathPoint.exit

tailrecurse:                                      ; preds = %bb.b
  %i.bz = fadd <2 x float> %i.m, %i.n
  %i.ca = fadd <2 x float> %i.n, %i.o
  %i.cb = extractelement <2 x float> %i.o, i64 1
  %i.cc = fadd float %8, %i.cb
  %i.cd = extractelement <2 x float> %i.o, i64 0
  %i.ce = fadd float %7, %i.cd
  %i.cf = fmul <2 x float> %i.bz, splat (float 5.000000e-01) ; 3 uses
  %i.cg = fmul <2 x float> %i.ca, splat (float 5.000000e-01) ; 2 uses
  %i.ch = fadd <2 x float> %i.cf, %i.cg
  %i.ci = fmul <2 x float> %i.ch, splat (float 5.000000e-01) ; 3 uses
  %i.cj = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.cc, i64 1
  %i.cl = fmul <2 x float> %i.ck, splat (float 5.000000e-01) ; 2 uses
  %i.cm = fadd <2 x float> %i.cg, %i.cl
  %i.cn = fmul <2 x float> %i.cm, splat (float 5.000000e-01) ; 2 uses
  %i.co = fadd <2 x float> %i.ci, %i.cn
  %i.cp = fmul <2 x float> %i.co, splat (float 5.000000e-01) ; 3 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 1 ; 2 uses
  %i.cr = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cs = add nsw i32 %.tr8290, 1                 ; 3 uses
  %i.ct = extractelement <2 x float> %i.ci, i64 0
  %i.cu = extractelement <2 x float> %i.ci, i64 1
  %i.cv = extractelement <2 x float> %i.cf, i64 0
  %i.cw = extractelement <2 x float> %i.cf, i64 1
  tail call fastcc void @nsvg__flattenCubicBez(ptr noundef nonnull %0, float noundef %.tr7484, float noundef %.tr7585, float noundef %i.cv, float noundef %i.cw, float noundef %i.ct, float noundef %i.cu, float noundef %i.cr, float noundef %i.cq, i32 noundef %i.cs, i32 noundef 0)
  %exitcond = icmp eq i32 %i.cs, 11
  br i1 %exitcond, label %nsvg__addPathPoint.exit, label %bb.b

nsvg__addPathPoint.exit:                          ; preds = %tailrecurse, %bb.a, %bb.h, %bb.g, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__expandStroke(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -128, 128) %3, i32 noundef range(i32 -128, 128) %4, i32 noundef range(i32 -128, 128) %5, float noundef %6) unnamed_addr #3 {
bb.a:
  %7 = alloca %struct.NSVGpoint, align 8          ; 20 uses
  %8 = alloca %struct.NSVGpoint, align 8          ; 21 uses
  %i.a = fmul float %6, 5.000000e-01              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !155
  %i.d = fadd float %i.a, %i.c
  %i.e = fdiv float %i.a, %i.d
  %i.f = tail call float @acosf(float noundef %i.e) #30
  %i.g = fmul float %i.f, 2.000000e+00
  %i.h = fdiv float f0x40490FDB, %i.g
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  %i.j = fptosi float %i.i to i32
  %spec.store.select.i = tail call range(i32 2, -2147483648) i32 @llvm.smax.i32(i32 %i.j, i32 2) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !118 ; 3 uses
  br i1 %.not, label %nsvg__normalize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr [32 x i8], ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -32      ; 2 uses
  %.080.val = load float, ptr %1, align 4, !tbaa !117
  %i.p = load <2 x float>, ptr %i.o, align 4, !tbaa !31 ; 2 uses
  %i.q = insertelement <2 x float> poison, float %.080.val, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.l, i64 1
  %i.s = fsub <2 x float> %i.r, %i.p              ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.s, %i.s
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.v) ; 3 uses
  %i.w = fcmp ogt float %sqrt.i.i, f0x358637BD
  %i.x = fdiv float 1.000000e+00, %sqrt.i.i
  %i.y = insertelement <2 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.s, %i.z
  %i.ab = insertelement <2 x i1> poison, i1 %i.w, i64 0
  %i.ac = shufflevector <2 x i1> %i.ab, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.aa, <2 x float> %i.s ; 5 uses
  %i.ae = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.af, %i.ad
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float 5.000000e-01), <2 x float> %i.p) ; 2 uses
  %i.ai = fneg <2 x float> %i.ad
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.ak = insertelement <2 x float> poison, float %i.a, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.al, <2 x float> %i.ah) ; 3 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  %i.ao = fneg <2 x float> %i.ad
  %i.ap = shufflevector <2 x float> %i.ad, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.al, <2 x float> %i.ah) ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 1
  store <2 x float> %i.am, ptr %7, align 8, !tbaa !31
  store <2 x float> %i.aq, ptr %8, align 8, !tbaa !31
  br label %bb.j

nsvg__normalize.exit:                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.at = add nsw i32 %2, -1                      ; 4 uses
  %i.au = load float, ptr %1, align 4, !tbaa !117 ; 2 uses
  %i.av = load <2 x float>, ptr %i.as, align 4, !tbaa !31
  %i.aw = insertelement <2 x float> poison, float %i.au, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.l, i64 1 ; 4 uses
  %i.ay = fsub <2 x float> %i.av, %i.ax           ; 5 uses
  %foldExtExtBinop392 = fmul <2 x float> %i.ay, %i.ay
  %i.az = extractelement <2 x float> %foldExtExtBinop392, i64 1
  %i.ba = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bb) ; 2 uses
  %i.bc = fcmp ogt float %sqrt.i, f0x358637BD
end_hunk_3
begin_hunk_4_@nsvg__roundCap:bb.a
  %.pre37.i = load i32, ptr %i.g, align 8, !tbaa !112
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge36.i, %._crit_edge.i
  %i.bh = phi i32 [ %i.ay, %._crit_edge.i ], [ %.pre37.i, %._crit_edge36.i ] ; 2 uses
  %i.bi = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bf, %._crit_edge36.i ]
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = add nsw i32 %i.bh, 1
  store i32 %i.bl, ptr %i.g, align 8, !tbaa !112
  %i.bm = fcmp olt float %i.aw, %i.av             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.49.i = select i1 %i.bm, i32 1, i32 -1
  %i.bo = insertelement <4 x i1> poison, i1 %i.bm, i64 0
  %i.bp = shufflevector <4 x i1> %i.bo, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.bq = shufflevector <2 x float> %i.ai, <2 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.br = shufflevector <2 x float> %i.au, <2 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = select <4 x i1> %i.bp, <4 x float> %i.bq, <4 x float> %i.br
  store <4 x float> %i.bs, ptr %i.bk, align 8, !tbaa !31
  store i32 %.49.i, ptr %i.bn, align 8, !tbaa !122
  br label %nsvg__addEdge.exit

nsvg__addEdge.exit:                               ; preds = %.peel.next, %bb.d, %.sink.split.i
  %i.bt = icmp eq i32 %.0651, %i.d
  %i.bu = insertelement <2 x i1> poison, i1 %i.bt, i64 0
  %i.bv = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bw = select <2 x i1> %i.bv, <2 x float> %i.au, <2 x float> %i.ah ; 2 uses
  %i.bx = add nuw nsw i32 %.0651, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %6
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !319

._crit_edge:                                      ; preds = %nsvg__addEdge.exit, %bb.b, %bb.a
  %.061.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ac, %bb.b ], [ %i.ac, %nsvg__addEdge.exit ] ; 2 uses
  %i.by = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %i.bw, %nsvg__addEdge.exit ] ; 4 uses
  %i.bz = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ab, %bb.b ], [ %i.ab, %nsvg__addEdge.exit ] ; 3 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %nsvg__addEdge.exit95, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = load <2 x float>, ptr %1, align 4, !tbaa !31 ; 2 uses
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !118 ; 2 uses
  %i.cd = fcmp oeq float %i.cc, %.061.lcssa
  br i1 %i.cd, label %nsvg__addEdge.exit81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !112 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !120 ; 3 uses
  %.not.i68 = icmp slt i32 %i.cf, %i.ch
  br i1 %.not.i68, label %._crit_edge.i78, label %bb.g

._crit_edge.i78:                                  ; preds = %bb.f
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i80 = load ptr, ptr %.phi.trans.insert.i79, align 8, !tbaa !98
  br label %.sink.split.i72

bb.g:                                             ; preds = %bb.f
  %i.ci = icmp sgt i32 %i.ch, 0
  %i.cj = shl nuw nsw i32 %i.ch, 1
  %spec.select.i69 = select i1 %i.ci, i32 %i.cj, i32 64 ; 2 uses
  store i32 %spec.select.i69, ptr %i.cg, align 4, !tbaa !120
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !98
  %i.cm = zext nneg i32 %spec.select.i69 to i64
  %i.cn = shl nuw nsw i64 %i.cm, 5
  %i.co = tail call ptr @realloc(ptr noundef %i.cl, i64 noundef %i.cn) #32 ; 3 uses
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !98
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %nsvg__addEdge.exit81, label %._crit_edge36.i70

._crit_edge36.i70:                                ; preds = %bb.g
  %.pre37.i71 = load i32, ptr %i.ce, align 8, !tbaa !112
  br label %.sink.split.i72

.sink.split.i72:                                  ; preds = %._crit_edge36.i70, %._crit_edge.i78
  %i.cq = phi i32 [ %i.cf, %._crit_edge.i78 ], [ %.pre37.i71, %._crit_edge36.i70 ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i80, %._crit_edge.i78 ], [ %i.co, %._crit_edge36.i70 ]
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = add nsw i32 %i.cq, 1
  store i32 %i.cu, ptr %i.ce, align 8, !tbaa !112
  %i.cv = fcmp olt float %i.cc, %.061.lcssa       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.49.i77 = select i1 %i.cv, i32 1, i32 -1
  %i.cx = insertelement <4 x i1> poison, i1 %i.cv, i64 0
  %i.cy = shufflevector <4 x i1> %i.cx, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cz = shufflevector <2 x float> %i.bz, <2 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.da = shufflevector <2 x float> %i.cb, <2 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.db = select <4 x i1> %i.cy, <4 x float> %i.cz, <4 x float> %i.da
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.dc, ptr %i.ct, align 8, !tbaa !31
  store i32 %.49.i77, ptr %i.cw, align 8, !tbaa !122
  br label %nsvg__addEdge.exit81

nsvg__addEdge.exit81:                             ; preds = %bb.e, %bb.g, %.sink.split.i72
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.de = load <2 x float>, ptr %2, align 4, !tbaa !31 ; 2 uses
  %i.df = load float, ptr %i.dd, align 4, !tbaa !118 ; 2 uses
  %i.dg = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.dh = fcmp oeq float %i.dg, %i.df
  br i1 %i.dh, label %nsvg__addEdge.exit95, label %bb.h

bb.h:                                             ; preds = %nsvg__addEdge.exit81
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !112 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !120 ; 3 uses
  %.not.i82 = icmp slt i32 %i.dj, %i.dl
  br i1 %.not.i82, label %._crit_edge.i92, label %bb.i

._crit_edge.i92:                                  ; preds = %bb.h
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i94 = load ptr, ptr %.phi.trans.insert.i93, align 8, !tbaa !98
  br label %.sink.split.i86

bb.i:                                             ; preds = %bb.h
  %i.dm = icmp sgt i32 %i.dl, 0
  %i.dn = shl nuw nsw i32 %i.dl, 1
  %spec.select.i83 = select i1 %i.dm, i32 %i.dn, i32 64 ; 2 uses
  store i32 %spec.select.i83, ptr %i.dk, align 4, !tbaa !120
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !98
  %i.dq = zext nneg i32 %spec.select.i83 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 5
  %i.ds = tail call ptr @realloc(ptr noundef %i.dp, i64 noundef %i.dr) #32 ; 3 uses
  store ptr %i.ds, ptr %i.do, align 8, !tbaa !98
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %nsvg__addEdge.exit95, label %._crit_edge36.i84

._crit_edge36.i84:                                ; preds = %bb.i
  %.pre37.i85 = load i32, ptr %i.di, align 8, !tbaa !112
  br label %.sink.split.i86

.sink.split.i86:                                  ; preds = %._crit_edge36.i84, %._crit_edge.i92
  %i.du = phi i32 [ %i.dj, %._crit_edge.i92 ], [ %.pre37.i85, %._crit_edge36.i84 ] ; 2 uses
  %i.dv = phi ptr [ %.pre.i94, %._crit_edge.i92 ], [ %i.ds, %._crit_edge36.i84 ]
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds [32 x i8], ptr %i.dv, i64 %i.dw ; 2 uses
  %i.dy = add nsw i32 %i.du, 1
  store i32 %i.dy, ptr %i.di, align 8, !tbaa !112
  %i.dz = fcmp olt float %i.dg, %i.df             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.49.i91 = select i1 %i.dz, i32 1, i32 -1
  %i.eb = insertelement <4 x i1> poison, i1 %i.dz, i64 0
  %i.ec = shufflevector <4 x i1> %i.eb, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ed = shufflevector <2 x float> %i.by, <2 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ee = shufflevector <2 x float> %i.de, <2 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ef = select <4 x i1> %i.ec, <4 x float> %i.ed, <4 x float> %i.ee
  store <4 x float> %i.ef, ptr %i.dx, align 8, !tbaa !31
  store i32 %.49.i91, ptr %i.ea, align 8, !tbaa !122
  br label %nsvg__addEdge.exit95

nsvg__addEdge.exit95:                             ; preds = %.sink.split.i86, %bb.i, %nsvg__addEdge.exit81, %._crit_edge
  store <2 x float> %i.bz, ptr %1, align 4, !tbaa !31
  store <2 x float> %i.by, ptr %2, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind allocsize(0) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = distinct !{!4, !18}
!5 = distinct !{!5, !18}
!6 = distinct !{!6, !18}
!7 = distinct !{!7, !18}
!8 = distinct !{null, null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"any pointer", !13, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 float", !19, i64 0}
!23 = !{!"p1 _ZTS8NSVGpath", !19, i64 0}
!24 = !{!"p1 _ZTS9NSVGimage", !19, i64 0}
!25 = !{!"p1 _ZTS20NSVGstyleDeclaration", !19, i64 0}
!26 = !{!"p1 _ZTS16NSVGgradientData", !19, i64 0}
!27 = !{!"p1 _ZTS9NSVGshape", !19, i64 0}
!28 = !{!"float", !13, i64 0}
!29 = !{!"NSVGparser", !13, i64 0, !14, i64 39936, !22, i64 39944, !14, i64 39952, !14, i64 39956, !23, i64 39960, !24, i64 39968, !25, i64 39976, !26, i64 39984, !27, i64 39992, !28, i64 40000, !28, i64 40004, !28, i64 40008, !28, i64 40012, !14, i64 40016, !14, i64 40020, !14, i64 40024, !28, i64 40028, !13, i64 40032, !13, i64 40033, !13, i64 40034}
!30 = !{!29, !24, i64 39968}
!31 = !{!28, !28, i64 0}
!32 = !{!"NSVGattrib", !13, i64 0, !13, i64 64, !14, i64 88, !14, i64 92, !28, i64 96, !28, i64 100, !28, i64 104, !13, i64 108, !13, i64 172, !28, i64 236, !28, i64 240, !13, i64 244, !14, i64 276, !13, i64 280, !13, i64 281, !28, i64 284, !13, i64 288, !28, i64 292, !14, i64 296, !28, i64 300, !28, i64 304, !13, i64 308, !13, i64 309, !13, i64 310, !13, i64 311}
!33 = !{!32, !28, i64 104}
!34 = !{!32, !28, i64 300}
!35 = !{!32, !28, i64 236}
!36 = !{!32, !28, i64 284}
!37 = !{!32, !13, i64 308}
!38 = !{!32, !13, i64 310}
!39 = !{!32, !13, i64 311}
!40 = !{!29, !28, i64 40028}
!41 = !{!27, !27, i64 0}
!42 = !{!"NSVGpaint", !13, i64 0, !13, i64 8}
!43 = !{!"NSVGshape", !13, i64 0, !42, i64 64, !42, i64 80, !28, i64 96, !28, i64 100, !28, i64 104, !13, i64 108, !13, i64 140, !13, i64 141, !13, i64 142, !28, i64 144, !13, i64 148, !13, i64 149, !13, i64 150, !13, i64 152, !13, i64 168, !13, i64 232, !13, i64 296, !23, i64 320, !27, i64 328}
!44 = !{!43, !13, i64 64}
!45 = !{!43, !13, i64 80}
!46 = !{!"NSVGimage", !28, i64 0, !28, i64 4, !27, i64 8}
!47 = !{!46, !27, i64 8}
!48 = !{!43, !27, i64 328}
!49 = !{!29, !28, i64 40008}
!50 = !{!46, !28, i64 0}
!51 = !{!29, !28, i64 40000}
!52 = !{!29, !28, i64 40012}
!53 = !{!46, !28, i64 4}
!54 = !{!29, !28, i64 40004}
!55 = !{!29, !14, i64 39936}
!56 = !{!32, !28, i64 292}
!57 = !{!29, !14, i64 40024}
!58 = !{!29, !14, i64 40016}
!59 = !{!29, !14, i64 40020}
!60 = !{!23, !23, i64 0}
!61 = !{!"NSVGpath", !22, i64 0, !14, i64 8, !13, i64 12, !13, i64 16, !23, i64 32}
!62 = !{!61, !14, i64 8}
!63 = !{!61, !22, i64 0}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!43, !13, i64 140}
!67 = !{!29, !25, i64 39976}
!68 = !{!"NSVGstyleDeclaration", !20, i64 0, !20, i64 8, !25, i64 16}
!69 = !{!68, !25, i64 16}
!70 = !{!68, !20, i64 0}
!71 = !{!68, !20, i64 8}
!72 = !{!29, !23, i64 39960}
!73 = !{!61, !23, i64 32}
!74 = !{!29, !26, i64 39984}
!75 = !{!"p1 _ZTS16NSVGgradientStop", !19, i64 0}
!76 = !{!"NSVGgradientData", !13, i64 0, !13, i64 64, !13, i64 128, !13, i64 132, !13, i64 172, !13, i64 173, !13, i64 176, !14, i64 200, !75, i64 208, !26, i64 216}
!77 = !{!76, !26, i64 216}
!78 = !{!76, !75, i64 208}
!79 = !{!29, !22, i64 39944}
!80 = !{!29, !13, i64 40033}
!81 = !{!29, !13, i64 40034}
!82 = !{!29, !13, i64 40032}
!83 = !{!29, !14, i64 39952}
!84 = !{!29, !14, i64 39956}
!85 = !{!"llvm.loop.peeled.count", i32 1}
!86 = !{!25, !25, i64 0}
!87 = !{!43, !23, i64 320}
!88 = !{!42, !13, i64 0}
!89 = !{!61, !13, i64 12}
!90 = !{!"p1 _ZTS8NSVGedge", !19, i64 0}
!91 = !{!"p1 _ZTS9NSVGpoint", !19, i64 0}
!92 = !{!"p1 _ZTS14NSVGactiveEdge", !19, i64 0}
!93 = !{!"p1 _ZTS11NSVGmemPage", !19, i64 0}
!94 = !{!"NSVGrasterizer", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !90, i64 16, !14, i64 24, !14, i64 28, !91, i64 32, !14, i64 40, !14, i64 44, !91, i64 48, !14, i64 56, !14, i64 60, !92, i64 64, !93, i64 72, !93, i64 80, !20, i64 88, !14, i64 96, !20, i64 104, !14, i64 112, !14, i64 116, !14, i64 120}
!95 = !{!94, !93, i64 72}
!96 = !{!"NSVGmemPage", !13, i64 0, !14, i64 1024, !93, i64 1032}
!97 = !{!96, !93, i64 1032}
!98 = !{!94, !90, i64 16}
!99 = !{!94, !91, i64 32}
!100 = !{!94, !91, i64 48}
!101 = !{!94, !20, i64 88}
!102 = !{!94, !20, i64 104}
!103 = !{!94, !14, i64 112}
!104 = !{!94, !14, i64 116}
!105 = !{!94, !14, i64 120}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = !{!43, !13, i64 150}
!108 = !{!43, !13, i64 149}
!109 = !{!96, !14, i64 1024}
!110 = !{!94, !93, i64 80}
!111 = !{!94, !92, i64 64}
!112 = !{!94, !14, i64 24}
!113 = !{!94, !14, i64 40}
!114 = !{!94, !14, i64 44}
!115 = !{!"NSVGpoint", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !13, i64 28}
!116 = !{!115, !13, i64 28}
!117 = !{!115, !28, i64 0}
!118 = !{!115, !28, i64 4}
!119 = !{!94, !28, i64 12}
!120 = !{!94, !14, i64 28}
!121 = !{!"NSVGedge", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !14, i64 16, !90, i64 24}
!122 = !{!121, !14, i64 16}
!123 = !{!43, !28, i64 96}
!124 = !{!43, !13, i64 148}
!125 = !{!43, !28, i64 144}
!126 = !{!43, !13, i64 141}
!127 = !{!43, !13, i64 142}
!128 = !{!115, !28, i64 12}
!129 = !{!115, !28, i64 8}
!130 = !{!121, !28, i64 4}
!131 = !{!"NSVGcachedPaint", !13, i64 0, !13, i64 1, !13, i64 4, !13, i64 28}
!132 = !{!131, !13, i64 0}
!133 = !{!14, !14, i64 0}
!134 = !{!"NSVGgradient", !13, i64 0, !13, i64 24, !28, i64 28, !28, i64 32, !14, i64 36, !13, i64 40}
!135 = !{!134, !13, i64 24}
!136 = !{!134, !14, i64 36}
!137 = !{!"NSVGgradientStop", !14, i64 0, !28, i64 4}
!138 = !{!137, !14, i64 0}
!139 = !{!137, !28, i64 4}
!140 = !{!76, !13, i64 173}
!141 = !{!76, !13, i64 128}
!142 = !{!76, !13, i64 172}
!143 = !{!32, !14, i64 296}
!144 = !{!76, !14, i64 200}
!145 = !{!32, !28, i64 304}
!146 = !{!32, !14, i64 88}
!147 = !{!32, !28, i64 96}
!148 = !{!32, !28, i64 100}
!149 = !{!32, !13, i64 309}
!150 = !{!32, !14, i64 92}
!151 = !{!32, !14, i64 276}
!152 = !{!32, !13, i64 281}
!153 = !{!32, !13, i64 280}
!154 = !{!32, !13, i64 288}
!155 = !{!94, !28, i64 8}
!156 = distinct !{!156, !18}
!157 = distinct !{null}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
end_hunk_4
