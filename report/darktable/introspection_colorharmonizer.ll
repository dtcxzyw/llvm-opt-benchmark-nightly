Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorharmonizer?download=true
inline.NumInlined: 128
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@process:bb.a
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, f0x3FB2C28D
  %i.ef = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ec) ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 0
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, f0x3FBEFF8B
  %i.ei = fdiv reassoc nsz arcp contract afn float %i.ee, %i.eh ; 2 uses
  %i.ej = extractelement <2 x float> %i.ec, i64 1
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, f0x3FB9C753
  %i.el = extractelement <2 x float> %i.ef, i64 1
  %i.em = fadd reassoc nsz arcp contract afn float %i.el, f0x3FC32F7A
  %i.en = fdiv reassoc nsz arcp contract afn float %i.ek, %i.em ; 2 uses
  %i.eo = fmul reassoc nsz arcp contract afn float %i.ei, f0xBF8FFF79
  %i.ep = fmul reassoc nsz arcp contract afn float %i.en, f0x3F7B00FB
  %i.eq = fsub reassoc nsz arcp contract afn float %i.eo, %i.ep ; 3 uses
  %i.er = fmul reassoc nsz arcp contract afn float %i.ei, f0x3FEE7E6D
  %i.es = fmul reassoc nsz arcp contract afn float %i.en, f0x3FFC65AF
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, %i.er ; 3 uses
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract4.i.i, float f0x3F21B3E7) ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, f0x4006541D
  %i.ew = fadd reassoc nsz arcp contract afn float %i.eu, f0x3F8FE801
  %i.ex = fdiv reassoc nsz arcp contract afn float %i.ev, %i.ew ; 2 uses
  %i.ey = fmul reassoc nsz arcp contract afn float %i.eq, %i.eq
  %i.ez = fmul reassoc nsz arcp contract afn float %i.et, %i.et
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.ey
  %i.fb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ex, float f0x3F2703AC)
  %i.fc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fa, float f0x3F19CB20)
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fb, f0x41810168
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.fc ; 3 uses
  %i.ff = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.et, float %i.eq)
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, f0x3E22F983
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, 5.000000e-01 ; 7 uses
  br i1 %i.ar, label %get_weighted_hue_shift.exit, label %.preheader360.preheader

.preheader360.preheader:                          ; preds = %bb.d
  br i1 %i.bb, label %.preheader360.epil.preheader, label %.preheader360

.preheader360:                                    ; preds = %.preheader360.preheader, %.preheader360
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader360 ], [ 0, %.preheader360.preheader ] ; 4 uses
  %.04261.i = phi float [ %.1.i.1, %.preheader360 ], [ 0.000000e+00, %.preheader360.preheader ]
  %.04360.i = phi i32 [ %.144.i.1, %.preheader360 ], [ 0, %.preheader360.preheader ]
  %.04559.i = phi float [ %.146.i.1, %.preheader360 ], [ 0.000000e+00, %.preheader360.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader360 ], [ 0, %.preheader360.preheader ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !31 ; 2 uses
  %i.fk = fsub reassoc nsz arcp contract afn float %i.fh, %i.fj
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fk) ; 3 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ogt float %i.fl, 5.000000e-01
  %i.fn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fl
  %spec.select.i = select nsz i1 %i.fm, float %i.fn, float %i.fl ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %spec.select.i, %spec.select.i
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, -5.000000e-01
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.bc
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.fq) ; 2 uses
  %i.fs = fsub reassoc nsz arcp contract afn float %i.fj, %i.fh ; 5 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ogt float %i.fs, 5.000000e-01
  %i.fu = fadd reassoc nsz arcp contract afn float %i.fs, -1.000000e+00
  %i.fv = fcmp reassoc nsz arcp contract afn olt float %i.fs, -5.000000e-01
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fs, 1.000000e+00
  %spec.select58.i = select nsz i1 %i.fv, float %i.fw, float %i.fs
  %.0.i = select nsz i1 %i.ft, float %i.fu, float %spec.select58.i
  %i.fx = fcmp reassoc nsz arcp contract afn ogt float %i.fr, %.04559.i ; 3 uses
  %.146.i = select nsz i1 %i.fx, float %i.fr, float %.04559.i ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv.i to i32
  %.144.i = select i1 %i.fx, i32 %i.fy, i32 %.04360.i
  %.1.i = select nsz i1 %i.fx, float %.0.i, float %.04261.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !31 ; 2 uses
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fh, %i.ga
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gb) ; 3 uses
  %i.gd = fcmp reassoc nsz arcp contract afn ogt float %i.gc, 5.000000e-01
  %i.ge = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gc
  %spec.select.i.1 = select nsz i1 %i.gd, float %i.ge, float %i.gc ; 2 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %spec.select.i.1, %spec.select.i.1
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gf, -5.000000e-01
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.bd
  %i.gi = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.gh) ; 2 uses
  %i.gj = fsub reassoc nsz arcp contract afn float %i.ga, %i.fh ; 5 uses
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.gj, 5.000000e-01
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gj, -1.000000e+00
  %i.gm = fcmp reassoc nsz arcp contract afn olt float %i.gj, -5.000000e-01
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gj, 1.000000e+00
  %spec.select58.i.1 = select nsz i1 %i.gm, float %i.gn, float %i.gj
  %.0.i.1 = select nsz i1 %i.gk, float %i.gl, float %spec.select58.i.1
  %i.go = fcmp reassoc nsz arcp contract afn ogt float %i.gi, %.146.i ; 3 uses
  %.146.i.1 = select nsz i1 %i.go, float %i.gi, float %.146.i ; 3 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.144.i.1 = select i1 %i.go, i32 %i.gp, i32 %.144.i ; 3 uses
  %.1.i.1 = select nsz i1 %i.go, float %.0.i.1, float %.1.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader360

.unr-lcssa:                                       ; preds = %.preheader360
  br i1 %lcmp.mod.not, label %bb.e, label %.preheader360.epil.preheader

.preheader360.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader360.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader360.preheader ], [ %indvars.iv.next.i.1, %.unr-lcssa ] ; 2 uses
  %.04261.i.epil.init = phi float [ 0.000000e+00, %.preheader360.preheader ], [ %.1.i.1, %.unr-lcssa ]
  %.04360.i.epil.init = phi i32 [ 0, %.preheader360.preheader ], [ %.144.i.1, %.unr-lcssa ]
  %.04559.i.epil.init = phi float [ 0.000000e+00, %.preheader360.preheader ], [ %.146.i.1, %.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod409)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !31 ; 2 uses
  %i.gs = fsub reassoc nsz arcp contract afn float %i.fh, %i.gr
  %i.gt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gs) ; 3 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ogt float %i.gt, 5.000000e-01
  %i.gv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gt
  %spec.select.i.epil = select nsz i1 %i.gu, float %i.gv, float %i.gt ; 2 uses
  %i.gw = fmul reassoc nsz arcp contract afn float %spec.select.i.epil, %spec.select.i.epil
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gw, -5.000000e-01
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.be
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.gy) ; 2 uses
  %i.ha = fsub reassoc nsz arcp contract afn float %i.gr, %i.fh ; 5 uses
  %i.hb = fcmp reassoc nsz arcp contract afn ogt float %i.ha, 5.000000e-01
  %i.hc = fadd reassoc nsz arcp contract afn float %i.ha, -1.000000e+00
  %i.hd = fcmp reassoc nsz arcp contract afn olt float %i.ha, -5.000000e-01
  %i.he = fadd reassoc nsz arcp contract afn float %i.ha, 1.000000e+00
  %spec.select58.i.epil = select nsz i1 %i.hd, float %i.he, float %i.ha
  %.0.i.epil = select nsz i1 %i.hb, float %i.hc, float %spec.select58.i.epil
  %i.hf = fcmp reassoc nsz arcp contract afn ogt float %i.gz, %.04559.i.epil.init ; 3 uses
  %.146.i.epil = select nsz i1 %i.hf, float %i.gz, float %.04559.i.epil.init
  %i.hg = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %.144.i.epil = select i1 %i.hf, i32 %i.hg, i32 %.04360.i.epil.init
  %.1.i.epil = select nsz i1 %i.hf, float %.0.i.epil, float %.04261.i.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.preheader360.epil.preheader
  %.146.i.lcssa = phi float [ %.146.i.1, %.unr-lcssa ], [ %.146.i.epil, %.preheader360.epil.preheader ] ; 2 uses
  %.144.i.lcssa = phi i32 [ %.144.i.1, %.unr-lcssa ], [ %.144.i.epil, %.preheader360.epil.preheader ]
  %.1.i.lcssa = phi float [ %.1.i.1, %.unr-lcssa ], [ %.1.i.epil, %.preheader360.epil.preheader ]
  %i.hh = fmul reassoc nsz arcp contract afn float %.1.i.lcssa, %.146.i.lcssa
  %i.hi = sext i32 %.144.i.lcssa to i64
  br label %get_weighted_hue_shift.exit

get_weighted_hue_shift.exit:                      ; preds = %bb.d, %bb.e
  %.0317 = phi i64 [ %i.hi, %bb.e ], [ 0, %bb.d ]
  %.0316 = phi nsz float [ %.146.i.lcssa, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.047.i = phi nsz float [ %i.hh, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.hj = fadd reassoc nsz arcp contract afn float %i.as, %i.fe
  %i.hk = fdiv reassoc nsz arcp contract afn float %i.fe, %i.hj ; 2 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, %i.q
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, %.047.i
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, %i.fh
  %i.ho = frem reassoc nsz arcp contract afn float %i.hn, 1.000000e+00 ; 3 uses
  %i.hp = fcmp reassoc nsz arcp contract afn olt float %i.ho, 0.000000e+00
  %i.hq = fadd reassoc nsz arcp contract afn float %i.ho, 1.000000e+00
  %spec.select.i197 = select nsz i1 %i.hp, float %i.hq, float %i.ho
  %i.hr = fmul reassoc nsz arcp contract afn float %spec.select.i197, f0x40C90FDB
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, f0xC0490FDB
  %i.ht = fmul reassoc nsz arcp contract afn float %i.ex, f0x3F7FFFFF ; 3 uses
  %i.hu = fcmp reassoc nsz arcp contract afn ult float %i.ht, 0.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ht, 2.098850e+00
  %spec.select.i198 = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.ht, float 2.098850e+00
  %i.hv = select reassoc nsz arcp contract afn i1 %i.hu, float 0.000000e+00, float %spec.select.i198 ; 4 uses
  %i.hw = fcmp reassoc nsz arcp contract afn une float %i.hv, 0.000000e+00
  br i1 %i.hw, label %bb.f, label %dt_UCS_JCH_to_xyY.exit

bb.f:                                             ; preds = %get_weighted_hue_shift.exit
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.at, i64 %.0317
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !31
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, -1.000000e+00
  %i.ia = fmul reassoc nsz arcp contract afn float %.0316, %i.hk
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, %i.hz
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, 1.000000e+00
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, %i.fe
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.id, float 0.000000e+00)
  %i.if = fmul reassoc nnan nsz arcp contract afn float %i.ie, f0x3F7CF0E2
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hv, float f0x3F2703AC)
  %i.ih = fmul reassoc nnan nsz arcp contract afn float %i.ig, f0x417EED8B
  %i.ii = fdiv reassoc nsz arcp contract afn float %i.if, %i.ih
  %i.ij = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ii, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit

dt_UCS_JCH_to_xyY.exit:                           ; preds = %get_weighted_hue_shift.exit, %bb.f
  %i.ik = phi reassoc nsz arcp contract afn float [ %i.ij, %bb.f ], [ 0.000000e+00, %get_weighted_hue_shift.exit ] ; 2 uses
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.hs) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %cos.i ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.ik, %sin.i ; 2 uses
  %i.in = fmul reassoc nsz arcp contract afn float %i.il, f0xC0A13362
  %i.io = fmul reassoc nsz arcp contract afn float %i.im, f0x40204F91
  %i.ip = fsub reassoc nsz arcp contract afn float %i.in, %i.io ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn float %i.il, f0x40985229
  %i.ir = fmul reassoc nsz arcp contract afn float %i.im, f0x4037EFD4
  %i.is = fadd reassoc nsz arcp contract afn float %i.iq, %i.ir ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn float %i.ip, f0xBFBEFF8B
  %i.iu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ip)
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, f0xBFB2C28D
  %i.iw = fdiv reassoc nsz arcp contract afn float %i.it, %i.iv ; 3 uses
  %i.ix = fmul reassoc nsz arcp contract afn float %i.is, f0xBFC32F7A
  %i.iy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.is)
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iy, f0xBFB9C753
  %i.ja = fdiv reassoc nsz arcp contract afn float %i.ix, %i.iz ; 3 uses
  %i.jb = fmul reassoc nsz arcp contract afn float %i.iw, f0xBE1A9505
  %i.jc = fmul reassoc nsz arcp contract afn float %i.ja, f0xBE1EE8D5
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jb, f0xBC0A2B16
  %i.je = fadd reassoc nsz arcp contract afn float %i.jd, %i.jc
  %i.jf = fmul reassoc nsz arcp contract afn float %i.iw, f0x3F70B489
  %i.jg = fadd reassoc nsz arcp contract afn float %i.ja, f0xBCD1FB74
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jg, %i.jf ; 5 uses
  %i.ji = fcmp reassoc nsz arcp contract afn ult float %i.jh, 0.000000e+00
  %i.jj = fcmp reassoc nsz arcp contract afn olt float %i.jh, f0x00800000
  %i.jk = select reassoc nsz arcp contract afn i1 %i.jj, float f0x00800000, float %i.jh
  %i.jl = fcmp reassoc nsz arcp contract afn ogt float %i.jh, f0x80800000
  %i.jm = select reassoc nsz arcp contract afn i1 %i.jl, float f0x80800000, float %i.jh
  %i.jn = select reassoc nsz arcp contract afn i1 %i.ji, float %i.jm, float %i.jk ; 2 uses
  %i.jo = fdiv reassoc nsz arcp contract afn float %i.je, %i.jn ; 4 uses
  %i.jp = fcmp reassoc nsz arcp contract afn oeq float %i.jo, 0.000000e+00
  br i1 %i.jp, label %dt_xyY_to_XYZ.exit, label %bb.g

bb.g:                                             ; preds = %dt_UCS_JCH_to_xyY.exit
  %i.jq = fmul reassoc nsz arcp contract afn float %i.hv, f0x3F8FE801
  %i.jr = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.hv
  %i.js = fdiv reassoc nsz arcp contract afn float %i.jq, %i.jr
  %i.jt = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.js, float f0x3FCAA4B8) ; 3 uses
  %i.ju = fmul reassoc nsz arcp contract afn float %i.ja, f0x3E10B0E5
  %i.jv = fmul reassoc nsz arcp contract afn float %i.iw, f0x3E2B2F00
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jv, f0xBC0352A9
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jw, %i.ju
  %i.jy = fdiv reassoc nsz arcp contract afn float %i.jx, %i.jn ; 2 uses
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jy, %i.jt
  %i.ka = fdiv reassoc nsz arcp contract afn float %i.jz, %i.jo
  %i.kb = fadd reassoc nsz arcp contract afn float %i.jo, %i.jy
  %i.kc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.kb
  %i.kd = fmul reassoc nsz arcp contract afn float %i.kc, %i.jt
  %i.ke = fdiv reassoc nsz arcp contract afn float %i.kd, %i.jo
  br label %dt_xyY_to_XYZ.exit

dt_xyY_to_XYZ.exit:                               ; preds = %dt_UCS_JCH_to_xyY.exit, %bb.g
  %.sroa.8286.0 = phi nsz float [ %i.jt, %bb.g ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit ] ; 3 uses
  %.sroa.0282.0 = phi nsz float [ %i.ka, %bb.g ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit ] ; 3 uses
  %i.kf = phi reassoc nsz arcp contract afn float [ %i.ke, %bb.g ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit ] ; 3 uses
  %i.kg = fmul reassoc nsz arcp contract afn float %.sroa.0282.0, f0x3F8163AD
  %i.kh = fmul reassoc nsz arcp contract afn float %.sroa.8286.0, f0x3D26BE12
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kf, f0xBD0BDB31
  %i.kj = fmul reassoc nsz arcp contract afn float %.sroa.0282.0, f0x3BB1DE8E
  %i.kk = fmul reassoc nsz arcp contract afn float %.sroa.8286.0, f0x3F7E5B63
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kf, f0x3A978241
  %i.km = fmul reassoc nsz arcp contract afn float %.sroa.0282.0, f0x39837366
  %i.kn = fmul reassoc nsz arcp contract afn float %.sroa.8286.0, f0x3C3C486C
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kf, f0x3F44995A
  %.sroa.6386.0..0188329.sroa_idx = getelementptr inbounds nuw i8, ptr %.0188329, i64 12
  %i.kp = fadd reassoc nsz arcp contract afn float %i.kg, %i.kh
  %i.kq = fadd reassoc nsz arcp contract afn float %i.kp, %i.ki
  %i.kr = fadd reassoc nsz arcp contract afn float %i.kj, %i.kk
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kr, %i.kl
  %i.kt = fsub reassoc nsz arcp contract afn float %i.km, %i.kn
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, %i.ko
  %i.kv = load <4 x float>, ptr %i.au, align 4, !tbaa !31
  %i.kw = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ky = fmul reassoc nsz arcp contract afn <4 x float> %i.kx, %i.kv
  %i.kz = load <4 x float>, ptr %i.av, align 4, !tbaa !31
  %i.la = insertelement <4 x float> poison, float %i.ks, i64 0
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lc = fmul reassoc nsz arcp contract afn <4 x float> %i.kz, %i.lb
  %i.ld = fadd reassoc nsz arcp contract afn <4 x float> %i.lc, %i.ky
  %i.le = load <4 x float>, ptr %i.aw, align 4, !tbaa !31
  %i.lf = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.lg = shufflevector <4 x float> %i.lf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lh = fmul reassoc nsz arcp contract afn <4 x float> %i.le, %i.lg
  %i.li = fadd reassoc nsz arcp contract afn <4 x float> %i.ld, %i.lh
  store <4 x float> %i.li, ptr %.0188329, align 4, !tbaa !31
  %i.lj = getelementptr inbounds nuw i8, ptr %.0189328, i64 12
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !31
  store float %i.lk, ptr %.sroa.6386.0..0188329.sroa_idx, align 4, !tbaa !31
  %i.ll = add nuw nsw i32 %.0187330, 1            ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.0189328, i64 %i.h
  %i.ln = getelementptr [4 x i8], ptr %.0188329, i64 %i.h
  %exitcond.not = icmp eq i32 %i.ll, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.h:                                             ; preds = %bb.c
  %i.lo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !145
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !144
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i64 %i.lt, %i.lq                ; 2 uses
  %i.lv = mul i64 %i.lu, 12
  %i.lw = tail call ptr @dt_alloc_aligned(i64 noundef %i.lv) #25 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lw, i64 64) ]
  %i.lx = shl i64 %i.lu, 3
  %i.ly = tail call ptr @dt_alloc_aligned(i64 noundef %i.lx) #25 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ly, i64 64) ]
  %i.lz = icmp ne ptr %i.lw, null
  %i.ma = icmp ne ptr %i.ly, null
  %or.cond = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.h
  %i.mb = load i32, ptr %i.lr, align 4, !tbaa !144 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  %.pre387 = load i32, ptr %i.lo, align 4, !tbaa !145 ; 5 uses
  br i1 %i.mc, label %.lr.ph341, label %._crit_edge342.split

.lr.ph341:                                        ; preds = %.preheader
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.me = load i32, ptr %i.md, align 4, !tbaa !145
  %i.mf = sext i32 %i.me to i64
  %factor.op.mul343 = mul nsw i64 %i.h, %i.mf
  %i.mg = sext i32 %.pre387 to i64
  %i.mh = icmp sgt i32 %.pre387, 0
  %i.mi = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  %i.mj = getelementptr inbounds nuw i8, ptr %i.o, i64 912
  %i.mk = getelementptr inbounds nuw i8, ptr %i.o, i64 928
  %i.ml = getelementptr inbounds nuw i8, ptr %i.o, i64 900
  %i.mm = getelementptr inbounds nuw i8, ptr %i.o, i64 916
  %i.mn = getelementptr inbounds nuw i8, ptr %i.o, i64 932
  %i.mo = icmp slt i32 %i.l, 1
  %wide.trip.count.i206 = zext i32 %i.l to i64    ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br i1 %i.mh, label %.lr.ph338.preheader, label %._crit_edge342.split

.lr.ph338.preheader:                              ; preds = %.lr.ph341
  %i.mq = fmul reassoc nsz arcp contract afn float %i.s, 5.000000e-01
  %i.mr = uitofp nneg i32 %i.l to float
  %i.ms = fdiv reassoc nsz arcp contract afn float %i.mq, %i.mr ; 2 uses
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.ms ; 3 uses
  %wide.trip.count371 = zext nneg i32 %i.mb to i64
  %wide.trip.count366 = zext nneg i32 %.pre387 to i64
  %xtraiter411 = and i64 %wide.trip.count.i206, 1
  %i.mu = icmp eq i32 %i.l, 1
  %unroll_iter417 = and i64 %wide.trip.count.i206, 2147483646
  %i.mv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mt
  %i.mw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mt
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  %lcmp.mod416 = trunc i32 %i.l to i1
  %i.mx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mt
  br label %.lr.ph338

.thread:                                          ; preds = %bb.h
  tail call void @free(ptr noundef %i.lw) #25
  tail call void @free(ptr noundef %i.ly) #25
  br label %_update_histogram.exit

._crit_edge342.split.loopexit:                    ; preds = %._crit_edge339
  %.pre = load i32, ptr %i.lo, align 4, !tbaa !145
  br label %._crit_edge342.split

._crit_edge342.split:                             ; preds = %._crit_edge342.split.loopexit, %.lr.ph341, %.preheader
  %i.my = phi i32 [ %.pre, %._crit_edge342.split.loopexit ], [ %.pre387, %.lr.ph341 ], [ %.pre387, %.preheader ]
  %i.mz = load float, ptr %i.y, align 4, !tbaa !143
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nb = load float, ptr %i.na, align 4, !tbaa !146
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, 8.000000e+00
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ne = load float, ptr %i.nd, align 8, !tbaa !147
  %i.nf = fdiv reassoc nsz arcp contract afn float %i.nc, %i.ne
  %i.ng = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nf, float 1.500000e+00)
  %i.nh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.s, float 1.000000e+00)
  %i.ni = fmul reassoc nsz arcp contract afn float %i.mz, %i.nh
  %i.nj = fmul reassoc nsz arcp contract afn float %i.ni, %i.ng
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.max, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.dt_gaussian_mean_blur.min, i64 16, i1 false)
  %i.nk = call ptr @dt_gaussian_init(i32 noundef %i.my, i32 noundef %i.mb, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, float noundef %i.nj, i32 noundef 0) #25 ; 3 uses
  %.not.i = icmp eq ptr %i.nk, null
  br i1 %.not.i, label %dt_gaussian_mean_blur.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge342.split
  call void @dt_gaussian_blur(ptr noundef nonnull %i.nk, ptr noundef nonnull %i.ly, ptr noundef nonnull %i.ly) #25
  call void @dt_gaussian_free(ptr noundef nonnull %i.nk) #25
  br label %dt_gaussian_mean_blur.exit

dt_gaussian_mean_blur.exit:                       ; preds = %._crit_edge342.split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.nl = load i32, ptr %i.lr, align 4, !tbaa !144 ; 2 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.lr.ph353, label %._crit_edge354.split

.lr.ph353:                                        ; preds = %dt_gaussian_mean_blur.exit
  %i.nn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !145
  %i.np = sext i32 %i.no to i64
  %factor.op.mul355 = mul nsw i64 %i.h, %i.np
  %i.nq = load i32, ptr %i.lo, align 4, !tbaa !145 ; 3 uses
  %i.nr = sext i32 %i.nq to i64                   ; 2 uses
  %factor.op.mul357 = mul nsw i64 %i.h, %i.nr
  %i.ns = icmp sgt i32 %i.nq, 0
  %i.nt = fadd reassoc nsz arcp contract afn float %i.x, f0x3727C5AC
  %i.nu = getelementptr inbounds nuw i8, ptr %i.o, i64 960
  %i.nv = getelementptr inbounds nuw i8, ptr %i.o, i64 976
  %i.nw = getelementptr inbounds nuw i8, ptr %i.o, i64 992
  br i1 %i.ns, label %.lr.ph350.preheader, label %._crit_edge354.split

.lr.ph350.preheader:                              ; preds = %.lr.ph353
  %wide.trip.count381 = zext nneg i32 %i.nl to i64
  %wide.trip.count376 = zext nneg i32 %i.nq to i64
  br label %.lr.ph350

.lr.ph338:                                        ; preds = %.lr.ph338.preheader, %._crit_edge339
  %indvars.iv368 = phi i64 [ 0, %.lr.ph338.preheader ], [ %indvars.iv.next369, %._crit_edge339 ] ; 3 uses
  %.reass344 = mul i64 %factor.op.mul343, %indvars.iv368
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass344
  %i.ny = mul nuw nsw i64 %indvars.iv368, %i.mg
  br label %bb.j
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i207
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !31 ; 2 uses
  %i.sh = fsub reassoc nsz arcp contract afn float %i.sa, %i.sg
  %i.si = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sh) ; 3 uses
  %i.sj = fcmp reassoc nsz arcp contract afn ogt float %i.si, 5.000000e-01
  %i.sk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.si
  %spec.select.i211 = select nsz i1 %i.sj, float %i.sk, float %i.si ; 2 uses
  %i.sl = fmul reassoc nsz arcp contract afn float %spec.select.i211, %spec.select.i211
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, -5.000000e-01
  %i.sn = fmul reassoc nsz arcp contract afn float %i.sm, %i.mv
  %i.so = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.sn) ; 2 uses
  %i.sp = fsub reassoc nsz arcp contract afn float %i.sg, %i.sa ; 5 uses
  %i.sq = fcmp reassoc nsz arcp contract afn ogt float %i.sp, 5.000000e-01
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sp, -1.000000e+00
  %i.ss = fcmp reassoc nsz arcp contract afn olt float %i.sp, -5.000000e-01
  %i.st = fadd reassoc nsz arcp contract afn float %i.sp, 1.000000e+00
  %spec.select58.i212 = select nsz i1 %i.ss, float %i.st, float %i.sp
  %.0.i213 = select nsz i1 %i.sq, float %i.sr, float %spec.select58.i212
  %i.su = fcmp reassoc nsz arcp contract afn ogt float %i.so, %.04559.i210 ; 3 uses
  %.146.i214 = select nsz i1 %i.su, float %i.so, float %.04559.i210 ; 2 uses
  %i.sv = trunc nuw nsw i64 %indvars.iv.i207 to i32
  %.144.i215 = select i1 %i.su, i32 %i.sv, i32 %.04360.i209
  %.1.i216 = select nsz i1 %i.su, float %.0.i213, float %.04261.i208
  %indvars.iv.next.i217 = or disjoint i64 %indvars.iv.i207, 1 ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i217
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !31 ; 2 uses
  %i.sy = fsub reassoc nsz arcp contract afn float %i.sa, %i.sx
  %i.sz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sy) ; 3 uses
  %i.ta = fcmp reassoc nsz arcp contract afn ogt float %i.sz, 5.000000e-01
  %i.tb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.sz
  %spec.select.i211.1 = select nsz i1 %i.ta, float %i.tb, float %i.sz ; 2 uses
  %i.tc = fmul reassoc nsz arcp contract afn float %spec.select.i211.1, %spec.select.i211.1
  %i.td = fmul reassoc nsz arcp contract afn float %i.tc, -5.000000e-01
  %i.te = fmul reassoc nsz arcp contract afn float %i.td, %i.mw
  %i.tf = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.te) ; 2 uses
  %i.tg = fsub reassoc nsz arcp contract afn float %i.sx, %i.sa ; 5 uses
  %i.th = fcmp reassoc nsz arcp contract afn ogt float %i.tg, 5.000000e-01
  %i.ti = fadd reassoc nsz arcp contract afn float %i.tg, -1.000000e+00
  %i.tj = fcmp reassoc nsz arcp contract afn olt float %i.tg, -5.000000e-01
  %i.tk = fadd reassoc nsz arcp contract afn float %i.tg, 1.000000e+00
  %spec.select58.i212.1 = select nsz i1 %i.tj, float %i.tk, float %i.tg
  %.0.i213.1 = select nsz i1 %i.th, float %i.ti, float %spec.select58.i212.1
  %i.tl = fcmp reassoc nsz arcp contract afn ogt float %i.tf, %.146.i214 ; 3 uses
  %.146.i214.1 = select nsz i1 %i.tl, float %i.tf, float %.146.i214 ; 3 uses
  %i.tm = trunc nuw nsw i64 %indvars.iv.next.i217 to i32
  %.144.i215.1 = select i1 %i.tl, i32 %i.tm, i32 %.144.i215 ; 3 uses
  %.1.i216.1 = select nsz i1 %i.tl, float %.0.i213.1, float %.1.i216 ; 3 uses
  %indvars.iv.next.i217.1 = add nuw nsw i64 %indvars.iv.i207, 2 ; 2 uses
  %niter418.next.1 = add i64 %niter418, 2         ; 2 uses
  %niter418.ncmp.1 = icmp eq i64 %niter418.next.1, %unroll_iter417
  br i1 %niter418.ncmp.1, label %.unr-lcssa410, label %.preheader359

.unr-lcssa410:                                    ; preds = %.preheader359
  br i1 %lcmp.mod412.not, label %bb.k, label %.preheader359.epil.preheader

.preheader359.epil.preheader:                     ; preds = %.unr-lcssa410, %.preheader359.preheader
  %indvars.iv.i207.epil.init = phi i64 [ 0, %.preheader359.preheader ], [ %indvars.iv.next.i217.1, %.unr-lcssa410 ] ; 2 uses
  %.04261.i208.epil.init = phi float [ 0.000000e+00, %.preheader359.preheader ], [ %.1.i216.1, %.unr-lcssa410 ]
  %.04360.i209.epil.init = phi i32 [ 0, %.preheader359.preheader ], [ %.144.i215.1, %.unr-lcssa410 ]
  %.04559.i210.epil.init = phi float [ 0.000000e+00, %.preheader359.preheader ], [ %.146.i214.1, %.unr-lcssa410 ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod416)
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i207.epil.init
  %i.to = load float, ptr %i.tn, align 4, !tbaa !31 ; 2 uses
  %i.tp = fsub reassoc nsz arcp contract afn float %i.sa, %i.to
  %i.tq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.tp) ; 3 uses
  %i.tr = fcmp reassoc nsz arcp contract afn ogt float %i.tq, 5.000000e-01
  %i.ts = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.tq
  %spec.select.i211.epil = select nsz i1 %i.tr, float %i.ts, float %i.tq ; 2 uses
  %i.tt = fmul reassoc nsz arcp contract afn float %spec.select.i211.epil, %spec.select.i211.epil
  %i.tu = fmul reassoc nsz arcp contract afn float %i.tt, -5.000000e-01
  %i.tv = fmul reassoc nsz arcp contract afn float %i.tu, %i.mx
  %i.tw = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.tv) ; 2 uses
  %i.tx = fsub reassoc nsz arcp contract afn float %i.to, %i.sa ; 5 uses
  %i.ty = fcmp reassoc nsz arcp contract afn ogt float %i.tx, 5.000000e-01
  %i.tz = fadd reassoc nsz arcp contract afn float %i.tx, -1.000000e+00
  %i.ua = fcmp reassoc nsz arcp contract afn olt float %i.tx, -5.000000e-01
  %i.ub = fadd reassoc nsz arcp contract afn float %i.tx, 1.000000e+00
  %spec.select58.i212.epil = select nsz i1 %i.ua, float %i.ub, float %i.tx
  %.0.i213.epil = select nsz i1 %i.ty, float %i.tz, float %spec.select58.i212.epil
  %i.uc = fcmp reassoc nsz arcp contract afn ogt float %i.tw, %.04559.i210.epil.init ; 3 uses
  %.146.i214.epil = select nsz i1 %i.uc, float %i.tw, float %.04559.i210.epil.init
  %i.ud = trunc nuw nsw i64 %indvars.iv.i207.epil.init to i32
  %.144.i215.epil = select i1 %i.uc, i32 %i.ud, i32 %.04360.i209.epil.init
  %.1.i216.epil = select nsz i1 %i.uc, float %.0.i213.epil, float %.04261.i208.epil.init
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa410, %.preheader359.epil.preheader
  %.146.i214.lcssa = phi float [ %.146.i214.1, %.unr-lcssa410 ], [ %.146.i214.epil, %.preheader359.epil.preheader ] ; 2 uses
  %.144.i215.lcssa = phi i32 [ %.144.i215.1, %.unr-lcssa410 ], [ %.144.i215.epil, %.preheader359.epil.preheader ]
  %.1.i216.lcssa = phi float [ %.1.i216.1, %.unr-lcssa410 ], [ %.1.i216.epil, %.preheader359.epil.preheader ]
  %i.ue = fmul reassoc nsz arcp contract afn float %.1.i216.lcssa, %.146.i214.lcssa
  %i.uf = sext i32 %.144.i215.lcssa to i64
  br label %get_weighted_hue_shift.exit220

get_weighted_hue_shift.exit220:                   ; preds = %bb.j, %bb.k
  %.0315 = phi i64 [ %i.uf, %bb.k ], [ 0, %bb.j ]
  %.0314 = phi nsz float [ %.146.i214.lcssa, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.047.i219 = phi nsz float [ %i.ue, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.idx320 = shl i64 %i.sb, 3
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.idx320 ; 2 uses
  store float %.047.i219, ptr %i.ug, align 8, !tbaa !31
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %.0315
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !31
  %i.uj = fadd reassoc nsz arcp contract afn float %i.ui, -1.000000e+00
  %i.uk = fmul reassoc nsz arcp contract afn float %i.uj, %.0314
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  store float %i.uk, ptr %i.ul, align 4, !tbaa !31
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.0184335, i64 %i.h
  %exitcond367.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count366
  br i1 %exitcond367.not, label %._crit_edge339, label %bb.j

.lr.ph350:                                        ; preds = %.lr.ph350.preheader, %._crit_edge351
  %indvars.iv378 = phi i64 [ 0, %.lr.ph350.preheader ], [ %indvars.iv.next379, %._crit_edge351 ] ; 4 uses
  %.reass356 = mul i64 %factor.op.mul355, %indvars.iv378
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass356
  %.reass358 = mul i64 %factor.op.mul357, %indvars.iv378
  %i.uo = getelementptr [4 x i8], ptr %3, i64 %.reass358
  %i.up = mul nuw nsw i64 %indvars.iv378, %i.nr
  br label %bb.l

._crit_edge351:                                   ; preds = %dt_xyY_to_XYZ.exit229
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next379, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge354.split, label %.lr.ph350

bb.l:                                             ; preds = %.lr.ph350, %dt_xyY_to_XYZ.exit229
  %indvars.iv373 = phi i64 [ 0, %.lr.ph350 ], [ %indvars.iv.next374, %dt_xyY_to_XYZ.exit229 ] ; 2 uses
  %.0180347 = phi ptr [ %i.uo, %.lr.ph350 ], [ %i.za, %dt_xyY_to_XYZ.exit229 ] ; 3 uses
  %.0181346 = phi ptr [ %i.un, %.lr.ph350 ], [ %i.yz, %dt_xyY_to_XYZ.exit229 ] ; 2 uses
  %i.uq = add nuw nsw i64 %i.up, %indvars.iv373   ; 2 uses
  %.idx = mul i64 %i.uq, 12
  %i.ur = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx ; 3 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !31
  %i.ut = getelementptr i8, ptr %i.ur, i64 4
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !31 ; 3 uses
  %i.uv = getelementptr i8, ptr %i.ur, i64 8
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !31
  %i.ux = fadd reassoc nsz arcp contract afn float %i.nt, %i.uu
  %i.uy = fdiv reassoc nsz arcp contract afn float %i.uu, %i.ux ; 2 uses
  %.idx318 = shl i64 %i.uq, 3
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.idx318 ; 2 uses
  %i.va = load float, ptr %i.uz, align 8, !tbaa !31
  %i.vb = fmul reassoc nsz arcp contract afn float %i.va, %i.q
  %i.vc = fmul reassoc nsz arcp contract afn float %i.vb, %i.uy
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vc, %i.uw
  %i.ve = frem reassoc nsz arcp contract afn float %i.vd, 1.000000e+00 ; 3 uses
  %i.vf = fcmp reassoc nsz arcp contract afn olt float %i.ve, 0.000000e+00
  %i.vg = fadd reassoc nsz arcp contract afn float %i.ve, 1.000000e+00
  %spec.select.i221 = select nsz i1 %i.vf, float %i.vg, float %i.ve
  %i.vh = fmul reassoc nsz arcp contract afn float %spec.select.i221, f0x40C90FDB
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vh, f0xC0490FDB
  %i.vj = fmul reassoc nsz arcp contract afn float %i.us, f0x3F7CF0E2 ; 3 uses
  %i.vk = fcmp reassoc nsz arcp contract afn ult float %i.vj, 0.000000e+00
  %.inv.i222 = fcmp reassoc nsz arcp contract afn ole float %i.vj, 2.098850e+00
  %spec.select.i223 = select reassoc nsz arcp contract afn i1 %.inv.i222, float %i.vj, float 2.098850e+00
  %i.vl = select reassoc nsz arcp contract afn i1 %i.vk, float 0.000000e+00, float %spec.select.i223 ; 4 uses
  %i.vm = fcmp reassoc nsz arcp contract afn une float %i.vl, 0.000000e+00
  br i1 %i.vm, label %bb.m, label %dt_UCS_JCH_to_xyY.exit227

bb.m:                                             ; preds = %bb.l
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !31
  %i.vp = fmul reassoc nsz arcp contract afn float %i.vo, %i.uy
  %i.vq = fadd reassoc nsz arcp contract afn float %i.vp, 1.000000e+00
  %i.vr = fmul reassoc nsz arcp contract afn float %i.vq, %i.uu
  %i.vs = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vr, float 0.000000e+00)
  %i.vt = fmul reassoc nnan nsz arcp contract afn float %i.vs, f0x3F7CF0E2
  %i.vu = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vl, float f0x3F2703AC)
  %i.vv = fmul reassoc nnan nsz arcp contract afn float %i.vu, f0x417EED8B
  %i.vw = fdiv reassoc nsz arcp contract afn float %i.vt, %i.vv
  %i.vx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vw, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit227

dt_UCS_JCH_to_xyY.exit227:                        ; preds = %bb.l, %bb.m
  %i.vy = phi reassoc nsz arcp contract afn float [ %i.vx, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %sincos.i224 = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vi) ; 2 uses
  %sin.i225 = extractvalue { float, float } %sincos.i224, 0
  %cos.i226 = extractvalue { float, float } %sincos.i224, 1
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vy, %cos.i226 ; 2 uses
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vy, %sin.i225 ; 2 uses
  %i.wb = fmul reassoc nsz arcp contract afn float %i.vz, f0xC0A13362
  %i.wc = fmul reassoc nsz arcp contract afn float %i.wa, f0x40204F91
  %i.wd = fsub reassoc nsz arcp contract afn float %i.wb, %i.wc ; 2 uses
  %i.we = fmul reassoc nsz arcp contract afn float %i.vz, f0x40985229
  %i.wf = fmul reassoc nsz arcp contract afn float %i.wa, f0x4037EFD4
  %i.wg = fadd reassoc nsz arcp contract afn float %i.we, %i.wf ; 2 uses
  %i.wh = fmul reassoc nsz arcp contract afn float %i.wd, f0xBFBEFF8B
  %i.wi = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.wd)
  %i.wj = fadd reassoc nsz arcp contract afn float %i.wi, f0xBFB2C28D
  %i.wk = fdiv reassoc nsz arcp contract afn float %i.wh, %i.wj ; 3 uses
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wg, f0xBFC32F7A
  %i.wm = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.wg)
  %i.wn = fadd reassoc nsz arcp contract afn float %i.wm, f0xBFB9C753
  %i.wo = fdiv reassoc nsz arcp contract afn float %i.wl, %i.wn ; 3 uses
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wk, f0xBE1A9505
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wo, f0xBE1EE8D5
  %i.wr = fadd reassoc nsz arcp contract afn float %i.wp, f0xBC0A2B16
  %i.ws = fadd reassoc nsz arcp contract afn float %i.wr, %i.wq
  %i.wt = fmul reassoc nsz arcp contract afn float %i.wk, f0x3F70B489
  %i.wu = fadd reassoc nsz arcp contract afn float %i.wo, f0xBCD1FB74
  %i.wv = fadd reassoc nsz arcp contract afn float %i.wu, %i.wt ; 5 uses
  %i.ww = fcmp reassoc nsz arcp contract afn ult float %i.wv, 0.000000e+00
  %i.wx = fcmp reassoc nsz arcp contract afn olt float %i.wv, f0x00800000
  %i.wy = select reassoc nsz arcp contract afn i1 %i.wx, float f0x00800000, float %i.wv
  %i.wz = fcmp reassoc nsz arcp contract afn ogt float %i.wv, f0x80800000
  %i.xa = select reassoc nsz arcp contract afn i1 %i.wz, float f0x80800000, float %i.wv
  %i.xb = select reassoc nsz arcp contract afn i1 %i.ww, float %i.xa, float %i.wy ; 2 uses
  %i.xc = fdiv reassoc nsz arcp contract afn float %i.ws, %i.xb ; 4 uses
  %i.xd = fcmp reassoc nsz arcp contract afn oeq float %i.xc, 0.000000e+00
  br i1 %i.xd, label %dt_xyY_to_XYZ.exit229, label %bb.n

bb.n:                                             ; preds = %dt_UCS_JCH_to_xyY.exit227
  %i.xe = fmul reassoc nsz arcp contract afn float %i.vl, f0x3F8FE801
  %i.xf = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.vl
  %i.xg = fdiv reassoc nsz arcp contract afn float %i.xe, %i.xf
  %i.xh = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.xg, float f0x3FCAA4B8) ; 3 uses
  %i.xi = fmul reassoc nsz arcp contract afn float %i.wo, f0x3E10B0E5
  %i.xj = fmul reassoc nsz arcp contract afn float %i.wk, f0x3E2B2F00
  %i.xk = fadd reassoc nsz arcp contract afn float %i.xj, f0xBC0352A9
  %i.xl = fadd reassoc nsz arcp contract afn float %i.xk, %i.xi
  %i.xm = fdiv reassoc nsz arcp contract afn float %i.xl, %i.xb ; 2 uses
  %i.xn = fmul reassoc nsz arcp contract afn float %i.xm, %i.xh
  %i.xo = fdiv reassoc nsz arcp contract afn float %i.xn, %i.xc
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xc, %i.xm
  %i.xq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.xp
  %i.xr = fmul reassoc nsz arcp contract afn float %i.xq, %i.xh
  %i.xs = fdiv reassoc nsz arcp contract afn float %i.xr, %i.xc
  br label %dt_xyY_to_XYZ.exit229

dt_xyY_to_XYZ.exit229:                            ; preds = %dt_UCS_JCH_to_xyY.exit227, %bb.n
  %.sroa.8.0 = phi nsz float [ %i.xh, %bb.n ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit227 ] ; 3 uses
  %.sroa.0244.0 = phi nsz float [ %i.xo, %bb.n ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit227 ] ; 3 uses
  %i.xt = phi reassoc nsz arcp contract afn float [ %i.xs, %bb.n ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit227 ] ; 3 uses
  %i.xu = fmul reassoc nsz arcp contract afn float %.sroa.0244.0, f0x3F8163AD
  %i.xv = fmul reassoc nsz arcp contract afn float %.sroa.8.0, f0x3D26BE12
  %i.xw = fmul reassoc nsz arcp contract afn float %i.xt, f0xBD0BDB31
  %i.xx = fmul reassoc nsz arcp contract afn float %.sroa.0244.0, f0x3BB1DE8E
  %i.xy = fmul reassoc nsz arcp contract afn float %.sroa.8.0, f0x3F7E5B63
  %i.xz = fmul reassoc nsz arcp contract afn float %i.xt, f0x3A978241
  %i.ya = fmul reassoc nsz arcp contract afn float %.sroa.0244.0, f0x39837366
  %i.yb = fmul reassoc nsz arcp contract afn float %.sroa.8.0, f0x3C3C486C
  %i.yc = fmul reassoc nsz arcp contract afn float %i.xt, f0x3F44995A
  %.sroa.6.0..0180347.sroa_idx = getelementptr inbounds nuw i8, ptr %.0180347, i64 12
  %i.yd = fadd reassoc nsz arcp contract afn float %i.xu, %i.xv
  %i.ye = fadd reassoc nsz arcp contract afn float %i.yd, %i.xw
  %i.yf = fadd reassoc nsz arcp contract afn float %i.xx, %i.xy
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yf, %i.xz
  %i.yh = fsub reassoc nsz arcp contract afn float %i.ya, %i.yb
  %i.yi = fadd reassoc nsz arcp contract afn float %i.yh, %i.yc
  %i.yj = load <4 x float>, ptr %i.nu, align 4, !tbaa !31
  %i.yk = insertelement <4 x float> poison, float %i.ye, i64 0
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ym = fmul reassoc nsz arcp contract afn <4 x float> %i.yl, %i.yj
  %i.yn = load <4 x float>, ptr %i.nv, align 4, !tbaa !31
  %i.yo = insertelement <4 x float> poison, float %i.yg, i64 0
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yq = fmul reassoc nsz arcp contract afn <4 x float> %i.yn, %i.yp
  %i.yr = fadd reassoc nsz arcp contract afn <4 x float> %i.yq, %i.ym
  %i.ys = load <4 x float>, ptr %i.nw, align 4, !tbaa !31
  %i.yt = insertelement <4 x float> poison, float %i.yi, i64 0
  %i.yu = shufflevector <4 x float> %i.yt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yv = fmul reassoc nsz arcp contract afn <4 x float> %i.ys, %i.yu
  %i.yw = fadd reassoc nsz arcp contract afn <4 x float> %i.yr, %i.yv
  store <4 x float> %i.yw, ptr %.0180347, align 4, !tbaa !31
  %i.yx = getelementptr inbounds nuw i8, ptr %.0181346, i64 12
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !31
  store float %i.yy, ptr %.sroa.6.0..0180347.sroa_idx, align 4, !tbaa !31
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.0181346, i64 %i.h
  %i.za = getelementptr [4 x i8], ptr %.0180347, i64 %i.h
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge351, label %bb.l

._crit_edge354.split:                             ; preds = %._crit_edge351, %.lr.ph353, %dt_gaussian_mean_blur.exit
  call void @free(ptr noundef nonnull %i.lw) #25
  call void @free(ptr noundef nonnull %i.ly) #25
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.preheader326, %.lr.ph332, %._crit_edge354.split
  %i.zb = getelementptr i8, ptr %0, i64 704
  %.val = load ptr, ptr %i.zb, align 16, !tbaa !53 ; 5 uses
  %.not.i230 = icmp eq ptr %.val, null
  br i1 %.not.i230, label %_update_histogram.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.zc = load ptr, ptr %i.m, align 8, !tbaa !139 ; 2 uses
  %i.zd = getelementptr i8, ptr %i.zc, i64 644
  %.val.i = load i32, ptr %i.zd, align 4, !tbaa !148
  %i.ze = and i32 %.val.i, 4
  %.not38.i = icmp eq i32 %i.ze, 0
  br i1 %.not38.i, label %_update_histogram.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.zf = call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef nonnull %i.zc) #25 ; 7 uses
  %.not39.i = icmp eq ptr %i.zf, null
  br i1 %.not39.i, label %_update_histogram.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.zg = load i32, ptr %i.f, align 4, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.a, i8 0, i64 1440, i1 false)
  %i.zh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !144 ; 2 uses
  %i.zj = icmp sgt i32 %i.zi, 0
  br i1 %i.zj, label %.lr.ph6.i, label %._crit_edge7.split.i

.lr.ph6.i:                                        ; preds = %bb.q
  %i.zk = sext i32 %i.zg to i64                   ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !145 ; 3 uses
  %i.zn = sext i32 %i.zm to i64
  %factor.op.mul.i = mul nsw i64 %i.zn, %i.zk
  %i.zo = icmp sgt i32 %i.zm, 0
  br i1 %i.zo, label %.lr.ph6.split.i, label %._crit_edge7.split.i

.lr.ph6.split.i:                                  ; preds = %.lr.ph6.i
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zf, i64 932
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zf, i64 916
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zf, i64 900
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zf, i64 928
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zf, i64 912
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zf, i64 896
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !31
  %i.zw = load float, ptr %i.zt, align 4, !tbaa !31
  %i.zx = load float, ptr %i.zs, align 4, !tbaa !31
  %i.zy = load <2 x float>, ptr %i.zr, align 4, !tbaa !31
  %i.zz = load <2 x float>, ptr %i.zq, align 4, !tbaa !31
  %i.aaa = load <2 x float>, ptr %i.zp, align 4, !tbaa !31
  %wide.trip.count.i231 = zext nneg i32 %i.zi to i64
  br label %.lr.ph.i

._crit_edge7.split.i:                             ; preds = %._crit_edge.i, %.lr.ph6.i, %bb.q
  %i.aab = getelementptr inbounds nuw i8, ptr %.val, i64 1776 ; 2 uses
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !73
  %.not40.i = icmp eq i32 %i.aac, 0
  %i.aad = getelementptr inbounds nuw i8, ptr %.val, i64 1784 ; 2 uses
  call void @g_mutex_lock(ptr noundef nonnull %i.aad) #25
  %i.aae = getelementptr inbounds nuw i8, ptr %.val, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1440) %i.aae, ptr noundef nonnull align 16 dereferenceable(1440) %i.a, i64 1440, i1 false)
  store i32 1, ptr %i.aab, align 8, !tbaa !73
  call void @g_mutex_unlock(ptr noundef nonnull %i.aad) #25
  br i1 %.not40.i, label %bb.u, label %bb.v

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph6.split.i
  %indvars.iv.i232 = phi i64 [ 0, %.lr.ph6.split.i ], [ %indvars.iv.next.i234, %._crit_edge.i ] ; 2 uses
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv.i232
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass.i
  br label %bb.r

._crit_edge.i:                                    ; preds = %bb.t
  %indvars.iv.next.i234 = add nuw nsw i64 %indvars.iv.i232, 1 ; 2 uses
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next.i234, %wide.trip.count.i231
  br i1 %exitcond9.not.i, label %._crit_edge7.split.i, label %.lr.ph.i

bb.r:                                             ; preds = %bb.t, %.lr.ph.i
  %.03.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aee, %bb.t ]
  %.0342.i = phi ptr [ %i.aaf, %.lr.ph.i ], [ %i.aef, %bb.t ] ; 2 uses
  %i.aag = load <3 x float>, ptr %.0342.i, align 4, !tbaa !31 ; 2 uses
  %i.aah = call reassoc nsz arcp contract afn <3 x float> @llvm.maxnum.v3f32(<3 x float> %i.aag, <3 x float> zeroinitializer) ; 5 uses
  %i.aai = extractelement <3 x float> %i.aah, i64 0
  %i.aaj = fmul reassoc nsz arcp contract afn float %i.aai, %i.zv
  %i.aak = extractelement <3 x float> %i.aah, i64 1
  %i.aal = fmul reassoc nsz arcp contract afn float %i.aak, %i.zw
  %i.aam = fadd reassoc nsz arcp contract afn float %i.aal, %i.aaj
  %i.aan = extractelement <3 x float> %i.aah, i64 2
  %i.aao = fmul reassoc nsz arcp contract afn float %i.aan, %i.zx
  %i.aap = shufflevector <3 x float> %i.aag, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aaq = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aap, <2 x float> zeroinitializer)
  %i.aar = fmul reassoc nsz arcp contract afn <2 x float> %i.aaq, %i.zy
  %i.aas = shufflevector <3 x float> %i.aah, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aat = fmul reassoc nsz arcp contract afn <2 x float> %i.aas, %i.zz
  %i.aau = fadd reassoc nsz arcp contract afn <2 x float> %i.aat, %i.aar
  %i.aav = shufflevector <3 x float> %i.aah, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aaw = fmul reassoc nsz arcp contract afn <2 x float> %i.aav, %i.aaa
  %i.aax = fadd reassoc nsz arcp contract afn float %i.aam, %i.aao ; 2 uses
  %i.aay = fadd reassoc nsz arcp contract afn <2 x float> %i.aau, %i.aaw ; 4 uses
  %i.aaz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aax, i64 0
  %i.aba = shufflevector <4 x float> %i.aaz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abb = fmul reassoc nsz arcp contract afn <4 x float> %i.aba, <float f0x3F7D4DA9, float f0xBBB11DFF, float -4.039210e-04, float -0.000000e+00>
  %i.abc = shufflevector <2 x float> %i.aay, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.abe = fmul reassoc nsz arcp contract afn <4 x float> %i.abd, <float f0xBD23F6FB, float f0x3F80DA42, float f0x3C7704B2, float -0.000000e+00>
  %i.abf = fadd reassoc nsz arcp contract afn <4 x float> %i.abe, %i.abb
  %i.abg = extractelement <2 x float> %i.aay, i64 0
  %i.abh = fadd reassoc nsz arcp contract afn float %i.abg, %i.aax
  %i.abi = extractelement <2 x float> %i.aay, i64 1
  %i.abj = fadd reassoc nsz arcp contract afn float %i.abh, %i.abi
  %i.abk = shufflevector <2 x float> %i.aay, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.abl = insertelement <4 x float> %i.abk, float %i.abj, i64 1
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.abn = fmul reassoc nsz arcp contract afn <4 x float> %i.abm, <float f0x3D3470F4, float f0xBAE61976, float f0x3FA6AB48, float 0.000000e+00>
  %i.abo = fadd reassoc nsz arcp contract afn <4 x float> %i.abn, %i.abf
  %i.abp = call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abo, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <4 x float> %i.abp, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i.i = extractelement <4 x float> %i.abp, i64 1 ; 3 uses
  %i.abq = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i.i, %.sroa.0.4.vec.extract4.i.i.i
  %.sroa.0.8.vec.extract.i.i.i = extractelement <4 x float> %i.abp, i64 2
  %i.abr = fadd reassoc nsz arcp contract afn float %i.abq, %.sroa.0.8.vec.extract.i.i.i ; 3 uses
  %i.abs = fcmp reassoc nsz arcp contract afn ogt float %i.abr, 0.000000e+00 ; 2 uses
  %i.abt = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i.i, %i.abr
  %i.abu = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i.i, %i.abr
end_hunk_1
begin_hunk_2_@gui_changed:bb.a
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !124
  %i.hn = icmp sgt i64 %.pre-phi.i, 2
  %i.ho = zext i1 %i.hn to i32
  call void @gtk_widget_set_visible(ptr noundef %i.hm, i32 noundef %i.ho) #25
  %i.hp = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !124
  %i.hr = icmp sgt i64 %.pre-phi.i, 3
  %i.hs = zext i1 %i.hr to i32
  call void @gtk_widget_set_visible(ptr noundef %i.hq, i32 noundef %i.hs) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ht = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hv) #25
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hw) #25
  %i.hx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hy) #25
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ia) #25
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ic) #25
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ie) #25
  %i.if = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ig) #25
  %i.ih = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ii) #25
  br i1 %i.m, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_update_visibility.exit
  call fastcc void @_sync_custom_sliders(ptr noundef nonnull %i.k, ptr noundef %i.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_update_visibility.exit
  %i.ij = load ptr, ptr %i.fe, align 8, !tbaa !122
  br label %bb.u

bb.u:                                             ; preds = %_ryb_to_ucs_fast.exit.i.i, %bb.t
  %.06.i.i = phi i32 [ 0, %bb.t ], [ %i.jo, %_ryb_to_ucs_fast.exit.i.i ] ; 2 uses
  %i.ik = uitofp nsz nneg i32 %.06.i.i to float   ; 2 uses
  %i.il = fmul reassoc nnan nsz arcp contract afn float %i.ik, f0x3D579436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.im = fmul reassoc nnan nsz arcp contract afn float %i.ik, f0x42179436 ; 2 uses
  %i.in = fptosi float %i.im to i32
  %.fr.i.i = freeze i32 %i.in                     ; 2 uses
  %i.io = urem i32 %.fr.i.i, 720                  ; 2 uses
  %i.ip = trunc nuw nsw i32 %i.io to i16
  %.lhs.trunc.i.i.i = add nuw nsw i16 %i.ip, 1    ; 2 uses
  %i.iq = icmp eq i16 %.lhs.trunc.i.i.i, 720
  %i.ir = select i1 %i.iq, i16 0, i16 %.lhs.trunc.i.i.i
  %i.is = zext nneg i32 %i.io to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !31 ; 5 uses
  %i.iv = zext nneg i16 %i.ir to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !31 ; 4 uses
  %i.iy = fsub reassoc nsz arcp contract afn float %i.ix, %i.iu
  %i.iz = fcmp reassoc nsz arcp contract afn ogt float %i.iy, 5.000000e-01
  br i1 %i.iz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ja = fadd reassoc nsz arcp contract afn float %i.ix, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.jb = fsub reassoc nsz arcp contract afn float %i.iu, %i.ix
  %i.jc = fcmp reassoc nsz arcp contract afn ogt float %i.jb, 5.000000e-01
  %i.jd = fadd reassoc nsz arcp contract afn float %i.iu, -1.000000e+00
  %spec.select.i.i.i.i = select nsz i1 %i.jc, float %i.jd, float %i.iu
  br label %_ryb_to_ucs_fast.exit.i.i

_ryb_to_ucs_fast.exit.i.i:                        ; preds = %bb.w, %bb.v
  %.014.i.i.i.i = phi nsz float [ %i.ja, %bb.v ], [ %i.ix, %bb.w ]
  %.013.i.i.i.i = phi nsz float [ %i.iu, %bb.v ], [ %spec.select.i.i.i.i, %bb.w ] ; 2 uses
  %i.je = sitofp reassoc nsz arcp contract afn i32 %.fr.i.i to float
  %i.jf = fsub reassoc nnan nsz arcp contract afn float %i.im, %i.je
  %i.jg = fsub reassoc nsz arcp contract afn float %.014.i.i.i.i, %.013.i.i.i.i
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, %i.jf
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, %.013.i.i.i.i ; 3 uses
  %i.jj = fcmp reassoc nsz arcp contract afn olt float %i.ji, 0.000000e+00
  %i.jk = fadd reassoc nsz arcp contract afn float %i.ji, 1.000000e+00
  %spec.select16.i.i.i.i = select nsz i1 %i.jj, float %i.jk, float %i.ji
  call fastcc void @_hue_to_srgb(float noundef %spec.select16.i.i.i.i, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.jl = load float, ptr %i.a, align 4, !tbaa !31
  %i.jm = load float, ptr %i.b, align 4, !tbaa !31
  %i.jn = load float, ptr %i.c, align 4, !tbaa !31
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ij, float noundef %i.il, float noundef %i.jl, float noundef %i.jm, float noundef %i.jn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.jo = add nuw nsw i32 %.06.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jo, 20
  br i1 %exitcond.not.i.i, label %_paint_hue_slider.exit.preheader.i, label %bb.u

_paint_hue_slider.exit.preheader.i:               ; preds = %_ryb_to_ucs_fast.exit.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %_paint_hue_slider.exit13.i, %_paint_hue_slider.exit.preheader.i
  %indvars.iv.i39 = phi i64 [ 0, %_paint_hue_slider.exit.preheader.i ], [ %indvars.iv.next.i40, %_paint_hue_slider.exit13.i ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i39
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !124
  br label %bb.y

bb.y:                                             ; preds = %dt_UCS_JCH_to_sRGB.exit.i, %bb.x
  %.06.i4.i = phi i32 [ 0, %bb.x ], [ %i.rv, %dt_UCS_JCH_to_sRGB.exit.i ] ; 2 uses
  %i.js = uitofp nsz nneg i32 %.06.i4.i to float  ; 2 uses
  %i.jt = fmul reassoc nnan nsz arcp contract afn float %i.js, f0x3D579436
  %i.ju = fmul reassoc nnan nsz arcp contract afn float %i.js, f0x42179436 ; 2 uses
  %i.jv = fptosi float %i.ju to i32
  %.fr.i5.i = freeze i32 %i.jv                    ; 2 uses
  %i.jw = urem i32 %.fr.i5.i, 720                 ; 2 uses
  %i.jx = trunc nuw nsw i32 %i.jw to i16
  %.lhs.trunc.i.i6.i = add nuw nsw i16 %i.jx, 1   ; 2 uses
  %i.jy = icmp eq i16 %.lhs.trunc.i.i6.i, 720
  %i.jz = select i1 %i.jy, i16 0, i16 %.lhs.trunc.i.i6.i
  %i.ka = zext nneg i32 %i.jw to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !31 ; 5 uses
  %i.kd = zext nneg i16 %i.jz to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !31 ; 4 uses
  %i.kg = fsub reassoc nsz arcp contract afn float %i.kf, %i.kc
  %i.kh = fcmp reassoc nsz arcp contract afn ogt float %i.kg, 5.000000e-01
  br i1 %i.kh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kf, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i8.i

bb.aa:                                            ; preds = %bb.y
  %i.kj = fsub reassoc nsz arcp contract afn float %i.kc, %i.kf
  %i.kk = fcmp reassoc nsz arcp contract afn ogt float %i.kj, 5.000000e-01
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kc, -1.000000e+00
  %spec.select.i.i.i7.i = select nsz i1 %i.kk, float %i.kl, float %i.kc
  br label %_ryb_to_ucs_fast.exit.i8.i

_ryb_to_ucs_fast.exit.i8.i:                       ; preds = %bb.aa, %bb.z
  %.014.i.i.i9.i = phi nsz float [ %i.ki, %bb.z ], [ %i.kf, %bb.aa ]
  %.013.i.i.i10.i = phi nsz float [ %i.kc, %bb.z ], [ %spec.select.i.i.i7.i, %bb.aa ] ; 2 uses
  %i.km = sitofp reassoc nsz arcp contract afn i32 %.fr.i5.i to float
  %i.kn = fsub reassoc nnan nsz arcp contract afn float %i.ju, %i.km
  %i.ko = fsub reassoc nsz arcp contract afn float %.014.i.i.i9.i, %.013.i.i.i10.i
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.kn
  %i.kq = fadd reassoc nsz arcp contract afn float %i.kp, %.013.i.i.i10.i ; 3 uses
  %i.kr = fcmp reassoc nsz arcp contract afn olt float %i.kq, 0.000000e+00
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kq, 1.000000e+00
  %spec.select16.i.i.i11.i = select nsz i1 %i.kr, float %i.ks, float %i.kq
  %i.kt = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.i11.i, f0x40C90FDB
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, f0xC0490FDB
  %sincos.i.i.i18.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ku) ; 2 uses
  %sin.i.i.i19.i = extractvalue { float, float } %sincos.i.i.i18.i, 0 ; 2 uses
  %cos.i.i.i20.i = extractvalue { float, float } %sincos.i.i.i18.i, 1 ; 2 uses
  %i.kv = insertelement <2 x float> poison, float %sin.i.i.i19.i, i64 0
  %i.kw = insertelement <2 x float> %i.kv, float %cos.i.i.i20.i, i64 1 ; 2 uses
  %i.kx = fmul reassoc nsz arcp contract afn <2 x float> %i.kw, <float f0x40204F91, float f0x40985229> ; 2 uses
  %i.ky = fmul reassoc nsz arcp contract afn <2 x float> %i.kw, <float f0x4037EFD4, float f0xC0A13362>
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.la = fsub reassoc nsz arcp contract afn <2 x float> %i.kz, %i.kx
  %i.lb = fadd reassoc nsz arcp contract afn <2 x float> %i.kz, %i.kx
  %i.lc = shufflevector <2 x float> %i.la, <2 x float> %i.lb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn <2 x float> %i.lc, <float f0xBFBEFF8B, float f0xBFC32F7A> ; 2 uses
  %i.le = extractelement <2 x float> %i.ld, i64 0
  %i.lf = extractelement <2 x float> %i.ld, i64 1
  br label %dt_UCS_JCH_to_xyY.exit.i.i17.i

dt_UCS_JCH_to_xyY.exit.i.i17.i:                   ; preds = %dt_UCS_JCH_to_sRGB.exit24.i, %_ryb_to_ucs_fast.exit.i8.i
  %.029.i.i.i = phi i32 [ 0, %_ryb_to_ucs_fast.exit.i8.i ], [ %i.oi, %dt_UCS_JCH_to_sRGB.exit24.i ]
  %.02428.i.i.i = phi float [ 2.000000e+00, %_ryb_to_ucs_fast.exit.i8.i ], [ %.024..i.i.i, %dt_UCS_JCH_to_sRGB.exit24.i ] ; 2 uses
  %.02527.i.i.i = phi float [ 0.000000e+00, %_ryb_to_ucs_fast.exit.i8.i ], [ %..025.i.i.i, %dt_UCS_JCH_to_sRGB.exit24.i ] ; 2 uses
  %i.lg = fadd reassoc nsz arcp contract afn float %.02527.i.i.i, %.02428.i.i.i ; 2 uses
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, 5.000000e-01 ; 2 uses
  %i.li = fmul reassoc nsz arcp contract afn float %i.lg, f0x3D298A54
  %i.lj = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.li, float f0x3F5510A2) ; 3 uses
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.le, %i.lj
  %.reass63.i = fmul reassoc nsz arcp contract afn float %i.lf, %i.lj
  %i.lk = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul reassoc nsz arcp contract afn <2 x float> %i.ll, %i.lc
  %i.ln = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lm) ; 2 uses
  %i.lo = extractelement <2 x float> %i.ln, i64 0
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, f0xBFB2C28D
  %i.lq = fdiv reassoc nsz arcp contract afn float %.reass.i, %i.lp ; 3 uses
  %i.lr = extractelement <2 x float> %i.ln, i64 1
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, f0xBFB9C753
  %i.lt = fdiv reassoc nsz arcp contract afn float %.reass63.i, %i.ls ; 3 uses
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lq, f0xBE1A9505
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lt, f0xBE1EE8D5
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lu, f0xBC0A2B16
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %i.lv
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lq, f0x3F70B489
  %i.lz = fadd reassoc nsz arcp contract afn float %i.lt, f0xBCD1FB74
  %i.ma = fadd reassoc nsz arcp contract afn float %i.lz, %i.ly ; 5 uses
  %i.mb = fcmp reassoc nsz arcp contract afn ult float %i.ma, 0.000000e+00
  %i.mc = fcmp reassoc nsz arcp contract afn olt float %i.ma, f0x00800000
  %i.md = select reassoc nsz arcp contract afn i1 %i.mc, float f0x00800000, float %i.ma
  %i.me = fcmp reassoc nsz arcp contract afn ogt float %i.ma, f0x80800000
  %i.mf = select reassoc nsz arcp contract afn i1 %i.me, float f0x80800000, float %i.ma
  %i.mg = select reassoc nsz arcp contract afn i1 %i.mb, float %i.mf, float %i.md ; 2 uses
  %i.mh = fdiv reassoc nsz arcp contract afn float %i.lx, %i.mg ; 4 uses
  %i.mi = fcmp reassoc nsz arcp contract afn oeq float %i.mh, 0.000000e+00
  br i1 %i.mi, label %dt_UCS_JCH_to_XYZ.exit.i21.i, label %bb.ab

bb.ab:                                            ; preds = %dt_UCS_JCH_to_xyY.exit.i.i17.i
  %i.mj = fmul reassoc nsz arcp contract afn float %i.lt, f0x3E10B0E5
  %i.mk = fmul reassoc nsz arcp contract afn float %i.lq, f0x3E2B2F00
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, f0xBC0352A9
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, %i.mj
  %i.mn = fdiv reassoc nsz arcp contract afn float %i.mm, %i.mg ; 2 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, f0x3EA88D83
  %i.mp = fdiv reassoc nsz arcp contract afn float %i.mo, %i.mh
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mn, %i.mh
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mq, f0x3EA88D83
  %i.ms = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.mr
  %i.mt = fdiv reassoc nsz arcp contract afn float %i.ms, %i.mh
  br label %dt_UCS_JCH_to_XYZ.exit.i21.i

dt_UCS_JCH_to_XYZ.exit.i21.i:                     ; preds = %bb.ab, %dt_UCS_JCH_to_xyY.exit.i.i17.i
  %.sink8.i.i22.i = phi float [ %i.mp, %bb.ab ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i17.i ] ; 3 uses
  %.sink.i.i23.i = phi float [ f0x3EA88D83, %bb.ab ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i17.i ] ; 3 uses
  %i.mu = phi reassoc nsz arcp contract afn float [ %i.mt, %bb.ab ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i17.i ] ; 3 uses
  %i.mv = fmul reassoc nsz arcp contract afn float %.sink8.i.i22.i, f0x404F639A
  %i.mw = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i23.i, f0x3FC4C0F4
  %i.mx = fsub reassoc nsz arcp contract afn float %i.mv, %i.mw
  %i.my = fmul reassoc nsz arcp contract afn float %i.mu, f0xBEFF3F82
  %i.mz = fadd reassoc nsz arcp contract afn float %i.mx, %i.my ; 3 uses
  %i.na = fmul reassoc nsz arcp contract afn float %.sink8.i.i22.i, f0x3F7821D1
  %i.nb = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i23.i, f0x3FF0211F
  %i.nc = fsub reassoc nsz arcp contract afn float %i.nb, %i.na
  %i.nd = fmul reassoc nsz arcp contract afn float %i.mu, 4.155600e-02
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nc, %i.nd ; 3 uses
  %i.nf = fmul reassoc nsz arcp contract afn float %.sink8.i.i22.i, 5.564340e-02
  %i.ng = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i23.i, f0x3E50EC2A
  %i.nh = fsub reassoc nsz arcp contract afn float %i.nf, %i.ng
  %i.ni = fmul reassoc nsz arcp contract afn float %i.mu, f0x3F875328
  %i.nj = fadd reassoc nsz arcp contract afn float %i.nh, %i.ni ; 3 uses
  %i.nk = fcmp reassoc nsz arcp contract afn ugt float %i.mz, 3.130800e-03
  br i1 %i.nk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i21.i
  %i.nl = fmul reassoc nnan nsz arcp contract afn float %i.mz, 1.292000e+01
  br label %bb.ae

bb.ad:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i21.i
  %i.nm = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mz, float f0x3ED55555)
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nm, 1.055000e+00
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, -5.500000e-02
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.np = phi reassoc nsz arcp contract afn float [ %i.nl, %bb.ac ], [ %i.no, %bb.ad ] ; 2 uses
  %i.nq = fcmp reassoc nsz arcp contract afn ugt float %i.ne, 3.130800e-03
  br i1 %i.nq, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nr = fmul reassoc nnan nsz arcp contract afn float %i.ne, 1.292000e+01
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ns = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ne, float f0x3ED55555)
  %i.nt = fmul reassoc nsz arcp contract afn float %i.ns, 1.055000e+00
  %i.nu = fadd reassoc nsz arcp contract afn float %i.nt, -5.500000e-02
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.nv = phi reassoc nsz arcp contract afn float [ %i.nr, %bb.af ], [ %i.nu, %bb.ag ] ; 2 uses
  %i.nw = fcmp reassoc nsz arcp contract afn ugt float %i.nj, 3.130800e-03
  br i1 %i.nw, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nx = fmul reassoc nnan nsz arcp contract afn float %i.nj, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit24.i

bb.aj:                                            ; preds = %bb.ah
  %i.ny = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.nj, float f0x3ED55555)
  %i.nz = fmul reassoc nsz arcp contract afn float %i.ny, 1.055000e+00
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit24.i

dt_UCS_JCH_to_sRGB.exit24.i:                      ; preds = %bb.aj, %bb.ai
  %i.ob = phi reassoc nsz arcp contract afn float [ %i.nx, %bb.ai ], [ %i.oa, %bb.aj ] ; 2 uses
  %i.oc = fcmp reassoc nsz arcp contract afn oge float %i.np, 0.000000e+00
  %i.od = fcmp reassoc nsz arcp contract afn oge float %i.nv, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.oc, i1 %i.od, i1 false
  %i.oe = fcmp reassoc nsz arcp contract afn oge float %i.ob, 0.000000e+00
  %or.cond5.i.i.i = select i1 %or.cond.i.i.i, i1 %i.oe, i1 false
  %i.of = fcmp reassoc nsz arcp contract afn ole float %i.np, 1.000000e+00
  %or.cond8.i.i.i = and i1 %i.of, %or.cond5.i.i.i
  %i.og = fcmp reassoc nsz arcp contract afn ole float %i.nv, 1.000000e+00
  %or.cond11.i.i.i = select i1 %or.cond8.i.i.i, i1 %i.og, i1 false
  %i.oh = fcmp reassoc nsz arcp contract afn ole float %i.ob, 1.000000e+00
  %or.cond14.i.i.i = select i1 %or.cond11.i.i.i, i1 %i.oh, i1 false ; 2 uses
  %..025.i.i.i = select nsz i1 %or.cond14.i.i.i, float %i.lh, float %.02527.i.i.i ; 2 uses
  %.024..i.i.i = select nsz i1 %or.cond14.i.i.i, float %.02428.i.i.i, float %i.lh
  %i.oi = add nuw nsw i32 %.029.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.oi, 16
  br i1 %exitcond.not.i.i.i, label %dt_UCS_JCH_to_xyY.exit.i.i.i, label %dt_UCS_JCH_to_xyY.exit.i.i17.i

dt_UCS_JCH_to_xyY.exit.i.i.i:                     ; preds = %dt_UCS_JCH_to_sRGB.exit24.i
  %i.oj = fmul reassoc nsz arcp contract afn float %..025.i.i.i, f0x3D901BFB
  %i.ok = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.oj, float f0x3F5510A2) ; 2 uses
  %i.ol = fmul reassoc nsz arcp contract afn float %i.ok, %cos.i.i.i20.i ; 2 uses
  %i.om = fmul reassoc nsz arcp contract afn float %i.ok, %sin.i.i.i19.i ; 2 uses
  %i.on = fmul reassoc nsz arcp contract afn float %i.ol, f0xC0A13362
  %i.oo = fmul reassoc nsz arcp contract afn float %i.om, f0x40204F91
  %i.op = fsub reassoc nsz arcp contract afn float %i.on, %i.oo ; 2 uses
  %i.oq = fmul reassoc nsz arcp contract afn float %i.ol, f0x40985229
  %i.or = fmul reassoc nsz arcp contract afn float %i.om, f0x4037EFD4
  %i.os = fadd reassoc nsz arcp contract afn float %i.oq, %i.or ; 2 uses
  %i.ot = fmul reassoc nsz arcp contract afn float %i.op, f0xBFBEFF8B
  %i.ou = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.op)
  %i.ov = fadd reassoc nsz arcp contract afn float %i.ou, f0xBFB2C28D
  %i.ow = fdiv reassoc nsz arcp contract afn float %i.ot, %i.ov ; 3 uses
  %i.ox = fmul reassoc nsz arcp contract afn float %i.os, f0xBFC32F7A
  %i.oy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.os)
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, f0xBFB9C753
  %i.pa = fdiv reassoc nsz arcp contract afn float %i.ox, %i.oz ; 3 uses
  %i.pb = fmul reassoc nsz arcp contract afn float %i.ow, f0xBE1A9505
  %i.pc = fmul reassoc nsz arcp contract afn float %i.pa, f0xBE1EE8D5
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pb, f0xBC0A2B16
  %i.pe = fadd reassoc nsz arcp contract afn float %i.pd, %i.pc
  %i.pf = fmul reassoc nsz arcp contract afn float %i.ow, f0x3F70B489
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pa, f0xBCD1FB74
  %i.ph = fadd reassoc nsz arcp contract afn float %i.pg, %i.pf ; 5 uses
  %i.pi = fcmp reassoc nsz arcp contract afn ult float %i.ph, 0.000000e+00
  %i.pj = fcmp reassoc nsz arcp contract afn olt float %i.ph, f0x00800000
  %i.pk = select reassoc nsz arcp contract afn i1 %i.pj, float f0x00800000, float %i.ph
  %i.pl = fcmp reassoc nsz arcp contract afn ogt float %i.ph, f0x80800000
  %i.pm = select reassoc nsz arcp contract afn i1 %i.pl, float f0x80800000, float %i.ph
  %i.pn = select reassoc nsz arcp contract afn i1 %i.pi, float %i.pm, float %i.pk ; 2 uses
  %i.po = fdiv reassoc nsz arcp contract afn float %i.pe, %i.pn ; 4 uses
  %i.pp = fcmp reassoc nsz arcp contract afn oeq float %i.po, 0.000000e+00
  br i1 %i.pp, label %dt_UCS_JCH_to_XYZ.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %dt_UCS_JCH_to_xyY.exit.i.i.i
  %i.pq = fmul reassoc nsz arcp contract afn float %i.pa, f0x3E10B0E5
  %i.pr = fmul reassoc nsz arcp contract afn float %i.ow, f0x3E2B2F00
  %i.ps = fadd reassoc nsz arcp contract afn float %i.pr, f0xBC0352A9
  %i.pt = fadd reassoc nsz arcp contract afn float %i.ps, %i.pq
  %i.pu = fdiv reassoc nsz arcp contract afn float %i.pt, %i.pn ; 2 uses
  %i.pv = fmul reassoc nsz arcp contract afn float %i.pu, f0x3EA88D83
  %i.pw = fdiv reassoc nsz arcp contract afn float %i.pv, %i.po
  %i.px = fadd reassoc nsz arcp contract afn float %i.pu, %i.po
  %i.py = fmul reassoc nsz arcp contract afn float %i.px, f0x3EA88D83
  %i.pz = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.py
  %i.qa = fdiv reassoc nsz arcp contract afn float %i.pz, %i.po
  br label %dt_UCS_JCH_to_XYZ.exit.i.i

dt_UCS_JCH_to_XYZ.exit.i.i:                       ; preds = %bb.ak, %dt_UCS_JCH_to_xyY.exit.i.i.i
  %.sink8.i.i.i = phi float [ %i.pw, %bb.ak ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i.i ] ; 3 uses
  %.sink.i.i.i = phi float [ f0x3EA88D83, %bb.ak ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i.i ] ; 3 uses
  %i.qb = phi reassoc nsz arcp contract afn float [ %i.qa, %bb.ak ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i.i ] ; 3 uses
  %i.qc = fmul reassoc nsz arcp contract afn float %.sink8.i.i.i, f0x404F639A
  %i.qd = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i.i, f0x3FC4C0F4
  %i.qe = fsub reassoc nsz arcp contract afn float %i.qc, %i.qd
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qb, f0xBEFF3F82
  %i.qg = fadd reassoc nsz arcp contract afn float %i.qe, %i.qf ; 3 uses
  %i.qh = fmul reassoc nsz arcp contract afn float %.sink8.i.i.i, f0x3F7821D1
  %i.qi = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i.i, f0x3FF0211F
  %i.qj = fsub reassoc nsz arcp contract afn float %i.qi, %i.qh
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qb, 4.155600e-02
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qj, %i.qk ; 3 uses
  %i.qm = fmul reassoc nsz arcp contract afn float %.sink8.i.i.i, 5.564340e-02
  %i.qn = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i.i, f0x3E50EC2A
  %i.qo = fsub reassoc nsz arcp contract afn float %i.qm, %i.qn
  %i.qp = fmul reassoc nsz arcp contract afn float %i.qb, f0x3F875328
  %i.qq = fadd reassoc nsz arcp contract afn float %i.qo, %i.qp ; 3 uses
  %i.qr = fcmp reassoc nsz arcp contract afn ugt float %i.qg, 3.130800e-03
  br i1 %i.qr, label %bb.am, label %bb.al

bb.al:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i.i
  %i.qs = fmul reassoc nnan nsz arcp contract afn float %i.qg, 1.292000e+01
  br label %bb.an

bb.am:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i.i
  %i.qt = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qg, float f0x3ED55555)
  %i.qu = fmul reassoc nsz arcp contract afn float %i.qt, 1.055000e+00
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qu, -5.500000e-02
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.qw = phi reassoc nsz arcp contract afn float [ %i.qs, %bb.al ], [ %i.qv, %bb.am ] ; 3 uses
  %i.qx = fcmp reassoc nsz arcp contract afn ugt float %i.ql, 3.130800e-03
  br i1 %i.qx, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qy = fmul reassoc nnan nsz arcp contract afn float %i.ql, 1.292000e+01
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.qz = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ql, float f0x3ED55555)
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qz, 1.055000e+00
  %i.rb = fadd reassoc nsz arcp contract afn float %i.ra, -5.500000e-02
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.rc = phi reassoc nsz arcp contract afn float [ %i.qy, %bb.ao ], [ %i.rb, %bb.ap ] ; 3 uses
  %i.rd = fcmp reassoc nsz arcp contract afn ugt float %i.qq, 3.130800e-03
  br i1 %i.rd, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.re = fmul reassoc nnan nsz arcp contract afn float %i.qq, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.rf = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qq, float f0x3ED55555)
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, 1.055000e+00
  %i.rh = fadd reassoc nsz arcp contract afn float %i.rg, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit.i

dt_UCS_JCH_to_sRGB.exit.i:                        ; preds = %bb.as, %bb.ar
  %i.ri = phi reassoc nsz arcp contract afn float [ %i.re, %bb.ar ], [ %i.rh, %bb.as ] ; 3 uses
  %i.rj = fcmp reassoc nsz arcp contract afn ogt float %i.qw, 1.000000e+00
  %i.rk = fcmp reassoc nsz arcp contract afn olt float %i.qw, 0.000000e+00
  %i.rl = select reassoc nsz arcp contract afn i1 %i.rk, float 0.000000e+00, float %i.qw
  %i.rm = select reassoc nsz arcp contract afn i1 %i.rj, float 1.000000e+00, float %i.rl
  %i.rn = fcmp reassoc nsz arcp contract afn ogt float %i.rc, 1.000000e+00
  %i.ro = fcmp reassoc nsz arcp contract afn olt float %i.rc, 0.000000e+00
  %i.rp = select reassoc nsz arcp contract afn i1 %i.ro, float 0.000000e+00, float %i.rc
  %i.rq = select reassoc nsz arcp contract afn i1 %i.rn, float 1.000000e+00, float %i.rp
  %i.rr = fcmp reassoc nsz arcp contract afn ogt float %i.ri, 1.000000e+00
  %i.rs = fcmp reassoc nsz arcp contract afn olt float %i.ri, 0.000000e+00
  %i.rt = select reassoc nsz arcp contract afn i1 %i.rs, float 0.000000e+00, float %i.ri
  %i.ru = select reassoc nsz arcp contract afn i1 %i.rr, float 1.000000e+00, float %i.rt
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.jr, float noundef %i.jt, float noundef %i.rm, float noundef %i.rq, float noundef %i.ru) #25
  %i.rv = add nuw nsw i32 %.06.i4.i, 1            ; 2 uses
  %exitcond.not.i12.i = icmp eq i32 %i.rv, 20
  br i1 %exitcond.not.i12.i, label %_paint_hue_slider.exit13.i, label %bb.y

_paint_hue_slider.exit13.i:                       ; preds = %dt_UCS_JCH_to_sRGB.exit.i
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, 4
  br i1 %exitcond.not.i41, label %_paint_all_hue_sliders.exit, label %bb.x

_paint_all_hue_sliders.exit:                      ; preds = %_paint_hue_slider.exit13.i
  call fastcc void @_paint_all_sat_sliders(ptr noundef nonnull %i.i, ptr noundef nonnull %i.k)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !125 ; 2 uses
  %.not.i42 = icmp eq ptr %i.rx, null
  br i1 %.not.i42, label %_sync_vectorscope_if_enabled.exit, label %bb.at

bb.at:                                            ; preds = %_paint_all_hue_sliders.exit
  %i.ry = call i32 @gtk_toggle_button_get_active(ptr noundef nonnull %i.rx) #25
  %.not23.i = icmp eq i32 %i.ry, 0
  br i1 %.not23.i, label %_sync_vectorscope_if_enabled.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.sa = load i32, ptr %i.rz, align 16, !tbaa !126
  %.not24.i = icmp eq i32 %i.sa, 0
  br i1 %.not24.i, label %_sync_vectorscope_if_enabled.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.sb = load ptr, ptr %i.fe, align 8, !tbaa !122
  %i.sc = icmp eq ptr %1, %i.sb
  br i1 %i.sc, label %.loopexit.i44, label %.preheader.i43

.preheader.i43:                                   ; preds = %bb.av
  %i.sd = load ptr, ptr %i.jp, align 8, !tbaa !124
  %i.se = icmp eq ptr %1, %i.sd
  br i1 %i.se, label %.loopexit.i44, label %bb.aw

bb.aw:                                            ; preds = %.preheader.i43
  %i.sf = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !124
  %i.sh = icmp eq ptr %1, %i.sg
  br i1 %i.sh, label %.loopexit.i44, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.si = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !124
  %i.sk = icmp eq ptr %1, %i.sj
  br i1 %i.sk, label %.loopexit.i44, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sl = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !124
  %i.sn = icmp eq ptr %1, %i.sm
  br label %.loopexit.i44

.loopexit.i44:                                    ; preds = %bb.ay, %bb.ax, %bb.aw, %.preheader.i43, %bb.av
  %.1.i = phi i1 [ true, %bb.av ], [ true, %bb.ax ], [ true, %.preheader.i43 ], [ true, %bb.aw ], [ %i.sn, %bb.ay ]
  %.not25.i = icmp eq ptr %1, null
  br i1 %.not25.i, label %.critedge.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i44
  %i.so = load ptr, ptr %i.i, align 8, !tbaa !79
  %i.sp = icmp eq ptr %1, %i.so
  %or.cond.i = or i1 %.1.i, %i.sp
  br i1 %or.cond.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.sq = load ptr, ptr %i.fj, align 8, !tbaa !121
  %i.sr = icmp eq ptr %1, %i.sq
  br i1 %i.sr, label %bb.bb, label %_sync_vectorscope_if_enabled.exit

.critedge.i:                                      ; preds = %.loopexit.i44
  call void @dt_iop_request_focus(ptr noundef nonnull %0) #25
  br label %bb.bb

bb.bb:                                            ; preds = %.critedge.i, %bb.ba, %bb.az
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !75
  call fastcc void @_push_to_vectorscope(ptr %.val.i)
  br label %_sync_vectorscope_if_enabled.exit

_sync_vectorscope_if_enabled.exit:                ; preds = %bb.bb, %bb.ba, %bb.au, %bb.at, %_paint_all_hue_sliders.exit, %bb.a
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_sync_custom_sliders(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.g = load float, ptr %i.e, align 4, !tbaa !31
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, 7.200000e+02 ; 2 uses
  %i.i = fptosi float %i.h to i32                 ; 2 uses
  %i.j = srem i32 %i.i, 720                       ; 2 uses
end_hunk_2
begin_hunk_3_@_sync_custom_sliders:bb.a
bb.b:                                             ; preds = %bb.a
  %i.u = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.v = fsub reassoc nsz arcp contract afn float %i.o, %i.r
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, 5.000000e-01
  %i.x = fadd reassoc nsz arcp contract afn float %i.o, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.w, float %i.x, float %i.o
  br label %_ucs_to_ryb_fast.exit

_ucs_to_ryb_fast.exit:                            ; preds = %bb.b, %bb.c
  %.014.i.i = phi nsz float [ %i.u, %bb.b ], [ %i.r, %bb.c ]
  %.013.i.i = phi nsz float [ %i.o, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.z = fsub reassoc nsz arcp contract afn float %i.h, %i.y
  %i.aa = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, %.013.i.i ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 0.000000e+00
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ac, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ad, float %i.ae, float %i.ac
  %i.af = fmul reassoc nsz arcp contract afn float %spec.select16.i.i, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.af) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !124
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !31
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 7.200000e+02 ; 2 uses
  %i.al = fptosi float %i.ak to i32               ; 2 uses
  %i.am = srem i32 %i.al, 720                     ; 2 uses
  %i.an = trunc nsw i32 %i.am to i16
  %.lhs.trunc.i.1 = add nsw i16 %i.an, 1
  %i.ao = srem i16 %.lhs.trunc.i.1, 720
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31 ; 5 uses
  %i.as = sext i16 %i.ao to i64
  %i.at = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !31 ; 4 uses
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %i.ar
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.av, 5.000000e-01
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.ax = fsub reassoc nsz arcp contract afn float %i.ar, %i.au
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ax, 5.000000e-01
  %i.az = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00
  %spec.select.i.i.1 = select nsz i1 %i.ay, float %i.az, float %i.ar
  br label %_ucs_to_ryb_fast.exit.1

bb.e:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.ba = fadd reassoc nsz arcp contract afn float %i.au, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.1

_ucs_to_ryb_fast.exit.1:                          ; preds = %bb.e, %bb.d
  %.014.i.i.1 = phi nsz float [ %i.ba, %bb.e ], [ %i.au, %bb.d ]
  %.013.i.i.1 = phi nsz float [ %i.ar, %bb.e ], [ %spec.select.i.i.1, %bb.d ] ; 2 uses
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ak, %i.bb
  %i.bd = fsub reassoc nsz arcp contract afn float %.014.i.i.1, %.013.i.i.1
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.bc
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %.013.i.i.1 ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.bf, 0.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, 1.000000e+00
  %spec.select16.i.i.1 = select nsz i1 %i.bg, float %i.bh, float %i.bf
  %i.bi = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.1, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.bi) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !124
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !31
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 7.200000e+02 ; 2 uses
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = srem i32 %i.bo, 720                     ; 2 uses
  %i.bq = trunc nsw i32 %i.bp to i16
  %.lhs.trunc.i.2 = add nsw i16 %i.bq, 1
  %i.br = srem i16 %.lhs.trunc.i.2, 720
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !31 ; 5 uses
  %i.bv = sext i16 %i.br to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !31 ; 4 uses
  %i.by = fsub reassoc nsz arcp contract afn float %i.bx, %i.bu
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 5.000000e-01
  br i1 %i.bz, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ucs_to_ryb_fast.exit.1
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bu, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.ca, 5.000000e-01
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bu, -1.000000e+00
  %spec.select.i.i.2 = select nsz i1 %i.cb, float %i.cc, float %i.bu
  br label %_ucs_to_ryb_fast.exit.2

bb.g:                                             ; preds = %_ucs_to_ryb_fast.exit.1
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bx, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.2

_ucs_to_ryb_fast.exit.2:                          ; preds = %bb.g, %bb.f
  %.014.i.i.2 = phi nsz float [ %i.cd, %bb.g ], [ %i.bx, %bb.f ]
  %.013.i.i.2 = phi nsz float [ %i.bu, %bb.g ], [ %spec.select.i.i.2, %bb.f ] ; 2 uses
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.cf = fsub reassoc nsz arcp contract afn float %i.bn, %i.ce
  %i.cg = fsub reassoc nsz arcp contract afn float %.014.i.i.2, %.013.i.i.2
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cf
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %.013.i.i.2 ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ci, 0.000000e+00
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ci, 1.000000e+00
  %spec.select16.i.i.2 = select nsz i1 %i.cj, float %i.ck, float %i.ci
  %i.cl = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.2, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.cl) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !124
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load float, ptr %i.co, align 4, !tbaa !31
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 7.200000e+02 ; 2 uses
  %i.cr = fptosi float %i.cq to i32               ; 2 uses
  %i.cs = srem i32 %i.cr, 720                     ; 2 uses
  %i.ct = trunc nsw i32 %i.cs to i16
  %.lhs.trunc.i.3 = add nsw i16 %i.ct, 1
  %i.cu = srem i16 %.lhs.trunc.i.3, 720
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !31 ; 5 uses
  %i.cy = sext i16 %i.cu to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !31 ; 4 uses
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cx
  %i.dc = fcmp reassoc nsz arcp contract afn ogt float %i.db, 5.000000e-01
  br i1 %i.dc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ucs_to_ryb_fast.exit.2
  %i.dd = fsub reassoc nsz arcp contract afn float %i.cx, %i.da
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, 5.000000e-01
  %i.df = fadd reassoc nsz arcp contract afn float %i.cx, -1.000000e+00
  %spec.select.i.i.3 = select nsz i1 %i.de, float %i.df, float %i.cx
  br label %_ucs_to_ryb_fast.exit.3

bb.i:                                             ; preds = %_ucs_to_ryb_fast.exit.2
  %i.dg = fadd reassoc nsz arcp contract afn float %i.da, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.3

_ucs_to_ryb_fast.exit.3:                          ; preds = %bb.i, %bb.h
  %.014.i.i.3 = phi nsz float [ %i.dg, %bb.i ], [ %i.da, %bb.h ]
  %.013.i.i.3 = phi nsz float [ %i.cx, %bb.i ], [ %spec.select.i.i.3, %bb.h ] ; 2 uses
  %i.dh = sitofp reassoc nsz arcp contract afn i32 %i.cr to float
  %i.di = fsub reassoc nsz arcp contract afn float %i.cq, %i.dh
  %i.dj = fsub reassoc nsz arcp contract afn float %.014.i.i.3, %.013.i.i.3
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.di
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %.013.i.i.3 ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dl, 0.000000e+00
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dl, 1.000000e+00
  %spec.select16.i.i.3 = select nsz i1 %i.dm, float %i.dn, float %i.dl
  %i.do = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.3, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cn, float noundef %i.do) #25
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.dr = atomicrmw sub ptr %i.dq, i32 1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_paint_all_sat_sliders(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.c = load i32, ptr %1, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  call fastcc void @get_harmony_nodes(i32 noundef %i.c, float noundef %i.e, ptr noundef nonnull %i.f, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_paint_sat_slider.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %_paint_sat_slider.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_paint_sat_slider.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, f0x40C90FDB
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, f0xC0490FDB
  %sincos.i.i.i11 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.q) ; 2 uses
  %sin.i.i.i12 = extractvalue { float, float } %sincos.i.i.i11, 0
  %cos.i.i.i13 = extractvalue { float, float } %sincos.i.i.i11, 1
  %i.r = insertelement <2 x float> poison, float %sin.i.i.i12, i64 0
  %i.s = insertelement <2 x float> %i.r, float %cos.i.i.i13, i64 1 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, <float f0x40204F91, float f0x40985229> ; 2 uses
  %2 = fmul reassoc nsz arcp contract afn <2 x float> %i.s, <float f0x4037EFD4, float f0xC0A13362>
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = fsub reassoc nsz arcp contract afn <2 x float> %3, %i.t ; 2 uses
  %i.v = fadd reassoc nsz arcp contract afn <2 x float> %3, %i.t ; 2 uses
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.w, <float f0xBFBEFF8B, float f0xBFC32F7A> ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = extractelement <2 x float> %i.x, i64 1
  br label %dt_UCS_JCH_to_xyY.exit.i.i10

dt_UCS_JCH_to_xyY.exit.i.i10:                     ; preds = %dt_UCS_JCH_to_sRGB.exit17, %bb.b
  %.029.i.i = phi i32 [ 0, %bb.b ], [ %i.dc, %dt_UCS_JCH_to_sRGB.exit17 ]
  %.02428.i.i = phi float [ 2.000000e+00, %bb.b ], [ %.024..i.i, %dt_UCS_JCH_to_sRGB.exit17 ] ; 2 uses
  %.02527.i.i = phi float [ 0.000000e+00, %bb.b ], [ %..025.i.i, %dt_UCS_JCH_to_sRGB.exit17 ] ; 2 uses
  %i.aa = fadd reassoc nsz arcp contract afn float %.02527.i.i, %.02428.i.i ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, 5.000000e-01 ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, f0x3D298A54
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ac, float f0x3F5510A2) ; 3 uses
  %.reass = fmul reassoc nsz arcp contract afn float %i.ad, %i.y
  %.reass63 = fmul reassoc nsz arcp contract afn float %i.ad, %i.z
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.af
  %i.ah = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ag) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, f0xBFB2C28D
  %i.ak = fdiv reassoc nsz arcp contract afn float %.reass, %i.aj ; 3 uses
  %i.al = extractelement <2 x float> %i.ah, i64 1
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, f0xBFB9C753
  %i.an = fdiv reassoc nsz arcp contract afn float %.reass63, %i.am ; 3 uses
  %i.ao = fmul reassoc nsz arcp contract afn float %i.ak, f0xBE1A9505
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, f0xBE1EE8D5
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ao, f0xBC0A2B16
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn float %i.ak, f0x3F70B489
  %i.at = fadd reassoc nsz arcp contract afn float %i.an, f0xBCD1FB74
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, %i.as ; 5 uses
  %i.av = fcmp reassoc nsz arcp contract afn ult float %i.au, 0.000000e+00
  %i.aw = fcmp reassoc nsz arcp contract afn olt float %i.au, f0x00800000
  %i.ax = select reassoc nsz arcp contract afn i1 %i.aw, float f0x00800000, float %i.au
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.au, f0x80800000
  %i.az = select reassoc nsz arcp contract afn i1 %i.ay, float f0x80800000, float %i.au
  %i.ba = select reassoc nsz arcp contract afn i1 %i.av, float %i.az, float %i.ax ; 2 uses
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.ar, %i.ba ; 4 uses
  %i.bc = fcmp reassoc nsz arcp contract afn oeq float %i.bb, 0.000000e+00
  br i1 %i.bc, label %dt_UCS_JCH_to_XYZ.exit.i14, label %bb.c

bb.c:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i.i10
  %i.bd = fmul reassoc nsz arcp contract afn float %i.an, f0x3E10B0E5
  %i.be = fmul reassoc nsz arcp contract afn float %i.ak, f0x3E2B2F00
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, f0xBC0352A9
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.bd
  %i.bh = fdiv reassoc nsz arcp contract afn float %i.bg, %i.ba ; 2 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, f0x3EA88D83
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bi, %i.bb
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bh, %i.bb
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, f0x3EA88D83
  %i.bm = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.bl
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bb
  br label %dt_UCS_JCH_to_XYZ.exit.i14

dt_UCS_JCH_to_XYZ.exit.i14:                       ; preds = %bb.c, %dt_UCS_JCH_to_xyY.exit.i.i10
  %.sink8.i.i15 = phi float [ %i.bj, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i10 ] ; 3 uses
  %.sink.i.i16 = phi float [ f0x3EA88D83, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i10 ] ; 3 uses
  %i.bo = phi reassoc nsz arcp contract afn float [ %i.bn, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i10 ] ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %.sink8.i.i15, f0x404F639A
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i16, f0x3FC4C0F4
  %i.br = fsub reassoc nsz arcp contract afn float %i.bp, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bo, f0xBEFF3F82
  %i.bt = fadd reassoc nsz arcp contract afn float %i.br, %i.bs ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %.sink8.i.i15, f0x3F7821D1
  %i.bv = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i16, f0x3FF0211F
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bv, %i.bu
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bo, 4.155600e-02
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, %i.bx ; 3 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %.sink8.i.i15, 5.564340e-02
  %i.ca = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i16, f0x3E50EC2A
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bz, %i.ca
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bo, f0x3F875328
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %i.cc ; 3 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ugt float %i.bt, 3.130800e-03
  br i1 %i.ce, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i14
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.bt, 1.292000e+01
  br label %bb.f

bb.e:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i14
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bt, float f0x3ED55555)
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, 1.055000e+00
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, -5.500000e-02
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cj = phi reassoc nsz arcp contract afn float [ %i.cf, %bb.d ], [ %i.ci, %bb.e ] ; 2 uses
  %i.ck = fcmp reassoc nsz arcp contract afn ugt float %i.by, 3.130800e-03
  br i1 %i.ck, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = fmul reassoc nnan nsz arcp contract afn float %i.by, 1.292000e+01
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float f0x3ED55555)
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, 1.055000e+00
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, -5.500000e-02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cp = phi reassoc nsz arcp contract afn float [ %i.cl, %bb.g ], [ %i.co, %bb.h ] ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn ugt float %i.cd, 3.130800e-03
  br i1 %i.cq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = fmul reassoc nnan nsz arcp contract afn float %i.cd, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit17

bb.k:                                             ; preds = %bb.i
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float f0x3ED55555)
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 1.055000e+00
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit17

dt_UCS_JCH_to_sRGB.exit17:                        ; preds = %bb.k, %bb.j
  %i.cv = phi reassoc nsz arcp contract afn float [ %i.cr, %bb.j ], [ %i.cu, %bb.k ] ; 2 uses
  %i.cw = fcmp reassoc nsz arcp contract afn oge float %i.cj, 0.000000e+00
  %i.cx = fcmp reassoc nsz arcp contract afn oge float %i.cp, 0.000000e+00
  %or.cond.i.i = select i1 %i.cw, i1 %i.cx, i1 false
  %i.cy = fcmp reassoc nsz arcp contract afn oge float %i.cv, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.cy, i1 false
  %i.cz = fcmp reassoc nsz arcp contract afn ole float %i.cj, 1.000000e+00
  %or.cond8.i.i = and i1 %i.cz, %or.cond5.i.i
  %i.da = fcmp reassoc nsz arcp contract afn ole float %i.cp, 1.000000e+00
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.da, i1 false
  %i.db = fcmp reassoc nsz arcp contract afn ole float %i.cv, 1.000000e+00
  %or.cond14.i.i = select i1 %or.cond11.i.i, i1 %i.db, i1 false ; 2 uses
  %..025.i.i = select nsz i1 %or.cond14.i.i, float %i.ab, float %.02527.i.i ; 3 uses
  %.024..i.i = select nsz i1 %or.cond14.i.i, float %.02428.i.i, float %i.ab
  %i.dc = add nuw nsw i32 %.029.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dc, 16
  br i1 %exitcond.not.i.i, label %_find_max_chroma.exit.i, label %dt_UCS_JCH_to_xyY.exit.i.i10

_find_max_chroma.exit.i:                          ; preds = %dt_UCS_JCH_to_sRGB.exit17
  %i.dd = fmul reassoc nsz arcp contract afn float %..025.i.i, f0x3DB73DFB
  %4 = extractelement <2 x float> %i.u, i64 0
  %invariant.op64 = fmul reassoc nsz arcp contract afn float %4, f0xBFBEFF8B
  %5 = extractelement <2 x float> %i.v, i64 1
  %invariant.op66 = fmul reassoc nsz arcp contract afn float %5, f0xBFC32F7A
  br label %dt_UCS_JCH_to_xyY.exit.i.i

dt_UCS_JCH_to_xyY.exit.i.i:                       ; preds = %dt_UCS_JCH_to_sRGB.exit, %_find_max_chroma.exit.i
  %.019.i = phi i32 [ 0, %_find_max_chroma.exit.i ], [ %i.gd, %dt_UCS_JCH_to_sRGB.exit ] ; 2 uses
  %i.de = uitofp nsz nneg i32 %.019.i to float    ; 3 uses
  %i.df = fmul reassoc nnan nsz arcp contract afn float %i.de, f0x3D579436 ; 2 uses
  %i.dg = fcmp reassoc nsz arcp contract afn ugt float %i.df, 5.000000e-01
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dd, %i.de
  %i.di = fmul reassoc nnan nsz arcp contract afn float %i.de, f0x3C8158EC
  %reass.add = fadd reassoc nnan nsz arcp contract afn float %i.di, f0x3F333334
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %..025.i.i
  %i.dj = select reassoc nsz arcp contract afn i1 %i.dg, float %reass.mul, float %i.dh
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, f0x3DA98A54
  %i.dl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dk, float f0x3F5510A2) ; 3 uses
  %.reass65 = fmul reassoc nsz arcp contract afn float %i.dl, %invariant.op64
  %.reass67 = fmul reassoc nsz arcp contract afn float %i.dl, %invariant.op66
  %i.dm = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %i.w, %i.dn
  %6 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.do) ; 2 uses
  %7 = extractelement <2 x float> %6, i64 0
  %8 = fadd reassoc nsz arcp contract afn float %7, f0xBFB2C28D
  %9 = fdiv reassoc nsz arcp contract afn float %.reass65, %8 ; 3 uses
  %10 = extractelement <2 x float> %6, i64 1
  %11 = fadd reassoc nsz arcp contract afn float %10, f0xBFB9C753
  %12 = fdiv reassoc nsz arcp contract afn float %.reass67, %11 ; 3 uses
  %13 = fmul reassoc nsz arcp contract afn float %9, f0xBE1A9505
  %14 = fmul reassoc nsz arcp contract afn float %12, f0xBE1EE8D5
  %15 = fadd reassoc nsz arcp contract afn float %13, f0xBC0A2B16
  %16 = fadd reassoc nsz arcp contract afn float %15, %14
  %17 = fmul reassoc nsz arcp contract afn float %9, f0x3F70B489
  %18 = fadd reassoc nsz arcp contract afn float %12, f0xBCD1FB74
  %i.dp = fadd reassoc nsz arcp contract afn float %18, %17 ; 5 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ult float %i.dp, 0.000000e+00
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dp, f0x00800000
  %i.ds = select reassoc nsz arcp contract afn i1 %i.dr, float f0x00800000, float %i.dp
  %i.dt = fcmp reassoc nsz arcp contract afn ogt float %i.dp, f0x80800000
  %i.du = select reassoc nsz arcp contract afn i1 %i.dt, float f0x80800000, float %i.dp
  %i.dv = select reassoc nsz arcp contract afn i1 %i.dq, float %i.du, float %i.ds ; 2 uses
  %i.dw = fdiv reassoc nsz arcp contract afn float %16, %i.dv ; 4 uses
  %i.dx = fcmp reassoc nsz arcp contract afn oeq float %i.dw, 0.000000e+00
  br i1 %i.dx, label %dt_UCS_JCH_to_XYZ.exit.i, label %bb.l

bb.l:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i.i
  %i.dy = fmul reassoc nsz arcp contract afn float %12, f0x3E10B0E5
  %i.dz = fmul reassoc nsz arcp contract afn float %9, f0x3E2B2F00
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, f0xBC0352A9
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.dy
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.eb, %i.dv ; 2 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, f0x3EA88D83
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.ed, %i.dw
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ec, %i.dw
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, f0x3EA88D83
  %i.eh = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.eg
  %i.ei = fdiv reassoc nsz arcp contract afn float %i.eh, %i.dw
  br label %dt_UCS_JCH_to_XYZ.exit.i

dt_UCS_JCH_to_XYZ.exit.i:                         ; preds = %bb.l, %dt_UCS_JCH_to_xyY.exit.i.i
  %.sink8.i.i = phi float [ %i.ee, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %.sink.i.i = phi float [ f0x3EA88D83, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %i.ej = phi reassoc nsz arcp contract afn float [ %i.ei, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %.sink8.i.i, f0x404F639A
  %i.el = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3FC4C0F4
  %i.em = fsub reassoc nsz arcp contract afn float %i.ek, %i.el
  %i.en = fmul reassoc nsz arcp contract afn float %i.ej, f0xBEFF3F82
  %i.eo = fadd reassoc nsz arcp contract afn float %i.em, %i.en ; 3 uses
  %i.ep = fmul reassoc nsz arcp contract afn float %.sink8.i.i, f0x3F7821D1
  %i.eq = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3FF0211F
  %i.er = fsub reassoc nsz arcp contract afn float %i.eq, %i.ep
  %i.es = fmul reassoc nsz arcp contract afn float %i.ej, 4.155600e-02
  %i.et = fadd reassoc nsz arcp contract afn float %i.er, %i.es ; 3 uses
  %i.eu = fmul reassoc nsz arcp contract afn float %.sink8.i.i, 5.564340e-02
  %i.ev = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3E50EC2A
  %i.ew = fsub reassoc nsz arcp contract afn float %i.eu, %i.ev
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ej, f0x3F875328
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ew, %i.ex ; 3 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ugt float %i.eo, 3.130800e-03
  br i1 %i.ez, label %bb.n, label %bb.m

bb.m:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i
  %i.fa = fmul reassoc nnan nsz arcp contract afn float %i.eo, 1.292000e+01
  br label %bb.o

bb.n:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i
  %i.fb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eo, float f0x3ED55555)
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, 1.055000e+00
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fc, -5.500000e-02
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fe = phi reassoc nsz arcp contract afn float [ %i.fa, %bb.m ], [ %i.fd, %bb.n ] ; 3 uses
  %i.ff = fcmp reassoc nsz arcp contract afn ugt float %i.et, 3.130800e-03
  br i1 %i.ff, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fg = fmul reassoc nnan nsz arcp contract afn float %i.et, 1.292000e+01
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.et, float f0x3ED55555)
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, 1.055000e+00
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, -5.500000e-02
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fk = phi reassoc nsz arcp contract afn float [ %i.fg, %bb.p ], [ %i.fj, %bb.q ] ; 3 uses
  %i.fl = fcmp reassoc nsz arcp contract afn ugt float %i.ey, 3.130800e-03
  br i1 %i.fl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = fmul reassoc nnan nsz arcp contract afn float %i.ey, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit

bb.t:                                             ; preds = %bb.r
  %i.fn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ey, float f0x3ED55555)
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, 1.055000e+00
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit

dt_UCS_JCH_to_sRGB.exit:                          ; preds = %bb.t, %bb.s
  %i.fq = phi reassoc nsz arcp contract afn float [ %i.fm, %bb.s ], [ %i.fp, %bb.t ] ; 3 uses
  %i.fr = fcmp reassoc nsz arcp contract afn ogt float %i.fe, 1.000000e+00
  %i.fs = fcmp reassoc nsz arcp contract afn olt float %i.fe, 0.000000e+00
  %i.ft = select reassoc nsz arcp contract afn i1 %i.fs, float 0.000000e+00, float %i.fe
  %i.fu = select reassoc nsz arcp contract afn i1 %i.fr, float 1.000000e+00, float %i.ft
  %i.fv = fcmp reassoc nsz arcp contract afn ogt float %i.fk, 1.000000e+00
  %i.fw = fcmp reassoc nsz arcp contract afn olt float %i.fk, 0.000000e+00
  %i.fx = select reassoc nsz arcp contract afn i1 %i.fw, float 0.000000e+00, float %i.fk
  %i.fy = select reassoc nsz arcp contract afn i1 %i.fv, float 1.000000e+00, float %i.fx
  %i.fz = fcmp reassoc nsz arcp contract afn ogt float %i.fq, 1.000000e+00
  %i.ga = fcmp reassoc nsz arcp contract afn olt float %i.fq, 0.000000e+00
  %i.gb = select reassoc nsz arcp contract afn i1 %i.ga, float 0.000000e+00, float %i.fq
  %i.gc = select reassoc nsz arcp contract afn i1 %i.fz, float 1.000000e+00, float %i.gb
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.m, float noundef %i.df, float noundef %i.fu, float noundef %i.fy, float noundef %i.gc) #25
  %i.gd = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gd, 20
  br i1 %exitcond.not.i, label %_paint_sat_slider.exit, label %dt_UCS_JCH_to_xyY.exit.i.i

_paint_sat_slider.exit:                           ; preds = %dt_UCS_JCH_to_sRGB.exit
  tail call void @gtk_widget_queue_draw(ptr noundef %i.m) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 9 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !35
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, 7.200000e+02 ; 2 uses
  %i.m = fptosi float %i.l to i32                 ; 2 uses
  %i.n = srem i32 %i.m, 720                       ; 2 uses
  %i.o = trunc nsw i32 %i.n to i16
  %.lhs.trunc.i = add nsw i16 %i.o, 1
  %i.p = srem i16 %.lhs.trunc.i, 720
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !31 ; 5 uses
  %i.t = sext i16 %i.p to i64
  %i.u = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !31 ; 4 uses
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.s
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.w, 5.000000e-01
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fadd reassoc nsz arcp contract afn float %i.v, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.z = fsub reassoc nsz arcp contract afn float %i.s, %i.v
  %i.aa = fcmp reassoc nsz arcp contract afn ogt float %i.z, 5.000000e-01
  %i.ab = fadd reassoc nsz arcp contract afn float %i.s, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.aa, float %i.ab, float %i.s
  br label %_ucs_to_ryb_fast.exit

_ucs_to_ryb_fast.exit:                            ; preds = %bb.b, %bb.c
  %.014.i.i = phi nsz float [ %i.y, %bb.b ], [ %i.v, %bb.c ]
  %.013.i.i = phi nsz float [ %i.s, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.l, %i.ac
  %i.ae = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.ad
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %.013.i.i ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ag, 0.000000e+00
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ag, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ah, float %i.ai, float %i.ag
  %i.aj = fmul reassoc nsz arcp contract afn float %spec.select16.i.i, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.aj) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !124
  %i.ap = load float, ptr %i.al, align 4, !tbaa !31
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, 7.200000e+02 ; 2 uses
  %i.ar = fptosi float %i.aq to i32               ; 2 uses
  %i.as = srem i32 %i.ar, 720                     ; 2 uses
  %i.at = trunc nsw i32 %i.as to i16
  %.lhs.trunc.i16 = add nsw i16 %i.at, 1
  %i.au = srem i16 %.lhs.trunc.i16, 720
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !31 ; 5 uses
  %i.ay = sext i16 %i.au to i64
  %i.az = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31 ; 4 uses
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ba, %i.ax
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.bb, 5.000000e-01
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.bd = fadd reassoc nsz arcp contract afn float %i.ba, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit21

bb.e:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.be = fsub reassoc nsz arcp contract afn float %i.ax, %i.ba
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.be, 5.000000e-01
  %i.bg = fadd reassoc nsz arcp contract afn float %i.ax, -1.000000e+00
  %spec.select.i.i17 = select nsz i1 %i.bf, float %i.bg, float %i.ax
  br label %_ucs_to_ryb_fast.exit21

_ucs_to_ryb_fast.exit21:                          ; preds = %bb.d, %bb.e
  %.014.i.i18 = phi nsz float [ %i.bd, %bb.d ], [ %i.ba, %bb.e ]
  %.013.i.i19 = phi nsz float [ %i.ax, %bb.d ], [ %spec.select.i.i17, %bb.e ] ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.ar to float
  %i.bi = fsub reassoc nsz arcp contract afn float %i.aq, %i.bh
  %i.bj = fsub reassoc nsz arcp contract afn float %.014.i.i18, %.013.i.i19
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.bi
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %.013.i.i19 ; 3 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bl, 0.000000e+00
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bl, 1.000000e+00
  %spec.select16.i.i20 = select nsz i1 %i.bm, float %i.bn, float %i.bl
  %i.bo = fmul reassoc nsz arcp contract afn float %spec.select16.i.i20, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ao, float noundef %i.bo) #25
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !124
end_hunk_3
begin_hunk_4_@get_f:bb.a
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.32) #25
  %.not21 = icmp eq i32 %i.k, 0
  %. = select i1 %.not21, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ %., %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_lock(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_threads_add_idle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_auto_detect_button_enable_idle(ptr noundef %0) #1 {
bb.a:
  tail call void @gtk_widget_set_sensitive(ptr noundef %0, i32 noundef 1) #25
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #25
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %0, ptr noundef %i.a) #25
  tail call void @g_object_unref(ptr noundef %0) #25
  ret i32 0
}

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_hue_to_srgb(float noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #22 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 5 uses
  %i.e = fmul reassoc nsz arcp contract afn float %0, f0x40C90FDB
  %i.f = fadd reassoc nsz arcp contract afn float %i.e, f0xC0490FDB ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 6.500000e-01, ptr %i.c, align 16, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029.i = phi i32 [ 0, %bb.a ], [ %i.x, %bb.b ]
  %.02428.i = phi float [ 2.000000e+00, %bb.a ], [ %.024..i, %bb.b ] ; 2 uses
  %.02527.i = phi float [ 0.000000e+00, %bb.a ], [ %..025.i, %bb.b ] ; 2 uses
  %i.j = fadd reassoc nsz arcp contract afn float %.02527.i, %.02428.i
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, 5.000000e-01 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 6.500000e-01, ptr %i.a, align 16, !tbaa !31
  store float %i.k, ptr %i.g, align 4, !tbaa !31
  store float %i.f, ptr %i.h, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.a, float noundef f0x3F7CF0E2, ptr noundef %i.b)
  %i.l = load <3 x float>, ptr %i.b, align 16
  %.fr = freeze <3 x float> %i.l                  ; 3 uses
  %i.m = shufflevector <3 x float> %.fr, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.n = extractelement <3 x float> %.fr, i64 1
  %i.o = fcmp reassoc nsz arcp contract afn oge float %i.n, 0.000000e+00
  %i.p = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.m, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.q = fcmp reassoc nsz arcp contract afn oge <4 x float> %i.m, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.r = shufflevector <4 x i1> %i.p, <4 x i1> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.s = extractelement <3 x float> %.fr, i64 2
  %i.t = fcmp reassoc nsz arcp contract afn oge float %i.s, 0.000000e+00
  %i.u = freeze <4 x i1> %i.r
  %i.v = bitcast <4 x i1> %i.u to i4
  %i.w = icmp eq i4 %i.v, -1
  %op.rdx = and i1 %i.w, %i.o
  %op.rdx7 = and i1 %op.rdx, %i.t                 ; 2 uses
  %..025.i = select nsz i1 %op.rdx7, float %i.k, float %.02527.i ; 2 uses
  %.024..i = select nsz i1 %op.rdx7, float %.02428.i, float %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.x = add nuw nsw i32 %.029.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.x, 16
  br i1 %exitcond.not.i, label %_find_max_chroma.exit, label %bb.b

_find_max_chroma.exit:                            ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = fmul reassoc nsz arcp contract afn float %..025.i, 8.500000e-01
  store float %i.z, ptr %i.y, align 4, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.f, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.c, float noundef f0x3F7CF0E2, ptr noundef %i.d)
  %i.ac = load float, ptr %i.d, align 16, !tbaa !31 ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt float %i.ac, 1.000000e+00
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.ac, 0.000000e+00
  %i.af = select reassoc nsz arcp contract afn i1 %i.ae, float 0.000000e+00, float %i.ac
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ad, float 1.000000e+00, float %i.af
  store float %i.ag, ptr %1, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !31 ; 3 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ai, splat (float 1.000000e+00)
  %i.ak = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ai, zeroinitializer
  %i.al = select <2 x i1> %i.ak, <2 x float> zeroinitializer, <2 x float> %i.ai
  %i.am = select <2 x i1> %i.aj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.al ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  store float %i.an, ptr %2, align 4, !tbaa !31
  %i.ao = extractelement <2 x float> %i.am, i64 1
  store float %i.ao, ptr %3, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_UCS_JCH_to_sRGB(ptr nofree noundef nonnull readonly captures(none) %0, float noundef nofpclass(nan inf zero sub nnorm) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #23 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !31
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, %1 ; 3 uses
  %i.c = fcmp reassoc nsz arcp contract afn ult float %i.b, 0.000000e+00
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.b, 2.098850e+00
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.b, float 2.098850e+00
  %i.d = select reassoc nsz arcp contract afn i1 %i.c, float 0.000000e+00, float %spec.select.i.i ; 4 uses
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %dt_UCS_JCH_to_xyY.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !31
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %1
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.d, float f0x3F2703AC)
  %i.j = fmul reassoc nnan nsz arcp contract afn float %i.i, f0x417EED8B
  %i.k = fdiv reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.k, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit.i

dt_UCS_JCH_to_xyY.exit.i:                         ; preds = %bb.b, %bb.a
  %i.m = phi reassoc nsz arcp contract afn float [ %i.l, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.o) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.p = fmul reassoc nsz arcp contract afn float %cos.i.i, %i.m ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %sin.i.i, %i.m ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.p, f0xC0A13362
  %i.s = fmul reassoc nsz arcp contract afn float %i.q, f0x40204F91
  %i.t = fsub reassoc nsz arcp contract afn float %i.r, %i.s ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.p, f0x40985229
  %i.v = fmul reassoc nsz arcp contract afn float %i.q, f0x4037EFD4
  %i.w = fadd reassoc nsz arcp contract afn float %i.u, %i.v ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.t, f0xBFBEFF8B
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.t)
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, f0xBFB2C28D
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.x, %i.z ; 3 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.w, f0xBFC32F7A
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0xBFB9C753
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.ab, %i.ad ; 3 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.aa, f0xBE1A9505
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ae, f0xBE1EE8D5
  %i.ah = fadd reassoc nsz arcp contract afn float %i.af, f0xBC0A2B16
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ag
  %i.aj = fmul reassoc nsz arcp contract afn float %i.aa, f0x3F70B489
  %i.ak = fadd reassoc nsz arcp contract afn float %i.ae, f0xBCD1FB74
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.aj ; 5 uses
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.al, f0x00800000
  %i.ao = select reassoc nsz arcp contract afn i1 %i.an, float f0x00800000, float %i.al
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.al, f0x80800000
  %i.aq = select reassoc nsz arcp contract afn i1 %i.ap, float f0x80800000, float %i.al
  %i.ar = select reassoc nsz arcp contract afn i1 %i.am, float %i.aq, float %i.ao ; 2 uses
  %i.as = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ar ; 4 uses
  %i.at = fcmp reassoc nsz arcp contract afn oeq float %i.as, 0.000000e+00
  br i1 %i.at, label %dt_UCS_JCH_to_XYZ.exit, label %bb.c

bb.c:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i
  %i.au = fmul reassoc nsz arcp contract afn float %i.d, f0x3F8FE801
  %i.av = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.d
  %i.aw = fdiv reassoc nsz arcp contract afn float %i.au, %i.av
  %i.ax = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.aw, float f0x3FCAA4B8) ; 3 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ae, f0x3E10B0E5
  %i.az = fmul reassoc nsz arcp contract afn float %i.aa, f0x3E2B2F00
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, f0xBC0352A9
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.ay
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.bb, %i.ar ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.ax
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bd, %i.as
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bc, %i.as
  %i.bg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.ax
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.bh, %i.as
  br label %dt_UCS_JCH_to_XYZ.exit

dt_UCS_JCH_to_XYZ.exit:                           ; preds = %dt_UCS_JCH_to_xyY.exit.i, %bb.c
  %.sink8.i = phi float [ %i.be, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %.sink.i = phi float [ %i.ax, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %i.bj = phi reassoc nsz arcp contract afn float [ %i.bi, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %.sink8.i, f0x404F639A
  %i.bl = fmul reassoc nsz arcp contract afn float %.sink.i, f0xBFC4C0F4
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bk
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bj, f0xBEFF3F82
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn ; 3 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %.sink8.i, f0xBF7821D1
  %i.bq = fmul reassoc nsz arcp contract afn float %.sink.i, f0x3FF0211F
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bj, 4.155600e-02
  %i.bt = fadd reassoc nsz arcp contract afn float %i.br, %i.bs ; 3 uses
  %i.bu = fmul reassoc nsz arcp contract afn float %.sink8.i, 5.564340e-02
  %i.bv = fmul reassoc nsz arcp contract afn float %.sink.i, f0xBE50EC2A
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.bu
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bj, f0x3F875328
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, %i.bx ; 3 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %.sink.i, %.sink8.i
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bj
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 0.000000e+00 ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ugt float %i.bo, 3.130800e-03
  br i1 %i.cc, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.bo, 1.292000e+01
  br label %bb.f

bb.e:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float f0x3ED55555)
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, 1.055000e+00
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, -5.500000e-02
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ch = phi reassoc nsz arcp contract afn float [ %i.cd, %bb.d ], [ %i.cg, %bb.e ]
  store float %i.ch, ptr %2, align 4, !tbaa !31
  %i.ci = fcmp reassoc nsz arcp contract afn ugt float %i.bt, 3.130800e-03
  br i1 %i.ci, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.bt, 1.292000e+01
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ck = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bt, float f0x3ED55555)
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, 1.055000e+00
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, -5.500000e-02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cn = phi reassoc nsz arcp contract afn float [ %i.cj, %bb.g ], [ %i.cm, %bb.h ]
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !31
  %i.cp = fcmp reassoc nsz arcp contract afn ugt float %i.by, 3.130800e-03
  br i1 %i.cp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = fmul reassoc nnan nsz arcp contract afn float %i.by, 1.292000e+01
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.by, float f0x3ED55555)
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, 1.055000e+00
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, -5.500000e-02
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi reassoc nsz arcp contract afn float [ %i.cq, %bb.j ], [ %i.ct, %bb.k ]
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.cu, ptr %i.cv, align 4, !tbaa !31
  %i.cw = fcmp reassoc nsz arcp contract afn ugt float %i.cb, 3.130800e-03
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float f0x3ED55555)
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, 1.055000e+00
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, -5.500000e-02
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.da = phi reassoc nsz arcp contract afn float [ %i.cz, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.da, ptr %i.db, align 4, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

declare void @dt_lib_histogram_get_harmony(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_get_sector_angles(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_drawing_area_new() local_unnamed_addr #3

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_swatch_draw_callback(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %i.h = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.68) #25
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !34   ; 2 uses
  %i.k = icmp eq i32 %i.j, 9
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %sext20 = shl i64 %i.i, 32
  %i.m = ashr exact i64 %sext20, 30
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !35
  call fastcc void @get_harmony_nodes(i32 noundef %i.j, float noundef %i.r, ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.b, align 4, !tbaa !30
  %.not = icmp sgt i32 %i.s, %i.p
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.i, 32
  %i.t = ashr exact i64 %sext, 30
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.500000e-01, double noundef 2.500000e-01, double noundef 2.500000e-01) #25
  tail call void @cairo_paint(ptr noundef %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread
  %.11723 = phi float [ %i.o, %.thread ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
end_hunk_4
