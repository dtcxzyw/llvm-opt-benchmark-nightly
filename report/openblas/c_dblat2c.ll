Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat2c?download=true
inline.NumInlined: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 37
begin_hunk_0_@main:bb.a
  %vec.ind306 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next371, %vector.body ] ; 2 uses
  %vec.ind307 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next372, %vector.body ] ; 2 uses
  %vec.ind308 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next373, %vector.body ] ; 2 uses
  %vec.ind309 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next374, %vector.body ] ; 2 uses
  %vec.ind310 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next375, %vector.body ] ; 2 uses
  %vec.ind311 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next376, %vector.body ] ; 2 uses
  %vec.ind312 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next377, %vector.body ] ; 2 uses
  %vec.ind313 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next378, %vector.body ] ; 2 uses
  %vec.ind314 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next379, %vector.body ] ; 2 uses
  %vec.ind315 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %._crit_edge189 ], [ %vec.ind.next380, %vector.body ] ; 2 uses
  %i.gs = mul nuw nsw <4 x i64> %vec.ind, splat (i64 65)
  %i.gt = sub <4 x i32> splat (i32 1), %vec.ind283
  %i.gu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gt, <4 x i32> splat (i32 -1))
  %i.gv = add nsw <4 x i32> %i.gu, splat (i32 1)
  %i.gw = uitofp nneg <4 x i32> %i.gv to <4 x double>
  %wide.gep = getelementptr [8 x i8], ptr @main.a, <4 x i64> %i.gs ; 32 uses
  %wide.gep316 = getelementptr i8, <4 x ptr> %wide.gep, i64 -520
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.gw, <4 x ptr> align 8 %wide.gep316, <4 x i1> splat (i1 true)), !tbaa !22
  %i.gx = sub <4 x i32> splat (i32 2), %vec.ind284
  %i.gy = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gx, <4 x i32> splat (i32 -1))
  %i.gz = add nsw <4 x i32> %i.gy, splat (i32 1)
  %i.ha = uitofp nneg <4 x i32> %i.gz to <4 x double>
  %wide.gep317 = getelementptr i8, <4 x ptr> %wide.gep, i64 -512
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ha, <4 x ptr> align 8 %wide.gep317, <4 x i1> splat (i1 true)), !tbaa !22
  %i.hb = sub <4 x i32> splat (i32 3), %vec.ind285
  %i.hc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hb, <4 x i32> splat (i32 -1))
  %i.hd = add nsw <4 x i32> %i.hc, splat (i32 1)
  %i.he = uitofp nneg <4 x i32> %i.hd to <4 x double>
  %wide.gep318 = getelementptr i8, <4 x ptr> %wide.gep, i64 -504
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.he, <4 x ptr> align 8 %wide.gep318, <4 x i1> splat (i1 true)), !tbaa !22
  %i.hf = sub <4 x i32> splat (i32 4), %vec.ind286
  %i.hg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hf, <4 x i32> splat (i32 -1))
  %i.hh = add nsw <4 x i32> %i.hg, splat (i32 1)
  %i.hi = uitofp nneg <4 x i32> %i.hh to <4 x double>
  %wide.gep319 = getelementptr i8, <4 x ptr> %wide.gep, i64 -496
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.hi, <4 x ptr> align 8 %wide.gep319, <4 x i1> splat (i1 true)), !tbaa !22
  %i.hj = sub <4 x i32> splat (i32 5), %vec.ind287
  %i.hk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hj, <4 x i32> splat (i32 -1))
  %i.hl = add nsw <4 x i32> %i.hk, splat (i32 1)
  %i.hm = uitofp nneg <4 x i32> %i.hl to <4 x double>
  %wide.gep320 = getelementptr i8, <4 x ptr> %wide.gep, i64 -488
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.hm, <4 x ptr> align 8 %wide.gep320, <4 x i1> splat (i1 true)), !tbaa !22
  %i.hn = sub <4 x i32> splat (i32 6), %vec.ind288
  %i.ho = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hn, <4 x i32> splat (i32 -1))
  %i.hp = add nsw <4 x i32> %i.ho, splat (i32 1)
  %i.hq = uitofp nneg <4 x i32> %i.hp to <4 x double>
  %wide.gep321 = getelementptr i8, <4 x ptr> %wide.gep, i64 -480
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.hq, <4 x ptr> align 8 %wide.gep321, <4 x i1> splat (i1 true)), !tbaa !22
  %i.hr = sub <4 x i32> splat (i32 7), %vec.ind289
  %i.hs = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hr, <4 x i32> splat (i32 -1))
  %i.ht = add nsw <4 x i32> %i.hs, splat (i32 1)
  %i.hu = uitofp nneg <4 x i32> %i.ht to <4 x double>
  %wide.gep322 = getelementptr i8, <4 x ptr> %wide.gep, i64 -472
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.hu, <4 x ptr> align 8 %wide.gep322, <4 x i1> splat (i1 true)), !tbaa !22
  %i.hv = sub <4 x i32> splat (i32 8), %vec.ind290
  %i.hw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hv, <4 x i32> splat (i32 -1))
  %i.hx = add nsw <4 x i32> %i.hw, splat (i32 1)
  %i.hy = uitofp nneg <4 x i32> %i.hx to <4 x double>
  %wide.gep323 = getelementptr i8, <4 x ptr> %wide.gep, i64 -464
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.hy, <4 x ptr> align 8 %wide.gep323, <4 x i1> splat (i1 true)), !tbaa !22
  %i.hz = sub <4 x i32> splat (i32 9), %vec.ind291
  %i.ia = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hz, <4 x i32> splat (i32 -1))
  %i.ib = add nsw <4 x i32> %i.ia, splat (i32 1)
  %i.ic = uitofp nneg <4 x i32> %i.ib to <4 x double>
  %wide.gep324 = getelementptr i8, <4 x ptr> %wide.gep, i64 -456
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ic, <4 x ptr> align 8 %wide.gep324, <4 x i1> splat (i1 true)), !tbaa !22
  %i.id = sub <4 x i32> splat (i32 10), %vec.ind292
  %i.ie = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.id, <4 x i32> splat (i32 -1))
  %i.if = add nsw <4 x i32> %i.ie, splat (i32 1)
  %i.ig = uitofp nneg <4 x i32> %i.if to <4 x double>
  %wide.gep325 = getelementptr i8, <4 x ptr> %wide.gep, i64 -448
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ig, <4 x ptr> align 8 %wide.gep325, <4 x i1> splat (i1 true)), !tbaa !22
  %i.ih = sub <4 x i32> splat (i32 11), %vec.ind293
  %i.ii = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ih, <4 x i32> splat (i32 -1))
  %i.ij = add nsw <4 x i32> %i.ii, splat (i32 1)
  %i.ik = uitofp nneg <4 x i32> %i.ij to <4 x double>
  %wide.gep326 = getelementptr i8, <4 x ptr> %wide.gep, i64 -440
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ik, <4 x ptr> align 8 %wide.gep326, <4 x i1> splat (i1 true)), !tbaa !22
  %i.il = sub <4 x i32> splat (i32 12), %vec.ind294
  %i.im = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.il, <4 x i32> splat (i32 -1))
  %i.in = add nsw <4 x i32> %i.im, splat (i32 1)
  %i.io = uitofp nneg <4 x i32> %i.in to <4 x double>
  %wide.gep327 = getelementptr i8, <4 x ptr> %wide.gep, i64 -432
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.io, <4 x ptr> align 8 %wide.gep327, <4 x i1> splat (i1 true)), !tbaa !22
  %i.ip = sub <4 x i32> splat (i32 13), %vec.ind295
  %i.iq = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ip, <4 x i32> splat (i32 -1))
  %i.ir = add nsw <4 x i32> %i.iq, splat (i32 1)
  %i.is = uitofp nneg <4 x i32> %i.ir to <4 x double>
  %wide.gep328 = getelementptr i8, <4 x ptr> %wide.gep, i64 -424
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.is, <4 x ptr> align 8 %wide.gep328, <4 x i1> splat (i1 true)), !tbaa !22
  %i.it = sub <4 x i32> splat (i32 14), %vec.ind296
  %i.iu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.it, <4 x i32> splat (i32 -1))
  %i.iv = add nsw <4 x i32> %i.iu, splat (i32 1)
  %i.iw = uitofp nneg <4 x i32> %i.iv to <4 x double>
  %wide.gep329 = getelementptr i8, <4 x ptr> %wide.gep, i64 -416
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.iw, <4 x ptr> align 8 %wide.gep329, <4 x i1> splat (i1 true)), !tbaa !22
  %i.ix = sub <4 x i32> splat (i32 15), %vec.ind297
  %i.iy = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ix, <4 x i32> splat (i32 -1))
  %i.iz = add nsw <4 x i32> %i.iy, splat (i32 1)
  %i.ja = uitofp nneg <4 x i32> %i.iz to <4 x double>
  %wide.gep330 = getelementptr i8, <4 x ptr> %wide.gep, i64 -408
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ja, <4 x ptr> align 8 %wide.gep330, <4 x i1> splat (i1 true)), !tbaa !22
  %i.jb = sub <4 x i32> splat (i32 16), %vec.ind298
  %i.jc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jb, <4 x i32> splat (i32 -1))
  %i.jd = add nsw <4 x i32> %i.jc, splat (i32 1)
  %i.je = uitofp nneg <4 x i32> %i.jd to <4 x double>
  %wide.gep331 = getelementptr i8, <4 x ptr> %wide.gep, i64 -400
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.je, <4 x ptr> align 8 %wide.gep331, <4 x i1> splat (i1 true)), !tbaa !22
  %i.jf = sub <4 x i32> splat (i32 17), %vec.ind299
  %i.jg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jf, <4 x i32> splat (i32 -1))
  %i.jh = add nsw <4 x i32> %i.jg, splat (i32 1)
  %i.ji = uitofp nneg <4 x i32> %i.jh to <4 x double>
  %wide.gep332 = getelementptr i8, <4 x ptr> %wide.gep, i64 -392
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ji, <4 x ptr> align 8 %wide.gep332, <4 x i1> splat (i1 true)), !tbaa !22
  %i.jj = sub <4 x i32> splat (i32 18), %vec.ind300
  %i.jk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jj, <4 x i32> splat (i32 -1))
  %i.jl = add nsw <4 x i32> %i.jk, splat (i32 1)
  %i.jm = uitofp nneg <4 x i32> %i.jl to <4 x double>
  %wide.gep333 = getelementptr i8, <4 x ptr> %wide.gep, i64 -384
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.jm, <4 x ptr> align 8 %wide.gep333, <4 x i1> splat (i1 true)), !tbaa !22
  %i.jn = sub <4 x i32> splat (i32 19), %vec.ind301
  %i.jo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jn, <4 x i32> splat (i32 -1))
  %i.jp = add nsw <4 x i32> %i.jo, splat (i32 1)
  %i.jq = uitofp nneg <4 x i32> %i.jp to <4 x double>
  %wide.gep334 = getelementptr i8, <4 x ptr> %wide.gep, i64 -376
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.jq, <4 x ptr> align 8 %wide.gep334, <4 x i1> splat (i1 true)), !tbaa !22
  %i.jr = sub <4 x i32> splat (i32 20), %vec.ind302
  %i.js = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jr, <4 x i32> splat (i32 -1))
  %i.jt = add nsw <4 x i32> %i.js, splat (i32 1)
  %i.ju = uitofp nneg <4 x i32> %i.jt to <4 x double>
  %wide.gep335 = getelementptr i8, <4 x ptr> %wide.gep, i64 -368
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ju, <4 x ptr> align 8 %wide.gep335, <4 x i1> splat (i1 true)), !tbaa !22
  %i.jv = sub <4 x i32> splat (i32 21), %vec.ind303
  %i.jw = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jv, <4 x i32> splat (i32 -1))
  %i.jx = add nsw <4 x i32> %i.jw, splat (i32 1)
  %i.jy = uitofp nneg <4 x i32> %i.jx to <4 x double>
  %wide.gep336 = getelementptr i8, <4 x ptr> %wide.gep, i64 -360
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.jy, <4 x ptr> align 8 %wide.gep336, <4 x i1> splat (i1 true)), !tbaa !22
  %i.jz = sub <4 x i32> splat (i32 22), %vec.ind304
  %i.ka = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jz, <4 x i32> splat (i32 -1))
  %i.kb = add nsw <4 x i32> %i.ka, splat (i32 1)
  %i.kc = uitofp nneg <4 x i32> %i.kb to <4 x double>
  %wide.gep337 = getelementptr i8, <4 x ptr> %wide.gep, i64 -352
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.kc, <4 x ptr> align 8 %wide.gep337, <4 x i1> splat (i1 true)), !tbaa !22
  %i.kd = sub <4 x i32> splat (i32 23), %vec.ind305
  %i.ke = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kd, <4 x i32> splat (i32 -1))
  %i.kf = add nsw <4 x i32> %i.ke, splat (i32 1)
  %i.kg = uitofp nneg <4 x i32> %i.kf to <4 x double>
  %wide.gep338 = getelementptr i8, <4 x ptr> %wide.gep, i64 -344
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.kg, <4 x ptr> align 8 %wide.gep338, <4 x i1> splat (i1 true)), !tbaa !22
  %i.kh = sub <4 x i32> splat (i32 24), %vec.ind306
  %i.ki = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kh, <4 x i32> splat (i32 -1))
  %i.kj = add nsw <4 x i32> %i.ki, splat (i32 1)
  %i.kk = uitofp nneg <4 x i32> %i.kj to <4 x double>
  %wide.gep339 = getelementptr i8, <4 x ptr> %wide.gep, i64 -336
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.kk, <4 x ptr> align 8 %wide.gep339, <4 x i1> splat (i1 true)), !tbaa !22
  %i.kl = sub <4 x i32> splat (i32 25), %vec.ind307
  %i.km = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kl, <4 x i32> splat (i32 -1))
  %i.kn = add nsw <4 x i32> %i.km, splat (i32 1)
  %i.ko = uitofp nneg <4 x i32> %i.kn to <4 x double>
  %wide.gep340 = getelementptr i8, <4 x ptr> %wide.gep, i64 -328
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ko, <4 x ptr> align 8 %wide.gep340, <4 x i1> splat (i1 true)), !tbaa !22
  %i.kp = sub <4 x i32> splat (i32 26), %vec.ind308
  %i.kq = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kp, <4 x i32> splat (i32 -1))
  %i.kr = add nsw <4 x i32> %i.kq, splat (i32 1)
  %i.ks = uitofp nneg <4 x i32> %i.kr to <4 x double>
  %wide.gep341 = getelementptr i8, <4 x ptr> %wide.gep, i64 -320
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.ks, <4 x ptr> align 8 %wide.gep341, <4 x i1> splat (i1 true)), !tbaa !22
  %i.kt = sub <4 x i32> splat (i32 27), %vec.ind309
  %i.ku = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kt, <4 x i32> splat (i32 -1))
  %i.kv = add nsw <4 x i32> %i.ku, splat (i32 1)
  %i.kw = uitofp nneg <4 x i32> %i.kv to <4 x double>
  %wide.gep342 = getelementptr i8, <4 x ptr> %wide.gep, i64 -312
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.kw, <4 x ptr> align 8 %wide.gep342, <4 x i1> splat (i1 true)), !tbaa !22
  %i.kx = sub <4 x i32> splat (i32 28), %vec.ind310
  %i.ky = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kx, <4 x i32> splat (i32 -1))
  %i.kz = add nsw <4 x i32> %i.ky, splat (i32 1)
  %i.la = uitofp nneg <4 x i32> %i.kz to <4 x double>
  %wide.gep343 = getelementptr i8, <4 x ptr> %wide.gep, i64 -304
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.la, <4 x ptr> align 8 %wide.gep343, <4 x i1> splat (i1 true)), !tbaa !22
  %i.lb = sub <4 x i32> splat (i32 29), %vec.ind311
  %i.lc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lb, <4 x i32> splat (i32 -1))
  %i.ld = add nsw <4 x i32> %i.lc, splat (i32 1)
  %i.le = uitofp nneg <4 x i32> %i.ld to <4 x double>
  %wide.gep344 = getelementptr i8, <4 x ptr> %wide.gep, i64 -296
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.le, <4 x ptr> align 8 %wide.gep344, <4 x i1> splat (i1 true)), !tbaa !22
  %i.lf = sub <4 x i32> splat (i32 30), %vec.ind312
  %i.lg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lf, <4 x i32> splat (i32 -1))
  %i.lh = add nsw <4 x i32> %i.lg, splat (i32 1)
  %i.li = uitofp nneg <4 x i32> %i.lh to <4 x double>
  %wide.gep345 = getelementptr i8, <4 x ptr> %wide.gep, i64 -288
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.li, <4 x ptr> align 8 %wide.gep345, <4 x i1> splat (i1 true)), !tbaa !22
  %i.lj = sub <4 x i32> splat (i32 31), %vec.ind313
  %i.lk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lj, <4 x i32> splat (i32 -1))
  %i.ll = add nsw <4 x i32> %i.lk, splat (i32 1)
  %i.lm = uitofp nneg <4 x i32> %i.ll to <4 x double>
  %wide.gep346 = getelementptr i8, <4 x ptr> %wide.gep, i64 -280
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.lm, <4 x ptr> align 8 %wide.gep346, <4 x i1> splat (i1 true)), !tbaa !22
  %i.ln = sub <4 x i32> splat (i32 32), %vec.ind314
  %i.lo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ln, <4 x i32> splat (i32 -1))
  %i.lp = add nsw <4 x i32> %i.lo, splat (i32 1)
  %i.lq = uitofp nneg <4 x i32> %i.lp to <4 x double>
  %wide.gep347 = getelementptr i8, <4 x ptr> %wide.gep, i64 -272
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.lq, <4 x ptr> align 8 %wide.gep347, <4 x i1> splat (i1 true)), !tbaa !22
  %i.lr = uitofp nneg <4 x i32> %vec.ind315 to <4 x double>
  %i.ls = getelementptr [8 x i8], ptr @main.x, i64 %index
  store <4 x double> %i.lr, ptr %i.ls, align 16, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next348 = add <4 x i32> %vec.ind283, splat (i32 4)
  %vec.ind.next349 = add <4 x i32> %vec.ind284, splat (i32 4)
  %vec.ind.next350 = add <4 x i32> %vec.ind285, splat (i32 4)
  %vec.ind.next351 = add <4 x i32> %vec.ind286, splat (i32 4)
  %vec.ind.next352 = add <4 x i32> %vec.ind287, splat (i32 4)
  %vec.ind.next353 = add <4 x i32> %vec.ind288, splat (i32 4)
  %vec.ind.next354 = add <4 x i32> %vec.ind289, splat (i32 4)
  %vec.ind.next355 = add <4 x i32> %vec.ind290, splat (i32 4)
  %vec.ind.next356 = add <4 x i32> %vec.ind291, splat (i32 4)
  %vec.ind.next357 = add <4 x i32> %vec.ind292, splat (i32 4)
  %vec.ind.next358 = add <4 x i32> %vec.ind293, splat (i32 4)
  %vec.ind.next359 = add <4 x i32> %vec.ind294, splat (i32 4)
  %vec.ind.next360 = add <4 x i32> %vec.ind295, splat (i32 4)
  %vec.ind.next361 = add <4 x i32> %vec.ind296, splat (i32 4)
  %vec.ind.next362 = add <4 x i32> %vec.ind297, splat (i32 4)
  %vec.ind.next363 = add <4 x i32> %vec.ind298, splat (i32 4)
  %vec.ind.next364 = add <4 x i32> %vec.ind299, splat (i32 4)
  %vec.ind.next365 = add <4 x i32> %vec.ind300, splat (i32 4)
  %vec.ind.next366 = add <4 x i32> %vec.ind301, splat (i32 4)
  %vec.ind.next367 = add <4 x i32> %vec.ind302, splat (i32 4)
  %vec.ind.next368 = add <4 x i32> %vec.ind303, splat (i32 4)
  %vec.ind.next369 = add <4 x i32> %vec.ind304, splat (i32 4)
  %vec.ind.next370 = add <4 x i32> %vec.ind305, splat (i32 4)
  %vec.ind.next371 = add <4 x i32> %vec.ind306, splat (i32 4)
  %vec.ind.next372 = add <4 x i32> %vec.ind307, splat (i32 4)
  %vec.ind.next373 = add <4 x i32> %vec.ind308, splat (i32 4)
  %vec.ind.next374 = add <4 x i32> %vec.ind309, splat (i32 4)
  %vec.ind.next375 = add <4 x i32> %vec.ind310, splat (i32 4)
  %vec.ind.next376 = add <4 x i32> %vec.ind311, splat (i32 4)
  %vec.ind.next377 = add <4 x i32> %vec.ind312, splat (i32 4)
  %vec.ind.next378 = add <4 x i32> %vec.ind313, splat (i32 4)
  %vec.ind.next379 = add <4 x i32> %vec.ind314, splat (i32 4)
  %vec.ind.next380 = add <4 x i32> %vec.ind315, splat (i32 4)
  %i.lt = icmp eq i64 %index.next, 32
  br i1 %i.lt, label %.preheader130, label %vector.body, !llvm.loop !26

.preheader130:                                    ; preds = %vector.body
  store i32 33, ptr @main.i__, align 4, !tbaa !13
  store <4 x double> <double 1.000000e+00, double 4.000000e+00, double 1.000000e+01, double 2.000000e+01>, ptr @main.yy, align 32, !tbaa !22
  store <4 x double> <double 3.500000e+01, double 5.600000e+01, double 8.400000e+01, double 1.200000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.yy, i64 32), align 32, !tbaa !22
  store <4 x double> <double 1.650000e+02, double 2.200000e+02, double 2.860000e+02, double 3.640000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.yy, i64 64), align 32, !tbaa !22
  store <4 x double> <double 4.550000e+02, double 5.600000e+02, double 6.800000e+02, double 8.160000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.yy, i64 96), align 32, !tbaa !22
  store <4 x double> <double 9.690000e+02, double 1.140000e+03, double 1.330000e+03, double 1.540000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.yy, i64 128), align 32, !tbaa !22
  store <4 x double> <double 1.771000e+03, double 2.024000e+03, double 2.300000e+03, double 2.600000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.yy, i64 160), align 32, !tbaa !22
  store <4 x double> <double 2.925000e+03, double 3.276000e+03, double 3.654000e+03, double 4.060000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.yy, i64 192), align 32, !tbaa !22
  store <4 x double> <double 4.495000e+03, double 4.960000e+03, double 5.456000e+03, double 5.984000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.yy, i64 224), align 32, !tbaa !22
  store i8 78, ptr @main.trans, align 1, !tbaa !14
  %i.lu = call i32 @dmvch_(ptr noundef nonnull @main.trans, ptr noundef nonnull @main.n, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b123, ptr noundef nonnull @main.a, ptr noundef nonnull @c__65, ptr noundef nonnull @main.x, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b135, ptr noundef nonnull @main.y, ptr noundef nonnull @c__1, ptr noundef nonnull @main.yt, ptr noundef nonnull @main.g, ptr noundef nonnull @main.yy, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison) ; 0 uses
  %i.lv = load i32, ptr @main.n, align 4, !tbaa !13 ; 2 uses
  %.not7.i = icmp slt i32 %i.lv, 1
  br i1 %.not7.i, label %lde_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader130
  %i.lw = add nuw i32 %i.lv, 1
  %wide.trip.count.i = zext i32 %i.lw to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.yy, i64 -8), i64 %indvars.iv.i
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !22
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.yt, i64 -8), i64 %indvars.iv.i
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !22
  %i.mb = fcmp une double %i.ly, %i.ma
  br i1 %i.mb, label %lde_.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lde_.exit, label %.lr.ph.i, !llvm.loop !29

lde_.exit.thread:                                 ; preds = %.lr.ph.i
  store i1 false, ptr @main.same, align 4
  br label %bb.r

lde_.exit:                                        ; preds = %bb.q, %.preheader130
  store i1 true, ptr @main.same, align 4
  %i.mc = load double, ptr @main.err, align 8
  %i.md = fcmp une double %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.r, label %bb.s

bb.r:                                             ; preds = %lde_.exit.thread, %lde_.exit
  %puts101 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.me = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @main.trans) ; 0 uses
  %.b278 = load i1, ptr @main.same, align 4
  %i.mf = select i1 %.b278, i32 84, i32 70
  %i.mg = load double, ptr @main.err, align 8, !tbaa !22
  %i.mh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %i.mf, double noundef %i.mg) ; 0 uses
  %puts102 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts103 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  call void @exit(i32 noundef 1) #22
  unreachable

bb.s:                                             ; preds = %lde_.exit
  store i8 84, ptr @main.trans, align 1, !tbaa !14
  %i.mi = call i32 @dmvch_(ptr noundef nonnull @main.trans, ptr noundef nonnull @main.n, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b123, ptr noundef nonnull @main.a, ptr noundef nonnull @c__65, ptr noundef nonnull @main.x, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_b135, ptr noundef nonnull @main.y, ptr noundef nonnull @c_n1, ptr noundef nonnull @main.yt, ptr noundef nonnull @main.g, ptr noundef nonnull @main.yy, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison) ; 0 uses
  %i.mj = load i32, ptr @main.n, align 4, !tbaa !13 ; 2 uses
  %.not7.i112 = icmp slt i32 %i.mj, 1
  br i1 %.not7.i112, label %lde_.exit122, label %.lr.ph.preheader.i113

.lr.ph.preheader.i113:                            ; preds = %bb.s
  %i.mk = add nuw i32 %i.mj, 1
  %wide.trip.count.i114 = zext i32 %i.mk to i64
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %bb.t, %.lr.ph.preheader.i113
  %indvars.iv.i116 = phi i64 [ 1, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i117, %bb.t ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.yy, i64 -8), i64 %indvars.iv.i116
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !22
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.yt, i64 -8), i64 %indvars.iv.i116
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !22
  %i.mp = fcmp une double %i.mm, %i.mo
  br i1 %i.mp, label %lde_.exit122.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i115
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %lde_.exit122, label %.lr.ph.i115, !llvm.loop !29

lde_.exit122.thread:                              ; preds = %.lr.ph.i115
  store i1 false, ptr @main.same, align 4
  br label %bb.u

lde_.exit122:                                     ; preds = %bb.t, %bb.s
  store i1 true, ptr @main.same, align 4
  %i.mq = load double, ptr @main.err, align 8
  %i.mr = fcmp une double %i.mq, 0.000000e+00
  br i1 %i.mr, label %bb.u, label %.preheader129

.preheader129:                                    ; preds = %lde_.exit122
  store i32 1, ptr @main.isnum, align 4, !tbaa !13
  br label %bb.v

bb.u:                                             ; preds = %lde_.exit122.thread, %lde_.exit122
  %puts98 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.ms = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @main.trans) ; 0 uses
  %.b = load i1, ptr @main.same, align 4
  %i.mt = select i1 %.b, i32 84, i32 70
  %i.mu = load double, ptr @main.err, align 8, !tbaa !22
  %i.mv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %i.mt, double noundef %i.mu) ; 0 uses
  %puts99 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts100 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  call void @exit(i32 noundef 1) #22
  unreachable

bb.v:                                             ; preds = %.preheader129, %bb.bk
  %storemerge93197 = phi i32 [ 1, %.preheader129 ], [ %i.qi, %bb.bk ] ; 3 uses
  %i.mw = add nsw i32 %storemerge93197, -1
  %i.mx = sext i32 %i.mw to i64                   ; 2 uses
  %i.my = getelementptr inbounds [4 x i8], ptr @main.ltest, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !13
  %.not95 = icmp eq i32 %i.mz, 0
  br i1 %.not95, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.na = sext i32 %storemerge93197 to i64
  %i.nb = getelementptr [13 x i8], ptr @main.snames, i64 %i.na ; 12 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 -13    ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !14  ; 2 uses
  %.not96 = icmp eq i8 %i.nd, 0
  br i1 %.not96, label %.critedge, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ne = getelementptr inbounds [13 x i8], ptr @main.snames, i64 %i.mx
  %i.nf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef nonnull %i.ne) ; 0 uses
  br label %bb.bk

bb.x:                                             ; preds = %.preheader
  store i8 %i.nd, ptr @srnamc_, align 1, !tbaa !14
  %i.ng = getelementptr i8, ptr %i.nb, i64 -12
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !14  ; 2 uses
  %.not96.1 = icmp eq i8 %i.nh, 0
  br i1 %.not96.1, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 %i.nh, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 1), align 1, !tbaa !14
  %i.ni = getelementptr i8, ptr %i.nb, i64 -11
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !14  ; 2 uses
  %.not96.2 = icmp eq i8 %i.nj, 0
  br i1 %.not96.2, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 %i.nj, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 2), align 1, !tbaa !14
  %i.nk = getelementptr i8, ptr %i.nb, i64 -10
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !14  ; 2 uses
  %.not96.3 = icmp eq i8 %i.nl, 0
  br i1 %.not96.3, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 %i.nl, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 3), align 1, !tbaa !14
  %i.nm = getelementptr i8, ptr %i.nb, i64 -9
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !14  ; 2 uses
end_hunk_0
