Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/repack?download=true
inline.NumInlined: 423
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 70
begin_hunk_0_@ggml_quantize_mat_q8_K_4x8:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %gep, i64 640
  %i.fb = load <8 x float>, ptr %i.fa, align 1, !tbaa !9 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %gep, i64 672
  %i.fd = load <8 x float>, ptr %i.fc, align 1, !tbaa !9 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %gep, i64 704
  %i.ff = load <8 x float>, ptr %i.fe, align 1, !tbaa !9 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %gep, i64 736
  %i.fh = load <8 x float>, ptr %i.fg, align 1, !tbaa !9 ; 3 uses
  %i.fi = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fb)
  %i.fj = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fd)
  %i.fk = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ff)
  %i.fl = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fh)
  %i.fm = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.en, <8 x float> %i.fi)
  %i.fn = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fm, <8 x float> %i.fj)
  %i.fo = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fn, <8 x float> %i.fk)
  %i.fp = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fo, <8 x float> %i.fl) ; 7 uses
  %i.fq = fcmp oeq <8 x float> %i.en, %i.fp
  %narrow325 = select <8 x i1> %i.fq, <8 x i1> %narrow324, <8 x i1> zeroinitializer
  %i.fr = fcmp oeq <8 x float> %i.fp, %i.fb
  %i.fs = fcmp oeq <8 x float> %i.fp, %i.fd
  %i.ft = fcmp oeq <8 x float> %i.fp, %i.ff
  %i.fu = fcmp oeq <8 x float> %i.fp, %i.fh
  %i.fv = or <8 x i1> %i.fr, %i.fs
  %i.fw = or <8 x i1> %i.ft, %i.fu
  %i.fx = or <8 x i1> %i.fv, %i.fw
  %narrow326 = select <8 x i1> %i.fx, <8 x i1> splat (i1 true), <8 x i1> %narrow325
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ao, i64 640
  store <8 x float> %i.fb, ptr %i.fy, align 32, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ao, i64 672
  store <8 x float> %i.fd, ptr %i.fz, align 32, !tbaa !9
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ao, i64 704
  store <8 x float> %i.ff, ptr %i.ga, align 32, !tbaa !9
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ao, i64 736
  store <8 x float> %i.fh, ptr %i.gb, align 32, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %gep, i64 768
  %i.gd = load <8 x float>, ptr %i.gc, align 1, !tbaa !9 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %gep, i64 800
  %i.gf = load <8 x float>, ptr %i.ge, align 1, !tbaa !9 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %gep, i64 832
  %i.gh = load <8 x float>, ptr %i.gg, align 1, !tbaa !9 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %gep, i64 864
  %i.gj = load <8 x float>, ptr %i.gi, align 1, !tbaa !9 ; 3 uses
  %i.gk = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gd)
  %i.gl = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gf)
  %i.gm = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gh)
  %i.gn = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gj)
  %i.go = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fp, <8 x float> %i.gk)
  %i.gp = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.go, <8 x float> %i.gl)
  %i.gq = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gp, <8 x float> %i.gm)
  %i.gr = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gq, <8 x float> %i.gn) ; 7 uses
  %i.gs = fcmp oeq <8 x float> %i.fp, %i.gr
  %narrow327 = select <8 x i1> %i.gs, <8 x i1> %narrow326, <8 x i1> zeroinitializer
  %i.gt = fcmp oeq <8 x float> %i.gr, %i.gd
  %i.gu = fcmp oeq <8 x float> %i.gr, %i.gf
  %i.gv = fcmp oeq <8 x float> %i.gr, %i.gh
  %i.gw = fcmp oeq <8 x float> %i.gr, %i.gj
  %i.gx = or <8 x i1> %i.gt, %i.gu
  %i.gy = or <8 x i1> %i.gv, %i.gw
  %i.gz = or <8 x i1> %i.gx, %i.gy
  %narrow328 = select <8 x i1> %i.gz, <8 x i1> splat (i1 true), <8 x i1> %narrow327
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ao, i64 768
  store <8 x float> %i.gd, ptr %i.ha, align 32, !tbaa !9
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ao, i64 800
  store <8 x float> %i.gf, ptr %i.hb, align 32, !tbaa !9
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ao, i64 832
  store <8 x float> %i.gh, ptr %i.hc, align 32, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ao, i64 864
  store <8 x float> %i.gj, ptr %i.hd, align 32, !tbaa !9
  %i.he = getelementptr inbounds nuw i8, ptr %gep, i64 896
  %i.hf = load <8 x float>, ptr %i.he, align 1, !tbaa !9 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %gep, i64 928
  %i.hh = load <8 x float>, ptr %i.hg, align 1, !tbaa !9 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %gep, i64 960
  %i.hj = load <8 x float>, ptr %i.hi, align 1, !tbaa !9 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %gep, i64 992
  %i.hl = load <8 x float>, ptr %i.hk, align 1, !tbaa !9 ; 3 uses
  %i.hm = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hf)
  %i.hn = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hh)
  %i.ho = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hj)
  %i.hp = tail call noundef <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hl)
  %i.hq = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gr, <8 x float> %i.hm)
  %i.hr = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.hq, <8 x float> %i.hn)
  %i.hs = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.hr, <8 x float> %i.ho)
  %i.ht = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.hs, <8 x float> %i.hp) ; 8 uses
  %i.hu = fcmp oeq <8 x float> %i.gr, %i.ht
  %narrow329 = select <8 x i1> %i.hu, <8 x i1> %narrow328, <8 x i1> zeroinitializer
  %i.hv = fcmp oeq <8 x float> %i.ht, %i.hf
  %i.hw = fcmp oeq <8 x float> %i.ht, %i.hh
  %i.hx = fcmp oeq <8 x float> %i.ht, %i.hj
  %i.hy = fcmp oeq <8 x float> %i.ht, %i.hl
  %i.hz = or <8 x i1> %i.hv, %i.hw
  %i.ia = or <8 x i1> %i.hx, %i.hy
  %i.ib = or <8 x i1> %i.hz, %i.ia
  %narrow330 = select <8 x i1> %i.ib, <8 x i1> splat (i1 true), <8 x i1> %narrow329
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ao, i64 896
  store <8 x float> %i.hf, ptr %i.ic, align 32, !tbaa !9
  %i.id = getelementptr inbounds nuw i8, ptr %i.ao, i64 928
  store <8 x float> %i.hh, ptr %i.id, align 32, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ao, i64 960
  store <8 x float> %i.hj, ptr %i.ie, align 32, !tbaa !9
  %i.if = getelementptr inbounds nuw i8, ptr %i.ao, i64 992
  store <8 x float> %i.hl, ptr %i.if, align 32, !tbaa !9
  %i.ig = shufflevector <8 x float> %i.ht, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ih = shufflevector <8 x float> %i.ht, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ii = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ig, <4 x float> %i.ih) ; 2 uses
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ik = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ii, <4 x float> %i.ij) ; 2 uses
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.im = tail call noundef <4 x float> @llvm.x86.sse.max.ss(<4 x float> %i.ik, <4 x float> %i.il) ; 2 uses
  %i.in = extractelement <4 x float> %i.im, i64 0 ; 3 uses
  %i.io = shufflevector <4 x float> %i.im, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ip = fcmp oeq <8 x float> %i.io, %i.ht
  %i.iq = select <8 x i1> %i.ip, <8 x i1> %narrow330, <8 x i1> zeroinitializer
  %i.ir = bitcast <8 x i1> %i.iq to i8
  %i.is = fcmp une float %i.in, 0.000000e+00      ; 3 uses
  %i.it = fdiv float 1.270000e+02, %i.in
  %i.iu = select i1 %i.is, float %i.it, float 0.000000e+00
  %.not = icmp eq i8 %i.ir, 0
  %i.iv = fdiv float -1.270000e+02, %i.in
  %i.iw = select i1 %i.is, float %i.iv, float 0.000000e+00
  %storemerge = select i1 %.not, float %i.iu, float %i.iw ; 2 uses
  %i.ix = fdiv float 1.000000e+00, %storemerge
  %spec.select = select i1 %i.is, float %i.ix, float 0.000000e+00
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store float %spec.select, ptr %i.iy, align 4, !tbaa !13
  %i.iz = insertelement <8 x float> poison, float %storemerge, i64 0
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv
  store <8 x float> %i.ja, ptr %i.jb, align 32, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !26

.preheader:                                       ; preds = %bb.d
  %i.jc = getelementptr inbounds nuw i8, ptr %i.m, i64 1040
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv304 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next305, %bb.d ] ; 7 uses
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv304
  %i.je = load <8 x float>, ptr %i.jd, align 32, !tbaa !9
  %i.jf = fmul <8 x float> %i.je, %i.n
  %i.jg = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv304
  %i.jh = load <8 x float>, ptr %i.jg, align 32, !tbaa !9
  %i.ji = fmul <8 x float> %i.jh, %i.o
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv304
  %i.jk = load <8 x float>, ptr %i.jj, align 32, !tbaa !9
  %i.jl = fmul <8 x float> %i.jk, %i.p
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv304
  %i.jn = load <8 x float>, ptr %i.jm, align 32, !tbaa !9
  %i.jo = fmul <8 x float> %i.jn, %i.q
  %i.jp = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jf, i32 0)
  %i.jq = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ji, i32 0)
  %i.jr = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jl, i32 0)
  %i.js = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.jo, i32 0)
  %i.jt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.jp)
  %i.ju = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.jq)
  %i.jv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.jr)
  %i.jw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.js)
  %i.jx = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.jt, <8 x i32> %i.ju)
  %i.jy = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.jv, <8 x i32> %i.jw)
  %i.jz = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.jx, <16 x i16> %i.jy)
  %i.ka = bitcast <32 x i8> %i.jz to <8 x i32>
  %i.kb = shufflevector <8 x i32> %i.ka, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kc = shl nuw nsw i64 %indvars.iv304, 5
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.kc
  store <8 x i32> %i.kb, ptr %i.kd, align 1, !tbaa !9
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv304
  store <8 x i32> %i.kb, ptr %i.ke, align 32, !tbaa !9
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next305, 32
  br i1 %exitcond307.not, label %.preheader, label %bb.d, !llvm.loop !27

bb.e:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next315, %wide.trip.count
  br i1 %exitcond317.not, label %._crit_edge, label %.preheader279, !llvm.loop !28

bb.f:                                             ; preds = %.preheader, %bb.f
  %indvars.iv310 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next311, %bb.f ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv310, 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 8 uses
  %i.kg = load <4 x i64>, ptr %i.kf, align 32, !tbaa !9 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.ki = load <4 x i64>, ptr %i.kh, align 32, !tbaa !9 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 64
  %i.kk = load <4 x i64>, ptr %i.kj, align 32, !tbaa !9 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 96
  %i.km = load <4 x i64>, ptr %i.kl, align 32, !tbaa !9 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 128
  %i.ko = load <4 x i64>, ptr %i.kn, align 32, !tbaa !9 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 160
  %i.kq = load <4 x i64>, ptr %i.kp, align 32, !tbaa !9 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 192
  %i.ks = load <4 x i64>, ptr %i.kr, align 32, !tbaa !9 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kf, i64 224
  %i.ku = load <4 x i64>, ptr %i.kt, align 32, !tbaa !9 ; 4 uses
  %i.kv = bitcast <4 x i64> %i.kk to <32 x i8>
  %i.kw = bitcast <4 x i64> %i.ko to <32 x i8>
  %i.kx = bitcast <4 x i64> %i.ks to <32 x i8>
  %i.ky = bitcast <4 x i64> %i.kg to <32 x i8>
  %i.kz = shufflevector <32 x i8> %i.ky, <32 x i8> %i.kv, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %3 = shufflevector <32 x i8> %i.kz, <32 x i8> %i.kw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %4 = shufflevector <32 x i8> %3, <32 x i8> %i.kx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.la = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %4)
  %i.lb = bitcast <4 x i64> %i.km to <32 x i8>
  %i.lc = bitcast <4 x i64> %i.kq to <32 x i8>
  %i.ld = bitcast <4 x i64> %i.ku to <32 x i8>
  %i.le = bitcast <4 x i64> %i.ki to <32 x i8>
  %i.lf = shufflevector <32 x i8> %i.le, <32 x i8> %i.lb, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <32 x i8> %i.lf, <32 x i8> %i.lc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %6 = shufflevector <32 x i8> %5, <32 x i8> %i.ld, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.lg = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %6)
  %i.lh = lshr <4 x i64> %i.ki, splat (i64 16)
  %i.li = lshr <4 x i64> %i.km, splat (i64 16)
  %i.lj = lshr <4 x i64> %i.kq, splat (i64 16)
  %i.lk = lshr <4 x i64> %i.ku, splat (i64 16)
  %i.ll = bitcast <4 x i64> %i.li to <32 x i8>
  %i.lm = bitcast <4 x i64> %i.lj to <32 x i8>
  %i.ln = bitcast <4 x i64> %i.lk to <32 x i8>
  %i.lo = bitcast <4 x i64> %i.lh to <32 x i8>
  %i.lp = shufflevector <32 x i8> %i.lo, <32 x i8> %i.ll, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <32 x i8> %i.lp, <32 x i8> %i.lm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %8 = shufflevector <32 x i8> %7, <32 x i8> %i.ln, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.lq = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %8)
  %i.lr = add <16 x i16> %i.lq, %i.lg
  %i.ls = lshr <4 x i64> %i.ki, splat (i64 32)
  %i.lt = lshr <4 x i64> %i.km, splat (i64 32)
  %i.lu = lshr <4 x i64> %i.kq, splat (i64 32)
  %i.lv = lshr <4 x i64> %i.ku, splat (i64 32)
  %i.lw = bitcast <4 x i64> %i.lt to <32 x i8>
  %i.lx = bitcast <4 x i64> %i.lu to <32 x i8>
  %i.ly = bitcast <4 x i64> %i.lv to <32 x i8>
  %i.lz = bitcast <4 x i64> %i.ls to <32 x i8>
  %i.ma = shufflevector <32 x i8> %i.lz, <32 x i8> %i.lw, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <32 x i8> %i.ma, <32 x i8> %i.lx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %10 = shufflevector <32 x i8> %9, <32 x i8> %i.ly, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.mb = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %10)
  %i.mc = add <16 x i16> %i.mb, %i.lr
  %i.md = lshr <4 x i64> %i.ki, splat (i64 48)
  %i.me = lshr <4 x i64> %i.km, splat (i64 48)
  %i.mf = lshr <4 x i64> %i.kq, splat (i64 48)
  %i.mg = lshr <4 x i64> %i.ku, splat (i64 48)
  %i.mh = bitcast <4 x i64> %i.me to <32 x i8>
  %i.mi = bitcast <4 x i64> %i.mf to <32 x i8>
  %i.mj = bitcast <4 x i64> %i.mg to <32 x i8>
  %i.mk = bitcast <4 x i64> %i.md to <32 x i8>
  %i.ml = shufflevector <32 x i8> %i.mk, <32 x i8> %i.mh, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <32 x i8> %i.ml, <32 x i8> %i.mi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %12 = shufflevector <32 x i8> %11, <32 x i8> %i.mj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.mm = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %12)
  %i.mn = add <16 x i16> %i.mm, %i.mc
  %i.mo = lshr <4 x i64> %i.kg, splat (i64 16)
  %i.mp = lshr <4 x i64> %i.kk, splat (i64 16)
  %i.mq = lshr <4 x i64> %i.ko, splat (i64 16)
  %i.mr = lshr <4 x i64> %i.ks, splat (i64 16)
  %i.ms = bitcast <4 x i64> %i.mp to <32 x i8>
  %i.mt = bitcast <4 x i64> %i.mq to <32 x i8>
  %i.mu = bitcast <4 x i64> %i.mr to <32 x i8>
  %i.mv = bitcast <4 x i64> %i.mo to <32 x i8>
  %i.mw = shufflevector <32 x i8> %i.mv, <32 x i8> %i.ms, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <32 x i8> %i.mw, <32 x i8> %i.mt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %14 = shufflevector <32 x i8> %13, <32 x i8> %i.mu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.mx = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %14)
  %i.my = add <16 x i16> %i.mx, %i.la
  %i.mz = lshr <4 x i64> %i.kg, splat (i64 32)
  %i.na = lshr <4 x i64> %i.kk, splat (i64 32)
  %i.nb = lshr <4 x i64> %i.ko, splat (i64 32)
  %i.nc = lshr <4 x i64> %i.ks, splat (i64 32)
  %i.nd = bitcast <4 x i64> %i.na to <32 x i8>
  %i.ne = bitcast <4 x i64> %i.nb to <32 x i8>
  %i.nf = bitcast <4 x i64> %i.nc to <32 x i8>
  %i.ng = bitcast <4 x i64> %i.mz to <32 x i8>
  %i.nh = shufflevector <32 x i8> %i.ng, <32 x i8> %i.nd, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <32 x i8> %i.nh, <32 x i8> %i.ne, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %16 = shufflevector <32 x i8> %15, <32 x i8> %i.nf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.ni = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %16)
  %i.nj = add <16 x i16> %i.ni, %i.my
  %i.nk = lshr <4 x i64> %i.kg, splat (i64 48)
  %i.nl = lshr <4 x i64> %i.kk, splat (i64 48)
  %i.nm = lshr <4 x i64> %i.ko, splat (i64 48)
  %i.nn = lshr <4 x i64> %i.ks, splat (i64 48)
  %i.no = bitcast <4 x i64> %i.nl to <32 x i8>
  %i.np = bitcast <4 x i64> %i.nm to <32 x i8>
  %i.nq = bitcast <4 x i64> %i.nn to <32 x i8>
  %i.nr = bitcast <4 x i64> %i.nk to <32 x i8>
  %i.ns = shufflevector <32 x i8> %i.nr, <32 x i8> %i.no, <32 x i32> <i32 0, i32 1, i32 32, i32 33, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 40, i32 41, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 48, i32 49, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 56, i32 57, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <32 x i8> %i.ns, <32 x i8> %i.np, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 32, i32 33, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 40, i32 41, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 48, i32 49, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 56, i32 57, i32 poison, i32 poison>
  %18 = shufflevector <32 x i8> %17, <32 x i8> %i.nq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 32, i32 33, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 40, i32 41, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 48, i32 49, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 56, i32 57>
  %i.nt = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> splat (i8 1), <32 x i8> %18)
  %i.nu = add <16 x i16> %i.nt, %i.nj
  %i.nv = add <16 x i16> %i.mn, %i.nu
  %.idx331 = shl nuw nsw i64 %indvars.iv310, 5
  %i.nw = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.idx331
  store <16 x i16> %i.nv, ptr %i.nw, align 1, !tbaa !9
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next311, 4
  br i1 %exitcond313.not, label %bb.e, label %bb.f, !llvm.loop !29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemv_q4_0_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = freeze <2 x i64> poison                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.b = sdiv i32 %0, 32
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = sext i32 %5 to i64                       ; 13 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = sdiv i32 %6, 8
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %6, 7
  br i1 %i.h, label %.lr.ph.split.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.i = icmp sgt i32 %0, 31
  br i1 %i.i, label %.lr.ph103.us.i, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %.lr.ph.split.i
  %i.j = shl nuw nsw i64 %i.g, 5                  ; 9 uses
  %xtraiter = and i64 %i.d, 7
  %i.k = icmp ult i32 %5, 8
  br i1 %i.k, label %.lr.ph103.i.epil.preheader, label %.lr.ph103.preheader.i.new

.lr.ph103.preheader.i.new:                        ; preds = %.lr.ph103.preheader.i
  %unroll_iter = and i64 %i.d, 2147483640
  br label %.lr.ph103.i

.lr.ph103.us.i:                                   ; preds = %.lr.ph.split.i, %._crit_edge104.split.us.us.i
  %.0105.us.i = phi i64 [ %i.ep, %._crit_edge104.split.us.us.i ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.l = mul nuw nsw i64 %.0105.us.i, %i.c
  %i.m = getelementptr inbounds nuw [34 x i8], ptr %4, i64 %i.l
  %i.n = mul nuw nsw i64 %.0105.us.i, %i.d
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph103.us.i
  %.095101.us.us.i = phi i64 [ 0, %.lr.ph103.us.i ], [ %i.eo, %._crit_edge.us.us.i ] ; 3 uses
  %i.p = mul nuw nsw i64 %.095101.us.us.i, %i.c
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.i
  %.096100.us.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us.i ], [ %i.ek, %bb.b ]
  %.09799.us.us.i = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.el, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.q, i64 %.09799.us.us.i ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load <4 x i64>, ptr %i.s, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load <4 x i64>, ptr %i.u, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.x = load <4 x i64>, ptr %i.w, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.z = load <4 x i64>, ptr %i.y, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.aa = bitcast <4 x i64> %i.t to <32 x i8>
  %i.ab = and <32 x i8> %i.aa, splat (i8 15)
  %i.ac = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ab)
  %i.ad = bitcast <4 x i64> %i.v to <32 x i8>
  %i.ae = and <32 x i8> %i.ad, splat (i8 15)
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ae)
  %i.ag = bitcast <4 x i64> %i.x to <32 x i8>
  %i.ah = and <32 x i8> %i.ag, splat (i8 15)
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ah)
  %i.aj = bitcast <4 x i64> %i.z to <32 x i8>
  %i.ak = and <32 x i8> %i.aj, splat (i8 15)
  %i.al = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ak)
  %i.am = bitcast <4 x i64> %i.t to <16 x i16>
  %i.an = lshr <16 x i16> %i.am, splat (i16 4)
  %i.ao = bitcast <16 x i16> %i.an to <32 x i8>
  %i.ap = and <32 x i8> %i.ao, splat (i8 15)
  %i.aq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ap)
  %i.ar = bitcast <4 x i64> %i.v to <16 x i16>
  %i.as = lshr <16 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <16 x i16> %i.as to <32 x i8>
  %i.au = and <32 x i8> %i.at, splat (i8 15)
  %i.av = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.au)
  %i.aw = bitcast <4 x i64> %i.x to <16 x i16>
  %i.ax = lshr <16 x i16> %i.aw, splat (i16 4)
  %i.ay = bitcast <16 x i16> %i.ax to <32 x i8>
  %i.az = and <32 x i8> %i.ay, splat (i8 15)
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.az)
  %i.bb = bitcast <4 x i64> %i.z to <16 x i16>
  %i.bc = lshr <16 x i16> %i.bb, splat (i16 4)
  %i.bd = bitcast <16 x i16> %i.bc to <32 x i8>
  %i.be = and <32 x i8> %i.bd, splat (i8 15)
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.be)
  %i.bg = load <8 x half>, ptr %i.r, align 1, !tbaa !9, !alias.scope !39, !noalias !41
  %i.bh = shufflevector <8 x half> %i.bg, <8 x half> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bi = fpext <8 x half> %i.bh to <8 x float>
  %i.bj = getelementptr inbounds nuw [34 x i8], ptr %i.m, i64 %.09799.us.us.i ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !15, !alias.scope !40, !noalias !42
  %i.bl = zext i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13, !noalias !43
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.br = load <2 x i64>, ptr %i.bq, align 2, !tbaa !9, !alias.scope !40, !noalias !42
  %i.bs = shufflevector <2 x i64> %i.br, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 18
  %i.bu = load <2 x i64>, ptr %i.bt, align 2, !tbaa !9, !alias.scope !40, !noalias !42
  %i.bv = shufflevector <2 x i64> %i.bu, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bw = bitcast <32 x i8> %i.ac to <8 x i32>    ; 2 uses
  %i.bx = bitcast <32 x i8> %i.af to <8 x i32>    ; 2 uses
  %i.by = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.bz = bitcast <8 x i32> %i.by to <32 x i8>    ; 3 uses
  %i.ca = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.bz, <32 x i8> %i.bz)
  %i.cb = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cc = shufflevector <32 x i8> %i.cb, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cc, <32 x i8> %i.bz)
  %i.ce = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ca, <32 x i8> %i.cd)
  %i.cf = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.cg = bitcast <8 x i32> %i.cf to <32 x i8>    ; 3 uses
  %i.ch = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cg, <32 x i8> %i.cg)
  %i.ci = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cj = shufflevector <32 x i8> %i.ci, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ck = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cj, <32 x i8> %i.cg)
  %i.cl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.ch, <32 x i8> %i.ck)
  %i.cm = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.cn = bitcast <32 x i8> %i.al to <8 x i32>    ; 2 uses
  %i.co = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.cp = bitcast <8 x i32> %i.co to <32 x i8>    ; 3 uses
  %i.cq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cp, <32 x i8> %i.cp)
  %i.cr = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cs = shufflevector <32 x i8> %i.cr, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.ct = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cs, <32 x i8> %i.cp)
  %i.cu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cl, <32 x i8> %i.cq, <32 x i8> %i.ct)
  %i.cv = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.cw = bitcast <8 x i32> %i.cv to <32 x i8>    ; 3 uses
  %i.cx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cw, <32 x i8> %i.cw)
  %i.cy = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cz = shufflevector <32 x i8> %i.cy, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.da = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cz, <32 x i8> %i.cw)
  %i.db = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cu, <32 x i8> %i.cx, <32 x i8> %i.da)
  %i.dc = bitcast <32 x i8> %i.aq to <8 x i32>    ; 2 uses
  %i.dd = bitcast <32 x i8> %i.av to <8 x i32>    ; 2 uses
  %i.de = shufflevector <8 x i32> %i.dc, <8 x i32> %i.dd, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.df = bitcast <8 x i32> %i.de to <32 x i8>    ; 3 uses
  %i.dg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.df, <32 x i8> %i.df)
  %i.dh = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.di = shufflevector <32 x i8> %i.dh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.di, <32 x i8> %i.df)
  %i.dk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.db, <32 x i8> %i.dg, <32 x i8> %i.dj)
  %i.dl = shufflevector <8 x i32> %i.dc, <8 x i32> %i.dd, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.dm = bitcast <8 x i32> %i.dl to <32 x i8>    ; 3 uses
  %i.dn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dm, <32 x i8> %i.dm)
  %i.do = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.dp = shufflevector <32 x i8> %i.do, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.dq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dp, <32 x i8> %i.dm)
  %i.dr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dk, <32 x i8> %i.dn, <32 x i8> %i.dq)
  %i.ds = bitcast <32 x i8> %i.ba to <8 x i32>    ; 2 uses
  %i.dt = bitcast <32 x i8> %i.bf to <8 x i32>    ; 2 uses
  %i.du = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.dv = bitcast <8 x i32> %i.du to <32 x i8>    ; 3 uses
  %i.dw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dv, <32 x i8> %i.dv)
  %i.dx = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.dy = shufflevector <32 x i8> %i.dx, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.dz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dy, <32 x i8> %i.dv)
  %i.ea = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dr, <32 x i8> %i.dw, <32 x i8> %i.dz)
  %i.eb = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ec = bitcast <8 x i32> %i.eb to <32 x i8>    ; 3 uses
  %i.ed = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ec, <32 x i8> %i.ec)
  %i.ee = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.ef = shufflevector <32 x i8> %i.ee, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.eg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ef, <32 x i8> %i.ec)
  %i.eh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ea, <32 x i8> %i.ed, <32 x i8> %i.eg)
  %i.ei = sitofp <8 x i32> %i.eh to <8 x float>
  %i.ej = fmul <8 x float> %i.bp, %i.bi
  %i.ek = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ei, <8 x float> %i.ej, <8 x float> %.096100.us.us.i) ; 2 uses
  %i.el = add nuw nsw i64 %.09799.us.us.i, 1      ; 2 uses
  %exitcond109.not.i = icmp eq i64 %i.el, %i.c
  br i1 %exitcond109.not.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !34

._crit_edge.us.us.i:                              ; preds = %bb.b
  %i.em = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %.idx.us.us.i = shl nuw nsw i64 %.095101.us.us.i, 5
  %i.en = getelementptr i8, ptr %i.o, i64 %.idx.us.us.i
  store <8 x float> %i.em, ptr %i.en, align 1, !tbaa !9, !alias.scope !38, !noalias !44
  %i.eo = add nuw nsw i64 %.095101.us.us.i, 1     ; 2 uses
end_hunk_0
