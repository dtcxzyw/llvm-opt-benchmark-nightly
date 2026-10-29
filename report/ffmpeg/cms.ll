Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cms?download=true
inline.NumInlined: 82
inline.NumDeleted: 16
begin_hunk_0_@perceptual:bb.a
  %i.kl = load float, ptr %i.kk, align 8, !tbaa !70 ; 2 uses
  %i.km = tail call nsz float @llvm.maxnum.f32(float %i.kl, float 0.000000e+00) ; 2 uses
  br label %softclip.exit105

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.i100.ph = phi float [ %i.hi, %bb.d ], [ %i.kj, %bb.e ]
  %i.kn = tail call nsz float @llvm.maxnum.f32(float %.0.i100.ph, float %i.jd) ; 2 uses
  %i.ko = fdiv nsz float %i.hl, %i.hn
  %i.kp = tail call nsz float @llvm.minnum.f32(float %i.ko, float %i.hv) ; 2 uses
  %i.kq = fcmp nsz ugt float %i.kp, f0x3F333333
  %or.cond.i104 = and i1 %i.hz, %i.kq
  br i1 %or.cond.i104, label %bb.g, label %softclip.exit105

bb.g:                                             ; preds = %bb.f
  %i.kr = fadd nsz float %i.hv, f0xBF68F5C2
  %i.ks = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float -1.400000e+00, float f0x3EFAE147)
  %i.kt = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = insertelement <2 x float> <float -1.000000e+00, float poison>, float %i.ks, i64 1
  %i.kw = fadd nsz <2 x float> %i.ku, %i.kv       ; 2 uses
  %i.kx = fmul nsz <2 x float> %i.kw, <float f0xBEFAE147, float 1.000000e+00>
  %i.ky = extractelement <2 x float> %i.kw, i64 0
  %i.kz = tail call nsz float @llvm.maxnum.f32(float %i.ky, float f0x358637BD)
  %i.la = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.lb = insertelement <2 x float> %i.la, float %i.kz, i64 1
  %i.lc = fdiv nsz <2 x float> %i.kx, %i.lb       ; 3 uses
  %i.ld = extractelement <2 x float> %i.lc, i64 1 ; 4 uses
  %i.le = fmul nsz float %i.ld, 2.000000e+00
  %i.lf = fmul nsz float %i.le, f0x3F333333
  %i.lg = tail call nsz float @llvm.fmuladd.f32(float %i.ld, float %i.ld, float %i.lf)
  %i.lh = fadd nsz float %i.lg, f0x3EFAE147
  %i.li = extractelement <2 x float> %i.lc, i64 0
  %i.lj = fsub nsz float %i.ld, %i.li
  %i.lk = fdiv nsz float %i.lh, %i.lj
  %i.ll = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = fadd nsz <2 x float> %i.lm, %i.lc       ; 2 uses
  %i.lo = extractelement <2 x float> %i.ln, i64 0
  %i.lp = fmul nsz float %i.lo, %i.lk
  %i.lq = extractelement <2 x float> %i.ln, i64 1
  %i.lr = fdiv nsz float %i.lp, %i.lq
  %i.ls = fmul nsz float %i.hn, %i.lr
  br label %softclip.exit105

softclip.exit105:                                 ; preds = %softclip.exit102, %bb.f, %bb.g
  %i.lt = phi float [ %i.km, %softclip.exit102 ], [ %i.kn, %bb.g ], [ %i.kn, %bb.f ]
  %i.lu = phi float [ %i.kl, %softclip.exit102 ], [ %i.jd, %bb.g ], [ %i.jd, %bb.f ]
  %i.lv = phi float [ %i.km, %softclip.exit102 ], [ %i.je, %bb.g ], [ %i.je, %bb.f ]
  %.0.i103 = phi nsz float [ 0.000000e+00, %softclip.exit102 ], [ %i.ls, %bb.g ], [ %i.hl, %bb.f ]
  %i.lw = tail call nsz float @llvm.maxnum.f32(float %.0.i103, float %i.lu)
  %i.lx = shufflevector <8 x float> %i.f, <8 x float> poison, <3 x i32> <i32 7, i32 1, i32 4>
  %i.ly = insertelement <3 x float> poison, float %i.lt, i64 0
  %i.lz = shufflevector <3 x float> %i.ly, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ma = fmul nsz <3 x float> %i.lx, %i.lz
  %i.mb = shufflevector <8 x float> %i.f, <8 x float> poison, <3 x i32> <i32 6, i32 0, i32 3>
  %i.mc = insertelement <3 x float> poison, float %i.lv, i64 0
  %i.md = shufflevector <3 x float> %i.mc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.me = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mb, <3 x float> %i.md, <3 x float> %i.ma)
  %i.mf = shufflevector <8 x float> %i.f, <8 x float> poison, <3 x i32> <i32 poison, i32 2, i32 5>
  %i.mg = insertelement <3 x float> %i.mf, float %.sroa.0106.sroa.11.0.copyload, i64 0
  %i.mh = insertelement <3 x float> poison, float %i.lw, i64 0
  %i.mi = shufflevector <3 x float> %i.mh, <3 x float> poison, <3 x i32> zeroinitializer
  %i.mj = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mg, <3 x float> %i.mi, <3 x float> %i.me)
  %i.mk = fmul nsz <3 x float> %i.mj, splat (float f0x38D1B717)
  %i.ml = tail call nsz <3 x float> @llvm.maxnum.v3f32(<3 x float> %i.mk, <3 x float> zeroinitializer)
  %i.mm = tail call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.ml, <3 x float> splat (float f0x3E232000)) ; 2 uses
  %i.mn = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mm, <3 x float> splat (float f0x4196D000), <3 x float> splat (float f0x3F560000))
  %i.mo = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.mm, <3 x float> splat (float 1.868750e+01), <3 x float> splat (float 1.000000e+00))
  %i.mp = fdiv nsz <3 x float> %i.mn, %i.mo
  %i.mq = tail call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.mp, <3 x float> splat (float f0x429DB000)) ; 6 uses
  %i.mr = shufflevector <3 x float> %i.mq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ms = fmul nsz <2 x float> %i.mr, <float 4.000000e-01, float -4.851000e+00>
  %i.mt = shufflevector <3 x float> %i.mq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> <float 4.000000e-01, float 4.455000e+00>, <2 x float> %i.ms)
  %i.mv = shufflevector <3 x float> %i.mq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.mw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> <float 2.000000e-01, float 3.960000e-01>, <2 x float> %i.mu)
  %i.mx = extractelement <3 x float> %i.mq, i64 2
  %i.my = fmul nsz float %i.mx, 3.572000e-01
  %i.mz = extractelement <3 x float> %i.mq, i64 1
  %i.na = tail call nsz float @llvm.fmuladd.f32(float %i.mz, float f0x3F4E3BCD, float %i.my)
  %i.nb = extractelement <3 x float> %i.mq, i64 0
  %i.nc = tail call nsz float @llvm.fmuladd.f32(float %i.nb, float -1.162800e+00, float %i.na)
  %.fca.0.insert.i76 = insertvalue { <2 x float>, float } poison, <2 x float> %i.mw, 0
  %.fca.1.insert.i77 = insertvalue { <2 x float>, float } %.fca.0.insert.i76, float %i.nc, 1
  ret { <2 x float>, float } %.fca.1.insert.i77
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal { <2 x float>, float } @relative(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, float %2) #6 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 548
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.a = load <8 x float>, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.b = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4
  %i.c = load <4 x float>, ptr %.sroa.13.0..sroa_idx, align 4 ; 4 uses
  %.sroa.2134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.d = load <2 x float>, ptr %.sroa.2134.0..sroa_idx, align 8 ; 4 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 3 uses
  %i.f = extractelement <2 x float> %i.d, i64 0   ; 7 uses
  %.sroa.3040.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.sroa.3040.0.copyload = load float, ptr %.sroa.3040.0..sroa_idx, align 8 ; 4 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 676
  %.sroa.31.0.copyload = load float, ptr %.sroa.31.0..sroa_idx, align 4
  %.sroa.072.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %i.g = fmul nsz float %.sroa.072.0.vec.extract.i, 5.000000e-05
  %i.h = tail call nsz float @llvm.maxnum.f32(float %i.g, float 1.000000e-07)
  %i.i = fcmp nsz ugt float %.sroa.072.0.vec.extract.i, %i.f
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.077.4.vec.insert.i59 = insertelement <2 x float> %i.d, float 0.000000e+00, i64 1
  br label %clip_gamma.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.j = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 8
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.l = fadd nsz <4 x float> %i.k, <float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A, float f0xB8D1B717> ; 5 uses
  %.sroa.028.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 3 uses
  %i.m = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.n = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> zeroinitializer
  %i.o = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.m, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.n)
  %i.p = insertelement <3 x float> poison, float %2, i64 0
  %i.q = shufflevector <3 x float> %i.p, <3 x float> poison, <3 x i32> zeroinitializer
  %i.r = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.q, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.o) ; 6 uses
  %i.s = extractelement <3 x float> %i.r, i64 1
  %i.t = fcmp nsz olt float %i.s, %i.f
  br i1 %i.t, label %ingamut.exit24.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = extractelement <3 x float> %i.r, i64 0
  %i.v = fcmp nsz olt float %i.u, %i.f
  %i.w = shufflevector <3 x float> %i.r, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.x = shufflevector <4 x float> %i.w, <4 x float> %i.e, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.y = shufflevector <2 x float> %i.d, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.z = shufflevector <3 x float> %i.y, <3 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.aa = fcmp nsz ogt <4 x float> %i.x, %i.z
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp ne i4 %i.ab, 0
  %op.rdx58 = or i1 %i.ac, %i.v
  br i1 %op.rdx58, label %ingamut.exit24.thread, label %ingamut.exit24

ingamut.exit24:                                   ; preds = %bb.d
  %i.ad = fcmp nsz ogt <3 x float> %i.r, zeroinitializer
  %i.ae = extractelement <4 x float> %i.l, i64 3  ; 2 uses
  %i.af = select <3 x i1> %i.ad, <3 x float> %i.r, <3 x float> zeroinitializer ; 2 uses
  %i.ag = fcmp nsz ogt <3 x float> %i.af, splat (float 1.000000e+00)
  %i.ah = select <3 x i1> %i.ag, <3 x float> splat (float 1.000000e+00), <3 x float> %i.af
  %i.ai = fmul nnan nsz <3 x float> %i.ah, splat (float 1.023000e+03) ; 2 uses
  %i.aj = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ai)
  %i.ak = fptosi <3 x float> %i.aj to <3 x i32>   ; 4 uses
  %i.al = extractelement <3 x i32> %i.ak, i64 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.am
  %i.ao = load <2 x float>, ptr %i.an, align 4, !tbaa !34 ; 2 uses
  %i.ap = extractelement <3 x i32> %i.ak, i64 2
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.aq
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !34
  %i.at = uitofp <3 x i32> %i.ak to <3 x float>
  %i.au = fsub nsz <3 x float> %i.ai, %i.at       ; 2 uses
  %i.av = extractelement <3 x i32> %i.ak, i64 0
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.aw
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !tbaa !34 ; 2 uses
  %i.az = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.au
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.ao, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bc = shufflevector <3 x float> %i.ba, <3 x float> %i.bb, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bd = fmul nsz <3 x float> %i.az, %i.bc
  %i.be = shufflevector <2 x float> %i.ay, <2 x float> %i.ao, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bf = shufflevector <3 x float> %i.be, <3 x float> %i.bb, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bg = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bf, <3 x float> %i.au, <3 x float> %i.bd) ; 3 uses
  %i.bh = shufflevector <8 x float> %i.a, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 0> ; 2 uses
  %i.bi = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.c, <4 x i32> <i32 0, i32 poison, i32 6, i32 0>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.bh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bl = shufflevector <3 x float> %i.bg, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bm = fmul nsz <4 x float> %i.bk, %i.bl
  %i.bn = insertelement <4 x float> %i.bh, float %.sroa.9.0.copyload, i64 1
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.c, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bp = shufflevector <3 x float> %i.bg, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.bp, <4 x float> %i.bm)
  %i.br = shufflevector <4 x float> %i.bi, <4 x float> %i.c, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.bs = shufflevector <3 x float> %i.bg, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bs, <4 x float> %i.bq) ; 4 uses
  %i.bu = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %i.bv = fcmp nsz ole <4 x float> %i.bt, %i.bu
  %i.bw = fcmp nsz oge <4 x float> %i.bt, %i.bu
  %i.bx = shufflevector <4 x i1> %i.bv, <4 x i1> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.by = extractelement <4 x float> %i.bt, i64 1
  %i.bz = fcmp nsz oge float %i.by, %i.ae
  %i.ca = extractelement <4 x float> %i.bt, i64 2
  %i.cb = fcmp nsz oge float %i.ca, %i.ae
  %i.cc = freeze <4 x i1> %i.bx
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %i.ce = icmp eq i4 %i.cd, -1
  %op.rdx56 = select i1 %i.ce, i1 %i.bz, i1 false
  %op.rdx57 = select i1 %op.rdx56, i1 %i.cb, i1 false
  br i1 %op.rdx57, label %clip_gamma.exit, label %ingamut.exit24.thread

ingamut.exit24.thread:                            ; preds = %bb.c, %bb.d, %ingamut.exit24
  %i.cf = fmul nsz float %2, %2
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %.sroa.028.4.vec.extract.i, float %.sroa.028.4.vec.extract.i, float %i.cf)
  %i.ch = tail call nsz float @llvm.sqrt.f32(float %i.cg) ; 3 uses
  %i.ci = tail call nsz float @llvm.atan2.f32(float %2, float %.sroa.028.4.vec.extract.i)
  %i.cj = fsub nsz float %.sroa.072.0.vec.extract.i, %i.f
  %i.ck = fsub nsz float %.sroa.3040.0.copyload, %i.f
  %i.cl = fdiv nsz float %i.cj, %i.ck
  %i.cm = tail call nsz float @llvm.maxnum.f32(float %i.cl, float 0.000000e+00)
  %i.cn = tail call nsz float @llvm.pow.f32(float %i.cm, float 3.000000e+00)
  %i.co = fmul nnan nsz float %i.cn, 1.800000e+00
  %i.cp = fdiv nsz float %i.ch, %.sroa.31.0.copyload
  %i.cq = tail call nsz float @llvm.minnum.f32(float %i.cp, float 1.000000e+00)
  %i.cr = fmul nsz float %i.cq, %i.co             ; 2 uses
  %i.cs = fsub nsz float %.sroa.072.0.vec.extract.i, %.sroa.3040.0.copyload ; 2 uses
  %sincos.i88.i = tail call nsz { float, float } @llvm.sincos.f32(float %i.ci) ; 2 uses
  %sin.i89.i = extractvalue { float, float } %sincos.i88.i, 0 ; 2 uses
  %cos.i90.i = extractvalue { float, float } %sincos.i88.i, 1 ; 2 uses
  %i.ct = shufflevector <8 x float> %i.a, <8 x float> poison, <3 x i32> <i32 2, i32 5, i32 poison>
  %i.cu = shufflevector <8 x float> %i.a, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.cv = shufflevector <8 x float> %i.a, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.cw = extractelement <4 x float> %i.l, i64 3  ; 2 uses
  %i.cx = shufflevector <4 x float> %i.c, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.cy = shufflevector <3 x float> %i.ct, <3 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  br label %bb.e

bb.e:                                             ; preds = %.thread, %ingamut.exit24.thread
  %.082.i = phi nsz float [ 5.000000e-01, %ingamut.exit24.thread ], [ %i.fs, %.thread ] ; 6 uses
  %.080.i = phi nsz float [ 1.000000e+00, %ingamut.exit24.thread ], [ %i.fp, %.thread ]
  %.0.i = phi nsz float [ 0.000000e+00, %ingamut.exit24.thread ], [ %i.fq, %.thread ] ; 3 uses
  %i.cz = tail call nsz float @llvm.pow.f32(float %.082.i, float %i.cr)
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.cz, float %.sroa.3040.0.copyload)
  %i.db = fmul nsz float %i.ch, %.082.i           ; 2 uses
  %i.dc = fmul nsz float %cos.i90.i, %i.db
  %i.dd = fmul nsz float %sin.i89.i, %i.db
  %i.de = insertelement <3 x float> poison, float %i.dc, i64 0
  %i.df = shufflevector <3 x float> %i.de, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dg = insertelement <3 x float> poison, float %i.da, i64 0
  %i.dh = shufflevector <3 x float> %i.dg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.di = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.df, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.dh)
  %i.dj = insertelement <3 x float> poison, float %i.dd, i64 0
  %i.dk = shufflevector <3 x float> %i.dj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dl = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dk, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.di) ; 5 uses
  %i.dm = extractelement <3 x float> %i.dl, i64 1
  %i.dn = fcmp nsz olt float %i.dm, %i.f
  br i1 %i.dn, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.do = extractelement <3 x float> %i.dl, i64 0
  %i.dp = fcmp nsz olt float %i.do, %i.f
  %i.dq = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.dr = fcmp nsz ogt <4 x float> %i.dq, %i.e
  %i.ds = fcmp nsz olt <4 x float> %i.dq, %i.e
  %i.dt = shufflevector <4 x i1> %i.dr, <4 x i1> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.du = bitcast <4 x i1> %i.dt to i4
  %i.dv = icmp ne i4 %i.du, 0
  %op.rdx55 = or i1 %i.dv, %i.dp
  br i1 %op.rdx55, label %.thread, label %ingamut.exit

ingamut.exit:                                     ; preds = %bb.f
  %i.dw = fcmp nsz ogt <3 x float> %i.dl, zeroinitializer
  %i.dx = select <3 x i1> %i.dw, <3 x float> %i.dl, <3 x float> zeroinitializer ; 2 uses
  %i.dy = fcmp nsz ogt <3 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = select <3 x i1> %i.dy, <3 x float> splat (float 1.000000e+00), <3 x float> %i.dx
  %i.ea = fmul nnan nsz <3 x float> %i.dz, splat (float 1.023000e+03) ; 2 uses
  %i.eb = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ea)
  %i.ec = fptosi <3 x float> %i.eb to <3 x i32>   ; 4 uses
  %i.ed = extractelement <3 x i32> %i.ec, i64 1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ee
  %i.eg = load <2 x float>, ptr %i.ef, align 4, !tbaa !34 ; 2 uses
  %i.eh = extractelement <3 x i32> %i.ec, i64 2
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ei
  %i.ek = load <2 x float>, ptr %i.ej, align 4, !tbaa !34
  %i.el = uitofp <3 x i32> %i.ec to <3 x float>
  %i.em = fsub nsz <3 x float> %i.ea, %i.el       ; 2 uses
  %i.en = extractelement <3 x i32> %i.ec, i64 0
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.eo
  %i.eq = load <2 x float>, ptr %i.ep, align 4, !tbaa !34 ; 2 uses
  %i.er = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.em
  %i.es = shufflevector <2 x float> %i.eq, <2 x float> %i.eg, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.et = shufflevector <2 x float> %i.ek, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.eu = shufflevector <3 x float> %i.es, <3 x float> %i.et, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ev = fmul nsz <3 x float> %i.er, %i.eu
  %i.ew = shufflevector <2 x float> %i.eq, <2 x float> %i.eg, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.ex = shufflevector <3 x float> %i.ew, <3 x float> %i.et, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ey = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ex, <3 x float> %i.em, <3 x float> %i.ev) ; 3 uses
  %i.ez = shufflevector <3 x float> %i.ey, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fa = fmul nsz <4 x float> %i.cv, %i.ez
  %i.fb = shufflevector <3 x float> %i.ey, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.fb, <4 x float> %i.fa)
  %i.fd = shufflevector <3 x float> %i.ey, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fe = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.fd, <4 x float> %i.fc) ; 4 uses
  %i.ff = fcmp nsz ole <4 x float> %i.fe, %i.l
  %i.fg = fcmp nsz oge <4 x float> %i.fe, %i.l
  %i.fh = shufflevector <4 x i1> %i.ff, <4 x i1> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fi = extractelement <4 x float> %i.fe, i64 1
  %i.fj = fcmp nsz oge float %i.fi, %i.cw
  %i.fk = extractelement <4 x float> %i.fe, i64 2
  %i.fl = fcmp nsz oge float %i.fk, %i.cw
  %i.fm = freeze <4 x i1> %i.fh
  %i.fn = bitcast <4 x i1> %i.fm to i4
  %i.fo = icmp eq i4 %i.fn, -1
  %op.rdx = select i1 %i.fo, i1 %i.fj, i1 false
  %op.rdx54 = select i1 %op.rdx, i1 %i.fl, i1 false
  %.fr61 = freeze i1 %op.rdx54
  br i1 %.fr61, label %.thread, label %bb.g

bb.g:                                             ; preds = %ingamut.exit
  br label %.thread

.thread:                                          ; preds = %bb.g, %ingamut.exit, %bb.f, %bb.e
  %i.fp = phi float [ %.082.i, %bb.e ], [ %.082.i, %bb.g ], [ %.082.i, %bb.f ], [ %.080.i, %ingamut.exit ] ; 3 uses
  %i.fq = phi float [ %.0.i, %bb.e ], [ %.0.i, %bb.g ], [ %.0.i, %bb.f ], [ %.082.i, %ingamut.exit ] ; 3 uses
  %i.fr = fadd nsz float %i.fp, %i.fq
  %i.fs = fmul nsz float %i.fr, 5.000000e-01      ; 3 uses
  %i.ft = fsub nsz float %i.fp, %i.fq
  %i.fu = fcmp nsz ogt float %i.ft, %i.h
  br i1 %i.fu, label %bb.e, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %.thread
  %i.fv = tail call nsz float @llvm.pow.f32(float %i.fs, float %i.cr)
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.fv, float %.sroa.3040.0.copyload)
  %.sroa.08.0.vec.insert.i98.i = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fx = fmul nsz float %i.ch, %i.fs             ; 2 uses
  %i.fy = fmul nsz float %cos.i90.i, %i.fx
  %.sroa.07.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i98.i, float %i.fy, i64 1
  %i.fz = fmul nsz float %sin.i89.i, %i.fx
  br label %clip_gamma.exit

clip_gamma.exit:                                  ; preds = %bb.b, %ingamut.exit24, %bb.h
  %.sroa.077.4.vec.insert.pn.i = phi <2 x float> [ %.sroa.077.4.vec.insert.i59, %bb.b ], [ %.sroa.07.4.vec.insert.i.i, %bb.h ], [ %1, %ingamut.exit24 ]
  %.pn103.i = phi float [ 0.000000e+00, %bb.b ], [ %i.fz, %bb.h ], [ %2, %ingamut.exit24 ]
  %.pn.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.077.4.vec.insert.pn.i, 0
  %.fca.1.insert.merged.i = insertvalue { <2 x float>, float } %.pn.i, float %.pn103.i, 1
  ret { <2 x float>, float } %.fca.1.insert.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal { <2 x float>, float } @saturation(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, float %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.529.0.copyload = load float, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 340
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.sroa.832.0.copyload = load float, ptr %.sroa.832.0..sroa_idx, align 4
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.sroa.1135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.1135.0.copyload = load float, ptr %.sroa.1135.0..sroa_idx, align 8
  %.sroa.014.0.vec.extract.i19 = extractelement <2 x float> %1, i64 0
  %.sroa.014.4.vec.extract.i20 = extractelement <2 x float> %1, i64 1
  %i.b = tail call nsz float @llvm.fmuladd.f32(float %.sroa.014.4.vec.extract.i20, float 3.261510e-02, float %.sroa.014.0.vec.extract.i19)
  %i.c = tail call nsz float @llvm.fmuladd.f32(float %2, float f0xBF2D4877, float %i.b) ; 2 uses
  %i.d = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.e = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> <float -1.138760e-01, float f0x3DC7D234>, <2 x float> %i.e)
  %i.g = insertelement <2 x float> poison, float %2, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> <float 1.332170e-01, float 2.052260e-01>, <2 x float> %i.f) ; 2 uses
  %i.j = fcmp nsz ogt <2 x float> %i.i, zeroinitializer
  %i.k = select <2 x i1> %i.j, <2 x float> %i.i, <2 x float> zeroinitializer ; 2 uses
  %i.l = fcmp nsz ogt <2 x float> %i.k, splat (float 1.000000e+00)
  %i.m = select <2 x i1> %i.l, <2 x float> splat (float 1.000000e+00), <2 x float> %i.k
  %i.n = fmul nnan nsz <2 x float> %i.m, splat (float 1.023000e+03) ; 3 uses
  %i.o = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.n)
  %i.p = fptosi <2 x float> %i.o to <2 x i32>     ; 3 uses
  %i.q = extractelement <2 x i32> %i.p, i64 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = uitofp <2 x i32> %i.p to <2 x float>     ; 2 uses
  %foldExtExtBinop = fsub nsz <2 x float> %i.n, %i.u
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %foldExtExtBinop37 = fsub nsz <2 x float> %i.n, %i.u
  %i.w = extractelement <2 x float> %foldExtExtBinop37, i64 0 ; 2 uses
  %i.x = extractelement <2 x i32> %i.p, i64 0
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !34
  %i.ac = load float, ptr %i.z, align 4, !tbaa !34
  %i.ad = fsub nnan nsz float 1.000000e+00, %i.w
  %i.ae = fmul nsz float %i.ad, %i.ac
  %i.af = fcmp nsz ogt float %i.c, 0.000000e+00
  %i.ag = select nsz i1 %i.af, float %i.c, float 0.000000e+00 ; 2 uses
  %i.ah = fcmp nsz ogt float %i.ag, 1.000000e+00
  %..i.i26 = select nsz i1 %i.ah, float 1.000000e+00, float %i.ag
  %i.ai = load <2 x float>, ptr %i.a, align 8
  %i.aj = load <2 x float>, ptr %.sroa.630.0..sroa_idx, align 4
  %i.ak = load <2 x float>, ptr %.sroa.933.0..sroa_idx, align 8
  %i.al = load float, ptr %i.t, align 4, !tbaa !34
  %i.am = load float, ptr %i.s, align 4, !tbaa !34
  %i.an = fsub nnan nsz float 1.000000e+00, %i.v
  %i.ao = fmul nsz float %i.an, %i.am
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %i.al, float %i.v, float %i.ao)
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.w, float %i.ae)
  %i.ar = fmul nnan nsz float %..i.i26, 1.023000e+03 ; 2 uses
  %i.as = tail call nsz float @llvm.floor.f32(float %i.ar)
  %i.at = fptosi float %i.as to i32               ; 2 uses
  %i.au = uitofp nsz nneg i32 %i.at to float
  %i.av = fsub nsz float %i.ar, %i.au             ; 2 uses
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !34
  %i.bb = fsub nnan nsz float 1.000000e+00, %i.av
  %i.bc = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bd = insertelement <4 x float> %i.bc, float %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bg = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bi = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.aq, i64 1
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bl = fmul nsz <4 x float> %i.bh, %i.bk
  %i.bm = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.bc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bq = insertelement <4 x float> poison, float %i.av, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.ap, i64 1
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bs, <4 x float> %i.bl) ; 4 uses
  %i.bu = extractelement <4 x float> %i.bt, i64 0 ; 3 uses
  %i.bv = extractelement <4 x float> %i.bt, i64 1
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %.sroa.529.0.copyload, float %i.bu, float %i.bv)
  %i.bx = extractelement <4 x float> %i.bt, i64 2
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %.sroa.832.0.copyload, float %i.bu, float %i.bx)
  %i.bz = extractelement <4 x float> %i.bt, i64 3
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %.sroa.1135.0.copyload, float %i.bu, float %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 580
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 612
  %.sroa.0.sroa.11.0.copyload = load float, ptr %.sroa.0.sroa.11.0..sroa_idx, align 4, !tbaa !32
  %i.cc = load <8 x float>, ptr %i.cb, align 4    ; 3 uses
  %i.cd = shufflevector <8 x float> %i.cc, <8 x float> poison, <3 x i32> <i32 7, i32 1, i32 4>
  %i.ce = insertelement <3 x float> poison, float %i.by, i64 0
  %i.cf = shufflevector <3 x float> %i.ce, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cg = fmul nsz <3 x float> %i.cd, %i.cf
  %i.ch = shufflevector <8 x float> %i.cc, <8 x float> poison, <3 x i32> <i32 6, i32 0, i32 3>
  %i.ci = insertelement <3 x float> poison, float %i.bw, i64 0
  %i.cj = shufflevector <3 x float> %i.ci, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ck = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ch, <3 x float> %i.cj, <3 x float> %i.cg)
  %i.cl = shufflevector <8 x float> %i.cc, <8 x float> poison, <3 x i32> <i32 poison, i32 2, i32 5>
  %i.cm = insertelement <3 x float> %i.cl, float %.sroa.0.sroa.11.0.copyload, i64 0
  %i.cn = insertelement <3 x float> poison, float %i.ca, i64 0
  %i.co = shufflevector <3 x float> %i.cn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cp = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cm, <3 x float> %i.co, <3 x float> %i.ck)
  %i.cq = fmul nsz <3 x float> %i.cp, splat (float f0x38D1B717)
  %i.cr = tail call nsz <3 x float> @llvm.maxnum.v3f32(<3 x float> %i.cq, <3 x float> zeroinitializer)
  %i.cs = tail call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.cr, <3 x float> splat (float f0x3E232000)) ; 2 uses
  %i.ct = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cs, <3 x float> splat (float f0x4196D000), <3 x float> splat (float f0x3F560000))
  %i.cu = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cs, <3 x float> splat (float 1.868750e+01), <3 x float> splat (float 1.000000e+00))
  %i.cv = fdiv nsz <3 x float> %i.ct, %i.cu
  %i.cw = tail call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.cv, <3 x float> splat (float f0x429DB000)) ; 6 uses
  %i.cx = shufflevector <3 x float> %i.cw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cy = fmul nsz <2 x float> %i.cx, <float 4.000000e-01, float -4.851000e+00>
  %i.cz = shufflevector <3 x float> %i.cw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> <float 4.000000e-01, float 4.455000e+00>, <2 x float> %i.cy)
  %i.db = shufflevector <3 x float> %i.cw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> <float 2.000000e-01, float 3.960000e-01>, <2 x float> %i.da)
  %i.dd = extractelement <3 x float> %i.cw, i64 2
  %i.de = fmul nsz float %i.dd, 3.572000e-01
  %i.df = extractelement <3 x float> %i.cw, i64 1
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %i.df, float f0x3F4E3BCD, float %i.de)
  %i.dh = extractelement <3 x float> %i.cw, i64 0
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float -1.162800e+00, float %i.dg)
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.dc, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.di, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define internal { <2 x float>, float } @absolute(ptr noundef %0, <2 x float> %1, float %2) #7 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 508
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 516
  %.sroa.0.sroa.5.0.copyload = load float, ptr %.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.sroa.0.sroa.8.0.copyload = load float, ptr %.sroa.0.sroa.8.0..sroa_idx, align 4
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 532
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 540
  %.sroa.0.sroa.11.0.copyload = load float, ptr %.sroa.0.sroa.11.0..sroa_idx, align 4, !tbaa !32
  %.sroa.014.0.vec.extract.i = extractelement <2 x float> %1, i64 0
  %.sroa.014.4.vec.extract.i = extractelement <2 x float> %1, i64 1
  %i.d = tail call nsz float @llvm.fmuladd.f32(float %.sroa.014.4.vec.extract.i, float 3.261510e-02, float %.sroa.014.0.vec.extract.i)
  %i.e = tail call nsz float @llvm.fmuladd.f32(float %2, float f0xBF2D4877, float %i.d) ; 2 uses
  %i.f = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.g = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.f, <2 x float> <float -1.138760e-01, float f0x3DC7D234>, <2 x float> %i.g)
  %i.i = insertelement <2 x float> poison, float %2, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> <float 1.332170e-01, float 2.052260e-01>, <2 x float> %i.h) ; 2 uses
  %i.l = fcmp nsz ogt <2 x float> %i.k, zeroinitializer
  %i.m = select <2 x i1> %i.l, <2 x float> %i.k, <2 x float> zeroinitializer ; 2 uses
  %i.n = fcmp nsz ogt <2 x float> %i.m, splat (float 1.000000e+00)
  %i.o = select <2 x i1> %i.n, <2 x float> splat (float 1.000000e+00), <2 x float> %i.m
  %i.p = fmul nnan nsz <2 x float> %i.o, splat (float 1.023000e+03) ; 3 uses
  %i.q = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.p)
  %i.r = fptosi <2 x float> %i.q to <2 x i32>     ; 3 uses
  %i.s = extractelement <2 x i32> %i.r, i64 1
  %i.t = zext i32 %i.s to i64
end_hunk_0
begin_hunk_1_@absolute:bb.a
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bk = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.as, i64 1
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bn = fmul nsz <4 x float> %i.bj, %i.bm
  %i.bo = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bs = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.ar, i64 1
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bu, <4 x float> %i.bn) ; 4 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  %i.bx = extractelement <4 x float> %i.bv, i64 3
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0.sroa.11.0.copyload, float %i.bw, float %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ca = insertelement <2 x float> poison, float %.sroa.0.sroa.5.0.copyload, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %.sroa.0.sroa.8.0.copyload, i64 1
  %i.cc = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cd = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.cd)
  store <2 x float> %i.ce, ptr %i.a, align 8, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.by, ptr %i.cf, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @ff_sws_matrix3x3_apply(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.a) #13
  %i.ch = load float, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %i.ci = load float, ptr %i.bz, align 4, !tbaa !34 ; 2 uses
  %i.cj = load float, ptr %i.cf, align 8, !tbaa !34
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 500
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ck = fmul nsz float %i.ci, %.sroa.10.0.copyload
  %i.cl = call nsz float @llvm.fmuladd.f32(float %.sroa.9.0.copyload, float %i.ch, float %i.ck)
  %i.cm = load <4 x float>, ptr %i.b, align 8     ; 3 uses
  %i.cn = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = shufflevector <4 x float> %i.cm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cs = shufflevector <4 x float> %i.cm, <4 x float> %i.cr, <2 x i32> <i32 1, i32 4>
  %i.ct = fmul nsz <2 x float> %i.cp, %i.cs
  %i.cu = shufflevector <4 x float> %i.cm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cv = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cw, <2 x float> %i.ct)
  %i.cy = shufflevector <2 x float> %i.cq, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3>
  %i.cz = insertelement <2 x float> poison, float %i.cj, i64 0 ; 2 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.da, <2 x float> %i.cx)
  %i.dc = fmul nsz <2 x float> %i.db, splat (float f0x38D1B717)
  %i.dd = call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dc, <2 x float> zeroinitializer)
  %i.de = call nsz <2 x float> @llvm.pow.v2f32(<2 x float> %i.dd, <2 x float> splat (float f0x3E232000))
  %i.df = insertelement <4 x float> poison, float %.sroa.11.0.copyload, i64 0
  %i.dg = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dj = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> <float poison, float f0x4196D000, float 1.868750e+01, float f0x4196D000>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dl = insertelement <4 x float> <float poison, float f0x3F560000, float 1.000000e+00, float f0x3F560000>, float %i.cl, i64 0
  %i.dm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.dk, <4 x float> %i.dl) ; 3 uses
  %i.dn = extractelement <4 x float> %i.dm, i64 0
  %i.do = fmul nsz float %i.dn, f0x38D1B717
  %i.dp = call nsz float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  %i.dq = call nsz float @llvm.pow.f32(float %i.dp, float f0x3E232000) ; 2 uses
  %i.dr = call nsz float @llvm.fmuladd.f32(float %i.dq, float f0x4196D000, float f0x3F560000)
  %i.ds = shufflevector <4 x float> %i.dm, <4 x float> %i.dg, <3 x i32> <i32 poison, i32 2, i32 5>
  %i.dt = insertelement <3 x float> %i.ds, float %i.dq, i64 0
  %i.du = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dt, <3 x float> <float 1.868750e+01, float 1.000000e+00, float 1.868750e+01>, <3 x float> <float 1.000000e+00, float -0.000000e+00, float 1.000000e+00>)
  %i.dv = shufflevector <4 x float> %i.dm, <4 x float> poison, <3 x i32> <i32 poison, i32 1, i32 3>
  %i.dw = insertelement <3 x float> %i.dv, float %i.dr, i64 0
  %i.dx = fdiv nsz <3 x float> %i.dw, %i.du
  %i.dy = call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.dx, <3 x float> splat (float f0x429DB000)) ; 6 uses
  %i.dz = shufflevector <3 x float> %i.dy, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ea = fmul nsz <2 x float> %i.dz, <float 4.000000e-01, float -4.851000e+00>
  %i.eb = shufflevector <3 x float> %i.dy, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> <float 4.000000e-01, float 4.455000e+00>, <2 x float> %i.ea)
  %i.ed = shufflevector <3 x float> %i.dy, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ee = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> <float 2.000000e-01, float 3.960000e-01>, <2 x float> %i.ec) ; 5 uses
  %i.ef = extractelement <3 x float> %i.dy, i64 2
  %i.eg = fmul nsz float %i.ef, 3.572000e-01
  %i.eh = extractelement <3 x float> %i.dy, i64 1
  %i.ei = call nsz float @llvm.fmuladd.f32(float %i.eh, float f0x3F4E3BCD, float %i.eg)
  %i.ej = extractelement <3 x float> %i.dy, i64 0
  %i.ek = call nsz float @llvm.fmuladd.f32(float %i.ej, float -1.162800e+00, float %i.ei) ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 548
  %.sroa.966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.el = load <8 x float>, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.966.0.copyload = load float, ptr %.sroa.966.0..sroa_idx, align 4
  %i.em = load <2 x float>, ptr %.sroa.562.0..sroa_idx, align 4
  %i.en = load <4 x float>, ptr %.sroa.13.0..sroa_idx, align 4 ; 4 uses
  %.sroa.2174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.eo = load <2 x float>, ptr %.sroa.2174.0..sroa_idx, align 8 ; 4 uses
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 3 uses
  %i.eq = extractelement <2 x float> %i.eo, i64 0 ; 7 uses
  %.sroa.3080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.sroa.3080.0.copyload = load float, ptr %.sroa.3080.0..sroa_idx, align 8 ; 4 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 676
  %.sroa.31.0.copyload = load float, ptr %.sroa.31.0..sroa_idx, align 4
  %i.er = extractelement <2 x float> %i.ee, i64 0 ; 4 uses
  %i.es = fmul nsz float %i.er, 5.000000e-05
  %i.et = call nsz float @llvm.maxnum.f32(float %i.es, float 1.000000e-07)
  %i.eu = fcmp nsz ugt float %i.er, %i.eq
  br i1 %i.eu, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.077.4.vec.insert.i103 = insertelement <2 x float> %i.eo, float 0.000000e+00, i64 1
  br label %clip_gamma.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ev = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 8
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ex = fadd nsz <4 x float> %i.ew, <float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A, float f0xB8D1B717> ; 5 uses
  %i.ey = shufflevector <2 x float> %i.ee, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ez = shufflevector <2 x float> %i.ee, <2 x float> poison, <3 x i32> zeroinitializer
  %i.fa = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ey, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.ez)
  %i.fb = insertelement <3 x float> poison, float %i.ek, i64 0
  %i.fc = shufflevector <3 x float> %i.fb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fd = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fc, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.fa) ; 6 uses
  %i.fe = extractelement <3 x float> %i.fd, i64 1
  %i.ff = fcmp nsz olt float %i.fe, %i.eq
  br i1 %i.ff, label %ingamut.exit50.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fg = extractelement <3 x float> %i.fd, i64 0
  %i.fh = fcmp nsz olt float %i.fg, %i.eq
  %i.fi = shufflevector <3 x float> %i.fd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> %i.ep, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fk = shufflevector <2 x float> %i.eo, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.fl = shufflevector <3 x float> %i.fk, <3 x float> %i.fd, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fm = fcmp nsz ogt <4 x float> %i.fj, %i.fl
  %i.fn = bitcast <4 x i1> %i.fm to i4
  %i.fo = icmp ne i4 %i.fn, 0
  %op.rdx99 = or i1 %i.fo, %i.fh
  br i1 %op.rdx99, label %ingamut.exit50.thread, label %ingamut.exit50

ingamut.exit50:                                   ; preds = %bb.d
  %i.fp = fcmp nsz ogt <3 x float> %i.fd, zeroinitializer
  %i.fq = extractelement <4 x float> %i.ex, i64 3 ; 2 uses
  %i.fr = select <3 x i1> %i.fp, <3 x float> %i.fd, <3 x float> zeroinitializer ; 2 uses
  %i.fs = fcmp nsz ogt <3 x float> %i.fr, splat (float 1.000000e+00)
  %i.ft = select <3 x i1> %i.fs, <3 x float> splat (float 1.000000e+00), <3 x float> %i.fr
  %i.fu = fmul nnan nsz <3 x float> %i.ft, splat (float 1.023000e+03) ; 2 uses
  %i.fv = call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.fu)
  %i.fw = fptosi <3 x float> %i.fv to <3 x i32>   ; 4 uses
  %i.fx = extractelement <3 x i32> %i.fw, i64 1
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.fy
  %i.ga = load <2 x float>, ptr %i.fz, align 4, !tbaa !34 ; 2 uses
  %i.gb = extractelement <3 x i32> %i.fw, i64 2
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.gc
  %i.ge = load <2 x float>, ptr %i.gd, align 4, !tbaa !34
  %i.gf = uitofp <3 x i32> %i.fw to <3 x float>
  %i.gg = fsub nsz <3 x float> %i.fu, %i.gf       ; 2 uses
  %i.gh = extractelement <3 x i32> %i.fw, i64 0
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.gi
  %i.gk = load <2 x float>, ptr %i.gj, align 4, !tbaa !34 ; 2 uses
  %i.gl = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.gg
  %i.gm = shufflevector <2 x float> %i.gk, <2 x float> %i.ga, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.gn = shufflevector <2 x float> %i.ge, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.go = shufflevector <3 x float> %i.gm, <3 x float> %i.gn, <3 x i32> <i32 0, i32 1, i32 3>
  %i.gp = fmul nsz <3 x float> %i.gl, %i.go
  %i.gq = shufflevector <2 x float> %i.gk, <2 x float> %i.ga, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.gr = shufflevector <3 x float> %i.gq, <3 x float> %i.gn, <3 x i32> <i32 0, i32 1, i32 4>
  %i.gs = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gr, <3 x float> %i.gg, <3 x float> %i.gp) ; 3 uses
  %i.gt = shufflevector <8 x float> %i.el, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 0> ; 2 uses
  %i.gu = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> %i.en, <4 x i32> <i32 0, i32 poison, i32 6, i32 0>
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> %i.gt, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.gx = shufflevector <3 x float> %i.gs, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gy = fmul nsz <4 x float> %i.gw, %i.gx
  %i.gz = insertelement <4 x float> %i.gt, float %.sroa.966.0.copyload, i64 1
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hb = shufflevector <3 x float> %i.gs, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.hb, <4 x float> %i.gy)
  %i.hd = shufflevector <4 x float> %i.gu, <4 x float> %i.en, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.he = shufflevector <3 x float> %i.gs, <3 x float> poison, <4 x i32> zeroinitializer
  %i.hf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.he, <4 x float> %i.hc) ; 4 uses
  %i.hg = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %i.hh = fcmp nsz ole <4 x float> %i.hf, %i.hg
  %i.hi = fcmp nsz oge <4 x float> %i.hf, %i.hg
  %i.hj = shufflevector <4 x i1> %i.hh, <4 x i1> %i.hi, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hk = extractelement <4 x float> %i.hf, i64 1
  %i.hl = fcmp nsz oge float %i.hk, %i.fq
  %i.hm = extractelement <4 x float> %i.hf, i64 2
  %i.hn = fcmp nsz oge float %i.hm, %i.fq
  %i.ho = freeze <4 x i1> %i.hj
  %i.hp = bitcast <4 x i1> %i.ho to i4
  %i.hq = icmp eq i4 %i.hp, -1
  %op.rdx97 = select i1 %i.hq, i1 %i.hl, i1 false
  %op.rdx98 = select i1 %op.rdx97, i1 %i.hn, i1 false
  br i1 %op.rdx98, label %clip_gamma.exit, label %ingamut.exit50.thread

ingamut.exit50.thread:                            ; preds = %bb.c, %bb.d, %ingamut.exit50
  %i.hr = fmul nsz float %i.ek, %i.ek
  %i.hs = extractelement <2 x float> %i.ee, i64 1 ; 3 uses
  %i.ht = call nsz float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hr)
  %i.hu = call nsz float @llvm.sqrt.f32(float %i.ht) ; 3 uses
  %i.hv = call nsz float @llvm.atan2.f32(float %i.ek, float %i.hs)
  %i.hw = fsub nsz float %i.er, %i.eq
  %i.hx = fsub nsz float %.sroa.3080.0.copyload, %i.eq
  %i.hy = fdiv nsz float %i.hw, %i.hx
  %i.hz = call nsz float @llvm.maxnum.f32(float %i.hy, float 0.000000e+00)
  %i.ia = call nsz float @llvm.pow.f32(float %i.hz, float 3.000000e+00)
  %i.ib = fmul nnan nsz float %i.ia, 1.800000e+00
  %i.ic = fdiv nsz float %i.hu, %.sroa.31.0.copyload
  %i.id = call nsz float @llvm.minnum.f32(float %i.ic, float 1.000000e+00)
  %i.ie = fmul nsz float %i.id, %i.ib             ; 2 uses
  %i.if = fsub nsz float %i.er, %.sroa.3080.0.copyload ; 2 uses
  %sincos.i88.i = call nsz { float, float } @llvm.sincos.f32(float %i.hv) ; 2 uses
  %sin.i89.i = extractvalue { float, float } %sincos.i88.i, 0 ; 2 uses
  %cos.i90.i = extractvalue { float, float } %sincos.i88.i, 1 ; 2 uses
  %i.ig = shufflevector <8 x float> %i.el, <8 x float> poison, <3 x i32> <i32 2, i32 5, i32 poison>
  %i.ih = shufflevector <8 x float> %i.el, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.ii = shufflevector <8 x float> %i.el, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.ij = extractelement <4 x float> %i.ex, i64 3 ; 2 uses
  %i.ik = shufflevector <4 x float> %i.en, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.il = shufflevector <3 x float> %i.ig, <3 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  br label %bb.e

bb.e:                                             ; preds = %.thread, %ingamut.exit50.thread
  %.082.i = phi nsz float [ 5.000000e-01, %ingamut.exit50.thread ], [ %i.lf, %.thread ] ; 6 uses
  %.080.i = phi nsz float [ 1.000000e+00, %ingamut.exit50.thread ], [ %i.lc, %.thread ]
  %.0.i = phi nsz float [ 0.000000e+00, %ingamut.exit50.thread ], [ %i.ld, %.thread ] ; 3 uses
  %i.im = call nsz float @llvm.pow.f32(float %.082.i, float %i.ie)
  %i.in = call nsz float @llvm.fmuladd.f32(float %i.if, float %i.im, float %.sroa.3080.0.copyload)
  %i.io = fmul nsz float %i.hu, %.082.i           ; 2 uses
  %i.ip = fmul nsz float %cos.i90.i, %i.io
  %i.iq = fmul nsz float %sin.i89.i, %i.io
  %i.ir = insertelement <3 x float> poison, float %i.ip, i64 0
  %i.is = shufflevector <3 x float> %i.ir, <3 x float> poison, <3 x i32> zeroinitializer
  %i.it = insertelement <3 x float> poison, float %i.in, i64 0
  %i.iu = shufflevector <3 x float> %i.it, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iv = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.is, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.iu)
  %i.iw = insertelement <3 x float> poison, float %i.iq, i64 0
  %i.ix = shufflevector <3 x float> %i.iw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iy = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ix, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.iv) ; 5 uses
  %i.iz = extractelement <3 x float> %i.iy, i64 1
  %i.ja = fcmp nsz olt float %i.iz, %i.eq
  br i1 %i.ja, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jb = extractelement <3 x float> %i.iy, i64 0
  %i.jc = fcmp nsz olt float %i.jb, %i.eq
  %i.jd = shufflevector <3 x float> %i.iy, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.je = fcmp nsz ogt <4 x float> %i.jd, %i.ep
  %i.jf = fcmp nsz olt <4 x float> %i.jd, %i.ep
  %i.jg = shufflevector <4 x i1> %i.je, <4 x i1> %i.jf, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.jh = bitcast <4 x i1> %i.jg to i4
  %i.ji = icmp ne i4 %i.jh, 0
  %op.rdx96 = or i1 %i.ji, %i.jc
  br i1 %op.rdx96, label %.thread, label %ingamut.exit

ingamut.exit:                                     ; preds = %bb.f
  %i.jj = fcmp nsz ogt <3 x float> %i.iy, zeroinitializer
  %i.jk = select <3 x i1> %i.jj, <3 x float> %i.iy, <3 x float> zeroinitializer ; 2 uses
  %i.jl = fcmp nsz ogt <3 x float> %i.jk, splat (float 1.000000e+00)
  %i.jm = select <3 x i1> %i.jl, <3 x float> splat (float 1.000000e+00), <3 x float> %i.jk
  %i.jn = fmul nnan nsz <3 x float> %i.jm, splat (float 1.023000e+03) ; 2 uses
  %i.jo = call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.jn)
  %i.jp = fptosi <3 x float> %i.jo to <3 x i32>   ; 4 uses
  %i.jq = extractelement <3 x i32> %i.jp, i64 1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.jr
  %i.jt = load <2 x float>, ptr %i.js, align 4, !tbaa !34 ; 2 uses
  %i.ju = extractelement <3 x i32> %i.jp, i64 2
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.jv
  %i.jx = load <2 x float>, ptr %i.jw, align 4, !tbaa !34
  %i.jy = uitofp <3 x i32> %i.jp to <3 x float>
  %i.jz = fsub nsz <3 x float> %i.jn, %i.jy       ; 2 uses
  %i.ka = extractelement <3 x i32> %i.jp, i64 0
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.kb
  %i.kd = load <2 x float>, ptr %i.kc, align 4, !tbaa !34 ; 2 uses
  %i.ke = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.jz
  %i.kf = shufflevector <2 x float> %i.kd, <2 x float> %i.jt, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.kg = shufflevector <2 x float> %i.jx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.kh = shufflevector <3 x float> %i.kf, <3 x float> %i.kg, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ki = fmul nsz <3 x float> %i.ke, %i.kh
  %i.kj = shufflevector <2 x float> %i.kd, <2 x float> %i.jt, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.kk = shufflevector <3 x float> %i.kj, <3 x float> %i.kg, <3 x i32> <i32 0, i32 1, i32 4>
  %i.kl = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kk, <3 x float> %i.jz, <3 x float> %i.ki) ; 3 uses
  %i.km = shufflevector <3 x float> %i.kl, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.kn = fmul nsz <4 x float> %i.ii, %i.km
  %i.ko = shufflevector <3 x float> %i.kl, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> %i.ko, <4 x float> %i.kn)
  %i.kq = shufflevector <3 x float> %i.kl, <3 x float> poison, <4 x i32> zeroinitializer
  %i.kr = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %i.kq, <4 x float> %i.kp) ; 4 uses
  %i.ks = fcmp nsz ole <4 x float> %i.kr, %i.ex
  %i.kt = fcmp nsz oge <4 x float> %i.kr, %i.ex
  %i.ku = shufflevector <4 x i1> %i.ks, <4 x i1> %i.kt, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.kv = extractelement <4 x float> %i.kr, i64 1
  %i.kw = fcmp nsz oge float %i.kv, %i.ij
  %i.kx = extractelement <4 x float> %i.kr, i64 2
  %i.ky = fcmp nsz oge float %i.kx, %i.ij
  %i.kz = freeze <4 x i1> %i.ku
  %i.la = bitcast <4 x i1> %i.kz to i4
  %i.lb = icmp eq i4 %i.la, -1
  %op.rdx = select i1 %i.lb, i1 %i.kw, i1 false
  %op.rdx95 = select i1 %op.rdx, i1 %i.ky, i1 false
  %.fr105 = freeze i1 %op.rdx95
  br i1 %.fr105, label %.thread, label %bb.g

bb.g:                                             ; preds = %ingamut.exit
  br label %.thread

.thread:                                          ; preds = %bb.g, %ingamut.exit, %bb.f, %bb.e
  %i.lc = phi float [ %.082.i, %bb.e ], [ %.082.i, %bb.g ], [ %.082.i, %bb.f ], [ %.080.i, %ingamut.exit ] ; 3 uses
  %i.ld = phi float [ %.0.i, %bb.e ], [ %.0.i, %bb.g ], [ %.0.i, %bb.f ], [ %.082.i, %ingamut.exit ] ; 3 uses
  %i.le = fadd nsz float %i.lc, %i.ld
  %i.lf = fmul nsz float %i.le, 5.000000e-01      ; 3 uses
  %i.lg = fsub nsz float %i.lc, %i.ld
  %i.lh = fcmp nsz ogt float %i.lg, %i.et
  br i1 %i.lh, label %bb.e, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %.thread
  %i.li = call nsz float @llvm.pow.f32(float %i.lf, float %i.ie)
  %i.lj = call nsz float @llvm.fmuladd.f32(float %i.if, float %i.li, float %.sroa.3080.0.copyload)
  %.sroa.08.0.vec.insert.i98.i = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.lk = fmul nsz float %i.hu, %i.lf             ; 2 uses
  %i.ll = fmul nsz float %cos.i90.i, %i.lk
  %.sroa.07.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i98.i, float %i.ll, i64 1
  %i.lm = fmul nsz float %sin.i89.i, %i.lk
  br label %clip_gamma.exit

clip_gamma.exit:                                  ; preds = %bb.b, %ingamut.exit50, %bb.h
  %.sroa.077.4.vec.insert.pn.i = phi <2 x float> [ %.sroa.077.4.vec.insert.i103, %bb.b ], [ %.sroa.07.4.vec.insert.i.i, %bb.h ], [ %i.ee, %ingamut.exit50 ]
  %.pn103.i = phi float [ 0.000000e+00, %bb.b ], [ %i.lm, %bb.h ], [ %i.ek, %ingamut.exit50 ]
  %.pn.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.077.4.vec.insert.pn.i, 0
  %.fca.1.insert.merged.i = insertvalue { <2 x float>, float } %.pn.i, float %.pn103.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret { <2 x float>, float } %.fca.1.insert.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @tone_map_setup(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !34 ; 4 uses
  %i.d = extractelement <2 x float> %i.c, i64 0   ; 6 uses
  %i.e = load float, ptr %i.b, align 4, !tbaa !38 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load float, ptr %i.f, align 8, !tbaa !39 ; 9 uses
  %.in.v = select i1 %1, i64 204, i64 212
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.h = load float, ptr %.in, align 4, !tbaa !34 ; 7 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load float, ptr %i.i, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi nsz float [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  switch i32 %i.m, label %bb.h [
    i32 0, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = fcmp nsz une float %i.k, 0.000000e+00
  %i.q = fmul nsz float %i.g, 6.000000e-01
  %i.r = tail call nsz float @llvm.fmuladd.f32(float %i.h, float 4.000000e-01, float %i.q)
  %i.s = select nsz i1 %i.p, float %i.k, float %i.r ; 2 uses
  %i.t = insertelement <2 x float> %i.c, float %i.g, i64 1
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = fmul nsz <4 x float> %i.u, <float f0x3E4CCCCC, float f0x3E4CCCCC, float f0x3F666666, float f0x3F666666>
  %i.w = insertelement <4 x float> poison, float %i.e, i64 0
  %i.x = insertelement <4 x float> %i.w, float %i.h, i64 1
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.z = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> <float 8.000000e-01, float 8.000000e-01, float 1.000000e-01, float 1.000000e-01>, <4 x float> %i.v) ; 4 uses
  %i.aa = extractelement <4 x float> %i.z, i64 3  ; 2 uses
  %i.ab = fcmp nsz ogt float %i.s, %i.aa
  %i.ac = select nsz i1 %i.ab, float %i.s, float %i.aa ; 2 uses
  %i.ad = extractelement <4 x float> %i.z, i64 1  ; 2 uses
  %i.ae = fcmp nsz ogt float %i.ac, %i.ad
  %..i38.i = select nsz i1 %i.ae, float %i.ad, float %i.ac ; 5 uses
  %i.af = fsub nsz float %..i38.i, %i.g           ; 2 uses
  %i.ag = fsub nsz float %i.h, %i.g
  %i.ah = fdiv nsz float %i.af, %i.ag             ; 3 uses
  %i.ai = fsub nsz float 1.000000e+00, %i.ah
  %i.aj = fmul nsz float %i.d, %i.ai
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.ah, float %i.aj)
  %i.al = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fadd nsz <2 x float> %i.am, <float -8.000000e-01, float -1.000000e-01>
  %i.ao = fdiv nsz <2 x float> %i.an, <float -4.000000e-01, float 3.000000e-01> ; 2 uses
  %i.ap = fcmp nsz ogt <2 x float> %i.ao, zeroinitializer
  %i.aq = select <2 x i1> %i.ap, <2 x float> %i.ao, <2 x float> zeroinitializer ; 2 uses
  %i.ar = fcmp nsz ogt <2 x float> %i.aq, splat (float 1.000000e+00)
  %i.as = select <2 x i1> %i.ar, <2 x float> splat (float 1.000000e+00), <2 x float> %i.aq ; 3 uses
  %i.at = fmul nsz <2 x float> %i.as, %i.as
  %i.au = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 3.000000e+00))
  %i.av = fmul nsz <2 x float> %i.at, %i.au       ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.av, %shift
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ax = fsub nsz float 1.000000e+00, %i.aw
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float 4.000000e-01, float %i.ax) ; 2 uses
  %i.az = fsub nsz float 1.000000e+00, %i.ay
  %i.ba = fmul nsz float %..i38.i, %i.az
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.ay, float %i.ba) ; 2 uses
  %i.bc = extractelement <4 x float> %i.z, i64 2  ; 2 uses
  %i.bd = fcmp nsz ogt float %i.bb, %i.bc
  %i.be = select nsz i1 %i.bd, float %i.bb, float %i.bc ; 2 uses
  %i.bf = extractelement <4 x float> %i.z, i64 0  ; 2 uses
  %i.bg = fcmp nsz ogt float %i.be, %i.bf
  %..i.i = select nsz i1 %i.bg, float %i.bf, float %i.be ; 4 uses
  store float %..i38.i, ptr %i.n, align 4, !tbaa !34
  store float %..i.i, ptr %i.o, align 8, !tbaa !34
  %i.bh = fsub nsz float %..i.i, %i.d
  %i.bi = fdiv nsz float %i.bh, %i.af
  %i.bj = fdiv nsz float %i.h, %i.e
  %i.bk = fadd nsz float %i.bj, -1.000000e+00
  %i.bl = fmul nsz float %i.bk, 1.500000e+00      ; 2 uses
  %i.bm = fcmp nsz ogt float %i.bl, 2.000000e-01
  %i.bn = select nsz i1 %i.bm, float %i.bl, float 2.000000e-01 ; 2 uses
  %i.bo = fcmp nsz ogt float %i.bn, 1.200000e+00
  %..i = select nsz i1 %i.bo, float 1.200000e+00, float %i.bn
  %i.bp = fmul nsz float %..i, 5.000000e-01
  %i.bq = tail call nsz float @llvm.pow.f32(float %i.bi, float %i.bp) ; 4 uses
  %i.br = fsub nsz float %i.g, %..i38.i           ; 3 uses
  %i.bs = fsub nsz float %i.h, %..i38.i           ; 4 uses
  %i.bt = fsub nsz float %i.d, %..i.i
  %i.bu = fneg nsz float %i.bq
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.br, float %i.bt)
  %i.bw = fmul nsz float %i.br, %i.br
  %i.bx = fdiv nsz float %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bq, ptr %i.bz, align 8, !tbaa !41
  %i.ca = fmul nsz float %i.bs, 2.000000e+00
  %i.cb = fmul nsz float %i.bs, %i.ca             ; 2 uses
  %i.cc = fsub nsz float %..i.i, %i.e
  %i.cd = fmul nsz float %i.bs, %i.cb
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float %i.bs, float %i.cc)
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul nsz <2 x float> %i.cg, <float 1.000000e+00, float -3.000000e+00>
  %i.ci = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cb, i64 1
  %i.ck = fdiv nsz <2 x float> %i.ch, %i.cj
  store <2 x float> %i.ck, ptr %0, align 8, !tbaa !34
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.cl = fsub nsz float %i.e, %i.d
  %i.cm = fsub nsz float %i.h, %i.g
  %i.cn = fdiv nsz float %i.cl, %i.cm             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.cn, ptr %i.co, align 4, !tbaa !42
  %i.cp = fneg nsz float %i.g
  %i.cq = tail call nsz float @llvm.fmuladd.f32(float %i.cp, float %i.cn, float %i.d)
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.cr = insertelement <2 x float> %i.c, float %i.h, i64 0 ; 2 uses
  %i.cs = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ct = insertelement <2 x float> %i.cs, float %i.g, i64 0
  %i.cu = fsub nsz <2 x float> %i.cr, %i.ct
  %i.cv = fdiv nsz <2 x float> %i.cr, %i.cu       ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = extractelement <2 x float> %i.cv, i64 1
  %i.cy = fdiv nsz float %i.cw, %i.cx             ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.cy, ptr %i.cz, align 4, !tbaa !42
  %i.da = fneg nsz float %i.g
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.cy, float %i.d)
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.dc, align 4, !tbaa !42
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.sink78 = phi i64 [ 32, %bb.g ], [ 32, %bb.f ], [ 32, %bb.e ], [ 8, %bb.d ]
  %.sink = phi float [ 0.000000e+00, %bb.g ], [ %i.db, %bb.f ], [ %i.cq, %bb.e ], [ %i.bq, %bb.d ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink78
  store float %.sink, ptr %i.dd, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c
  ret void
}

declare void @ff_sws_get_adaptation(ptr dead_on_unwind writable sret(%struct.SwsMatrix3x3) align 4, ptr noundef, i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @avpriv_slicethread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

end_hunk_1
begin_hunk_2_@ff_sws_tone_map_generate:bb.a
  %i.cr = call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.co, float %i.an)
  %i.cs = call nsz float @llvm.fmuladd.f32(float %i.cr, float %i.co, float %i.am)
  br label %tone_map_apply.exit.us

tone_map_apply.exit.us:                           ; preds = %bb.c, %bb.b
  %.pn.i.us = phi float [ %i.cs, %bb.c ], [ %i.cq, %bb.b ]
  %i.ct = fmul nsz float %i.co, %.pn.i.us
  %i.cu = fadd nsz float %i.ct, %i.ap             ; 3 uses
  %i.cv = fdiv nsz float %i.cn, %i.cu
  %i.cw = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cn, i64 1 ; 3 uses
  %i.cy = fadd nsz <2 x float> %i.cx, splat (float -6.000000e+00)
  %i.cz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cx, <2 x float> splat (float 9.000000e+00))
  %i.da = fmul nsz <2 x float> %i.cx, %i.cz       ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = extractelement <2 x float> %i.da, i64 1
  %i.dd = fdiv nsz float %i.db, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv31
  %i.df = call nsz float @llvm.minnum.f32(float %i.cv, float %i.dd)
  %i.dg = call nsz float @llvm.fmuladd.f32(float %i.u, float %i.cu, float %i.w)
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.df, i64 1
  %i.dj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> <float 6.553400e+04, float 3.276800e+04>, <2 x float> splat (float 5.000000e-01))
  %i.dk = fptosi <2 x float> %i.dj to <2 x i32>
  %i.dl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dk, <2 x i32> zeroinitializer)
  %i.dm = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.dl, <2 x i32> splat (i32 65535))
  %i.dn = trunc nuw <2 x i32> %i.dm to <2 x i16>
  store <2 x i16> %i.dn, ptr %i.de, align 2, !tbaa !45
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !94

._crit_edge:                                      ; preds = %tone_map_apply.exit, %tone_map_apply.exit.us, %middle.block, %middle.block81, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

tone_map_apply.exit:                              ; preds = %tone_map_apply.exit.preheader85, %tone_map_apply.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %tone_map_apply.exit ], [ %indvars.iv.ph, %tone_map_apply.exit.preheader85 ] ; 3 uses
  %i.do = trunc nuw nsw i64 %indvars.iv to i32
  %i.dp = uitofp nsz nneg i32 %i.do to float
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.dr = call nsz float @llvm.fmuladd.f32(float %i.o, float %i.dp, float %i.k) ; 3 uses
  %i.ds = fadd nsz float %i.dr, -6.000000e+00
  %i.dt = insertelement <2 x float> %i.ai, float %i.ds, i64 1
  %i.du = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dv, <2 x float> %i.bk) ; 3 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 0 ; 3 uses
  %i.dy = fadd nsz float %i.dx, -6.000000e+00
  %i.dz = call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.dx, float 9.000000e+00)
  %i.ea = insertelement <2 x float> %i.dv, float %i.dz, i64 0
  %i.eb = fmul nsz <2 x float> %i.ea, %i.dw       ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ed = insertelement <2 x float> %i.ec, float %i.dr, i64 0
  %i.ee = shufflevector <2 x float> %i.dw, <2 x float> %i.eb, <2 x i32> <i32 0, i32 3>
  %i.ef = fdiv nsz <2 x float> %i.ed, %i.ee       ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 0
  %i.eh = extractelement <2 x float> %i.ef, i64 1
  %i.ei = call nsz float @llvm.minnum.f32(float %i.eg, float %i.eh)
  %i.ej = call nsz float @llvm.fmuladd.f32(float %i.u, float %i.dx, float %i.w)
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ei, i64 1
  %i.em = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> <float 6.553400e+04, float 3.276800e+04>, <2 x float> splat (float 5.000000e-01))
  %i.en = fptosi <2 x float> %i.em to <2 x i32>
  %i.eo = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.en, <2 x i32> zeroinitializer)
  %i.ep = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.eo, <2 x i32> splat (i32 65535))
  %i.eq = trunc nuw <2 x i32> %i.ep to <2 x i16>
  store <2 x i16> %i.eq, ptr %i.dq, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count34
  br i1 %exitcond.not, label %._crit_edge, label %tone_map_apply.exit, !llvm.loop !95
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare ptr @av_csp_primaries_desc_from_id(i32 noundef) local_unnamed_addr #1

declare void @ff_sws_ipt_rgb2lms(ptr dead_on_unwind writable sret(%struct.SwsMatrix3x3) align 4, ptr noundef) local_unnamed_addr #1

declare void @ff_sws_ipt_lms2rgb(ptr dead_on_unwind writable sret(%struct.SwsMatrix3x3) align 4, ptr noundef) local_unnamed_addr #1

declare ptr @av_csp_itu_eotf(i32 noundef) local_unnamed_addr #1

declare ptr @av_csp_itu_eotf_inv(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @ingamut(<2 x float> %0, float %1, ptr nofree noundef readonly byval(%struct.Gamut) align 8 captures(none) %2) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.b = load <2 x float>, ptr %i.a, align 8, !tbaa !34
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.d = fadd nsz <4 x float> %i.c, <float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A, float f0xB8D1B717> ; 3 uses
  %i.e = shufflevector <2 x float> %0, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.f = shufflevector <2 x float> %0, <2 x float> poison, <3 x i32> zeroinitializer
  %i.g = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.e, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.f)
  %i.h = insertelement <3 x float> poison, float %1, i64 0
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <3 x i32> zeroinitializer
  %i.j = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.i, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.g) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.l = load float, ptr %i.k, align 8, !tbaa !35 ; 3 uses
  %i.m = extractelement <3 x float> %i.j, i64 1   ; 2 uses
  %i.n = fcmp nsz olt float %i.m, %i.l
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.p = load float, ptr %i.o, align 4, !tbaa !36 ; 3 uses
  %i.q = fcmp nsz ogt float %i.m, %i.p
  %i.r = extractelement <3 x float> %i.j, i64 2   ; 2 uses
  %i.s = fcmp nsz olt float %i.r, %i.l
  %or.cond = or i1 %i.s, %i.q
  %i.t = fcmp nsz ogt float %i.r, %i.p
  %or.cond50 = or i1 %i.t, %or.cond
  %i.u = extractelement <3 x float> %i.j, i64 0   ; 2 uses
  %i.v = fcmp nsz olt float %i.u, %i.l
  %or.cond51 = or i1 %i.v, %or.cond50
  %i.w = fcmp nsz ogt float %i.u, %i.p
  %or.cond52 = or i1 %i.w, %or.cond51
  br i1 %or.cond52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = fcmp nsz ogt <3 x float> %i.j, zeroinitializer
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ac = select <3 x i1> %i.x, <3 x float> %i.j, <3 x float> zeroinitializer ; 2 uses
  %i.ad = fcmp nsz ogt <3 x float> %i.ac, splat (float 1.000000e+00)
  %i.ae = select <3 x i1> %i.ad, <3 x float> splat (float 1.000000e+00), <3 x float> %i.ac
  %i.af = fmul nnan nsz <3 x float> %i.ae, splat (float 1.023000e+03) ; 2 uses
  %i.ag = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.af)
  %i.ah = fptosi <3 x float> %i.ag to <3 x i32>   ; 4 uses
  %i.ai = extractelement <3 x i32> %i.ah, i64 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.aj
  %i.al = load <2 x float>, ptr %i.ak, align 4, !tbaa !34 ; 2 uses
  %i.am = extractelement <3 x i32> %i.ah, i64 2
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.an
  %i.ap = load <2 x float>, ptr %i.ao, align 4, !tbaa !34
  %i.aq = uitofp <3 x i32> %i.ah to <3 x float>
  %i.ar = fsub nsz <3 x float> %i.af, %i.aq       ; 2 uses
  %i.as = extractelement <3 x i32> %i.ah, i64 0
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.at
  %i.av = load <2 x float>, ptr %i.au, align 4, !tbaa !34 ; 2 uses
  %i.aw = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.ar
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.al, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ay = shufflevector <2 x float> %i.ap, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.az = shufflevector <3 x float> %i.ax, <3 x float> %i.ay, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ba = fmul nsz <3 x float> %i.aw, %i.az
  %i.bb = shufflevector <2 x float> %i.av, <2 x float> %i.al, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> %i.ay, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bd = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bc, <3 x float> %i.ar, <3 x float> %i.ba) ; 3 uses
  %i.be = load <4 x float>, ptr %i.z, align 4, !tbaa !34
  %i.bf = load <5 x float>, ptr %i.aa, align 8, !tbaa !34
  %i.bg = load <7 x float>, ptr %i.y, align 8, !tbaa !34
  %i.bh = load <2 x float>, ptr %i.ab, align 4, !tbaa !34 ; 2 uses
  %i.bi = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.bk = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.bm = fmul nsz <4 x float> %i.bi, %i.bl
  %i.bn = shufflevector <7 x float> %i.bg, <7 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.bo = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.bo, <4 x float> %i.bm)
  %i.bq = shufflevector <2 x float> %i.bh, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.br = shufflevector <5 x float> %i.bf, <5 x float> %i.bq, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.bs = shufflevector <3 x float> %i.bd, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bs, <4 x float> %i.bp) ; 4 uses
  %i.bu = fcmp nsz ole <4 x float> %i.bt, %i.d
  %i.bv = fcmp nsz oge <4 x float> %i.bt, %i.d
  %i.bw = shufflevector <4 x i1> %i.bu, <4 x i1> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bx = extractelement <4 x float> %i.bt, i64 1
  %i.by = extractelement <4 x float> %i.d, i64 3  ; 2 uses
  %i.bz = fcmp nsz oge float %i.bx, %i.by
  %i.ca = extractelement <4 x float> %i.bt, i64 2
  %i.cb = fcmp nsz oge float %i.ca, %i.by
  %i.cc = freeze <4 x i1> %i.bw
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %i.ce = icmp eq i4 %i.cd, -1
  %op.rdx = select i1 %i.ce, i1 %i.bz, i1 false
  %op.rdx70 = select i1 %op.rdx, i1 %i.cb, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %op.rdx70, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @ff_sws_matrix3x3_apply(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc { <2 x float>, float } @saturate(float noundef %0, ptr nofree noundef readonly byval(%struct.Gamut) align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.b = load <2 x float>, ptr %i.a, align 8, !tbaa !34 ; 7 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 3 uses
  %i.d = extractelement <2 x float> %i.b, i64 1   ; 5 uses
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 9 uses
  %.sroa.062.4.vec.insert197 = insertelement <2 x float> %i.b, float 0.000000e+00, i64 1 ; 5 uses
  %.sroa.059.4.vec.insert = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.b, <2 x i32> <i32 3, i32 1> ; 5 uses
  %i.f = fsub nsz float %i.d, %i.e                ; 3 uses
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> <float f0x3EC3910D, float 6.180340e-01>, <2 x float> %i.i) ; 4 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 3 uses
  %i.l = extractelement <2 x float> %i.j, i64 0   ; 3 uses
  %i.m = fcmp nsz ugt float %i.l, %i.e
  br i1 %i.m, label %bb.b, label %desat_bounded.exit

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp nsz ult float %i.l, %i.d
  br i1 %i.n, label %bb.c, label %desat_bounded.exit

bb.c:                                             ; preds = %bb.b
  %i.o = fmul nsz float %i.l, 5.000000e-05
  %.sroa.022.4.vec.insert32.i198 = insertelement <2 x float> %i.j, float 2.500000e-01, i64 1
  %sincos.i.i = tail call nsz { float, float } @llvm.sincos.f32(float %0) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.038.i = phi nsz float [ 5.000000e-01, %bb.c ], [ %.038..sroa.022.4.vec.extract.i, %bb.d ]
  %.0.i = phi nsz float [ 0.000000e+00, %bb.c ], [ %.sroa.022.4.vec.extract..0.i, %bb.d ]
  %.sroa.022.0.i = phi nsz <2 x float> [ %.sroa.022.4.vec.insert32.i198, %bb.c ], [ %.sroa.022.4.vec.insert37.i, %bb.d ] ; 3 uses
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.022.0.i, i64 1 ; 4 uses
  %i.p = fmul nsz float %cos.i.i, %.sroa.03.4.vec.extract.i.i
  %.sroa.07.4.vec.insert.i.i = insertelement <2 x float> %.sroa.022.0.i, float %i.p, i64 1
  %i.q = fmul nsz float %sin.i.i, %.sroa.03.4.vec.extract.i.i
  %i.r = tail call fastcc zeroext i1 @ingamut(<2 x float> %.sroa.07.4.vec.insert.i.i, float %i.q, ptr noundef nonnull byval(%struct.Gamut) align 8 %1) ; 2 uses
  %.038..sroa.022.4.vec.extract.i = select nsz i1 %i.r, float %.038.i, float %.sroa.03.4.vec.extract.i.i ; 3 uses
  %.sroa.022.4.vec.extract..0.i = select nsz i1 %i.r, float %.sroa.03.4.vec.extract.i.i, float %.0.i ; 3 uses
  %i.s = fadd nsz float %.sroa.022.4.vec.extract..0.i, %.038..sroa.022.4.vec.extract.i
  %i.t = fmul nsz float %i.s, 5.000000e-01
  %.sroa.022.4.vec.insert37.i = insertelement <2 x float> %.sroa.022.0.i, float %i.t, i64 1 ; 2 uses
  %i.u = fsub nsz float %.038..sroa.022.4.vec.extract.i, %.sroa.022.4.vec.extract..0.i
  %i.v = fcmp nsz ogt float %i.u, %i.o
  br i1 %i.v, label %bb.d, label %desat_bounded.exit, !llvm.loop !99

desat_bounded.exit:                               ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.022.1.i = phi nsz <2 x float> [ %.sroa.059.4.vec.insert, %bb.b ], [ %.sroa.062.4.vec.insert197, %bb.a ], [ %.sroa.022.4.vec.insert37.i, %bb.d ] ; 2 uses
  %i.w = fcmp nsz ugt float %i.k, %i.e
  br i1 %i.w, label %bb.e, label %desat_bounded.exit98

bb.e:                                             ; preds = %desat_bounded.exit
  %i.x = fcmp nsz ult float %i.k, %i.d
  br i1 %i.x, label %bb.f, label %desat_bounded.exit98

bb.f:                                             ; preds = %bb.e
  %i.y = fmul nsz float %i.k, 5.000000e-05
  %.sroa.022.4.vec.insert32.i86 = shufflevector <2 x float> <float poison, float 2.500000e-01>, <2 x float> %i.j, <2 x i32> <i32 3, i32 1>
  %sincos.i.i87 = tail call nsz { float, float } @llvm.sincos.f32(float %0) ; 2 uses
  %sin.i.i88 = extractvalue { float, float } %sincos.i.i87, 0
  %cos.i.i89 = extractvalue { float, float } %sincos.i.i87, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.038.i90 = phi nsz float [ 5.000000e-01, %bb.f ], [ %.038..sroa.022.4.vec.extract.i95, %bb.g ]
  %.0.i91 = phi nsz float [ 0.000000e+00, %bb.f ], [ %.sroa.022.4.vec.extract..0.i96, %bb.g ]
  %.sroa.022.0.i92 = phi nsz <2 x float> [ %.sroa.022.4.vec.insert32.i86, %bb.f ], [ %.sroa.022.4.vec.insert37.i97, %bb.g ] ; 3 uses
  %.sroa.03.4.vec.extract.i.i93 = extractelement <2 x float> %.sroa.022.0.i92, i64 1 ; 4 uses
  %i.z = fmul nsz float %cos.i.i89, %.sroa.03.4.vec.extract.i.i93
  %.sroa.07.4.vec.insert.i.i94 = insertelement <2 x float> %.sroa.022.0.i92, float %i.z, i64 1
  %i.aa = fmul nsz float %sin.i.i88, %.sroa.03.4.vec.extract.i.i93
  %i.ab = tail call fastcc zeroext i1 @ingamut(<2 x float> %.sroa.07.4.vec.insert.i.i94, float %i.aa, ptr noundef nonnull byval(%struct.Gamut) align 8 %1) ; 2 uses
  %.038..sroa.022.4.vec.extract.i95 = select nsz i1 %i.ab, float %.038.i90, float %.sroa.03.4.vec.extract.i.i93 ; 3 uses
  %.sroa.022.4.vec.extract..0.i96 = select nsz i1 %i.ab, float %.sroa.03.4.vec.extract.i.i93, float %.0.i91 ; 3 uses
  %i.ac = fadd nsz float %.sroa.022.4.vec.extract..0.i96, %.038..sroa.022.4.vec.extract.i95
  %i.ad = fmul nsz float %i.ac, 5.000000e-01
  %.sroa.022.4.vec.insert37.i97 = insertelement <2 x float> %.sroa.022.0.i92, float %i.ad, i64 1 ; 2 uses
  %i.ae = fsub nsz float %.038..sroa.022.4.vec.extract.i95, %.sroa.022.4.vec.extract..0.i96
  %i.af = fcmp nsz ogt float %i.ae, %i.y
  br i1 %i.af, label %bb.g, label %desat_bounded.exit98, !llvm.loop !99

desat_bounded.exit98:                             ; preds = %bb.g, %bb.e, %desat_bounded.exit
  %.sroa.022.1.i81 = phi nsz <2 x float> [ %.sroa.059.4.vec.insert, %bb.e ], [ %.sroa.062.4.vec.insert197, %desat_bounded.exit ], [ %.sroa.022.4.vec.insert37.i97, %bb.g ] ; 2 uses
  %i.ag = fcmp nsz ogt float %i.f, 5.000000e-05
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %desat_bounded.exit98
  %sincos.i.i125 = tail call nsz { float, float } @llvm.sincos.f32(float %0) ; 2 uses
  %sin.i.i126 = extractvalue { float, float } %sincos.i.i125, 0 ; 2 uses
  %cos.i.i127 = extractvalue { float, float } %sincos.i.i125, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = load <2 x float>, ptr %i.ah, align 8
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.an = fadd nsz <4 x float> %i.am, <float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A, float f0xB8D1B717> ; 5 uses
  %i.ao = load <8 x float>, ptr %i.ai, align 8    ; 5 uses
  %i.ap = load <5 x float>, ptr %i.aj, align 4    ; 3 uses
  %i.aq = load <3 x float>, ptr %i.ak, align 8    ; 4 uses
  %i.ar = extractelement <4 x float> %i.an, i64 3 ; 2 uses
  %i.as = shufflevector <3 x float> %i.aq, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <3 x float> %i.aq, <3 x float> poison, <5 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.au = shufflevector <5 x float> %i.ap, <5 x float> %i.at, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.av = shufflevector <8 x float> %i.ao, <8 x float> poison, <4 x i32> <i32 poison, i32 4, i32 poison, i32 poison>
  %i.aw = shufflevector <3 x float> %i.aq, <3 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <5 x float> %i.ap, <5 x float> %i.aw, <4 x i32> <i32 0, i32 poison, i32 6, i32 0>
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.az = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %i.ba = shufflevector <8 x float> %i.ao, <8 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 0, i32 poison>
  %i.bb = shufflevector <5 x float> %i.ba, <5 x float> %i.ap, <4 x i32> <i32 0, i32 7, i32 poison, i32 3>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.bd = shufflevector <2 x float> %i.b, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.be = insertelement <2 x float> poison, float %cos.i.i127, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %sin.i.i126, i64 1
  %i.bg = shufflevector <8 x float> %i.ao, <8 x float> poison, <3 x i32> <i32 2, i32 5, i32 poison>
  %i.bh = shufflevector <8 x float> %i.ao, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.bi = shufflevector <8 x float> %i.ao, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.bj = extractelement <4 x float> %i.an, i64 3 ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %cos.i.i127, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %sin.i.i126, i64 1
  %i.bm = shufflevector <3 x float> %i.bg, <3 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %desat_bounded.exit117
  %.sroa.062.0174 = phi <2 x float> [ %.sroa.062.4.vec.insert197, %.lr.ph ], [ %.sroa.062.1, %desat_bounded.exit117 ] ; 5 uses
  %.sroa.059.0173 = phi <2 x float> [ %.sroa.059.4.vec.insert, %.lr.ph ], [ %.sroa.059.1, %desat_bounded.exit117 ] ; 4 uses
  %.0172 = phi float [ %i.f, %.lr.ph ], [ %i.bn, %desat_bounded.exit117 ]
  %.sroa.040.0171 = phi <2 x float> [ %.sroa.022.1.i, %.lr.ph ], [ %.sroa.040.1, %desat_bounded.exit117 ] ; 8 uses
  %.sroa.022.0170 = phi <2 x float> [ %.sroa.022.1.i81, %.lr.ph ], [ %.sroa.022.1, %desat_bounded.exit117 ] ; 7 uses
  %i.bn = fmul nnan nsz float %.0172, 6.180340e-01 ; 4 uses
  %i.bo = fcmp ogt <2 x float> %.sroa.040.0171, %.sroa.022.0170
  %i.bp = extractelement <2 x i1> %i.bo, i64 1
  br i1 %i.bp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.sroa.062.0.vec.extract69 = extractelement <2 x float> %.sroa.062.0174, i64 0
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float f0x3EC3910D, float %.sroa.062.0.vec.extract69) ; 4 uses
  %.sroa.062.4.vec.extract = extractelement <2 x float> %.sroa.062.0174, i64 1
  %i.br = fadd nsz float %.sroa.062.4.vec.extract, -5.000000e-05 ; 2 uses
  %i.bs = fcmp nsz ugt float %i.bq, %i.e
  br i1 %i.bs, label %bb.j, label %desat_bounded.exit117

bb.j:                                             ; preds = %bb.i
  %i.bt = fcmp nsz ult float %i.bq, %i.d
  br i1 %i.bt, label %bb.k, label %desat_bounded.exit117

bb.k:                                             ; preds = %bb.j
  %i.bu = fmul nsz float %i.bq, 5.000000e-05
  %.sroa.022.0.vec.insert28.i104 = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bv = fadd nsz float %i.br, 5.000000e-01
  %i.bw = fmul nsz float %i.bv, 5.000000e-01
  %.sroa.022.4.vec.insert32.i105 = insertelement <2 x float> %.sroa.022.0.vec.insert28.i104, float %i.bw, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.038.i109 = phi nsz float [ 5.000000e-01, %bb.k ], [ %i.eh, %.thread ]
  %.0.i110 = phi nsz float [ %i.br, %bb.k ], [ %i.ei, %.thread ] ; 3 uses
  %.sroa.022.0.i111 = phi nsz <2 x float> [ %.sroa.022.4.vec.insert32.i105, %bb.k ], [ %.sroa.022.4.vec.insert37.i116, %.thread ] ; 4 uses
  %.sroa.03.4.vec.extract.i.i112 = extractelement <2 x float> %.sroa.022.0.i111, i64 1 ; 4 uses
  %i.bx = shufflevector <2 x float> %.sroa.022.0.i111, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul nsz <2 x float> %i.bl, %i.bx       ; 2 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %.sroa.022.0.i111, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cb = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bz, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.ca)
  %i.cc = shufflevector <2 x float> %i.by, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cd = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cc, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.cb) ; 5 uses
  %i.ce = extractelement <3 x float> %i.cd, i64 1
  %i.cf = fcmp nsz olt float %i.ce, %i.e
  br i1 %i.cf, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = extractelement <3 x float> %i.cd, i64 0
  %i.ch = fcmp nsz olt float %i.cg, %i.e
  %i.ci = shufflevector <3 x float> %i.cd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.cj = fcmp nsz ogt <4 x float> %i.ci, %i.c
  %i.ck = fcmp nsz olt <4 x float> %i.ci, %i.c
  %i.cl = shufflevector <4 x i1> %i.cj, <4 x i1> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cm = bitcast <4 x i1> %i.cl to i4
  %i.cn = icmp ne i4 %i.cm, 0
  %op.rdx193 = or i1 %i.cn, %i.ch
  br i1 %op.rdx193, label %.thread, label %ingamut.exit

ingamut.exit:                                     ; preds = %bb.m
  %i.co = fcmp nsz ogt <3 x float> %i.cd, zeroinitializer
  %i.cp = select <3 x i1> %i.co, <3 x float> %i.cd, <3 x float> zeroinitializer ; 2 uses
  %i.cq = fcmp nsz ogt <3 x float> %i.cp, splat (float 1.000000e+00)
  %i.cr = select <3 x i1> %i.cq, <3 x float> splat (float 1.000000e+00), <3 x float> %i.cp
  %i.cs = fmul nnan nsz <3 x float> %i.cr, splat (float 1.023000e+03) ; 2 uses
  %i.ct = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.cs)
  %i.cu = fptosi <3 x float> %i.ct to <3 x i32>   ; 4 uses
  %i.cv = extractelement <3 x i32> %i.cu, i64 1
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.cw
  %i.cy = load <2 x float>, ptr %i.cx, align 4, !tbaa !34 ; 2 uses
  %i.cz = extractelement <3 x i32> %i.cu, i64 2
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.da
  %i.dc = load <2 x float>, ptr %i.db, align 4, !tbaa !34
  %i.dd = uitofp <3 x i32> %i.cu to <3 x float>
  %i.de = fsub nsz <3 x float> %i.cs, %i.dd       ; 2 uses
  %i.df = extractelement <3 x i32> %i.cu, i64 0
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.dg
  %i.di = load <2 x float>, ptr %i.dh, align 4, !tbaa !34 ; 2 uses
  %i.dj = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.de
  %i.dk = shufflevector <2 x float> %i.di, <2 x float> %i.cy, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.dl = shufflevector <2 x float> %i.dc, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.dm = shufflevector <3 x float> %i.dk, <3 x float> %i.dl, <3 x i32> <i32 0, i32 1, i32 3>
  %i.dn = fmul nsz <3 x float> %i.dj, %i.dm
  %i.do = shufflevector <2 x float> %i.di, <2 x float> %i.cy, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.dp = shufflevector <3 x float> %i.do, <3 x float> %i.dl, <3 x i32> <i32 0, i32 1, i32 4>
  %i.dq = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dp, <3 x float> %i.de, <3 x float> %i.dn) ; 3 uses
  %i.dr = shufflevector <3 x float> %i.dq, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ds = fmul nsz <4 x float> %i.dr, %i.bi
  %i.dt = shufflevector <3 x float> %i.dq, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.du = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.dt, <4 x float> %i.ds)
  %i.dv = shufflevector <3 x float> %i.dq, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.dv, <4 x float> %i.du) ; 4 uses
  %i.dx = fcmp nsz ole <4 x float> %i.dw, %i.an
  %i.dy = fcmp nsz oge <4 x float> %i.dw, %i.an
  %i.dz = shufflevector <4 x i1> %i.dx, <4 x i1> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ea = extractelement <4 x float> %i.dw, i64 1
  %i.eb = fcmp nsz oge float %i.ea, %i.bj
  %i.ec = extractelement <4 x float> %i.dw, i64 2
  %i.ed = fcmp nsz oge float %i.ec, %i.bj
  %i.ee = freeze <4 x i1> %i.dz
  %i.ef = bitcast <4 x i1> %i.ee to i4
  %i.eg = icmp eq i4 %i.ef, -1
  %op.rdx = select i1 %i.eg, i1 %i.eb, i1 false
  %op.rdx192 = select i1 %op.rdx, i1 %i.ed, i1 false
  %.fr201 = freeze i1 %op.rdx192
  br i1 %.fr201, label %.thread, label %bb.n

bb.n:                                             ; preds = %ingamut.exit
  br label %.thread

.thread:                                          ; preds = %bb.n, %ingamut.exit, %bb.m, %bb.l
  %i.eh = phi float [ %.sroa.03.4.vec.extract.i.i112, %bb.l ], [ %.sroa.03.4.vec.extract.i.i112, %bb.n ], [ %.sroa.03.4.vec.extract.i.i112, %bb.m ], [ %.038.i109, %ingamut.exit ] ; 3 uses
  %i.ei = phi float [ %.0.i110, %bb.l ], [ %.0.i110, %bb.n ], [ %.0.i110, %bb.m ], [ %.sroa.03.4.vec.extract.i.i112, %ingamut.exit ] ; 3 uses
  %i.ej = fadd nsz float %i.eh, %i.ei
  %i.ek = fmul nsz float %i.ej, 5.000000e-01
  %.sroa.022.4.vec.insert37.i116 = insertelement <2 x float> %.sroa.022.0.i111, float %i.ek, i64 1 ; 2 uses
  %i.el = fsub nsz float %i.eh, %i.ei
  %i.em = fcmp nsz ogt float %i.el, %i.bu
  br i1 %i.em, label %bb.l, label %desat_bounded.exit117, !llvm.loop !99

bb.o:                                             ; preds = %bb.h
  %.sroa.062.0.vec.extract71 = extractelement <2 x float> %.sroa.040.0171, i64 0
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float 6.180340e-01, float %.sroa.062.0.vec.extract71) ; 4 uses
  %.sroa.059.4.vec.extract = extractelement <2 x float> %.sroa.059.0173, i64 1
  %i.eo = fadd nsz float %.sroa.059.4.vec.extract, -5.000000e-05 ; 2 uses
  %i.ep = fcmp nsz ugt float %i.en, %i.e
  br i1 %i.ep, label %bb.p, label %desat_bounded.exit117

bb.p:                                             ; preds = %bb.o
  %i.eq = fcmp nsz ult float %i.en, %i.d
  br i1 %i.eq, label %bb.q, label %desat_bounded.exit117

bb.q:                                             ; preds = %bb.p
  %i.er = fmul nsz float %i.en, 5.000000e-05
  %.sroa.022.0.vec.insert28.i123 = insertelement <2 x float> poison, float %i.en, i64 0
  %i.es = fadd nsz float %i.eo, 5.000000e-01
  %i.et = fmul nsz float %i.es, 5.000000e-01
  %.sroa.022.4.vec.insert32.i124 = insertelement <2 x float> %.sroa.022.0.vec.insert28.i123, float %i.et, i64 1
  br label %bb.r

bb.r:                                             ; preds = %.thread164, %bb.q
  %.038.i128 = phi nsz float [ 5.000000e-01, %bb.q ], [ %i.he, %.thread164 ]
  %.0.i129 = phi nsz float [ %i.eo, %bb.q ], [ %i.hf, %.thread164 ] ; 3 uses
  %.sroa.022.0.i130 = phi nsz <2 x float> [ %.sroa.022.4.vec.insert32.i124, %bb.q ], [ %.sroa.022.4.vec.insert37.i135, %.thread164 ] ; 4 uses
  %.sroa.03.4.vec.extract.i.i131 = extractelement <2 x float> %.sroa.022.0.i130, i64 1 ; 4 uses
  %i.eu = shufflevector <2 x float> %.sroa.022.0.i130, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul nsz <2 x float> %i.bf, %i.eu       ; 2 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ex = shufflevector <2 x float> %.sroa.022.0.i130, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ey = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ew, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.ex)
  %i.ez = shufflevector <2 x float> %i.ev, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fa = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ez, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.ey) ; 6 uses
  %i.fb = extractelement <3 x float> %i.fa, i64 1
  %i.fc = fcmp nsz olt float %i.fb, %i.e
  br i1 %i.fc, label %.thread164, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fd = extractelement <3 x float> %i.fa, i64 0
  %i.fe = fcmp nsz olt float %i.fd, %i.e
  %i.ff = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.c, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fh = shufflevector <3 x float> %i.bd, <3 x float> %i.fa, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fi = fcmp nsz ogt <4 x float> %i.fg, %i.fh
  %i.fj = bitcast <4 x i1> %i.fi to i4
  %i.fk = icmp ne i4 %i.fj, 0
  %op.rdx196 = or i1 %i.fk, %i.fe
  br i1 %op.rdx196, label %.thread164, label %ingamut.exit151

ingamut.exit151:                                  ; preds = %bb.s
  %i.fl = fcmp nsz ogt <3 x float> %i.fa, zeroinitializer
  %i.fm = select <3 x i1> %i.fl, <3 x float> %i.fa, <3 x float> zeroinitializer ; 2 uses
  %i.fn = fcmp nsz ogt <3 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = select <3 x i1> %i.fn, <3 x float> splat (float 1.000000e+00), <3 x float> %i.fm
  %i.fp = fmul nnan nsz <3 x float> %i.fo, splat (float 1.023000e+03) ; 2 uses
  %i.fq = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.fp)
  %i.fr = fptosi <3 x float> %i.fq to <3 x i32>   ; 4 uses
  %i.fs = extractelement <3 x i32> %i.fr, i64 1
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ft
  %i.fv = load <2 x float>, ptr %i.fu, align 4, !tbaa !34 ; 2 uses
  %i.fw = extractelement <3 x i32> %i.fr, i64 2
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.fx
  %i.fz = load <2 x float>, ptr %i.fy, align 4, !tbaa !34
  %i.ga = uitofp <3 x i32> %i.fr to <3 x float>
  %i.gb = fsub nsz <3 x float> %i.fp, %i.ga       ; 2 uses
  %i.gc = extractelement <3 x i32> %i.fr, i64 0
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.gd
  %i.gf = load <2 x float>, ptr %i.ge, align 4, !tbaa !34 ; 2 uses
  %i.gg = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.gb
  %i.gh = shufflevector <2 x float> %i.gf, <2 x float> %i.fv, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.gi = shufflevector <2 x float> %i.fz, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.gj = shufflevector <3 x float> %i.gh, <3 x float> %i.gi, <3 x i32> <i32 0, i32 1, i32 3>
  %i.gk = fmul nsz <3 x float> %i.gg, %i.gj
  %i.gl = shufflevector <2 x float> %i.gf, <2 x float> %i.fv, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.gm = shufflevector <3 x float> %i.gl, <3 x float> %i.gi, <3 x i32> <i32 0, i32 1, i32 4>
  %i.gn = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gm, <3 x float> %i.gb, <3 x float> %i.gk) ; 3 uses
  %i.go = shufflevector <3 x float> %i.gn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gp = fmul nsz <4 x float> %i.go, %i.ay
  %i.gq = shufflevector <3 x float> %i.gn, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.gq, <4 x float> %i.gp)
  %i.gs = shufflevector <3 x float> %i.gn, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.gs, <4 x float> %i.gr) ; 4 uses
  %i.gu = fcmp nsz ole <4 x float> %i.gt, %i.az
  %i.gv = fcmp nsz oge <4 x float> %i.gt, %i.az
  %i.gw = shufflevector <4 x i1> %i.gu, <4 x i1> %i.gv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gx = extractelement <4 x float> %i.gt, i64 1
  %i.gy = fcmp nsz oge float %i.gx, %i.ar
  %i.gz = extractelement <4 x float> %i.gt, i64 2
  %i.ha = fcmp nsz oge float %i.gz, %i.ar
  %i.hb = freeze <4 x i1> %i.gw
  %i.hc = bitcast <4 x i1> %i.hb to i4
  %i.hd = icmp eq i4 %i.hc, -1
  %op.rdx194 = select i1 %i.hd, i1 %i.gy, i1 false
  %op.rdx195 = select i1 %op.rdx194, i1 %i.ha, i1 false
  %.fr199 = freeze i1 %op.rdx195
  br i1 %.fr199, label %.thread164, label %bb.t

bb.t:                                             ; preds = %ingamut.exit151
  br label %.thread164

.thread164:                                       ; preds = %bb.t, %ingamut.exit151, %bb.s, %bb.r
  %i.he = phi float [ %.sroa.03.4.vec.extract.i.i131, %bb.r ], [ %.sroa.03.4.vec.extract.i.i131, %bb.t ], [ %.sroa.03.4.vec.extract.i.i131, %bb.s ], [ %.038.i128, %ingamut.exit151 ] ; 3 uses
  %i.hf = phi float [ %.0.i129, %bb.r ], [ %.0.i129, %bb.t ], [ %.0.i129, %bb.s ], [ %.sroa.03.4.vec.extract.i.i131, %ingamut.exit151 ] ; 3 uses
  %i.hg = fadd nsz float %i.he, %i.hf
  %i.hh = fmul nsz float %i.hg, 5.000000e-01
  %.sroa.022.4.vec.insert37.i135 = insertelement <2 x float> %.sroa.022.0.i130, float %i.hh, i64 1 ; 2 uses
  %i.hi = fsub nsz float %i.he, %i.hf
  %i.hj = fcmp nsz ogt float %i.hi, %i.er
  br i1 %i.hj, label %bb.r, label %desat_bounded.exit117, !llvm.loop !99

desat_bounded.exit117:                            ; preds = %.thread164, %.thread, %bb.o, %bb.p, %bb.i, %bb.j
  %.sroa.022.1 = phi nsz <2 x float> [ %.sroa.059.4.vec.insert, %bb.p ], [ %.sroa.040.0171, %bb.j ], [ %.sroa.040.0171, %bb.i ], [ %.sroa.040.0171, %.thread ], [ %.sroa.062.4.vec.insert197, %bb.o ], [ %.sroa.022.4.vec.insert37.i135, %.thread164 ] ; 2 uses
  %.sroa.040.1 = phi nsz <2 x float> [ %.sroa.022.0170, %bb.p ], [ %.sroa.059.4.vec.insert, %bb.j ], [ %.sroa.062.4.vec.insert197, %bb.i ], [ %.sroa.022.4.vec.insert37.i116, %.thread ], [ %.sroa.022.0170, %bb.o ], [ %.sroa.022.0170, %.thread164 ] ; 2 uses
  %.sroa.059.1 = phi nsz <2 x float> [ %.sroa.059.0173, %bb.p ], [ %.sroa.022.0170, %bb.j ], [ %.sroa.022.0170, %bb.i ], [ %.sroa.022.0170, %.thread ], [ %.sroa.059.0173, %bb.o ], [ %.sroa.059.0173, %.thread164 ]
  %.sroa.062.1 = phi nsz <2 x float> [ %.sroa.040.0171, %bb.p ], [ %.sroa.062.0174, %bb.j ], [ %.sroa.062.0174, %bb.i ], [ %.sroa.062.0174, %.thread ], [ %.sroa.040.0171, %bb.o ], [ %.sroa.040.0171, %.thread164 ]
  %i.hk = fcmp nsz ogt float %i.bn, 5.000000e-05
  br i1 %i.hk, label %bb.h, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %desat_bounded.exit117, %desat_bounded.exit98
  %.sroa.022.0.lcssa = phi <2 x float> [ %.sroa.022.1.i81, %desat_bounded.exit98 ], [ %.sroa.022.1, %desat_bounded.exit117 ] ; 2 uses
  %.sroa.040.0.lcssa = phi <2 x float> [ %.sroa.022.1.i, %desat_bounded.exit98 ], [ %.sroa.040.1, %desat_bounded.exit117 ] ; 2 uses
  %i.hl = fcmp ogt <2 x float> %.sroa.040.0.lcssa, %.sroa.022.0.lcssa
  %.splat = shufflevector <2 x i1> %i.hl, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.040.0..sroa.022.0 = select nsz <2 x i1> %.splat, <2 x float> %.sroa.040.0.lcssa, <2 x float> %.sroa.022.0.lcssa
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.040.0..sroa.022.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.maxnum.v3f32(<3 x float>, <3 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.pow.v3f32(<3 x float>, <3 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.floor.v3f32(<3 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.pow.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !37}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"AVRational", !7, i64 0, !7, i64 4}
!11 = !{!"AVCIExy", !10, i64 0, !10, i64 8}
!12 = !{!"AVPrimaryCoefficients", !11, i64 0, !11, i64 16, !11, i64 32}
!13 = !{!"SwsColor", !7, i64 0, !7, i64 4, !12, i64 8, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80}
!14 = !{!"SwsColorMap", !13, i64 0, !13, i64 88, !7, i64 176}
!15 = !{!7, !7, i64 0}
!16 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !15, i64 40, i64 4, !15, i64 44, i64 4, !15, i64 48, i64 4, !15, i64 52, i64 4, !15, i64 56, i64 4, !15, i64 60, i64 4, !15, i64 64, i64 4, !15, i64 68, i64 4, !15, i64 72, i64 4, !15, i64 76, i64 4, !15, i64 80, i64 4, !15, i64 84, i64 4, !15, i64 88, i64 4, !15, i64 92, i64 4, !15, i64 96, i64 4, !15, i64 100, i64 4, !15, i64 104, i64 4, !15, i64 108, i64 4, !15, i64 112, i64 4, !15, i64 116, i64 4, !15, i64 120, i64 4, !15, i64 124, i64 4, !15, i64 128, i64 4, !15, i64 132, i64 4, !15, i64 136, i64 4, !15, i64 140, i64 4, !15, i64 144, i64 4, !15, i64 148, i64 4, !15, i64 152, i64 4, !15, i64 156, i64 4, !15, i64 160, i64 4, !15, i64 164, i64 4, !15, i64 168, i64 4, !15, i64 172, i64 4, !15, i64 176, i64 4, !15}
!17 = !{!"float", !6, i64 0}
!18 = !{!"SwsMatrix3x3", !6, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"ICh", !17, i64 0, !17, i64 4, !17, i64 8}
!21 = !{!"Gamut", !18, i64 0, !18, i64 36, !18, i64 72, !18, i64 108, !19, i64 144, !19, i64 152, !17, i64 160, !17, i64 164, !17, i64 168, !17, i64 172, !17, i64 176, !17, i64 180, !11, i64 184, !20, i64 200}
!22 = !{!"p1 _ZTS7v3u16_t", !19, i64 0}
!23 = !{!"CmsCtx", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !21, i64 40, !21, i64 256, !21, i64 472, !18, i64 688, !14, i64 724, !19, i64 904, !19, i64 912, !22, i64 920, !22, i64 928, !7, i64 936, !7, i64 940, !7, i64 944, !7, i64 948}
!24 = !{!23, !22, i64 920}
!25 = !{!23, !22, i64 928}
!26 = !{!23, !7, i64 936}
!27 = !{!23, !7, i64 940}
!28 = !{!23, !7, i64 944}
!29 = !{!23, !7, i64 948}
!30 = !{!23, !7, i64 900}
!31 = !{!23, !19, i64 912}
!32 = !{!6, !6, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!17, !17, i64 0}
!35 = !{!21, !17, i64 168}
!36 = !{!21, !17, i64 172}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!23, !17, i64 644}
!39 = !{!23, !17, i64 208}
!40 = !{!23, !17, i64 12}
!41 = !{!23, !17, i64 16}
!42 = !{!23, !17, i64 28}
!43 = !{!23, !17, i64 212}
!44 = !{!"short", !6, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!14, !7, i64 0}
!47 = !{!14, !7, i64 88}
!48 = !{!14, !7, i64 4}
!49 = !{!14, !7, i64 92}
!50 = !{!14, !7, i64 176}
!51 = !{i64 0, i64 36, !32, i64 36, i64 36, !32, i64 72, i64 36, !32, i64 108, i64 36, !32, i64 144, i64 8, !33, i64 152, i64 8, !33, i64 160, i64 4, !34, i64 164, i64 4, !34, i64 168, i64 4, !34, i64 172, i64 4, !34, i64 176, i64 4, !34, i64 180, i64 4, !34, i64 184, i64 4, !15, i64 188, i64 4, !15, i64 192, i64 4, !15, i64 196, i64 4, !15, i64 200, i64 4, !34, i64 204, i64 4, !34, i64 208, i64 4, !34}
!52 = !{i64 0, i64 36, !32}
!53 = !{!"p1 _ZTS13AVSliceThread", !19, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!13, !7, i64 0}
!56 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15}
!57 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !15, i64 40, i64 4, !15, i64 44, i64 4, !15}
!58 = !{!13, !7, i64 4}
!59 = !{!21, !19, i64 144}
!60 = !{!21, !19, i64 152}
!61 = !{!13, !7, i64 84}
!62 = !{!21, !17, i64 160}
!63 = !{!13, !7, i64 76}
!64 = !{!21, !17, i64 164}
!65 = !{!21, !17, i64 176}
!66 = !{!21, !17, i64 180}
!67 = !{!23, !17, i64 460}
!68 = !{!23, !17, i64 676}
!69 = !{!23, !17, i64 652}
!70 = !{!23, !17, i64 648}
!71 = !{!23, !17, i64 200}
!72 = distinct !{!72, !37, !80}
!73 = distinct !{!73, !37, !80}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !37, !80}
!76 = distinct !{!76, !37}
!77 = distinct !{!77, !37}
!78 = !{!22, !22, i64 0}
!79 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !34, i64 24, i64 4, !34, i64 28, i64 4, !34, i64 32, i64 4, !34, i64 40, i64 36, !32, i64 76, i64 36, !32, i64 112, i64 36, !32, i64 148, i64 36, !32, i64 184, i64 8, !33, i64 192, i64 8, !33, i64 200, i64 4, !34, i64 204, i64 4, !34, i64 208, i64 4, !34, i64 212, i64 4, !34, i64 216, i64 4, !34, i64 220, i64 4, !34, i64 224, i64 4, !15, i64 228, i64 4, !15, i64 232, i64 4, !15, i64 236, i64 4, !15, i64 240, i64 4, !34, i64 244, i64 4, !34, i64 248, i64 4, !34, i64 256, i64 36, !32, i64 292, i64 36, !32, i64 328, i64 36, !32, i64 364, i64 36, !32, i64 400, i64 8, !33, i64 408, i64 8, !33, i64 416, i64 4, !34, i64 420, i64 4, !34, i64 424, i64 4, !34, i64 428, i64 4, !34, i64 432, i64 4, !34, i64 436, i64 4, !34, i64 440, i64 4, !15, i64 444, i64 4, !15, i64 448, i64 4, !15, i64 452, i64 4, !15, i64 456, i64 4, !34, i64 460, i64 4, !34, i64 464, i64 4, !34, i64 472, i64 36, !32, i64 508, i64 36, !32, i64 544, i64 36, !32, i64 580, i64 36, !32, i64 616, i64 8, !33, i64 624, i64 8, !33, i64 632, i64 4, !34, i64 636, i64 4, !34, i64 640, i64 4, !34, i64 644, i64 4, !34, i64 648, i64 4, !34, i64 652, i64 4, !34, i64 656, i64 4, !15, i64 660, i64 4, !15, i64 664, i64 4, !15, i64 668, i64 4, !15, i64 672, i64 4, !34, i64 676, i64 4, !34, i64 680, i64 4, !34, i64 688, i64 36, !32, i64 724, i64 4, !15, i64 728, i64 4, !15, i64 732, i64 4, !15, i64 736, i64 4, !15, i64 740, i64 4, !15, i64 744, i64 4, !15, i64 748, i64 4, !15, i64 752, i64 4, !15, i64 756, i64 4, !15, i64 760, i64 4, !15, i64 764, i64 4, !15, i64 768, i64 4, !15, i64 772, i64 4, !15, i64 776, i64 4, !15, i64 780, i64 4, !15, i64 784, i64 4, !15, i64 788, i64 4, !15, i64 792, i64 4, !15, i64 796, i64 4, !15, i64 800, i64 4, !15, i64 804, i64 4, !15, i64 808, i64 4, !15, i64 812, i64 4, !15, i64 816, i64 4, !15, i64 820, i64 4, !15, i64 824, i64 4, !15, i64 828, i64 4, !15, i64 832, i64 4, !15, i64 836, i64 4, !15, i64 840, i64 4, !15, i64 844, i64 4, !15, i64 848, i64 4, !15, i64 852, i64 4, !15, i64 856, i64 4, !15, i64 860, i64 4, !15, i64 864, i64 4, !15, i64 868, i64 4, !15, i64 872, i64 4, !15, i64 876, i64 4, !15, i64 880, i64 4, !15, i64 884, i64 4, !15, i64 888, i64 4, !15, i64 892, i64 4, !15, i64 896, i64 4, !15, i64 900, i64 4, !15, i64 904, i64 8, !33, i64 912, i64 8, !33, i64 920, i64 8, !78, i64 928, i64 8, !78, i64 936, i64 4, !15, i64 940, i64 4, !15, i64 944, i64 4, !15, i64 948, i64 4, !15}
!80 = !{!"llvm.loop.unswitch.partial.disable"}
!81 = !{!"double", !6, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!23, !19, i64 184}
!84 = !{!23, !17, i64 20}
!85 = !{!23, !17, i64 8}
!86 = !{!23, !17, i64 4}
!87 = !{!23, !17, i64 0}
!88 = !{!23, !17, i64 24}
!89 = !{!23, !17, i64 32}
end_hunk_2
