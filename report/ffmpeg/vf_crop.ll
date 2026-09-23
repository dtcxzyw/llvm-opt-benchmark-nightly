Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_crop?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@filter_frame:bb.a
bb.h:                                             ; preds = %bb.g
  %i.bj = sub nsw i32 %i.bh, %i.be                ; 2 uses
  store i32 %i.bj, ptr %i.ai, align 8, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bk = phi i32 [ %i.bj, %bb.h ], [ %i.az, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !49 ; 3 uses
  %i.bn = add i32 %i.bm, %i.bc
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !50 ; 2 uses
  %i.bq = icmp ugt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = sub nsw i32 %i.bp, %i.bm                ; 2 uses
  store i32 %i.br, ptr %i.ap, align 4, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bs = phi i32 [ %i.br, %bb.j ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !51
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !52
  %notmask = shl nsw i32 -1, %i.bw
  %i.bx = and i32 %i.bk, %notmask                 ; 2 uses
  store i32 %i.bx, ptr %i.ai, align 8, !tbaa !45
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !53
  %notmask108 = shl nsw i32 -1, %i.bz
  %i.ca = and i32 %i.bs, %notmask108              ; 2 uses
  store i32 %i.ca, ptr %i.ap, align 4, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cb = phi i32 [ %i.ca, %bb.l ], [ %i.bs, %bb.k ] ; 2 uses
  %i.cc = phi i32 [ %i.bx, %bb.l ], [ %i.bk, %bb.k ] ; 2 uses
  %i.cd = load double, ptr %i.l, align 8, !tbaa !44
  %i.ce = fptosi double %i.cd to i32
  %i.cf = load double, ptr %i.x, align 8, !tbaa !44
  %i.cg = add nsw i32 %i.cc, %i.be
  %i.ch = add nsw i32 %i.cb, %i.bm
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 56, ptr noundef nonnull @.str.3, i32 noundef %i.ce, double noundef %i.cf, i32 noundef %i.cc, i32 noundef %i.cb, i32 noundef %i.cg, i32 noundef %i.ch) #8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !41 ; 2 uses
  %i.ck = and i64 %i.cj, 8
  %.not109 = icmp eq i64 %i.ck, 0
  br i1 %.not109, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = load i32, ptr %i.ap, align 4, !tbaa !46
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !61
  %i.cp = add i64 %i.co, %i.cm                    ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !61
  %i.cq = load i32, ptr %i.ai, align 8, !tbaa !45
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !62
  %i.cu = add i64 %i.ct, %i.cr                    ; 2 uses
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !63
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !64
  %i.da = load i32, ptr %i.bl, align 4, !tbaa !49
  %i.db = sext i32 %i.da to i64
  %i.dc = add i64 %i.cz, %i.cp
  %i.dd = add i64 %i.dc, %i.db
  %i.de = sub i64 %i.cx, %i.dd
  store i64 %i.de, ptr %i.cy, align 8, !tbaa !64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !65
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !66
  %i.dk = load i32, ptr %i.bd, align 8, !tbaa !47
  %i.dl = sext i32 %i.dk to i64
  %i.dm = add i64 %i.dj, %i.cu
  %i.dn = add i64 %i.dm, %i.dl
  %i.do = sub i64 %i.dh, %i.dn
  store i64 %i.do, ptr %i.di, align 8, !tbaa !66
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dq = load <2 x i32>, ptr %i.bd, align 8, !tbaa !25
  store <2 x i32> %i.dq, ptr %i.dp, align 8, !tbaa !25
  %i.dr = load i32, ptr %i.ap, align 4, !tbaa !46 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !25
  %i.du = mul nsw i32 %i.dt, %i.dr
  %i.dv = load ptr, ptr %1, align 8, !tbaa !67
  %i.dw = sext i32 %i.du to i64
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %i.dw
  %i.dy = load i32, ptr %i.ai, align 8, !tbaa !45 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !25
  %i.eb = mul nsw i32 %i.ea, %i.dy
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %i.dx, i64 %i.ec
  store ptr %i.ed, ptr %1, align 8, !tbaa !67
  %i.ee = and i64 %i.cj, 2
  %.not110 = icmp eq i64 %i.ee, 0
  br i1 %.not110, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !67 ; 2 uses
  %.not111 = icmp eq ptr %i.ei, null
  br i1 %.not111, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !53
  %i.ek = ashr i32 %i.dr, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.em = load i32, ptr %i.el, align 4, !tbaa !25
  %i.en = mul nsw i32 %i.ek, %i.em
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %i.ei, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !25
  %i.es = mul nsw i32 %i.er, %i.dy
  %i.et = load i32, ptr %i.eg, align 8, !tbaa !52
  %i.eu = ashr i32 %i.es, %i.et
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr %i.ep, i64 %i.ev
  store ptr %i.ew, ptr %i.eh, align 8, !tbaa !67
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.p
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !67 ; 2 uses
  %.not111.1 = icmp eq ptr %i.ey, null
  br i1 %.not111.1, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ez = load i32, ptr %i.ef, align 4, !tbaa !53
  %i.fa = ashr i32 %i.dr, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !25
  %i.fd = mul nsw i32 %i.fa, %i.fc
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ey, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !25
  %i.fi = mul nsw i32 %i.fh, %i.dy
  %i.fj = load i32, ptr %i.eg, align 8, !tbaa !52
  %i.fk = ashr i32 %i.fi, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.ff, i64 %i.fl
  store ptr %i.fm, ptr %i.ex, align 8, !tbaa !67
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !67 ; 2 uses
  %.not112 = icmp eq ptr %i.fo, null
  br i1 %.not112, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !25
  %i.fr = mul nsw i32 %i.fq, %i.dr
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !25
  %i.fw = mul nsw i32 %i.fv, %i.dy
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds i8, ptr %i.ft, i64 %i.fx
  store ptr %i.fy, ptr %i.fn, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.s, %bb.n
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !26
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !28
  %i.gd = tail call i32 @ff_filter_frame(ptr noundef %i.gc, ptr noundef nonnull %1) #8
  ret i32 %i.gd
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 30 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
  %i.h = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.g) #8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 4 uses
  %i.n = load <2 x i32>, ptr %i.l, align 8, !tbaa !25
  %i.o = sitofp <2 x i32> %i.n to <2 x double>
  %1 = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x double> %1, ptr %i.m, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = load <2 x i32>, ptr %i.p, align 8, !tbaa !25
  %i.s = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = extractelement <2 x float> %i.s, i64 1
  %i.v = fdiv nsz float %i.t, %i.u
  %i.w = fpext nsz float %i.v to double           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store double %i.w, ptr %i.x, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !68
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.y, align 8             ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.aa to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.aa, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.ab = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.ac = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.ad = fdiv nsz double %i.ab, %i.ac
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ae = phi nsz double [ %i.ad, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store double %i.ae, ptr %i.af, align 8, !tbaa !44
  %i.ag = fmul nsz double %i.ae, %i.w
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store double %i.ag, ptr %i.ah, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 9 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !69
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = sitofp nsz i32 %i.al to double
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store double %i.am, ptr %i.an, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !70
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = sitofp nsz i32 %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store double %i.as, ptr %i.at, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store <2 x double> splat (double +qnan), ptr %i.au, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store <2 x double> splat (double +qnan), ptr %i.aw, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 3 uses
  store <2 x double> splat (double +qnan), ptr %i.ay, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store <2 x double> <double 0.000000e+00, double +qnan>, ptr %i.az, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @av_image_fill_max_pixsteps(ptr noundef nonnull %i.ba, ptr noundef null, ptr noundef %i.h) #8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !41
  %i.bd = and i64 %i.bc, 8
  %.not126 = icmp eq i64 %i.bd, 0
  br i1 %.not126, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = load <2 x i8>, ptr %i.ai, align 1, !tbaa !71
  %i.bf = zext <2 x i8> %i.be to <2 x i32>
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bg = phi <2 x i32> [ %i.bf, %bb.d ], [ splat (i32 1), %bb.c ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  store <2 x i32> %i.bg, ptr %i.bh, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  %i.bl = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bk, ptr noundef nonnull @var_names, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c) #8 ; 0 uses
  %i.bm = load double, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  store double %i.bm, ptr %i.av, align 8, !tbaa !44
  store double %i.bm, ptr %i.aw, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !73 ; 2 uses
  %i.bp = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bo, ptr noundef nonnull @var_names, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = load double, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  store double %i.br, ptr %i.ax, align 8, !tbaa !44
  store double %i.br, ptr %i.ay, align 8, !tbaa !44
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !72 ; 2 uses
  %i.bt = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bs, ptr noundef nonnull @var_names, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = load double, ptr %i.a, align 8, !tbaa !44 ; 6 uses
  store double %i.bv, ptr %i.av, align 8, !tbaa !44
  store double %i.bv, ptr %i.aw, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.bx = fcmp uno double %i.bv, 0.000000e+00
  br i1 %i.bx, label %normalize_double.exit.thread, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g
  %i.by = fcmp nsz ogt double %i.bv, f0x41DFFFFFFFC00000 ; 2 uses
  %i.bz = fcmp nsz olt double %i.bv, f0xC1E0000000000000 ; 2 uses
  %or.cond.i = or i1 %i.by, %i.bz
  %i.ca = call i64 @llvm.lrint.i64.f64(double %i.bv)
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = select i1 %i.bz, i32 -2147483648, i32 %i.cb
  %.sink.i = select i1 %i.by, i32 2147483647, i32 %i.cc ; 2 uses
  store i32 %.sink.i, ptr %i.bw, align 8, !tbaa !25
  br i1 %or.cond.i, label %normalize_double.exit.thread, label %normalize_double.exit

normalize_double.exit:                            ; preds = %.sink.split.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 5 uses
  %i.ce = load double, ptr %i.ay, align 8, !tbaa !44 ; 4 uses
  %i.cf = fcmp uno double %i.ce, 0.000000e+00
  br i1 %i.cf, label %normalize_double.exit.thread, label %.sink.split.i134

.sink.split.i134:                                 ; preds = %normalize_double.exit
  %i.cg = fcmp nsz ogt double %i.ce, f0x41DFFFFFFFC00000 ; 2 uses
  %i.ch = fcmp nsz olt double %i.ce, f0xC1E0000000000000 ; 2 uses
  %or.cond.i135 = or i1 %i.cg, %i.ch
  %i.ci = call i64 @llvm.lrint.i64.f64(double %i.ce)
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = select i1 %i.ch, i32 -2147483648, i32 %i.cj
  %.sink.i136 = select i1 %i.cg, i32 2147483647, i32 %i.ck ; 2 uses
  store i32 %.sink.i136, ptr %i.cd, align 4, !tbaa !25
  br i1 %or.cond.i135, label %normalize_double.exit.thread, label %normalize_double.exit139

normalize_double.exit.thread:                     ; preds = %.sink.split.i134, %normalize_double.exit, %.sink.split.i, %bb.g
  %i.cl = load ptr, ptr %i.bj, align 8, !tbaa !72
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !73
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %i.cl, ptr noundef %i.cm) #8
  br label %bb.u

normalize_double.exit139:                         ; preds = %.sink.split.i134
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !51
  %.not127 = icmp eq i32 %i.co, 0
  br i1 %.not127, label %bb.h, label %bb.i

bb.h:                                             ; preds = %normalize_double.exit139
  %i.cp = load i32, ptr %i.bh, align 8, !tbaa !52
  %notmask = shl nsw i32 -1, %i.cp
  %i.cq = and i32 %.sink.i, %notmask
  store i32 %i.cq, ptr %i.bw, align 8, !tbaa !47
  %i.cr = load i32, ptr %i.bi, align 4, !tbaa !53
  %notmask128 = shl nsw i32 -1, %i.cr
  %i.cs = and i32 %.sink.i136, %notmask128
  store i32 %i.cs, ptr %i.cd, align 4, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %normalize_double.exit139
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !23
  call void @av_expr_free(ptr noundef %i.cu) #8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !24
  call void @av_expr_free(ptr noundef %i.cw) #8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !74
  %i.cz = call i32 @av_expr_parse(ptr noundef nonnull %i.ct, ptr noundef %i.cy, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c) #8
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !75
  %i.dd = call i32 @av_expr_parse(ptr noundef nonnull %i.cv, ptr noundef %i.dc, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c) #8
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !76
  %.not129 = icmp eq i32 %i.dg, 0
  %i.dh = load i64, ptr %i.y, align 8             ; 4 uses
  br i1 %.not129, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = load i64, ptr %i.p, align 8
  %i.dj = call i64 @av_mul_q(i64 %i.dh, i64 %i.di) #10 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 2 uses
  %sext = shl i64 %i.dj, 32
  %i.dm = ashr exact i64 %sext, 32
  %i.dn = load i32, ptr %i.cd, align 4, !tbaa !49
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul nsw i64 %i.dm, %i.do
  %i.dq = ashr i64 %i.dj, 32
  %i.dr = load i32, ptr %i.bw, align 8, !tbaa !47
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul nsw i64 %i.dq, %i.ds
  %i.du = call i32 @av_reduce(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl, i64 noundef %i.dp, i64 noundef %i.dt, i64 noundef 2147483647) #8 ; 0 uses
  %.pre = load i32, ptr %i.dk, align 8, !tbaa !77
  %.pre145 = load i32, ptr %i.dl, align 4, !tbaa !78
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.dh, ptr %i.dv, align 8
  %i.dw = trunc i64 %i.dh to i32
  %i.dx = lshr i64 %i.dh, 32
  %i.dy = trunc nuw i64 %i.dx to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dz = phi i32 [ %i.dy, %bb.m ], [ %.pre145, %bb.l ]
  %i.ea = phi i32 [ %i.dw, %bb.m ], [ %.pre, %bb.l ]
  %i.eb = load i32, ptr %i.p, align 8, !tbaa !48
  %i.ec = load i32, ptr %i.q, align 4, !tbaa !50
  %i.ed = load i32, ptr %i.y, align 8, !tbaa !68
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !79
  %i.eg = load i32, ptr %i.bw, align 8, !tbaa !47
  %i.eh = load i32, ptr %i.cd, align 4, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 40, ptr noundef nonnull @.str.5, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef %i.ed, i32 noundef %i.ef, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef %i.ea, i32 noundef %i.dz) #8
  %i.ei = load i32, ptr %i.bw, align 8, !tbaa !47 ; 4 uses
  %i.ej = icmp slt i32 %i.ei, 1
  %.pre146 = load i32, ptr %i.cd, align 4, !tbaa !49 ; 4 uses
  %i.ek = icmp slt i32 %.pre146, 1
  %or.cond = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.el = load i32, ptr %i.p, align 8, !tbaa !48  ; 2 uses
  %i.em = icmp sgt i32 %i.ei, %i.el
  br i1 %i.em, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.en = load i32, ptr %i.q, align 4, !tbaa !50  ; 2 uses
  %i.eo = icmp sgt i32 %.pre146, %i.en
  br i1 %i.eo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.ei, i32 noundef %.pre146) #8
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ep = sub nuw nsw i32 %i.el, %i.ei
  %i.eq = lshr i32 %i.ep, 1                       ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !45
  %i.es = sub nuw nsw i32 %i.en, %.pre146
  %i.et = lshr i32 %i.es, 1                       ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !46
  %i.ev = load i32, ptr %i.cn, align 4, !tbaa !51
  %.not131 = icmp eq i32 %i.ev, 0
  br i1 %.not131, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ew = load i32, ptr %i.bh, align 8, !tbaa !52
  %notmask132 = shl nsw i32 -1, %i.ew
  %i.ex = and i32 %notmask132, %i.eq
  store i32 %i.ex, ptr %i.er, align 8, !tbaa !45
  %i.ey = load i32, ptr %i.bi, align 4, !tbaa !53
  %notmask133 = shl nsw i32 -1, %i.ey
  %i.ez = and i32 %notmask133, %i.et
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !46
  br label %bb.u

bb.t:                                             ; preds = %bb.f, %bb.e
  %.0120 = phi i32 [ %i.bp, %bb.e ], [ %i.bt, %bb.f ]
  %.0119 = phi ptr [ %i.bo, %bb.e ], [ %i.bs, %bb.f ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %.0119) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.i, %bb.j, %bb.t, %bb.q, %normalize_double.exit.thread
  %.0 = phi i32 [ %.0120, %bb.t ], [ -22, %normalize_double.exit.thread ], [ -22, %bb.i ], [ -22, %bb.q ], [ -22, %bb.j ], [ 0, %bb.s ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare double @av_expr_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
