Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11btMultiBody49updateCollisionObjectInterpolationWorldTransformsER20btAlignedObjectArrayI12btQuaternionERS0_I9btVector3E:bb.a
  %i.je = fmul float %i.ix, %i.ix
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.iu, float %i.je)
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.ja, float %i.jf)
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.jd, float %i.jg)
  %i.ji = fdiv float 2.000000e+00, %i.jh          ; 3 uses
  %i.jj = fmul float %i.ji, %i.iv                 ; 2 uses
  %i.jk = fmul float %i.ji, %i.iy                 ; 3 uses
  %i.jl = fmul float %i.ji, %i.jb                 ; 4 uses
  %i.jm = fmul float %i.jd, %i.jj                 ; 2 uses
  %i.jn = fmul float %i.jd, %i.jk                 ; 2 uses
  %i.jo = fmul float %i.jd, %i.jl                 ; 2 uses
  %i.jp = fmul float %i.jj, %i.iv                 ; 2 uses
  %i.jq = fmul float %i.jk, %i.iv                 ; 2 uses
  %i.jr = fmul float %i.jl, %i.iv                 ; 2 uses
  %i.js = fmul float %i.jk, %i.iy                 ; 2 uses
  %i.jt = fmul float %i.jl, %i.iy                 ; 2 uses
  %i.ju = fmul float %i.jl, %i.jb                 ; 2 uses
  %i.jv = fadd float %i.js, %i.ju
  %i.jw = fsub float 1.000000e+00, %i.jv
  %i.jx = fsub float %i.jq, %i.jo
  %i.jy = fadd float %i.jr, %i.jn
  %i.jz = fadd float %i.jq, %i.jo
  %i.ka = fadd float %i.jp, %i.ju
  %i.kb = fsub float 1.000000e+00, %i.ka
  %i.kc = fsub float %i.jt, %i.jm
  %i.kd = fsub float %i.jr, %i.jn
  %i.ke = fadd float %i.jt, %i.jm
  %i.kf = fadd float %i.jp, %i.js
  %i.kg = fsub float 1.000000e+00, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.il, i64 352 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !108
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 8, !tbaa !108
  %i.kk = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  store float %i.jw, ptr %i.kk, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 76
  store float %i.jx, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  store float %i.jy, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 84
  store float 0.000000e+00, ptr %.sroa.877.0..sroa_idx, align 4, !tbaa !21
  %i.kl = getelementptr inbounds nuw i8, ptr %i.il, i64 88
  store float %i.jz, ptr %i.kl, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 92
  store float %i.kb, ptr %.sroa.11.16..sroa_idx, align 4
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 96
  store float %i.kc, ptr %.sroa.13.16..sroa_idx, align 8
  %.sroa.15.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 100
  store float 0.000000e+00, ptr %.sroa.15.16..sroa_idx, align 4, !tbaa !21
  %i.km = getelementptr inbounds nuw i8, ptr %i.il, i64 104
  store float %i.kd, ptr %i.km, align 8
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 108
  store float %i.ke, ptr %.sroa.18.32..sroa_idx, align 4
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 112
  store float %i.kg, ptr %.sroa.19.32..sroa_idx, align 8
  %.sroa.21.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.il, i64 116
  store float 0.000000e+00, ptr %.sroa.21.32..sroa_idx, align 4, !tbaa !21
  %i.kn = getelementptr inbounds nuw i8, ptr %i.il, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.23, i64 16, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %.pre123 = load i32, ptr %i.a, align 4, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ko = phi i32 [ %.pre123, %bb.s ], [ %i.ih, %bb.r ] ; 2 uses
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.kp = sext i32 %i.ko to i64
  %i.kq = icmp slt i64 %indvars.iv.next121, %i.kp
  br i1 %i.kq, label %bb.r, label %._crit_edge, !llvm.loop !407
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11btMultiBody28calculateSerializeBufferSizeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 {
bb.a:
  ret i32 112
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK11btMultiBody9serializeEPvP12btSerializer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef captures(none) initializes((0, 96)) %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !20
  store float %i.b, ptr %1, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.d, ptr %i.e, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load float, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.g, ptr %i.h, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load float, ptr %i.i, align 4, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load float, ptr %i.m, align 8, !tbaa !20
  %i.o = fneg float %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load <2 x float>, ptr %i.l, align 8, !tbaa !20
  %i.t = fneg <2 x float> %i.s
  store <2 x float> %i.t, ptr %i.r, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.o, ptr %i.u, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.q, ptr %i.v, align 4, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load <2 x float>, ptr %i.y, align 4, !tbaa !20
  store <2 x float> %i.ac, ptr %i.ab, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.aa, ptr %i.ad, align 4, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load <2 x float>, ptr %i.x, align 4, !tbaa !20
  store <2 x float> %i.ai, ptr %i.ah, align 4, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ag, ptr %i.aj, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load float, ptr %i.al, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.am, ptr %i.an, align 8, !tbaa !418
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !20
  store float %i.aq, ptr %i.ap, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load float, ptr %i.ar, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.as, ptr %i.at, align 4, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float %i.av, ptr %i.aw, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.ay, ptr %i.az, align 4, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !419
  %i.bc = load ptr, ptr %2, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bb) ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bf) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !420
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bl = load ptr, ptr %2, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bf)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !48 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !421
  %.not118 = icmp eq i32 %i.bp, 0
  br i1 %.not118, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = load ptr, ptr %2, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 472, i32 noundef %i.bp) ; 2 uses
  %i.bv = icmp sgt i32 %i.bp, 0
  br i1 %i.bv, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !423 ; 2 uses
  %i.by = ptrtoaddr ptr %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %wide.trip.count154 = zext nneg i32 %i.bp to i64
  %i.ca = add i64 %i.by, -128
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph143, %bb.j
  %indvars.iv151 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next152, %bb.j ] ; 6 uses
  %.0116140 = phi ptr [ %i.bx, %.lr.ph143 ], [ %i.kv, %bb.j ] ; 48 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !47 ; 2 uses
  %i.cc = ptrtoaddr ptr %i.cb to i64
  %i.cd = getelementptr inbounds nuw [688 x i8], ptr %i.cb, i64 %indvars.iv151 ; 44 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 564
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !78
  %i.cg = getelementptr inbounds nuw i8, ptr %.0116140, i64 332
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !425
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 556
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !79 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0116140, i64 320
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !426
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 560
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !80 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0116140, i64 412
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !427
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.0116140, i64 240
  %i.cp = load float, ptr %i.cn, align 4, !tbaa !20
  store float %i.cp, ptr %i.co, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %.0116140, i64 244
  store float %i.cr, ptr %i.cs, align 4, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %.0116140, i64 248
  store float %i.cu, ptr %i.cv, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %.0116140, i64 252
  store float %i.cx, ptr %i.cy, align 4, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %.0116140, i64 256
  %i.db = load float, ptr %i.cz, align 8, !tbaa !20
  store float %i.db, ptr %i.da, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 76
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %.0116140, i64 260
  store float %i.dd, ptr %i.de, align 4, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.dg = load float, ptr %i.df, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %.0116140, i64 264
  store float %i.dg, ptr %i.dh, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 84
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %.0116140, i64 268
  store float %i.dj, ptr %i.dk, align 4, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.dm = getelementptr inbounds nuw i8, ptr %.0116140, i64 272
  %i.dn = load float, ptr %i.dl, align 8, !tbaa !20
  store float %i.dn, ptr %i.dm, align 8, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.cd, i64 92
  %i.dp = load float, ptr %i.do, align 4, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %.0116140, i64 276
  store float %i.dp, ptr %i.dq, align 4, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %.0116140, i64 280
  store float %i.ds, ptr %i.dt, align 8, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 100
  %i.dv = load float, ptr %i.du, align 4, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %.0116140, i64 284
  store float %i.dv, ptr %i.dw, align 4, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cd, i64 104
  %i.dy = getelementptr inbounds nuw i8, ptr %.0116140, i64 288
  %i.dz = load float, ptr %i.dx, align 8, !tbaa !20
  store float %i.dz, ptr %i.dy, align 8, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cd, i64 108
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %.0116140, i64 292
  store float %i.eb, ptr %i.ec, align 4, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cd, i64 112
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %.0116140, i64 296
  store float %i.ee, ptr %i.ef, align 8, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cd, i64 116
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %.0116140, i64 300
  store float %i.eh, ptr %i.ei, align 4, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cd, i64 120
  %i.ek = getelementptr inbounds nuw i8, ptr %.0116140, i64 304
  %i.el = load float, ptr %i.ej, align 8, !tbaa !20
  store float %i.el, ptr %i.ek, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.cd, i64 124
  %i.en = load float, ptr %i.em, align 4, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %.0116140, i64 308
  store float %i.en, ptr %i.eo, align 4, !tbaa !20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %.0116140, i64 312
  store float %i.eq, ptr %i.er, align 8, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.cd, i64 132
  %i.et = load float, ptr %i.es, align 4, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %.0116140, i64 316
  store float %i.et, ptr %i.eu, align 4, !tbaa !20
  %i.ev = load float, ptr %i.cd, align 8, !tbaa !76
  %i.ew = getelementptr inbounds nuw i8, ptr %.0116140, i64 324
  store float %i.ev, ptr %i.ew, align 4, !tbaa !428
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cd, i64 20
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !77
  %i.ez = getelementptr inbounds nuw i8, ptr %.0116140, i64 328
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !429
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cd, i64 664
  %i.fb = getelementptr inbounds nuw i8, ptr %.0116140, i64 416
  %i.fc = load <4 x float>, ptr %i.fa, align 8, !tbaa !20
  store <4 x float> %i.fc, ptr %i.fb, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cd, i64 680
  %i.fe = getelementptr inbounds nuw i8, ptr %.0116140, i64 432
  %i.ff = load <2 x float>, ptr %i.fd, align 8, !tbaa !20
  store <2 x float> %i.ff, ptr %i.fe, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %.0116140, i64 16
  %i.fi = load float, ptr %i.fg, align 8, !tbaa !20
  store float %i.fi, ptr %i.fh, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cd, i64 60
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %.0116140, i64 20
  store float %i.fk, ptr %i.fl, align 4, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %.0116140, i64 24
  store float %i.fn, ptr %i.fo, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cd, i64 68
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %.0116140, i64 28
  store float %i.fq, ptr %i.fr, align 4, !tbaa !20
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.ft = getelementptr inbounds nuw i8, ptr %.0116140, i64 32
  %i.fu = load float, ptr %i.fs, align 8, !tbaa !20
  store float %i.fu, ptr %i.ft, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cd, i64 44
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %.0116140, i64 36
  store float %i.fw, ptr %i.fx, align 4, !tbaa !20
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !20
  %i.ga = getelementptr inbounds nuw i8, ptr %.0116140, i64 40
  store float %i.fz, ptr %i.ga, align 8, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cd, i64 52
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %.0116140, i64 44
  store float %i.gc, ptr %i.gd, align 4, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !20
  store float %i.gf, ptr %.0116140, align 8, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !20
  %i.gi = getelementptr inbounds nuw i8, ptr %.0116140, i64 4
  store float %i.gh, ptr %i.gi, align 4, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.gk = load float, ptr %i.gj, align 8, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %.0116140, i64 8
  store float %i.gk, ptr %i.gl, align 8, !tbaa !20
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cd, i64 36
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %.0116140, i64 12
  store float %i.gn, ptr %i.go, align 4, !tbaa !20
  %i.gp = icmp sgt i32 %i.ci, 0
  br i1 %i.gp, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.gq = getelementptr inbounds nuw i8, ptr %.0116140, i64 144
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cd, i64 136
  %i.gs = getelementptr inbounds nuw i8, ptr %.0116140, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cd, i64 520
  %i.gu = getelementptr inbounds nuw i8, ptr %.0116140, i64 388
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cd, i64 328
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !86
  %i.gx = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.gy = sext i32 %i.gw to i64
  %i.gz = getelementptr [4 x i8], ptr %i.gx, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %.0116140, i64 364
  %wide.trip.count = zext nneg i32 %i.ci to i64
  br label %bb.f

.preheader:                                       ; preds = %bb.f, %bb.e
  %i.hc = icmp sgt i32 %i.cl, 0
  br i1 %i.hc, label %.lr.ph139, label %._crit_edge

.lr.ph139:                                        ; preds = %.preheader
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cd, i64 464 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0116140, i64 336 ; 6 uses
  %wide.trip.count149 = zext nneg i32 %i.cl to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.cl, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph139
  %3 = mul nsw i64 %indvars.iv151, -216
  %4 = add i64 %i.ca, %3
  %5 = sub i64 %i.cc, %4
  %diff.check = icmp ugt i64 %5, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count149, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load = load <4 x float>, ptr %i.hf, align 4, !tbaa !20
  %wide.load158 = load <4 x float>, ptr %i.hg, align 4, !tbaa !20
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x float> %wide.load, ptr %i.hh, align 4, !tbaa !20
  store <4 x float> %wide.load158, ptr %i.hi, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count149
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph139, %middle.block
  %indvars.iv146.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph139 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count149, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv146.prol = phi i64 [ %indvars.iv.next147.prol, %scalar.ph.prol ], [ %indvars.iv146.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv146.prol
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !20
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv146.prol
  store float %i.hl, ptr %i.hm, align 4, !tbaa !20
  %indvars.iv.next147.prol = add nuw nsw i64 %indvars.iv146.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !409

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv146.unr = phi i64 [ %indvars.iv146.ph, %scalar.ph.preheader ], [ %indvars.iv.next147.prol, %scalar.ph.prol ]
  %i.hn = sub nsw i64 %indvars.iv146.ph, %wide.trip.count149
  %i.ho = icmp ugt i64 %i.hn, -4
  br i1 %i.ho, label %._crit_edge, label %scalar.ph

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 9 uses
  %i.hp = getelementptr [32 x i8], ptr %i.cd, i64 %indvars.iv ; 4 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 152
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv ; 4 uses
  %i.hs = load float, ptr %i.hq, align 4, !tbaa !20
  store float %i.hs, ptr %i.hr, align 4, !tbaa !20
  %i.ht = getelementptr i8, ptr %i.hp, i64 156
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store float %i.hu, ptr %i.hv, align 4, !tbaa !20
  %i.hw = getelementptr i8, ptr %i.hp, i64 160
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !20
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store float %i.hx, ptr %i.hy, align 4, !tbaa !20
  %i.hz = getelementptr i8, ptr %i.hp, i64 164
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store float %i.ia, ptr %i.ib, align 4, !tbaa !20
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %indvars.iv ; 4 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %indvars.iv ; 4 uses
  %i.ie = load float, ptr %i.ic, align 4, !tbaa !20
  store float %i.ie, ptr %i.id, align 4, !tbaa !20
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ig = load float, ptr %i.if, align 4, !tbaa !20
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store float %i.ig, ptr %i.ih, align 4, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store float %i.ij, ptr %i.ik, align 4, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %i.im = load float, ptr %i.il, align 4, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store float %i.im, ptr %i.in, align 4, !tbaa !20
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv
  %i.ip = load float, ptr %i.io, align 4, !tbaa !20
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv
  store float %i.ip, ptr %i.iq, align 4, !tbaa !20
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv
  %i.is = load float, ptr %i.ir, align 4, !tbaa !20
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv
  store float %i.is, ptr %i.it, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.f, !llvm.loop !410

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.iu = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.iv = getelementptr inbounds nuw [688 x i8], ptr %i.iu, i64 %indvars.iv151
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 640
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !430
  %i.iy = load ptr, ptr %2, align 8, !tbaa !23
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 80
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = tail call noundef ptr %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ix) ; 2 uses
  %i.jc = load ptr, ptr %2, align 8, !tbaa !23
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = tail call noundef ptr %i.je(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.jb) ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0116140, i64 440
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !431
  %.not120 = icmp eq ptr %i.jf, null
  br i1 %.not120, label %bb.h, label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv146 = phi i64 [ %indvars.iv.next147.3, %scalar.ph ], [ %indvars.iv146.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv146
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !20
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv146
  store float %i.ji, ptr %i.jj, align 4, !tbaa !20
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.next147
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !20
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next147
  store float %i.jl, ptr %i.jm, align 4, !tbaa !20
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.next147.1
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !20
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next147.1
  store float %i.jo, ptr %i.jp, align 4, !tbaa !20
  %indvars.iv.next147.2 = add nuw nsw i64 %indvars.iv146, 3 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.next147.2
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !20
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.next147.2
  store float %i.jr, ptr %i.js, align 4, !tbaa !20
  %indvars.iv.next147.3 = add nuw nsw i64 %indvars.iv146, 4 ; 2 uses
  %exitcond150.not.3 = icmp eq i64 %indvars.iv.next147.3, %wide.trip.count149
  br i1 %exitcond150.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !411

bb.g:                                             ; preds = %._crit_edge
  %i.jt = load ptr, ptr %2, align 8, !tbaa !23
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  %i.jv = load ptr, ptr %i.ju, align 8
  tail call void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.jb)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.jw = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.jx = getelementptr inbounds nuw [688 x i8], ptr %i.jw, i64 %indvars.iv151
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 648
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !432
  %i.ka = load ptr, ptr %2, align 8, !tbaa !23
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 80
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = tail call noundef ptr %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.jz) ; 2 uses
  %i.ke = load ptr, ptr %2, align 8, !tbaa !23
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = tail call noundef ptr %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.kd) ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0116140, i64 448
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !433
  %.not121 = icmp eq ptr %i.kh, null
  br i1 %.not121, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.kj = load ptr, ptr %2, align 8, !tbaa !23
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 96
  %i.kl = load ptr, ptr %i.kk, align 8
  tail call void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.kd)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.km = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.kn = getelementptr inbounds nuw [688 x i8], ptr %i.km, i64 %indvars.iv151
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 544
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !98
  %i.kq = load ptr, ptr %2, align 8, !tbaa !23
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = tail call noundef ptr %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.kp)
  %i.ku = getelementptr inbounds nuw i8, ptr %.0116140, i64 456
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !434
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0116140, i64 472
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge144, label %bb.e, !llvm.loop !412

._crit_edge144:                                   ; preds = %bb.j, %bb.d
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !47
  %i.ky = load ptr, ptr %2, align 8, !tbaa !23
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bu, ptr noundef nonnull @.str, i32 noundef 1497453121, ptr noundef nonnull %i.kx)
  %.pr = load i32, ptr %i.bq, align 4, !tbaa !421
  %.not119 = icmp eq i32 %.pr, 0
  br i1 %.not119, label %.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge144
  %i.lb = load ptr, ptr %i.kw, align 8, !tbaa !47
  %i.lc = load ptr, ptr %2, align 8, !tbaa !23
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 56
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = tail call noundef ptr %i.le(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.lb)
  br label %.thread

.thread:                                          ; preds = %bb.c, %._crit_edge144, %bb.k
  %i.lg = phi ptr [ %i.lf, %bb.k ], [ null, %._crit_edge144 ], [ null, %bb.c ]
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !435
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody18saveKinematicStateEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) %0, float noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %class.btQuaternion, align 8        ; 5 uses
  %3 = alloca %class.btVector3, align 16          ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %4 = alloca %class.btTransform, align 4         ; 17 uses
  %5 = alloca %class.btTransform, align 4         ; 17 uses
  %6 = alloca %class.btTransform, align 4         ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 639
  %i.c = load i8, ptr %i.b, align 1, !tbaa !442, !range !68, !noundef !69
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = fcmp une float %1, 0.000000e+00
  %or.cond = and i1 %i.e, %i.d
end_hunk_0
