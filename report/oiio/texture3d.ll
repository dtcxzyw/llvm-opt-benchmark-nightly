Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dl = phi i8 [ 0, %bb.b ], [ %i.dk, %bb.c ]
  store i8 %i.dl, ptr %16, align 8, !tbaa !243
  %i.dm = load i32, ptr %i.bo, align 4, !tbaa !42 ; 2 uses
  %.not354 = icmp slt i32 %i.dm, %i.df
  br i1 %.not354, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dn = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.do = add nsw i32 %i.dn, %i.df
  %i.dp = icmp slt i32 %i.dm, %i.do
  %i.dq = and i1 %i.cc, %i.dp
  %i.dr = zext i1 %i.dq to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ds = phi i8 [ 0, %bb.d ], [ %i.dr, %bb.e ]
  store i8 %i.ds, ptr %i.cd, align 1, !tbaa !243
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.du = load i32, ptr %i.cf, align 4, !tbaa !216 ; 4 uses
  %.not355 = icmp slt i32 %i.dt, %i.du
  br i1 %.not355, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dv = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.dw = add nsw i32 %i.dv, %i.du
  %i.dx = icmp slt i32 %i.dt, %i.dw
  %i.dy = and i1 %i.cj, %i.dx
  %i.dz = zext i1 %i.dy to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ea = phi i8 [ 0, %bb.f ], [ %i.dz, %bb.g ]
  store i8 %i.ea, ptr %i.bt, align 2, !tbaa !243
  %i.eb = load i32, ptr %i.bq, align 4, !tbaa !42 ; 2 uses
  %.not356 = icmp slt i32 %i.eb, %i.du
  br i1 %.not356, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ec = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.ed = add nsw i32 %i.ec, %i.du
  %i.ee = icmp slt i32 %i.eb, %i.ed
  %i.ef = and i1 %i.cn, %i.ee
  %i.eg = zext i1 %i.ef to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = phi i8 [ 0, %bb.h ], [ %i.eg, %bb.i ]
  store i8 %i.eh, ptr %i.co, align 1, !tbaa !243
  %i.ei = load i32, ptr %i.d, align 4, !tbaa !42  ; 2 uses
  %i.ej = load i32, ptr %i.cq, align 4, !tbaa !218 ; 4 uses
  %.not357 = icmp slt i32 %i.ei, %i.ej
  br i1 %.not357, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.el = add nsw i32 %i.ek, %i.ej
  %i.em = icmp slt i32 %i.ei, %i.el
  %i.en = and i1 %i.cu, %i.em
  %i.eo = zext i1 %i.en to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ep = phi i8 [ 0, %bb.j ], [ %i.eo, %bb.k ]
  store i8 %i.ep, ptr %i.bu, align 4, !tbaa !243
  %i.eq = load i32, ptr %i.bs, align 4, !tbaa !42 ; 2 uses
  %.not358 = icmp slt i32 %i.eq, %i.ej
  br i1 %.not358, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.er = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.es = add nsw i32 %i.er, %i.ej
  %i.et = icmp slt i32 %i.eq, %i.es
  %i.eu = and i1 %i.cy, %i.et
  %i.ev = zext i1 %i.eu to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ew = phi i8 [ 0, %bb.l ], [ %i.ev, %bb.m ]
  store i8 %i.ew, ptr %i.cz, align 1, !tbaa !243
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a
  %i.ex = load i64, ptr %16, align 8              ; 8 uses
  %i.ey = icmp eq i64 %i.ex, 0
  %i.ez = lshr i64 %i.ex, 32
  %i.fa = trunc i64 %i.ex to i32
  %i.fb = trunc i64 %i.ex to i32
  %i.fc = trunc i64 %i.ex to i32
  %i.fd = lshr i32 %i.fc, 8
  %i.fe = trunc i64 %i.ex to i32
  %i.ff = lshr i64 %i.ex, 40
  %i.fg = trunc nuw i64 %i.ez to i32
  %i.fh = lshr i32 %i.fa, 16
  %i.fi = lshr i32 %i.fe, 24
  %i.fj = trunc nuw nsw i64 %i.ff to i32
  br i1 %i.ey, label %bb.iy, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = icmp sgt i32 %6, %7
  br i1 %i.fk, label %bb.q, label %.loopexit556

bb.q:                                             ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !189 ; 2 uses
  %i.fn = fcmp une float %i.fm, 0.000000e+00
  br i1 %i.fn, label %.lr.ph.preheader, label %.loopexit556

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.fo = and i32 %i.fb, 255
  %i.fp = and i32 %i.fd, 255
  %i.fq = fsub float 1.000000e+00, %i.ao
  %i.fr = fsub float 1.000000e+00, %i.ax          ; 2 uses
  %i.fs = fsub float 1.000000e+00, %i.aw
  %i.ft = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fj, i64 1
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fg, i64 2
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fh, i64 3
  %i.fx = and <4 x i32> %i.fw, <i32 -1, i32 255, i32 255, i32 255> ; 2 uses
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  %i.fz = mul nuw nsw <4 x i32> %i.fx, %i.fy      ; 2 uses
  %i.ga = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.gb = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gc = mul nuw nsw <4 x i32> %i.fz, %i.gb
  %i.gd = uitofp <4 x i32> %i.gc to <4 x float>
  %i.ge = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gg = mul nuw nsw <4 x i32> %i.fz, %i.gf
  %i.gh = uitofp <4 x i32> %i.gg to <4 x float>
  %i.gi = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul <4 x float> %i.gj, %i.gh
  %i.gl = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.gm, <4 x float> %i.gk) ; 4 uses
  %i.go = extractelement <4 x float> %i.gn, i64 0
  %i.gp = fmul float %i.ax, %i.go
  %i.gq = extractelement <4 x float> %i.gn, i64 2
  %i.gr = call float @llvm.fmuladd.f32(float %i.fr, float %i.gq, float %i.gp)
  %i.gs = extractelement <4 x float> %i.gn, i64 1
  %i.gt = fmul float %i.ax, %i.gs
  %i.gu = extractelement <4 x float> %i.gn, i64 3
  %i.gv = call float @llvm.fmuladd.f32(float %i.fr, float %i.gu, float %i.gt)
  %i.gw = fmul float %i.aw, %i.gv
  %i.gx = call noundef float @llvm.fmuladd.f32(float %i.fs, float %i.gr, float %i.gw)
  %i.gy = fmul float %8, %i.fm
  %i.gz = fmul float %i.gy, %i.gx                 ; 2 uses
  %i.ha = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 2 uses
  %i.hb = sub nsw i64 %wide.trip.count, %i.ha     ; 3 uses
  %min.iters.check = icmp ult i64 %i.hb, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1044, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hb, -8                      ; 3 uses
  %i.hc = add nsw i64 %n.vec, %i.ha
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.ha
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !184
  %wide.load709 = load <4 x float>, ptr %i.hd, align 4, !tbaa !184
  %i.he = fadd <4 x float> %broadcast.splat, %wide.load
  %i.hf = fadd <4 x float> %broadcast.splat, %wide.load709
  store <4 x float> %i.he, ptr %gep, align 4, !tbaa !184
  store <4 x float> %i.hf, ptr %i.hd, align 4, !tbaa !184
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %.loopexit556, label %.lr.ph.preheader1044

.lr.ph.preheader1044:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ha, %.lr.ph.preheader ], [ %i.hc, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1044, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1044 ] ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !184
  %i.hj = fadd float %i.gz, %i.hi
  store float %i.hj, ptr %i.hh, align 4, !tbaa !184
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit556, label %.lr.ph, !llvm.loop !454

.loopexit556:                                     ; preds = %.lr.ph, %middle.block, %bb.q, %bb.p
  %i.hk = icmp slt i32 %7, 0
  br i1 %i.hk, label %bb.iy, label %bb.r

bb.r:                                             ; preds = %.loopexit556
  %i.hl = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !222
  %i.hn = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 4 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !223
  %i.hp = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %17, i8 0, i64 64, i1 false), !tbaa !238
  %i.hr = add nsw i32 %i.hm, -1
  %i.hs = add nsw i32 %i.ho, -1
  %i.ht = add nsw i32 %i.hq, -1
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !42  ; 3 uses
  %i.hv = load i32, ptr %i.r, align 4, !tbaa !214
  %i.hw = sub nsw i32 %i.hu, %i.hv
  %21 = load i32, ptr %i.hl, align 4, !tbaa !222  ; 2 uses
  %i.hx = srem i32 %i.hw, %21                     ; 3 uses
  %i.hy = load i32, ptr %i.c, align 4, !tbaa !42  ; 3 uses
  %i.hz = load i32, ptr %i.cf, align 4, !tbaa !216
  %i.ia = sub nsw i32 %i.hy, %i.hz
  %22 = load i32, ptr %i.hn, align 4, !tbaa !223  ; 2 uses
  %i.ib = srem i32 %i.ia, %22                     ; 3 uses
  %i.ic = load i32, ptr %i.d, align 4, !tbaa !42  ; 3 uses
  %i.id = load i32, ptr %i.cq, align 4, !tbaa !218
  %i.ie = sub nsw i32 %i.ic, %i.id
  %23 = load i32, ptr %i.hp, align 4, !tbaa !224
  %i.if = srem i32 %i.ie, %23                     ; 3 uses
  %i.ig = icmp ne i32 %i.hx, %i.hr
  %i.ih = add nsw i32 %i.hu, 1
  %i.ii = load i32, ptr %i.bo, align 4, !tbaa !42
  %i.ij = icmp eq i32 %i.ih, %i.ii
  %i.ik = and i1 %i.ig, %i.ij
  %i.il = icmp ne i32 %i.ib, %i.hs
  %i.im = add nsw i32 %i.hy, 1
  %i.in = load i32, ptr %i.bq, align 4, !tbaa !42
  %i.io = icmp eq i32 %i.im, %i.in
  %i.ip = and i1 %i.il, %i.io
  %i.iq = icmp ne i32 %i.if, %i.ht
  %i.ir = add nsw i32 %i.ic, 1
  %i.is = load i32, ptr %i.bs, align 4, !tbaa !42
  %i.it = icmp eq i32 %i.ir, %i.is
  %i.iu = and i1 %i.iq, %i.it
  %i.iv = and i1 %i.ik, %i.ip
  %i.iw = and i1 %i.iv, %i.iu
  %i.ix = load i32, ptr %i.f, align 4, !tbaa !130 ; 2 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.ja = getelementptr inbounds nuw [128 x i8], ptr %i.iz, i64 %i.iy ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !500
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 36
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !501
  %i.jg = zext i32 %i.jf to i64                   ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !220 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !221
  %i.jl = icmp sgt i32 %i.ji, %i.jk
  br i1 %i.jl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jm = load i32, ptr %5, align 8, !tbaa !183   ; 2 uses
  %i.jn = add nsw i32 %i.jm, %7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0309 = phi i32 [ %i.jm, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.0308 = phi i32 [ %i.jn, %bb.s ], [ %i.ji, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !188
  store i32 0, ptr %18, align 8, !tbaa !226
  %i.jq = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  store i32 0, ptr %i.jq, align 4, !tbaa !227
  %i.jr = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 0, ptr %i.jr, align 8, !tbaa !228
  %i.js = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  store i32 %i.ix, ptr %i.js, align 4, !tbaa !229
  %i.jt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store i32 %2, ptr %i.jt, align 8, !tbaa !230
  %i.ju = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 3 uses
  %i.jv = trunc i32 %.0309 to i16
  store i16 %i.jv, ptr %i.ju, align 4, !tbaa !231
  %i.jw = getelementptr inbounds nuw i8, ptr %18, i64 22 ; 4 uses
  %i.jx = trunc i32 %.0308 to i16
  store i16 %i.jx, ptr %i.jw, align 2, !tbaa !232
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store i32 %i.jp, ptr %i.jy, align 8, !tbaa !233
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 0, ptr %i.jz, align 4, !tbaa !234
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store ptr %3, ptr %i.ka, align 8, !tbaa !235
  %i.kb = icmp slt i32 %.0308, %.0309
  br i1 %i.kb, label %bb.u, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.u:                                             ; preds = %bb.t
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ja, i64 120
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !161
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 60
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !182
  %i.kg = trunc i32 %i.kf to i16
  store i16 %i.kg, ptr %i.jw, align 2, !tbaa !232
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.u, %bb.t
  %i.kh = load i32, ptr %5, align 8, !tbaa !183
  %sext = shl i32 %.0309, 16
  %i.ki = ashr exact i32 %sext, 16
  %i.kj = sub nsw i32 %i.kh, %i.ki                ; 2 uses
  %i.kk = icmp eq i64 %i.ex, 1103823438081
  %or.cond = and i1 %i.kk, %i.iw
  br i1 %or.cond, label %bb.v, label %.preheader555

.preheader555:                                    ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ks = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ky = sext i32 %i.kj to i64
  br label %.preheader554

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.kz = sub nsw i32 %i.hu, %i.hx
  %i.la = sub nsw i32 %i.hy, %i.ib
  %i.lb = sub nsw i32 %i.ic, %i.if
  store i32 %i.kz, ptr %18, align 8, !tbaa !226
  store i32 %i.la, ptr %i.jq, align 4, !tbaa !227
  store i32 %i.lb, ptr %i.jr, align 8, !tbaa !228
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !63
  %i.le = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.ld, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %4, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit unwind label %bb.aa

_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit: ; preds = %bb.v
  br i1 %i.le, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !63
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 64 dereferenceable(25240) %i.lf, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.lg = load ptr, ptr %19, align 8, !tbaa !193  ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !187
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ad

bb.z:                                             ; preds = %bb.bu
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.aa:                                            ; preds = %bb.v
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ab:                                            ; preds = %bb.w
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

bb.ac:                                            ; preds = %bb.x
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %19, align 8, !tbaa !193  ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.ac
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !187
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375, %bb.ab
  %.pn364 = phi { ptr, i32 } [ %i.ln, %bb.ab ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %i.lo, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ih

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !238 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 76
  %i.lx = load i8, ptr %i.lw, align 4, !tbaa !509, !range !120, !noundef !121
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.lz = load i32, ptr %i.hn, align 4, !tbaa !223 ; 2 uses
  %i.ma = load i32, ptr %i.hl, align 4, !tbaa !222
  %i.mb = load i32, ptr %i.jh, align 4, !tbaa !220
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !131
  %i.me = mul nsw i32 %i.lz, %i.if
  %i.mf = sext i32 %i.me to i64
  %i.mg = sext i32 %i.ib to i64
  %i.mh = add nsw i64 %i.mf, %i.mg
  %i.mi = sext i32 %i.ma to i64                   ; 2 uses
  %i.mj = mul nsw i64 %i.mh, %i.mi
  %i.mk = sext i32 %i.hx to i64
  %i.ml = add nsw i64 %i.mj, %i.mk
  %i.mm = sext i32 %i.mb to i64
  %i.mn = mul i64 %i.ml, %i.mm
  %i.mo = sext i32 %i.kj to i64
  %i.mp = add i64 %i.mn, %i.mo
  %i.mq = mul i64 %i.mp, %i.jd
  %i.mr = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mq ; 4 uses
  store ptr %i.mr, ptr %i.e, align 16, !tbaa !131
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.jg
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !131
  %i.mu = mul nsw i64 %i.mi, %i.jg                ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.mv, ptr %i.mw, align 16, !tbaa !131
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.jg
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !131
  %i.mz = sext i32 %i.lz to i64
  %i.na = mul i64 %i.mu, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.na ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.nb, ptr %i.nc, align 16, !tbaa !131
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.jg
  %i.ne = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !131
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mu ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.nf, ptr %i.ng, align 16, !tbaa !131
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.jg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !131
  br label %.critedge374

.preheader554:                                    ; preds = %.preheader555, %.critedge372.thread545
  %i.nj = phi i32 [ %22, %.preheader555 ], [ %i.uc, %.critedge372.thread545 ]
  %i.nk = phi i32 [ %21, %.preheader555 ], [ %i.ud, %.critedge372.thread545 ]
  %.not586 = phi i1 [ true, %.preheader555 ], [ false, %.critedge372.thread545 ]
  %indvars.iv595.sroa.phi = phi ptr [ %17, %.preheader555 ], [ %indvars.iv595.sroa.gep1045, %.critedge372.thread545 ]
  %indvars.iv595.sroa.phi1046 = phi ptr [ %i.e, %.preheader555 ], [ %indvars.iv595.sroa.gep1048, %.critedge372.thread545 ]
  %indvars.iv595.sroa.phi1050 = phi ptr [ %i.d, %.preheader555 ], [ %indvars.iv595.sroa.gep1052, %.critedge372.thread545 ]
  %indvars.iv595 = phi i64 [ 0, %.preheader555 ], [ 1, %.critedge372.thread545 ]
  %.0307582 = phi i1 [ true, %.preheader555 ], [ %.3, %.critedge372.thread545 ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv595
  br label %.preheader

.preheader:                                       ; preds = %.preheader554, %bb.bt
  %i.nm = phi i32 [ %i.nj, %.preheader554 ], [ %i.uc, %bb.bt ]
  %i.nn = phi i32 [ %i.nk, %.preheader554 ], [ %i.ud, %bb.bt ]
  %.not585 = phi i1 [ true, %.preheader554 ], [ false, %bb.bt ]
  %indvars.iv593.sroa.phi = phi ptr [ %i.c, %.preheader554 ], [ %indvars.iv593.sroa.gep1053, %bb.bt ]
  %indvars.iv593 = phi i64 [ 0, %.preheader554 ], [ 1, %bb.bt ] ; 3 uses
  %.1580 = phi i1 [ %.0307582, %.preheader554 ], [ %.3, %bb.bt ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv593
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %indvars.iv595.sroa.phi1046, i64 %indvars.iv593
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %indvars.iv595.sroa.phi, i64 %indvars.iv593
  br label %bb.af

bb.af:                                            ; preds = %.preheader, %bb.bs
  %i.nr = phi i32 [ %i.nm, %.preheader ], [ %i.uc, %bb.bs ] ; 4 uses
  %i.ns = phi i32 [ %i.nn, %.preheader ], [ %i.ud, %bb.bs ] ; 4 uses
  %.not584 = phi i1 [ true, %.preheader ], [ false, %bb.bs ]
  %indvars.iv591.sroa.phi = phi ptr [ %16, %.preheader ], [ %indvars.iv591.sroa.gep1049, %bb.bs ]
  %indvars.iv591.sroa.phi1054 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv591.sroa.gep1056, %bb.bs ]
  %indvars.iv591 = phi i64 [ 0, %.preheader ], [ 1, %bb.bs ] ; 2 uses
  %.2578 = phi i1 [ %.1580, %.preheader ], [ %.3, %bb.bs ] ; 4 uses
  %i.nt = load i8, ptr %indvars.iv591.sroa.phi, align 1, !tbaa !243, !range !120, !noundef !121
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.ag, label %bb.bs

bb.ag:                                            ; preds = %bb.af
  %i.nv = load i8, ptr %i.no, align 1, !tbaa !243, !range !120, !noundef !121
  %i.nw = trunc nuw i8 %i.nv to i1
  br i1 %i.nw, label %bb.ah, label %bb.bs

bb.ah:                                            ; preds = %bb.ag
  %i.nx = load i8, ptr %i.nl, align 1, !tbaa !243, !range !120, !noundef !121
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.ai, label %bb.bs

bb.ai:                                            ; preds = %bb.ah
  %i.nz = load i32, ptr %indvars.iv591.sroa.phi1054, align 4, !tbaa !42 ; 2 uses
  %i.oa = load i32, ptr %i.r, align 4, !tbaa !214
  %i.ob = sub nsw i32 %i.nz, %i.oa
  %i.oc = srem i32 %i.ob, %i.ns                   ; 2 uses
  %i.od = load i32, ptr %indvars.iv593.sroa.phi, align 4, !tbaa !42 ; 2 uses
  %i.oe = load i32, ptr %i.cf, align 4, !tbaa !216
  %i.of = sub nsw i32 %i.od, %i.oe
  %i.og = srem i32 %i.of, %i.nr                   ; 2 uses
  %i.oh = load i32, ptr %indvars.iv595.sroa.phi1050, align 4, !tbaa !42 ; 2 uses
  %i.oi = load i32, ptr %i.cq, align 4, !tbaa !218
  %i.oj = sub nsw i32 %i.oh, %i.oi
  %i.ok = load i32, ptr %i.hp, align 4, !tbaa !224
  %i.ol = srem i32 %i.oj, %i.ok                   ; 2 uses
  %i.om = sub nsw i32 %i.nz, %i.oc                ; 3 uses
  %i.on = sub nsw i32 %i.od, %i.og                ; 3 uses
  %i.oo = sub nsw i32 %i.oh, %i.ol                ; 3 uses
  store i32 %i.om, ptr %18, align 8, !tbaa !226
  store i32 %i.on, ptr %i.jq, align 4, !tbaa !227
  store i32 %i.oo, ptr %i.jr, align 8, !tbaa !228
  %i.op = load ptr, ptr %i.kl, align 8, !tbaa !63
  %i.oq = load i64, ptr %i.km, align 8, !tbaa !254
  %i.or = add nsw i64 %i.oq, 1
  store i64 %i.or, ptr %i.km, align 8, !tbaa !254
  %i.os = load ptr, ptr %i.kn, align 8, !tbaa !238 ; 12 uses
  %.not.i409 = icmp eq ptr %i.os, null
  br i1 %.not.i409, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !226
  %i.ov = icmp eq i32 %i.ou, %i.om
  br i1 %i.ov, label %bb.ak, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !227
  %i.oy = icmp eq i32 %i.ox, %i.on
  br i1 %i.oy, label %bb.al, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !228
  %i.pb = icmp eq i32 %i.pa, %i.oo
  br i1 %i.pb, label %bb.am, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 20
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !229
  %i.pe = load i32, ptr %i.js, align 4, !tbaa !229
  %i.pf = icmp eq i32 %i.pd, %i.pe
  br i1 %i.pf, label %bb.an, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.pg = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !230
  %i.pi = load i32, ptr %i.jt, align 8, !tbaa !230
  %i.pj = icmp eq i32 %i.ph, %i.pi
  br i1 %i.pj, label %bb.ao, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.pk = getelementptr inbounds nuw i8, ptr %i.os, i64 40
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !235
  %i.pm = load ptr, ptr %i.ka, align 8, !tbaa !235
  %i.pn = icmp eq ptr %i.pl, %i.pm
  br i1 %i.pn, label %bb.ap, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.po = getelementptr inbounds nuw i8, ptr %i.os, i64 28
  %i.pp = load i16, ptr %i.po, align 4, !tbaa !231
  %i.pq = load i16, ptr %i.ju, align 4, !tbaa !231
  %i.pr = icmp eq i16 %i.pp, %i.pq
  br i1 %i.pr, label %bb.aq, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.ps = getelementptr inbounds nuw i8, ptr %i.os, i64 30
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !232
  %i.pu = load i16, ptr %i.jw, align 2, !tbaa !232
  %i.pv = icmp eq i16 %i.pt, %i.pu
  br i1 %i.pv, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i:     ; preds = %bb.aq
  %i.pw = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !233
  %i.py = load i32, ptr %i.jy, align 8, !tbaa !233
  %i.pz = icmp eq i32 %i.px, %i.py
  br i1 %i.pz, label %bb.ar, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i

bb.ar:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i
  br i1 %.2578, label %bb.as, label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378.thread

bb.as:                                            ; preds = %bb.ar
  %i.qa = getelementptr inbounds nuw i8, ptr %i.os, i64 80
  store atomic i32 1, ptr %i.qa seq_cst, align 8
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit378.thread

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i: ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.i, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.qb = load ptr, ptr %i.ko, align 8, !tbaa !238 ; 12 uses
  store ptr %i.qb, ptr %i.kn, align 8, !tbaa !238
  store ptr %i.os, ptr %i.ko, align 8, !tbaa !238
  %.not18.i = icmp eq ptr %i.qb, null
  br i1 %.not18.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i, label %bb.at

bb.at:                                            ; preds = %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit.thread.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !226
  %i.qe = icmp eq i32 %i.qd, %i.om
  br i1 %i.qe, label %bb.au, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.au:                                            ; preds = %bb.at
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 12
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !227
  %i.qh = icmp eq i32 %i.qg, %i.on
  br i1 %i.qh, label %bb.av, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.av:                                            ; preds = %bb.au
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !228
  %i.qk = icmp eq i32 %i.qj, %i.oo
  br i1 %i.qk, label %bb.aw, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qb, i64 20
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !229
  %i.qn = load i32, ptr %i.js, align 4, !tbaa !229
  %i.qo = icmp eq i32 %i.qm, %i.qn
  br i1 %i.qo, label %bb.ax, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !230
  %i.qr = load i32, ptr %i.jt, align 8, !tbaa !230
  %i.qs = icmp eq i32 %i.qq, %i.qr
  br i1 %i.qs, label %bb.ay, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ay:                                            ; preds = %bb.ax
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !235
  %i.qv = load ptr, ptr %i.ka, align 8, !tbaa !235
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %bb.az, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.qy = load i16, ptr %i.qx, align 4, !tbaa !231
  %i.qz = load i16, ptr %i.ju, align 4, !tbaa !231
  %i.ra = icmp eq i16 %i.qy, %i.qz
  br i1 %i.ra, label %bb.ba, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qb, i64 30
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !232
  %i.rd = load i16, ptr %i.jw, align 2, !tbaa !232
  %i.re = icmp eq i16 %i.rc, %i.rd
  br i1 %i.re, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i, label %_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.thread.i

_ZNK11OpenImageIO4v3_16TileIDeqERKS1_.exit17.i:   ; preds = %bb.ba
end_hunk_0
