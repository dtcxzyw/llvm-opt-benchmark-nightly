Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !147
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !212 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !150
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !212 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 %i.an, ptr %i.b, align 4, !tbaa !3
  %i.bn = add nsw i32 %i.an, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.as, ptr %i.c, align 4, !tbaa !3
  %i.bp = add nsw i32 %i.as, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.au, ptr %i.d, align 4, !tbaa !3
  %i.br = add nsw i32 %i.au, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 0, ptr %16, align 8, !tbaa !160
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 2 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  %i.bv = load i32, ptr %i.r, align 4, !tbaa !213
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !214
  %i.by = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.bv, i32 noundef %i.bx) ; 2 uses
  %i.bz = zext i1 %i.by to i8
  store i8 %i.bz, ptr %16, align 8, !tbaa !258
  %i.ca = load i32, ptr %i.r, align 4, !tbaa !213
  %i.cb = load i32, ptr %i.bw, align 4, !tbaa !214
  %i.cc = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, i32 noundef %i.ca, i32 noundef %i.cb) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 1 ; 2 uses
  %i.ce = zext i1 %i.cc to i8
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !258
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 5 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !215
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !216
  %i.cj = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef %i.cg, i32 noundef %i.ci) ; 2 uses
  %i.ck = zext i1 %i.cj to i8
  store i8 %i.ck, ptr %i.bt, align 2, !tbaa !258
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !215
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !216
  %i.cn = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 4 dereferenceable(4) %i.bq, i32 noundef %i.cl, i32 noundef %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 3 ; 2 uses
  %i.cp = zext i1 %i.cn to i8
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !258
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !217
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !218
  %i.cu = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.cr, i32 noundef %i.ct) ; 2 uses
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %i.bu, align 4, !tbaa !258
  %i.cw = load i32, ptr %i.cq, align 4, !tbaa !217
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !218
  %i.cy = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i32 noundef %i.cw, i32 noundef %i.cx) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.da = zext i1 %i.cy to i8
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !258
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 38
  %i.dc = load i8, ptr %i.db, align 2
  %i.dd = trunc i8 %i.dc to i1
  %indvars.iv595.sroa.gep1045 = getelementptr inbounds nuw i8, ptr %17, i64 32
  %indvars.iv595.sroa.gep1048 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %indvars.iv591.sroa.gep1049 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %indvars.iv595.sroa.gep1052 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %indvars.iv593.sroa.gep1053 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %indvars.iv591.sroa.gep1056 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %i.dd, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.df = load i32, ptr %i.r, align 4, !tbaa !213 ; 4 uses
  %.not = icmp slt i32 %i.de, %i.df
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dg = load i32, ptr %i.bw, align 4, !tbaa !214
  %i.dh = add nsw i32 %i.dg, %i.df
  %i.di = icmp slt i32 %i.de, %i.dh
  %i.dj = and i1 %i.by, %i.di
  %i.dk = zext i1 %i.dj to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dl = phi i8 [ 0, %bb.b ], [ %i.dk, %bb.c ]
  store i8 %i.dl, ptr %16, align 8, !tbaa !258
  %i.dm = load i32, ptr %i.bo, align 4, !tbaa !3  ; 2 uses
  %.not354 = icmp slt i32 %i.dm, %i.df
  br i1 %.not354, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dn = load i32, ptr %i.bw, align 4, !tbaa !214
  %i.do = add nsw i32 %i.dn, %i.df
  %i.dp = icmp slt i32 %i.dm, %i.do
  %i.dq = and i1 %i.cc, %i.dp
  %i.dr = zext i1 %i.dq to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ds = phi i8 [ 0, %bb.d ], [ %i.dr, %bb.e ]
  store i8 %i.ds, ptr %i.cd, align 1, !tbaa !258
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.du = load i32, ptr %i.cf, align 4, !tbaa !215 ; 4 uses
  %.not355 = icmp slt i32 %i.dt, %i.du
  br i1 %.not355, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dv = load i32, ptr %i.ch, align 4, !tbaa !216
  %i.dw = add nsw i32 %i.dv, %i.du
  %i.dx = icmp slt i32 %i.dt, %i.dw
  %i.dy = and i1 %i.cj, %i.dx
  %i.dz = zext i1 %i.dy to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ea = phi i8 [ 0, %bb.f ], [ %i.dz, %bb.g ]
  store i8 %i.ea, ptr %i.bt, align 2, !tbaa !258
  %i.eb = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %.not356 = icmp slt i32 %i.eb, %i.du
  br i1 %.not356, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ec = load i32, ptr %i.ch, align 4, !tbaa !216
  %i.ed = add nsw i32 %i.ec, %i.du
  %i.ee = icmp slt i32 %i.eb, %i.ed
  %i.ef = and i1 %i.cn, %i.ee
  %i.eg = zext i1 %i.ef to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = phi i8 [ 0, %bb.h ], [ %i.eg, %bb.i ]
  store i8 %i.eh, ptr %i.co, align 1, !tbaa !258
  %i.ei = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  %i.ej = load i32, ptr %i.cq, align 4, !tbaa !217 ; 4 uses
  %.not357 = icmp slt i32 %i.ei, %i.ej
  br i1 %.not357, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = load i32, ptr %i.cs, align 4, !tbaa !218
  %i.el = add nsw i32 %i.ek, %i.ej
  %i.em = icmp slt i32 %i.ei, %i.el
  %i.en = and i1 %i.cu, %i.em
  %i.eo = zext i1 %i.en to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ep = phi i8 [ 0, %bb.j ], [ %i.eo, %bb.k ]
  store i8 %i.ep, ptr %i.bu, align 4, !tbaa !258
  %i.eq = load i32, ptr %i.bs, align 4, !tbaa !3  ; 2 uses
  %.not358 = icmp slt i32 %i.eq, %i.ej
  br i1 %.not358, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.er = load i32, ptr %i.cs, align 4, !tbaa !218
  %i.es = add nsw i32 %i.er, %i.ej
  %i.et = icmp slt i32 %i.eq, %i.es
  %i.eu = and i1 %i.cy, %i.et
  %i.ev = zext i1 %i.eu to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ew = phi i8 [ 0, %bb.l ], [ %i.ev, %bb.m ]
  store i8 %i.ew, ptr %i.cz, align 1, !tbaa !258
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
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !173 ; 2 uses
  %i.fn = fcmp une float %i.fm, 0.000000e+00
  br i1 %i.fn, label %.lr.ph.preheader, label %.loopexit556

.lr.ph.preheader:                                 ; preds = %bb.q
  %21 = insertelement <2 x i32> poison, i32 %i.fb, i64 0
  %22 = insertelement <2 x i32> %21, i32 %i.fd, i64 1
  %23 = and <2 x i32> %22, splat (i32 255)        ; 2 uses
  %i.fo = fsub float 1.000000e+00, %i.ao
  %i.fp = fsub float 1.000000e+00, %i.ax          ; 2 uses
  %i.fq = fsub float 1.000000e+00, %i.aw
  %i.fr = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fj, i64 1
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fg, i64 2
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fh, i64 3
  %i.fv = and <4 x i32> %i.fu, <i32 -1, i32 255, i32 255, i32 255> ; 2 uses
  %i.fw = shufflevector <4 x i32> %i.fv, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  %i.fx = mul nuw nsw <4 x i32> %i.fv, %i.fw      ; 2 uses
  %i.fy = shufflevector <2 x i32> %23, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.fz = mul nuw nsw <4 x i32> %i.fx, %i.fy
  %i.ga = uitofp <4 x i32> %i.fz to <4 x float>
  %24 = shufflevector <2 x i32> %23, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gb = mul nuw nsw <4 x i32> %i.fx, %24
  %i.gc = uitofp <4 x i32> %i.gb to <4 x float>
  %i.gd = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gf = fmul <4 x float> %i.ge, %i.gc
  %i.gg = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.gh, <4 x float> %i.gf) ; 4 uses
  %i.gj = extractelement <4 x float> %i.gi, i64 0
  %i.gk = fmul float %i.ax, %i.gj
  %i.gl = extractelement <4 x float> %i.gi, i64 2
  %i.gm = call float @llvm.fmuladd.f32(float %i.fp, float %i.gl, float %i.gk)
  %i.gn = extractelement <4 x float> %i.gi, i64 1
  %i.go = fmul float %i.ax, %i.gn
  %i.gp = extractelement <4 x float> %i.gi, i64 3
  %i.gq = call float @llvm.fmuladd.f32(float %i.fp, float %i.gp, float %i.go)
  %i.gr = fmul float %i.aw, %i.gq
  %i.gs = call noundef float @llvm.fmuladd.f32(float %i.fq, float %i.gm, float %i.gr)
  %i.gt = fmul float %8, %i.fm
  %i.gu = fmul float %i.gt, %i.gs                 ; 2 uses
  %i.gv = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 2 uses
  %i.gw = sub nsw i64 %wide.trip.count, %i.gv     ; 3 uses
  %min.iters.check = icmp ult i64 %i.gw, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1044, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.gw, -8                      ; 3 uses
  %i.gx = add nsw i64 %n.vec, %i.gv
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.gv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !156
  %wide.load709 = load <4 x float>, ptr %i.gy, align 4, !tbaa !156
  %i.gz = fadd <4 x float> %broadcast.splat, %wide.load
  %i.ha = fadd <4 x float> %broadcast.splat, %wide.load709
  store <4 x float> %i.gz, ptr %gep, align 4, !tbaa !156
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gw, %n.vec
  br i1 %cmp.n, label %.loopexit556, label %.lr.ph.preheader1044

.lr.ph.preheader1044:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gv, %.lr.ph.preheader ], [ %i.gx, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1044, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1044 ] ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !156
  %i.he = fadd float %i.gu, %i.hd
  store float %i.he, ptr %i.hc, align 4, !tbaa !156
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit556, label %.lr.ph, !llvm.loop !260

.loopexit556:                                     ; preds = %.lr.ph, %middle.block, %bb.q, %bb.p
  %i.hf = icmp slt i32 %7, 0
  br i1 %i.hf, label %bb.iy, label %bb.r

bb.r:                                             ; preds = %.loopexit556
  %i.hg = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !221
  %i.hi = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 4 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !222
  %i.hk = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %17, i8 0, i64 64, i1 false), !tbaa !235
  %i.hm = add nsw i32 %i.hh, -1
  %i.hn = add nsw i32 %i.hj, -1
  %i.ho = add nsw i32 %i.hl, -1
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !3   ; 3 uses
  %i.hq = load i32, ptr %i.r, align 4, !tbaa !213
  %i.hr = sub nsw i32 %i.hp, %i.hq
  %i.hs = load i32, ptr %i.hg, align 4, !tbaa !221 ; 2 uses
  %i.ht = srem i32 %i.hr, %i.hs                   ; 3 uses
  %i.hu = load i32, ptr %i.c, align 4, !tbaa !3   ; 3 uses
  %i.hv = load i32, ptr %i.cf, align 4, !tbaa !215
  %i.hw = sub nsw i32 %i.hu, %i.hv
  %i.hx = load i32, ptr %i.hi, align 4, !tbaa !222 ; 2 uses
  %i.hy = srem i32 %i.hw, %i.hx                   ; 3 uses
  %i.hz = load i32, ptr %i.d, align 4, !tbaa !3   ; 3 uses
  %i.ia = load i32, ptr %i.cq, align 4, !tbaa !217
  %i.ib = sub nsw i32 %i.hz, %i.ia
  %i.ic = load i32, ptr %i.hk, align 4, !tbaa !223
  %i.id = srem i32 %i.ib, %i.ic                   ; 3 uses
  %i.ie = icmp ne i32 %i.ht, %i.hm
  %i.if = add nsw i32 %i.hp, 1
  %i.ig = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.ih = icmp eq i32 %i.if, %i.ig
  %i.ii = and i1 %i.ie, %i.ih
  %i.ij = icmp ne i32 %i.hy, %i.hn
  %i.ik = add nsw i32 %i.hu, 1
  %i.il = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.im = icmp eq i32 %i.ik, %i.il
  %i.in = and i1 %i.ij, %i.im
  %i.io = icmp ne i32 %i.id, %i.ho
  %i.ip = add nsw i32 %i.hz, 1
  %i.iq = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.ir = icmp eq i32 %i.ip, %i.iq
  %i.is = and i1 %i.io, %i.ir
  %i.it = and i1 %i.ii, %i.in
  %i.iu = and i1 %i.it, %i.is
  %i.iv = load i32, ptr %i.f, align 4, !tbaa !89  ; 2 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.iy = getelementptr inbounds nuw [128 x i8], ptr %i.ix, i64 %i.iw ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !261
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 36
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !262
  %i.je = zext i32 %i.jd to i64                   ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !219 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !220
  %i.jj = icmp sgt i32 %i.jg, %i.ji
  br i1 %i.jj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jk = load i32, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.jl = add nsw i32 %i.jk, %7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0309 = phi i32 [ %i.jk, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.0308 = phi i32 [ %i.jl, %bb.s ], [ %i.jg, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !164
  store i32 0, ptr %18, align 8, !tbaa !224
  %i.jo = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  store i32 0, ptr %i.jo, align 4, !tbaa !226
  %i.jp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 0, ptr %i.jp, align 8, !tbaa !227
  %i.jq = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  store i32 %i.iv, ptr %i.jq, align 4, !tbaa !228
  %i.jr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store i32 %2, ptr %i.jr, align 8, !tbaa !229
  %i.js = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 3 uses
  %i.jt = trunc i32 %.0309 to i16
  store i16 %i.jt, ptr %i.js, align 4, !tbaa !230
  %i.ju = getelementptr inbounds nuw i8, ptr %18, i64 22 ; 4 uses
  %i.jv = trunc i32 %.0308 to i16
  store i16 %i.jv, ptr %i.ju, align 2, !tbaa !231
  %i.jw = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store i32 %i.jn, ptr %i.jw, align 8, !tbaa !232
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 0, ptr %i.jx, align 4, !tbaa !233
  %i.jy = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store ptr %3, ptr %i.jy, align 8, !tbaa !234
  %i.jz = icmp slt i32 %.0308, %.0309
  br i1 %i.jz, label %bb.u, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.u:                                             ; preds = %bb.t
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iy, i64 120
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !98
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 60
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !153
  %i.ke = trunc i32 %i.kd to i16
  store i16 %i.ke, ptr %i.ju, align 2, !tbaa !231
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.u, %bb.t
  %i.kf = load i32, ptr %5, align 8, !tbaa !154
  %sext = shl i32 %.0309, 16
  %i.kg = ashr exact i32 %sext, 16
  %i.kh = sub nsw i32 %i.kf, %i.kg                ; 2 uses
  %i.ki = icmp eq i64 %i.ex, 1103823438081
  %or.cond = and i1 %i.ki, %i.iu
  br i1 %or.cond, label %bb.v, label %.preheader555

.preheader555:                                    ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kp = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.kw = sext i32 %i.kh to i64
  br label %.preheader554
end_hunk_0
