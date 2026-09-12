Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texture3d?download=true
inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.ag = load <2 x float>, ptr %i.ad, align 4, !tbaa !184
  %i.ah = load <2 x i32>, ptr %i.ae, align 4, !tbaa !42
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>
  %i.aj = load <2 x i32>, ptr %i.af, align 4, !tbaa !42
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
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !162
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !213 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !180
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !181
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !213 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 %i.an, ptr %i.b, align 4, !tbaa !42
  %i.bn = add nsw i32 %i.an, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !42
  store i32 %i.as, ptr %i.c, align 4, !tbaa !42
  %i.bp = add nsw i32 %i.as, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !42
  store i32 %i.au, ptr %i.d, align 4, !tbaa !42
  %i.br = add nsw i32 %i.au, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i64 0, ptr %16, align 8, !tbaa !187
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 2 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  %i.bv = load i32, ptr %i.r, align 4, !tbaa !214
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.by = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.bv, i32 noundef %i.bx) ; 2 uses
  %i.bz = zext i1 %i.by to i8
  store i8 %i.bz, ptr %16, align 8, !tbaa !241
  %i.ca = load i32, ptr %i.r, align 4, !tbaa !214
  %i.cb = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.cc = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, i32 noundef %i.ca, i32 noundef %i.cb) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 1 ; 2 uses
  %i.ce = zext i1 %i.cc to i8
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !241
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 5 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !216
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.cj = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef %i.cg, i32 noundef %i.ci) ; 2 uses
  %i.ck = zext i1 %i.cj to i8
  store i8 %i.ck, ptr %i.bt, align 2, !tbaa !241
  %i.cl = load i32, ptr %i.cf, align 4, !tbaa !216
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !217
  %i.cn = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 4 dereferenceable(4) %i.bq, i32 noundef %i.cl, i32 noundef %i.cm) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 3 ; 2 uses
  %i.cp = zext i1 %i.cn to i8
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !241
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !218
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.cu = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.cr, i32 noundef %i.ct) ; 2 uses
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %i.bu, align 4, !tbaa !241
  %i.cw = load i32, ptr %i.cq, align 4, !tbaa !218
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !219
  %i.cy = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i32 noundef %i.cw, i32 noundef %i.cx) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.da = zext i1 %i.cy to i8
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !241
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
  %i.de = load i32, ptr %i.b, align 4, !tbaa !42  ; 2 uses
  %i.df = load i32, ptr %i.r, align 4, !tbaa !214 ; 4 uses
  %.not = icmp slt i32 %i.de, %i.df
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dg = load i32, ptr %i.bw, align 4, !tbaa !215
  %i.dh = add nsw i32 %i.dg, %i.df
  %i.di = icmp slt i32 %i.de, %i.dh
  %i.dj = and i1 %i.by, %i.di
  %i.dk = zext i1 %i.dj to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dl = phi i8 [ 0, %bb.b ], [ %i.dk, %bb.c ]
  store i8 %i.dl, ptr %16, align 8, !tbaa !241
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
  store i8 %i.ds, ptr %i.cd, align 1, !tbaa !241
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
  store i8 %i.ea, ptr %i.bt, align 2, !tbaa !241
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
  store i8 %i.eh, ptr %i.co, align 1, !tbaa !241
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
  store i8 %i.ep, ptr %i.bu, align 4, !tbaa !241
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
  store i8 %i.ew, ptr %i.cz, align 1, !tbaa !241
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.a
  %i.ex = load i64, ptr %16, align 8              ; 8 uses
  %i.ey = icmp eq i64 %i.ex, 0
  %21 = lshr i64 %i.ex, 32
  %22 = trunc i64 %i.ex to i32
  %23 = trunc i64 %i.ex to i32
  %i.ez = trunc i64 %i.ex to i32
  %24 = lshr i32 %i.ez, 8
  %i.fa = trunc i64 %i.ex to i32
  %25 = lshr i64 %i.ex, 40
  %26 = trunc nuw i64 %21 to i32
  %27 = lshr i32 %22, 16
  %28 = lshr i32 %i.fa, 24
  %29 = trunc nuw nsw i64 %25 to i32
  br i1 %i.ey, label %bb.iy, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fb = icmp sgt i32 %6, %7
  br i1 %i.fb, label %bb.q, label %.loopexit556

bb.q:                                             ; preds = %bb.p
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !189 ; 2 uses
  %i.fe = fcmp une float %i.fd, 0.000000e+00
  br i1 %i.fe, label %.lr.ph.preheader, label %.loopexit556

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.ff = and i32 %23, 255
  %i.fg = and i32 %24, 255
  %i.fh = fsub float 1.000000e+00, %i.ao
  %i.fi = fsub float 1.000000e+00, %i.ax          ; 2 uses
  %i.fj = fsub float 1.000000e+00, %i.aw
  %30 = insertelement <4 x i32> poison, i32 %28, i64 0
  %31 = insertelement <4 x i32> %30, i32 %29, i64 1
  %32 = insertelement <4 x i32> %31, i32 %26, i64 2
  %33 = insertelement <4 x i32> %32, i32 %27, i64 3
  %34 = and <4 x i32> %33, <i32 -1, i32 255, i32 255, i32 255> ; 2 uses
  %i.fk = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 3, i32 1>
  %i.fl = mul nuw nsw <4 x i32> %34, %i.fk        ; 2 uses
  %i.fm = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %i.fn = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fo = mul nuw nsw <4 x i32> %i.fl, %i.fn
  %i.fp = uitofp <4 x i32> %i.fo to <4 x float>
  %i.fq = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %i.fr = shufflevector <4 x i32> %i.fq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fs = mul nuw nsw <4 x i32> %i.fl, %i.fr
  %i.ft = uitofp <4 x i32> %i.fs to <4 x float>
  %i.fu = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = fmul <4 x float> %i.fv, %i.ft
  %i.fx = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.fy, <4 x float> %i.fw) ; 4 uses
  %i.ga = extractelement <4 x float> %i.fz, i64 0
  %i.gb = fmul float %i.ax, %i.ga
  %i.gc = extractelement <4 x float> %i.fz, i64 2
  %i.gd = call float @llvm.fmuladd.f32(float %i.fi, float %i.gc, float %i.gb)
  %i.ge = extractelement <4 x float> %i.fz, i64 1
  %i.gf = fmul float %i.ax, %i.ge
  %i.gg = extractelement <4 x float> %i.fz, i64 3
  %i.gh = call float @llvm.fmuladd.f32(float %i.fi, float %i.gg, float %i.gf)
  %i.gi = fmul float %i.aw, %i.gh
  %i.gj = call noundef float @llvm.fmuladd.f32(float %i.fj, float %i.gd, float %i.gi)
  %i.gk = fmul float %8, %i.fd
  %i.gl = fmul float %i.gk, %i.gj                 ; 2 uses
  %i.gm = sext i32 %7 to i64                      ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 2 uses
  %i.gn = sub nsw i64 %wide.trip.count, %i.gm     ; 3 uses
  %min.iters.check = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1044, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.gn, -8                      ; 3 uses
  %i.go = add nsw i64 %n.vec, %i.gm
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %9, i64 %i.gm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !184
  %wide.load709 = load <4 x float>, ptr %i.gp, align 4, !tbaa !184
  %i.gq = fadd <4 x float> %broadcast.splat, %wide.load
  %i.gr = fadd <4 x float> %broadcast.splat, %wide.load709
  store <4 x float> %i.gq, ptr %gep, align 4, !tbaa !184
  store <4 x float> %i.gr, ptr %i.gp, align 4, !tbaa !184
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gn, %n.vec
  br i1 %cmp.n, label %.loopexit556, label %.lr.ph.preheader1044

.lr.ph.preheader1044:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gm, %.lr.ph.preheader ], [ %i.go, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1044, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1044 ] ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !184
  %i.gv = fadd float %i.gl, %i.gu
  store float %i.gv, ptr %i.gt, align 4, !tbaa !184
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit556, label %.lr.ph, !llvm.loop !454

.loopexit556:                                     ; preds = %.lr.ph, %middle.block, %bb.q, %bb.p
  %i.gw = icmp slt i32 %7, 0
  br i1 %i.gw, label %bb.iy, label %bb.r

bb.r:                                             ; preds = %.loopexit556
  %i.gx = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !236
  %i.gz = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.hb = add nsw i32 %i.gy, -1
  %i.hc = load <2 x i32>, ptr %i.gz, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %17, i8 0, i64 64, i1 false), !tbaa !234
  %i.hd = add nsw <2 x i32> %i.hc, splat (i32 -1)
  %i.he = load i32, ptr %i.b, align 4, !tbaa !42  ; 3 uses
  %i.hf = load i32, ptr %i.r, align 4, !tbaa !214
  %i.hg = sub nsw i32 %i.he, %i.hf
  %i.hh = load i32, ptr %i.gx, align 4, !tbaa !236 ; 2 uses
  %i.hi = srem i32 %i.hg, %i.hh                   ; 3 uses
  %i.hj = load i32, ptr %i.c, align 4, !tbaa !42  ; 2 uses
  %i.hk = load i32, ptr %i.d, align 4, !tbaa !42  ; 2 uses
  %i.hl = load <2 x i32>, ptr %i.cf, align 4, !tbaa !42
  %i.hm = insertelement <2 x i32> poison, i32 %i.hj, i64 0
  %i.hn = insertelement <2 x i32> %i.hm, i32 %i.hk, i64 1 ; 2 uses
  %i.ho = sub nsw <2 x i32> %i.hn, %i.hl
  %i.hp = load <2 x i32>, ptr %i.gz, align 4, !tbaa !42
  %i.hq = load i32, ptr %i.gz, align 4, !tbaa !235
  %i.hr = srem <2 x i32> %i.ho, %i.hp             ; 4 uses
  %i.hs = icmp ne i32 %i.hi, %i.hb
  %i.ht = add nsw i32 %i.he, 1
  %i.hu = load i32, ptr %i.bo, align 4, !tbaa !42
  %i.hv = icmp eq i32 %i.ht, %i.hu
  %i.hw = and i1 %i.hs, %i.hv
  %i.hx = add nsw i32 %i.hj, 1
  %i.hy = load i32, ptr %i.bq, align 4, !tbaa !42
  %i.hz = icmp eq i32 %i.hx, %i.hy
  %i.ia = icmp ne <2 x i32> %i.hr, %i.hd          ; 2 uses
  %i.ib = extractelement <2 x i1> %i.ia, i64 0
  %i.ic = and i1 %i.ib, %i.hz
  %i.id = add nsw i32 %i.hk, 1
  %i.ie = load i32, ptr %i.bs, align 4, !tbaa !42
  %i.if = icmp eq i32 %i.id, %i.ie
  %i.ig = extractelement <2 x i1> %i.ia, i64 1
  %i.ih = and i1 %i.ig, %i.if
  %i.ii = and i1 %i.hw, %i.ic
  %i.ij = and i1 %i.ii, %i.ih
  %i.ik = load i32, ptr %i.f, align 4, !tbaa !130 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %i.im = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.in = getelementptr inbounds nuw [128 x i8], ptr %i.im, i64 %i.il ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !500
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 36
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !501
  %i.it = zext i32 %i.is to i64                   ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !220 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !221
  %i.iy = icmp sgt i32 %i.iv, %i.ix
  br i1 %i.iy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iz = load i32, ptr %5, align 8, !tbaa !183   ; 2 uses
  %i.ja = add nsw i32 %i.iz, %7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0309 = phi i32 [ %i.iz, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.0308 = phi i32 [ %i.ja, %bb.s ], [ %i.iv, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !188
  store i32 0, ptr %18, align 8, !tbaa !242
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  store i32 0, ptr %i.jd, align 4, !tbaa !243
  %i.je = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i32 0, ptr %i.je, align 8, !tbaa !224
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  store i32 %i.ik, ptr %i.jf, align 4, !tbaa !225
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store i32 %2, ptr %i.jg, align 8, !tbaa !226
  %i.jh = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 3 uses
  %i.ji = trunc i32 %.0309 to i16
  store i16 %i.ji, ptr %i.jh, align 4, !tbaa !227
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 22 ; 4 uses
  %i.jk = trunc i32 %.0308 to i16
  store i16 %i.jk, ptr %i.jj, align 2, !tbaa !228
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store i32 %i.jc, ptr %i.jl, align 8, !tbaa !229
  %i.jm = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i32 0, ptr %i.jm, align 4, !tbaa !230
  %i.jn = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store ptr %3, ptr %i.jn, align 8, !tbaa !231
  %i.jo = icmp slt i32 %.0308, %.0309
  br i1 %i.jo, label %bb.u, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.u:                                             ; preds = %bb.t
  %i.jp = getelementptr inbounds nuw i8, ptr %i.in, i64 120
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !161
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 60
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !182
  %i.jt = trunc i32 %i.js to i16
  store i16 %i.jt, ptr %i.jj, align 2, !tbaa !228
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.u, %bb.t
  %i.ju = load i32, ptr %5, align 8, !tbaa !183
  %sext = shl i32 %.0309, 16
  %i.jv = ashr exact i32 %sext, 16
  %i.jw = sub nsw i32 %i.ju, %i.jv                ; 2 uses
  %i.jx = icmp eq i64 %i.ex, 1103823438081
  %or.cond = and i1 %i.jx, %i.ij
  br i1 %or.cond, label %bb.v, label %.preheader555

.preheader555:                                    ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.kl = sext i32 %i.jw to i64
  br label %.preheader554

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.km = sub nsw i32 %i.he, %i.hi
end_hunk_0
