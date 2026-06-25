begin_hunk_0_@Reference_IDCT:vector.ph
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dj
  %i.gf = load i16, ptr %i.dl, align 2, !tbaa !10
  %i.gg = load i16, ptr %i.dn, align 2, !tbaa !10
  %i.gh = insertelement <2 x i16> poison, i16 %i.gf, i64 0
  %i.gi = insertelement <2 x i16> %i.gh, i16 %i.gg, i64 1
  %i.gj = sitofp <2 x i16> %i.gi to <2 x double>  ; 2 uses
  %i.gk = load i16, ptr %i.du, align 2, !tbaa !10
  %i.gl = load i16, ptr %i.dw, align 2, !tbaa !10
  %i.gm = insertelement <2 x i16> poison, i16 %i.gk, i64 0
  %i.gn = insertelement <2 x i16> %i.gm, i16 %i.gl, i64 1
  %i.go = sitofp <2 x i16> %i.gn to <2 x double>  ; 2 uses
  %i.gp = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.gq = load i16, ptr %i.ef, align 2, !tbaa !10
  %i.gr = insertelement <2 x i16> poison, i16 %i.gp, i64 0
  %i.gs = insertelement <2 x i16> %i.gr, i16 %i.gq, i64 1
  %i.gt = sitofp <2 x i16> %i.gs to <2 x double>  ; 2 uses
  %i.gu = load i16, ptr %i.em, align 2, !tbaa !10
  %i.gv = load i16, ptr %i.eo, align 2, !tbaa !10
  %i.gw = insertelement <2 x i16> poison, i16 %i.gu, i64 0
  %i.gx = insertelement <2 x i16> %i.gw, i16 %i.gv, i64 1
  %i.gy = sitofp <2 x i16> %i.gx to <2 x double>  ; 2 uses
  %i.gz = load i16, ptr %i.ev, align 2, !tbaa !10
  %i.ha = load i16, ptr %i.ex, align 2, !tbaa !10
  %i.hb = insertelement <2 x i16> poison, i16 %i.gz, i64 0
  %i.hc = insertelement <2 x i16> %i.hb, i16 %i.ha, i64 1
  %i.hd = sitofp <2 x i16> %i.hc to <2 x double>  ; 2 uses
  %i.he = load i16, ptr %i.fe, align 2, !tbaa !10
  %i.hf = load i16, ptr %i.fg, align 2, !tbaa !10
  %i.hg = insertelement <2 x i16> poison, i16 %i.he, i64 0
  %i.hh = insertelement <2 x i16> %i.hg, i16 %i.hf, i64 1
  %i.hi = sitofp <2 x i16> %i.hh to <2 x double>  ; 2 uses
  %i.hj = load i16, ptr %i.fn, align 2, !tbaa !10
  %i.hk = load i16, ptr %i.fp, align 2, !tbaa !10
  %i.hl = insertelement <2 x i16> poison, i16 %i.hj, i64 0
  %i.hm = insertelement <2 x i16> %i.hl, i16 %i.hk, i64 1
  %i.hn = sitofp <2 x i16> %i.hm to <2 x double>  ; 2 uses
  %i.ho = load i16, ptr %i.fw, align 2, !tbaa !10
  %i.hp = load i16, ptr %i.fy, align 2, !tbaa !10
  %i.hq = insertelement <2 x i16> poison, i16 %i.ho, i64 0
  %i.hr = insertelement <2 x i16> %i.hq, i16 %i.hp, i64 1
  %i.hs = sitofp <2 x i16> %i.hr to <2 x double>  ; 2 uses
  %i.ht = shufflevector <2 x double> %i.gd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hu = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hv = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hw = shufflevector <2 x double> %i.fc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hx = shufflevector <2 x double> %i.et, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hy = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hz = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ia = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ib = shufflevector <2 x double> %i.gd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ic = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.id = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ie = shufflevector <2 x double> %i.fc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.if = shufflevector <2 x double> %i.et, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ig = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ih = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ii = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ij = shufflevector <2 x double> %i.gd, <2 x double> %i.hs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ik = shufflevector <2 x double> %i.fu, <2 x double> %i.hn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.il = shufflevector <2 x double> %i.fl, <2 x double> %i.hi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.im = shufflevector <2 x double> %i.fc, <2 x double> %i.hd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.in = shufflevector <2 x double> %i.et, <2 x double> %i.gy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.io = shufflevector <2 x double> %i.ek, <2 x double> %i.gt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ip = shufflevector <2 x double> %i.go, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iq = shufflevector <2 x double> %i.gj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ir = shufflevector <2 x double> %i.hs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.is = shufflevector <2 x double> %i.hn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.it = shufflevector <2 x double> %i.hi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iu = shufflevector <2 x double> %i.hd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iv = shufflevector <2 x double> %i.gy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iw = shufflevector <2 x double> %i.gt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ix = shufflevector <2 x double> %i.go, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iy = shufflevector <2 x double> %i.gj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iz = shufflevector <4 x double> %i.ht, <4 x double> %i.ib, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ja = shufflevector <4 x double> %i.hu, <4 x double> %i.ic, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jb = shufflevector <4 x double> %i.hv, <4 x double> %i.id, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jc = shufflevector <4 x double> %i.hw, <4 x double> %i.ie, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jd = shufflevector <4 x double> %i.hx, <4 x double> %i.if, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.je = shufflevector <4 x double> %i.hy, <4 x double> %i.ig, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jf = shufflevector <4 x double> %i.hz, <4 x double> %i.ih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jg = shufflevector <4 x double> %i.ia, <4 x double> %i.ii, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jh = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.da, <8 x double> %i.jg, <8 x double> zeroinitializer)
  %i.ji = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cz, <8 x double> %i.jf, <8 x double> %i.jh)
  %i.jj = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cy, <8 x double> %i.je, <8 x double> %i.ji)
  %i.jk = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cx, <8 x double> %i.jd, <8 x double> %i.jj)
  %i.jl = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cw, <8 x double> %i.jc, <8 x double> %i.jk)
  %i.jm = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cv, <8 x double> %i.jb, <8 x double> %i.jl)
  %i.jn = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cu, <8 x double> %i.ja, <8 x double> %i.jm)
  %i.jo = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ct, <8 x double> %i.iz, <8 x double> %i.jn)
  %i.jp = shufflevector <4 x double> %i.ij, <4 x double> %i.ir, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jq = shufflevector <4 x double> %i.ik, <4 x double> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jr = shufflevector <4 x double> %i.il, <4 x double> %i.it, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.js = shufflevector <4 x double> %i.im, <4 x double> %i.iu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jt = shufflevector <4 x double> %i.in, <4 x double> %i.iv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ju = shufflevector <4 x double> %i.io, <4 x double> %i.iw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jv = shufflevector <4 x double> %i.ip, <4 x double> %i.ix, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jw = shufflevector <4 x double> %i.iq, <4 x double> %i.iy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jx = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.di, <8 x double> %i.jw, <8 x double> zeroinitializer)
  %i.jy = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dh, <8 x double> %i.jv, <8 x double> %i.jx)
  %i.jz = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dg, <8 x double> %i.ju, <8 x double> %i.jy)
  %i.ka = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.df, <8 x double> %i.jt, <8 x double> %i.jz)
  %i.kb = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.de, <8 x double> %i.js, <8 x double> %i.ka)
  %i.kc = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dd, <8 x double> %i.jr, <8 x double> %i.kb)
  %i.kd = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dc, <8 x double> %i.jq, <8 x double> %i.kc)
  %i.ke = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.db, <8 x double> %i.jp, <8 x double> %i.kd)
  %interleaved.vec = shufflevector <8 x double> %i.jo, <8 x double> %i.ke, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x double> %interleaved.vec, ptr %i.ge, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kf = icmp eq i64 %index.next, 8
  br i1 %i.kf, label %.preheader38.preheader, label %vector.body, !llvm.loop !12

.preheader38.preheader:                           ; preds = %vector.body
  %wide.load = load <2 x double>, ptr @c, align 16, !tbaa !8
  %wide.load213 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16, !tbaa !8
  %wide.load214 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16, !tbaa !8
  %wide.load215 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16, !tbaa !8
  %wide.load216 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16, !tbaa !8
  %wide.load217 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16, !tbaa !8
  %wide.load218 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16, !tbaa !8
  %wide.load219 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16, !tbaa !8
  %wide.load.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16, !tbaa !8
  %wide.load213.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16, !tbaa !8
  %wide.load214.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16, !tbaa !8
  %wide.load215.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16, !tbaa !8
  %wide.load216.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16, !tbaa !8
  %wide.load217.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16, !tbaa !8
  %wide.load218.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16, !tbaa !8
  %wide.load219.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16, !tbaa !8
  %wide.load.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16, !tbaa !8
  %wide.load213.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16, !tbaa !8
  %wide.load214.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16, !tbaa !8
  %wide.load215.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16, !tbaa !8
  %wide.load216.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16, !tbaa !8
  %wide.load217.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16, !tbaa !8
  %wide.load218.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16, !tbaa !8
  %wide.load219.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16, !tbaa !8
  %wide.load.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16, !tbaa !8
  %wide.load213.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16, !tbaa !8
  %wide.load214.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16, !tbaa !8
  %wide.load215.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16, !tbaa !8
  %wide.load216.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16, !tbaa !8
  %wide.load217.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16, !tbaa !8
  %wide.load218.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16, !tbaa !8
  %wide.load219.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16, !tbaa !8
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.preheader, %.preheader38
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.preheader38 ], [ 0, %.preheader38.preheader ] ; 10 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 448
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !8
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.ki, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 384
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !8
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %i.kl, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 320
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !8
  %broadcast.splatinsert205 = insertelement <2 x double> poison, double %i.ko, i64 0
  %broadcast.splat206 = shufflevector <2 x double> %broadcast.splatinsert205, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 256
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !8
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %i.kr, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 192
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !8
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %i.ku, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !8
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.kx, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 64
  %i.la = load double, ptr %i.kz, align 8, !tbaa !8
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.la, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !8
  %broadcast.splatinsert195 = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat196 = shufflevector <2 x double> %broadcast.splatinsert195, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64 ; 8 uses
  %i.lb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.lc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat198, <2 x double> %i.lb)
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat200, <2 x double> %i.lc)
  %i.le = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215, <2 x double> %broadcast.splat202, <2 x double> %i.ld)
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216, <2 x double> %broadcast.splat204, <2 x double> %i.le)
  %i.lg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217, <2 x double> %broadcast.splat206, <2 x double> %i.lf)
  %i.lh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218, <2 x double> %broadcast.splat208, <2 x double> %i.lg)
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219, <2 x double> %broadcast.splat210, <2 x double> %i.lh)
  %i.lj = fadd <2 x double> %i.li, splat (double 5.000000e-01)
  %i.lk = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.lj)
  %i.ll = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.lk)
  %i.lm = sext <2 x i9> %i.ll to <2 x i16>        ; 2 uses
  %1 = extractelement <2 x i16> %i.lm, i64 0
  %i.ln = extractelement <2 x i16> %i.lm, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  store i16 %1, ptr %invariant.gep, align 2, !tbaa !10
  store i16 %i.ln, ptr %2, align 2, !tbaa !10
  %i.lo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.1, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.1, <2 x double> %broadcast.splat198, <2 x double> %i.lo)
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.1, <2 x double> %broadcast.splat200, <2 x double> %i.lp)
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.1, <2 x double> %broadcast.splat202, <2 x double> %i.lq)
  %i.ls = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.1, <2 x double> %broadcast.splat204, <2 x double> %i.lr)
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.1, <2 x double> %broadcast.splat206, <2 x double> %i.ls)
  %i.lu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.1, <2 x double> %broadcast.splat208, <2 x double> %i.lt)
  %i.lv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.1, <2 x double> %broadcast.splat210, <2 x double> %i.lu)
  %i.lw = fadd <2 x double> %i.lv, splat (double 5.000000e-01)
  %i.lx = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.lw)
  %i.ly = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.lx)
  %i.lz = sext <2 x i9> %i.ly to <2 x i16>        ; 2 uses
  %3 = extractelement <2 x i16> %i.lz, i64 0
  %4 = extractelement <2 x i16> %i.lz, i64 1
  %5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  store i16 %3, ptr %5, align 2, !tbaa !10
  store i16 %4, ptr %6, align 2, !tbaa !10
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.2, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.mb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.2, <2 x double> %broadcast.splat198, <2 x double> %i.ma)
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.2, <2 x double> %broadcast.splat200, <2 x double> %i.mb)
  %i.md = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.2, <2 x double> %broadcast.splat202, <2 x double> %i.mc)
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.2, <2 x double> %broadcast.splat204, <2 x double> %i.md)
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.2, <2 x double> %broadcast.splat206, <2 x double> %i.me)
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.2, <2 x double> %broadcast.splat208, <2 x double> %i.mf)
  %i.mh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.2, <2 x double> %broadcast.splat210, <2 x double> %i.mg)
  %i.mi = fadd <2 x double> %i.mh, splat (double 5.000000e-01)
  %i.mj = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.mi)
  %i.mk = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.mj)
  %i.ml = sext <2 x i9> %i.mk to <2 x i16>        ; 2 uses
  %7 = extractelement <2 x i16> %i.ml, i64 0
  %8 = extractelement <2 x i16> %i.ml, i64 1
  %9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  store i16 %7, ptr %9, align 2, !tbaa !10
  store i16 %8, ptr %10, align 2, !tbaa !10
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.3, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.3, <2 x double> %broadcast.splat198, <2 x double> %i.mm)
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.3, <2 x double> %broadcast.splat200, <2 x double> %i.mn)
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.3, <2 x double> %broadcast.splat202, <2 x double> %i.mo)
  %i.mq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.3, <2 x double> %broadcast.splat204, <2 x double> %i.mp)
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.3, <2 x double> %broadcast.splat206, <2 x double> %i.mq)
  %i.ms = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.3, <2 x double> %broadcast.splat208, <2 x double> %i.mr)
  %i.mt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.3, <2 x double> %broadcast.splat210, <2 x double> %i.ms)
  %i.mu = fadd <2 x double> %i.mt, splat (double 5.000000e-01)
  %i.mv = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.mu)
  %i.mw = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.mv)
  %i.mx = sext <2 x i9> %i.mw to <2 x i16>        ; 2 uses
  %11 = extractelement <2 x i16> %i.mx, i64 0
  %12 = extractelement <2 x i16> %i.mx, i64 1
  %13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  store i16 %11, ptr %13, align 2, !tbaa !10
  store i16 %12, ptr %14, align 2, !tbaa !10
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 8
  br i1 %exitcond67.not, label %bb.a, label %.preheader38, !llvm.loop !16

bb.a:                                             ; preds = %.preheader38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13, !14, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !13}
end_hunk_0
