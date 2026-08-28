Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ag = load <2 x float>, ptr %i.ad, align 4, !tbaa !156
  %i.ah = load <2 x i32>, ptr %i.ae, align 4, !tbaa !3
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>
  %i.aj = load <2 x i32>, ptr %i.af, align 4, !tbaa !3
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.ak)
  %i.am = tail call noundef float @llvm.floor.f32(float %i.ac) ; 2 uses
  %i.an = fptosi float %i.am to i32               ; 2 uses
  %i.ao = fsub float %i.ac, %i.am                 ; 28 uses
  %i.ap = fadd <2 x float> %i.al, splat (float -5.000000e-01) ; 2 uses
  %i.aq = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ap) ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fptosi float %i.ar to i32               ; 2 uses
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = fptosi float %i.at to i32               ; 2 uses
  %i.av = fsub <2 x float> %i.ap, %i.aq           ; 11 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 17 uses
  %i.ax = extractelement <2 x float> %i.av, i64 0 ; 24 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !127
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !212 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 17
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
  %i.ex = load i64, ptr %16, align 8              ; 7 uses
  %i.ey = icmp eq i64 %i.ex, 0
  %21 = trunc i64 %i.ex to i32
  %i.ez = trunc i64 %i.ex to i32
  %22 = lshr i32 %i.ez, 8
  %23 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %24 = trunc i64 %i.ex to i32
  %i.fa = trunc i64 %i.ex to i32
  %25 = lshr i32 %i.fa, 16
  %26 = lshr i32 %24, 24
  %27 = shufflevector <2 x i64> %23, <2 x i64> poison, <4 x i32> zeroinitializer
  %28 = lshr <4 x i64> %27, <i64 32, i64 40, i64 32, i64 40>
  %29 = trunc nuw <4 x i64> %28 to <4 x i32>
  br i1 %i.ey, label %bb.iy, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fb = icmp sgt i32 %6, %7
  br i1 %i.fb, label %bb.q, label %.loopexit556

bb.q:                                             ; preds = %bb.p
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !173 ; 2 uses
  %i.fe = fcmp une float %i.fd, 0.000000e+00
  br i1 %i.fe, label %.lr.ph.preheader, label %.loopexit556

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.ff = fsub float 1.000000e+00, %i.ao
  %i.fg = fsub float 1.000000e+00, %i.ax          ; 2 uses
  %i.fh = fsub float 1.000000e+00, %i.aw
  %i.fi = insertelement <4 x i32> poison, i32 %25, i64 0
  %i.fj = insertelement <4 x i32> %i.fi, i32 %26, i64 1
  %30 = shufflevector <4 x i32> %i.fj, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fk = and <4 x i32> %30, %29
  %31 = and <4 x i32> %i.fk, <i32 255, i32 255, i32 -1, i32 -1> ; 2 uses
  %i.fl = insertelement <4 x i32> poison, i32 %21, i64 0
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> zeroinitializer
  %32 = and <4 x i32> %31, %i.fm
  %i.fn = uitofp <4 x i32> %32 to <4 x float>
  %i.fo = insertelement <4 x i32> poison, i32 %22, i64 0
  %i.fp = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <4 x i32> zeroinitializer
  %33 = and <4 x i32> %i.fp, %31
  %i.fq = uitofp nneg <4 x i32> %33 to <4 x float>
  %i.fr = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = fmul <4 x float> %i.fs, %i.fq
  %i.fu = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fv, <4 x float> %i.ft) ; 4 uses
  %i.fx = extractelement <4 x float> %i.fw, i64 2
  %i.fy = fmul float %i.ax, %i.fx
  %i.fz = extractelement <4 x float> %i.fw, i64 0
  %i.ga = call float @llvm.fmuladd.f32(float %i.fg, float %i.fz, float %i.fy)
  %i.gb = extractelement <4 x float> %i.fw, i64 3
  %i.gc = fmul float %i.ax, %i.gb
  %i.gd = extractelement <4 x float> %i.fw, i64 1
  %i.ge = call float @llvm.fmuladd.f32(float %i.fg, float %i.gd, float %i.gc)
  %i.gf = fmul float %i.aw, %i.ge
  %i.gg = call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.ga, float %i.gf)
  %i.gh = fmul float %8, %i.fd
  %i.gi = fmul float %i.gh, %i.gg                 ; 2 uses
  %i.gj = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 2 uses
  %i.gk = sub nsw i64 %wide.trip.count, %i.gj     ; 3 uses
  %min.iters.check = icmp ult i64 %i.gk, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1044, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.gk, -8                      ; 3 uses
  %i.gl = add nsw i64 %n.vec, %i.gj
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gi, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.gj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !156
  %wide.load709 = load <4 x float>, ptr %i.gm, align 4, !tbaa !156
  %i.gn = fadd <4 x float> %broadcast.splat, %wide.load
  %i.go = fadd <4 x float> %broadcast.splat, %wide.load709
  store <4 x float> %i.gn, ptr %gep, align 4, !tbaa !156
  store <4 x float> %i.go, ptr %i.gm, align 4, !tbaa !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gk, %n.vec
  br i1 %cmp.n, label %.loopexit556, label %.lr.ph.preheader1044

.lr.ph.preheader1044:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gj, %.lr.ph.preheader ], [ %i.gl, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1044, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1044 ] ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !156
  %i.gs = fadd float %i.gi, %i.gr
  store float %i.gs, ptr %i.gq, align 4, !tbaa !156
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit556, label %.lr.ph, !llvm.loop !260

.loopexit556:                                     ; preds = %.lr.ph, %middle.block, %bb.q, %bb.p
  %i.gt = icmp slt i32 %7, 0
  br i1 %i.gt, label %bb.iy, label %bb.r

bb.r:                                             ; preds = %.loopexit556
  %i.gu = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !221
  %i.gw = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 4 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !222
  %i.gy = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %17, i8 0, i64 64, i1 false), !tbaa !235
  %i.ha = add nsw i32 %i.gv, -1
  %i.hb = add nsw i32 %i.gx, -1
  %i.hc = add nsw i32 %i.gz, -1
  %i.hd = load i32, ptr %i.b, align 4, !tbaa !3   ; 3 uses
  %i.he = load i32, ptr %i.r, align 4, !tbaa !213
  %i.hf = sub nsw i32 %i.hd, %i.he
  %i.hg = load i32, ptr %i.gu, align 4, !tbaa !221 ; 2 uses
  %i.hh = srem i32 %i.hf, %i.hg                   ; 3 uses
  %i.hi = load i32, ptr %i.c, align 4, !tbaa !3   ; 3 uses
  %i.hj = load i32, ptr %i.cf, align 4, !tbaa !215
  %i.hk = sub nsw i32 %i.hi, %i.hj
  %i.hl = load i32, ptr %i.gw, align 4, !tbaa !222 ; 2 uses
  %i.hm = srem i32 %i.hk, %i.hl                   ; 3 uses
  %i.hn = load i32, ptr %i.d, align 4, !tbaa !3   ; 3 uses
  %i.ho = load i32, ptr %i.cq, align 4, !tbaa !217
  %i.hp = sub nsw i32 %i.hn, %i.ho
  %i.hq = load i32, ptr %i.gy, align 4, !tbaa !223
  %i.hr = srem i32 %i.hp, %i.hq                   ; 3 uses
  %i.hs = icmp ne i32 %i.hh, %i.ha
  %i.ht = add nsw i32 %i.hd, 1
  %i.hu = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.hv = icmp eq i32 %i.ht, %i.hu
  %i.hw = and i1 %i.hs, %i.hv
  %i.hx = icmp ne i32 %i.hm, %i.hb
  %i.hy = add nsw i32 %i.hi, 1
  %i.hz = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.ia = icmp eq i32 %i.hy, %i.hz
  %i.ib = and i1 %i.hx, %i.ia
  %i.ic = icmp ne i32 %i.hr, %i.hc
  %i.id = add nsw i32 %i.hn, 1
  %i.ie = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.if = icmp eq i32 %i.id, %i.ie
  %i.ig = and i1 %i.ic, %i.if
  %i.ih = and i1 %i.hw, %i.ib
  %i.ii = and i1 %i.ih, %i.ig
  %i.ij = load i32, ptr %i.f, align 4, !tbaa !89  ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %i.il = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.im = getelementptr inbounds nuw [128 x i8], ptr %i.il, i64 %i.ik ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = load i32, ptr %i.in, align 8, !tbaa !261
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 36
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !262
  %i.is = zext i32 %i.ir to i64                   ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !219 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !220
  %i.ix = icmp sgt i32 %i.iu, %i.iw
  br i1 %i.ix, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iy = load i32, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.iz = add nsw i32 %i.iy, %7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0309 = phi i32 [ %i.iy, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.0308 = phi i32 [ %i.iz, %bb.s ], [ %i.iu, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !164
  store i32 0, ptr %18, align 8, !tbaa !224
  %i.jc = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  store i32 0, ptr %i.jc, align 4, !tbaa !226
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 0, ptr %i.jd, align 8, !tbaa !227
  %i.je = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  store i32 %i.ij, ptr %i.je, align 4, !tbaa !228
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store i32 %2, ptr %i.jf, align 8, !tbaa !229
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 3 uses
  %i.jh = trunc i32 %.0309 to i16
  store i16 %i.jh, ptr %i.jg, align 4, !tbaa !230
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 22 ; 4 uses
  %i.jj = trunc i32 %.0308 to i16
  store i16 %i.jj, ptr %i.ji, align 2, !tbaa !231
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store i32 %i.jb, ptr %i.jk, align 8, !tbaa !232
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 0, ptr %i.jl, align 4, !tbaa !233
  %i.jm = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store ptr %3, ptr %i.jm, align 8, !tbaa !234
  %i.jn = icmp slt i32 %.0308, %.0309
  br i1 %i.jn, label %bb.u, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.u:                                             ; preds = %bb.t
  %i.jo = getelementptr inbounds nuw i8, ptr %i.im, i64 120
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !98
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 60
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !153
  %i.js = trunc i32 %i.jr to i16
  store i16 %i.js, ptr %i.ji, align 2, !tbaa !231
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.u, %bb.t
  %i.jt = load i32, ptr %5, align 8, !tbaa !154
  %sext = shl i32 %.0309, 16
  %i.ju = ashr exact i32 %sext, 16
  %i.jv = sub nsw i32 %i.jt, %i.ju                ; 2 uses
  %i.jw = icmp eq i64 %i.ex, 1103823438081
  %or.cond = and i1 %i.jw, %i.ii
  br i1 %or.cond, label %bb.v, label %.preheader555

.preheader555:                                    ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.kk = sext i32 %i.jv to i64
  br label %.preheader554

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.kl = sub nsw i32 %i.hd, %i.hh
  %i.km = sub nsw i32 %i.hi, %i.hm
  %i.kn = sub nsw i32 %i.hn, %i.hr
  store i32 %i.kl, ptr %18, align 8, !tbaa !224
  store i32 %i.km, ptr %i.jc, align 4, !tbaa !226
  store i32 %i.kn, ptr %i.jd, align 8, !tbaa !227
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !10
  %i.kq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.kp, ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef %4, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit unwind label %bb.aa

_ZN11OpenImageIO4v3_117TextureSystemImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb.exit: ; preds = %bb.v
end_hunk_0
