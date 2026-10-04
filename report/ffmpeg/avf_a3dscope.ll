Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_a3dscope?download=true
inline.NumInlined: 17
inline.NumDeleted: 9
begin_hunk_0_@uninit:bb.a
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !34
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = tail call ptr @ff_make_sample_format_list(ptr noundef nonnull @query_formats.sample_fmts) #10
  %i.b = load ptr, ptr %1, align 8, !tbaa !36
  %i.c = tail call i32 @ff_formats_ref(ptr noundef %i.a, ptr noundef %i.b) #10 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.pix_fmts) #10
  %i.f = load ptr, ptr %2, align 8, !tbaa !36
  %i.g = tail call i32 @ff_formats_ref(ptr noundef %i.e, ptr noundef %i.f) #10
  %. = tail call i32 @llvm.smin.i32(i32 %i.g, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.m = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #10 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.g, i32 noundef %i.m) #10
  br label %bb.s

.critedge:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 68 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !24   ; 2 uses
  %i.p = call i32 @ff_inlink_consume_samples(ptr noundef %i.g, i32 noundef %i.o, i32 noundef %i.o, ptr noundef nonnull %i.b) #10 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.s, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 43 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47  ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = sitofp nsz i32 %i.ab to float
  %i.ad = fmul nnan nsz float %i.ac, 5.000000e-01 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sitofp nsz i32 %i.ag to float
  %i.ai = fmul nnan nsz float %i.ah, 5.000000e-01 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 44 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !50
  %i.an = call ptr @ff_get_video_buffer(ptr noundef %i.w, i32 noundef %i.ak, i32 noundef %i.am) #10 ; 10 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %filter_frame.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 200 ; 4 uses
  store ptr %i.r, ptr %i.ao, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 124
  store i32 1, ptr %i.ap, align 4, !tbaa !33
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  store i32 1, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !33
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !50
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.au = load i64, ptr %i.at, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = call i64 @av_rescale_q(i64 noundef %i.au, i64 %i.ax, i64 %i.ay) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 408
  store i64 1, ptr %i.bb, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.bd = fdiv nsz float %i.ai, %i.ad
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i8 0, i64 12, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  store <2 x float> <float f0xBF800002, float -1.000000e+00>, ptr %i.bh, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  store float f0xBDCCCCCE, ptr %i.bi, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.bn = load <2 x float>, ptr %i.bc, align 4, !tbaa !58
  %i.bo = fmul nsz <2 x float> %i.bn, <float 5.000000e-01, float 1.000000e+00>
  %i.bp = fpext <2 x float> %i.bo to <2 x double>
  %i.bq = fmul nsz <2 x double> %i.bp, splat (double f0x400921FB54442D18)
  %i.br = fdiv nsz <2 x double> %i.bq, splat (double 1.800000e+02)
  %i.bs = fptrunc <2 x double> %i.br to <2 x float> ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = call nsz float @llvm.tan.f32(float %i.bt)
  %i.bv = fdiv nsz float 1.000000e+00, %i.bu      ; 4 uses
  %i.bw = fmul nsz float %i.bd, %i.bv             ; 3 uses
  store float %i.bw, ptr %i.be, align 8, !tbaa !58
  store float %i.bv, ptr %i.bg, align 4, !tbaa !58
  %i.bx = extractelement <2 x float> %i.bs, i64 1
  %sincos.i.i = call nsz { float, float } @llvm.sincos.f32(float %i.bx) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 4 uses
  %i.by = fneg nsz float %sin.i.i                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !58 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 116
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 132
  %i.co = load float, ptr %i.bj, align 8, !tbaa !58 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !58 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !58 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 148
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !58 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !58 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.da = load float, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  %i.dc = load float, ptr %i.db, align 4, !tbaa !58 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.de = load float, ptr %i.dd, align 8, !tbaa !58 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 172
  %i.dg = load float, ptr %i.df, align 4, !tbaa !58 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.di = getelementptr inbounds nuw i8, ptr %i.y, i64 188
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !58 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.bk, align 4, !tbaa !58 ; 6 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dn = extractelement <2 x float> %i.dl, i64 0
  %i.do = fmul nsz float %i.dn, 0.000000e+00      ; 3 uses
  %i.dp = load <2 x float>, ptr %i.bl, align 4, !tbaa !58
  %i.dq = fpext <2 x float> %i.dp to <2 x double>
  %i.dr = fmul nsz <2 x double> %i.dq, splat (double f0x400921FB54442D18)
  %i.ds = fdiv nsz <2 x double> %i.dr, splat (double 1.800000e+02)
  %i.dt = fptrunc <2 x double> %i.ds to <2 x float>
  %i.du = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.dt) ; 2 uses
  %i.dv = extractvalue { <2 x float>, <2 x float> } %i.du, 0 ; 9 uses
  %1 = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dx = extractelement <2 x float> %i.dv, i64 0
  %i.dy = extractvalue { <2 x float>, <2 x float> } %i.du, 1 ; 9 uses
  %i.dz = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.ea = fneg nsz float %i.dz                    ; 3 uses
  %i.eb = fneg nsz float %i.dx                    ; 2 uses
  %i.ec = insertelement <2 x float> %i.dy, float 0.000000e+00, i64 1
  %i.ed = fmul nsz <2 x float> %i.dl, %i.ec       ; 3 uses
  %i.ee = insertelement <2 x float> %i.dm, float %i.eb, i64 0 ; 2 uses
  %i.ef = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.ed) ; 3 uses
  %i.eg = extractelement <2 x float> %i.dy, i64 0 ; 2 uses
  %i.eh = extractelement <2 x float> %i.dy, i64 1
  %i.ei = insertelement <2 x float> %i.dl, float 0.000000e+00, i64 0
  %i.ej = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ea, i64 1
  %i.el = insertelement <2 x float> %i.dv, float 0.000000e+00, i64 1
  %i.em = shufflevector <2 x float> %i.dl, <2 x float> %i.dy, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eo = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eq = fmul nsz <4 x float> %i.en, %i.ep       ; 3 uses
  %i.er = shufflevector <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x float> %i.eq, <2 x i32> <i32 5, i32 1>
  %i.es = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.dy, <2 x float> %i.er)
  %i.et = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.es) ; 3 uses
  %2 = shufflevector <2 x float> %i.dy, <2 x float> %i.dv, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.eu = insertelement <4 x float> %2, float %i.ea, i64 2
  %i.ev = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> zeroinitializer, <4 x float> %i.eq) ; 5 uses
  %3 = extractelement <4 x float> %i.ev, i64 1
  %4 = call nsz float @llvm.fmuladd.f32(float %i.ea, float %i.eg, float %3) ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.dl, %i.dv
  %i.ew = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = insertelement <2 x float> %i.ee, float 0.000000e+00, i64 1
  %i.ey = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.fa = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ex, <2 x float> %i.ez) ; 3 uses
  %5 = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <4 x float> %i.eq, <4 x float> %5, <4 x i32> <i32 3, i32 3, i32 4, i32 poison>
  %7 = shufflevector <4 x float> %6, <4 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %8 = fmul nsz <4 x float> %7, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %9 = shufflevector <2 x float> %i.dv, <2 x float> %i.dy, <4 x i32> <i32 0, i32 3, i32 poison, i32 2>
  %i.fb = insertelement <4 x float> %9, float %i.eb, i64 2
  %i.fc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> zeroinitializer, <4 x float> %8) ; 5 uses
  %i.fd = extractelement <4 x float> %i.fc, i64 0
  %i.fe = call nsz float @llvm.fmuladd.f32(float %i.eh, float %i.eg, float %i.fd) ; 2 uses
  %i.ff = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = insertelement <2 x float> poison, float %i.by, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %cos.i.i, i64 1 ; 3 uses
  %i.fi = fmul nsz <2 x float> %i.ff, %i.fh
  %i.fj = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %sin.i.i, i64 1 ; 3 uses
  %i.fl = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.fl, <2 x float> %i.fi)
  %i.fn = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> zeroinitializer, <2 x float> %i.fm)
  %10 = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.fp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> zeroinitializer, <2 x float> %i.fo) ; 5 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0
  store float %i.fq, ptr %i.bm, align 8, !tbaa !58
  %i.fr = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = fmul nsz <2 x float> %i.fr, %i.fh
  %i.ft = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.ft, <2 x float> %i.fs)
  %i.fv = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> zeroinitializer, <2 x float> %i.fu)
  %i.fx = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> zeroinitializer, <2 x float> %i.fw) ; 5 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  store float %i.fz, ptr %i.cb, align 4, !tbaa !58
  %11 = insertelement <2 x float> poison, float %4, i64 0
  %i.ga = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = fmul nsz <2 x float> %i.ga, %i.fh
  %i.gc = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> zeroinitializer
  %i.gd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.gc, <2 x float> %i.gb)
  %i.ge = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> zeroinitializer, <2 x float> %i.gd)
  %12 = shufflevector <4 x float> %i.fc, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> zeroinitializer, <2 x float> %i.gg) ; 3 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  store float %i.gi, ptr %i.cc, align 8, !tbaa !58
  %i.gj = extractelement <4 x float> %i.ev, i64 2 ; 3 uses
  %i.gk = fmul nsz float %i.gj, %i.by
  %i.gl = call nsz float @llvm.fmuladd.f32(float %cos.i.i, float %i.do, float %i.gk)
  %i.gm = extractelement <4 x float> %i.fc, i64 1 ; 4 uses
  %i.gn = call nsz float @llvm.fmuladd.f32(float %i.gm, float 0.000000e+00, float %i.gl) ; 5 uses
  store float %i.gn, ptr %i.cd, align 4, !tbaa !58
  %i.go = extractelement <2 x float> %i.fp, i64 1
  store float %i.go, ptr %i.ce, align 8, !tbaa !58
  %i.gp = extractelement <2 x float> %i.fy, i64 1
  store float %i.gp, ptr %i.cf, align 4, !tbaa !58
  %i.gq = extractelement <2 x float> %i.gh, i64 1
  store float %i.gq, ptr %i.cg, align 8, !tbaa !58
  %i.gr = fmul nsz float %cos.i.i, %i.gj
  %i.gs = call nsz float @llvm.fmuladd.f32(float %sin.i.i, float %i.do, float %i.gr)
  %i.gt = call nsz float @llvm.fmuladd.f32(float %i.gm, float 0.000000e+00, float %i.gs) ; 5 uses
  store float %i.gt, ptr %i.ch, align 4, !tbaa !58
  %i.gu = fmul nsz <2 x float> %i.et, zeroinitializer
  %i.gv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> zeroinitializer, <2 x float> %i.gu)
  %i.gw = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.fa, <2 x float> %i.gv)
  %i.gz = shufflevector <2 x float> %10, <2 x float> %i.ed, <2 x i32> <i32 0, i32 3>
  %i.ha = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> zeroinitializer, <2 x float> %i.gy) ; 7 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0
  %i.hc = extractelement <2 x float> %i.ha, i64 1
  store <2 x float> %i.ha, ptr %i.ci, align 8, !tbaa !58
  %i.hd = fmul nsz float %4, 0.000000e+00
  %i.he = extractelement <4 x float> %i.ev, i64 0
  %i.hf = call nsz float @llvm.fmuladd.f32(float %i.he, float 0.000000e+00, float %i.hd)
  %i.hg = call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.fe, float %i.hf)
  %13 = extractelement <4 x float> %i.fc, i64 3
  %i.hh = call nsz float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %i.hg) ; 2 uses
  store float %i.hh, ptr %i.cj, align 8, !tbaa !58
  %i.hi = fmul nsz float %i.gj, 0.000000e+00
  %i.hj = call nsz float @llvm.fmuladd.f32(float %i.do, float 0.000000e+00, float %i.hi) ; 2 uses
  %i.hk = call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.gm, float %i.hj) ; 5 uses
  store float %i.hk, ptr %i.ck, align 4, !tbaa !58
  %i.hl = call nsz float @llvm.fmuladd.f32(float %i.gm, float 0.000000e+00, float %i.hj)
  %i.hm = fadd nsz float %i.hl, 1.000000e+00      ; 5 uses
  store float %i.hm, ptr %i.cn, align 4, !tbaa !58
  %i.hn = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fmul nsz <2 x float> %i.fy, %i.ho
  %i.hq = insertelement <2 x float> poison, float %i.co, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.hr, <2 x float> %i.hp)
  %i.ht = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.hu, <2 x float> %i.hs) ; 2 uses
  %i.hw = fneg nsz <2 x float> %i.hv              ; 4 uses
  store <2 x float> %i.hw, ptr %i.cl, align 8, !tbaa !58
  %i.hx = fmul nsz float %i.hc, %i.cq
  %i.hy = call nsz float @llvm.fmuladd.f32(float %i.hb, float %i.co, float %i.hx)
  %i.hz = call nsz float @llvm.fmuladd.f32(float %i.hh, float %i.cs, float %i.hy)
  %i.ia = fneg nsz float %i.hz
  store float %i.ia, ptr %i.cm, align 8, !tbaa !58
  %i.ib = shufflevector <2 x float> %i.fp, <2 x float> %i.fy, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.ic = fmul nsz <2 x float> %i.ib, zeroinitializer
  %i.id = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = shufflevector <2 x float> %i.fp, <2 x float> %i.fy, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ig = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.if, <2 x float> %i.ic)
  %i.ih = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ha, <2 x float> %i.ig)
  %i.ik = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.hw, <2 x float> %i.ij)
  %i.in = fmul nsz float %i.gt, 0.000000e+00
  %i.io = call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.gn, float %i.in)
  %i.ip = call nsz float @llvm.fmuladd.f32(float %i.cu, float %i.hk, float %i.io)
  %i.iq = call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.hm, float %i.ip)
  %i.ir = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul nsz <2 x float> %i.is, %i.ib
  %i.iu = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.if, <2 x float> %i.it)
  %i.ix = insertelement <2 x float> poison, float %i.da, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.ha, <2 x float> %i.iw)
  %i.ja = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.hw, <2 x float> %i.iz)
  %i.jd = fmul nsz float %i.bv, %i.gt
  %i.je = call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.gn, float %i.jd)
  %i.jf = call nsz float @llvm.fmuladd.f32(float %i.da, float %i.hk, float %i.je)
  %i.jg = call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.hm, float %i.jf)
  %i.jh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul nsz <2 x float> %i.ib, %i.ji
  %i.jk = insertelement <2 x float> poison, float %i.de, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.if, <2 x float> %i.jj)
  %i.jn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> splat (float f0xBF800002), <2 x float> %i.jm)
  %i.jo = fadd nsz <2 x float> %i.hv, %i.jn
  %i.jp = fmul nsz float %i.gt, %i.dg
  %i.jq = call nsz float @llvm.fmuladd.f32(float %i.de, float %i.gn, float %i.jp)
  %i.jr = call nsz float @llvm.fmuladd.f32(float %i.hk, float f0xBF800002, float %i.jq)
  %i.js = fsub nsz float %i.jr, %i.hm
  %i.jt = load float, ptr %i.dh, align 8, !tbaa !58 ; 2 uses
  %i.ju = load float, ptr %i.di, align 4, !tbaa !58 ; 2 uses
  %i.jv = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul nsz <2 x float> %i.ib, %i.jw
  %i.jy = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.if, <2 x float> %i.jx)
  %i.kb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> splat (float f0xBDCCCCCE), <2 x float> %i.ka)
  %i.kc = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.hw, <2 x float> %i.kb)
  %i.kf = fmul nsz float %i.gt, %i.ju
  %i.kg = call nsz float @llvm.fmuladd.f32(float %i.jt, float %i.gn, float %i.kf)
  %i.kh = call nsz float @llvm.fmuladd.f32(float %i.hk, float f0xBDCCCCCE, float %i.kg)
  %i.ki = call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.hm, float %i.kh)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !59 ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph136.i, label %._crit_edge137.i

.lr.ph136.i:                                      ; preds = %._crit_edge.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.an, i64 64
  %i.ko = zext nneg i32 %i.kk to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.095123.i = phi i32 [ 0, %.lr.ph.i ], [ %i.kx, %bb.g ] ; 2 uses
  %i.kp = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.kq = load i32, ptr %i.as, align 8, !tbaa !33
  %i.kr = mul nsw i32 %i.kq, %.095123.i
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds i8, ptr %i.kp, i64 %i.ks
  %i.ku = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.kv = shl nsw i32 %i.ku, 2
  %i.kw = sext i32 %i.kv to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.kt, i8 0, i64 %i.kw, i1 false)
  %i.kx = add nuw nsw i32 %.095123.i, 1           ; 2 uses
  %i.ky = load i32, ptr %i.al, align 4, !tbaa !50
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.g, label %._crit_edge.i, !llvm.loop !37

._crit_edge137.i:                                 ; preds = %.loopexit.i, %._crit_edge.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.y, i64 672
  call void @av_frame_free(ptr noundef nonnull %i.la) #10
  %i.lb = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.lb, ptr noundef nonnull align 8 dereferenceable(472) %i.ao, i64 472, i1 false)
  store ptr null, ptr %i.ao, align 8, !tbaa !46
  %i.lc = call i32 @ff_filter_frame(ptr noundef %i.w, ptr noundef nonnull %i.an) #10
  br label %filter_frame.exit

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph136.i
  %indvars.iv143.i = phi i64 [ %i.ko, %.lr.ph136.i ], [ %indvars.iv.next144.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, -1 ; 3 uses
  %i.ld = load i32, ptr %i.km, align 4, !tbaa !24
  %i.le = sitofp nsz i32 %i.ld to float
  %i.lf = fdiv nsz float 1.000000e+00, %i.le
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !46 ; 4 uses
  %.not103.i = icmp eq ptr %i.lh, null
  br i1 %.not103.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 388
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !61 ; 2 uses
  %i.lk = sitofp nsz i32 %i.lj to float           ; 2 uses
  %i.ll = icmp sgt i32 %i.lj, 0
  br i1 %i.ll, label %.lr.ph132.i, label %.loopexit.i

.lr.ph132.i:                                      ; preds = %bb.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  %i.ln = fadd nsz float %i.lk, -1.000000e+00     ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 112 ; 2 uses
  %i.lp = fneg nsz float %i.ln
  %i.lq = load i32, ptr %i.lo, align 8, !tbaa !62 ; 2 uses
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %.lr.ph132.split.preheader.i, label %.loopexit.i

.lr.ph132.split.preheader.i:                      ; preds = %.lr.ph132.i
  %i.ls = trunc nuw nsw i64 %indvars.iv.next144.i to i32
  %i.lt = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph132.split.i

.lr.ph132.splitthread-pre-split.i:                ; preds = %._crit_edge129.i
  %.pr.i = load i32, ptr %i.lo, align 8, !tbaa !62
  br label %.lr.ph132.split.i

.lr.ph132.split.i:                                ; preds = %.lr.ph132.splitthread-pre-split.i, %.lr.ph132.split.preheader.i
  %i.lv = phi i32 [ %.pr.i, %.lr.ph132.splitthread-pre-split.i ], [ %i.lq, %.lr.ph132.split.preheader.i ] ; 2 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %.lr.ph132.splitthread-pre-split.i ], [ 0, %.lr.ph132.split.preheader.i ] ; 2 uses
  %i.lw = phi float [ %i.ne, %.lr.ph132.splitthread-pre-split.i ], [ 0.000000e+00, %.lr.ph132.split.preheader.i ] ; 2 uses
  %i.lx = load ptr, ptr %i.lm, align 8, !tbaa !63
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv140.i
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !60
  %i.ma = icmp sgt i32 %i.lv, 0
  br i1 %i.ma, label %.lr.ph128.i, label %._crit_edge129.i

.lr.ph128.i:                                      ; preds = %.lr.ph132.split.i
  %i.mb = load i32, ptr %i.km, align 4, !tbaa !24
  %i.mc = mul nsw i32 %i.mb, %i.ls
  %i.md = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = fmul nsz <2 x float> %i.me, <float 1.000000e+00, float 1.270000e+02>
  %i.mg = fdiv nsz <2 x float> %i.mf, %i.lu       ; 2 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0
  %i.mi = fpext nsz float %i.mh to double
  %i.mj = fmul nsz double %i.mi, f0x400921FB54442D18
  %i.mk = fptrunc nsz double %i.mj to float
  %sincos.i = call nsz { float, float } @llvm.sincos.f32(float %i.mk) ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.ml = extractelement <2 x float> %i.mg, i64 1
  %i.mm = fadd nsz float %i.ml, 1.280000e+02
  %i.mn = call nsz float @llvm.fmuladd.f32(float %cos.i, float 1.270000e+02, float 1.280000e+02)
  %i.mo = insertelement <4 x float> poison, float %i.mm, i64 0
  %i.mp = insertelement <4 x float> %i.mo, float %i.mn, i64 1
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %i.mq = call nsz float @llvm.fmuladd.f32(float %sin.i, float 1.270000e+02, float 1.280000e+02)
  %i.mr = fptosi float %i.mq to i32
  %i.ms = call nsz float @llvm.fmuladd.f32(float %i.lp, float 5.000000e-01, float %i.lw) ; 2 uses
  %i.mt = insertelement <2 x float> poison, float %i.ms, i64 0
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mv = fmul nsz <2 x float> %i.jc, %i.mu
  %i.mw = fmul nsz float %i.jg, %i.ms
  %i.mx = sitofp nsz i32 %i.mr to float
  %i.my = zext nneg i32 %i.lv to i64
  %i.mz = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.mx, i64 0
  %i.na = fptosi <4 x float> %i.mp to <4 x i32>
  %i.nb = sitofp <4 x i32> %i.na to <4 x float>
  %i.nc = shufflevector <4 x float> %i.mz, <4 x float> %i.nb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.j
end_hunk_0
