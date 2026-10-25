Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer12applyControlEfP11Environment:bb.a
  br i1 %i.bg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.el = fneg nsz float %i.bu
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.en = load float, ptr %i.em, align 8, !tbaa !284
  %i.eo = fneg nsz float %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !285
  %i.er = fmul nsz float %i.eq, %i.eo
  br label %bb.at

bb.at:                                            ; preds = %bb.z, %bb.aa, %bb.ae, %bb.af, %bb.an, %bb.ar, %bb.as, %bb.ap, %bb.ao, %bb.ai, %bb.aj, %bb.q, %bb.y, %bb.ab, %bb.t, %bb.u
  %i.es = phi i8 [ 1, %bb.t ], [ 1, %bb.u ], [ %i.bz, %bb.ae ], [ 1, %bb.ab ], [ 1, %bb.y ], [ 0, %bb.q ], [ %i.bz, %bb.af ], [ %i.bz, %bb.aj ], [ %i.bz, %bb.ai ], [ %i.bz, %bb.ap ], [ %i.bz, %bb.ar ], [ %i.bz, %bb.as ], [ %i.bz, %bb.ao ], [ %i.bz, %bb.an ], [ 1, %bb.aa ], [ 1, %bb.z ]
  %.sroa.6.1 = phi nsz float [ %i.cl, %bb.t ], [ %i.cm, %bb.u ], [ 0.000000e+00, %bb.ae ], [ %i.di, %bb.ab ], [ %i.cw, %bb.y ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.af ], [ %i.dv, %bb.aj ], [ %i.du, %bb.ai ], [ 0.000000e+00, %bb.ap ], [ %i.el, %bb.ar ], [ %i.er, %bb.as ], [ 0.000000e+00, %bb.ao ], [ %.sroa.6.0, %bb.an ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.z ] ; 7 uses
  %.3 = phi i1 [ true, %bb.t ], [ false, %bb.u ], [ %.2154, %bb.ae ], [ false, %bb.ab ], [ false, %bb.y ], [ %spec.select, %bb.q ], [ %.2154, %bb.af ], [ %.2154, %bb.aj ], [ %.2154, %bb.ai ], [ %.2154, %bb.ap ], [ %.2154, %bb.ar ], [ %.2154, %bb.as ], [ %.2154, %bb.ao ], [ %.2154, %bb.an ], [ %i.ar, %bb.aa ], [ %i.ar, %bb.z ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.eu = load float, ptr %i.et, align 4, !tbaa !286
  %sincos = call nsz { float, float } @llvm.sincos.f32(float %i.eu) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 9 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 9 uses
  store float %sin, ptr %3, align 8, !tbaa !35
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !35
  store float %cos, ptr %i.p, align 8, !tbaa !35
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !74, !range !78, !noundef !79
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 756 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !207
  %i.fa = fsub nsz float %i.ez, %1                ; 2 uses
  store float %i.fa, ptr %i.ey, align 4, !tbaa !207
  %i.fb = fcmp nsz ugt float %i.fa, 0.000000e+00
  br i1 %i.fb, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.ev, align 8, !tbaa !74
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.at
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !198, !range !78, !noundef !79
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ax, label %bb.bo

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.an, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !166, !range !78, !noundef !79
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.bo, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fi = or i8 %i.bw, %i.bi
  %or.cond9.not = icmp eq i8 %i.fi, 0
  br i1 %or.cond9.not, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ar, label %bb.bo, label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  br label %bb.bo

bb.bc:                                            ; preds = %bb.az
  %i.fj = trunc nuw i8 %i.es to i1
  %or.cond246 = and i1 %i.ar, %i.fj
  br i1 %or.cond246, label %bb.bo, label %bb.bb

bb.bd:                                            ; preds = %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !71, !range !78, !noundef !79
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.fn, align 8, !tbaa !35 ; 2 uses
  %.sroa.069.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.fo = fcmp nsz ult float %.sroa.069.4.vec.extract, -5.000000e+00
  br i1 %i.fo, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !196
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !197
  %i.ft = fmul nsz float %i.fq, %i.fs
  %.sroa.069.4.vec.insert = insertelement <2 x float> %.sroa.01.0.copyload.i, float %i.ft, i64 1
  store <2 x float> %.sroa.069.4.vec.insert, ptr %i.fn, align 8, !tbaa !35
  %i.fu = load ptr, ptr %i.q, align 8, !tbaa !76
  %i.fv = call noundef ptr @_ZN6Client15getEventManagerEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.fu) ; 2 uses
  %i.fw = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), ptr %i.fw, align 8, !tbaa !33
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i8 6, ptr %i.fx, align 8, !tbaa !192
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !33
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull %i.fw)
  br label %bb.bo

bb.bg:                                            ; preds = %bb.bd
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !139, !range !78, !noundef !79
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 705
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !72, !range !78, !noundef !79
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !166, !range !78, !noundef !79
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.sroa.6.2 = select nsz i1 %i.bg, float %i.bu, float %i.bp
  store i8 1, ptr %i.a, align 1, !tbaa !277
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !145, !range !78, !noundef !79
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 705
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !72, !range !78, !noundef !79
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !166, !range !78, !noundef !79
  %i.gs = trunc nuw i8 %i.gr to i1                ; 2 uses
  %brmerge = select i1 %i.gs, i1 true, i1 %i.bg
  %.sroa.6.1.mux = select i1 %i.gs, float %.sroa.6.1, float %i.bu
  br i1 %brmerge, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !284
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gw = load float, ptr %i.gv, align 8, !tbaa !285
  %i.gx = fmul nsz float %i.gu, %i.gw
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bc, %bb.bm, %bb.ba, %bb.be, %bb.bf, %bb.bb, %bb.ay, %bb.bj, %bb.bn, %bb.bl, %bb.bk, %bb.aw
  %.sroa.6.3 = phi nsz float [ %.sroa.6.1, %bb.ay ], [ %i.bu, %bb.ba ], [ %.sroa.6.2, %bb.bj ], [ %.sroa.6.1, %bb.aw ], [ %i.bp, %bb.bb ], [ %.sroa.6.1, %bb.be ], [ %.sroa.6.1, %bb.bf ], [ %.sroa.6.1, %bb.bl ], [ %.sroa.6.1.mux, %bb.bm ], [ %i.bu, %bb.bc ], [ %i.gx, %bb.bn ], [ %.sroa.6.1, %bb.bk ] ; 2 uses
  br i1 %.3, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.gz = load i8, ptr %i.gy, align 2, !tbaa !145, !range !78, !noundef !79
  %i.ha = trunc nuw i8 %i.gz to i1
  %or.cond11 = select i1 %i.ha, i1 %i.bg, i1 false
  br i1 %or.cond11, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !139, !range !78, !noundef !79
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !143, !range !78, !noundef !79
  %i.hg = trunc nuw i8 %i.hf to i1                ; 2 uses
  %or.cond13 = select i1 %i.hg, i1 %i.bg, i1 false
  br i1 %or.cond13, label %bb.bt, label %.thread

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.bg, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.br, %bb.bp, %bb.bs, %bb.bo
  %i.hh = fmul nsz float %sin, %sin
  %i.hi = call nsz float @llvm.fmuladd.f32(float %cos, float %cos, float %i.hh) ; 2 uses
  %i.hj = fcmp nsz oeq float %i.hi, 0.000000e+00
  br i1 %i.hj, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hk = fpext nsz float %i.hi to double
  %i.hl = call nsz double @llvm.sqrt.f64(double %i.hk)
  %i.hm = fdiv nsz double 1.000000e+00, %i.hl     ; 3 uses
  %i.hn = fpext nsz float %sin to double
  %i.ho = fmul nsz double %i.hm, %i.hn
  %i.hp = fptrunc nsz double %i.ho to float
  %i.hq = fmul nsz double %i.hm, 0.000000e+00
  %i.hr = fptrunc nsz double %i.hq to float
  %i.hs = fpext nsz float %cos to double
  %i.ht = fmul nsz double %i.hm, %i.hs
  %i.hu = fptrunc nsz double %i.ht to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.bt, %bb.bu
  %i.hv = phi float [ %cos, %bb.bt ], [ %i.hu, %bb.bu ]
  %i.hw = phi float [ 0.000000e+00, %bb.bt ], [ %i.hr, %bb.bu ]
  %i.hx = phi float [ %sin, %bb.bt ], [ %i.hp, %bb.bu ]
  %i.hy = fmul nsz float %i.bu, %i.hx
  %i.hz = fmul nsz float %i.bu, %i.hw
  %i.ia = fmul nsz float %i.bu, %i.hv
  br label %bb.by

.thread:                                          ; preds = %bb.br
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !166, !range !78, !noundef !79
  %i.id = trunc nuw i8 %i.ic to i1
  %.not225 = xor i1 %i.id, true
  %or.cond16226 = select i1 %.not225, i1 true, i1 %i.an
  %brmerge247 = or i1 %or.cond16226, %i.hg
  br i1 %brmerge247, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.thread
  %i.ie = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4core8vector3dIfE9normalizeEv(ptr noundef nonnull align 4 dereferenceable(12) %3) ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ig = load float, ptr %i.if, align 8, !tbaa !287 ; 3 uses
  %i.ih = load float, ptr %i.ie, align 4, !tbaa !80
  %i.ii = fmul nsz float %i.ig, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !81
  %i.il = fmul nsz float %i.ig, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.in = load float, ptr %i.im, align 4, !tbaa !82
  %i.io = fmul nsz float %i.ig, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !288 ; 3 uses
  %i.ir = fmul nsz float %i.ii, %i.iq
  %i.is = fmul nsz float %i.il, %i.iq
  %i.it = fmul nsz float %i.iq, %i.io
  br label %bb.by

bb.bw:                                            ; preds = %.thread, %bb.bs
  %i.iu = fmul nsz float %sin, %sin
  %i.iv = call nsz float @llvm.fmuladd.f32(float %cos, float %cos, float %i.iu) ; 2 uses
  %i.iw = fcmp nsz oeq float %i.iv, 0.000000e+00
  br i1 %i.iw, label %_ZN4core8vector3dIfE9normalizeEv.exit192, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ix = fpext nsz float %i.iv to double
  %i.iy = call nsz double @llvm.sqrt.f64(double %i.ix)
  %i.iz = fdiv nsz double 1.000000e+00, %i.iy     ; 3 uses
  %i.ja = fpext nsz float %sin to double
  %i.jb = fmul nsz double %i.iz, %i.ja
  %i.jc = fptrunc nsz double %i.jb to float
  %i.jd = fmul nsz double %i.iz, 0.000000e+00
  %i.je = fptrunc nsz double %i.jd to float
  %i.jf = fpext nsz float %cos to double
  %i.jg = fmul nsz double %i.iz, %i.jf
  %i.jh = fptrunc nsz double %i.jg to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit192

_ZN4core8vector3dIfE9normalizeEv.exit192:         ; preds = %bb.bw, %bb.bx
  %i.ji = phi float [ %cos, %bb.bw ], [ %i.jh, %bb.bx ]
  %i.jj = phi float [ 0.000000e+00, %bb.bw ], [ %i.je, %bb.bx ]
  %i.jk = phi float [ %sin, %bb.bw ], [ %i.jc, %bb.bx ]
  %i.jl = fmul nsz float %i.bp, %i.jk
  %i.jm = fmul nsz float %i.bp, %i.jj
  %i.jn = fmul nsz float %i.bp, %i.ji
  br label %bb.by

bb.by:                                            ; preds = %bb.bv, %_ZN4core8vector3dIfE9normalizeEv.exit192, %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.jo = phi float [ %i.it, %bb.bv ], [ %i.jn, %_ZN4core8vector3dIfE9normalizeEv.exit192 ], [ %i.ia, %_ZN4core8vector3dIfE9normalizeEv.exit ]
  %i.jp = phi float [ %i.is, %bb.bv ], [ %i.jm, %_ZN4core8vector3dIfE9normalizeEv.exit192 ], [ %i.hz, %_ZN4core8vector3dIfE9normalizeEv.exit ]
  %i.jq = phi float [ %i.ir, %bb.bv ], [ %i.jl, %_ZN4core8vector3dIfE9normalizeEv.exit192 ], [ %i.hy, %_ZN4core8vector3dIfE9normalizeEv.exit ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.js = load float, ptr %i.jr, align 8, !tbaa !289 ; 3 uses
  %i.jt = fmul nsz float %i.js, %i.jq
  store float %i.jt, ptr %3, align 8, !tbaa !80
  %i.ju = fmul nsz float %i.js, %i.jp
  store float %i.ju, ptr %i.o, align 4, !tbaa !81
  %i.jv = fmul nsz float %i.js, %i.jo
  store float %i.jv, ptr %i.p, align 8, !tbaa !82
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 418
  %i.jx = load i8, ptr %i.jw, align 2, !tbaa !138, !range !78, !noundef !79
  %i.jy = trunc nuw i8 %i.jx to i1
  %or.cond19 = select i1 %i.jy, i1 true, i1 %i.an
  br i1 %or.cond19, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.ka = load i8, ptr %i.jz, align 2, !tbaa !145, !range !78, !noundef !79
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !139, !range !78, !noundef !79
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  br i1 %i.an, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !71, !range !78, !noundef !79
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.cd, label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  %i.ki = load i8, ptr %i.fc, align 1, !tbaa !198, !range !78, !noundef !79
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  br i1 %.3, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.ar, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.kl = load i8, ptr %i.kk, align 2, !tbaa !279, !range !78, !noundef !79
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ce, %bb.cg, %bb.ch
  %.sink251 = phi i64 [ 92, %bb.ch ], [ 96, %bb.cg ], [ 96, %bb.ce ]
  %.sink250 = phi i64 [ 304, %bb.ch ], [ 312, %bb.cg ], [ 312, %bb.ce ]
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink251
  %.sink = load float, ptr %i.kn, align 4, !tbaa !35
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 %.sink250
  %i.kp = load float, ptr %i.ko, align 8, !tbaa !35
  %i.kq = fmul nsz float %.sink, %i.kp
  %.pn160 = fmul nsz float %i.kq, 1.000000e+01
  %.0150 = fmul nsz float %1, %.pn160
  br label %bb.cq

bb.cj:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  br i1 %.3, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 422
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !145, !range !78, !noundef !79
  %i.kt = trunc nuw i8 %i.ks to i1
  %or.cond22 = select i1 %i.kt, i1 %i.bg, i1 false
  br i1 %or.cond22, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !139, !range !78, !noundef !79
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ky = load i8, ptr %i.kx, align 4, !tbaa !143, !range !78, !noundef !79
  %i.kz = trunc nuw i8 %i.ky to i1
  %or.cond25 = select i1 %i.kz, i1 %i.bg, i1 false
  br i1 %or.cond25, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.bg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cm, %bb.ck, %bb.cn, %bb.cj
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.lb = load float, ptr %i.la, align 8, !tbaa !290
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !291
  %i.le = fmul nsz float %i.lb, %i.ld
  %i.lf = fmul nsz float %i.le, 1.000000e+01
  %i.lg = fmul nsz float %1, %i.lf                ; 2 uses
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.li = load float, ptr %i.lh, align 8, !tbaa !292
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !293
  %i.ll = fmul nsz float %i.li, %i.lk
  %i.lm = fmul nsz float %i.ll, 1.000000e+01
  %i.ln = fmul nsz float %1, %i.lm                ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp, %bb.ci
  %.1151 = phi nsz float [ %i.lg, %bb.co ], [ %i.ln, %bb.cp ], [ %.0150, %bb.ci ]
  %.0149 = phi nsz float [ %i.lg, %bb.co ], [ %i.ln, %bb.cp ], [ 0.000000e+00, %bb.ci ]
  br i1 %i.an, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !139, !range !78, !noundef !79
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ls = load i8, ptr %i.lr, align 4, !tbaa !143, !range !78, !noundef !79
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lu = call nsz noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.0148 = phi nsz float [ 1.000000e+00, %bb.cq ], [ 1.000000e+00, %bb.cr ], [ 1.000000e+00, %bb.cs ], [ %i.lu, %bb.ct ]
  br i1 %i.ay, label %bb.cv, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cu
  %.pre = load float, ptr %3, align 8, !tbaa !80
  %.pre230 = load float, ptr %i.o, align 4, !tbaa !81
  %.pre232 = load float, ptr %i.p, align 8, !tbaa !82
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !139, !range !78, !noundef !79
  %i.lx = trunc nuw i8 %i.lw to i1
  %.pre229 = load float, ptr %3, align 8, !tbaa !80 ; 5 uses
  %.pre231 = load float, ptr %i.o, align 4, !tbaa !81 ; 4 uses
  %.pre233 = load float, ptr %i.p, align 8, !tbaa !82 ; 5 uses
  br i1 %i.lx, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.ly = fadd nsz float %.sroa.6.3, %.pre231     ; 2 uses
  %i.lz = fmul nsz float %i.ly, %i.ly
  %i.ma = call nsz float @llvm.fmuladd.f32(float %.pre229, float %.pre229, float %i.lz)
  %i.mb = call nsz float @llvm.fmuladd.f32(float %.pre233, float %.pre233, float %i.ma)
  %i.mc = call nsz noundef float @llvm.sqrt.f32(float %i.mb)
  %i.md = fcmp nsz ogt float %i.mc, f0x3C23D70A
  br i1 %i.md, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr %i.b, align 8, !tbaa !278
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge, %bb.cw, %bb.cx, %bb.cv
  %i.me = phi float [ %.pre232, %._crit_edge ], [ %.pre233, %bb.cw ], [ %.pre233, %bb.cx ], [ %.pre233, %bb.cv ]
  %i.mf = phi float [ %.pre230, %._crit_edge ], [ %.pre231, %bb.cw ], [ %.pre231, %bb.cx ], [ %.pre231, %bb.cv ]
  %i.mg = phi float [ %.pre, %._crit_edge ], [ %.pre229, %bb.cw ], [ %.pre229, %bb.cx ], [ %.pre229, %bb.cv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.mh = fadd nsz float %.sroa.6.3, %i.mf
  %i.mi = load float, ptr %i.bm, align 8, !tbaa !294 ; 5 uses
  %i.mj = fmul nsz float %i.mg, %i.mi
  %i.mk = fmul nsz float %i.mh, %i.mi
  %i.ml = fmul nsz float %i.me, %i.mi
  %.sroa.0.0.vec.insert.i205 = insertelement <2 x float> poison, float %i.mj, i64 0
  %.sroa.0.4.vec.insert.i206 = insertelement <2 x float> %.sroa.0.0.vec.insert.i205, float %i.mk, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i206, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ml, ptr %.sroa.2.0..sroa_idx, align 8
  %i.mm = fmul nsz float %.1151, %i.mi
end_hunk_0
