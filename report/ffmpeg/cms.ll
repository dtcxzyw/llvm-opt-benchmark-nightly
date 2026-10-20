Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cms?download=true
inline.NumInlined: 82
inline.NumDeleted: 16
begin_hunk_0_@absolute:bb.a
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
  %.fr = freeze i1 %i.hl
  %op.rdx97 = and i1 %i.hq, %.fr
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
  %.fr104 = freeze i1 %i.kw
  %op.rdx = and i1 %i.lb, %.fr104
  %.fr105 = freeze i1 %i.ky
  %op.rdx95 = and i1 %op.rdx, %.fr105
  br i1 %op.rdx95, label %.thread, label %bb.g

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
  %2 = fmul nsz float %i.g, 6.000000e-01
  %3 = tail call nsz float @llvm.fmuladd.f32(float %i.h, float 4.000000e-01, float %2)
  %4 = select nsz i1 %i.p, float %i.k, float %3   ; 2 uses
  %i.q = insertelement <2 x float> %i.c, float %i.g, i64 1
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.s = fmul nsz <4 x float> %i.r, <float f0x3E4CCCCC, float f0x3E4CCCCC, float f0x3F666666, float f0x3F666666>
  %i.t = insertelement <4 x float> poison, float %i.e, i64 0
  %i.u = insertelement <4 x float> %i.t, float %i.h, i64 1
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> <float 8.000000e-01, float 8.000000e-01, float 1.000000e-01, float 1.000000e-01>, <4 x float> %i.s) ; 4 uses
  %i.x = extractelement <4 x float> %i.w, i64 3   ; 2 uses
  %i.y = fcmp nsz ogt float %4, %i.x
  %i.z = select nsz i1 %i.y, float %4, float %i.x ; 2 uses
  %i.aa = extractelement <4 x float> %i.w, i64 1  ; 2 uses
  %i.ab = fcmp nsz ogt float %i.z, %i.aa
  %..i38.i = select nsz i1 %i.ab, float %i.aa, float %i.z ; 5 uses
  %i.ac = fsub nsz float %..i38.i, %i.g           ; 2 uses
  %i.ad = fsub nsz float %i.h, %i.g
  %i.ae = fdiv nsz float %i.ac, %i.ad             ; 3 uses
  %i.af = fsub nsz float 1.000000e+00, %i.ae
  %i.ag = fmul nsz float %i.d, %i.af
  %i.ah = tail call nsz float @llvm.fmuladd.f32(float %i.e, float %i.ae, float %i.ag)
  %i.ai = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fadd nsz <2 x float> %i.aj, <float -8.000000e-01, float -1.000000e-01>
  %i.al = fdiv nsz <2 x float> %i.ak, <float -4.000000e-01, float 3.000000e-01> ; 2 uses
  %i.am = fcmp nsz ogt <2 x float> %i.al, zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x float> %i.al, <2 x float> zeroinitializer ; 2 uses
  %i.ao = fcmp nsz ogt <2 x float> %i.an, splat (float 1.000000e+00)
  %i.ap = select <2 x i1> %i.ao, <2 x float> splat (float 1.000000e+00), <2 x float> %i.an ; 3 uses
  %i.aq = fmul nsz <2 x float> %i.ap, %i.ap
  %i.ar = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 3.000000e+00))
  %i.as = fmul nsz <2 x float> %i.aq, %i.ar       ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.au = fsub nsz float 1.000000e+00, %i.at
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.at, float 4.000000e-01, float %i.au) ; 2 uses
  %i.aw = fsub nsz float 1.000000e+00, %i.av
  %i.ax = fmul nsz float %..i38.i, %i.aw
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.av, float %i.ax) ; 2 uses
  %i.az = extractelement <4 x float> %i.w, i64 2  ; 2 uses
  %i.ba = fcmp nsz ogt float %i.ay, %i.az
  %i.bb = select nsz i1 %i.ba, float %i.ay, float %i.az ; 2 uses
  %i.bc = extractelement <4 x float> %i.w, i64 0  ; 2 uses
  %i.bd = fcmp nsz ogt float %i.bb, %i.bc
  %..i.i = select nsz i1 %i.bd, float %i.bc, float %i.bb ; 4 uses
  store float %..i38.i, ptr %i.n, align 4, !tbaa !34
  store float %..i.i, ptr %i.o, align 8, !tbaa !34
  %i.be = fsub nsz float %..i.i, %i.d
  %i.bf = fdiv nsz float %i.be, %i.ac
  %i.bg = fdiv nsz float %i.h, %i.e
  %i.bh = fadd nsz float %i.bg, -1.000000e+00
  %i.bi = fmul nsz float %i.bh, 1.500000e+00      ; 2 uses
  %i.bj = fcmp nsz ogt float %i.bi, 2.000000e-01
  %i.bk = select nsz i1 %i.bj, float %i.bi, float 2.000000e-01 ; 2 uses
  %i.bl = fcmp nsz ogt float %i.bk, 1.200000e+00
  %..i = select nsz i1 %i.bl, float 1.200000e+00, float %i.bk
  %i.bm = fmul nsz float %..i, 5.000000e-01
  %i.bn = tail call nsz float @llvm.pow.f32(float %i.bf, float %i.bm) ; 4 uses
  %5 = fsub nsz float %i.g, %..i38.i              ; 3 uses
  %i.bo = fsub nsz float %i.h, %..i38.i           ; 4 uses
  %6 = fsub nsz float %i.d, %..i.i
  %7 = fneg nsz float %i.bn
  %8 = tail call nsz float @llvm.fmuladd.f32(float %7, float %5, float %6)
  %9 = fmul nsz float %5, %5
  %10 = fdiv nsz float %8, %9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %10, ptr %11, align 4, !tbaa !40
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bn, ptr %12, align 8, !tbaa !41
  %13 = fmul nsz float %i.bo, 2.000000e+00
  %14 = fmul nsz float %i.bo, %13                 ; 2 uses
  %15 = fsub nsz float %..i.i, %i.e
  %i.bp = fmul nsz float %i.bo, %14
  %16 = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float %i.bo, float %15)
  %17 = insertelement <2 x float> poison, float %16, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul nsz <2 x float> %18, <float 1.000000e+00, float -3.000000e+00>
  %i.br = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %14, i64 1
  %i.bt = fdiv nsz <2 x float> %i.bq, %i.bs
  store <2 x float> %i.bt, ptr %0, align 8, !tbaa !34
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.bu = fsub nsz float %i.e, %i.d
  %i.bv = fsub nsz float %i.h, %i.g
  %i.bw = fdiv nsz float %i.bu, %i.bv             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bw, ptr %i.bx, align 4, !tbaa !42
  %i.by = fneg nsz float %i.g
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.bw, float %i.d)
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ca = insertelement <2 x float> %i.c, float %i.h, i64 0 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cc = insertelement <2 x float> %i.cb, float %i.g, i64 0
  %i.cd = fsub nsz <2 x float> %i.ca, %i.cc
  %i.ce = fdiv nsz <2 x float> %i.ca, %i.cd       ; 2 uses
  %i.cf = extractelement <2 x float> %i.ce, i64 0
  %i.cg = extractelement <2 x float> %i.ce, i64 1
  %i.ch = fdiv nsz float %i.cf, %i.cg             ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ch, ptr %i.ci, align 4, !tbaa !42
  %i.cj = fneg nsz float %i.g
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.ch, float %i.d)
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.cl, align 4, !tbaa !42
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.sink78 = phi i64 [ 32, %bb.g ], [ 32, %bb.f ], [ 32, %bb.e ], [ 8, %bb.d ]
  %.sink = phi float [ 0.000000e+00, %bb.g ], [ %i.ck, %bb.f ], [ %i.bz, %bb.e ], [ %i.bn, %bb.d ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink78
  store float %.sink, ptr %i.cm, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c
  ret void
}

declare void @ff_sws_get_adaptation(ptr dead_on_unwind writable sret(%struct.SwsMatrix3x3) align 4, ptr noundef, i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @avpriv_slicethread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @generate_slice(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 %4) #7 {
bb.a:
  %5 = alloca %struct.CmsCtx, align 8             ; 57 uses
  %i.a = alloca [3 x double], align 16            ; 10 uses
  %i.b = alloca [3 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(952) %5, ptr noundef nonnull align 8 dereferenceable(952) %0, i64 952, i1 false), !tbaa.struct !79
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 936
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = mul nsw i32 %i.d, %1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 940 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 8 uses
  %i.h = add i32 %1, 1                            ; 2 uses
  %i.i = mul i32 %i.d, %i.h
  %. = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 948 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 944 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 928
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.p = load float, ptr %i.o, align 4, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.r = load float, ptr %i.q, align 8, !tbaa !39 ; 2 uses
  %i.s = fsub nsz float %i.p, %i.r
  %i.t = fneg nsz float %i.r
  %i.u = add nsw i32 %i.g, -1
  %i.v = sitofp nsz i32 %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 424 ; 2 uses
  %i.x = load <2 x i32>, ptr %i.k, align 8, !tbaa !15 ; 3 uses
  %i.y = extractelement <2 x i32> %i.x, i64 1     ; 3 uses
  %i.z = add i32 %i.y, -1
  %i.aa = add i32 %i.z, %3
  %i.ab = sdiv i32 %i.aa, %3                      ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %1                   ; 3 uses
  %i.ad = extractelement <2 x i32> %i.x, i64 0
  %i.ae = mul nsw i32 %i.ad, %i.y
  %i.af = mul i32 %i.ab, %i.h
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.y) ; 2 uses
  %i.ah = mul nsw i32 %i.ae, %i.ac
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [6 x i8], ptr %i.m, i64 %i.ai ; 2 uses
  %i.ak = select i1 %.not, ptr null, ptr %i.aj    ; 2 uses
  %i.al = load <4 x float>, ptr %i.w, align 8     ; 2 uses
  %i.am = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.an = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.al, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ao = fsub nsz <4 x float> %i.am, %i.an
  %i.ap = insertelement <4 x float> poison, float %i.s, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.v, i64 1
  %i.ar = add <2 x i32> %i.x, splat (i32 -1)
  %i.as = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.at = sitofp <4 x i32> %i.as to <4 x float>
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.av = fdiv nsz <4 x float> %i.ao, %i.au       ; 5 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0
  %i.ax = fmul nsz float %i.aw, %i.t
  %i.ay = icmp slt i32 %i.e, %.
  br i1 %i.ay, label %.lr.ph230, label %._crit_edge231

.lr.ph230:                                        ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 216
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.not141 = icmp eq ptr %i.ak, null
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 900
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 456
  %.sroa.47.0..sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %5, i64 464
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 672
  %.sroa.4.0..sroa_idx.i181 = getelementptr inbounds nuw i8, ptr %5, i64 680
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 912
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 508
  %.sroa.0191.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 524
  %.sroa.0191.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 532
  %.sroa.0191.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 536
  %.sroa.0191.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 540
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 624
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 648
  %i.bu = icmp sgt i32 %i.g, 0
  br i1 %i.bu, label %.lr.ph230.split.preheader, label %._crit_edge231

.lr.ph230.split.preheader:                        ; preds = %.lr.ph230
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 920
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = mul nuw nsw i32 %i.g, %i.g
  %i.by = mul nsw i32 %i.bx, %i.e
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [6 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = extractelement <4 x float> %i.av, i64 1 ; 3 uses
  %i.cc = insertelement <2 x float> <float poison, float f0x3F000100>, float %i.ax, i64 0
  %i.cd = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ce = insertelement <2 x float> %i.cd, float 1.000000e+00, i64 1
  br label %.lr.ph230.split

._crit_edge231:                                   ; preds = %._crit_edge225, %.lr.ph230, %bb.a
  %.not140 = icmp ne ptr %i.ak, null
  %i.cf = icmp slt i32 %i.ac, %i.ag
  %or.cond = select i1 %.not140, i1 %i.cf, i1 false
  br i1 %or.cond, label %.lr.ph245, label %.loopexit

.lr.ph245:                                        ; preds = %._crit_edge231
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 900
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 456
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 464
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 672
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 680
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 912
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 508
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 524
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 532
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 536
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 540
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 624
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 648
  %i.cq = load i32, ptr %i.j, align 4, !tbaa !29  ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph245.split.preheader, label %.loopexit

.lr.ph245.split.preheader:                        ; preds = %.lr.ph245
  %i.cs = extractelement <4 x float> %i.av, i64 2 ; 2 uses
  %i.ct = extractelement <4 x float> %i.av, i64 3
  br label %.lr.ph245.split

.lr.ph230.split:                                  ; preds = %.lr.ph230.split.preheader, %._crit_edge225
  %i.cu = phi i32 [ %i.dc, %._crit_edge225 ], [ %i.g, %.lr.ph230.split.preheader ] ; 3 uses
  %i.cv = phi i32 [ %i.dd, %._crit_edge225 ], [ %i.g, %.lr.ph230.split.preheader ] ; 5 uses
  %i.cw = phi i32 [ %i.de, %._crit_edge225 ], [ %i.g, %.lr.ph230.split.preheader ] ; 2 uses
  %.0228 = phi ptr [ %.1.lcssa, %._crit_edge225 ], [ %i.ca, %.lr.ph230.split.preheader ] ; 3 uses
  %.0128227 = phi i32 [ %i.df, %._crit_edge225 ], [ %i.e, %.lr.ph230.split.preheader ] ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph224, label %._crit_edge225

.lr.ph224:                                        ; preds = %.lr.ph230.split
  %i.cy = sitofp nsz i32 %.0128227 to float
  %i.cz = fmul nsz float %i.cb, %i.cy
  %i.da = fpext nsz float %i.cz to double
  %i.db = icmp sgt i32 %i.cv, 0
  br i1 %i.db, label %.lr.ph224.split, label %._crit_edge225

._crit_edge225:                                   ; preds = %._crit_edge, %.lr.ph224, %.lr.ph230.split
  %i.dc = phi i32 [ %i.cu, %.lr.ph230.split ], [ %i.cu, %.lr.ph224 ], [ %i.dm, %._crit_edge ]
  %i.dd = phi i32 [ %i.cv, %.lr.ph230.split ], [ %i.cv, %.lr.ph224 ], [ %i.dm, %._crit_edge ]
  %i.de = phi i32 [ %i.cw, %.lr.ph230.split ], [ %i.cv, %.lr.ph224 ], [ %i.dm, %._crit_edge ]
  %.1.lcssa = phi ptr [ %.0228, %.lr.ph230.split ], [ %.0228, %.lr.ph224 ], [ %.2.lcssa, %._crit_edge ]
  %i.df = add i32 %.0128227, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %.
  br i1 %exitcond.not, label %._crit_edge231, label %.lr.ph230.split, !llvm.loop !72

.lr.ph224.split:                                  ; preds = %.lr.ph224, %._crit_edge
  %i.dg = phi i32 [ %i.dm, %._crit_edge ], [ %i.cu, %.lr.ph224 ]
  %i.dh = phi i32 [ %i.dm, %._crit_edge ], [ %i.cv, %.lr.ph224 ]
  %.1222 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %.0228, %.lr.ph224 ] ; 2 uses
  %.0132221 = phi i32 [ %i.dn, %._crit_edge ], [ 0, %.lr.ph224 ] ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph224.split
  %i.dj = uitofp nsz nneg i32 %.0132221 to float
  %i.dk = fmul nsz float %i.cb, %i.dj
  %i.dl = fpext nsz float %i.dk to double
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j, %.lr.ph224.split
  %i.dm = phi i32 [ %i.dg, %.lr.ph224.split ], [ %i.jz, %bb.j ] ; 6 uses
  %.2.lcssa = phi ptr [ %.1222, %.lr.ph224.split ], [ %.3, %bb.j ] ; 2 uses
  %i.dn = add nuw nsw i32 %.0132221, 1            ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.dm
  br i1 %i.do, label %.lr.ph224.split, label %._crit_edge225, !llvm.loop !73

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.2220 = phi ptr [ %.1222, %.lr.ph ], [ %.3, %bb.j ] ; 3 uses
  %.0133219 = phi i32 [ 0, %.lr.ph ], [ %i.jy, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.dp = uitofp nsz nneg i32 %.0133219 to float
  %i.dq = fmul nsz float %i.cb, %i.dp
  %i.dr = fpext nsz float %i.dq to double
  store double %i.dr, ptr %i.a, align 16, !tbaa !82
  store double %i.dl, ptr %i.az, align 8, !tbaa !82
  store double %i.da, ptr %i.ba, align 16, !tbaa !82
  %i.ds = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.dt = load <2 x float>, ptr %i.bc, align 8, !tbaa !34
  %i.du = fpext <2 x float> %i.dt to <2 x double> ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = extractelement <2 x double> %i.du, i64 1
  call void %i.ds(double noundef %i.dw, double noundef %i.dv, ptr noundef nonnull %i.a) #13
  %i.dx = load <2 x double>, ptr %i.a, align 16, !tbaa !82
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float> ; 2 uses
  %i.dz = load double, ptr %i.ba, align 16, !tbaa !82
  %i.ea = fptrunc nsz double %i.dz to float
  %i.eb = load <8 x float>, ptr %i.n, align 8     ; 3 uses
  %i.ec = load <1 x float>, ptr %.sroa.11.0..sroa_idx, align 8
  %i.ed = shufflevector <1 x float> %i.ec, <1 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ee = shufflevector <8 x float> %i.eb, <8 x float> poison, <3 x i32> <i32 7, i32 1, i32 4>
  %i.ef = shufflevector <2 x float> %i.dy, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.eg = fmul nsz <3 x float> %i.ee, %i.ef
  %i.eh = shufflevector <8 x float> %i.eb, <8 x float> poison, <3 x i32> <i32 6, i32 0, i32 3>
  %i.ei = shufflevector <2 x float> %i.dy, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ej = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.eh, <3 x float> %i.ei, <3 x float> %i.eg)
  %i.ek = shufflevector <8 x float> %i.eb, <8 x float> poison, <3 x i32> <i32 poison, i32 2, i32 5>
  %i.el = shufflevector <3 x float> %i.ed, <3 x float> %i.ek, <3 x i32> <i32 0, i32 4, i32 5>
  %i.em = insertelement <3 x float> poison, float %i.ea, i64 0
  %i.en = shufflevector <3 x float> %i.em, <3 x float> poison, <3 x i32> zeroinitializer
  %i.eo = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.el, <3 x float> %i.en, <3 x float> %i.ej)
  %i.ep = fmul nsz <3 x float> %i.eo, splat (float f0x38D1B717)
  %i.eq = call nsz <3 x float> @llvm.maxnum.v3f32(<3 x float> %i.ep, <3 x float> zeroinitializer)
  %i.er = call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.eq, <3 x float> splat (float f0x3E232000)) ; 2 uses
  %i.es = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.er, <3 x float> splat (float f0x4196D000), <3 x float> splat (float f0x3F560000))
  %i.et = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.er, <3 x float> splat (float 1.868750e+01), <3 x float> splat (float 1.000000e+00))
  %i.eu = fdiv nsz <3 x float> %i.es, %i.et
  %i.ev = call nsz <3 x float> @llvm.pow.v3f32(<3 x float> %i.eu, <3 x float> splat (float f0x429DB000)) ; 6 uses
  %i.ew = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ex = fmul nsz <2 x float> %i.ew, <float 4.000000e-01, float -4.851000e+00>
  %i.ey = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ez = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> <float 4.000000e-01, float 4.455000e+00>, <2 x float> %i.ex)
  %i.fa = shufflevector <3 x float> %i.ev, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> <float 2.000000e-01, float 3.960000e-01>, <2 x float> %i.ez) ; 6 uses
  %i.fc = extractelement <3 x float> %i.ev, i64 2
  %i.fd = fmul nsz float %i.fc, 3.572000e-01
  %i.fe = extractelement <3 x float> %i.ev, i64 1
  %i.ff = call nsz float @llvm.fmuladd.f32(float %i.fe, float f0x3F4E3BCD, float %i.fd)
  %i.fg = extractelement <3 x float> %i.ev, i64 0
  %i.fh = call nsz float @llvm.fmuladd.f32(float %i.fg, float -1.162800e+00, float %i.ff) ; 3 uses
  br i1 %.not141, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.fb, <2 x float> %i.cc)
  %i.fj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> splat (float 6.553400e+04), <2 x float> splat (float 5.000000e-01))
  %i.fk = fptosi <2 x float> %i.fj to <2 x i32>
  %i.fl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fk, <2 x i32> zeroinitializer)
  %i.fm = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.fl, <2 x i32> splat (i32 65535))
  %i.fn = fadd nsz float %i.fh, f0x3F000100
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.fo = extractelement <2 x float> %i.fb, i64 1 ; 2 uses
  %i.fp = call nsz float @llvm.atan2.f32(float %i.fh, float %i.fo) ; 2 uses
  %i.fq = load i32, ptr %i.bd, align 4, !tbaa !30 ; 2 uses
  switch i32 %i.fq, label %update_hue_peaks.exit185.thread [
    i32 0, label %bb.e
    i32 1, label %update_hue_peaks.exit185
    i32 3, label %update_hue_peaks.exit185
  ]

bb.e:                                             ; preds = %bb.d
  %i.fr = call fastcc { <2 x float>, float } @saturate(float noundef %i.fp, ptr noundef nonnull byval(%struct.Gamut) align 8 %i.be) ; 2 uses
  %.fca.0.extract2.i182 = extractvalue { <2 x float>, float } %i.fr, 0
  %.fca.1.extract3.i183 = extractvalue { <2 x float>, float } %i.fr, 1
  store <2 x float> %.fca.0.extract2.i182, ptr %i.bf, align 8, !tbaa !34
  store float %.fca.1.extract3.i183, ptr %.sroa.47.0..sroa_idx.i184, align 8, !tbaa !34
  br label %update_hue_peaks.exit185

update_hue_peaks.exit185:                         ; preds = %bb.d, %bb.d, %bb.e
  %i.fs = call fastcc { <2 x float>, float } @saturate(float noundef %i.fp, ptr noundef nonnull byval(%struct.Gamut) align 8 %i.bg) ; 2 uses
  %.fca.0.extract.i179 = extractvalue { <2 x float>, float } %i.fs, 0
  %.fca.1.extract.i180 = extractvalue { <2 x float>, float } %i.fs, 1
  store <2 x float> %.fca.0.extract.i179, ptr %i.bh, align 8, !tbaa !34
  store float %.fca.1.extract.i180, ptr %.sroa.4.0..sroa_idx.i181, align 8, !tbaa !34
  %i.ft = icmp eq i32 %i.fq, 0
  br i1 %i.ft, label %bb.f, label %update_hue_peaks.exit185.thread

bb.f:                                             ; preds = %update_hue_peaks.exit185
  %i.fu = load float, ptr %i.bi, align 4, !tbaa !84
  %i.fv = extractelement <2 x float> %i.fb, i64 0
  %i.fw = fsub nsz float %i.fv, %i.fu             ; 5 uses
  %i.fx = fcmp nsz ogt float %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fy = load float, ptr %i.bl, align 8, !tbaa !85
  %i.fz = load float, ptr %i.bm, align 4, !tbaa !86
  %i.ga = load float, ptr %5, align 8, !tbaa !87
  %i.gb = call nsz float @llvm.fmuladd.f32(float %i.ga, float %i.fw, float %i.fz)
  %i.gc = call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.fw, float %i.fy)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.gd = load float, ptr %i.bj, align 8, !tbaa !41
  %i.ge = load float, ptr %i.bk, align 4, !tbaa !40
  %i.gf = call nsz float @llvm.fmuladd.f32(float %i.ge, float %i.fw, float %i.gd)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i = phi float [ %i.gc, %bb.g ], [ %i.gf, %bb.h ]
  %i.gg = fmul nsz float %i.fw, %.pn.i
  %i.gh = load float, ptr %i.bn, align 8, !tbaa !88
  %i.gi = fadd nsz float %i.gg, %i.gh
  br label %tone_map_apply.exit

update_hue_peaks.exit185.thread:                  ; preds = %bb.d, %update_hue_peaks.exit185
  %i.gj = load float, ptr %i.bo, align 4, !tbaa !42
  %i.gk = load float, ptr %i.bp, align 8, !tbaa !89
  %i.gl = extractelement <2 x float> %i.fb, i64 0
  %i.gm = call nsz float @llvm.fmuladd.f32(float %i.gj, float %i.gl, float %i.gk)
  br label %tone_map_apply.exit

tone_map_apply.exit:                              ; preds = %bb.i, %update_hue_peaks.exit185.thread
  %.0.i = phi nsz float [ %i.gi, %bb.i ], [ %i.gm, %update_hue_peaks.exit185.thread ] ; 3 uses
  %i.gn = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.go = insertelement <2 x float> %i.gn, float %.0.i, i64 0 ; 3 uses
  %i.gp = fadd nsz <2 x float> %i.go, splat (float -6.000000e+00)
  %i.gq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.go, <2 x float> splat (float 9.000000e+00))
  %i.gr = fmul nsz <2 x float> %i.go, %i.gq       ; 2 uses
  %i.gs = shufflevector <2 x float> %i.fb, <2 x float> %i.gr, <2 x i32> <i32 0, i32 2>
  %i.gt = insertelement <2 x float> %i.gr, float %.0.i, i64 0
  %i.gu = fdiv nsz <2 x float> %i.gs, %i.gt       ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0
  %i.gw = extractelement <2 x float> %i.gu, i64 1
  %i.gx = call nsz float @llvm.minnum.f32(float %i.gv, float %i.gw) ; 2 uses
  %.sroa.036.0.vec.insert.i = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.gy = fmul nsz float %i.fo, %i.gx
  %.sroa.036.4.vec.insert.i = insertelement <2 x float> %.sroa.036.0.vec.insert.i, float %i.gy, i64 1
  %i.gz = fmul nsz float %i.fh, %i.gx
  %i.ha = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.hb = call { <2 x float>, float } %i.ha(ptr noundef nonnull %5, <2 x float> %.sroa.036.4.vec.insert.i, float %i.gz) #13 ; 2 uses
  %.fca.0.extract39 = extractvalue { <2 x float>, float } %i.hb, 0 ; 2 uses
  %.fca.1.extract40 = extractvalue { <2 x float>, float } %i.hb, 1
  %.sroa.0191.sroa.9.0.copyload = load float, ptr %.sroa.0191.sroa.9.0..sroa_idx, align 4
  %.sroa.0191.sroa.10.0.copyload = load float, ptr %.sroa.0191.sroa.10.0..sroa_idx, align 8
  %.sroa.0191.sroa.11.0.copyload = load float, ptr %.sroa.0191.sroa.11.0..sroa_idx, align 4, !tbaa !32
  %i.hc = load <4 x float>, ptr %i.br, align 4    ; 3 uses
  %i.hd = load <2 x float>, ptr %.sroa.0191.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.he = shufflevector <2 x float> %.fca.0.extract39, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hf = shufflevector <2 x float> %.fca.0.extract39, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hg = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.he, <3 x float> <float 3.261510e-02, float f0x3DC7D234, float -1.138760e-01>, <3 x float> %i.hf)
  %i.hh = insertelement <3 x float> poison, float %.fca.1.extract40, i64 0
  %i.hi = shufflevector <3 x float> %i.hh, <3 x float> poison, <3 x i32> zeroinitializer
  %i.hj = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hi, <3 x float> <float f0xBF2D4877, float 2.052260e-01, float 1.332170e-01>, <3 x float> %i.hg) ; 2 uses
  %i.hk = fcmp nsz ogt <3 x float> %i.hj, zeroinitializer
  %i.hl = select <3 x i1> %i.hk, <3 x float> %i.hj, <3 x float> zeroinitializer ; 2 uses
  %i.hm = fcmp nsz ogt <3 x float> %i.hl, splat (float 1.000000e+00)
  %i.hn = select <3 x i1> %i.hm, <3 x float> splat (float 1.000000e+00), <3 x float> %i.hl
  %i.ho = fmul nnan nsz <3 x float> %i.hn, splat (float 1.023000e+03) ; 2 uses
  %i.hp = call nsz <3 x float> @llvm.floor.v3f32(<3 x float> %i.ho)
  %i.hq = fptosi <3 x float> %i.hp to <3 x i32>   ; 4 uses
  %i.hr = extractelement <3 x i32> %i.hq, i64 1
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.hs
  %i.hu = load <2 x float>, ptr %i.ht, align 4, !tbaa !34 ; 2 uses
  %i.hv = extractelement <3 x i32> %i.hq, i64 2
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.hw
  %i.hy = load <2 x float>, ptr %i.hx, align 4, !tbaa !34
  %i.hz = uitofp <3 x i32> %i.hq to <3 x float>
  %i.ia = fsub nsz <3 x float> %i.ho, %i.hz       ; 2 uses
  %i.ib = extractelement <3 x i32> %i.hq, i64 0
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr [4 x i8], ptr @ff_pq_eotf_lut, i64 %i.ic
  %i.ie = load <2 x float>, ptr %i.id, align 4, !tbaa !34 ; 2 uses
  %i.if = fsub nnan nsz <3 x float> splat (float 1.000000e+00), %i.ia
  %i.ig = shufflevector <2 x float> %i.ie, <2 x float> %i.hu, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.ih = shufflevector <2 x float> %i.hy, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.ii = shufflevector <3 x float> %i.ig, <3 x float> %i.ih, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ij = fmul nsz <3 x float> %i.if, %i.ii
  %i.ik = shufflevector <2 x float> %i.ie, <2 x float> %i.hu, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.il = shufflevector <3 x float> %i.ik, <3 x float> %i.ih, <3 x i32> <i32 0, i32 1, i32 4>
  %i.im = call nsz <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.il, <3 x float> %i.ia, <3 x float> %i.ij) ; 6 uses
  %i.in = shufflevector <4 x float> %i.hc, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.io = shufflevector <2 x float> %i.hd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <4 x float> %i.hc, <4 x float> %i.io, <2 x i32> <i32 1, i32 4>
  %i.iq = shufflevector <3 x float> %i.im, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ir = fmul nsz <2 x float> %i.ip, %i.iq
  %i.is = shufflevector <4 x float> %i.hc, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.it = shufflevector <3 x float> %i.im, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.it, <2 x float> %i.ir)
  %i.iv = shufflevector <2 x float> %i.in, <2 x float> %i.hd, <2 x i32> <i32 0, i32 3>
  %i.iw = shufflevector <3 x float> %i.im, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ix = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.iw, <2 x float> %i.iu)
  %i.iy = extractelement <3 x float> %i.im, i64 2
  %i.iz = fmul nsz float %.sroa.0191.sroa.10.0.copyload, %i.iy
  %i.ja = extractelement <3 x float> %i.im, i64 1
  %i.jb = call nsz float @llvm.fmuladd.f32(float %.sroa.0191.sroa.9.0.copyload, float %i.ja, float %i.iz)
  %i.jc = extractelement <3 x float> %i.im, i64 0
  %i.jd = call nsz float @llvm.fmuladd.f32(float %.sroa.0191.sroa.11.0.copyload, float %i.jc, float %i.jb)
  %i.je = fpext <2 x float> %i.ix to <2 x double>
  store <2 x double> %i.je, ptr %i.a, align 16, !tbaa !82
  %i.jf = fpext nsz float %i.jd to double
  store double %i.jf, ptr %i.ba, align 16, !tbaa !82
  %i.jg = load ptr, ptr %i.bs, align 8, !tbaa !90
  %i.jh = load <2 x float>, ptr %i.bt, align 8, !tbaa !34
  %i.ji = fpext <2 x float> %i.jh to <2 x double> ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0
  %i.jk = extractelement <2 x double> %i.ji, i64 1
  call void %i.jg(double noundef %i.jk, double noundef %i.jj, ptr noundef nonnull %i.a) #13
  %i.jl = load <2 x double>, ptr %i.a, align 16, !tbaa !82
  %i.jm = fptrunc <2 x double> %i.jl to <2 x float>
  %i.jn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> splat (float 6.553400e+04), <2 x float> splat (float 5.000000e-01))
  %i.jo = fptosi <2 x float> %i.jn to <2 x i32>
  %i.jp = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jo, <2 x i32> zeroinitializer)
  %i.jq = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jp, <2 x i32> splat (i32 65535))
  %i.jr = load double, ptr %i.ba, align 16, !tbaa !82
  %i.js = fptrunc nsz double %i.jr to float
  br label %bb.j

bb.j:                                             ; preds = %tone_map_apply.exit, %bb.c
  %.sink273 = phi float [ %i.js, %tone_map_apply.exit ], [ %i.fn, %bb.c ]
  %i.jt = phi <2 x i32> [ %i.jq, %tone_map_apply.exit ], [ %i.fm, %bb.c ]
  %i.ju = trunc nuw <2 x i32> %i.jt to <2 x i16>
  %i.jv = call nsz float @llvm.fmuladd.f32(float %.sink273, float 6.553400e+04, float 5.000000e-01)
  %i.jw = fptosi float %i.jv to i32
  %i.jx = call i32 @llvm.smax.i32(i32 %i.jw, i32 0)
  %.0.i157218 = call i32 @llvm.umin.i32(i32 %i.jx, i32 65535)
  %.0.i157 = trunc nuw i32 %.0.i157218 to i16
  store <2 x i16> %i.ju, ptr %.2220, align 2, !tbaa !45
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2220, i64 4
  store i16 %.0.i157, ptr %.sroa.330.0..sroa_idx, align 2, !tbaa !45
  %.3 = getelementptr inbounds nuw i8, ptr %.2220, i64 6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.jy = add nuw nsw i32 %.0133219, 1            ; 2 uses
  %i.jz = load i32, ptr %i.f, align 4, !tbaa !27  ; 2 uses
  %i.ka = icmp slt i32 %i.jy, %i.jz
  br i1 %i.ka, label %bb.b, label %._crit_edge, !llvm.loop !74

.lr.ph245.split:                                  ; preds = %.lr.ph245.split.preheader, %._crit_edge241
  %i.kb = phi i32 [ %i.kg, %._crit_edge241 ], [ %i.cq, %.lr.ph245.split.preheader ] ; 2 uses
  %i.kc = phi i32 [ %i.kh, %._crit_edge241 ], [ %i.cq, %.lr.ph245.split.preheader ] ; 2 uses
  %.0125244 = phi ptr [ %.1126.lcssa, %._crit_edge241 ], [ %i.aj, %.lr.ph245.split.preheader ] ; 2 uses
  %.0131243 = phi i32 [ %i.ki, %._crit_edge241 ], [ %i.ac, %.lr.ph245.split.preheader ] ; 2 uses
  %i.kd = sitofp nsz i32 %.0131243 to float
  %i.ke = call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.kd, float f0xBF000100) ; 2 uses
  %i.kf = icmp sgt i32 %i.kc, 0
  br i1 %i.kf, label %.lr.ph240, label %._crit_edge241

._crit_edge241:                                   ; preds = %._crit_edge235, %.lr.ph245.split
  %i.kg = phi i32 [ %i.kb, %.lr.ph245.split ], [ %i.kt, %._crit_edge235 ]
  %i.kh = phi i32 [ %i.kc, %.lr.ph245.split ], [ %i.kt, %._crit_edge235 ]
  %.1126.lcssa = phi ptr [ %.0125244, %.lr.ph245.split ], [ %.2127.lcssa, %._crit_edge235 ]
  %i.ki = add i32 %.0131243, 1                    ; 2 uses
  %exitcond249.not = icmp eq i32 %i.ki, %i.ag
  br i1 %exitcond249.not, label %.loopexit, label %.lr.ph245.split, !llvm.loop !75

.lr.ph240:                                        ; preds = %.lr.ph245.split, %._crit_edge235
  %i.kj = phi i32 [ %i.kt, %._crit_edge235 ], [ %i.kb, %.lr.ph245.split ]
  %.1126238 = phi ptr [ %.2127.lcssa, %._crit_edge235 ], [ %.0125244, %.lr.ph245.split ] ; 2 uses
  %.0130237 = phi i32 [ %i.ku, %._crit_edge235 ], [ 0, %.lr.ph245.split ] ; 2 uses
  %i.kk = uitofp nsz nneg i32 %.0130237 to float
  %i.kl = call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.kk, float f0xBF000100) ; 2 uses
  %i.km = call nsz float @llvm.atan2.f32(float %i.ke, float %i.kl) ; 2 uses
  %i.kn = load i32, ptr %i.cg, align 4, !tbaa !30
  switch i32 %i.kn, label %update_hue_peaks.exit [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %.lr.ph240
  %i.ko = call fastcc { <2 x float>, float } @saturate(float noundef %i.km, ptr noundef nonnull byval(%struct.Gamut) align 8 %i.ch) ; 2 uses
  %.fca.0.extract2.i = extractvalue { <2 x float>, float } %i.ko, 0
  %.fca.1.extract3.i = extractvalue { <2 x float>, float } %i.ko, 1
  store <2 x float> %.fca.0.extract2.i, ptr %i.ci, align 8, !tbaa !34
  store float %.fca.1.extract3.i, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph240, %.lr.ph240
  %i.kp = call fastcc { <2 x float>, float } @saturate(float noundef %i.km, ptr noundef nonnull byval(%struct.Gamut) align 8 %i.cj) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.kp, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.kp, 1
  store <2 x float> %.fca.0.extract.i, ptr %i.ck, align 8, !tbaa !34
  store float %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !34
  br label %update_hue_peaks.exit

update_hue_peaks.exit:                            ; preds = %.lr.ph240, %bb.l
  %i.kq = load i32, ptr %i.k, align 8, !tbaa !28
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph234.preheader, label %._crit_edge235

.lr.ph234.preheader:                              ; preds = %update_hue_peaks.exit
  %i.ks = insertelement <2 x float> poison, float %i.kl, i64 1
  br label %.lr.ph234

._crit_edge235.loopexit:                          ; preds = %.lr.ph234
  %.pre = load i32, ptr %i.j, align 4, !tbaa !29
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %._crit_edge235.loopexit, %update_hue_peaks.exit
  %i.kt = phi i32 [ %i.kj, %update_hue_peaks.exit ], [ %.pre, %._crit_edge235.loopexit ] ; 4 uses
  %.2127.lcssa = phi ptr [ %.1126238, %update_hue_peaks.exit ], [ %i.nl, %._crit_edge235.loopexit ] ; 2 uses
  %i.ku = add nuw nsw i32 %.0130237, 1            ; 2 uses
  %i.kv = icmp slt i32 %i.ku, %i.kt
end_hunk_0
begin_hunk_1_@saturate:bb.a
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
  %.fr = freeze i1 %i.gy
  %op.rdx194 = and i1 %i.hd, %.fr
  %.fr199 = freeze i1 %i.ha
  %op.rdx195 = and i1 %op.rdx194, %.fr199
  br i1 %op.rdx195, label %.thread164, label %bb.t

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
!90 = !{!23, !19, i64 624}
!91 = !{!23, !17, i64 424}
!92 = distinct !{!92, !37, !97, !98}
!93 = distinct !{!93, !37, !97, !98}
!94 = distinct !{!94, !37, !98, !97}
!95 = distinct !{!95, !37, !98, !97}
!96 = !{!23, !17, i64 640}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37}
end_hunk_1
