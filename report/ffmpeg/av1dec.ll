Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/av1dec?download=true
inline.NumInlined: 60
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@set_output_frame:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.q

bb.q:                                             ; preds = %export_itut_t35.exit.i, %bb.n
  %.341.i = phi i32 [ %.0.i.i, %export_itut_t35.exit.i ], [ %.24061.i, %bb.n ] ; 3 uses
  call void @av_buffer_unref(ptr noundef nonnull %i.ci) #10
  %i.ct = load ptr, ptr %i.cc, align 8, !tbaa !54
  %i.cu = call i32 @av_fifo_read(ptr noundef %i.ct, ptr noundef nonnull %4, i64 noundef 1) #10
  %i.cv = icmp sgt i32 %i.cu, -1
  br i1 %i.cv, label %bb.n, label %export_metadata.exit, !llvm.loop !221

.critedge.i:                                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %export_metadata.exit.thread

export_metadata.exit.thread:                      ; preds = %.critedge.i, %bb.l
  %.3.i.ph = phi i32 [ %i.bw, %bb.l ], [ %i.ac, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.r

export_metadata.exit:                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.cw = icmp slt i32 %.341.i, 0
  br i1 %i.cw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %export_metadata.exit.thread, %export_metadata.exit
  %.3.i35 = phi i32 [ %.3.i.ph, %export_metadata.exit.thread ], [ %.341.i, %export_metadata.exit ]
  call void @av_frame_unref(ptr noundef %1) #10
  br label %bb.ab

bb.s:                                             ; preds = %export_metadata.exit.thread36, %export_metadata.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !246
  %i.cz = and i32 %i.cy, 8
  %.not30 = icmp eq i32 %i.cz, 0
  br i1 %.not30, label %export_film_grain.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val = load ptr, ptr %i.c, align 8, !tbaa !28  ; 109 uses
  %.val49 = ptrtoaddr ptr %.val to i64            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.db = load i32, ptr %i.da, align 4, !tbaa !247
  %i.dc = call ptr @av_pix_fmt_desc_get(i32 noundef %i.db) #10 ; 2 uses
  %.not.i32 = icmp eq ptr %i.dc, null
  br i1 %.not.i32, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef 1038) #10
  call void @abort() #11
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %.val, i64 4258
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !85
  %.not115.i = icmp eq i8 %i.de, 0
  br i1 %.not115.i, label %export_film_grain.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = call ptr @av_film_grain_params_create_side_data(ptr noundef nonnull %1) #10 ; 109 uses
  %i.dg = ptrtoaddr ptr %i.df to i64              ; 2 uses
  %.not116.i = icmp eq ptr %i.df, null
  br i1 %.not116.i, label %export_film_grain.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.df, align 8, !tbaa !249
  %i.dh = getelementptr inbounds nuw i8, ptr %.val, i64 4260
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !86
  %i.dj = zext i16 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !250
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dn = load <2 x i32>, ptr %i.dl, align 8, !tbaa !68
  store <2 x i32> %i.dn, ptr %i.dm, align 8, !tbaa !68
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dq = load <4 x i32>, ptr %i.do, align 8, !tbaa !68
  store <4 x i32> %i.dq, ptr %i.dp, align 8, !tbaa !68
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dt = load <2 x i8>, ptr %i.dr, align 1, !tbaa !56
  %i.du = zext <2 x i8> %i.dt to <2 x i32>
  store <2 x i32> %i.du, ptr %i.ds, align 8, !tbaa !68
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dw = getelementptr inbounds nuw i8, ptr %.val, i64 4293
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !251
  %i.dy = zext i8 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  store i32 %i.dy, ptr %i.dz, align 8, !tbaa !253
  %i.ea = getelementptr inbounds nuw i8, ptr %.val, i64 4336
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !254
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.ec, 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 140
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !255
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 4337
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !256
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.df, i64 144
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !257
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 4412
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !258
  %i.el = zext i8 %i.ek to i32
  %i.em = add nuw nsw i32 %i.el, 6
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 224
  store i32 %i.em, ptr %i.en, align 8, !tbaa !259
  %i.eo = getelementptr inbounds nuw i8, ptr %.val, i64 4413
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !260
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.df, i64 228
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !261
  %i.es = getelementptr inbounds nuw i8, ptr %.val, i64 4422
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 256
  %i.eu = load <2 x i8>, ptr %i.es, align 2, !tbaa !56
  %i.ev = zext <2 x i8> %i.eu to <2 x i32>
  store <2 x i32> %i.ev, ptr %i.et, align 8, !tbaa !68
  %i.ew = getelementptr inbounds nuw i8, ptr %.val, i64 4264 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !262 ; 2 uses
  %i.ey = zext i8 %i.ex to i32
  store i32 %i.ey, ptr %i.dv, align 8, !tbaa !263
  %.not12.i = icmp eq i8 %i.ex, 0
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %.val, i64 4265
  %i.fa = getelementptr inbounds nuw i8, ptr %i.df, i64 60
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 4279
  br label %bb.y

._crit_edge.i:                                    ; preds = %bb.y, %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %.val, i64 4294 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 2, !tbaa !264 ; 2 uses
  %i.fe = zext i8 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.df, i64 92
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !68
  %.not13.i = icmp eq i8 %i.fd, 0
  br i1 %.not13.i, label %._crit_edge6.i, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %._crit_edge.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.val, i64 4295
  %i.fh = getelementptr inbounds nuw i8, ptr %i.df, i64 100
  %i.fi = getelementptr inbounds nuw i8, ptr %.val, i64 4305
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph.i33
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i33 ], [ %indvars.iv.next.i, %bb.y ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !56
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv.i ; 2 uses
  store i8 %i.fk, ptr %i.fl, align 2, !tbaa !56
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !56
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !56
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fp = load i8, ptr %i.ew, align 2, !tbaa !262
  %i.fq = zext i8 %i.fp to i64
  %i.fr = icmp samesign ult i64 %indvars.iv.next.i, %i.fq
  br i1 %i.fr, label %bb.y, label %._crit_edge.i, !llvm.loop !222

._crit_edge6.i:                                   ; preds = %bb.z, %._crit_edge.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.val, i64 4315 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !265 ; 2 uses
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  store i32 %i.fu, ptr %i.fv, align 8, !tbaa !68
  %.not14.i = icmp eq i8 %i.ft, 0
  br i1 %.not14.i, label %.preheader1.i, label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge6.i
  %i.fw = getelementptr inbounds nuw i8, ptr %.val, i64 4316
  %i.fx = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.fy = getelementptr inbounds nuw i8, ptr %.val, i64 4326
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph5.i
  %indvars.iv16.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next17.i, %bb.z ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv16.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !56
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv16.i ; 2 uses
  store i8 %i.ga, ptr %i.gb, align 2, !tbaa !56
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv16.i
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !56
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !56
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 2 uses
  %i.gf = load i8, ptr %i.fc, align 2, !tbaa !264
  %i.gg = zext i8 %i.gf to i64
  %i.gh = icmp samesign ult i64 %indvars.iv.next17.i, %i.gg
  br i1 %i.gh, label %bb.z, label %._crit_edge6.i, !llvm.loop !223

.preheader1.i:                                    ; preds = %bb.aa, %._crit_edge6.i
  %i.gi = add i64 %.val49, 4338
  %i.gj = add i64 %.val49, 4422
  %i.gk = add i64 %i.dg, 148
  %i.gl = add i64 %i.dg, 256
  %rt.bound0 = icmp ult i64 %i.gk, %i.gj
  %rt.bound1 = icmp ult i64 %i.gi, %i.gl
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader1.i.rtscalar, label %.preheader1.i.rtvec, !prof !266

bb.aa:                                            ; preds = %bb.aa, %.lr.ph9.i
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next20.i, %bb.aa ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv19.i
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !56
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %indvars.iv19.i ; 2 uses
  store i8 %i.gn, ptr %i.go, align 2, !tbaa !56
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv19.i
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !56
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !56
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %i.gs = load i8, ptr %i.fs, align 1, !tbaa !265
  %i.gt = zext i8 %i.gs to i64
  %i.gu = icmp samesign ult i64 %indvars.iv.next20.i, %i.gt
  br i1 %i.gu, label %bb.aa, label %.preheader1.i, !llvm.loop !224

export_film_grain.exit:                           ; preds = %bb.w
  call void @av_frame_unref(ptr noundef nonnull %1) #10
  br label %bb.ab

export_film_grain.exit.thread:                    ; preds = %.preheader1.i.rtvec, %.preheader1.i.rtscalar, %bb.v, %bb.s
  %i.gv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gx = load <2 x i64>, ptr %i.gv, align 8, !tbaa !267
  store <2 x i64> %i.gx, ptr %i.gw, align 8, !tbaa !267
  call void @av_packet_unref(ptr noundef %i.h) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %bb.b, %export_film_grain.exit.thread, %export_film_grain.exit, %bb.r
  %.0 = phi i32 [ 0, %export_film_grain.exit.thread ], [ 0, %bb.b ], [ %.3.i35, %bb.r ], [ -12, %export_film_grain.exit ], [ %i.x, %bb.c ]
  ret i32 %.0

.preheader1.i.rtvec:                              ; preds = %.preheader1.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.val, i64 4338
  %i.gz = getelementptr inbounds nuw i8, ptr %i.df, i64 148
  %i.ha = load <16 x i8>, ptr %i.gy, align 2, !tbaa !56
  %i.hb = xor <16 x i8> %i.ha, splat (i8 -128)
  store <16 x i8> %i.hb, ptr %i.gz, align 4, !tbaa !56
  %i.hc = getelementptr inbounds nuw i8, ptr %.val, i64 4354
  %i.hd = getelementptr inbounds nuw i8, ptr %i.df, i64 164
  %i.he = load <16 x i8>, ptr %i.hc, align 2, !tbaa !56
  %i.hf = xor <16 x i8> %i.he, splat (i8 -128)
  store <16 x i8> %i.hf, ptr %i.hd, align 4, !tbaa !56
  %i.hg = getelementptr inbounds nuw i8, ptr %.val, i64 4370
  %i.hh = getelementptr inbounds nuw i8, ptr %i.df, i64 180
  %i.hi = getelementptr inbounds nuw i8, ptr %.val, i64 4402
  %i.hj = getelementptr inbounds nuw i8, ptr %i.df, i64 212
  %i.hk = load <8 x i8>, ptr %i.hi, align 2, !tbaa !56
  %i.hl = xor <8 x i8> %i.hk, splat (i8 -128)
  store <8 x i8> %i.hl, ptr %i.hj, align 4, !tbaa !56
  %i.hm = load <16 x i8>, ptr %i.hg, align 2, !tbaa !56
  %i.hn = xor <16 x i8> %i.hm, splat (i8 -128)
  store <16 x i8> %i.hn, ptr %i.hh, align 4, !tbaa !56
  %i.ho = getelementptr inbounds nuw i8, ptr %.val, i64 4410
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !56
  %i.hq = xor i8 %i.hp, -128
  %i.hr = getelementptr inbounds nuw i8, ptr %i.df, i64 220
  store i8 %i.hq, ptr %i.hr, align 4, !tbaa !56
  %i.hs = getelementptr inbounds nuw i8, ptr %.val, i64 4386
  %i.ht = getelementptr inbounds nuw i8, ptr %i.df, i64 196
  %i.hu = load <16 x i8>, ptr %i.hs, align 2, !tbaa !56
  %i.hv = xor <16 x i8> %i.hu, splat (i8 -128)
  store <16 x i8> %i.hv, ptr %i.ht, align 4, !tbaa !56
  %i.hw = getelementptr inbounds nuw i8, ptr %.val, i64 4411
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !56
  %i.hy = xor i8 %i.hx, -128
  %i.hz = getelementptr inbounds nuw i8, ptr %i.df, i64 221
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !56
  %i.ia = getelementptr inbounds nuw i8, ptr %.val, i64 4414
  %i.ib = getelementptr inbounds nuw i8, ptr %i.df, i64 232
  %i.ic = getelementptr inbounds nuw i8, ptr %.val, i64 4418
  %i.id = load <2 x i8>, ptr %i.ia, align 2, !tbaa !56
  %i.ie = load <2 x i8>, ptr %i.ic, align 2, !tbaa !56
  %i.if = shufflevector <2 x i8> %i.id, <2 x i8> %i.ie, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ig = zext <4 x i8> %i.if to <4 x i32>
  store <4 x i32> %i.ig, ptr %i.ib, align 8, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %.val, i64 4416
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !268
  %i.ij = zext i16 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.df, i64 248
  store i32 %i.ij, ptr %i.ik, align 8, !tbaa !68
  %i.il = getelementptr inbounds nuw i8, ptr %.val, i64 4420
  %i.im = load i16, ptr %i.il, align 2, !tbaa !269
  %i.in = zext i16 %i.im to i32
  %i.io = getelementptr inbounds nuw i8, ptr %i.df, i64 252
  store i32 %i.in, ptr %i.io, align 4, !tbaa !68
  br label %export_film_grain.exit.thread

.preheader1.i.rtscalar:                           ; preds = %.preheader1.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.val, i64 4338
  %i.iq = getelementptr inbounds nuw i8, ptr %i.df, i64 148
  %i.ir = load i8, ptr %i.ip, align 2, !tbaa !56
  %i.is = xor i8 %i.ir, -128
  store i8 %i.is, ptr %i.iq, align 4, !tbaa !56
  %i.it = getelementptr inbounds nuw i8, ptr %.val, i64 4339
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !56
  %i.iv = xor i8 %i.iu, -128
  %i.iw = getelementptr inbounds nuw i8, ptr %i.df, i64 149
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !56
  %i.ix = getelementptr inbounds nuw i8, ptr %.val, i64 4340
  %i.iy = load i8, ptr %i.ix, align 2, !tbaa !56
  %i.iz = xor i8 %i.iy, -128
  %i.ja = getelementptr inbounds nuw i8, ptr %i.df, i64 150
  store i8 %i.iz, ptr %i.ja, align 2, !tbaa !56
  %i.jb = getelementptr inbounds nuw i8, ptr %.val, i64 4341
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !56
  %i.jd = xor i8 %i.jc, -128
  %i.je = getelementptr inbounds nuw i8, ptr %i.df, i64 151
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !56
  %i.jf = getelementptr inbounds nuw i8, ptr %.val, i64 4342
  %i.jg = load i8, ptr %i.jf, align 2, !tbaa !56
  %i.jh = xor i8 %i.jg, -128
  %i.ji = getelementptr inbounds nuw i8, ptr %i.df, i64 152
  store i8 %i.jh, ptr %i.ji, align 8, !tbaa !56
  %i.jj = getelementptr inbounds nuw i8, ptr %.val, i64 4343
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !56
  %i.jl = xor i8 %i.jk, -128
  %i.jm = getelementptr inbounds nuw i8, ptr %i.df, i64 153
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !56
  %i.jn = getelementptr inbounds nuw i8, ptr %.val, i64 4344
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !56
  %i.jp = xor i8 %i.jo, -128
  %i.jq = getelementptr inbounds nuw i8, ptr %i.df, i64 154
  store i8 %i.jp, ptr %i.jq, align 2, !tbaa !56
  %i.jr = getelementptr inbounds nuw i8, ptr %.val, i64 4345
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !56
  %i.jt = xor i8 %i.js, -128
  %i.ju = getelementptr inbounds nuw i8, ptr %i.df, i64 155
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !56
  %i.jv = getelementptr inbounds nuw i8, ptr %.val, i64 4346
  %i.jw = load i8, ptr %i.jv, align 2, !tbaa !56
  %i.jx = xor i8 %i.jw, -128
  %i.jy = getelementptr inbounds nuw i8, ptr %i.df, i64 156
  store i8 %i.jx, ptr %i.jy, align 4, !tbaa !56
  %i.jz = getelementptr inbounds nuw i8, ptr %.val, i64 4347
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !56
  %i.kb = xor i8 %i.ka, -128
  %i.kc = getelementptr inbounds nuw i8, ptr %i.df, i64 157
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !56
  %i.kd = getelementptr inbounds nuw i8, ptr %.val, i64 4348
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !56
  %i.kf = xor i8 %i.ke, -128
  %i.kg = getelementptr inbounds nuw i8, ptr %i.df, i64 158
  store i8 %i.kf, ptr %i.kg, align 2, !tbaa !56
  %i.kh = getelementptr inbounds nuw i8, ptr %.val, i64 4349
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !56
  %i.kj = xor i8 %i.ki, -128
  %i.kk = getelementptr inbounds nuw i8, ptr %i.df, i64 159
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !56
  %i.kl = getelementptr inbounds nuw i8, ptr %.val, i64 4350
  %i.km = load i8, ptr %i.kl, align 2, !tbaa !56
  %i.kn = xor i8 %i.km, -128
  %i.ko = getelementptr inbounds nuw i8, ptr %i.df, i64 160
  store i8 %i.kn, ptr %i.ko, align 8, !tbaa !56
  %i.kp = getelementptr inbounds nuw i8, ptr %.val, i64 4351
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !56
  %i.kr = xor i8 %i.kq, -128
  %i.ks = getelementptr inbounds nuw i8, ptr %i.df, i64 161
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !56
  %i.kt = getelementptr inbounds nuw i8, ptr %.val, i64 4352
  %i.ku = load i8, ptr %i.kt, align 2, !tbaa !56
  %i.kv = xor i8 %i.ku, -128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.df, i64 162
  store i8 %i.kv, ptr %i.kw, align 2, !tbaa !56
  %i.kx = getelementptr inbounds nuw i8, ptr %.val, i64 4353
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !56
  %i.kz = xor i8 %i.ky, -128
  %i.la = getelementptr inbounds nuw i8, ptr %i.df, i64 163
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !56
  %i.lb = getelementptr inbounds nuw i8, ptr %.val, i64 4354
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !56
  %i.ld = xor i8 %i.lc, -128
  %i.le = getelementptr inbounds nuw i8, ptr %i.df, i64 164
  store i8 %i.ld, ptr %i.le, align 4, !tbaa !56
  %i.lf = getelementptr inbounds nuw i8, ptr %.val, i64 4355
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !56
  %i.lh = xor i8 %i.lg, -128
  %i.li = getelementptr inbounds nuw i8, ptr %i.df, i64 165
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !56
  %i.lj = getelementptr inbounds nuw i8, ptr %.val, i64 4356
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !56
  %i.ll = xor i8 %i.lk, -128
  %i.lm = getelementptr inbounds nuw i8, ptr %i.df, i64 166
  store i8 %i.ll, ptr %i.lm, align 2, !tbaa !56
  %i.ln = getelementptr inbounds nuw i8, ptr %.val, i64 4357
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !56
  %i.lp = xor i8 %i.lo, -128
  %i.lq = getelementptr inbounds nuw i8, ptr %i.df, i64 167
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !56
  %i.lr = getelementptr inbounds nuw i8, ptr %.val, i64 4358
  %i.ls = load i8, ptr %i.lr, align 2, !tbaa !56
  %i.lt = xor i8 %i.ls, -128
  %i.lu = getelementptr inbounds nuw i8, ptr %i.df, i64 168
  store i8 %i.lt, ptr %i.lu, align 8, !tbaa !56
  %i.lv = getelementptr inbounds nuw i8, ptr %.val, i64 4359
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !56
  %i.lx = xor i8 %i.lw, -128
  %i.ly = getelementptr inbounds nuw i8, ptr %i.df, i64 169
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !56
  %i.lz = getelementptr inbounds nuw i8, ptr %.val, i64 4360
  %i.ma = load i8, ptr %i.lz, align 2, !tbaa !56
  %i.mb = xor i8 %i.ma, -128
  %i.mc = getelementptr inbounds nuw i8, ptr %i.df, i64 170
  store i8 %i.mb, ptr %i.mc, align 2, !tbaa !56
  %i.md = getelementptr inbounds nuw i8, ptr %.val, i64 4361
  %i.me = load i8, ptr %i.md, align 1, !tbaa !56
  %i.mf = xor i8 %i.me, -128
  %i.mg = getelementptr inbounds nuw i8, ptr %i.df, i64 171
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !56
  %i.mh = getelementptr inbounds nuw i8, ptr %.val, i64 4362
  %i.mi = getelementptr inbounds nuw i8, ptr %i.df, i64 172
  %i.mj = getelementptr inbounds nuw i8, ptr %.val, i64 4387
  %i.mk = getelementptr inbounds nuw i8, ptr %i.df, i64 197
  %i.ml = load i8, ptr %i.mh, align 2, !tbaa !56
  %i.mm = xor i8 %i.ml, -128
  store i8 %i.mm, ptr %i.mi, align 4, !tbaa !56
  %i.mn = load i8, ptr %i.mj, align 1, !tbaa !56
  %i.mo = xor i8 %i.mn, -128
  store i8 %i.mo, ptr %i.mk, align 1, !tbaa !56
  %i.mp = getelementptr inbounds nuw i8, ptr %.val, i64 4363
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !56
  %i.mr = xor i8 %i.mq, -128
  %i.ms = getelementptr inbounds nuw i8, ptr %i.df, i64 173
  store i8 %i.mr, ptr %i.ms, align 1, !tbaa !56
  %i.mt = getelementptr inbounds nuw i8, ptr %.val, i64 4388
  %i.mu = load i8, ptr %i.mt, align 2, !tbaa !56
  %i.mv = xor i8 %i.mu, -128
  %i.mw = getelementptr inbounds nuw i8, ptr %i.df, i64 198
  store i8 %i.mv, ptr %i.mw, align 2, !tbaa !56
  %i.mx = getelementptr inbounds nuw i8, ptr %.val, i64 4364
  %i.my = load i8, ptr %i.mx, align 2, !tbaa !56
  %i.mz = xor i8 %i.my, -128
  %i.na = getelementptr inbounds nuw i8, ptr %i.df, i64 174
  store i8 %i.mz, ptr %i.na, align 2, !tbaa !56
  %i.nb = getelementptr inbounds nuw i8, ptr %.val, i64 4389
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !56
  %i.nd = xor i8 %i.nc, -128
  %i.ne = getelementptr inbounds nuw i8, ptr %i.df, i64 199
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !56
  %i.nf = getelementptr inbounds nuw i8, ptr %.val, i64 4365
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !56
  %i.nh = xor i8 %i.ng, -128
  %i.ni = getelementptr inbounds nuw i8, ptr %i.df, i64 175
  store i8 %i.nh, ptr %i.ni, align 1, !tbaa !56
  %i.nj = getelementptr inbounds nuw i8, ptr %.val, i64 4390
  %i.nk = load i8, ptr %i.nj, align 2, !tbaa !56
  %i.nl = xor i8 %i.nk, -128
  %i.nm = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  store i8 %i.nl, ptr %i.nm, align 8, !tbaa !56
  %i.nn = getelementptr inbounds nuw i8, ptr %.val, i64 4366
  %i.no = load i8, ptr %i.nn, align 2, !tbaa !56
  %i.np = xor i8 %i.no, -128
  %i.nq = getelementptr inbounds nuw i8, ptr %i.df, i64 176
  store i8 %i.np, ptr %i.nq, align 8, !tbaa !56
  %i.nr = getelementptr inbounds nuw i8, ptr %.val, i64 4391
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !56
  %i.nt = xor i8 %i.ns, -128
  %i.nu = getelementptr inbounds nuw i8, ptr %i.df, i64 201
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !56
  %i.nv = getelementptr inbounds nuw i8, ptr %.val, i64 4367
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !56
  %i.nx = xor i8 %i.nw, -128
  %i.ny = getelementptr inbounds nuw i8, ptr %i.df, i64 177
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !56
  %i.nz = getelementptr inbounds nuw i8, ptr %.val, i64 4392
  %i.oa = load i8, ptr %i.nz, align 2, !tbaa !56
  %i.ob = xor i8 %i.oa, -128
  %i.oc = getelementptr inbounds nuw i8, ptr %i.df, i64 202
  store i8 %i.ob, ptr %i.oc, align 2, !tbaa !56
  %i.od = getelementptr inbounds nuw i8, ptr %.val, i64 4368
  %i.oe = load i8, ptr %i.od, align 2, !tbaa !56
  %i.of = xor i8 %i.oe, -128
  %i.og = getelementptr inbounds nuw i8, ptr %i.df, i64 178
  store i8 %i.of, ptr %i.og, align 2, !tbaa !56
  %i.oh = getelementptr inbounds nuw i8, ptr %.val, i64 4393
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !56
  %i.oj = xor i8 %i.oi, -128
  %i.ok = getelementptr inbounds nuw i8, ptr %i.df, i64 203
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !56
  %i.ol = getelementptr inbounds nuw i8, ptr %.val, i64 4369
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !56
  %i.on = xor i8 %i.om, -128
  %i.oo = getelementptr inbounds nuw i8, ptr %i.df, i64 179
  store i8 %i.on, ptr %i.oo, align 1, !tbaa !56
  %i.op = getelementptr inbounds nuw i8, ptr %.val, i64 4394
  %i.oq = load i8, ptr %i.op, align 2, !tbaa !56
  %i.or = xor i8 %i.oq, -128
  %i.os = getelementptr inbounds nuw i8, ptr %i.df, i64 204
  store i8 %i.or, ptr %i.os, align 4, !tbaa !56
  %i.ot = getelementptr inbounds nuw i8, ptr %.val, i64 4370
  %i.ou = load i8, ptr %i.ot, align 2, !tbaa !56
  %i.ov = xor i8 %i.ou, -128
  %i.ow = getelementptr inbounds nuw i8, ptr %i.df, i64 180
  store i8 %i.ov, ptr %i.ow, align 4, !tbaa !56
  %i.ox = getelementptr inbounds nuw i8, ptr %.val, i64 4395
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !56
  %i.oz = xor i8 %i.oy, -128
  %i.pa = getelementptr inbounds nuw i8, ptr %i.df, i64 205
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !56
  %i.pb = getelementptr inbounds nuw i8, ptr %.val, i64 4371
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !56
  %i.pd = xor i8 %i.pc, -128
  %i.pe = getelementptr inbounds nuw i8, ptr %i.df, i64 181
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !56
  %i.pf = getelementptr inbounds nuw i8, ptr %.val, i64 4396
  %i.pg = load i8, ptr %i.pf, align 2, !tbaa !56
  %i.ph = xor i8 %i.pg, -128
  %i.pi = getelementptr inbounds nuw i8, ptr %i.df, i64 206
  store i8 %i.ph, ptr %i.pi, align 2, !tbaa !56
  %i.pj = getelementptr inbounds nuw i8, ptr %.val, i64 4372
  %i.pk = load i8, ptr %i.pj, align 2, !tbaa !56
  %i.pl = xor i8 %i.pk, -128
  %i.pm = getelementptr inbounds nuw i8, ptr %i.df, i64 182
  store i8 %i.pl, ptr %i.pm, align 2, !tbaa !56
  %i.pn = getelementptr inbounds nuw i8, ptr %.val, i64 4397
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !56
  %i.pp = xor i8 %i.po, -128
  %i.pq = getelementptr inbounds nuw i8, ptr %i.df, i64 207
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !56
  %i.pr = getelementptr inbounds nuw i8, ptr %.val, i64 4373
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !56
  %i.pt = xor i8 %i.ps, -128
  %i.pu = getelementptr inbounds nuw i8, ptr %i.df, i64 183
  store i8 %i.pt, ptr %i.pu, align 1, !tbaa !56
  %i.pv = getelementptr inbounds nuw i8, ptr %.val, i64 4398
  %i.pw = load i8, ptr %i.pv, align 2, !tbaa !56
  %i.px = xor i8 %i.pw, -128
  %i.py = getelementptr inbounds nuw i8, ptr %i.df, i64 208
  store i8 %i.px, ptr %i.py, align 8, !tbaa !56
  %i.pz = getelementptr inbounds nuw i8, ptr %.val, i64 4374
  %i.qa = load i8, ptr %i.pz, align 2, !tbaa !56
  %i.qb = xor i8 %i.qa, -128
  %i.qc = getelementptr inbounds nuw i8, ptr %i.df, i64 184
  store i8 %i.qb, ptr %i.qc, align 8, !tbaa !56
  %i.qd = getelementptr inbounds nuw i8, ptr %.val, i64 4399
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !56
  %i.qf = xor i8 %i.qe, -128
  %i.qg = getelementptr inbounds nuw i8, ptr %i.df, i64 209
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !56
  %i.qh = getelementptr inbounds nuw i8, ptr %.val, i64 4375
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !56
  %i.qj = xor i8 %i.qi, -128
  %i.qk = getelementptr inbounds nuw i8, ptr %i.df, i64 185
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !56
  %i.ql = getelementptr inbounds nuw i8, ptr %.val, i64 4400
  %i.qm = load i8, ptr %i.ql, align 2, !tbaa !56
  %i.qn = xor i8 %i.qm, -128
  %i.qo = getelementptr inbounds nuw i8, ptr %i.df, i64 210
  store i8 %i.qn, ptr %i.qo, align 2, !tbaa !56
  %i.qp = getelementptr inbounds nuw i8, ptr %.val, i64 4376
  %i.qq = load i8, ptr %i.qp, align 2, !tbaa !56
  %i.qr = xor i8 %i.qq, -128
  %i.qs = getelementptr inbounds nuw i8, ptr %i.df, i64 186
  store i8 %i.qr, ptr %i.qs, align 2, !tbaa !56
  %i.qt = getelementptr inbounds nuw i8, ptr %.val, i64 4401
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !56
  %i.qv = xor i8 %i.qu, -128
  %i.qw = getelementptr inbounds nuw i8, ptr %i.df, i64 211
  store i8 %i.qv, ptr %i.qw, align 1, !tbaa !56
  %i.qx = getelementptr inbounds nuw i8, ptr %.val, i64 4377
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !56
  %i.qz = xor i8 %i.qy, -128
  %i.ra = getelementptr inbounds nuw i8, ptr %i.df, i64 187
  store i8 %i.qz, ptr %i.ra, align 1, !tbaa !56
  %i.rb = getelementptr inbounds nuw i8, ptr %.val, i64 4402
  %i.rc = load i8, ptr %i.rb, align 2, !tbaa !56
  %i.rd = xor i8 %i.rc, -128
  %i.re = getelementptr inbounds nuw i8, ptr %i.df, i64 212
  store i8 %i.rd, ptr %i.re, align 4, !tbaa !56
  %i.rf = getelementptr inbounds nuw i8, ptr %.val, i64 4378
  %i.rg = load i8, ptr %i.rf, align 2, !tbaa !56
  %i.rh = xor i8 %i.rg, -128
  %i.ri = getelementptr inbounds nuw i8, ptr %i.df, i64 188
  store i8 %i.rh, ptr %i.ri, align 4, !tbaa !56
  %i.rj = getelementptr inbounds nuw i8, ptr %.val, i64 4403
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !56
  %i.rl = xor i8 %i.rk, -128
  %i.rm = getelementptr inbounds nuw i8, ptr %i.df, i64 213
  store i8 %i.rl, ptr %i.rm, align 1, !tbaa !56
  %i.rn = getelementptr inbounds nuw i8, ptr %.val, i64 4379
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !56
  %i.rp = xor i8 %i.ro, -128
  %i.rq = getelementptr inbounds nuw i8, ptr %i.df, i64 189
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !56
  %i.rr = getelementptr inbounds nuw i8, ptr %.val, i64 4404
  %i.rs = load i8, ptr %i.rr, align 2, !tbaa !56
  %i.rt = xor i8 %i.rs, -128
  %i.ru = getelementptr inbounds nuw i8, ptr %i.df, i64 214
  store i8 %i.rt, ptr %i.ru, align 2, !tbaa !56
  %i.rv = getelementptr inbounds nuw i8, ptr %.val, i64 4380
  %i.rw = load i8, ptr %i.rv, align 2, !tbaa !56
  %i.rx = xor i8 %i.rw, -128
  %i.ry = getelementptr inbounds nuw i8, ptr %i.df, i64 190
  store i8 %i.rx, ptr %i.ry, align 2, !tbaa !56
  %i.rz = getelementptr inbounds nuw i8, ptr %.val, i64 4405
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !56
  %i.sb = xor i8 %i.sa, -128
  %i.sc = getelementptr inbounds nuw i8, ptr %i.df, i64 215
  store i8 %i.sb, ptr %i.sc, align 1, !tbaa !56
  %i.sd = getelementptr inbounds nuw i8, ptr %.val, i64 4381
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !56
  %i.sf = xor i8 %i.se, -128
  %i.sg = getelementptr inbounds nuw i8, ptr %i.df, i64 191
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !56
  %i.sh = getelementptr inbounds nuw i8, ptr %.val, i64 4406
  %i.si = load i8, ptr %i.sh, align 2, !tbaa !56
  %i.sj = xor i8 %i.si, -128
  %i.sk = getelementptr inbounds nuw i8, ptr %i.df, i64 216
  store i8 %i.sj, ptr %i.sk, align 8, !tbaa !56
  %i.sl = getelementptr inbounds nuw i8, ptr %.val, i64 4382
  %i.sm = load i8, ptr %i.sl, align 2, !tbaa !56
  %i.sn = xor i8 %i.sm, -128
  %i.so = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  store i8 %i.sn, ptr %i.so, align 8, !tbaa !56
  %i.sp = getelementptr inbounds nuw i8, ptr %.val, i64 4407
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !56
  %i.sr = xor i8 %i.sq, -128
  %i.ss = getelementptr inbounds nuw i8, ptr %i.df, i64 217
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !56
  %i.st = getelementptr inbounds nuw i8, ptr %.val, i64 4383
  %i.su = load i8, ptr %i.st, align 1, !tbaa !56
  %i.sv = xor i8 %i.su, -128
  %i.sw = getelementptr inbounds nuw i8, ptr %i.df, i64 193
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !56
  %i.sx = getelementptr inbounds nuw i8, ptr %.val, i64 4408
  %i.sy = load i8, ptr %i.sx, align 2, !tbaa !56
  %i.sz = xor i8 %i.sy, -128
  %i.ta = getelementptr inbounds nuw i8, ptr %i.df, i64 218
  store i8 %i.sz, ptr %i.ta, align 2, !tbaa !56
  %i.tb = getelementptr inbounds nuw i8, ptr %.val, i64 4384
  %i.tc = load i8, ptr %i.tb, align 2, !tbaa !56
  %i.td = xor i8 %i.tc, -128
  %i.te = getelementptr inbounds nuw i8, ptr %i.df, i64 194
  store i8 %i.td, ptr %i.te, align 2, !tbaa !56
  %i.tf = getelementptr inbounds nuw i8, ptr %.val, i64 4409
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !56
  %i.th = xor i8 %i.tg, -128
  %i.ti = getelementptr inbounds nuw i8, ptr %i.df, i64 219
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !56
  %i.tj = getelementptr inbounds nuw i8, ptr %.val, i64 4385
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !56
  %i.tl = xor i8 %i.tk, -128
  %i.tm = getelementptr inbounds nuw i8, ptr %i.df, i64 195
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !56
  %i.tn = getelementptr inbounds nuw i8, ptr %.val, i64 4410
  %i.to = load i8, ptr %i.tn, align 2, !tbaa !56
  %i.tp = xor i8 %i.to, -128
  %i.tq = getelementptr inbounds nuw i8, ptr %i.df, i64 220
  store i8 %i.tp, ptr %i.tq, align 4, !tbaa !56
  %i.tr = getelementptr inbounds nuw i8, ptr %.val, i64 4386
  %i.ts = load i8, ptr %i.tr, align 2, !tbaa !56
  %i.tt = xor i8 %i.ts, -128
  %i.tu = getelementptr inbounds nuw i8, ptr %i.df, i64 196
  store i8 %i.tt, ptr %i.tu, align 4, !tbaa !56
  %i.tv = getelementptr inbounds nuw i8, ptr %.val, i64 4411
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !56
  %i.tx = xor i8 %i.tw, -128
  %i.ty = getelementptr inbounds nuw i8, ptr %i.df, i64 221
  store i8 %i.tx, ptr %i.ty, align 1, !tbaa !56
  %i.tz = getelementptr inbounds nuw i8, ptr %.val, i64 4414
  %i.ua = load i8, ptr %i.tz, align 2, !tbaa !270
  %i.ub = zext i8 %i.ua to i32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.df, i64 232
  store i32 %i.ub, ptr %i.uc, align 8, !tbaa !68
  %i.ud = getelementptr inbounds nuw i8, ptr %.val, i64 4418
  %i.ue = load i8, ptr %i.ud, align 2, !tbaa !271
  %i.uf = zext i8 %i.ue to i32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.df, i64 236
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !68
  %i.uh = getelementptr inbounds nuw i8, ptr %.val, i64 4415
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !272
  %i.uj = zext i8 %i.ui to i32
  %i.uk = getelementptr inbounds nuw i8, ptr %i.df, i64 240
  store i32 %i.uj, ptr %i.uk, align 8, !tbaa !68
  %i.ul = getelementptr inbounds nuw i8, ptr %.val, i64 4419
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !273
  %i.un = zext i8 %i.um to i32
  %i.uo = getelementptr inbounds nuw i8, ptr %i.df, i64 244
  store i32 %i.un, ptr %i.uo, align 4, !tbaa !68
  %i.up = getelementptr inbounds nuw i8, ptr %.val, i64 4416
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !268
  %i.ur = zext i16 %i.uq to i32
  %i.us = getelementptr inbounds nuw i8, ptr %i.df, i64 248
  store i32 %i.ur, ptr %i.us, align 8, !tbaa !68
  %i.ut = getelementptr inbounds nuw i8, ptr %.val, i64 4420
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !269
  %i.uv = zext i16 %i.uu to i32
  %i.uw = getelementptr inbounds nuw i8, ptr %i.df, i64 252
  store i32 %i.uv, ptr %i.uw, align 4, !tbaa !68
  br label %export_film_grain.exit.thread
}

declare ptr @av_buffer_ref(ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

declare void @ff_progress_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

declare i32 @ff_decode_mastering_display_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_decode_content_light_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_itut_t35_parse_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_itut_t35_parse_payload_to_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare ptr @av_film_grain_params_create_side_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @av1_frame_unref(ptr noundef %0) unnamed_addr #1 {
bb.a:
  tail call void @ff_progress_frame_unref(ptr noundef %0) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(169) %i.d, i8 0, i64 169, i1 false)
  ret void
}

declare ptr @av_refstruct_ref(ptr noundef) local_unnamed_addr #2

declare void @ff_progress_frame_unref(ptr noundef) local_unnamed_addr #2

declare void @av_refstruct_unref(ptr noundef) local_unnamed_addr #2

declare i32 @av_reallocp_array(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_get_format(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_get_pix_fmt_name(i32 noundef) local_unnamed_addr #2

declare i32 @ff_progress_frame_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_hwaccel_frame_priv_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_set_sar(ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @read_global_param(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, 4) %1, i32 noundef range(i32 -2147483648, 8) %2, i32 noundef range(i32 0, 6) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.d = load i8, ptr %i.c, align 4, !tbaa !79    ; 2 uses
  %i.e = icmp eq i8 %i.d, 7
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4064
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 190
  %i.h = zext i8 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !56
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr [448 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 480
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink42 = phi ptr [ %i.m, %bb.c ], [ %i.f, %bb.b ]
  %i.n = sext i32 %2 to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %.sink42, i64 %i.n
  %i.p = zext nneg i32 %3 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %.0 = load i32, ptr %i.q, align 4, !tbaa !68
  %i.r = icmp samesign ult i32 %3, 2
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %1, 1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.u = load i8, ptr %i.t, align 4, !tbaa !274
  %.not = icmp eq i8 %i.u, 0                      ; 2 uses
  %i.v = select i1 %.not, i32 8, i32 9
  %i.w = select i1 %.not, i32 2, i32 3
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.034 = phi i32 [ %i.v, %bb.f ], [ 12, %bb.d ], [ 12, %bb.e ]
  %.033 = phi i32 [ %i.w, %bb.f ], [ 15, %bb.d ], [ 6, %bb.e ] ; 2 uses
  %.urem = add nsw i32 %3, -3
  %.cmp = icmp samesign ult i32 %3, 3
  %i.x = select i1 %.cmp, i32 %3, i32 %.urem
  %i.y = icmp eq i32 %i.x, 2                      ; 2 uses
  %i.z = sub nuw nsw i32 16, %.033                ; 2 uses
  %.neg = shl nsw i32 -1, %.033
  %.neg36 = select i1 %i.y, i32 %.neg, i32 0
  %i.aa = shl nuw nsw i32 1, %.034                ; 4 uses
  %i.ab = ashr i32 %.0, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 812
  %i.ad = sext i32 %2 to i64                      ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !68 ; 10 uses
  %i.ai = or disjoint i32 %i.aa, 1
  %i.aj = add nuw nsw i32 %i.ai, %i.aa            ; 2 uses
  %i.ak = add nsw i32 %i.ab, %i.aa
  %i.al = add nsw i32 %i.ak, %.neg36              ; 4 uses
  %i.am = shl i32 %i.al, 1                        ; 2 uses
  %.not.i.i = icmp sgt i32 %i.am, %i.aj
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp ugt i32 %i.ah, %i.am
  br i1 %i.an, label %decode_signed_subexp_with_ref.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %i.ah, 1
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add nuw i32 %i.ah, 1
  %i.aq = lshr exact i32 %i.ap, 1
  %i.ar = sub i32 %i.al, %i.aq
  br label %decode_signed_subexp_with_ref.exit

bb.k:                                             ; preds = %bb.i
  %i.as = lshr exact i32 %i.ah, 1
  %i.at = add i32 %i.al, %i.as
  br label %decode_signed_subexp_with_ref.exit

bb.l:                                             ; preds = %bb.g
  %i.au = add nsw i32 %i.aj, -1                   ; 2 uses
  %i.av = sub nsw i32 %i.au, %i.al                ; 3 uses
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = icmp ugt i32 %i.ah, %i.aw
  br i1 %i.ax, label %inverse_recenter.exit12.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = and i32 %i.ah, 1
  %.not.i10.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i10.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = add i32 %i.ah, 1
  %i.ba = lshr exact i32 %i.az, 1
  %i.bb = sub i32 %i.av, %i.ba
  br label %inverse_recenter.exit12.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = lshr exact i32 %i.ah, 1
  %i.bd = add i32 %i.av, %i.bc
  br label %inverse_recenter.exit12.i.i

inverse_recenter.exit12.i.i:                      ; preds = %bb.o, %bb.n, %bb.l
  %.0.i11.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.bb, %bb.n ], [ %i.ah, %bb.l ]
  %i.be = sub i32 %i.au, %.0.i11.i.i
  br label %decode_signed_subexp_with_ref.exit

decode_signed_subexp_with_ref.exit:               ; preds = %bb.h, %bb.j, %bb.k, %inverse_recenter.exit12.i.i
  %.0.i.i = phi i32 [ %i.be, %inverse_recenter.exit12.i.i ], [ %i.at, %bb.k ], [ %i.ar, %bb.j ], [ %i.ah, %bb.h ]
  %i.bf = select i1 %i.y, i32 65536, i32 0
  %i.bg = sub nsw i32 %.0.i.i, %i.aa
  %i.bh = shl i32 %i.bg, %i.z
  %i.bi = add i32 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4064
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.ad
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.af
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !68
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_fifo_freep2(ptr noundef) local_unnamed_addr #2

declare void @ff_cbs_fragment_free(ptr noundef) local_unnamed_addr #2

declare void @ff_cbs_close(ptr noundef) local_unnamed_addr #2

declare void @ff_dovi_ctx_unref(ptr noundef) local_unnamed_addr #2

declare void @ff_cbs_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"p1 _ZTS21CodedBitstreamContext", !9, i64 0}
!31 = !{!"p1 _ZTS18CodedBitstreamUnit", !9, i64 0}
!32 = !{!"CodedBitstreamFragment", !14, i64 0, !13, i64 8, !13, i64 16, !21, i64 24, !6, i64 32, !6, i64 36, !31, i64 40}
!33 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!34 = !{!"p1 _ZTS9AV1RawOBU", !9, i64 0}
!35 = !{!"p1 _ZTS20AV1RawSequenceHeader", !9, i64 0}
!36 = !{!"p1 _ZTS17AV1RawFrameHeader", !9, i64 0}
!37 = !{!"p1 _ZTS13TileGroupInfo", !9, i64 0}
!38 = !{!"p1 _ZTS20AV1RawMetadataHDRCLL", !9, i64 0}
!39 = !{!"p1 _ZTS21AV1RawMetadataHDRMDCV", !9, i64 0}
!40 = !{!"AVDOVIDecoderConfigurationRecord", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8}
!41 = !{!"short", !5, i64 0}
!42 = !{!"AVDOVIRpuDataHeader", !5, i64 0, !41, i64 2, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15, !5, i64 16, !5, i64 17, !5, i64 18}
!43 = !{!"p1 _ZTS17AVDOVIDataMapping", !9, i64 0}
!44 = !{!"p1 _ZTS19AVDOVIColorMetadata", !9, i64 0}
!45 = !{!"p1 _ZTS7DOVIExt", !9, i64 0}
!46 = !{!"DOVIContext", !9, i64 0, !6, i64 8, !40, i64 12, !42, i64 22, !43, i64 48, !44, i64 56, !45, i64 64, !44, i64 72, !5, i64 80, !14, i64 208, !6, i64 216}
!47 = !{!"p1 _ZTS6AVFifo", !9, i64 0}
!48 = !{!"AV1RawFilmGrainParams", !5, i64 0, !41, i64 2, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 21, !5, i64 35, !5, i64 36, !5, i64 37, !5, i64 47, !5, i64 57, !5, i64 58, !5, i64 68, !5, i64 78, !5, i64 79, !5, i64 80, !5, i64 104, !5, i64 129, !5, i64 154, !5, i64 155, !5, i64 156, !5, i64 157, !41, i64 158, !5, i64 160, !5, i64 161, !41, i64 162, !5, i64 164, !5, i64 165}
!49 = !{!"AV1Frame", !5, i64 0, !9, i64 16, !34, i64 24, !36, i64 32, !6, i64 40, !6, i64 44, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 256, !48, i64 258, !5, i64 424, !5, i64 425, !5, i64 426, !5, i64 434, !5, i64 442}
!50 = !{!"AV1DecContext", !10, i64 0, !29, i64 8, !6, i64 16, !30, i64 24, !32, i64 32, !33, i64 80, !21, i64 88, !34, i64 96, !35, i64 104, !34, i64 112, !36, i64 120, !37, i64 128, !34, i64 136, !38, i64 144, !34, i64 152, !39, i64 160, !46, i64 168, !47, i64 392, !41, i64 400, !41, i64 402, !41, i64 404, !6, i64 408, !5, i64 416, !49, i64 4000, !6, i64 4448, !6, i64 4452, !6, i64 4456}
!51 = !{!50, !33, i64 80}
!52 = !{!50, !6, i64 16}
!53 = !{!50, !30, i64 24}
!54 = !{!50, !47, i64 392}
!55 = !{!50, !6, i64 4456}
!56 = !{!5, !5, i64 0}
!57 = !{!50, !35, i64 104}
!58 = !{!50, !36, i64 120}
!59 = !{!41, !41, i64 0}
!60 = !{!50, !6, i64 408}
end_hunk_0
begin_hunk_1_@llvm.assume
!66 = !{!49, !36, i64 32}
!67 = !{!49, !9, i64 16}
!68 = !{!6, !6, i64 0}
!69 = !{!49, !5, i64 424}
!70 = !{!49, !5, i64 425}
!71 = !{!49, !5, i64 442}
!72 = !{!27, !6, i64 136}
!73 = !{!27, !6, i64 112}
!74 = !{!27, !6, i64 116}
!75 = !{!"p2 omnipotent char", !25, i64 0}
!76 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!77 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!78 = !{!"AVFrame", !5, i64 0, !5, i64 64, !75, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !76, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !77, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!79 = !{!64, !5, i64 156}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"AV1RawTimingInfo", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 12}
!82 = !{!"AV1RawDecoderModelInfo", !5, i64 0, !6, i64 4, !5, i64 8, !5, i64 9}
!83 = !{!"AV1RawColorConfig", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11}
!84 = !{!"AV1RawSequenceHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !81, i64 8, !82, i64 24, !5, i64 36, !5, i64 100, !5, i64 132, !5, i64 164, !5, i64 196, !5, i64 324, !5, i64 452, !5, i64 484, !5, i64 516, !5, i64 548, !5, i64 549, !41, i64 550, !41, i64 552, !5, i64 554, !5, i64 555, !5, i64 556, !5, i64 557, !5, i64 558, !5, i64 559, !5, i64 560, !5, i64 561, !5, i64 562, !5, i64 563, !5, i64 564, !5, i64 565, !5, i64 566, !5, i64 567, !5, i64 568, !5, i64 569, !5, i64 570, !5, i64 571, !5, i64 572, !5, i64 573, !5, i64 574, !83, i64 575, !5, i64 587}
!85 = !{!48, !5, i64 0}
!86 = !{!48, !41, i64 2}
!87 = !{!50, !38, i64 144}
!88 = !{!50, !39, i64 160}
!89 = !{!"AV1RawMetadataITUTT35", !5, i64 0, !5, i64 1, !14, i64 8, !21, i64 16, !13, i64 24}
!90 = !{!84, !5, i64 0}
!91 = !{!50, !29, i64 8}
!92 = !{!27, !12, i64 40}
!93 = !{!"p1 _ZTS9FramePool", !9, i64 0}
!94 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!95 = !{!"p1 _ZTS12AVBSFContext", !9, i64 0}
!96 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!97 = !{!"AVCodecInternal", !6, i64 0, !6, i64 4, !6, i64 8, !93, i64 16, !94, i64 24, !9, i64 32, !33, i64 40, !95, i64 48, !33, i64 56, !14, i64 64, !6, i64 72, !9, i64 80, !96, i64 88, !96, i64 96, !6, i64 104, !6, i64 108, !9, i64 112, !6, i64 120, !33, i64 128, !96, i64 136, !6, i64 144, !6, i64 148}
!98 = !{!97, !33, i64 40}
!99 = !{!"p1 _ZTS18CodedBitstreamType", !9, i64 0}
!100 = !{!"CodedBitstreamContext", !9, i64 0, !99, i64 8, !9, i64 16, !24, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !14, i64 72, !13, i64 80}
!101 = !{!100, !24, i64 24}
!102 = !{!100, !6, i64 32}
!103 = !{!100, !9, i64 16}
!104 = !{!27, !14, i64 72}
!105 = !{!27, !6, i64 80}
!106 = !{!"CodedBitstreamAV1Context", !10, i64 0, !35, i64 8, !34, i64 16, !6, i64 24, !21, i64 32, !14, i64 40, !13, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !5, i64 120, !5, i64 152, !5, i64 184, !6, i64 2456, !6, i64 2460, !5, i64 2464, !5, i64 2472, !5, i64 2474, !5, i64 2538}
!107 = !{!106, !35, i64 8}
!108 = !{!50, !9, i64 168}
!109 = !{!50, !5, i64 182}
!110 = !{!"AVPacketSideData", !14, i64 0, !13, i64 8, !6, i64 16}
!111 = !{!110, !13, i64 8}
!112 = !{!110, !14, i64 0}
!113 = !{i64 0, i64 1, !56, i64 1, i64 1, !56, i64 2, i64 1, !56, i64 3, i64 1, !56, i64 4, i64 1, !56, i64 5, i64 1, !56, i64 6, i64 1, !56, i64 7, i64 1, !56, i64 8, i64 1, !56}
!114 = distinct !{null}
!115 = distinct !{null, null}
!116 = distinct !{!116, !80}
!117 = distinct !{!117, !80}
!118 = distinct !{!118, !188}
!119 = distinct !{!119, !80}
!120 = distinct !{!120, !80}
!121 = distinct !{!121, !80}
!122 = !{!50, !6, i64 64}
!123 = !{!50, !6, i64 4452}
!124 = !{!50, !6, i64 4448}
!125 = !{!50, !31, i64 72}
!126 = !{!"CodedBitstreamUnit", !6, i64 0, !14, i64 8, !13, i64 16, !13, i64 24, !21, i64 32, !9, i64 40, !9, i64 48}
!127 = !{!126, !9, i64 40}
!128 = !{!126, !6, i64 0}
!129 = !{!126, !21, i64 32}
!130 = !{!126, !14, i64 8}
!131 = !{!50, !21, i64 88}
!132 = !{!"p1 _ZTS8AVBuffer", !9, i64 0}
!133 = !{!"AVBufferRef", !132, i64 0, !14, i64 8, !13, i64 16}
!134 = !{!133, !14, i64 8}
!135 = !{!126, !13, i64 16}
!136 = !{!133, !13, i64 16}
!137 = !{!126, !9, i64 48}
!138 = !{!63, !9, i64 40}
!139 = !{!64, !5, i64 0}
!140 = !{!64, !5, i64 1}
!141 = !{!50, !34, i64 112}
!142 = !{!50, !34, i64 4024}
!143 = !{!50, !36, i64 4032}
!144 = !{!64, !41, i64 498}
!145 = !{!64, !41, i64 500}
!146 = !{!50, !41, i64 400}
!147 = !{!27, !6, i64 704}
!148 = !{!64, !5, i64 12}
!149 = !{!64, !41, i64 158}
!150 = !{!64, !41, i64 160}
!151 = !{!64, !41, i64 166}
!152 = !{!64, !41, i64 168}
!153 = !{!78, !6, i64 276}
!154 = !{!78, !6, i64 120}
!155 = !{!64, !5, i64 782}
!156 = !{!84, !5, i64 564}
!157 = !{!64, !5, i64 25}
!158 = !{!84, !5, i64 571}
!159 = !{!64, !5, i64 503}
!160 = !{!64, !5, i64 506}
!161 = !{!64, !5, i64 505}
!162 = !{!64, !5, i64 508}
!163 = !{!64, !5, i64 507}
!164 = !{!50, !5, i64 4424}
!165 = !{!64, !5, i64 502}
!166 = !{!48, !5, i64 4}
!167 = !{!48, !5, i64 5}
!168 = !{!64, !5, i64 18}
!169 = !{!50, !5, i64 4442}
!170 = !{!63, !9, i64 32}
!171 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!172 = !{!171, !21, i64 0}
!173 = !{!"AV1RawTileData", !14, i64 0, !21, i64 8, !13, i64 16}
!174 = !{!"AV1RawTileGroup", !14, i64 0, !21, i64 8, !13, i64 16, !5, i64 24, !41, i64 26, !41, i64 28, !173, i64 32}
!175 = !{!174, !14, i64 32}
!176 = !{!174, !13, i64 48}
!177 = !{!174, !41, i64 26}
!178 = !{!50, !41, i64 402}
!179 = !{!174, !41, i64 28}
!180 = !{!50, !41, i64 404}
!181 = !{!64, !5, i64 496}
!182 = !{!50, !37, i64 128}
!183 = !{!"TileGroupInfo", !6, i64 0, !6, i64 4, !41, i64 8, !41, i64 10}
!184 = !{!183, !6, i64 4}
!185 = !{!183, !6, i64 0}
!186 = !{!183, !41, i64 8}
!187 = !{!183, !41, i64 10}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !{!63, !9, i64 48}
!190 = !{!89, !21, i64 16}
!191 = !{!64, !5, i64 13}
!192 = !{!63, !9, i64 56}
!193 = !{!21, !21, i64 0}
!194 = distinct !{!194, !80}
!195 = distinct !{!195, !80}
!196 = distinct !{!196, !80}
!197 = distinct !{!197, !80}
!198 = !{!63, !9, i64 120}
!199 = !{!84, !41, i64 550}
!200 = !{!84, !41, i64 552}
!201 = !{!27, !6, i64 688}
!202 = !{!27, !6, i64 692}
!203 = !{!84, !5, i64 578}
!204 = !{!84, !5, i64 582}
!205 = !{!27, !6, i64 156}
!206 = !{!84, !5, i64 581}
!207 = !{!27, !6, i64 152}
!208 = !{!84, !5, i64 585}
!209 = !{!27, !6, i64 160}
!210 = !{!84, !5, i64 3}
!211 = !{!84, !6, i64 20}
!212 = !{!84, !6, i64 8}
!213 = !{!84, !6, i64 12}
!214 = !{!84, !5, i64 575}
!215 = !{!84, !5, i64 576}
!216 = !{!84, !5, i64 577}
!217 = !{!84, !5, i64 583}
!218 = !{!84, !5, i64 584}
!219 = distinct !{!219, !80}
!220 = !{!64, !5, i64 177}
!221 = distinct !{!221, !80}
!222 = distinct !{!222, !80}
!223 = distinct !{!223, !80}
!224 = distinct !{!224, !80}
!225 = !{!50, !6, i64 4044}
!226 = !{!"p1 _ZTS26AVMasteringDisplayMetadata", !9, i64 0}
!227 = !{!226, !226, i64 0}
!228 = !{!"AV1RawMetadataHDRMDCV", !5, i64 0, !5, i64 6, !41, i64 12, !41, i64 14, !6, i64 16, !6, i64 20}
!229 = !{!228, !41, i64 12}
!230 = !{!228, !41, i64 14}
!231 = !{!228, !6, i64 16}
!232 = !{!228, !6, i64 20}
!233 = !{!"AVMasteringDisplayMetadata", !5, i64 0, !5, i64 48, !15, i64 64, !15, i64 72, !6, i64 80, !6, i64 84}
!234 = !{!233, !6, i64 80}
!235 = !{!233, !6, i64 84}
!236 = !{!"p1 _ZTS22AVContentLightMetadata", !9, i64 0}
!237 = !{!236, !236, i64 0}
!238 = !{!89, !5, i64 0}
!239 = !{!"FFITUTT35", !6, i64 0, !6, i64 4, !6, i64 8, !14, i64 16, !13, i64 24}
!240 = !{!239, !6, i64 0}
!241 = !{!"p1 _ZTS11DOVIContext", !9, i64 0}
!242 = !{!"FFITUTT35Aux", !241, i64 0}
!243 = !{!242, !241, i64 0}
!244 = !{!89, !14, i64 8}
!245 = !{!89, !13, i64 24}
!246 = !{!27, !6, i64 788}
!247 = !{!78, !6, i64 116}
!248 = !{!"AVFilmGrainParams", !6, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !5, i64 56}
!249 = !{!248, !6, i64 0}
!250 = !{!248, !13, i64 8}
!251 = !{!48, !5, i64 35}
!252 = !{!"AVFilmGrainAOMParams", !6, i64 0, !5, i64 4, !6, i64 32, !5, i64 36, !5, i64 44, !6, i64 84, !6, i64 88, !5, i64 92, !5, i64 116, !6, i64 168, !6, i64 172, !5, i64 176, !5, i64 184, !5, i64 192, !6, i64 200, !6, i64 204}
!253 = !{!252, !6, i64 32}
!254 = !{!48, !5, i64 78}
!255 = !{!252, !6, i64 84}
!256 = !{!48, !5, i64 79}
!257 = !{!252, !6, i64 88}
!258 = !{!48, !5, i64 154}
!259 = !{!252, !6, i64 168}
!260 = !{!48, !5, i64 155}
!261 = !{!252, !6, i64 172}
!262 = !{!48, !5, i64 6}
!263 = !{!252, !6, i64 0}
!264 = !{!48, !5, i64 36}
!265 = !{!48, !5, i64 57}
!266 = !{!"branch_weights", i32 1, i32 1048575}
!267 = !{!13, !13, i64 0}
!268 = !{!48, !41, i64 158}
!269 = !{!48, !41, i64 162}
!270 = !{!48, !5, i64 156}
!271 = !{!48, !5, i64 160}
!272 = !{!48, !5, i64 157}
!273 = !{!48, !5, i64 161}
!274 = !{!64, !5, i64 228}
end_hunk_1
