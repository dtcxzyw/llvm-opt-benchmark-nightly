Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/distance?download=true
inline.NumInlined: 184
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@b2TimeOfImpact:bb.a
  %i.ew = fsub <2 x float> %i.eo, %i.ev
  %i.ex = fmul <2 x float> %i.es, splat (float 5.000000e-01)
  %i.ey = fmul <2 x float> %i.ew, splat (float 5.000000e-01)
  %i.ez = fadd <2 x float> %i.ex, %i.ey
  store <2 x float> %i.ez, ptr %i.dv, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.010.4.vec.insert.i.le577, ptr %i.fa, align 4
  br label %.thread384

bb.f:                                             ; preds = %bb.d
  %i.fb = load i64, ptr %2, align 8               ; 5 uses
  %.sroa.266.0.extract.shift.i = lshr i64 %i.fb, 16 ; 4 uses
  %.sroa.670.0.extract.shift.i = lshr i64 %i.fb, 24 ; 2 uses
  %.sroa.872.0.extract.shift.i = lshr i64 %i.fb, 40 ; 3 uses
  %.sroa.11.0.extract.shift.i = lshr i64 %i.fb, 48
  %i.fc = and i64 %i.fb, 65535
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fe = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fe
  %.sroa.035.0.copyload.i = load <2 x float>, ptr %i.ff, align 4, !noalias !80 ; 2 uses
  %i.fg = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fg
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.fh, align 4, !noalias !80 ; 2 uses
  %i.fi = shufflevector <2 x float> %.sroa.035.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.cy, %i.fi           ; 2 uses
  %i.fk = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = shufflevector <2 x float> %.sroa.035.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = fmul <2 x float> %i.fk, %i.fl           ; 2 uses
  %i.fn = fsub <2 x float> %i.fj, %i.fm
  %i.fo = fadd <2 x float> %i.fj, %i.fm
  %i.fp = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 3>
  %i.fq = fadd <2 x float> %i.ce, %i.fp
  %i.fr = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.cq, %i.fr           ; 2 uses
  %i.ft = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.fu = shufflevector <2 x float> %.sroa.034.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = fmul <2 x float> %i.ft, %i.fu           ; 2 uses
  %i.fw = fsub <2 x float> %i.fs, %i.fv
  %i.fx = fadd <2 x float> %i.fs, %i.fv
  %i.fy = shufflevector <2 x float> %i.fw, <2 x float> %i.fx, <2 x i32> <i32 0, i32 3>
  %i.fz = fadd <2 x float> %i.cp, %i.fy
  %i.ga = fsub <2 x float> %i.fz, %i.fq           ; 3 uses
  %i.gb = fmul <2 x float> %i.ga, %i.ga
  %i.gc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gb) ; 2 uses
  %i.gd = fcmp ogt float %i.gc, f0x057A0000
  br i1 %i.gd, label %bb.h, label %b2MakeSeparationFunction.exit

bb.h:                                             ; preds = %bb.g
  %sqrt.i.i184 = tail call nnan float @llvm.sqrt.f32(float %i.gc)
  %i.ge = fdiv nnan float 1.000000e+00, %sqrt.i.i184
  %i.gf = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.ga, %i.gg
  br label %b2MakeSeparationFunction.exit

bb.i:                                             ; preds = %bb.f
  %i.gi = xor i64 %.sroa.266.0.extract.shift.i, %.sroa.670.0.extract.shift.i
  %i.gj = and i64 %i.gi, 255
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.gl = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gl
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %i.gm, align 4, !noalias !80 ; 2 uses
  %i.gn = and i64 %.sroa.11.0.extract.shift.i, 255
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gn
  %.sroa.026.0.copyload.i = load <2 x float>, ptr %i.go, align 4, !noalias !80 ; 2 uses
  %i.gp = fsub <2 x float> %.sroa.026.0.copyload.i, %.sroa.028.0.copyload.i ; 4 uses
  %i.gq = fmul <2 x float> %i.gp, %i.gp
  %i.gr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gq) ; 2 uses
  %i.gs = fcmp ogt float %i.gr, f0x057A0000
  br i1 %i.gs, label %bb.k, label %b2Normalize.exit114.i

bb.k:                                             ; preds = %bb.j
  %i.gt = extractelement <2 x float> %i.gp, i64 0
  %i.gu = fneg float %i.gt
  %sqrt.i111.i = tail call float @llvm.sqrt.f32(float %i.gr)
  %i.gv = fdiv float 1.000000e+00, %sqrt.i111.i   ; 2 uses
  %i.gw = extractelement <2 x float> %i.gp, i64 1
  %i.gx = fmul float %i.gw, %i.gv
  %.sroa.012.0.vec.insert.i112.i = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.gy = fmul float %i.gv, %i.gu
  %.sroa.012.4.vec.insert.i113.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i112.i, float %i.gy, i64 1
  br label %b2Normalize.exit114.i

b2Normalize.exit114.i:                            ; preds = %bb.k, %bb.j
  %.sroa.012.0.i110.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i113.i, %bb.k ], [ zeroinitializer, %bb.j ] ; 4 uses
  %i.gz = fadd <2 x float> %.sroa.028.0.copyload.i, %.sroa.026.0.copyload.i
  %i.ha = fmul <2 x float> %i.gz, splat (float 5.000000e-01) ; 4 uses
  %i.hb = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hb
  %.sroa.018.0.copyload.i = load <2 x float>, ptr %i.hc, align 4, !noalias !80 ; 2 uses
  %i.hd = shufflevector <2 x float> %.sroa.012.0.i110.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.cq, %i.hd           ; 2 uses
  %i.hf = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.hg = shufflevector <2 x float> %.sroa.012.0.i110.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hh = fmul <2 x float> %i.hf, %i.hg           ; 2 uses
  %i.hi = fsub <2 x float> %i.he, %i.hh
  %i.hj = fadd <2 x float> %i.he, %i.hh
  %i.hk = shufflevector <2 x float> %i.hi, <2 x float> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.hl = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x float> %i.cq, %i.hl           ; 2 uses
  %i.hn = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fmul <2 x float> %i.hf, %i.hn           ; 2 uses
  %i.hp = fsub <2 x float> %i.hm, %i.ho
  %i.hq = fadd <2 x float> %i.hm, %i.ho
  %i.hr = shufflevector <2 x float> %i.hp, <2 x float> %i.hq, <2 x i32> <i32 0, i32 3>
  %i.hs = fadd <2 x float> %i.cp, %i.hr
  %i.ht = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x float> %i.cy, %i.ht           ; 2 uses
  %i.hv = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hw = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hx = fmul <2 x float> %i.hv, %i.hw           ; 2 uses
  %i.hy = fsub <2 x float> %i.hu, %i.hx
  %i.hz = fadd <2 x float> %i.hu, %i.hx
  %i.ia = shufflevector <2 x float> %i.hy, <2 x float> %i.hz, <2 x i32> <i32 0, i32 3>
  %i.ib = fadd <2 x float> %i.ce, %i.ia
  %i.ic = fsub <2 x float> %i.ib, %i.hs
  %i.id = fmul <2 x float> %i.hk, %i.ic
  %i.ie = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.id)
  %i.if = fcmp olt float %i.ie, 0.000000e+00
  br i1 %i.if, label %bb.l, label %b2MakeSeparationFunction.exit

bb.l:                                             ; preds = %b2Normalize.exit114.i
  %i.ig = fneg <2 x float> %.sroa.012.0.i110.i
  br label %b2MakeSeparationFunction.exit

bb.m:                                             ; preds = %bb.i
  %i.ih = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ih
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.ii, align 4, !noalias !80 ; 2 uses
  %i.ij = and i64 %.sroa.670.0.extract.shift.i, 255
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ij
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.ik, align 4, !noalias !80 ; 2 uses
  %i.il = fsub <2 x float> %.sroa.010.0.copyload.i, %.sroa.012.0.copyload.i ; 4 uses
  %i.im = fmul <2 x float> %i.il, %i.il
  %i.in = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.im) ; 2 uses
  %i.io = fcmp ogt float %i.in, f0x057A0000
  br i1 %i.io, label %bb.n, label %b2Normalize.exit161.i

bb.n:                                             ; preds = %bb.m
  %i.ip = extractelement <2 x float> %i.il, i64 0
  %i.iq = fneg float %i.ip
  %sqrt.i158.i = tail call float @llvm.sqrt.f32(float %i.in)
  %i.ir = fdiv float 1.000000e+00, %sqrt.i158.i   ; 2 uses
  %i.is = extractelement <2 x float> %i.il, i64 1
  %i.it = fmul float %i.is, %i.ir
  %.sroa.012.0.vec.insert.i159.i = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iu = fmul float %i.ir, %i.iq
  %.sroa.012.4.vec.insert.i160.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i159.i, float %i.iu, i64 1
  br label %b2Normalize.exit161.i

b2Normalize.exit161.i:                            ; preds = %bb.n, %bb.m
  %.sroa.012.0.i157.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i160.i, %bb.n ], [ zeroinitializer, %bb.m ] ; 4 uses
  %i.iv = fadd <2 x float> %.sroa.012.0.copyload.i, %.sroa.010.0.copyload.i
  %i.iw = fmul <2 x float> %i.iv, splat (float 5.000000e-01) ; 4 uses
  %i.ix = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ix
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.iy, align 4, !noalias !80 ; 2 uses
  %i.iz = shufflevector <2 x float> %.sroa.012.0.i157.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %i.cy, %i.iz           ; 2 uses
  %i.jb = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jc = shufflevector <2 x float> %.sroa.012.0.i157.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = fmul <2 x float> %i.jb, %i.jc           ; 2 uses
  %i.je = fsub <2 x float> %i.ja, %i.jd
  %i.jf = fadd <2 x float> %i.ja, %i.jd
  %i.jg = shufflevector <2 x float> %i.je, <2 x float> %i.jf, <2 x i32> <i32 0, i32 3>
  %i.jh = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fmul <2 x float> %i.cy, %i.jh           ; 2 uses
  %i.jj = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = fmul <2 x float> %i.jb, %i.jj           ; 2 uses
  %i.jl = fsub <2 x float> %i.ji, %i.jk
  %i.jm = fadd <2 x float> %i.ji, %i.jk
  %i.jn = shufflevector <2 x float> %i.jl, <2 x float> %i.jm, <2 x i32> <i32 0, i32 3>
  %i.jo = fadd <2 x float> %i.ce, %i.jn
  %i.jp = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jq = fmul <2 x float> %i.cq, %i.jp           ; 2 uses
  %i.jr = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.js = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jt = fmul <2 x float> %i.jr, %i.js           ; 2 uses
  %i.ju = fsub <2 x float> %i.jq, %i.jt
  %i.jv = fadd <2 x float> %i.jq, %i.jt
  %i.jw = shufflevector <2 x float> %i.ju, <2 x float> %i.jv, <2 x i32> <i32 0, i32 3>
  %i.jx = fadd <2 x float> %i.cp, %i.jw
  %i.jy = fsub <2 x float> %i.jx, %i.jo
  %i.jz = fmul <2 x float> %i.jg, %i.jy
  %i.ka = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jz)
  %i.kb = fcmp olt float %i.ka, 0.000000e+00
  br i1 %i.kb, label %bb.o, label %b2MakeSeparationFunction.exit

bb.o:                                             ; preds = %b2Normalize.exit161.i
  %i.kc = fneg <2 x float> %.sroa.012.0.i157.i
  br label %b2MakeSeparationFunction.exit

b2MakeSeparationFunction.exit:                    ; preds = %bb.g, %bb.h, %b2Normalize.exit114.i, %bb.l, %b2Normalize.exit161.i, %bb.o
  %.sroa.88.0 = phi i32 [ 1, %b2Normalize.exit161.i ], [ 2, %bb.l ], [ 2, %b2Normalize.exit114.i ], [ 1, %bb.o ], [ 0, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %.sroa.73.0 = phi <2 x float> [ %.sroa.012.0.i157.i, %b2Normalize.exit161.i ], [ %i.ig, %bb.l ], [ %.sroa.012.0.i110.i, %b2Normalize.exit114.i ], [ %i.kc, %bb.o ], [ %i.gh, %bb.h ], [ zeroinitializer, %bb.g ] ; 14 uses
  %.sroa.60.0 = phi <2 x float> [ %i.iw, %b2Normalize.exit161.i ], [ %i.ha, %bb.l ], [ %i.ha, %b2Normalize.exit114.i ], [ %i.iw, %bb.o ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %bb.g ] ; 7 uses
  %i.kd = shufflevector <2 x float> %.sroa.73.0, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ke = fmul <2 x float> %i.cq, %i.kd           ; 2 uses
  %i.kf = shufflevector <2 x float> %.sroa.73.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kg = fmul <2 x float> %i.cq, %i.kf
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ki = fsub <2 x float> %i.ke, %i.kh
  %i.kj = fadd <2 x float> %i.ke, %i.kh
  %i.kk = shufflevector <2 x float> %i.ki, <2 x float> %i.kj, <2 x i32> <i32 0, i32 3>
  %i.kl = fmul <2 x float> %i.cy, %i.kd           ; 2 uses
  %i.km = fmul <2 x float> %i.cy, %i.kf
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ko = fsub <2 x float> %i.kl, %i.kn
  %i.kp = fadd <2 x float> %i.kl, %i.kn
  %i.kq = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 0, i32 3>
  %i.kr = shufflevector <2 x float> %.sroa.60.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 6 uses
  %i.ks = fmul <2 x float> %i.ch, %i.kr           ; 2 uses
  %i.kt = fmul <2 x float> %i.ck, %.sroa.60.0     ; 2 uses
  %i.ku = fsub <2 x float> %i.kt, %i.ks
  %i.kv = fadd <2 x float> %i.kt, %i.ks
  %i.kw = shufflevector <2 x float> %i.ku, <2 x float> %i.kv, <2 x i32> <i32 0, i32 3>
  %i.kx = fadd <2 x float> %i.cp, %i.kw
  %i.ky = fmul <2 x float> %i.bw, %i.kr           ; 2 uses
  %i.kz = fmul <2 x float> %i.bz, %.sroa.60.0     ; 2 uses
  %i.la = fsub <2 x float> %i.kz, %i.ky
  %i.lb = fadd <2 x float> %i.kz, %i.ky
  %i.lc = shufflevector <2 x float> %i.la, <2 x float> %i.lb, <2 x i32> <i32 0, i32 3>
  %i.ld = fadd <2 x float> %i.ce, %i.lc
  %5 = fneg <2 x float> %.sroa.73.0
  %6 = shufflevector <2 x float> %5, <2 x float> %.sroa.73.0, <2 x i32> <i32 1, i32 2>
  br label %bb.p

bb.p:                                             ; preds = %select.unfold, %b2MakeSeparationFunction.exit
  %.0122 = phi float [ %i.b, %b2MakeSeparationFunction.exit ], [ %.2124.ph, %select.unfold ] ; 5 uses
  %.0119 = phi i32 [ 0, %b2MakeSeparationFunction.exit ], [ %i.aax, %select.unfold ]
  %i.le = fsub float 1.000000e+00, %.0122
  %i.lf = insertelement <2 x float> poison, float %.0122, i64 0 ; 2 uses
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lh = fmul <2 x float> %.sroa.9353.0.copyload, %i.lg
  %i.li = shufflevector <2 x float> %i.lf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lj = fmul <4 x float> %i.ap, %i.li
  %i.lk = fmul <2 x float> %.sroa.9340.0.copyload, %i.lg
  %i.ll = insertelement <2 x float> poison, float %i.le, i64 0 ; 2 uses
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ln = fmul <2 x float> %.sroa.6350.0.copyload, %i.lm
  %i.lo = fadd <2 x float> %i.lh, %i.ln
  %i.lp = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lq = fmul <4 x float> %i.av, %i.lp
  %i.lr = fadd <4 x float> %i.lj, %i.lq           ; 3 uses
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lt = fmul <2 x float> %i.ls, %i.ls
  %i.lu = shufflevector <4 x float> %i.lr, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lv = fmul <2 x float> %i.lu, %i.lu
  %i.lw = fadd <2 x float> %i.lv, %i.lt           ; 2 uses
  %i.lx = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lw)
  %i.ly = fcmp ogt <2 x float> %i.lw, zeroinitializer
  %i.lz = fdiv <2 x float> splat (float 1.000000e+00), %i.lx
  %i.ma = select <2 x i1> %i.ly, <2 x float> %i.lz, <2 x float> zeroinitializer
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.mc = fmul <4 x float> %i.lr, %i.mb           ; 9 uses
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.me = fmul <2 x float> %.sroa.0347.0.copyload, %i.md
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mg = shufflevector <4 x float> %i.mc, <4 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.mh = fmul <2 x float> %.sroa.0347.0.copyload, %i.mg ; 2 uses
  %i.mi = fsub <2 x float> %i.mh, %i.mf
  %i.mj = fadd <2 x float> %i.mh, %i.mf
  %i.mk = shufflevector <2 x float> %i.mi, <2 x float> %i.mj, <2 x i32> <i32 0, i32 3>
  %i.ml = fsub <2 x float> %i.lo, %i.mk           ; 3 uses
  %i.mm = fmul <2 x float> %.sroa.6.0.copyload, %i.lm
  %i.mn = fadd <2 x float> %i.lk, %i.mm
  %i.mo = shufflevector <4 x float> %i.mc, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 4 uses
  %i.mp = fmul <2 x float> %.sroa.0335.0.copyload, %i.mo
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mr = shufflevector <4 x float> %i.mc, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.ms = fmul <2 x float> %.sroa.0335.0.copyload, %i.mr ; 2 uses
  %i.mt = fsub <2 x float> %i.ms, %i.mq
  %i.mu = fadd <2 x float> %i.ms, %i.mq
  %i.mv = shufflevector <2 x float> %i.mt, <2 x float> %i.mu, <2 x i32> <i32 0, i32 3>
  %i.mw = fsub <2 x float> %i.mn, %i.mv           ; 3 uses
  switch i32 %.sroa.88.0, label %.unreachabledefault [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.mx = fmul <2 x float> %.sroa.73.0, %i.mg     ; 2 uses
  %i.my = fmul <2 x float> %.sroa.73.0, %i.md
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.na = fadd <2 x float> %i.mx, %i.mz
  %i.nb = fsub <2 x float> %i.mx, %i.mz
  %i.nc = shufflevector <2 x float> %i.na, <2 x float> %i.nb, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.nd = fmul <2 x float> %i.mo, %6
  %i.ne = fmul <2 x float> %.sroa.73.0, %i.mr
  %i.nf = fsub <2 x float> %i.nd, %i.ne           ; 4 uses
  %i.ng = load i32, ptr %i.ah, align 4, !tbaa !13 ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, 1
  br i1 %i.nh, label %.lr.ph.preheader.i.i, label %b2FindSupport.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %i.ni = load <2 x float>, ptr %1, align 4
  %i.nj = fmul <2 x float> %i.nc, %i.ni           ; 2 uses
  %shift917 = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop918 = fadd <2 x float> %i.nj, %shift917
  %i.nk = extractelement <2 x float> %foldExtExtBinop918, i64 0 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ng to i64
  %i.nl = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter1005 = and i64 %i.nl, 1
  %i.nm = icmp eq i32 %i.ng, 2
  br i1 %i.nm, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter1009 = and i64 %i.nl, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %.01322.i.i = phi float [ %i.nk, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.1, %.lr.ph.i.i ] ; 2 uses
  %.01421.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %.115.i.i.1, %.lr.ph.i.i ]
  %niter1010 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter1010.next.1, %.lr.ph.i.i ]
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.no = load <2 x float>, ptr %i.nn, align 4
  %i.np = fmul <2 x float> %i.nc, %i.no
  %i.nq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.np) ; 2 uses
  %i.nr = fcmp ogt float %i.nq, %.01322.i.i       ; 2 uses
  %i.ns = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.115.i.i = select i1 %i.nr, i32 %i.ns, i32 %.01421.i.i
  %.1.i.i = select i1 %i.nr, float %i.nq, float %.01322.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.nu = load <2 x float>, ptr %i.nt, align 4
  %i.nv = fmul <2 x float> %i.nc, %i.nu
  %i.nw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nv) ; 2 uses
  %i.nx = fcmp ogt float %i.nw, %.1.i.i           ; 2 uses
  %i.ny = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %.115.i.i.1 = select i1 %i.nx, i32 %i.ny, i32 %.115.i.i ; 3 uses
  %.1.i.i.1 = select i1 %i.nx, float %i.nw, float %.1.i.i ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter1010.next.1 = add nuw i64 %niter1010, 2   ; 2 uses
  %niter1010.ncmp.1 = icmp eq i64 %niter1010.next.1, %unroll_iter1009
  br i1 %niter1010.ncmp.1, label %b2FindSupport.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !0

b2FindSupport.exit.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i
  %lcmp.mod1006.not = icmp eq i64 %xtraiter1005, 0
  br i1 %lcmp.mod1006.not, label %b2FindSupport.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %b2FindSupport.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %b2FindSupport.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.01322.i.i.epil.init = phi float [ %i.nk, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %b2FindSupport.exit.i.loopexit.unr-lcssa ]
  %.01421.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.115.i.i.1, %b2FindSupport.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod1008 = trunc i64 %i.nl to i1
  tail call void @llvm.assume(i1 %lcmp.mod1008)
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i.epil.init
  %i.oa = load <2 x float>, ptr %i.nz, align 4
  %i.ob = fmul <2 x float> %i.nc, %i.oa
  %i.oc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ob)
  %i.od = fcmp ogt float %i.oc, %.01322.i.i.epil.init
  %i.oe = trunc nuw nsw i64 %indvars.iv.i.i.epil.init to i32
  %.115.i.i.epil = select i1 %i.od, i32 %i.oe, i32 %.01421.i.i.epil.init
  br label %b2FindSupport.exit.i

b2FindSupport.exit.i:                             ; preds = %.lr.ph.i.i.epil.preheader, %b2FindSupport.exit.i.loopexit.unr-lcssa, %bb.q
  %.014.lcssa.i.i = phi i32 [ 0, %bb.q ], [ %.115.i.i.1, %b2FindSupport.exit.i.loopexit.unr-lcssa ], [ %.115.i.i.epil, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.of = load i32, ptr %i.ai, align 4, !tbaa !13 ; 3 uses
  %i.og = icmp sgt i32 %i.of, 1
  br i1 %i.og, label %.lr.ph.preheader.i102.i, label %b2FindSupport.exit116.i

.lr.ph.preheader.i102.i:                          ; preds = %b2FindSupport.exit.i
  %i.oh = load <2 x float>, ptr %i.k, align 4
  %i.oi = fmul <2 x float> %i.nf, %i.oh           ; 2 uses
  %shift920 = shufflevector <2 x float> %i.oi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop921 = fadd <2 x float> %i.oi, %shift920
  %i.oj = extractelement <2 x float> %foldExtExtBinop921, i64 0 ; 2 uses
  %wide.trip.count.i105.i = zext nneg i32 %i.of to i64
  %i.ok = add nsw i64 %wide.trip.count.i105.i, -1 ; 3 uses
  %xtraiter1011 = and i64 %i.ok, 1
  %i.ol = icmp eq i32 %i.of, 2
  br i1 %i.ol, label %.lr.ph.i106.i.epil.preheader, label %.lr.ph.preheader.i102.i.new

.lr.ph.preheader.i102.i.new:                      ; preds = %.lr.ph.preheader.i102.i
  %unroll_iter1015 = and i64 %i.ok, -2
  br label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %.lr.ph.i106.i, %.lr.ph.preheader.i102.i.new
  %indvars.iv.i107.i = phi i64 [ 1, %.lr.ph.preheader.i102.i.new ], [ %indvars.iv.next.i114.i.1, %.lr.ph.i106.i ] ; 4 uses
  %.01322.i108.i = phi float [ %i.oj, %.lr.ph.preheader.i102.i.new ], [ %.1.i113.i.1, %.lr.ph.i106.i ] ; 2 uses
  %.01421.i109.i = phi i32 [ 0, %.lr.ph.preheader.i102.i.new ], [ %.115.i112.i.1, %.lr.ph.i106.i ]
  %niter1016 = phi i64 [ 0, %.lr.ph.preheader.i102.i.new ], [ %niter1016.next.1, %.lr.ph.i106.i ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i107.i
  %i.on = load <2 x float>, ptr %i.om, align 4
  %i.oo = fmul <2 x float> %i.nf, %i.on
  %i.op = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.oo) ; 2 uses
  %i.oq = fcmp ogt float %i.op, %.01322.i108.i    ; 2 uses
  %i.or = trunc nuw nsw i64 %indvars.iv.i107.i to i32
  %.115.i112.i = select i1 %i.oq, i32 %i.or, i32 %.01421.i109.i
  %.1.i113.i = select i1 %i.oq, float %i.op, float %.01322.i108.i ; 2 uses
  %indvars.iv.next.i114.i = add nuw nsw i64 %indvars.iv.i107.i, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i114.i
  %i.ot = load <2 x float>, ptr %i.os, align 4
  %i.ou = fmul <2 x float> %i.nf, %i.ot
  %i.ov = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ou) ; 2 uses
  %i.ow = fcmp ogt float %i.ov, %.1.i113.i        ; 2 uses
  %i.ox = trunc nuw nsw i64 %indvars.iv.next.i114.i to i32
  %.115.i112.i.1 = select i1 %i.ow, i32 %i.ox, i32 %.115.i112.i ; 3 uses
  %.1.i113.i.1 = select i1 %i.ow, float %i.ov, float %.1.i113.i ; 2 uses
  %indvars.iv.next.i114.i.1 = add nuw nsw i64 %indvars.iv.i107.i, 2 ; 2 uses
  %niter1016.next.1 = add nuw i64 %niter1016, 2   ; 2 uses
  %niter1016.ncmp.1 = icmp eq i64 %niter1016.next.1, %unroll_iter1015
  br i1 %niter1016.ncmp.1, label %b2FindSupport.exit116.i.loopexit.unr-lcssa, label %.lr.ph.i106.i, !llvm.loop !0

b2FindSupport.exit116.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i106.i
  %lcmp.mod1012.not = icmp eq i64 %xtraiter1011, 0
  br i1 %lcmp.mod1012.not, label %b2FindSupport.exit116.i, label %.lr.ph.i106.i.epil.preheader

.lr.ph.i106.i.epil.preheader:                     ; preds = %b2FindSupport.exit116.i.loopexit.unr-lcssa, %.lr.ph.preheader.i102.i
  %indvars.iv.i107.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i102.i ], [ %indvars.iv.next.i114.i.1, %b2FindSupport.exit116.i.loopexit.unr-lcssa ] ; 2 uses
  %.01322.i108.i.epil.init = phi float [ %i.oj, %.lr.ph.preheader.i102.i ], [ %.1.i113.i.1, %b2FindSupport.exit116.i.loopexit.unr-lcssa ]
  %.01421.i109.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i102.i ], [ %.115.i112.i.1, %b2FindSupport.exit116.i.loopexit.unr-lcssa ]
  %lcmp.mod1014 = trunc i64 %i.ok to i1
  tail call void @llvm.assume(i1 %lcmp.mod1014)
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i107.i.epil.init
  %i.oz = load <2 x float>, ptr %i.oy, align 4
  %i.pa = fmul <2 x float> %i.nf, %i.oz
  %i.pb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.pa)
  %i.pc = fcmp ogt float %i.pb, %.01322.i108.i.epil.init
  %i.pd = trunc nuw nsw i64 %indvars.iv.i107.i.epil.init to i32
  %.115.i112.i.epil = select i1 %i.pc, i32 %i.pd, i32 %.01421.i109.i.epil.init
  br label %b2FindSupport.exit116.i

end_hunk_0
begin_hunk_1_@b2TimeOfImpact:bb.a
bb.w:                                             ; preds = %bb.v
  %i.tw = sext i32 %.0365 to i64
  %i.tx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.tw
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.tx, align 4 ; 2 uses
  %i.ty = sext i32 %.0364 to i64
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ty
  %i.ua = fmul <2 x float> %i.bw, %.sroa.016.0.copyload.i
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.uc = fmul <2 x float> %i.bz, %.sroa.016.0.copyload.i ; 2 uses
  %i.ud = fsub <2 x float> %i.uc, %i.ub
  %i.ue = fadd <2 x float> %i.uc, %i.ub
  %i.uf = shufflevector <2 x float> %i.ud, <2 x float> %i.ue, <2 x i32> <i32 0, i32 3>
  %i.ug = fadd <2 x float> %i.ce, %i.uf
  br label %b2EvaluateSeparation.exit

bb.x:                                             ; preds = %bb.v
  %i.uh = sext i32 %.0364 to i64
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.uh
  br label %b2EvaluateSeparation.exit

bb.y:                                             ; preds = %bb.v
  %i.uj = sext i32 %.0365 to i64
  %i.uk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.uj
  br label %b2EvaluateSeparation.exit

b2EvaluateSeparation.exit:                        ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.015.0.copyload.i.sink818.in = phi ptr [ %i.tz, %bb.w ], [ %i.ui, %bb.x ], [ %i.uk, %bb.y ]
  %i.ul = phi <2 x float> [ %i.ug, %bb.w ], [ %i.ld, %bb.x ], [ %i.kx, %bb.y ]
  %i.um = phi <2 x float> [ %i.cq, %bb.w ], [ %i.cq, %bb.x ], [ %i.cy, %bb.y ] ; 2 uses
  %i.un = phi <2 x float> [ %.sroa.73.0, %bb.w ], [ %i.kq, %bb.x ], [ %i.kk, %bb.y ]
  %i.uo = phi <2 x float> [ %i.cp, %bb.w ], [ %i.cp, %bb.x ], [ %i.ce, %bb.y ]
  %.sroa.015.0.copyload.i.sink818 = load <2 x float>, ptr %.sroa.015.0.copyload.i.sink818.in, align 4 ; 2 uses
  %i.up = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uq = shufflevector <2 x float> %.sroa.015.0.copyload.i.sink818, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ur = fmul <2 x float> %i.up, %i.uq           ; 2 uses
  %i.us = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ut = fmul <2 x float> %i.us, %.sroa.015.0.copyload.i.sink818 ; 2 uses
  %i.uu = fsub <2 x float> %i.ut, %i.ur
  %i.uv = fadd <2 x float> %i.ut, %i.ur
  %i.uw = shufflevector <2 x float> %i.uu, <2 x float> %i.uv, <2 x i32> <i32 0, i32 3>
  %i.ux = fadd <2 x float> %i.uo, %i.uw
  %i.uy = fsub <2 x float> %i.ux, %i.ul
  %i.uz = fmul <2 x float> %i.un, %i.uy
  %i.va = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.uz) ; 3 uses
  %i.vb = fcmp olt float %i.va, %i.aj
  br i1 %i.vb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %b2EvaluateSeparation.exit
  store i32 1, ptr %0, align 4, !tbaa !79
  br label %.thread384

bb.aa:                                            ; preds = %b2EvaluateSeparation.exit
  %i.vc = fcmp ugt float %i.va, %i.ag
  br i1 %i.vc, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.aa
  %i.vd = sext i32 %.0365 to i64
  %i.ve = getelementptr inbounds [8 x i8], ptr %1, i64 %i.vd ; 2 uses
  %i.vf = sext i32 %.0364 to i64
  %i.vg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.vf ; 2 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %0, align 4, !tbaa !79
  %i.vh = load float, ptr %i.l, align 4, !tbaa !14
  %i.vi = load float, ptr %i.n, align 4, !tbaa !14
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.vk = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vl = fmul <2 x float> %i.vk, %i.cy           ; 2 uses
  %i.vm = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vn = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.vo = fmul <2 x float> %i.vm, %i.vn           ; 2 uses
  %i.vp = fsub <2 x float> %i.vl, %i.vo
  %i.vq = fadd <2 x float> %i.vl, %i.vo
  %i.vr = shufflevector <2 x float> %i.vp, <2 x float> %i.vq, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.vs = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = fmul <2 x float> %i.vs, %i.cy           ; 2 uses
  %i.vu = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vv = fmul <2 x float> %i.vu, %i.vn           ; 2 uses
  %i.vw = fsub <2 x float> %i.vt, %i.vv
  %i.vx = fadd <2 x float> %i.vt, %i.vv
  %i.vy = shufflevector <2 x float> %i.vw, <2 x float> %i.vx, <2 x i32> <i32 0, i32 3>
  %i.vz = fadd <2 x float> %i.vy, %i.ce
  %i.wa = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wb = fmul <2 x float> %i.wa, %i.cy           ; 2 uses
  %i.wc = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wd = fmul <2 x float> %i.wc, %i.vn           ; 2 uses
  %i.we = fsub <2 x float> %i.wb, %i.wd
  %i.wf = fadd <2 x float> %i.wb, %i.wd
  %i.wg = shufflevector <2 x float> %i.we, <2 x float> %i.wf, <2 x i32> <i32 0, i32 3>
  %i.wh = fadd <2 x float> %i.wg, %i.ce
  %i.wi = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wk = fmul <2 x float> %i.vr, %i.wj
  %i.wl = fadd <2 x float> %i.vz, %i.wk
  %i.wm = insertelement <2 x float> poison, float %i.vi, i64 0
  %i.wn = shufflevector <2 x float> %i.wm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wo = fmul <2 x float> %i.vr, %i.wn
  %i.wp = fsub <2 x float> %i.wh, %i.wo
  %i.wq = fmul <2 x float> %i.wl, splat (float 5.000000e-01)
  %i.wr = fmul <2 x float> %i.wp, splat (float 5.000000e-01)
  %i.ws = fadd <2 x float> %i.wq, %i.wr
  store <2 x float> %i.ws, ptr %i.vj, align 4
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.vr, ptr %i.wt, align 4
  br label %.thread384

bb.ac:                                            ; preds = %.preheader, %bb.aj
  %.0116 = phi float [ %.0116., %bb.aj ], [ %i.tt, %.preheader ] ; 2 uses
  %.0113 = phi float [ %..0113, %bb.aj ], [ %i.va, %.preheader ] ; 3 uses
  %.0112 = phi i32 [ %i.xd, %bb.aj ], [ 0, %.preheader ] ; 2 uses
  %.0109 = phi float [ %.0..0109, %bb.aj ], [ %.0128, %.preheader ] ; 4 uses
  %.0108 = phi float [ %.0108..0, %bb.aj ], [ %.0122, %.preheader ] ; 3 uses
  %i.wu = and i32 %.0112, 1
  %.not = icmp eq i32 %i.wu, 0
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.wv = fsub float %i.w, %.0113
  %i.ww = fsub float %.0108, %.0109
  %i.wx = fmul float %i.wv, %i.ww
  %i.wy = fsub float %.0116, %.0113
  %i.wz = fdiv float %i.wx, %i.wy
  %i.xa = fadd float %.0109, %i.wz
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.xb = fadd float %.0109, %.0108
  %i.xc = fmul float %i.xb, 5.000000e-01
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi float [ %i.xa, %bb.ad ], [ %i.xc, %bb.ae ] ; 5 uses
  %i.xd = add nuw nsw i32 %.0112, 1               ; 2 uses
  %i.xe = fsub float 1.000000e+00, %.0
  %i.xf = insertelement <2 x float> poison, float %.0, i64 0 ; 2 uses
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xh = fmul <2 x float> %.sroa.9353.0.copyload, %i.xg
  %i.xi = shufflevector <2 x float> %i.xf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.xj = fmul <4 x float> %i.aw, %i.xi
  %i.xk = fmul <2 x float> %.sroa.9340.0.copyload, %i.xg
  %i.xl = insertelement <2 x float> poison, float %i.xe, i64 0 ; 2 uses
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xn = fmul <2 x float> %.sroa.6350.0.copyload, %i.xm
  %i.xo = fadd <2 x float> %i.xh, %i.xn
  %i.xp = shufflevector <2 x float> %i.xl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.xq = fmul <4 x float> %i.ak, %i.xp
  %i.xr = fadd <4 x float> %i.xj, %i.xq           ; 3 uses
  %i.xs = shufflevector <4 x float> %i.xr, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.xt = fmul <2 x float> %i.xs, %i.xs
  %i.xu = shufflevector <4 x float> %i.xr, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.xv = fmul <2 x float> %i.xu, %i.xu
  %i.xw = fadd <2 x float> %i.xv, %i.xt           ; 2 uses
  %i.xx = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.xw)
  %i.xy = fcmp ogt <2 x float> %i.xw, zeroinitializer
  %i.xz = fdiv <2 x float> splat (float 1.000000e+00), %i.xx
  %i.ya = select <2 x i1> %i.xy, <2 x float> %i.xz, <2 x float> zeroinitializer
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.yc = fmul <4 x float> %i.xr, %i.yb           ; 11 uses
  %i.yd = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ye = fmul <2 x float> %.sroa.0347.0.copyload, %i.yd
  %i.yf = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yg = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.yh = fmul <2 x float> %.sroa.0347.0.copyload, %i.yg ; 2 uses
  %i.yi = fsub <2 x float> %i.yh, %i.yf
  %i.yj = fadd <2 x float> %i.yh, %i.yf
  %i.yk = shufflevector <2 x float> %i.yi, <2 x float> %i.yj, <2 x i32> <i32 0, i32 3>
  %i.yl = fsub <2 x float> %i.xo, %i.yk           ; 3 uses
  %i.ym = fmul <2 x float> %.sroa.6.0.copyload, %i.xm
  %i.yn = fadd <2 x float> %i.xk, %i.ym
  %i.yo = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.yp = fmul <2 x float> %.sroa.0335.0.copyload, %i.yo
  %i.yq = shufflevector <2 x float> %i.yp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yr = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ys = fmul <2 x float> %.sroa.0335.0.copyload, %i.yr ; 2 uses
  %i.yt = fsub <2 x float> %i.ys, %i.yq
  %i.yu = fadd <2 x float> %i.ys, %i.yq
  %i.yv = shufflevector <2 x float> %i.yt, <2 x float> %i.yu, <2 x i32> <i32 0, i32 3>
  %i.yw = fsub <2 x float> %i.yn, %i.yv           ; 3 uses
  switch i32 %.sroa.88.0, label %default.unreachable [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %.sroa.016.0.copyload.i248 = load <2 x float>, ptr %i.ve, align 4 ; 2 uses
  %i.yx = fmul <2 x float> %i.yd, %.sroa.016.0.copyload.i248
  %i.yy = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yz = fmul <2 x float> %i.yg, %.sroa.016.0.copyload.i248 ; 2 uses
  %i.za = fsub <2 x float> %i.yz, %i.yy
  %i.zb = fadd <2 x float> %i.yz, %i.yy
  %i.zc = shufflevector <2 x float> %i.za, <2 x float> %i.zb, <2 x i32> <i32 0, i32 3>
  %i.zd = fadd <2 x float> %i.yl, %i.zc
  %i.ze = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %b2EvaluateSeparation.exit256

bb.ah:                                            ; preds = %bb.af
  %i.zf = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.zg = fmul <2 x float> %.sroa.73.0, %i.zf     ; 2 uses
  %i.zh = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zi = fmul <2 x float> %.sroa.73.0, %i.zh
  %i.zj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.zi)
  %i.zk = fmul <2 x float> %.sroa.60.0, %i.yg     ; 2 uses
  %i.zl = fmul <2 x float> %i.kr, %i.yd           ; 2 uses
  %i.zm = fsub <2 x float> %i.zk, %i.zl
  %i.zn = fadd <2 x float> %i.zk, %i.zl
  %i.zo = shufflevector <2 x float> %i.zm, <2 x float> %i.zn, <2 x i32> <i32 0, i32 3>
  %i.zp = fadd <2 x float> %i.zo, %i.yl
  %i.zq = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %7 = shufflevector <2 x float> %i.zg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %8 = fsub <2 x float> %i.zg, %7
  %9 = insertelement <2 x float> %8, float %i.zj, i64 1
  br label %b2EvaluateSeparation.exit256

bb.ai:                                            ; preds = %bb.af
  %i.zr = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.zs = fmul <2 x float> %.sroa.73.0, %i.zr     ; 2 uses
  %i.zt = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.zu = fmul <2 x float> %.sroa.73.0, %i.zt
  %i.zv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.zu)
  %i.zw = fmul <2 x float> %.sroa.60.0, %i.yr     ; 2 uses
  %i.zx = fmul <2 x float> %i.kr, %i.yo           ; 2 uses
  %i.zy = fsub <2 x float> %i.zw, %i.zx
  %i.zz = fadd <2 x float> %i.zw, %i.zx
  %i.aaa = shufflevector <2 x float> %i.zy, <2 x float> %i.zz, <2 x i32> <i32 0, i32 3>
  %i.aab = fadd <2 x float> %i.aaa, %i.yw
  %i.aac = shufflevector <4 x float> %i.yc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %10 = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %11 = fsub <2 x float> %i.zs, %10
  %12 = insertelement <2 x float> %11, float %i.zv, i64 1
  br label %b2EvaluateSeparation.exit256

b2EvaluateSeparation.exit256:                     ; preds = %bb.ag, %bb.ah, %bb.ai
  %.sroa.015.0.copyload.i249.sink843.in = phi ptr [ %i.vg, %bb.ag ], [ %i.vg, %bb.ah ], [ %i.ve, %bb.ai ]
  %13 = phi <2 x float> [ %i.zd, %bb.ag ], [ %i.zp, %bb.ah ], [ %i.aab, %bb.ai ]
  %i.aad = phi <2 x float> [ %i.ze, %bb.ag ], [ %i.zq, %bb.ah ], [ %i.aac, %bb.ai ] ; 2 uses
  %i.aae = phi <2 x float> [ %.sroa.73.0, %bb.ag ], [ %9, %bb.ah ], [ %12, %bb.ai ]
  %i.aaf = phi <2 x float> [ %i.yw, %bb.ag ], [ %i.yw, %bb.ah ], [ %i.yl, %bb.ai ]
  %.sroa.015.0.copyload.i249.sink843 = load <2 x float>, ptr %.sroa.015.0.copyload.i249.sink843.in, align 4 ; 2 uses
  %i.aag = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aah = shufflevector <2 x float> %.sroa.015.0.copyload.i249.sink843, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aai = fmul <2 x float> %i.aag, %i.aah        ; 2 uses
  %i.aaj = shufflevector <2 x float> %i.aad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aak = fmul <2 x float> %i.aaj, %.sroa.015.0.copyload.i249.sink843 ; 2 uses
  %i.aal = fsub <2 x float> %i.aak, %i.aai
  %i.aam = fadd <2 x float> %i.aak, %i.aai
  %i.aan = shufflevector <2 x float> %i.aal, <2 x float> %i.aam, <2 x i32> <i32 0, i32 3>
  %i.aao = fadd <2 x float> %i.aaf, %i.aan
  %i.aap = fsub <2 x float> %i.aao, %13
  %i.aaq = fmul <2 x float> %i.aae, %i.aap
  %i.aar = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aaq) ; 4 uses
  %i.aas = fsub float %i.aar, %i.w
  %i.aat = tail call float @llvm.fabs.f32(float %i.aas)
  %i.aau = fcmp olt float %i.aat, %i.z
  br i1 %i.aau, label %select.unfold, label %bb.aj

bb.aj:                                            ; preds = %b2EvaluateSeparation.exit256
  %i.aav = fcmp ogt float %i.aar, %i.w            ; 4 uses
  %.0116. = select i1 %i.aav, float %.0116, float %i.aar
  %..0113 = select i1 %i.aav, float %i.aar, float %.0113
  %.0..0109 = select i1 %i.aav, float %.0, float %.0109
  %.0108..0 = select i1 %i.aav, float %.0108, float %.0
  %i.aaw = icmp eq i32 %i.xd, 50
  br i1 %i.aaw, label %select.unfold, label %bb.ac

select.unfold:                                    ; preds = %bb.aj, %b2EvaluateSeparation.exit256
  %.2124.ph = phi float [ %.0, %b2EvaluateSeparation.exit256 ], [ %.0122, %bb.aj ]
  %i.aax = add nuw nsw i32 %.0119, 1              ; 2 uses
  %i.aay = icmp eq i32 %i.aax, 8
  br i1 %i.aay, label %select.unfold373, label %bb.p

select.unfold373:                                 ; preds = %bb.u, %select.unfold
  %.2130.ph = phi float [ %.0122, %bb.u ], [ %.0128, %select.unfold ] ; 2 uses
  %i.aaz = icmp eq i32 %i.dk, 20
  br i1 %i.aaz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %select.unfold373
  store i32 1, ptr %0, align 4, !tbaa !79
  %i.aba = load float, ptr %i.l, align 4, !tbaa !14
  %i.abb = load float, ptr %i.n, align 4, !tbaa !14
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.abd = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abe = fmul <2 x float> %i.abd, %i.cy         ; 2 uses
  %i.abf = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abg = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.abh = fmul <2 x float> %i.abf, %i.abg        ; 2 uses
  %i.abi = fsub <2 x float> %i.abe, %i.abh
  %i.abj = fadd <2 x float> %i.abe, %i.abh
  %i.abk = shufflevector <2 x float> %i.abi, <2 x float> %i.abj, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.abl = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abm = fmul <2 x float> %i.abl, %i.cy         ; 2 uses
  %i.abn = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abo = fmul <2 x float> %i.abn, %i.abg        ; 2 uses
  %i.abp = fsub <2 x float> %i.abm, %i.abo
  %i.abq = fadd <2 x float> %i.abm, %i.abo
  %i.abr = shufflevector <2 x float> %i.abp, <2 x float> %i.abq, <2 x i32> <i32 0, i32 3>
  %i.abs = fadd <2 x float> %i.abr, %i.ce
  %i.abt = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abu = fmul <2 x float> %i.abt, %i.cy         ; 2 uses
  %i.abv = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abw = fmul <2 x float> %i.abv, %i.abg        ; 2 uses
  %i.abx = fsub <2 x float> %i.abu, %i.abw
  %i.aby = fadd <2 x float> %i.abu, %i.abw
  %i.abz = shufflevector <2 x float> %i.abx, <2 x float> %i.aby, <2 x i32> <i32 0, i32 3>
  %i.aca = fadd <2 x float> %i.abz, %i.ce
  %i.acb = insertelement <2 x float> poison, float %i.aba, i64 0
  %i.acc = shufflevector <2 x float> %i.acb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acd = fmul <2 x float> %i.abk, %i.acc
  %i.ace = fadd <2 x float> %i.abs, %i.acd
  %i.acf = insertelement <2 x float> poison, float %i.abb, i64 0
  %i.acg = shufflevector <2 x float> %i.acf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ach = fmul <2 x float> %i.abk, %i.acg
  %i.aci = fsub <2 x float> %i.aca, %i.ach
  %i.acj = fmul <2 x float> %i.ace, splat (float 5.000000e-01)
  %i.ack = fmul <2 x float> %i.aci, splat (float 5.000000e-01)
  %i.acl = fadd <2 x float> %i.acj, %i.ack
  store <2 x float> %i.acl, ptr %i.abc, align 4
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.abk, ptr %i.acm, align 4
  br label %.thread384

bb.al:                                            ; preds = %select.unfold373
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.b

.thread384:                                       ; preds = %bb.t, %bb.z, %bb.ab, %bb.c, %bb.e, %bb.ak
  %.sink844 = phi float [ %i.b, %bb.t ], [ %.0128, %bb.z ], [ %.0128, %bb.ab ], [ 0.000000e+00, %bb.c ], [ %.0128, %bb.e ], [ %.2130.ph, %bb.ak ]
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sink844, ptr %i.acn, align 4, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"b2Vec2", !9, i64 0, !9, i64 4}
!12 = !{!"b2ShapeProxy", !5, i64 0, !6, i64 64, !9, i64 68}
!13 = !{!12, !6, i64 64}
!14 = !{!12, !9, i64 68}
!15 = !{!"b2Rot", !9, i64 0, !9, i64 4}
!16 = !{!"b2Transform", !11, i64 0, !15, i64 8}
!17 = !{!"_Bool", !5, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!6, !6, i64 0}
!21 = !{!"b2DistanceOutput", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !6, i64 28, !6, i64 32}
!22 = !{!21, !9, i64 24}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{i64 0, i64 64, !18, i64 64, i64 4, !20, i64 68, i64 4, !10}
!26 = !{!"b2SegmentDistanceResult", !11, i64 0, !11, i64 8, !9, i64 16, !9, i64 20, !9, i64 24}
!27 = !{!26, !9, i64 16}
!28 = !{!26, !9, i64 24}
!29 = distinct !{!29, !"b2MakeSimplexFromCache"}
!30 = distinct !{!30, !29, !"b2MakeSimplexFromCache: argument 0"}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!"b2DistanceInput", !12, i64 0, !12, i64 72, !16, i64 144, !17, i64 160}
!37 = !{!36, !6, i64 136}
!38 = !{!36, !9, i64 140}
!39 = !{!30}
!40 = !{!"b2SimplexVertex", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !6, i64 28, !6, i64 32}
!41 = !{!"b2Simplex", !40, i64 0, !40, i64 36, !40, i64 72, !6, i64 108}
!42 = !{!41, !6, i64 108}
!43 = !{!"any pointer", !5, i64 0}
!44 = !{!"p1 _ZTS15b2SimplexVertex", !43, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!40, !6, i64 28}
!47 = !{!40, !6, i64 32}
!48 = !{!40, !9, i64 24}
!49 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !20, i64 32, i64 4, !20, i64 36, i64 4, !10, i64 40, i64 4, !10, i64 44, i64 4, !10, i64 48, i64 4, !10, i64 52, i64 4, !10, i64 56, i64 4, !10, i64 60, i64 4, !10, i64 64, i64 4, !20, i64 68, i64 4, !20, i64 72, i64 4, !10, i64 76, i64 4, !10, i64 80, i64 4, !10, i64 84, i64 4, !10, i64 88, i64 4, !10, i64 92, i64 4, !10, i64 96, i64 4, !10, i64 100, i64 4, !20, i64 104, i64 4, !20, i64 108, i64 4, !20}
!50 = !{!41, !9, i64 24}
!51 = !{!41, !9, i64 60}
!52 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !20, i64 32, i64 4, !20}
!53 = !{!41, !9, i64 96}
!54 = !{!"short", !5, i64 0}
!55 = !{!"b2SimplexCache", !54, i64 0, !5, i64 2, !5, i64 5}
!56 = !{!55, !54, i64 0}
!57 = !{!21, !6, i64 28}
!58 = !{!21, !6, i64 32}
!59 = !{!36, !17, i64 160}
!60 = !{!36, !9, i64 68}
!61 = distinct !{!61, !19, !72}
!62 = !{!"b2ShapeCastPairInput", !12, i64 0, !12, i64 72, !16, i64 144, !11, i64 160, !9, i64 168, !17, i64 172}
!63 = !{!62, !9, i64 68}
!64 = !{!62, !9, i64 140}
!65 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10}
!66 = !{!62, !17, i64 172}
!67 = !{!62, !9, i64 168}
!68 = !{!"b2CastOutput", !11, i64 0, !11, i64 8, !9, i64 16, !6, i64 20, !17, i64 24}
!69 = !{!68, !6, i64 20}
!70 = !{!68, !17, i64 24}
!71 = !{!68, !9, i64 16}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = distinct !{!73, !"b2MakeSeparationFunction"}
!74 = distinct !{!74, !73, !"b2MakeSeparationFunction: argument 0"}
!75 = !{!"b2Sweep", !11, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 32}
end_hunk_1
