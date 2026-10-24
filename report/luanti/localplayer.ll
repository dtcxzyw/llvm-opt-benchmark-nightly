Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/localplayer?download=true
inline.NumInlined: 802
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11LocalPlayer12applyControlEfP11Environment:bb.a
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
  br i1 %i.kb, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !139, !range !78, !noundef !79
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.cc, label %bb.ce

bb.cb:                                            ; preds = %bb.by
  br i1 %i.an, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %bb.cb
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
  br label %bb.cr

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
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lg = load float, ptr %i.lf, align 8, !tbaa !292
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.li = load float, ptr %i.lh, align 4, !tbaa !293
  %i.lj = fmul nsz float %i.lg, %i.li
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %.pn237.in = phi float [ %i.le, %bb.co ], [ %i.lj, %bb.cp ]
  %.pn237 = fmul nsz float %.pn237.in, 1.000000e+01
  %.1151 = fmul nsz float %1, %.pn237             ; 4 uses
  br i1 %i.an, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.ci, %bb.cq
  %.0149234 = phi float [ 0.000000e+00, %bb.ci ], [ %.1151, %bb.cq ] ; 3 uses
  %.1151232 = phi float [ %.0150, %bb.ci ], [ %.1151, %bb.cq ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !139, !range !78, !noundef !79
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.lo = load i8, ptr %i.ln, align 4, !tbaa !143, !range !78, !noundef !79
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lq = call nsz noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.0149235 = phi float [ %.1151, %bb.cq ], [ %.0149234, %bb.cr ], [ %.0149234, %bb.cs ], [ %.0149234, %bb.ct ]
  %.1151233 = phi float [ %.1151, %bb.cq ], [ %.1151232, %bb.cr ], [ %.1151232, %bb.cs ], [ %.1151232, %bb.ct ]
  %.0148 = phi nsz float [ 1.000000e+00, %bb.cq ], [ 1.000000e+00, %bb.cr ], [ 1.000000e+00, %bb.cs ], [ %i.lq, %bb.ct ]
  br i1 %i.ay, label %bb.cv, label %._crit_edge

._crit_edge:                                      ; preds = %bb.cu
  %.pre = load float, ptr %3, align 8, !tbaa !80
  %.pre230 = load float, ptr %i.o, align 4, !tbaa !81
  %.pre232 = load float, ptr %i.p, align 8, !tbaa !82
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 419
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !139, !range !78, !noundef !79
  %i.lt = trunc nuw i8 %i.ls to i1
  %.pre229 = load float, ptr %3, align 8, !tbaa !80 ; 5 uses
  %.pre231 = load float, ptr %i.o, align 4, !tbaa !81 ; 4 uses
  %.pre233 = load float, ptr %i.p, align 8, !tbaa !82 ; 5 uses
  br i1 %i.lt, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.lu = fadd nsz float %.sroa.6.3, %.pre231     ; 2 uses
  %i.lv = fmul nsz float %i.lu, %i.lu
  %i.lw = call nsz float @llvm.fmuladd.f32(float %.pre229, float %.pre229, float %i.lv)
  %i.lx = call nsz float @llvm.fmuladd.f32(float %.pre233, float %.pre233, float %i.lw)
  %i.ly = call nsz noundef float @llvm.sqrt.f32(float %i.lx)
  %i.lz = fcmp nsz ogt float %i.ly, f0x3C23D70A
  br i1 %i.lz, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i8 1, ptr %i.b, align 8, !tbaa !278
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge, %bb.cw, %bb.cx, %bb.cv
  %i.ma = phi float [ %.pre232, %._crit_edge ], [ %.pre233, %bb.cw ], [ %.pre233, %bb.cx ], [ %.pre233, %bb.cv ]
  %i.mb = phi float [ %.pre230, %._crit_edge ], [ %.pre231, %bb.cw ], [ %.pre231, %bb.cx ], [ %.pre231, %bb.cv ]
  %i.mc = phi float [ %.pre, %._crit_edge ], [ %.pre229, %bb.cw ], [ %.pre229, %bb.cx ], [ %.pre229, %bb.cv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.md = fadd nsz float %.sroa.6.3, %i.mb
  %i.me = load float, ptr %i.bm, align 8, !tbaa !294 ; 5 uses
  %i.mf = fmul nsz float %i.mc, %i.me
  %i.mg = fmul nsz float %i.md, %i.me
  %i.mh = fmul nsz float %i.ma, %i.me
  %.sroa.0.0.vec.insert.i205 = insertelement <2 x float> poison, float %i.mf, i64 0
  %.sroa.0.4.vec.insert.i206 = insertelement <2 x float> %.sroa.0.0.vec.insert.i205, float %i.mg, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i206, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.mh, ptr %.sroa.2.0..sroa_idx, align 8
  %i.mi = fmul nsz float %.1151233, %i.me
  %i.mj = fmul nsz float %.0148, %i.mi
  %i.mk = fmul nsz float %.0149235, %i.me
  call void @_ZN11LocalPlayer10accelerateERKN4core8vector3dIfEEffb(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 4 dereferenceable(12) %6, float noundef %i.mj, float noundef %i.mk, i1 noundef zeroext %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.b
  ret void

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %.pn157.pn = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn157.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZN4core8vector3dIfE9normalizeEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !35 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !82 ; 3 uses
  %i.g = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.d) ; 2 uses
  %i.h = fcmp nsz oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fpext nsz float %i.g to double
  %i.j = tail call nsz double @llvm.sqrt.f64(double %i.i)
  %i.k = fdiv nsz double 1.000000e+00, %i.j       ; 2 uses
  %i.l = fpext <2 x float> %i.a to <2 x double>
  %i.m = insertelement <2 x double> poison, double %i.k, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul nsz <2 x double> %i.n, %i.l
  %i.p = fptrunc <2 x double> %i.o to <2 x float>
  store <2 x float> %i.p, ptr %0, align 4, !tbaa !35
  %i.q = fpext nsz float %i.f to double
  %i.r = fmul nsz double %i.k, %i.q
  %i.s = fptrunc nsz double %i.r to float
  store float %i.s, ptr %i.e, align 4, !tbaa !82
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN11LocalPlayer13getSlipFactorEP11EnvironmentRKN4core8vector3dIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(864) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !0 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.l = load i8, ptr %i.k, align 4, !tbaa !77, !range !78, !noundef !79
  %i.m = trunc nuw i8 %i.l to i1
  %.sroa.0.0.in.v.i = select i1 %i.m, i64 622, i64 616
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i = load i48, ptr %.sroa.0.0.in.i, align 2, !tbaa !127
  %i.n = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.j, i48 %.sroa.0.0.i, ptr noundef null)
  %i.o = and i32 %i.n, 65535
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !87   ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 2080
  %i.y = icmp ugt i64 %i.x, %i.p
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw [2080 x i8], ptr %i.t, i64 %i.p ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.ad, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1412
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !125, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %._crit_edge.i.i, label %.thread

._crit_edge.i.i:                                  ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !20
  store i64 8751168559530994803, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8, ptr %i.aj, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.ak, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.am = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc18 unwind label %bb.e   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !195
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.d, %.noexc18
  %.0.i = phi i32 [ %i.ap, %bb.d ], [ 0, %.noexc18 ] ; 4 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ai
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.as = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ai
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.az = icmp sgt i32 %.0.i, 0
  br i1 %i.az, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ba = load float, ptr %2, align 4, !tbaa !80
  %i.bb = fcmp nsz oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.g, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !81
  %i.be = fcmp nsz oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %_ZNK4core8vector3dIfEeqERKS1_.exit, label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

_ZNK4core8vector3dIfEeqERKS1_.exit:               ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !82
  %.fr = freeze float %i.bg
  %i.bh = fcmp nsz oeq float %.fr, 0.000000e+00
  %i.bi = zext i1 %i.bh to i32
  %spec.select = shl nuw nsw i32 %.0.i, %i.bi
  br label %_ZNK4core8vector3dIfEeqERKS1_.exit.thread

_ZNK4core8vector3dIfEeqERKS1_.exit.thread:        ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit, %bb.f, %bb.g
  %i.bj = phi i32 [ %.0.i, %bb.f ], [ %spec.select, %_ZNK4core8vector3dIfEeqERKS1_.exit ], [ %.0.i, %bb.g ]
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = fdiv nsz float 1.000000e+00, %i.bl      ; 2 uses
  %i.bn = fcmp nsz olt float %i.bm, 1.000000e-03
  %i.bo = select i1 %i.bn, float 1.000000e-03, float %i.bm ; 2 uses
  %i.bp = fcmp nsz olt float %i.bo, 1.000000e+00
  %i.bq = select i1 %i.bp, float %i.bo, float 1.000000e+00
  br label %.thread

.thread:                                          ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread
  %.016 = phi nsz float [ %i.bq, %_ZNK4core8vector3dIfEeqERKS1_.exit.thread ], [ 1.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 1.000000e+00, %_ZNK14NodeDefManager3getERK7MapNode.exit ]
  ret float %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11LocalPlayer10accelerateERKN4core8vector3dIfEEffb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(864) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, float noundef %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.b = load float, ptr %i.a, align 8, !tbaa !295 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.d = load float, ptr %i.c, align 4, !tbaa !296 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
end_hunk_0
