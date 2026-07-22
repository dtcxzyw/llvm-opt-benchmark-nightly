inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %.not353 = icmp slt i32 %i.dn, %i.dg
  br i1 %.not353, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.do = load i32, ptr %i.bx, align 4, !tbaa !214
  %i.dp = add nsw i32 %i.do, %i.dg
  %i.dq = icmp slt i32 %i.dn, %i.dp
  %i.dr = and i1 %i.cd, %i.dq
  %i.ds = zext i1 %i.dr to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dt = phi i8 [ 0, %bb.d ], [ %i.ds, %bb.e ]
  store i8 %i.dt, ptr %i.ce, align 1, !tbaa !258
  %i.du = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.dv = load i32, ptr %i.cg, align 4, !tbaa !215 ; 4 uses
  %.not354 = icmp slt i32 %i.du, %i.dv
  br i1 %.not354, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dw = load i32, ptr %i.ci, align 4, !tbaa !216
  %i.dx = add nsw i32 %i.dw, %i.dv
  %i.dy = icmp slt i32 %i.du, %i.dx
  %i.dz = and i1 %i.ck, %i.dy
  %i.ea = zext i1 %i.dz to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.eb = phi i8 [ 0, %bb.f ], [ %i.ea, %bb.g ]
  store i8 %i.eb, ptr %i.bu, align 2, !tbaa !258
  %i.ec = load i32, ptr %i.br, align 4, !tbaa !3  ; 2 uses
  %.not355 = icmp slt i32 %i.ec, %i.dv
  br i1 %.not355, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = load i32, ptr %i.ci, align 4, !tbaa !216
  %i.ee = add nsw i32 %i.ed, %i.dv
  %i.ef = icmp slt i32 %i.ec, %i.ee
  %i.eg = and i1 %i.co, %i.ef
  %i.eh = zext i1 %i.eg to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ei = phi i8 [ 0, %bb.h ], [ %i.eh, %bb.i ]
  store i8 %i.ei, ptr %i.cp, align 1, !tbaa !258
  %i.ej = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.ek = load i32, ptr %i.cr, align 4, !tbaa !217 ; 4 uses
  %.not356 = icmp slt i32 %i.ej, %i.ek
  br i1 %.not356, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.el = load i32, ptr %i.ct, align 4, !tbaa !218
  %i.em = add nsw i32 %i.el, %i.ek
  %i.en = icmp slt i32 %i.ej, %i.em
  %i.eo = and i1 %i.cv, %i.en
  %i.ep = zext i1 %i.eo to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eq = phi i8 [ 0, %bb.j ], [ %i.ep, %bb.k ]
  store i8 %i.eq, ptr %i.bv, align 4, !tbaa !258
  %i.er = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %.not357 = icmp slt i32 %i.er, %i.ek
  br i1 %.not357, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.es = load i32, ptr %i.ct, align 4, !tbaa !218
  %i.et = add nsw i32 %i.es, %i.ek
  %i.eu = icmp slt i32 %i.er, %i.et
  %i.ev = and i1 %i.cz, %i.eu
  %i.ew = zext i1 %i.ev to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ex = phi i8 [ 0, %bb.l ], [ %i.ew, %bb.m ]
  store i8 %i.ex, ptr %i.da, align 1, !tbaa !258
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a
  %i.ey = load i64, ptr %16, align 8              ; 8 uses
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = lshr i64 %i.ey, 32
  %i.fb = trunc nuw i64 %i.fa to i32
  %i.fc = trunc i64 %i.ey to i32
  %i.fd = lshr i32 %i.fc, 16
  %i.fe = trunc i64 %i.ey to i32
  %i.ff = trunc i64 %i.ey to i32
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = trunc i64 %i.ey to i32
  %i.fi = lshr i32 %i.fh, 24                      ; 2 uses
  %i.fj = lshr i64 %i.ey, 40
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  br i1 %i.ez, label %bb.iy, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fl = icmp sgt i32 %6, %7
  br i1 %i.fl, label %bb.q, label %.loopexit555

bb.q:                                             ; preds = %bb.p
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !173 ; 2 uses
  %i.fo = fcmp une float %i.fn, 0.000000e+00
  br i1 %i.fo, label %.lr.ph.preheader, label %.loopexit555

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fp = and i32 %i.fb, 255                      ; 2 uses
  %i.fq = and i32 %i.fd, 255                      ; 2 uses
  %i.fr = mul nuw nsw i32 %i.fq, %i.fp            ; 2 uses
  %i.fs = and i32 %i.fe, 255                      ; 4 uses
  %i.ft = mul nuw nsw i32 %i.fr, %i.fs
  %i.fu = uitofp nneg i32 %i.ft to float
  %i.fv = and i32 %i.fg, 255                      ; 4 uses
  %i.fw = mul nuw nsw i32 %i.fr, %i.fv
  %i.fx = uitofp nneg i32 %i.fw to float
  %i.fy = mul nuw nsw i32 %i.fi, %i.fp            ; 2 uses
  %i.fz = mul nuw nsw i32 %i.fy, %i.fs
  %i.ga = uitofp nneg i32 %i.fz to float
  %i.gb = mul nuw nsw i32 %i.fy, %i.fv
  %i.gc = uitofp nneg i32 %i.gb to float
  %i.gd = and i32 %i.fk, 255                      ; 2 uses
  %i.ge = mul nuw nsw i32 %i.gd, %i.fq            ; 2 uses
  %i.gf = mul nuw nsw i32 %i.ge, %i.fs
  %i.gg = uitofp nneg i32 %i.gf to float
  %i.gh = mul nuw nsw i32 %i.ge, %i.fv
  %i.gi = uitofp nneg i32 %i.gh to float
  %i.gj = mul nuw nsw i32 %i.gd, %i.fi            ; 2 uses
  %i.gk = mul nuw nsw i32 %i.gj, %i.fs
  %i.gl = uitofp nneg i32 %i.gk to float
  %i.gm = mul nuw nsw i32 %i.gj, %i.fv
  %i.gn = uitofp nneg i32 %i.gm to float
  %i.go = fsub float 1.000000e+00, %i.as          ; 4 uses
  %i.gp = fsub float 1.000000e+00, %i.av          ; 2 uses
  %i.gq = fsub float 1.000000e+00, %i.ay
  %i.gr = fmul float %i.as, %i.fx
  %i.gs = call float @llvm.fmuladd.f32(float %i.fu, float %i.go, float %i.gr)
  %i.gt = fmul float %i.as, %i.gc
  %i.gu = call float @llvm.fmuladd.f32(float %i.ga, float %i.go, float %i.gt)
  %i.gv = fmul float %i.av, %i.gu
  %i.gw = call float @llvm.fmuladd.f32(float %i.gp, float %i.gs, float %i.gv)
  %i.gx = fmul float %i.as, %i.gi
  %i.gy = call float @llvm.fmuladd.f32(float %i.gg, float %i.go, float %i.gx)
  %i.gz = fmul float %i.as, %i.gn
  %i.ha = call float @llvm.fmuladd.f32(float %i.gl, float %i.go, float %i.gz)
  %i.hb = fmul float %i.av, %i.ha
  %i.hc = call float @llvm.fmuladd.f32(float %i.gp, float %i.gy, float %i.hb)
  %i.hd = fmul float %i.ay, %i.hc
  %i.he = call noundef float @llvm.fmuladd.f32(float %i.gq, float %i.gw, float %i.hd)
  %i.hf = fmul float %8, %i.fn
  %i.hg = fmul float %i.hf, %i.he                 ; 2 uses
  %i.hh = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 2 uses
  %i.hi = sub nsw i64 %wide.trip.count, %i.hh     ; 3 uses
  %min.iters.check = icmp ult i64 %i.hi, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1046, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hi, -8                      ; 3 uses
  %i.hj = add nsw i64 %n.vec, %i.hh
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.hh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !156
  %wide.load707 = load <4 x float>, ptr %i.hk, align 4, !tbaa !156
  %i.hl = fadd <4 x float> %broadcast.splat, %wide.load
  %i.hm = fadd <4 x float> %broadcast.splat, %wide.load707
  store <4 x float> %i.hl, ptr %gep, align 4, !tbaa !156
  store <4 x float> %i.hm, ptr %i.hk, align 4, !tbaa !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hi, %n.vec
  br i1 %cmp.n, label %.loopexit555, label %.lr.ph.preheader1046

.lr.ph.preheader1046:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.hh, %.lr.ph.preheader ], [ %i.hj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1046, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1046 ] ; 2 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !156
  %i.hq = fadd float %i.hg, %i.hp
  store float %i.hq, ptr %i.ho, align 4, !tbaa !156
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit555, label %.lr.ph, !llvm.loop !260

.loopexit555:                                     ; preds = %.lr.ph, %middle.block, %bb.q, %bb.p
  %i.hr = icmp slt i32 %7, 0
  br i1 %i.hr, label %bb.iy, label %bb.r

bb.r:                                             ; preds = %.loopexit555
  %i.hs = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.hu = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 4 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !222
  %i.hw = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %17, i8 0, i64 64, i1 false), !tbaa !235
  %i.hy = add nsw i32 %i.ht, -1
  %i.hz = add nsw i32 %i.hv, -1
  %i.ia = add nsw i32 %i.hx, -1
  %i.ib = load i32, ptr %i.b, align 4, !tbaa !3   ; 3 uses
  %i.ic = load i32, ptr %i.r, align 4, !tbaa !213
  %i.id = sub nsw i32 %i.ib, %i.ic
  %21 = load i32, ptr %i.hs, align 4, !tbaa !221  ; 2 uses
  %i.ie = srem i32 %i.id, %21                     ; 3 uses
  %i.if = load i32, ptr %i.c, align 4, !tbaa !3   ; 3 uses
  %i.ig = load i32, ptr %i.cg, align 4, !tbaa !215
  %i.ih = sub nsw i32 %i.if, %i.ig
  %22 = load i32, ptr %i.hu, align 4, !tbaa !222  ; 2 uses
  %i.ii = srem i32 %i.ih, %22                     ; 3 uses
  %i.ij = load i32, ptr %i.d, align 4, !tbaa !3   ; 3 uses
  %i.ik = load i32, ptr %i.cr, align 4, !tbaa !217
  %i.il = sub nsw i32 %i.ij, %i.ik
  %23 = load i32, ptr %i.hw, align 4, !tbaa !223
  %i.im = srem i32 %i.il, %23                     ; 3 uses
  %i.in = icmp ne i32 %i.ie, %i.hy
  %i.io = add nsw i32 %i.ib, 1
  %i.ip = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.iq = icmp eq i32 %i.io, %i.ip
  %i.ir = and i1 %i.in, %i.iq
  %i.is = icmp ne i32 %i.ii, %i.hz
  %i.it = add nsw i32 %i.if, 1
  %i.iu = load i32, ptr %i.br, align 4, !tbaa !3
  %i.iv = icmp eq i32 %i.it, %i.iu
  %i.iw = and i1 %i.is, %i.iv
  %i.ix = icmp ne i32 %i.im, %i.ia
  %i.iy = add nsw i32 %i.ij, 1
  %i.iz = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.ja = icmp eq i32 %i.iy, %i.iz
  %i.jb = and i1 %i.ix, %i.ja
  %i.jc = and i1 %i.ir, %i.iw
  %i.jd = and i1 %i.jc, %i.jb
  %i.je = load i32, ptr %i.f, align 4, !tbaa !89  ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.jh = getelementptr inbounds nuw [128 x i8], ptr %i.jg, i64 %i.jf ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !261
  %i.jk = zext i32 %i.jj to i64                   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 36
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !262
  %i.jn = zext i32 %i.jm to i64                   ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !219 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !220
  %i.js = icmp sgt i32 %i.jp, %i.jr
  br i1 %i.js, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jt = load i32, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.ju = add nsw i32 %i.jt, %7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0335 = phi i32 [ %i.ju, %bb.s ], [ %i.jp, %bb.r ] ; 2 uses
  %.0334 = phi i32 [ %i.jt, %bb.s ], [ 0, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !164
  store i32 0, ptr %18, align 8, !tbaa !224
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  store i32 0, ptr %i.jx, align 4, !tbaa !226
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 0, ptr %i.jy, align 8, !tbaa !227
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  store i32 %i.je, ptr %i.jz, align 4, !tbaa !228
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store i32 %2, ptr %i.ka, align 8, !tbaa !229
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 3 uses
  %i.kc = trunc i32 %.0334 to i16
  store i16 %i.kc, ptr %i.kb, align 4, !tbaa !230
  %i.kd = getelementptr inbounds nuw i8, ptr %18, i64 22 ; 4 uses
  %i.ke = trunc i32 %.0335 to i16
  store i16 %i.ke, ptr %i.kd, align 2, !tbaa !231
  %i.kf = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store i32 %i.jw, ptr %i.kf, align 8, !tbaa !232
  %i.kg = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 0, ptr %i.kg, align 4, !tbaa !233
  %i.kh = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store ptr %3, ptr %i.kh, align 8, !tbaa !234
  %i.ki = icmp slt i32 %.0335, %.0334
  br i1 %i.ki, label %bb.u, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.u:                                             ; preds = %bb.t
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jh, i64 120
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !98
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 60
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !153
  %i.kn = trunc i32 %i.km to i16
  store i16 %i.kn, ptr %i.kd, align 2, !tbaa !231
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.u, %bb.t
  %i.ko = load i32, ptr %5, align 8, !tbaa !154
  %sext = shl i32 %.0334, 16
  %i.kp = ashr exact i32 %sext, 16
  %i.kq = sub nsw i32 %i.ko, %i.kp                ; 2 uses
  %i.kr = icmp eq i64 %i.ey, 1103823438081
  %or.cond = and i1 %i.kr, %i.jd
  br i1 %or.cond, label %bb.v, label %.preheader554

.preheader554:                                    ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.lf = sext i32 %i.kq to i64
  br label %.preheader553

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.lg = sub nsw i32 %i.ib, %i.ie
  %i.lh = sub nsw i32 %i.if, %i.ii
  %i.li = sub nsw i32 %i.ij, %i.im
  store i32 %i.lg, ptr %18, align 8, !tbaa !224
  store i32 %i.lh, ptr %i.jx, align 4, !tbaa !226
  store i32 %i.li, ptr %i.jy, align 8, !tbaa !227
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !10
  %i.ll = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.lk, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %4, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit unwind label %bb.aa

_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit: ; preds = %bb.v
  br i1 %i.ll, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.lm = load ptr, ptr %i.lj, align 8, !tbaa !10
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 64 dereferenceable(25240) %i.lm, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ln = load ptr, ptr %19, align 8, !tbaa !189  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !160
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ad

bb.z:                                             ; preds = %bb.bu
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.aa:                                            ; preds = %bb.v
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ab:                                            ; preds = %bb.w
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

bb.ac:                                            ; preds = %bb.x
  %i.lv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lw = load ptr, ptr %19, align 8, !tbaa !189  ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %bb.ac
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !160
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374, %bb.ab
  %.pn363 = phi { ptr, i32 } [ %i.lu, %bb.ab ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374 ], [ %i.lv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ih

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !235 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 76
  %i.me = load i8, ptr %i.md, align 4, !tbaa !263, !range !84, !noundef !85
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.mg = load i32, ptr %i.hu, align 4, !tbaa !222 ; 2 uses
  %i.mh = load i32, ptr %i.hs, align 4, !tbaa !221
  %i.mi = load i32, ptr %i.jo, align 4, !tbaa !219
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !95
  %i.ml = mul nsw i32 %i.mg, %i.im
  %i.mm = sext i32 %i.ml to i64
  %i.mn = sext i32 %i.ii to i64
  %i.mo = add nsw i64 %i.mm, %i.mn
  %i.mp = sext i32 %i.mh to i64                   ; 2 uses
  %i.mq = mul nsw i64 %i.mo, %i.mp
  %i.mr = sext i32 %i.ie to i64
  %i.ms = add nsw i64 %i.mq, %i.mr
  %i.mt = sext i32 %i.mi to i64
  %i.mu = mul i64 %i.ms, %i.mt
  %i.mv = sext i32 %i.kq to i64
  %i.mw = add i64 %i.mu, %i.mv
  %i.mx = mul i64 %i.mw, %i.jk
  %i.my = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mx ; 4 uses
  store ptr %i.my, ptr %i.e, align 16, !tbaa !95
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.jn
  %i.na = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !95
  %i.nb = mul nsw i64 %i.mp, %i.jn                ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.nc, ptr %i.nd, align 16, !tbaa !95
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.jn
  %i.nf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !95
  %i.ng = sext i32 %i.mg to i64
  %i.nh = mul i64 %i.nb, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nh ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ni, ptr %i.nj, align 16, !tbaa !95
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.jn
  %i.nl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !95
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nb ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.nm, ptr %i.nn, align 16, !tbaa !95
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.jn
  %i.np = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.no, ptr %i.np, align 8, !tbaa !95
  br label %.critedge373

.preheader553:                                    ; preds = %.preheader554, %.critedge371.thread544
  %i.nq = phi i32 [ %22, %.preheader554 ], [ %i.uj, %.critedge371.thread544 ]
  %i.nr = phi i32 [ %21, %.preheader554 ], [ %i.uk, %.critedge371.thread544 ]
  %.not585 = phi i1 [ true, %.preheader554 ], [ false, %.critedge371.thread544 ]
  %indvars.iv594.sroa.phi = phi ptr [ %17, %.preheader554 ], [ %indvars.iv594.sroa.gep1047, %.critedge371.thread544 ]
  %indvars.iv594.sroa.phi1048 = phi ptr [ %i.e, %.preheader554 ], [ %indvars.iv594.sroa.gep1050, %.critedge371.thread544 ]
  %indvars.iv594.sroa.phi1052 = phi ptr [ %i.d, %.preheader554 ], [ %indvars.iv594.sroa.gep1054, %.critedge371.thread544 ]
  %indvars.iv594 = phi i64 [ 0, %.preheader554 ], [ 1, %.critedge371.thread544 ]
  %.0314581 = phi i1 [ true, %.preheader554 ], [ %.3317, %.critedge371.thread544 ]
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bv, i64 %indvars.iv594
  br label %.preheader

.preheader:                                       ; preds = %.preheader553, %bb.bt
  %i.nt = phi i32 [ %i.nq, %.preheader553 ], [ %i.uj, %bb.bt ]
  %i.nu = phi i32 [ %i.nr, %.preheader553 ], [ %i.uk, %bb.bt ]
  %.not584 = phi i1 [ true, %.preheader553 ], [ false, %bb.bt ]
  %indvars.iv592.sroa.phi = phi ptr [ %i.c, %.preheader553 ], [ %indvars.iv592.sroa.gep1055, %bb.bt ]
  %indvars.iv592 = phi i64 [ 0, %.preheader553 ], [ 1, %bb.bt ] ; 3 uses
  %.1315579 = phi i1 [ %.0314581, %.preheader553 ], [ %.3317, %bb.bt ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv592
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %indvars.iv594.sroa.phi1048, i64 %indvars.iv592
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %indvars.iv594.sroa.phi, i64 %indvars.iv592
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.bs
  %i.ny = phi i32 [ %i.nt, %.preheader ], [ %i.uj, %bb.bs ] ; 4 uses
  %i.nz = phi i32 [ %i.nu, %.preheader ], [ %i.uk, %bb.bs ] ; 4 uses
  %.not583 = phi i1 [ true, %.preheader ], [ false, %bb.bs ]
  %indvars.iv590.sroa.phi = phi ptr [ %16, %.preheader ], [ %indvars.iv590.sroa.gep1051, %bb.bs ]
  %indvars.iv590.sroa.phi1056 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv590.sroa.gep1058, %bb.bs ]
  %indvars.iv590 = phi i64 [ 0, %.preheader ], [ 1, %bb.bs ] ; 2 uses
  %.2316577 = phi i1 [ %.1315579, %.preheader ], [ %.3317, %bb.bs ] ; 4 uses
  %i.oa = load i8, ptr %indvars.iv590.sroa.phi, align 1, !tbaa !258, !range !84, !noundef !85
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.ag, label %bb.bs

bb.ag:                                            ; preds = %bb.af
  %i.oc = load i8, ptr %i.nv, align 1, !tbaa !258, !range !84, !noundef !85
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %bb.ah, label %bb.bs

bb.ah:                                            ; preds = %bb.ag
  %i.oe = load i8, ptr %i.ns, align 1, !tbaa !258, !range !84, !noundef !85
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.ai, label %bb.bs

bb.ai:                                            ; preds = %bb.ah
  %i.og = load i32, ptr %indvars.iv590.sroa.phi1056, align 4, !tbaa !3 ; 2 uses
  %i.oh = load i32, ptr %i.r, align 4, !tbaa !213
  %i.oi = sub nsw i32 %i.og, %i.oh
  %i.oj = srem i32 %i.oi, %i.nz                   ; 2 uses
  %i.ok = load i32, ptr %indvars.iv592.sroa.phi, align 4, !tbaa !3 ; 2 uses
  %i.ol = load i32, ptr %i.cg, align 4, !tbaa !215
  %i.om = sub nsw i32 %i.ok, %i.ol
  %i.on = srem i32 %i.om, %i.ny                   ; 2 uses
  %i.oo = load i32, ptr %indvars.iv594.sroa.phi1052, align 4, !tbaa !3 ; 2 uses
  %i.op = load i32, ptr %i.cr, align 4, !tbaa !217
  %i.oq = sub nsw i32 %i.oo, %i.op
  %i.or = load i32, ptr %i.hw, align 4, !tbaa !223
  %i.os = srem i32 %i.oq, %i.or                   ; 2 uses
  %i.ot = sub nsw i32 %i.og, %i.oj                ; 3 uses
  %i.ou = sub nsw i32 %i.ok, %i.on                ; 3 uses
  %i.ov = sub nsw i32 %i.oo, %i.os                ; 3 uses
  store i32 %i.ot, ptr %18, align 8, !tbaa !224
  store i32 %i.ou, ptr %i.jx, align 4, !tbaa !226
  store i32 %i.ov, ptr %i.jy, align 8, !tbaa !227
  %i.ow = load ptr, ptr %i.ks, align 8, !tbaa !10
  %i.ox = load i64, ptr %i.kt, align 8, !tbaa !271
  %i.oy = add nsw i64 %i.ox, 1
  store i64 %i.oy, ptr %i.kt, align 8, !tbaa !271
  %i.oz = load ptr, ptr %i.ku, align 8, !tbaa !235 ; 12 uses
  %.not.i408 = icmp eq ptr %i.oz, null
  br i1 %.not.i408, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !224
  %i.pc = icmp eq i32 %i.pb, %i.ot
  br i1 %i.pc, label %bb.ak, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !226
  %i.pf = icmp eq i32 %i.pe, %i.ou
  br i1 %i.pf, label %bb.al, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !227
  %i.pi = icmp eq i32 %i.ph, %i.ov
  br i1 %i.pi, label %bb.am, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 20
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !228
  %i.pl = load i32, ptr %i.jz, align 4, !tbaa !228
  %i.pm = icmp eq i32 %i.pk, %i.pl
  br i1 %i.pm, label %bb.an, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !229
  %i.pp = load i32, ptr %i.ka, align 8, !tbaa !229
  %i.pq = icmp eq i32 %i.po, %i.pp
  br i1 %i.pq, label %bb.ao, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !234
  %i.pt = load ptr, ptr %i.kh, align 8, !tbaa !234
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %bb.ap, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oz, i64 28
  %i.pw = load i16, ptr %i.pv, align 4, !tbaa !230
  %i.px = load i16, ptr %i.kb, align 4, !tbaa !230
  %i.py = icmp eq i16 %i.pw, %i.px
  br i1 %i.py, label %bb.aq, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oz, i64 30
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !231
  %i.qb = load i16, ptr %i.kd, align 2, !tbaa !231
  %i.qc = icmp eq i16 %i.qa, %i.qb
  br i1 %i.qc, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i:     ; preds = %bb.aq
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !232
  %i.qf = load i32, ptr %i.kf, align 8, !tbaa !232
  %i.qg = icmp eq i32 %i.qe, %i.qf
  br i1 %i.qg, label %bb.ar, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i
  br i1 %.2316577, label %bb.as, label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit377.thread

bb.as:                                            ; preds = %bb.ar
  %i.qh = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  store atomic i32 1, ptr %i.qh seq_cst, align 8
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit377.thread

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.qi = load ptr, ptr %i.kv, align 8, !tbaa !235 ; 12 uses
  store ptr %i.qi, ptr %i.ku, align 8, !tbaa !235
  store ptr %i.oz, ptr %i.kv, align 8, !tbaa !235
  %.not18.i = icmp eq ptr %i.qi, null
  br i1 %.not18.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i, label %bb.at

bb.at:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !224
  %i.ql = icmp eq i32 %i.qk, %i.ot
  br i1 %i.ql, label %bb.au, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.au:                                            ; preds = %bb.at
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !226
  %i.qo = icmp eq i32 %i.qn, %i.ou
  br i1 %i.qo, label %bb.av, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.av:                                            ; preds = %bb.au
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !227
  %i.qr = icmp eq i32 %i.qq, %i.ov
  br i1 %i.qr, label %bb.aw, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qi, i64 20
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !228
  %i.qu = load i32, ptr %i.jz, align 4, !tbaa !228
  %i.qv = icmp eq i32 %i.qt, %i.qu
  br i1 %i.qv, label %bb.ax, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !229
  %i.qy = load i32, ptr %i.ka, align 8, !tbaa !229
  %i.qz = icmp eq i32 %i.qx, %i.qy
  br i1 %i.qz, label %bb.ay, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !234
  %i.rc = load ptr, ptr %i.kh, align 8, !tbaa !234
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %bb.az, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.re = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.rf = load i16, ptr %i.re, align 4, !tbaa !230
  %i.rg = load i16, ptr %i.kb, align 4, !tbaa !230
  %i.rh = icmp eq i16 %i.rf, %i.rg
  br i1 %i.rh, label %bb.ba, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qi, i64 30
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !231
  %i.rk = load i16, ptr %i.kd, align 2, !tbaa !231
  %i.rl = icmp eq i16 %i.rj, %i.rk
  br i1 %i.rl, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i:   ; preds = %bb.ba
end_hunk_0
