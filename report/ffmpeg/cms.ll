Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cms?download=true
inline.NumInlined: 82
inline.NumDeleted: 16
begin_hunk_0_@perceptual:bb.a
  %i.ik = insertelement <2 x float> %i.ij, float %i.ii, i64 1
  %i.il = fdiv nsz <2 x float> %i.ig, %i.ik       ; 3 uses
  %i.im = extractelement <2 x float> %i.il, i64 1 ; 4 uses
  %i.in = fmul nsz float %i.im, 2.000000e+00
  %i.io = fmul nsz float %i.in, f0x3F333333
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.im, float %i.im, float %i.io)
  %i.iq = fadd nsz float %i.ip, f0x3EFAE147
  %i.ir = extractelement <2 x float> %i.il, i64 0
  %i.is = fsub nsz float %i.im, %i.ir
  %i.it = fdiv nsz float %i.iq, %i.is
  %i.iu = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fadd nsz <2 x float> %i.iv, %i.il       ; 2 uses
  %i.ix = extractelement <2 x float> %i.iw, i64 0
  %i.iy = fmul nsz float %i.ix, %i.it
  %i.iz = extractelement <2 x float> %i.iw, i64 1
  %i.ja = fdiv nsz float %i.iy, %i.iz
  %i.jb = fmul nsz float %i.hn, %i.ja
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i.ph = phi float [ %i.hs, %bb.b ], [ %i.jb, %bb.c ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.jd = load float, ptr %i.jc, align 8, !tbaa !70 ; 4 uses
  %i.je = tail call nsz float @llvm.maxnum.f32(float %.0.i.ph, float %i.jd) ; 2 uses
  %i.jf = fdiv nsz float %i.hi, %i.hn
  %i.jg = tail call nsz float @llvm.minnum.f32(float %i.jf, float %i.hv) ; 2 uses
  %i.jh = fcmp nsz ugt float %i.jg, f0x3F333333
  %or.cond.i101 = and i1 %i.hz, %i.jh
  br i1 %or.cond.i101, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ji = fadd nsz float %i.hv, f0xBF68F5C2
  %i.jj = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float -1.400000e+00, float f0x3EFAE147)
  %i.jk = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = insertelement <2 x float> <float -1.000000e+00, float poison>, float %i.jj, i64 1
  %i.jn = fadd nsz <2 x float> %i.jl, %i.jm       ; 2 uses
  %i.jo = fmul nsz <2 x float> %i.jn, <float f0xBEFAE147, float 1.000000e+00>
  %i.jp = extractelement <2 x float> %i.jn, i64 0
  %i.jq = tail call nsz float @llvm.maxnum.f32(float %i.jp, float f0x358637BD)
  %i.jr = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %i.jq, i64 1
  %i.jt = fdiv nsz <2 x float> %i.jo, %i.js       ; 3 uses
  %i.ju = extractelement <2 x float> %i.jt, i64 1 ; 4 uses
  %i.jv = fmul nsz float %i.ju, 2.000000e+00
  %i.jw = fmul nsz float %i.jv, f0x3F333333
  %i.jx = tail call nsz float @llvm.fmuladd.f32(float %i.ju, float %i.ju, float %i.jw)
  %i.jy = fadd nsz float %i.jx, f0x3EFAE147
  %i.jz = extractelement <2 x float> %i.jt, i64 0
  %i.ka = fsub nsz float %i.ju, %i.jz
  %i.kb = fdiv nsz float %i.jy, %i.ka
  %i.kc = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = fadd nsz <2 x float> %i.kd, %i.jt       ; 2 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  %i.kg = fmul nsz float %i.kf, %i.kb
  %i.kh = extractelement <2 x float> %i.ke, i64 1
  %i.ki = fdiv nsz float %i.kg, %i.kh
  %i.kj = fmul nsz float %i.hn, %i.ki
  br label %bb.f

softclip.exit102:                                 ; preds = %bb.a
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 648
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
  %.sroa.2132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.d = load <2 x float>, ptr %.sroa.2132.0..sroa_idx, align 8 ; 4 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 3 uses
  %i.f = extractelement <2 x float> %i.d, i64 0   ; 7 uses
  %.sroa.3038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.sroa.3038.0.copyload = load float, ptr %.sroa.3038.0..sroa_idx, align 8 ; 4 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 676
  %.sroa.31.0.copyload = load float, ptr %.sroa.31.0..sroa_idx, align 4
  %.sroa.072.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %i.g = fmul nsz float %.sroa.072.0.vec.extract.i, 5.000000e-05
  %i.h = tail call nsz float @llvm.maxnum.f32(float %i.g, float 1.000000e-07)
  %i.i = fcmp nsz ugt float %.sroa.072.0.vec.extract.i, %i.f
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.077.4.vec.insert.i57 = insertelement <2 x float> %i.d, float 0.000000e+00, i64 1
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
  br i1 %i.t, label %ingamut.exit22.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = extractelement <3 x float> %i.r, i64 0
  %i.v = fcmp nsz olt float %i.u, %i.f
  %i.w = shufflevector <3 x float> %i.r, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %3 = shufflevector <4 x float> %i.w, <4 x float> %i.e, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.x = shufflevector <2 x float> %i.d, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.y = shufflevector <3 x float> %i.x, <3 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.z = fcmp nsz ogt <4 x float> %3, %i.y
  %i.aa = bitcast <4 x i1> %i.z to i4
  %i.ab = icmp ne i4 %i.aa, 0
  %op.rdx58 = or i1 %i.ab, %i.v
  br i1 %op.rdx58, label %ingamut.exit22.thread, label %ingamut.exit22

ingamut.exit22:                                   ; preds = %bb.d
  %i.ac = fcmp nsz ogt <3 x float> %i.r, zeroinitializer
  %i.ad = extractelement <4 x float> %i.l, i64 3  ; 2 uses
  %i.ae = select <3 x i1> %i.ac, <3 x float> %i.r, <3 x float> zeroinitializer ; 2 uses
  %i.af = fcmp nsz ogt <3 x float> %i.ae, splat (float 1.000000e+00)
  %i.ag = select <3 x i1> %i.af, <3 x float> splat (float 1.000000e+00), <3 x float> %i.ae
  %i.ah = fmul nnan nsz <3 x float> %i.ag, splat (float 1.023000e+03) ; 2 uses
  %i.ai = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ah)
  %i.aj = fptosi <3 x float> %i.ai to <3 x i32>   ; 4 uses
  %i.ak = extractelement <3 x i32> %i.aj, i64 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.al
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !34 ; 2 uses
  %i.ao = extractelement <3 x i32> %i.aj, i64 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ap
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !34
  %i.as = uitofp <3 x i32> %i.aj to <3 x float>
  %i.at = fsub nsz <3 x float> %i.ah, %i.as       ; 2 uses
  %i.au = extractelement <3 x i32> %i.aj, i64 0
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.av
  %i.ax = load <2 x float>, ptr %i.aw, align 4, !tbaa !34 ; 2 uses
  %i.ay = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.at
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.an, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ba = shufflevector <2 x float> %i.ar, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bb = shufflevector <3 x float> %i.az, <3 x float> %i.ba, <3 x i32> <i32 0, i32 1, i32 3>
  %i.bc = fmul nsz <3 x float> %i.ay, %i.bb
  %i.bd = shufflevector <2 x float> %i.ax, <2 x float> %i.an, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> %i.ba, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bf = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.at, <3 x float> %i.bc) ; 3 uses
  %i.bg = shufflevector <8 x float> %i.a, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 0> ; 2 uses
  %i.bh = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> %i.c, <4 x i32> <i32 0, i32 poison, i32 6, i32 0>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.bg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bk = shufflevector <3 x float> %i.bf, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bl = fmul nsz <4 x float> %i.bj, %i.bk
  %i.bm = insertelement <4 x float> %i.bg, float %.sroa.9.0.copyload, i64 1
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.c, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bo = shufflevector <3 x float> %i.bf, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.bo, <4 x float> %i.bl)
  %i.bq = shufflevector <4 x float> %i.bh, <4 x float> %i.c, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.br = shufflevector <3 x float> %i.bf, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bs = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.br, <4 x float> %i.bp) ; 4 uses
  %i.bt = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %i.bu = fcmp nsz ole <4 x float> %i.bs, %i.bt
  %i.bv = fcmp nsz oge <4 x float> %i.bs, %i.bt
  %i.bw = shufflevector <4 x i1> %i.bu, <4 x i1> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bx = extractelement <4 x float> %i.bs, i64 1
  %i.by = fcmp nsz oge float %i.bx, %i.ad
  %i.bz = extractelement <4 x float> %i.bs, i64 2
  %i.ca = fcmp nsz oge float %i.bz, %i.ad
  %i.cb = freeze <4 x i1> %i.bw
  %i.cc = bitcast <4 x i1> %i.cb to i4
  %i.cd = icmp eq i4 %i.cc, -1
  %.fr = freeze i1 %i.by
  %op.rdx54.a = and i1 %i.cd, %.fr
  %op.rdx55.a = select i1 %op.rdx54.a, i1 %i.ca, i1 false
  br i1 %op.rdx55.a, label %clip_gamma.exit, label %ingamut.exit22.thread

ingamut.exit22.thread:                            ; preds = %bb.c, %bb.d, %ingamut.exit22
  %i.ce = fmul nsz float %2, %2
  %i.cf = tail call nsz float @llvm.fmuladd.f32(float %.sroa.028.4.vec.extract.i, float %.sroa.028.4.vec.extract.i, float %i.ce)
  %i.cg = tail call nsz float @llvm.sqrt.f32(float %i.cf) ; 3 uses
  %i.ch = tail call nsz float @llvm.atan2.f32(float %2, float %.sroa.028.4.vec.extract.i)
  %i.ci = fsub nsz float %.sroa.072.0.vec.extract.i, %i.f
  %i.cj = fsub nsz float %.sroa.3038.0.copyload, %i.f
  %i.ck = fdiv nsz float %i.ci, %i.cj
  %i.cl = tail call nsz float @llvm.maxnum.f32(float %i.ck, float 0.000000e+00)
  %i.cm = tail call nsz float @llvm.pow.f32(float %i.cl, float 3.000000e+00)
  %i.cn = fmul nnan nsz float %i.cm, 1.800000e+00
  %i.co = fdiv nsz float %i.cg, %.sroa.31.0.copyload
  %i.cp = tail call nsz float @llvm.minnum.f32(float %i.co, float 1.000000e+00)
  %i.cq = fmul nsz float %i.cp, %i.cn             ; 2 uses
  %i.cr = fsub nsz float %.sroa.072.0.vec.extract.i, %.sroa.3038.0.copyload ; 2 uses
  %sincos.i88.i = tail call nsz { float, float } @llvm.sincos.f32(float %i.ch) ; 2 uses
  %sin.i89.i = extractvalue { float, float } %sincos.i88.i, 0 ; 2 uses
  %cos.i90.i = extractvalue { float, float } %sincos.i88.i, 1 ; 2 uses
  %i.cs = shufflevector <8 x float> %i.a, <8 x float> poison, <3 x i32> <i32 2, i32 5, i32 poison>
  %i.ct = shufflevector <8 x float> %i.a, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.cu = shufflevector <8 x float> %i.a, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.cv = extractelement <4 x float> %i.l, i64 3  ; 2 uses
  %i.cw = shufflevector <4 x float> %i.c, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.cx = shufflevector <3 x float> %i.cs, <3 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  br label %bb.e

bb.e:                                             ; preds = %.thread, %ingamut.exit22.thread
  %.082.i = phi nsz float [ 5.000000e-01, %ingamut.exit22.thread ], [ %i.fr, %.thread ] ; 6 uses
  %.080.i = phi nsz float [ 1.000000e+00, %ingamut.exit22.thread ], [ %i.fo, %.thread ]
  %.0.i = phi nsz float [ 0.000000e+00, %ingamut.exit22.thread ], [ %i.fp, %.thread ] ; 3 uses
  %i.cy = tail call nsz float @llvm.pow.f32(float %.082.i, float %i.cq)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.cr, float %i.cy, float %.sroa.3038.0.copyload)
  %i.da = fmul nsz float %i.cg, %.082.i           ; 2 uses
  %i.db = fmul nsz float %cos.i90.i, %i.da
  %i.dc = fmul nsz float %sin.i89.i, %i.da
  %i.dd = insertelement <3 x float> poison, float %i.db, i64 0
  %i.de = shufflevector <3 x float> %i.dd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.df = insertelement <3 x float> poison, float %i.cz, i64 0
  %i.dg = shufflevector <3 x float> %i.df, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dh = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.de, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.dg)
  %i.di = insertelement <3 x float> poison, float %i.dc, i64 0
  %i.dj = shufflevector <3 x float> %i.di, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dk = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dj, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.dh) ; 5 uses
  %i.dl = extractelement <3 x float> %i.dk, i64 1
  %i.dm = fcmp nsz olt float %i.dl, %i.f
  br i1 %i.dm, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dn = extractelement <3 x float> %i.dk, i64 0
  %i.do = fcmp nsz olt float %i.dn, %i.f
  %i.dp = shufflevector <3 x float> %i.dk, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.dq = fcmp nsz ogt <4 x float> %i.dp, %i.e
  %i.dr = fcmp nsz olt <4 x float> %i.dp, %i.e
  %i.ds = shufflevector <4 x i1> %i.dq, <4 x i1> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dt = bitcast <4 x i1> %i.ds to i4
  %i.du = icmp ne i4 %i.dt, 0
  %op.rdx55 = or i1 %i.du, %i.do
  br i1 %op.rdx55, label %.thread, label %ingamut.exit

ingamut.exit:                                     ; preds = %bb.f
  %i.dv = fcmp nsz ogt <3 x float> %i.dk, zeroinitializer
  %i.dw = select <3 x i1> %i.dv, <3 x float> %i.dk, <3 x float> zeroinitializer ; 2 uses
  %i.dx = fcmp nsz ogt <3 x float> %i.dw, splat (float 1.000000e+00)
  %i.dy = select <3 x i1> %i.dx, <3 x float> splat (float 1.000000e+00), <3 x float> %i.dw
  %i.dz = fmul nnan nsz <3 x float> %i.dy, splat (float 1.023000e+03) ; 2 uses
  %i.ea = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.dz)
  %i.eb = fptosi <3 x float> %i.ea to <3 x i32>   ; 4 uses
  %i.ec = extractelement <3 x i32> %i.eb, i64 1
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ed
  %i.ef = load <2 x float>, ptr %i.ee, align 4, !tbaa !34 ; 2 uses
  %i.eg = extractelement <3 x i32> %i.eb, i64 2
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.eh
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !34
  %i.ek = uitofp <3 x i32> %i.eb to <3 x float>
  %i.el = fsub nsz <3 x float> %i.dz, %i.ek       ; 2 uses
  %i.em = extractelement <3 x i32> %i.eb, i64 0
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.en
  %i.ep = load <2 x float>, ptr %i.eo, align 4, !tbaa !34 ; 2 uses
  %i.eq = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.el
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> %i.ef, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.es = shufflevector <2 x float> %i.ej, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.et = shufflevector <3 x float> %i.er, <3 x float> %i.es, <3 x i32> <i32 0, i32 1, i32 3>
  %i.eu = fmul nsz <3 x float> %i.eq, %i.et
  %i.ev = shufflevector <2 x float> %i.ep, <2 x float> %i.ef, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.ew = shufflevector <3 x float> %i.ev, <3 x float> %i.es, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ex = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ew, <3 x float> %i.el, <3 x float> %i.eu) ; 3 uses
  %i.ey = shufflevector <3 x float> %i.ex, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ez = fmul nsz <4 x float> %i.cu, %i.ey
  %i.fa = shufflevector <3 x float> %i.ex, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.fa, <4 x float> %i.ez)
  %i.fc = shufflevector <3 x float> %i.ex, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.fc, <4 x float> %i.fb) ; 4 uses
  %i.fe = fcmp nsz ole <4 x float> %i.fd, %i.l
  %i.ff = fcmp nsz oge <4 x float> %i.fd, %i.l
  %i.fg = shufflevector <4 x i1> %i.fe, <4 x i1> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fh = extractelement <4 x float> %i.fd, i64 1
  %i.fi = fcmp nsz oge float %i.fh, %i.cv
  %i.fj = extractelement <4 x float> %i.fd, i64 2
  %i.fk = fcmp nsz oge float %i.fj, %i.cv
  %i.fl = freeze <4 x i1> %i.fg
  %i.fm = bitcast <4 x i1> %i.fl to i4
  %i.fn = icmp eq i4 %i.fm, -1
  %.fr58 = freeze i1 %i.fi
  %op.rdx = and i1 %i.fn, %.fr58
  %.fr59 = freeze i1 %i.fk
  %op.rdx52 = and i1 %op.rdx, %.fr59
  br i1 %op.rdx52, label %.thread, label %bb.g

bb.g:                                             ; preds = %ingamut.exit
  br label %.thread

.thread:                                          ; preds = %bb.g, %ingamut.exit, %bb.f, %bb.e
  %i.fo = phi float [ %.082.i, %bb.e ], [ %.082.i, %bb.g ], [ %.082.i, %bb.f ], [ %.080.i, %ingamut.exit ] ; 3 uses
  %i.fp = phi float [ %.0.i, %bb.e ], [ %.0.i, %bb.g ], [ %.0.i, %bb.f ], [ %.082.i, %ingamut.exit ] ; 3 uses
  %i.fq = fadd nsz float %i.fo, %i.fp
  %i.fr = fmul nsz float %i.fq, 5.000000e-01      ; 3 uses
  %i.fs = fsub nsz float %i.fo, %i.fp
  %i.ft = fcmp nsz ogt float %i.fs, %i.h
  br i1 %i.ft, label %bb.e, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %.thread
  %i.fu = tail call nsz float @llvm.pow.f32(float %i.fr, float %i.cq)
  %i.fv = tail call nsz float @llvm.fmuladd.f32(float %i.cr, float %i.fu, float %.sroa.3038.0.copyload)
  %.sroa.08.0.vec.insert.i98.i = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fw = fmul nsz float %i.cg, %i.fr             ; 2 uses
  %i.fx = fmul nsz float %cos.i90.i, %i.fw
  %.sroa.07.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i98.i, float %i.fx, i64 1
  %i.fy = fmul nsz float %sin.i89.i, %i.fw
  br label %clip_gamma.exit

clip_gamma.exit:                                  ; preds = %bb.b, %ingamut.exit22, %bb.h
  %.sroa.077.4.vec.insert.pn.i = phi <2 x float> [ %.sroa.077.4.vec.insert.i57, %bb.b ], [ %.sroa.07.4.vec.insert.i.i, %bb.h ], [ %1, %ingamut.exit22 ]
  %.pn103.i = phi float [ 0.000000e+00, %bb.b ], [ %i.fy, %bb.h ], [ %2, %ingamut.exit22 ]
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
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 524
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 532
  %.sroa.0.sroa.9.0.copyload = load float, ptr %.sroa.0.sroa.9.0..sroa_idx, align 4
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.sroa.0.sroa.10.0.copyload = load float, ptr %.sroa.0.sroa.10.0..sroa_idx, align 4
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 540
  %.sroa.0.sroa.11.0.copyload = load float, ptr %.sroa.0.sroa.11.0..sroa_idx, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load <4 x float>, ptr %i.c, align 4      ; 3 uses
  %i.f = load <2 x float>, ptr %.sroa.0.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.g = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.h = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> zeroinitializer
  %i.i = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.g, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.h)
  %i.j = insertelement <3 x float> poison, float %2, i64 0
  %i.k = shufflevector <3 x float> %i.j, <3 x float> poison, <3 x i32> zeroinitializer
  %i.l = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.k, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.i) ; 2 uses
  %i.m = fcmp nsz ogt <3 x float> %i.l, zeroinitializer
  %i.n = select <3 x i1> %i.m, <3 x float> %i.l, <3 x float> zeroinitializer ; 2 uses
  %i.o = fcmp nsz ogt <3 x float> %i.n, splat (float 1.000000e+00)
  %i.p = select <3 x i1> %i.o, <3 x float> splat (float 1.000000e+00), <3 x float> %i.n
  %i.q = fmul nnan nsz <3 x float> %i.p, splat (float 1.023000e+03) ; 2 uses
  %i.r = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.q)
  %i.s = fptosi <3 x float> %i.r to <3 x i32>     ; 4 uses
  %i.t = extractelement <3 x i32> %i.s, i64 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.u
  %i.w = load <2 x float>, ptr %i.v, align 4, !tbaa !34 ; 2 uses
  %i.x = extractelement <3 x i32> %i.s, i64 2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.y
  %i.aa = load <2 x float>, ptr %i.z, align 4, !tbaa !34
  %i.ab = uitofp <3 x i32> %i.s to <3 x float>
  %i.ac = fsub nsz <3 x float> %i.q, %i.ab        ; 2 uses
  %i.ad = extractelement <3 x i32> %i.s, i64 0
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ae
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !34 ; 2 uses
  %i.ah = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.ac
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> %i.w, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.aj = shufflevector <2 x float> %i.aa, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ak = shufflevector <3 x float> %i.ai, <3 x float> %i.aj, <3 x i32> <i32 0, i32 1, i32 3>
  %i.al = fmul nsz <3 x float> %i.ah, %i.ak
  %i.am = shufflevector <2 x float> %i.ag, <2 x float> %i.w, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.an = shufflevector <3 x float> %i.am, <3 x float> %i.aj, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ao = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.an, <3 x float> %i.ac, <3 x float> %i.al) ; 6 uses
  %i.ap = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aq = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.e, <4 x float> %i.aq, <2 x i32> <i32 1, i32 4>
  %i.as = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.at = fmul nsz <2 x float> %i.ar, %i.as
  %i.au = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.av = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = shufflevector <2 x float> %i.ap, <2 x float> %i.f, <2 x i32> <i32 0, i32 3>
  %i.ay = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ay, <2 x float> %i.aw)
  %i.ba = extractelement <3 x float> %i.ao, i64 2
  %i.bb = fmul nsz float %.sroa.0.sroa.10.0.copyload, %i.ba
  %i.bc = extractelement <3 x float> %i.ao, i64 1
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0.sroa.9.0.copyload, float %i.bc, float %i.bb)
  %i.be = extractelement <3 x float> %i.ao, i64 0
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %.sroa.0.sroa.11.0.copyload, float %i.be, float %i.bd)
  store <2 x float> %i.az, ptr %i.a, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.bf, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @ff_sws_matrix3x3_apply(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a) #13
  %i.bi = load float, ptr %i.a, align 8, !tbaa !34
  %i.bj = load float, ptr %i.d, align 4, !tbaa !34
  %i.bk = load float, ptr %i.bg, align 8, !tbaa !34
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 504
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8
  %i.bl = load <8 x float>, ptr %i.b, align 8     ; 3 uses
  %i.bm = insertelement <3 x float> poison, float %i.bj, i64 0
  %i.bn = shufflevector <3 x float> %i.bm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bo = shufflevector <8 x float> %i.bl, <8 x float> poison, <3 x i32> <i32 7, i32 1, i32 4>
  %i.bp = fmul nsz <3 x float> %i.bn, %i.bo
  %i.bq = shufflevector <8 x float> %i.bl, <8 x float> poison, <3 x i32> <i32 6, i32 0, i32 3>
  %i.br = insertelement <3 x float> poison, float %i.bi, i64 0
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bt = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bq, <3 x float> %i.bs, <3 x float> %i.bp)
  %i.bu = shufflevector <8 x float> %i.bl, <8 x float> poison, <3 x i32> <i32 poison, i32 2, i32 5>
  %i.bv = insertelement <3 x float> %i.bu, float %.sroa.11.0.copyload, i64 0
  %i.bw = insertelement <3 x float> poison, float %i.bk, i64 0
  %i.bx = shufflevector <3 x float> %i.bw, <3 x float> poison, <3 x i32> zeroinitializer
  %i.by = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bv, <3 x float> %i.bx, <3 x float> %i.bt)
  %i.bz = fmul nsz <3 x float> %i.by, splat (float f0x38D1B717)
  %i.ca = call nsz <3 x float> @llvm.maxnum.v3f32(<3 x float> %i.bz, <3 x float> zeroinitializer)
  %i.cb = call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.ca, <3 x float> splat (float f0x3E232000)) ; 2 uses
  %i.cc = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cb, <3 x float> splat (float f0x4196D000), <3 x float> splat (float f0x3F560000))
  %i.cd = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cb, <3 x float> splat (float 1.868750e+01), <3 x float> splat (float 1.000000e+00))
  %i.ce = fdiv nsz <3 x float> %i.cc, %i.cd
  %i.cf = call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.ce, <3 x float> splat (float f0x429DB000)) ; 6 uses
  %i.cg = shufflevector <3 x float> %i.cf, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = fmul nsz <2 x float> %i.cg, <float 4.000000e-01, float -4.851000e+00>
  %i.ci = shufflevector <3 x float> %i.cf, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> <float 4.000000e-01, float 4.455000e+00>, <2 x float> %i.ch)
  %i.ck = shufflevector <3 x float> %i.cf, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> <float 2.000000e-01, float 3.960000e-01>, <2 x float> %i.cj) ; 5 uses
  %i.cm = extractelement <3 x float> %i.cf, i64 2
  %i.cn = fmul nsz float %i.cm, 3.572000e-01
  %i.co = extractelement <3 x float> %i.cf, i64 1
  %i.cp = call nsz float @llvm.fmuladd.f32(float %i.co, float f0x3F4E3BCD, float %i.cn)
  %i.cq = extractelement <3 x float> %i.cf, i64 0
  %i.cr = call nsz float @llvm.fmuladd.f32(float %i.cq, float -1.162800e+00, float %i.cp) ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 548
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.cs = load <8 x float>, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.964.0.copyload = load float, ptr %.sroa.964.0..sroa_idx, align 4
  %i.ct = load <2 x float>, ptr %.sroa.560.0..sroa_idx, align 4
  %i.cu = load <4 x float>, ptr %.sroa.13.0..sroa_idx, align 4 ; 4 uses
  %.sroa.2172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cv = load <2 x float>, ptr %.sroa.2172.0..sroa_idx, align 8 ; 4 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 3 uses
  %i.cx = extractelement <2 x float> %i.cv, i64 0 ; 7 uses
  %.sroa.3078.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672
  %.sroa.3078.0.copyload = load float, ptr %.sroa.3078.0..sroa_idx, align 8 ; 4 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 676
  %.sroa.31.0.copyload = load float, ptr %.sroa.31.0..sroa_idx, align 4
  %i.cy = extractelement <2 x float> %i.cl, i64 0 ; 4 uses
  %i.cz = fmul nsz float %i.cy, 5.000000e-05
  %i.da = call nsz float @llvm.maxnum.f32(float %i.cz, float 1.000000e-07)
  %i.db = fcmp nsz ugt float %i.cy, %i.cx
  br i1 %i.db, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.077.4.vec.insert.i98 = insertelement <2 x float> %i.cv, float 0.000000e+00, i64 1
  br label %clip_gamma.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.dc = load <2 x float>, ptr %.sroa.26.0..sroa_idx, align 8
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.de = fadd nsz <4 x float> %i.dd, <float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A, float f0xB8D1B717> ; 5 uses
  %i.df = shufflevector <2 x float> %i.cl, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dg = shufflevector <2 x float> %i.cl, <2 x float> poison, <3 x i32> zeroinitializer
  %i.dh = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.df, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.dg)
  %i.di = insertelement <3 x float> poison, float %i.cr, i64 0
  %i.dj = shufflevector <3 x float> %i.di, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dk = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dj, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.dh) ; 6 uses
  %i.dl = extractelement <3 x float> %i.dk, i64 1
  %i.dm = fcmp nsz olt float %i.dl, %i.cx
  br i1 %i.dm, label %ingamut.exit48.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dn = extractelement <3 x float> %i.dk, i64 0
  %i.do = fcmp nsz olt float %i.dn, %i.cx
  %i.dp = shufflevector <3 x float> %i.dk, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %3 = shufflevector <4 x float> %i.dp, <4 x float> %i.cw, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.dq = shufflevector <2 x float> %i.cv, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.dr = shufflevector <3 x float> %i.dq, <3 x float> %i.dk, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ds = fcmp nsz ogt <4 x float> %3, %i.dr
  %i.dt = bitcast <4 x i1> %i.ds to i4
  %i.du = icmp ne i4 %i.dt, 0
  %op.rdx99 = or i1 %i.du, %i.do
  br i1 %op.rdx99, label %ingamut.exit48.thread, label %ingamut.exit48

ingamut.exit48:                                   ; preds = %bb.d
  %i.dv = fcmp nsz ogt <3 x float> %i.dk, zeroinitializer
  %i.dw = extractelement <4 x float> %i.de, i64 3 ; 2 uses
  %i.dx = select <3 x i1> %i.dv, <3 x float> %i.dk, <3 x float> zeroinitializer ; 2 uses
  %i.dy = fcmp nsz ogt <3 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = select <3 x i1> %i.dy, <3 x float> splat (float 1.000000e+00), <3 x float> %i.dx
  %i.ea = fmul nnan nsz <3 x float> %i.dz, splat (float 1.023000e+03) ; 2 uses
  %i.eb = call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ea)
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
  %i.ey = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ex, <3 x float> %i.em, <3 x float> %i.ev) ; 3 uses
  %i.ez = shufflevector <8 x float> %i.cs, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 0> ; 2 uses
  %i.fa = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.cu, <4 x i32> <i32 0, i32 poison, i32 6, i32 0>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.ez, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.fd = shufflevector <3 x float> %i.ey, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fe = fmul nsz <4 x float> %i.fc, %i.fd
  %i.ff = insertelement <4 x float> %i.ez, float %.sroa.964.0.copyload, i64 1
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fh = shufflevector <3 x float> %i.ey, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %i.fh, <4 x float> %i.fe)
  %i.fj = shufflevector <4 x float> %i.fa, <4 x float> %i.cu, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.fk = shufflevector <3 x float> %i.ey, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fl = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fi) ; 4 uses
  %i.fm = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3> ; 2 uses
  %i.fn = fcmp nsz ole <4 x float> %i.fl, %i.fm
  %i.fo = fcmp nsz oge <4 x float> %i.fl, %i.fm
  %i.fp = shufflevector <4 x i1> %i.fn, <4 x i1> %i.fo, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fq = extractelement <4 x float> %i.fl, i64 1
  %i.fr = fcmp nsz oge float %i.fq, %i.dw
  %i.fs = extractelement <4 x float> %i.fl, i64 2
  %i.ft = fcmp nsz oge float %i.fs, %i.dw
  %i.fu = freeze <4 x i1> %i.fp
  %i.fv = bitcast <4 x i1> %i.fu to i4
  %i.fw = icmp eq i4 %i.fv, -1
  %.fr = freeze i1 %i.fr
  %op.rdx95.a = and i1 %i.fw, %.fr
  %op.rdx96.a = select i1 %op.rdx95.a, i1 %i.ft, i1 false
  br i1 %op.rdx96.a, label %clip_gamma.exit, label %ingamut.exit48.thread

ingamut.exit48.thread:                            ; preds = %bb.c, %bb.d, %ingamut.exit48
  %i.fx = fmul nsz float %i.cr, %i.cr
  %i.fy = extractelement <2 x float> %i.cl, i64 1 ; 3 uses
  %i.fz = call nsz float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.fx)
  %i.ga = call nsz float @llvm.sqrt.f32(float %i.fz) ; 3 uses
  %i.gb = call nsz float @llvm.atan2.f32(float %i.cr, float %i.fy)
  %i.gc = fsub nsz float %i.cy, %i.cx
  %i.gd = fsub nsz float %.sroa.3078.0.copyload, %i.cx
  %i.ge = fdiv nsz float %i.gc, %i.gd
  %i.gf = call nsz float @llvm.maxnum.f32(float %i.ge, float 0.000000e+00)
  %i.gg = call nsz float @llvm.pow.f32(float %i.gf, float 3.000000e+00)
  %i.gh = fmul nnan nsz float %i.gg, 1.800000e+00
  %i.gi = fdiv nsz float %i.ga, %.sroa.31.0.copyload
  %i.gj = call nsz float @llvm.minnum.f32(float %i.gi, float 1.000000e+00)
  %i.gk = fmul nsz float %i.gj, %i.gh             ; 2 uses
  %i.gl = fsub nsz float %i.cy, %.sroa.3078.0.copyload ; 2 uses
  %sincos.i88.i = call nsz { float, float } @llvm.sincos.f32(float %i.gb) ; 2 uses
  %sin.i89.i = extractvalue { float, float } %sincos.i88.i, 0 ; 2 uses
  %cos.i90.i = extractvalue { float, float } %sincos.i88.i, 1 ; 2 uses
  %i.gm = shufflevector <8 x float> %i.cs, <8 x float> poison, <3 x i32> <i32 2, i32 5, i32 poison>
  %i.gn = shufflevector <8 x float> %i.cs, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.go = shufflevector <8 x float> %i.cs, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.gp = extractelement <4 x float> %i.de, i64 3 ; 2 uses
  %i.gq = shufflevector <4 x float> %i.cu, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.gr = shufflevector <3 x float> %i.gm, <3 x float> %i.gq, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  br label %bb.e

bb.e:                                             ; preds = %.thread, %ingamut.exit48.thread
  %.082.i = phi nsz float [ 5.000000e-01, %ingamut.exit48.thread ], [ %i.jl, %.thread ] ; 6 uses
  %.080.i = phi nsz float [ 1.000000e+00, %ingamut.exit48.thread ], [ %i.ji, %.thread ]
  %.0.i = phi nsz float [ 0.000000e+00, %ingamut.exit48.thread ], [ %i.jj, %.thread ] ; 3 uses
  %i.gs = call nsz float @llvm.pow.f32(float %.082.i, float %i.gk)
  %i.gt = call nsz float @llvm.fmuladd.f32(float %i.gl, float %i.gs, float %.sroa.3078.0.copyload)
  %i.gu = fmul nsz float %i.ga, %.082.i           ; 2 uses
  %i.gv = fmul nsz float %cos.i90.i, %i.gu
  %i.gw = fmul nsz float %sin.i89.i, %i.gu
  %i.gx = insertelement <3 x float> poison, float %i.gv, i64 0
  %i.gy = shufflevector <3 x float> %i.gx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gz = insertelement <3 x float> poison, float %i.gt, i64 0
  %i.ha = shufflevector <3 x float> %i.gz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hb = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gy, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.ha)
  %i.hc = insertelement <3 x float> poison, float %i.gw, i64 0
  %i.hd = shufflevector <3 x float> %i.hc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.he = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hd, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.hb) ; 5 uses
  %i.hf = extractelement <3 x float> %i.he, i64 1
  %i.hg = fcmp nsz olt float %i.hf, %i.cx
  br i1 %i.hg, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hh = extractelement <3 x float> %i.he, i64 0
  %i.hi = fcmp nsz olt float %i.hh, %i.cx
  %i.hj = shufflevector <3 x float> %i.he, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.hk = fcmp nsz ogt <4 x float> %i.hj, %i.cw
  %i.hl = fcmp nsz olt <4 x float> %i.hj, %i.cw
  %i.hm = shufflevector <4 x i1> %i.hk, <4 x i1> %i.hl, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hn = bitcast <4 x i1> %i.hm to i4
  %i.ho = icmp ne i4 %i.hn, 0
  %op.rdx96 = or i1 %i.ho, %i.hi
  br i1 %op.rdx96, label %.thread, label %ingamut.exit

ingamut.exit:                                     ; preds = %bb.f
  %i.hp = fcmp nsz ogt <3 x float> %i.he, zeroinitializer
  %i.hq = select <3 x i1> %i.hp, <3 x float> %i.he, <3 x float> zeroinitializer ; 2 uses
  %i.hr = fcmp nsz ogt <3 x float> %i.hq, splat (float 1.000000e+00)
  %i.hs = select <3 x i1> %i.hr, <3 x float> splat (float 1.000000e+00), <3 x float> %i.hq
  %i.ht = fmul nnan nsz <3 x float> %i.hs, splat (float 1.023000e+03) ; 2 uses
  %i.hu = call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ht)
  %i.hv = fptosi <3 x float> %i.hu to <3 x i32>   ; 4 uses
  %i.hw = extractelement <3 x i32> %i.hv, i64 1
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.hx
  %i.hz = load <2 x float>, ptr %i.hy, align 4, !tbaa !34 ; 2 uses
  %i.ia = extractelement <3 x i32> %i.hv, i64 2
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ib
  %i.id = load <2 x float>, ptr %i.ic, align 4, !tbaa !34
  %i.ie = uitofp <3 x i32> %i.hv to <3 x float>
  %i.if = fsub nsz <3 x float> %i.ht, %i.ie       ; 2 uses
  %i.ig = extractelement <3 x i32> %i.hv, i64 0
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ih
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !34 ; 2 uses
  %i.ik = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.if
  %i.il = shufflevector <2 x float> %i.ij, <2 x float> %i.hz, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.im = shufflevector <2 x float> %i.id, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.in = shufflevector <3 x float> %i.il, <3 x float> %i.im, <3 x i32> <i32 0, i32 1, i32 3>
  %i.io = fmul nsz <3 x float> %i.ik, %i.in
  %i.ip = shufflevector <2 x float> %i.ij, <2 x float> %i.hz, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.iq = shufflevector <3 x float> %i.ip, <3 x float> %i.im, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ir = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.iq, <3 x float> %i.if, <3 x float> %i.io) ; 3 uses
  %i.is = shufflevector <3 x float> %i.ir, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.it = fmul nsz <4 x float> %i.go, %i.is
  %i.iu = shufflevector <3 x float> %i.ir, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.iu, <4 x float> %i.it)
  %i.iw = shufflevector <3 x float> %i.ir, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ix = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %i.iw, <4 x float> %i.iv) ; 4 uses
  %i.iy = fcmp nsz ole <4 x float> %i.ix, %i.de
  %i.iz = fcmp nsz oge <4 x float> %i.ix, %i.de
  %i.ja = shufflevector <4 x i1> %i.iy, <4 x i1> %i.iz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.jb = extractelement <4 x float> %i.ix, i64 1
  %i.jc = fcmp nsz oge float %i.jb, %i.gp
  %i.jd = extractelement <4 x float> %i.ix, i64 2
  %i.je = fcmp nsz oge float %i.jd, %i.gp
  %i.jf = freeze <4 x i1> %i.ja
  %i.jg = bitcast <4 x i1> %i.jf to i4
  %i.jh = icmp eq i4 %i.jg, -1
  %.fr99 = freeze i1 %i.jc
  %op.rdx = and i1 %i.jh, %.fr99
  %.fr100 = freeze i1 %i.je
  %op.rdx93 = and i1 %op.rdx, %.fr100
  br i1 %op.rdx93, label %.thread, label %bb.g

bb.g:                                             ; preds = %ingamut.exit
  br label %.thread

.thread:                                          ; preds = %bb.g, %ingamut.exit, %bb.f, %bb.e
  %i.ji = phi float [ %.082.i, %bb.e ], [ %.082.i, %bb.g ], [ %.082.i, %bb.f ], [ %.080.i, %ingamut.exit ] ; 3 uses
  %i.jj = phi float [ %.0.i, %bb.e ], [ %.0.i, %bb.g ], [ %.0.i, %bb.f ], [ %.082.i, %ingamut.exit ] ; 3 uses
  %i.jk = fadd nsz float %i.ji, %i.jj
  %i.jl = fmul nsz float %i.jk, 5.000000e-01      ; 3 uses
  %i.jm = fsub nsz float %i.ji, %i.jj
  %i.jn = fcmp nsz ogt float %i.jm, %i.da
  br i1 %i.jn, label %bb.e, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %.thread
  %i.jo = call nsz float @llvm.pow.f32(float %i.jl, float %i.gk)
  %i.jp = call nsz float @llvm.fmuladd.f32(float %i.gl, float %i.jo, float %.sroa.3078.0.copyload)
  %.sroa.08.0.vec.insert.i98.i = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jq = fmul nsz float %i.ga, %i.jl             ; 2 uses
  %i.jr = fmul nsz float %cos.i90.i, %i.jq
  %.sroa.07.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i98.i, float %i.jr, i64 1
  %i.js = fmul nsz float %sin.i89.i, %i.jq
  br label %clip_gamma.exit

clip_gamma.exit:                                  ; preds = %bb.b, %ingamut.exit48, %bb.h
  %.sroa.077.4.vec.insert.pn.i = phi <2 x float> [ %.sroa.077.4.vec.insert.i98, %bb.b ], [ %.sroa.07.4.vec.insert.i.i, %bb.h ], [ %i.cl, %ingamut.exit48 ]
  %.pn103.i = phi float [ 0.000000e+00, %bb.b ], [ %i.js, %bb.h ], [ %i.cr, %ingamut.exit48 ]
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
  %i.q = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.r = insertelement <2 x float> %i.q, float %i.g, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = fmul nsz <4 x float> %i.s, <float 6.000000e-01, float f0x3E4CCCCC, float f0x3E4CCCCC, float f0x3F666666>
  %i.u = insertelement <4 x float> poison, float %i.h, i64 0
  %i.v = insertelement <4 x float> %i.u, float %i.e, i64 1
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.x = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> <float 4.000000e-01, float 8.000000e-01, float 8.000000e-01, float 1.000000e-01>, <4 x float> %i.t) ; 4 uses
  %i.y = extractelement <4 x float> %i.x, i64 0
  %i.z = select nsz i1 %i.p, float %i.k, float %i.y ; 2 uses
  %i.aa = fmul nsz float %i.g, f0x3F666666
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.h, float 1.000000e-01, float %i.aa) ; 2 uses
  %i.ac = fcmp nsz ogt float %i.z, %i.ab
  %i.ad = select nsz i1 %i.ac, float %i.z, float %i.ab ; 2 uses
  %i.ae = extractelement <4 x float> %i.x, i64 2  ; 2 uses
  %i.af = fcmp nsz ogt float %i.ad, %i.ae
  %..i38.i = select nsz i1 %i.af, float %i.ae, float %i.ad ; 4 uses
  %i.ag = fsub nsz float %..i38.i, %i.g           ; 2 uses
  %i.ah = fsub nsz float %i.h, %i.g
  %i.ai = fdiv nsz float %i.ag, %i.ah             ; 3 uses
  %i.aj = fsub nsz float 1.000000e+00, %i.ai
  %i.ak = fmul nsz float %i.d, %i.aj
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.ai, float %i.ak)
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fadd nsz <2 x float> %i.an, <float -8.000000e-01, float -1.000000e-01>
  %i.ap = fdiv nsz <2 x float> %i.ao, <float -4.000000e-01, float 3.000000e-01> ; 2 uses
  %i.aq = fcmp nsz ogt <2 x float> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x float> %i.ap, <2 x float> zeroinitializer ; 2 uses
  %i.as = fcmp nsz ogt <2 x float> %i.ar, splat (float 1.000000e+00)
  %i.at = select <2 x i1> %i.as, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ar ; 3 uses
  %i.au = fmul nsz <2 x float> %i.at, %i.at
  %i.av = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 3.000000e+00))
  %i.aw = fmul nsz <2 x float> %i.au, %i.av       ; 2 uses
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.aw, %shift
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ay = fsub nsz float 1.000000e+00, %i.ax
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float 4.000000e-01, float %i.ay) ; 2 uses
  %i.ba = fsub nsz float 1.000000e+00, %i.az
  %i.bb = fmul nsz float %..i38.i, %i.ba
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.al, float %i.az, float %i.bb) ; 2 uses
  %i.bd = extractelement <4 x float> %i.x, i64 3  ; 2 uses
  %i.be = fcmp nsz ogt float %i.bc, %i.bd
  %i.bf = select nsz i1 %i.be, float %i.bc, float %i.bd ; 2 uses
  %i.bg = extractelement <4 x float> %i.x, i64 1  ; 2 uses
  %i.bh = fcmp nsz ogt float %i.bf, %i.bg
  %..i.i = select nsz i1 %i.bh, float %i.bg, float %i.bf ; 4 uses
  store float %..i38.i, ptr %i.n, align 4, !tbaa !34
  store float %..i.i, ptr %i.o, align 8, !tbaa !34
  %i.bi = fsub nsz float %..i.i, %i.d
  %i.bj = fdiv nsz float %i.bi, %i.ag
  %i.bk = fdiv nsz float %i.h, %i.e
  %i.bl = fadd nsz float %i.bk, -1.000000e+00
  %i.bm = fmul nsz float %i.bl, 1.500000e+00      ; 2 uses
  %i.bn = fcmp nsz ogt float %i.bm, 2.000000e-01
  %i.bo = select nsz i1 %i.bn, float %i.bm, float 2.000000e-01 ; 2 uses
  %i.bp = fcmp nsz ogt float %i.bo, 1.200000e+00
  %..i = select nsz i1 %i.bp, float 1.200000e+00, float %i.bo
  %i.bq = fmul nsz float %..i, 5.000000e-01
  %i.br = tail call nsz float @llvm.pow.f32(float %i.bj, float %i.bq) ; 4 uses
  %i.bs = fneg nsz float %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.br, ptr %i.bu, align 8, !tbaa !40
  %i.bv = insertelement <2 x float> poison, float %i.g, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.h, i64 1
  %i.bx = insertelement <2 x float> poison, float %..i38.i, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fsub nsz <2 x float> %i.bw, %i.by       ; 4 uses
  %i.ca = fsub nsz float %i.d, %..i.i
  %foldExtExtBinop80 = fmul nsz <2 x float> %i.bz, %i.bz
  %i.cb = extractelement <2 x float> %foldExtExtBinop80, i64 0
  %i.cc = fsub nsz float %..i.i, %i.e
  %i.cd = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.br, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.cc, i64 1
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.bz, <2 x float> %i.cg) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = fdiv nsz float %i.ci, %i.cb
end_hunk_0
begin_hunk_1_@ff_sws_tone_map_generate:bb.a
  %broadcast.splat64 = shufflevector <4 x float> %broadcast.splatinsert63, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert65 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat66 = shufflevector <4 x float> %broadcast.splatinsert65, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <4 x float> poison, float %i.am, i64 0
  %broadcast.splat68 = shufflevector <4 x float> %broadcast.splatinsert67, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat70 = shufflevector <4 x float> %broadcast.splatinsert69, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat72 = shufflevector <4 x float> %broadcast.splatinsert71, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat74 = shufflevector <4 x float> %broadcast.splatinsert73, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph51
  %index76 = phi i64 [ 0, %vector.ph51 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %vec.ind77 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph51 ], [ %vec.ind.next80, %vector.body75 ] ; 2 uses
  %i.bl = uitofp nneg <4 x i32> %vec.ind77 to <4 x float>
  %i.bm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat54, <4 x float> %i.bl, <4 x float> %broadcast.splat56) ; 5 uses
  %i.bn = fsub nsz <4 x float> %i.bm, %broadcast.splat58 ; 5 uses
  %i.bo = fcmp nsz ogt <4 x float> %i.bn, zeroinitializer
  %i.bp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat60, <4 x float> %i.bn, <4 x float> %broadcast.splat62)
  %i.bq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat64, <4 x float> %i.bn, <4 x float> %broadcast.splat66)
  %i.br = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bq, <4 x float> %i.bn, <4 x float> %broadcast.splat68)
  %predphi = select <4 x i1> %i.bo, <4 x float> %i.br, <4 x float> %i.bp
  %i.bs = fmul nsz <4 x float> %i.bn, %predphi
  %i.bt = fadd nsz <4 x float> %i.bs, %broadcast.splat70 ; 5 uses
  %i.bu = fdiv nsz <4 x float> %i.bm, %i.bt
  %i.bv = fadd nsz <4 x float> %i.bt, splat (float -6.000000e+00)
  %i.bw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bt, <4 x float> splat (float 9.000000e+00))
  %i.bx = fmul nsz <4 x float> %i.bt, %i.bw
  %i.by = fadd nsz <4 x float> %i.bm, splat (float -6.000000e+00)
  %i.bz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.bm, <4 x float> splat (float 9.000000e+00))
  %i.ca = fmul nsz <4 x float> %i.bm, %i.bz
  %i.cb = fdiv nsz <4 x float> %i.bx, %i.ca
  %i.cc = call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bu, <4 x float> %i.cb)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index76
  %i.ce = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat72, <4 x float> %i.bt, <4 x float> %broadcast.splat74)
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> %i.cc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cg = call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cf, <8 x float> <float 6.553400e+04, float 3.276800e+04, float 6.553400e+04, float 3.276800e+04, float 6.553400e+04, float 3.276800e+04, float 6.553400e+04, float 3.276800e+04>, <8 x float> splat (float 5.000000e-01))
  %i.ch = fptosi <8 x float> %i.cg to <8 x i32>
  %i.ci = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ch, <8 x i32> zeroinitializer)
  %i.cj = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ci, <8 x i32> splat (i32 65535))
  %interleaved.vec78 = trunc nuw <8 x i32> %i.cj to <8 x i16>
  store <8 x i16> %interleaved.vec78, ptr %i.cd, align 2, !tbaa !45
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %vec.ind.next80 = add <4 x i32> %vec.ind77, splat (i32 4)
  %i.ck = icmp eq i64 %index.next79, %n.vec52
  br i1 %i.ck, label %middle.block81, label %vector.body75, !llvm.loop !93

middle.block81:                                   ; preds = %vector.body75
  %cmp.n82 = icmp eq i64 %n.vec52, %wide.trip.count34
  br i1 %cmp.n82, label %._crit_edge, label %.lr.ph.split.us.preheader84

.lr.ph.split.us.preheader84:                      ; preds = %.lr.ph.split.us.preheader, %middle.block81
  %indvars.iv31.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec52, %middle.block81 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader84, %tone_map_apply.exit.us
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %tone_map_apply.exit.us ], [ %indvars.iv31.ph, %.lr.ph.split.us.preheader84 ] ; 3 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv31 to i32
  %i.cm = uitofp nsz nneg i32 %i.cl to float
  %i.cn = call nsz float @llvm.fmuladd.f32(float %i.o, float %i.cm, float %i.k) ; 3 uses
  %i.co = fsub nsz float %i.cn, %i.aj             ; 5 uses
  %i.cp = fcmp nsz ogt float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.cq = call nsz float @llvm.fmuladd.f32(float %i.al, float %i.co, float %i.ak)
  br label %tone_map_apply.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
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
  %i.de = call nsz float @llvm.minnum.f32(float %i.cv, float %i.dd)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv31
  %i.dg = call nsz float @llvm.fmuladd.f32(float %i.u, float %i.cu, float %i.w)
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.de, i64 1
  %i.dj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> <float 6.553400e+04, float 3.276800e+04>, <2 x float> splat (float 5.000000e-01))
  %i.dk = fptosi <2 x float> %i.dj to <2 x i32>
  %i.dl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dk, <2 x i32> zeroinitializer)
  %i.dm = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.dl, <2 x i32> splat (i32 65535))
  %i.dn = trunc nuw <2 x i32> %i.dm to <2 x i16>
  store <2 x i16> %i.dn, ptr %i.df, align 2, !tbaa !45
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
  %3 = fcmp nsz ogt float %i.r, %i.p
  %or.cond50 = or i1 %3, %or.cond
  %i.t = extractelement <3 x float> %i.j, i64 0   ; 2 uses
  %i.u = fcmp nsz olt float %i.t, %i.l
  %or.cond51 = or i1 %i.u, %or.cond50
  %4 = fcmp nsz ogt float %i.t, %i.p
  %or.cond52 = or i1 %4, %or.cond51
  br i1 %or.cond52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = fcmp nsz ogt <3 x float> %i.j, zeroinitializer
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.aa = select <3 x i1> %i.v, <3 x float> %i.j, <3 x float> zeroinitializer ; 2 uses
  %i.ab = fcmp nsz ogt <3 x float> %i.aa, splat (float 1.000000e+00)
  %i.ac = select <3 x i1> %i.ab, <3 x float> splat (float 1.000000e+00), <3 x float> %i.aa
  %i.ad = fmul nnan nsz <3 x float> %i.ac, splat (float 1.023000e+03) ; 2 uses
  %i.ae = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ad)
  %i.af = fptosi <3 x float> %i.ae to <3 x i32>   ; 4 uses
  %i.ag = extractelement <3 x i32> %i.af, i64 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ah
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !34 ; 2 uses
  %i.ak = extractelement <3 x i32> %i.af, i64 2
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.al
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !34
  %i.ao = uitofp <3 x i32> %i.af to <3 x float>
  %i.ap = fsub nsz <3 x float> %i.ad, %i.ao       ; 2 uses
  %i.aq = extractelement <3 x i32> %i.af, i64 0
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ar
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !34 ; 2 uses
  %i.au = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.ap
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %i.aj, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.aw = shufflevector <2 x float> %i.an, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ax = shufflevector <3 x float> %i.av, <3 x float> %i.aw, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ay = fmul nsz <3 x float> %i.au, %i.ax
  %i.az = shufflevector <2 x float> %i.at, <2 x float> %i.aj, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> %i.aw, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bb = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ba, <3 x float> %i.ap, <3 x float> %i.ay) ; 3 uses
  %i.bc = load <4 x float>, ptr %i.x, align 4, !tbaa !34
  %i.bd = load <5 x float>, ptr %i.y, align 8, !tbaa !34
  %i.be = load <7 x float>, ptr %i.w, align 8, !tbaa !34
  %i.bf = load <2 x float>, ptr %i.z, align 4, !tbaa !34 ; 2 uses
  %i.bg = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.bi = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.bk = fmul nsz <4 x float> %i.bg, %i.bj
  %i.bl = shufflevector <7 x float> %i.be, <7 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.bm = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> %i.bm, <4 x float> %i.bk)
  %i.bo = shufflevector <2 x float> %i.bf, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <5 x float> %i.bd, <5 x float> %i.bo, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.bq = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> zeroinitializer
  %i.br = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bq, <4 x float> %i.bn) ; 4 uses
  %i.bs = fcmp nsz ole <4 x float> %i.br, %i.d
  %i.bt = fcmp nsz oge <4 x float> %i.br, %i.d
  %i.bu = shufflevector <4 x i1> %i.bs, <4 x i1> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bv = extractelement <4 x float> %i.br, i64 1
  %i.bw = extractelement <4 x float> %i.d, i64 3  ; 2 uses
  %i.bx = fcmp nsz oge float %i.bv, %i.bw
  %i.by = extractelement <4 x float> %i.br, i64 2
  %i.bz = fcmp nsz oge float %i.by, %i.bw
  %i.ca = freeze <4 x i1> %i.bu
  %i.cb = bitcast <4 x i1> %i.ca to i4
  %i.cc = icmp eq i4 %i.cb, -1
  %.fr = freeze i1 %i.bx
  %op.rdx = and i1 %i.cc, %.fr
  %op.rdx70 = select i1 %op.rdx, i1 %i.bz, i1 false
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
  %.sroa.062.4.vec.insert195 = insertelement <2 x float> %i.b, float 0.000000e+00, i64 1 ; 5 uses
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
  %.sroa.022.4.vec.insert32.i196 = insertelement <2 x float> %i.j, float 2.500000e-01, i64 1
  %sincos.i.i = tail call nsz { float, float } @llvm.sincos.f32(float %0) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.038.i = phi nsz float [ 5.000000e-01, %bb.c ], [ %.038..sroa.022.4.vec.extract.i, %bb.d ]
  %.0.i = phi nsz float [ 0.000000e+00, %bb.c ], [ %.sroa.022.4.vec.extract..0.i, %bb.d ]
  %.sroa.022.0.i = phi nsz <2 x float> [ %.sroa.022.4.vec.insert32.i196, %bb.c ], [ %.sroa.022.4.vec.insert37.i, %bb.d ] ; 3 uses
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
  %.sroa.022.1.i = phi nsz <2 x float> [ %.sroa.059.4.vec.insert, %bb.b ], [ %.sroa.062.4.vec.insert195, %bb.a ], [ %.sroa.022.4.vec.insert37.i, %bb.d ] ; 2 uses
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
  %.sroa.022.1.i81 = phi nsz <2 x float> [ %.sroa.059.4.vec.insert, %bb.e ], [ %.sroa.062.4.vec.insert195, %desat_bounded.exit ], [ %.sroa.022.4.vec.insert37.i97, %bb.g ] ; 2 uses
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
  %.sroa.062.0172 = phi <2 x float> [ %.sroa.062.4.vec.insert195, %.lr.ph ], [ %.sroa.062.1, %desat_bounded.exit117 ] ; 5 uses
  %.sroa.059.0171 = phi <2 x float> [ %.sroa.059.4.vec.insert, %.lr.ph ], [ %.sroa.059.1, %desat_bounded.exit117 ] ; 4 uses
  %.0170 = phi float [ %i.f, %.lr.ph ], [ %i.bn, %desat_bounded.exit117 ]
  %.sroa.040.0169 = phi <2 x float> [ %.sroa.022.1.i, %.lr.ph ], [ %.sroa.040.1, %desat_bounded.exit117 ] ; 8 uses
  %.sroa.022.0168 = phi <2 x float> [ %.sroa.022.1.i81, %.lr.ph ], [ %.sroa.022.1, %desat_bounded.exit117 ] ; 7 uses
  %i.bn = fmul nnan nsz float %.0170, 6.180340e-01 ; 4 uses
  %i.bo = fcmp ogt <2 x float> %.sroa.040.0169, %.sroa.022.0168
  %i.bp = extractelement <2 x i1> %i.bo, i64 1
  br i1 %i.bp, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.sroa.062.0.vec.extract69 = extractelement <2 x float> %.sroa.062.0172, i64 0
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float f0x3EC3910D, float %.sroa.062.0.vec.extract69) ; 4 uses
  %.sroa.062.4.vec.extract = extractelement <2 x float> %.sroa.062.0172, i64 1
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
  %.fr198 = freeze i1 %i.eb
  %op.rdx = and i1 %i.eg, %.fr198
  %.fr199.a = freeze i1 %i.ed
  %op.rdx190 = and i1 %op.rdx, %.fr199.a
  br i1 %op.rdx190, label %.thread, label %bb.n

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
  %.sroa.062.0.vec.extract71 = extractelement <2 x float> %.sroa.040.0169, i64 0
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float 6.180340e-01, float %.sroa.062.0.vec.extract71) ; 4 uses
  %.sroa.059.4.vec.extract = extractelement <2 x float> %.sroa.059.0171, i64 1
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

bb.r:                                             ; preds = %.thread162, %bb.q
  %.038.i128 = phi nsz float [ 5.000000e-01, %bb.q ], [ %i.hd, %.thread162 ]
  %.0.i129 = phi nsz float [ %i.eo, %bb.q ], [ %i.he, %.thread162 ] ; 3 uses
  %.sroa.022.0.i130 = phi nsz <2 x float> [ %.sroa.022.4.vec.insert32.i124, %bb.q ], [ %.sroa.022.4.vec.insert37.i135, %.thread162 ] ; 4 uses
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
  br i1 %i.fc, label %.thread162, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fd = extractelement <3 x float> %i.fa, i64 0
  %i.fe = fcmp nsz olt float %i.fd, %i.e
  %i.ff = shufflevector <3 x float> %i.fa, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %2 = shufflevector <4 x float> %i.ff, <4 x float> %i.c, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.fg = shufflevector <3 x float> %i.bd, <3 x float> %i.fa, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fh = fcmp nsz ogt <4 x float> %2, %i.fg
  %i.fi = bitcast <4 x i1> %i.fh to i4
  %i.fj = icmp ne i4 %i.fi, 0
  %op.rdx196 = or i1 %i.fj, %i.fe
  br i1 %op.rdx196, label %.thread162, label %ingamut.exit149

ingamut.exit149:                                  ; preds = %bb.s
  %i.fk = fcmp nsz ogt <3 x float> %i.fa, zeroinitializer
  %i.fl = select <3 x i1> %i.fk, <3 x float> %i.fa, <3 x float> zeroinitializer ; 2 uses
  %i.fm = fcmp nsz ogt <3 x float> %i.fl, splat (float 1.000000e+00)
  %i.fn = select <3 x i1> %i.fm, <3 x float> splat (float 1.000000e+00), <3 x float> %i.fl
  %i.fo = fmul nnan nsz <3 x float> %i.fn, splat (float 1.023000e+03) ; 2 uses
  %i.fp = tail call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.fo)
  %i.fq = fptosi <3 x float> %i.fp to <3 x i32>   ; 4 uses
  %i.fr = extractelement <3 x i32> %i.fq, i64 1
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.fs
  %i.fu = load <2 x float>, ptr %i.ft, align 4, !tbaa !34 ; 2 uses
  %i.fv = extractelement <3 x i32> %i.fq, i64 2
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.fw
  %i.fy = load <2 x float>, ptr %i.fx, align 4, !tbaa !34
  %i.fz = uitofp <3 x i32> %i.fq to <3 x float>
  %i.ga = fsub nsz <3 x float> %i.fo, %i.fz       ; 2 uses
  %i.gb = extractelement <3 x i32> %i.fq, i64 0
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.gc
  %i.ge = load <2 x float>, ptr %i.gd, align 4, !tbaa !34 ; 2 uses
  %i.gf = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.ga
  %i.gg = shufflevector <2 x float> %i.ge, <2 x float> %i.fu, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.gh = shufflevector <2 x float> %i.fy, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.gi = shufflevector <3 x float> %i.gg, <3 x float> %i.gh, <3 x i32> <i32 0, i32 1, i32 3>
  %i.gj = fmul nsz <3 x float> %i.gf, %i.gi
  %i.gk = shufflevector <2 x float> %i.ge, <2 x float> %i.fu, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.gl = shufflevector <3 x float> %i.gk, <3 x float> %i.gh, <3 x i32> <i32 0, i32 1, i32 4>
  %i.gm = tail call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gl, <3 x float> %i.ga, <3 x float> %i.gj) ; 3 uses
  %i.gn = shufflevector <3 x float> %i.gm, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.go = fmul nsz <4 x float> %i.gn, %i.ay
  %i.gp = shufflevector <3 x float> %i.gm, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.gp, <4 x float> %i.go)
  %i.gr = shufflevector <3 x float> %i.gm, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gs = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.gr, <4 x float> %i.gq) ; 4 uses
  %i.gt = fcmp nsz ole <4 x float> %i.gs, %i.az
  %i.gu = fcmp nsz oge <4 x float> %i.gs, %i.az
  %i.gv = shufflevector <4 x i1> %i.gt, <4 x i1> %i.gu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gw = extractelement <4 x float> %i.gs, i64 1
  %i.gx = fcmp nsz oge float %i.gw, %i.ar
  %i.gy = extractelement <4 x float> %i.gs, i64 2
  %i.gz = fcmp nsz oge float %i.gy, %i.ar
  %i.ha = freeze <4 x i1> %i.gv
  %i.hb = bitcast <4 x i1> %i.ha to i4
  %i.hc = icmp eq i4 %i.hb, -1
  %.fr = freeze i1 %i.gx
  %op.rdx192 = and i1 %i.hc, %.fr
  %.fr197 = freeze i1 %i.gz
  %op.rdx193.a = and i1 %op.rdx192, %.fr197
  br i1 %op.rdx193.a, label %.thread162, label %bb.t

bb.t:                                             ; preds = %ingamut.exit149
  br label %.thread162

.thread162:                                       ; preds = %bb.t, %ingamut.exit149, %bb.s, %bb.r
  %i.hd = phi float [ %.sroa.03.4.vec.extract.i.i131, %bb.r ], [ %.sroa.03.4.vec.extract.i.i131, %bb.t ], [ %.sroa.03.4.vec.extract.i.i131, %bb.s ], [ %.038.i128, %ingamut.exit149 ] ; 3 uses
  %i.he = phi float [ %.0.i129, %bb.r ], [ %.0.i129, %bb.t ], [ %.0.i129, %bb.s ], [ %.sroa.03.4.vec.extract.i.i131, %ingamut.exit149 ] ; 3 uses
  %i.hf = fadd nsz float %i.hd, %i.he
  %i.hg = fmul nsz float %i.hf, 5.000000e-01
  %.sroa.022.4.vec.insert37.i135 = insertelement <2 x float> %.sroa.022.0.i130, float %i.hg, i64 1 ; 2 uses
  %i.hh = fsub nsz float %i.hd, %i.he
  %i.hi = fcmp nsz ogt float %i.hh, %i.er
  br i1 %i.hi, label %bb.r, label %desat_bounded.exit117, !llvm.loop !99

desat_bounded.exit117:                            ; preds = %.thread162, %.thread, %bb.o, %bb.p, %bb.i, %bb.j
  %.sroa.022.1 = phi nsz <2 x float> [ %.sroa.059.4.vec.insert, %bb.p ], [ %.sroa.040.0169, %bb.j ], [ %.sroa.040.0169, %bb.i ], [ %.sroa.040.0169, %.thread ], [ %.sroa.062.4.vec.insert195, %bb.o ], [ %.sroa.022.4.vec.insert37.i135, %.thread162 ] ; 2 uses
  %.sroa.040.1 = phi nsz <2 x float> [ %.sroa.022.0168, %bb.p ], [ %.sroa.059.4.vec.insert, %bb.j ], [ %.sroa.062.4.vec.insert195, %bb.i ], [ %.sroa.022.4.vec.insert37.i116, %.thread ], [ %.sroa.022.0168, %bb.o ], [ %.sroa.022.0168, %.thread162 ] ; 2 uses
  %.sroa.059.1 = phi nsz <2 x float> [ %.sroa.059.0171, %bb.p ], [ %.sroa.022.0168, %bb.j ], [ %.sroa.022.0168, %bb.i ], [ %.sroa.022.0168, %.thread ], [ %.sroa.059.0171, %bb.o ], [ %.sroa.059.0171, %.thread162 ]
  %.sroa.062.1 = phi nsz <2 x float> [ %.sroa.040.0169, %bb.p ], [ %.sroa.062.0172, %bb.j ], [ %.sroa.062.0172, %bb.i ], [ %.sroa.062.0172, %.thread ], [ %.sroa.040.0169, %bb.o ], [ %.sroa.040.0169, %.thread162 ]
  %i.hj = fcmp nsz ogt float %i.bn, 5.000000e-05
  br i1 %i.hj, label %bb.h, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %desat_bounded.exit117, %desat_bounded.exit98
  %.sroa.022.0.lcssa = phi <2 x float> [ %.sroa.022.1.i81, %desat_bounded.exit98 ], [ %.sroa.022.1, %desat_bounded.exit117 ] ; 2 uses
  %.sroa.040.0.lcssa = phi <2 x float> [ %.sroa.022.1.i, %desat_bounded.exit98 ], [ %.sroa.040.1, %desat_bounded.exit117 ] ; 2 uses
  %i.hk = fcmp ogt <2 x float> %.sroa.040.0.lcssa, %.sroa.022.0.lcssa
  %.splat = shufflevector <2 x i1> %i.hk, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
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
!40 = !{!23, !17, i64 16}
!41 = !{!23, !17, i64 12}
!42 = !{!23, !17, i64 28}
!43 = !{!23, !17, i64 212}
end_hunk_1
