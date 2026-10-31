Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_showfreqs?download=true
inline.NumInlined: 13
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@activate:bb.a

bb.e:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.df = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.dr, %bb.g ]
  %indvars.iv198.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next199.i.i, %bb.g ] ; 4 uses
  %i.dg = load ptr, ptr %i.bd, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv198.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !49
  %.not160.i.i = icmp eq i8 %i.di, 0
  br i1 %.not160.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dj = load ptr, ptr %i.dc, align 8, !tbaa !98
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !99
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !32
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv198.i.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !54
  %i.do = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv198.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !54
  call void %i.dj(ptr noundef %i.dk, ptr noundef %i.dn, ptr noundef %i.dq, i64 noundef 8) #13, !inline_history !73
  %.pre.i.i = load i32, ptr %i.ay, align 4, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dr = phi i32 [ %i.df, %bb.e ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %indvars.iv.next199.i.i = add nuw nsw i64 %indvars.iv198.i.i, 1 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next199.i.i, %i.ds
  br i1 %i.dt, label %bb.e, label %._crit_edge.i.i, !llvm.loop !74

._crit_edge.i.i:                                  ; preds = %bb.g, %._crit_edge.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.dw = load i64, ptr %i.du, align 8
  %i.dx = load i64, ptr %i.dv, align 8
  %i.dy = call i64 @av_rescale_q(i64 noundef %i.af, i64 %i.dw, i64 %i.dx) #14 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.at, i64 184 ; 2 uses
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.at, i64 192 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !56
  %.not.i.i = icmp slt i64 %i.eb, %i.dy
  br i1 %.not.i.i, label %bb.h, label %.thread41

.thread41:                                        ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread

bb.h:                                             ; preds = %._crit_edge.i.i
  store i64 %i.dy, ptr %i.ea, align 8, !tbaa !56
  %i.ec = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !101
  %i.ee = call noalias ptr @av_strdup(ptr noundef %i.ed) #13 ; 4 uses
  %.not156.i.i = icmp eq ptr %i.ee, null
  br i1 %.not156.i.i, label %.thread39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !102
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ar, i64 44 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !57
  %i.ej = call ptr @ff_get_video_buffer(ptr noundef nonnull %i.ar, i32 noundef %i.eg, i32 noundef %i.ei) #13 ; 11 uses
  %.not157.i.i = icmp eq ptr %i.ej, null
  br i1 %.not157.i.i, label %bb.j, label %.preheader169.i.i

.preheader169.i.i:                                ; preds = %bb.i
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !57
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.lr.ph178.i.i, label %.preheader168.i.i

.lr.ph178.i.i:                                    ; preds = %.preheader169.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @av_free(ptr noundef nonnull %i.ee) #13
  br label %.thread39

.preheader168.i.i:                                ; preds = %bb.k, %.preheader169.i.i
  %i.en = load i32, ptr %i.ay, align 4, !tbaa !30
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph186.i.i, label %.loopexit

.lr.ph186.i.i:                                    ; preds = %.preheader168.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %i.at, i64 164 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.at, i64 112 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.at, i64 172
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph178.i.i
  %.1148177.i.i = phi i32 [ 0, %.lr.ph178.i.i ], [ %i.fc, %bb.k ] ; 2 uses
  %i.eu = load ptr, ptr %i.ej, align 8, !tbaa !47
  %i.ev = load i32, ptr %i.em, align 8, !tbaa !58
  %i.ew = mul nsw i32 %i.ev, %.1148177.i.i
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = load i32, ptr %i.ef, align 8, !tbaa !102
  %i.fa = shl nsw i32 %i.ez, 2
  %i.fb = sext i32 %i.fa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ey, i8 0, i64 %i.fb, i1 false)
  %i.fc = add nuw nsw i32 %.1148177.i.i, 1        ; 2 uses
  %i.fd = load i32, ptr %i.eh, align 4, !tbaa !57
  %i.fe = icmp slt i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.k, label %.preheader168.i.i, !llvm.loop !75

bb.l:                                             ; preds = %.loopexit.i.i, %.lr.ph186.i.i
  %indvars.iv210.i.i = phi i64 [ 0, %.lr.ph186.i.i ], [ %indvars.iv.next211.i.i, %.loopexit.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 -1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 -1, ptr %i.c, align 4, !tbaa !58
  %i.ff = icmp eq i64 %indvars.iv210.i.i, 0
  %i.fg = select i1 %i.ff, ptr %i.ee, ptr null
  %i.fh = call ptr @av_strtok(ptr noundef %i.fg, ptr noundef nonnull @.str.114, ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not158.i.i = icmp eq ptr %i.fh, null
  br i1 %.not158.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fi = call i32 @av_parse_color(ptr noundef nonnull %i.b, ptr noundef nonnull %i.fh, i32 noundef -1, ptr noundef %i.ao) #13 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fj = load ptr, ptr %i.ep, align 8, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %indvars.iv210.i.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !49
  %.not159.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not159.i.i, label %bb.o, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n
  %i.fm = load i32, ptr %i.eq, align 4, !tbaa !103
  switch i32 %i.fm, label %.loopexit.i.i [
    i32 0, label %.preheader.i.i
    i32 1, label %.preheader164.i.i
    i32 2, label %.preheader166.i.i
  ]

.preheader166.i.i:                                ; preds = %bb.o
  %i.fn = load i32, ptr %i.er, align 4, !tbaa !59
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph180.preheader.i.i, label %.loopexit.i.i

.lr.ph180.preheader.i.i:                          ; preds = %.preheader166.i.i
  %i.fp = trunc nuw nsw i64 %indvars.iv210.i.i to i32
  br label %.lr.ph180.i.i

.preheader164.i.i:                                ; preds = %bb.o
  %i.fq = load i32, ptr %i.er, align 4, !tbaa !59
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph182.preheader.i.i, label %.loopexit.i.i

.lr.ph182.preheader.i.i:                          ; preds = %.preheader164.i.i
  %i.fs = trunc nuw nsw i64 %indvars.iv210.i.i to i32
  br label %.lr.ph182.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.ft = load i32, ptr %i.er, align 4, !tbaa !59
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph184.preheader.i.i, label %.loopexit.i.i

.lr.ph184.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.fv = trunc nuw nsw i64 %indvars.iv210.i.i to i32
  br label %.lr.ph184.i.i

.lr.ph184.i.i:                                    ; preds = %.lr.ph184.i.i, %.lr.ph184.preheader.i.i
  %indvars.iv207.i.i = phi i64 [ 0, %.lr.ph184.preheader.i.i ], [ %indvars.iv.next208.i.i, %.lr.ph184.i.i ] ; 3 uses
  %i.fw = load ptr, ptr %i.es, align 8, !tbaa !32
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv210.i.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !54
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv207.i.i ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !92 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !93 ; 2 uses
  %i.gd = fmul nsz float %i.gc, %i.gc
  %i.ge = call nsz float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.gd)
  %i.gf = fpext nsz float %i.ge to double
  %i.gg = call nsz double @llvm.sqrt.f64(double %i.gf)
  %i.gh = load float, ptr %i.et, align 4, !tbaa !60
  %i.gi = fpext nsz float %i.gh to double
  %i.gj = fdiv nsz double %i.gg, %i.gi            ; 2 uses
  %i.gk = fcmp nsz ogt double %i.gj, 0.000000e+00
  %i.gl = select nsz i1 %i.gk, double %i.gj, double 0.000000e+00 ; 2 uses
  %i.gm = fcmp nsz ogt double %i.gl, 1.000000e+00
  %..i163.i.i = select nsz i1 %i.gm, double 1.000000e+00, double %i.gl
  %i.gn = trunc nuw nsw i64 %indvars.iv207.i.i to i32
  call fastcc void @plot_freq(ptr noundef nonnull %i.at, i32 noundef %i.fv, double noundef %..i163.i.i, i32 noundef %i.gn, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.ej, ptr noundef nonnull %i.ar)
  %indvars.iv.next208.i.i = add nuw nsw i64 %indvars.iv207.i.i, 1 ; 2 uses
  %i.go = load i32, ptr %i.er, align 4, !tbaa !59
  %i.gp = sext i32 %i.go to i64
  %i.gq = icmp slt i64 %indvars.iv.next208.i.i, %i.gp
  br i1 %i.gq, label %.lr.ph184.i.i, label %.loopexit.i.i, !llvm.loop !76

.lr.ph182.i.i:                                    ; preds = %.lr.ph182.i.i, %.lr.ph182.preheader.i.i
  %indvars.iv204.i.i = phi i64 [ 0, %.lr.ph182.preheader.i.i ], [ %indvars.iv.next205.i.i, %.lr.ph182.i.i ] ; 3 uses
  %i.gr = load ptr, ptr %i.es, align 8, !tbaa !32
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv210.i.i
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !54
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv204.i.i
  %i.gv = load <2 x float>, ptr %i.gu, align 4, !tbaa !50
  %i.gw = fpext <2 x float> %i.gv to <2 x double> ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = extractelement <2 x double> %i.gw, i64 1
  %i.gz = call nsz double @llvm.atan2.f64(double %i.gy, double %i.gx)
  %i.ha = fadd nsz double %i.gz, f0x400921FB54442D18
  %i.hb = fdiv nsz double %i.ha, f0x401921FB54442D18 ; 2 uses
  %i.hc = fcmp nsz ogt double %i.hb, 0.000000e+00
  %i.hd = select nsz i1 %i.hc, double %i.hb, double 0.000000e+00 ; 2 uses
  %i.he = fcmp nsz ogt double %i.hd, 1.000000e+00
  %..i162.i.i = select nsz i1 %i.he, double 1.000000e+00, double %i.hd
  %i.hf = trunc nuw nsw i64 %indvars.iv204.i.i to i32
  call fastcc void @plot_freq(ptr noundef nonnull %i.at, i32 noundef %i.fs, double noundef %..i162.i.i, i32 noundef %i.hf, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.ej, ptr noundef nonnull %i.ar)
  %indvars.iv.next205.i.i = add nuw nsw i64 %indvars.iv204.i.i, 1 ; 2 uses
  %i.hg = load i32, ptr %i.er, align 4, !tbaa !59
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next205.i.i, %i.hh
  br i1 %i.hi, label %.lr.ph182.i.i, label %.loopexit.i.i, !llvm.loop !77

.lr.ph180.i.i:                                    ; preds = %.lr.ph180.i.i, %.lr.ph180.preheader.i.i
  %indvars.iv201.i.i = phi i64 [ 0, %.lr.ph180.preheader.i.i ], [ %indvars.iv.next202.i.i, %.lr.ph180.i.i ] ; 3 uses
  %i.hj = load ptr, ptr %i.es, align 8, !tbaa !32
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv210.i.i
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !54
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv201.i.i ; 3 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !92
  %i.hp = getelementptr i8, ptr %i.hm, i64 -4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !93 ; 2 uses
  %i.hr = load <2 x float>, ptr %i.hm, align 4, !tbaa !50 ; 3 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 1
  %i.ht = fmul nsz float %i.hs, %i.hq
  %i.hu = extractelement <2 x float> %i.hr, i64 0
  %i.hv = fneg nsz float %i.hu
  %i.hw = fmul nsz float %i.hq, %i.hv
  %i.hx = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %i.hw, i64 1
  %i.ib = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.hy, <2 x float> %i.ia)
  %i.ic = fpext <2 x float> %i.ib to <2 x double> ; 2 uses
  %i.id = extractelement <2 x double> %i.ic, i64 0
  %i.ie = extractelement <2 x double> %i.ic, i64 1
  %i.if = call nsz double @llvm.atan2.f64(double %i.id, double %i.ie)
  %i.ig = fsub nsz double f0x400921FB54442D18, %i.if
  %i.ih = fdiv nsz double %i.ig, f0x401921FB54442D18 ; 2 uses
  %i.ii = fcmp nsz ogt double %i.ih, 0.000000e+00
  %i.ij = select nsz i1 %i.ii, double %i.ih, double 0.000000e+00 ; 2 uses
  %i.ik = fcmp nsz ogt double %i.ij, 1.000000e+00
  %..i.i.i = select nsz i1 %i.ik, double 1.000000e+00, double %i.ij
  %i.il = trunc nuw nsw i64 %indvars.iv201.i.i to i32
  call fastcc void @plot_freq(ptr noundef nonnull %i.at, i32 noundef %i.fp, double noundef %..i.i.i, i32 noundef %i.il, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.ej, ptr noundef nonnull %i.ar)
  %indvars.iv.next202.i.i = add nuw nsw i64 %indvars.iv201.i.i, 1 ; 2 uses
  %i.im = load i32, ptr %i.er, align 4, !tbaa !59
  %i.in = sext i32 %i.im to i64
  %i.io = icmp slt i64 %indvars.iv.next202.i.i, %i.in
  br i1 %i.io, label %.lr.ph180.i.i, label %.loopexit.i.i, !llvm.loop !78

.loopexit.i.i:                                    ; preds = %.lr.ph180.i.i, %.lr.ph182.i.i, %.lr.ph184.i.i, %.preheader.i.i, %.preheader164.i.i, %.preheader166.i.i, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next211.i.i = add nuw nsw i64 %indvars.iv210.i.i, 1 ; 2 uses
  %i.ip = load i32, ptr %i.ay, align 4, !tbaa !30
  %i.iq = sext i32 %i.ip to i64
  %i.ir = icmp slt i64 %indvars.iv.next211.i.i, %i.iq
  br i1 %i.ir, label %bb.l, label %.loopexit, !llvm.loop !79

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %i.is = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 96
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !90
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !47 ; 4 uses
  %i.ix = load i32, ptr %i.ab, align 8, !tbaa !38
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.iy
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iw, ptr align 4 %i.iz, i64 %i.al, i1 false)
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ak
  %i.jb = load ptr, ptr %i.am, align 8, !tbaa !90
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.i
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !47
  %i.je = load i32, ptr %i.an, align 8, !tbaa !104
  %i.jf = sext i32 %i.je to i64
  %i.jg = shl nsw i64 %i.jf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ja, ptr align 1 %i.jd, i64 %i.jg, i1 false)
  %i.jh = load i32, ptr %i.an, align 8, !tbaa !104 ; 2 uses
  %i.ji = add nsw i32 %i.jh, %i.ad
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.jj
  %i.jl = load i32, ptr %i.ab, align 8, !tbaa !38
  %i.jm = sub nsw i32 %i.jl, %i.jh
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.jo, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jp = load i32, ptr %i.ag, align 4, !tbaa !89
  %i.jq = sext i32 %i.jp to i64
  %i.jr = icmp slt i64 %indvars.iv.next.i, %i.jq
  br i1 %i.jr, label %bb.p, label %._crit_edge.i, !llvm.loop !80

.thread39:                                        ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

.loopexit:                                        ; preds = %.loopexit.i.i, %.preheader168.i.i
  call void @av_free(ptr noundef nonnull %i.ee) #13
  %i.js = load i64, ptr %i.dz, align 8, !tbaa !100
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !88
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ej, i64 408
  store i64 1, ptr %i.ju, align 8, !tbaa !105
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ej, i64 124
  store i32 1, ptr %i.jv, align 4, !tbaa !58
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 128
  store i32 1, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !58
  %i.jw = call i32 @ff_filter_frame(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ej) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.c, %.thread41, %.loopexit
  %i.jy = call i32 @ff_inlink_queued_samples(ptr noundef %i.j) #13
  %i.jz = load i32, ptr %i.q, align 8, !tbaa !38
  %.not33 = icmp slt i32 %i.jy, %i.jz
  br i1 %.not33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread
  call void @ff_filter_set_ready(ptr noundef %0, i32 noundef 10) #13
  br label %bb.u

bb.r:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.ka = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.j, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #13
  %.not34 = icmp eq i32 %i.ka, 0
  br i1 %.not34, label %.critedge37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kb = load i32, ptr %i.f, align 4, !tbaa !58
  %i.kc = load i64, ptr %i.g, align 8, !tbaa !106
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.m, i32 noundef %i.kb, i64 noundef %i.kc) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.u

.critedge37:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.kd = call i32 @ff_outlink_frame_wanted(ptr noundef %i.m) #13
  %.not35 = icmp eq i32 %i.kd, 0
  br i1 %.not35, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge37
  call void @ff_inlink_request_frame(ptr noundef %i.j) #13
  br label %bb.u

bb.u:                                             ; preds = %.thread39, %bb.s, %bb.b, %.critedge37, %.loopexit, %.critedge, %bb.t, %bb.q
  %.2 = phi i32 [ 0, %bb.b ], [ %i.s, %.critedge ], [ 0, %bb.q ], [ 0, %bb.t ], [ %i.jw, %.loopexit ], [ 0, %bb.s ], [ -1497649742, %.critedge37 ], [ -12, %.thread39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_output(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store i64 -9223372036854775808, ptr %i.i, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 28 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !113  ; 2 uses
  %i.l = sdiv i32 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 164 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 6 uses
  store i32 %i.k, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.o) #13
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.q = load i32, ptr %i.j, align 4, !tbaa !113
  %i.r = call i32 @av_tx_init(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, i32 noundef 0, i32 noundef 0, i32 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 0) #13 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.preheader138

.preheader138:                                    ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 156 ; 11 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader138
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.3) #13
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  call void @av_freep(ptr noundef %i.aa) #13
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  call void @av_freep(ptr noundef %i.ac) #13
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  call void @av_freep(ptr noundef %i.ae) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.t, align 4, !tbaa !30
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.c, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.c, %.preheader138
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 4 uses
  call void @av_freep(ptr noundef nonnull %i.ai) #13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 4 uses
  call void @av_freep(ptr noundef nonnull %i.aj) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 4 uses
  call void @av_freep(ptr noundef nonnull %i.ak) #13
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 3 uses
  call void @av_freep(ptr noundef nonnull %i.al) #13
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !114 ; 2 uses
end_hunk_0
begin_hunk_1_@generate_window_func:bb.a
  %i.vd = tail call nsz double @llvm.fmuladd.f64(double %i.vc, double 2.000000e+00, double -1.000000e+00)
  %i.ve = tail call nsz double @llvm.fabs.f64(double %i.vd) ; 2 uses
  %i.vf = fsub nsz double 1.000000e+00, %i.ve
  %i.vg = fmul nsz double %i.ve, f0x400921FB54442D18
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.vg) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.vh = fmul nsz double %sin, f0x3FD45F306DC9C883
  %i.vi = tail call nsz double @llvm.fmuladd.f64(double %i.vf, double %cos, double %i.vh)
  %i.vj = fptrunc nsz double %i.vi to float
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv453
  store float %i.vj, ptr %i.vk, align 4, !tbaa !50
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge451, label %scalar.ph, !llvm.loop !153

bb.aa:                                            ; preds = %bb.a
  %i.vl = tail call nsz double @av_bessel_i0(double noundef 1.200000e+01) #13
  %i.vm = fdiv nsz double 1.000000e+00, %i.vl
  %i.vn = icmp sgt i32 %1, 0
  br i1 %i.vn, label %.lr.ph, label %._crit_edge451

.lr.ph:                                           ; preds = %bb.aa
  %i.vo = add nsw i32 %1, -1
  %i.vp = uitofp nneg i32 %i.vo to double
  %i.vq = fdiv nsz double 2.000000e+00, %i.vp
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %i.vr = trunc nuw nsw i64 %indvars.iv to i32
  %i.vs = uitofp nsz nneg i32 %i.vr to double
  %i.vt = tail call nsz double @llvm.fmuladd.f64(double %i.vs, double %i.vq, double -1.000000e+00) ; 2 uses
  %i.vu = fneg nsz double %i.vt
  %i.vv = tail call nsz double @llvm.fmuladd.f64(double %i.vu, double %i.vt, double 1.000000e+00)
  %i.vw = tail call nsz double @llvm.sqrt.f64(double %i.vv)
  %i.vx = fmul nsz double %i.vw, 1.200000e+01
  %i.vy = tail call nsz double @av_bessel_i0(double noundef %i.vx) #13
  %i.vz = fmul nsz double %i.vm, %i.vy
  %i.wa = fptrunc nsz double %i.vz to float
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.wa, ptr %i.wb, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge451, label %bb.ab, !llvm.loop !154

bb.ac:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 232) #13
  tail call void @abort() #16
  unreachable

._crit_edge451:                                   ; preds = %bb.ab, %scalar.ph, %bb.z, %bb.u, %bb.l, %._crit_edge401, %bb.g, %scalar.ph587, %bb.d, %scalar.ph603, %scalar.ph617, %scalar.ph631, %scalar.ph645, %scalar.ph659, %scalar.ph673, %scalar.ph687, %scalar.ph701, %scalar.ph715, %scalar.ph729, %scalar.ph743, %.lr.ph450, %middle.block, %middle.block600, %middle.block614, %middle.block628, %middle.block642, %middle.block656, %middle.block670, %middle.block684, %middle.block698, %middle.block712, %middle.block726, %middle.block740, %middle.block754, %middle.block764, %bb.aa, %.preheader382, %.preheader381, %.preheader380, %.preheader379, %bb.h, %.preheader378, %.preheader377, %.preheader376, %.preheader375, %.preheader374, %.preheader373, %.preheader372, %.preheader371, %.preheader370, %.preheader369, %.preheader368, %.preheader367, %.preheader366, %.preheader365, %.preheader
  %.sink565 = phi float [ 7.500000e-01, %.preheader382 ], [ 7.500000e-01, %.preheader381 ], [ 7.500000e-01, %.preheader380 ], [ 7.500000e-01, %.preheader379 ], [ 5.000000e-01, %bb.h ], [ 3.300000e-01, %.preheader378 ], [ 7.500000e-01, %.preheader377 ], [ 7.500000e-01, %.preheader376 ], [ 6.630000e-01, %.preheader375 ], [ 7.500000e-01, %.preheader374 ], [ 5.000000e-01, %.preheader373 ], [ 6.610000e-01, %.preheader372 ], [ 6.610000e-01, %.preheader371 ], [ 8.410000e-01, %.preheader370 ], [ 2.930000e-01, %.preheader369 ], [ 6.610000e-01, %.preheader368 ], [ 5.000000e-01, %.preheader367 ], [ 5.000000e-01, %.preheader366 ], [ 5.000000e-01, %.preheader365 ], [ 0.000000e+00, %.preheader ], [ 7.500000e-01, %bb.aa ], [ 7.500000e-01, %middle.block ], [ 0.000000e+00, %middle.block764 ], [ 5.000000e-01, %middle.block754 ], [ 5.000000e-01, %middle.block740 ], [ 5.000000e-01, %middle.block726 ], [ 6.610000e-01, %middle.block712 ], [ 2.930000e-01, %middle.block698 ], [ 8.410000e-01, %middle.block684 ], [ 6.610000e-01, %middle.block670 ], [ 6.610000e-01, %middle.block656 ], [ 5.000000e-01, %middle.block642 ], [ 7.500000e-01, %middle.block628 ], [ 6.630000e-01, %middle.block614 ], [ 7.500000e-01, %scalar.ph617 ], [ 7.500000e-01, %middle.block600 ], [ 7.500000e-01, %bb.d ], [ 7.500000e-01, %scalar.ph587 ], [ 3.300000e-01, %bb.g ], [ 5.000000e-01, %._crit_edge401 ], [ 7.500000e-01, %bb.l ], [ 7.500000e-01, %bb.z ], [ 7.500000e-01, %scalar.ph ], [ 0.000000e+00, %.lr.ph450 ], [ 5.000000e-01, %scalar.ph743 ], [ 5.000000e-01, %scalar.ph729 ], [ 5.000000e-01, %scalar.ph715 ], [ 6.610000e-01, %scalar.ph701 ], [ 2.930000e-01, %scalar.ph687 ], [ 8.410000e-01, %scalar.ph673 ], [ 6.610000e-01, %scalar.ph659 ], [ 6.610000e-01, %scalar.ph645 ], [ 5.000000e-01, %scalar.ph631 ], [ 6.630000e-01, %scalar.ph603 ], [ 7.500000e-01, %bb.u ], [ 7.500000e-01, %bb.ab ]
  store float %.sink565, ptr %3, align 4, !tbaa !50
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @av_channel_layout_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @av_channel_layout_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_channel_from_index(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_channel_layout_index_from_channel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cosh.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #5

declare double @av_bessel_i0(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_sample_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #3

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #10

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_parse_color(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @plot_freq(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load float, ptr %i.c, align 4, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = sext i32 %3 to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !164
  switch i32 %i.n, label %get_sx.exit [
    i32 0, label %get_bsize.exit.thread
    i32 1, label %get_bsize.exit.thread167
    i32 2, label %get_bsize.exit.thread170
  ]

get_bsize.exit.thread:                            ; preds = %bb.a
  %i.o = sitofp nsz i32 %i.b to float
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = sitofp nsz i32 %i.q to float
  %i.s = fdiv nsz float %i.o, %i.r                ; 2 uses
  %i.t = sitofp nsz i32 %3 to float
  %i.u = fmul nsz float %i.s, %i.t
  %i.v = fptosi float %i.u to i32
  br label %get_sx.exit

get_bsize.exit.thread167:                         ; preds = %bb.a
  %i.w = sitofp nsz i32 %i.b to double            ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59   ; 3 uses
  %i.z = sub nsw i32 %i.y, %3
  %i.aa = sitofp nsz i32 %i.y to double
  %i.ab = fadd nsz double %i.aa, -1.000000e+00    ; 2 uses
  %i.ac = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ad = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ae = add nsw <2 x i32> %i.ad, <i32 -1, i32 -2>
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv nsz <2 x double> %i.af, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> %i.ak, <2 x double> %i.ai) ; 2 uses
  %shift = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %i.al, %shift
  %i.am = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.an = fptrunc nsz double %i.am to float
  %i.ao = xor i32 %3, -1
  %i.ap = add i32 %i.y, %i.ao
  %i.aq = sitofp nsz i32 %i.ap to double
  %i.ar = fdiv nsz double %i.aq, %i.ab
  %i.as = tail call nsz double @llvm.pow.f64(double %i.w, double %i.ar)
  %i.at = fsub nsz double %i.w, %i.as
  %i.au = fptosi double %i.at to i32
  br label %get_sx.exit

get_bsize.exit.thread170:                         ; preds = %bb.a
  %i.av = sitofp nsz i32 %i.b to double
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !59
  %i.ay = sitofp nsz i32 %i.ax to double
  %i.az = fadd nsz double %i.ay, -1.000000e+00
  %i.ba = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bb = shufflevector <2 x i32> %i.ba, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bc = add nsw <2 x i32> %i.bb, <i32 1, i32 0>
  %i.bd = sitofp <2 x i32> %i.bc to <2 x double>
  %i.be = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv nsz <2 x double> %i.bd, %i.bf
  %i.bh = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> %i.bi, <2 x double> %i.bg) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.bm = fsub nsz double %i.bk, %i.bl
  %i.bn = fptrunc nsz double %i.bm to float
  %i.bo = fptosi double %i.bl to i32
  br label %get_sx.exit

get_sx.exit:                                      ; preds = %bb.a, %get_bsize.exit.thread, %get_bsize.exit.thread167, %get_bsize.exit.thread170
  %.0.i152166 = phi float [ %i.bn, %get_bsize.exit.thread170 ], [ %i.s, %get_bsize.exit.thread ], [ %i.an, %get_bsize.exit.thread167 ], [ 1.000000e+00, %bb.a ] ; 4 uses
  %.0.i153 = phi i32 [ %i.bo, %get_bsize.exit.thread170 ], [ %i.v, %get_bsize.exit.thread ], [ %i.au, %get_bsize.exit.thread167 ], [ 0, %bb.a ] ; 12 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !57 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !165
  switch i32 %i.bs, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %get_sx.exit
  %i.bt = tail call nsz double @llvm.sqrt.f64(double %2)
  %i.bu = fsub nsz double 1.000000e+00, %i.bt
  br label %bb.f

bb.c:                                             ; preds = %get_sx.exit
  %i.bv = tail call nsz double @cbrt(double noundef %2) #14
  %i.bw = fsub nsz double 1.000000e+00, %i.bv
  br label %bb.f

bb.d:                                             ; preds = %get_sx.exit
  %i.bx = fpext nsz float %i.d to double          ; 3 uses
  %i.by = fcmp nsz ogt double %2, %i.bx
  %i.bz = select nsz i1 %i.by, double %2, double %i.bx ; 2 uses
  %i.ca = fcmp nsz ogt double %i.bz, 1.000000e+00
  %..i = select nsz i1 %i.ca, double 1.000000e+00, double %i.bz
  %i.cb = tail call nsz double @llvm.log.f64(double %..i)
  %i.cc = tail call nsz double @llvm.log.f64(double %i.bx)
  %i.cd = fdiv nsz double %i.cb, %i.cc
  br label %bb.f

bb.e:                                             ; preds = %get_sx.exit
  %i.ce = fsub nsz double 1.000000e+00, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %get_sx.exit
  %.0132 = phi nsz double [ %2, %get_sx.exit ], [ %i.bu, %bb.b ], [ %i.bw, %bb.c ], [ %i.cd, %bb.d ], [ %i.ce, %bb.e ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !166
  switch i32 %i.cg, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ch = sitofp nsz i32 %i.bq to double
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %.0132, double %i.ch, double -1.000000e+00)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !62
  %i.cl = sdiv i32 %i.bq, %i.ck                   ; 3 uses
  %i.cm = add nsw i32 %1, 1
  %i.cn = mul nsw i32 %i.cl, %i.cm
  %i.co = mul nsw i32 %i.cl, %1
  %i.cp = sitofp nsz i32 %i.co to double
  %i.cq = sitofp nsz i32 %i.cl to double
  %i.cr = tail call nsz double @llvm.fmuladd.f64(double %.0132, double %i.cq, double %i.cp)
  %i.cs = fadd nsz double %i.cr, -1.000000e+00
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.115, i32 noundef 324) #13
  tail call void @abort() #16
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.0131 = phi i32 [ %i.bq, %bb.g ], [ %i.cn, %bb.h ] ; 4 uses
  %.0126.in = phi double [ %i.ci, %bb.g ], [ %i.cs, %bb.h ]
  %.0126 = fptosi double %.0126.in to i32         ; 4 uses
  %i.ct = icmp slt i32 %.0126, 0
  br i1 %i.ct, label %.loopexit179, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !167 ; 2 uses
  switch i32 %i.cv, label %bb.m [
    i32 0, label %bb.l
    i32 1, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 248
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !169
  %.not = icmp eq i64 %i.cx, 0
  %i.cy = uitofp nneg i32 %.0126 to float
  %i.cz = select i1 %.not, float %i.cy, float 0.000000e+00 ; 2 uses
  store float %i.cz, ptr %i.k, align 4, !tbaa !50
  %i.da = fptosi float %i.cz to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.db = uitofp nneg i32 %.0126 to float         ; 3 uses
  %i.dc = fsub nsz float %i.db, %i.l
  %i.dd = fmul nsz float %i.dc, %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 248
  %i.df = load i64, ptr %i.de, align 8, !tbaa !169 ; 2 uses
  %i.dg = sext i32 %i.cv to i64                   ; 2 uses
  %.not136 = icmp slt i64 %i.df, %i.dg
  %i.dh = add nsw i64 %i.df, 1
  %i.di = select i1 %.not136, i64 %i.dh, i64 %i.dg
  %i.dj = sitofp nsz i64 %i.di to float
  %i.dk = fmul nnan nsz float %i.db, %i.dj
  %i.dl = fdiv nsz float %i.dd, %i.dk
  %i.dm = fadd nsz float %i.l, %i.dl              ; 2 uses
  store float %i.dm, ptr %i.k, align 4, !tbaa !50
  %i.dn = fptosi float %i.dm to i32               ; 2 uses
  %i.do = add nsw i32 %i.bq, -1
  %i.dp = icmp slt i32 %i.dn, 0
  %..i140 = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dn)
  %.0.i = select i1 %i.dp, i32 0, i32 %..i140
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1127 = phi i32 [ %.0.i, %bb.m ], [ %i.da, %bb.l ], [ %.0126, %bb.k ] ; 17 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !170
  switch i32 %i.dr, label %.loopexit179 [
    i32 0, label %bb.o
    i32 1, label %.preheader178
    i32 2, label %.preheader180
  ]

.preheader180:                                    ; preds = %bb.n
  %i.ds = sitofp nsz i32 %.0.i153 to float        ; 2 uses
  %i.dt = fadd nsz float %.0.i152166, %i.ds       ; 2 uses
  %i.du = fcmp nsz ogt float %i.dt, %i.ds
  %i.dv = icmp slt i32 %.0.i153, %i.b
  %i.dw = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %i.dw, label %.lr.ph, label %.loopexit179

.lr.ph:                                           ; preds = %.preheader180
  %i.dx = getelementptr i8, ptr %6, i64 64
  %i.dy = sext i32 %.0.i153 to i64
  %i.dz = sext i32 %i.b to i64
  br label %bb.u

.preheader178:                                    ; preds = %bb.n
  %i.ea = sitofp nsz i32 %.0.i153 to float        ; 2 uses
  %i.eb = fadd nsz float %.0.i152166, %i.ea       ; 2 uses
  %i.ec = fcmp nsz ogt float %i.eb, %i.ea
  %i.ed = icmp slt i32 %.0.i153, %i.b
  %i.ee = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %i.ee, label %.preheader177.lr.ph, label %.loopexit179

.preheader177.lr.ph:                              ; preds = %.preheader178
  %i.ef = icmp slt i32 %.1127, %.0131
  %i.eg = getelementptr i8, ptr %6, i64 64        ; 3 uses
  br i1 %i.ef, label %.preheader177.preheader, label %.loopexit179

.preheader177.preheader:                          ; preds = %.preheader177.lr.ph
  %i.eh = sext i32 %.0.i153 to i64
  %i.ei = sext i32 %i.b to i64
  %i.ej = sub i32 %.0131, %.1127
  %.neg = add i32 %.1127, 1
  %xtraiter = and i32 %i.ej, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.ek = add nsw i32 %.1127, 1
  %i.el = icmp eq i32 %.0131, %.neg
  br label %.preheader177

bb.o:                                             ; preds = %bb.n
  %i.em = load i32, ptr %5, align 4, !tbaa !58    ; 2 uses
  %i.en = icmp eq i32 %i.em, -1
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %.1127, ptr %5, align 4, !tbaa !58
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.eo = phi i32 [ %.1127, %bb.p ], [ %i.em, %bb.o ] ; 7 uses
  %.not137 = icmp sgt i32 %.1127, %i.eo
  br i1 %.not137, label %.preheader173, label %.preheader176

.preheader176:                                    ; preds = %bb.q
  %i.ep = sitofp nsz i32 %.0.i153 to float
  %i.eq = fadd nsz float %.0.i152166, %i.ep       ; 2 uses
  %.0128186 = add nsw i32 %.0.i153, 1             ; 3 uses
  %i.er = sitofp nsz i32 %.0128186 to float
  %i.es = fcmp nsz ogt float %i.eq, %i.er
  %i.et = icmp slt i32 %.0128186, %i.b
end_hunk_1
