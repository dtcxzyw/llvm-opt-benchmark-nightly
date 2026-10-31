Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_firequalizer?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@generate_kernel:bb.a

bb.h:                                             ; preds = %bb.g
  %i.ad = call ptr @avpriv_fopen_utf8(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.10) #14 ; 2 uses
  %.not181 = icmp eq ptr %i.ad, null
  br i1 %.not181, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.11) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.1157 = phi ptr [ %i.ad, %bb.h ], [ null, %bb.i ], [ null, %bb.e ] ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 76 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42 ; 2 uses
  %i.ah = sitofp nsz i32 %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store double %i.ah, ptr %i.ai, align 16, !tbaa !195
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !196
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.am = load i64, ptr %i.al, align 8, !tbaa !197
  %i.an = uitofp nsz i64 %i.am to double
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ao = phi double [ %i.an, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double %i.ao, ptr %i.ap, align 8, !tbaa !195
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !58
  %i.as = sitofp nsz i32 %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.as, ptr %i.at, align 8, !tbaa !195
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.lr.ph235, label %dump_fir.exit._crit_edge

.lr.ph235:                                        ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 124 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 7 uses
  %i.bb = and i32 %i.n, -2
  %i.bc = icmp eq i32 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 336 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 224 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 200 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.not188 = icmp eq ptr %.1157, null             ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  br label %bb.n

bb.m:                                             ; preds = %dump_fir.exit
  %i.bu = add nuw nsw i32 %.0158233, 1            ; 2 uses
  %i.bv = load i32, ptr %i.af, align 4, !tbaa !42
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.n, label %dump_fir.exit._crit_edge.thread282, !llvm.loop !173

dump_fir.exit._crit_edge.thread282:               ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !75
  br label %bb.bm

bb.n:                                             ; preds = %.lr.ph235, %bb.m
  %.0158233 = phi i32 [ 0, %.lr.ph235 ], [ %i.bu, %bb.m ] ; 7 uses
  %i.cb = load ptr, ptr %i.av, align 8, !tbaa !75
  %i.cc = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.cd = shl nuw i32 %.0158233, 1
  %i.ce = mul i32 %i.cd, %i.cc
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cf ; 7 uses
  %i.ch = load ptr, ptr %i.ax, align 8, !tbaa !76 ; 7 uses
  %i.ci = uitofp nsz nneg i32 %.0158233 to double
  store double %i.ci, ptr %i.ay, align 16, !tbaa !195
  %i.cj = call i32 @av_channel_layout_channel_from_index(ptr noundef nonnull %i.ae, i32 noundef %.0158233) #14
  %i.ck = sitofp nsz i32 %i.cj to double
  store double %i.ck, ptr %i.az, align 8, !tbaa !195
  %i.cl = load i32, ptr %i.ba, align 8, !tbaa !70 ; 3 uses
  %.not182219 = icmp slt i32 %i.cl, -1
  br i1 %.not182219, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.n
  %.pre258.pre = load ptr, ptr %i.be, align 8, !tbaa !74
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %bb.n ] ; 4 uses
  %i.cm = phi i32 [ %i.di, %bb.s ], [ %i.cl, %bb.n ]
  %i.cn = trunc nuw nsw i64 %indvars.iv to i32
  %i.co = uitofp nsz nneg i32 %i.cn to double
  %i.cp = load i32, ptr %i.aq, align 8, !tbaa !58
  %i.cq = sitofp nsz i32 %i.cp to double
  %i.cr = sitofp nsz i32 %i.cm to double
  %i.cs = fdiv nsz double %i.cq, %i.cr
  %i.ct = fmul nsz double %i.cs, %i.co            ; 2 uses
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.cu = fmul nsz double %i.ct, 5.000000e-02
  %i.cv = call nsz double @llvm.log2.f64(double %i.cu)
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %storemerge = phi double [ %i.cv, %bb.o ], [ %i.ct, %.lr.ph ]
  store double %storemerge, ptr %i.e, align 16, !tbaa !195
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !199
  %i.cx = call nsz double @av_expr_eval(ptr noundef %i.cw, ptr noundef nonnull %i.e, ptr noundef nonnull %0) #14 ; 3 uses
  switch i32 %i.n, label %bb.r [
    i32 3, label %bb.q
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.cy = fmul nsz double %i.cx, 5.000000e-02
  %i.cz = call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.cy)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.da = load i32, ptr %i.bd, align 8, !tbaa !41
  %.not194 = icmp eq i32 %i.da, 0
  %i.db = call nsz double @llvm.fabs.f64(double %i.cx)
  %i.dc = select nsz i1 %.not194, double %i.cx, double %i.db
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = phi nsz double [ %i.cz, %bb.q ], [ %i.dc, %bb.r ]
  %i.de = fptrunc nsz double %i.dd to float
  %i.df = load ptr, ptr %i.be, align 8, !tbaa !74 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx ; 2 uses
  store float %i.de, ptr %i.dg, align 4, !tbaa !65
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store float 0.000000e+00, ptr %i.dh, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.di = load i32, ptr %i.ba, align 8, !tbaa !70 ; 3 uses
  %i.dj = sdiv i32 %i.di, 2
  %i.dk = sext i32 %i.dj to i64
  %.not182.not = icmp slt i64 %indvars.iv, %i.dk
  br i1 %.not182.not, label %.lr.ph, label %._crit_edge, !llvm.loop !174

._crit_edge:                                      ; preds = %bb.s, %.._crit_edge_crit_edge
  %.pre258 = phi ptr [ %.pre258.pre, %.._crit_edge_crit_edge ], [ %i.df, %bb.s ] ; 2 uses
  %.lcssa = phi i32 [ %i.cl, %.._crit_edge_crit_edge ], [ %i.di, %bb.s ]
  %i.dl = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 2 uses
  %.not183 = icmp eq ptr %i.dl, null
  br i1 %.not183, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.dm = add nsw i32 %.lcssa, 2
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %.pre258, i64 %i.do, i1 false)
  %.pre257 = load ptr, ptr %i.be, align 8, !tbaa !74
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.dp = phi ptr [ %.pre257, %bb.t ], [ %.pre258, %._crit_edge ]
  %i.dq = load ptr, ptr %i.bg, align 8, !tbaa !200
  %i.dr = load ptr, ptr %i.bh, align 8, !tbaa !88
  %i.ds = load ptr, ptr %i.bi, align 8, !tbaa !73
  call void %i.dq(ptr noundef %i.dr, ptr noundef %i.ds, ptr noundef %i.dp, i64 noundef 8) #14
  %i.dt = load i32, ptr %i.bj, align 8, !tbaa !60 ; 4 uses
  %i.du = sdiv i32 %i.dt, 2                       ; 3 uses
  %.not184221 = icmp slt i32 %i.dt, -1
  br i1 %.not184221, label %.._crit_edge225_crit_edge, label %.lr.ph224

.._crit_edge225_crit_edge:                        ; preds = %bb.u
  %.pre260 = load ptr, ptr %i.bi, align 8, !tbaa !73
  %.pre261 = load i32, ptr %i.ba, align 8, !tbaa !70
  br label %._crit_edge225

.lr.ph224:                                        ; preds = %bb.u
  %i.dv = sitofp nsz i32 %i.du to double
  %i.dw = fdiv nnan nsz double f0x400921FB54442D18, %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.bk, align 8, !tbaa !201 ; 3 uses
  %switch = icmp ult i32 %i.dx, 10
  br i1 %switch, label %.lr.ph224.split, label %bb.aq

.lr.ph224.split:                                  ; preds = %.lr.ph224
  %i.dy = load <2 x i32>, ptr %i.ba, align 8, !tbaa !202
  %i.dz = load i32, ptr %i.ba, align 8, !tbaa !70 ; 3 uses
  %i.ea = sitofp <2 x i32> %i.dy to <2 x double>
  %i.eb = fdiv nnan nsz <2 x double> splat (double 2.000000e+00), %i.ea ; 2 uses
  %shift = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %i.eb, %shift
  %i.ec = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ed = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 6 uses
  %i.ee = sext i32 %i.dz to i64
  %i.ef = add nsw i32 %i.du, 1
  %wide.trip.count = zext i32 %i.ef to i64
  %i.eg = fmul nsz double %i.dw, 0.000000e+00     ; 19 uses
  switch i32 %i.dx, label %bb.ad [
    i32 0, label %bb.af
    i32 1, label %bb.ac
    i32 2, label %bb.ab
    i32 3, label %bb.aa
    i32 4, label %bb.z
    i32 5, label %bb.y
    i32 6, label %bb.x
    i32 7, label %bb.w
    i32 8, label %bb.v
  ]

bb.v:                                             ; preds = %.lr.ph224.split
  %i.eh = call nsz double @llvm.cos.f64(double %i.eg)
  %i.ei = call nsz double @llvm.fmuladd.f64(double %i.eh, double 4.882900e-01, double 3.587500e-01)
  %i.ej = fmul ninf nsz double %i.eg, 2.000000e+00
  %i.ek = call nsz double @llvm.cos.f64(double %i.ej)
  %i.el = call nsz double @llvm.fmuladd.f64(double %i.ek, double 1.412800e-01, double %i.ei)
  %i.em = fmul ninf nsz double %i.eg, 3.000000e+00
  %i.en = call nsz double @llvm.cos.f64(double %i.em)
  %i.eo = call nsz double @llvm.fmuladd.f64(double %i.en, double 1.168000e-02, double %i.el)
  br label %bb.af

bb.w:                                             ; preds = %.lr.ph224.split
  %i.ep = call nsz double @llvm.cos.f64(double %i.eg)
  %i.eq = call nsz double @llvm.fmuladd.f64(double %i.ep, double f0x3FDF4EAF251C193B, double f0x3FD744ED047AB904)
  %i.er = fmul ninf nsz double %i.eg, 2.000000e+00
  %i.es = call nsz double @llvm.cos.f64(double %i.er)
  %i.et = call nsz double @llvm.fmuladd.f64(double %i.es, double f0x3FC17C17A89331A1, double %i.eq)
  %i.eu = fmul ninf nsz double %i.eg, 3.000000e+00
  %i.ev = call nsz double @llvm.cos.f64(double %i.eu)
  %i.ew = call nsz double @llvm.fmuladd.f64(double %i.ev, double 1.064110e-02, double %i.et)
  br label %bb.af

bb.x:                                             ; preds = %.lr.ph224.split
  %i.ex = call nsz double @llvm.cos.f64(double %i.eg)
  %i.ey = call nsz double @llvm.fmuladd.f64(double %i.ex, double 4.873960e-01, double 3.557680e-01)
  %i.ez = fmul ninf nsz double %i.eg, 2.000000e+00
  %i.fa = call nsz double @llvm.cos.f64(double %i.ez)
  %i.fb = call nsz double @llvm.fmuladd.f64(double %i.fa, double 1.442320e-01, double %i.ey)
  %i.fc = fmul ninf nsz double %i.eg, 3.000000e+00
  %i.fd = call nsz double @llvm.cos.f64(double %i.fc)
  %i.fe = call nsz double @llvm.fmuladd.f64(double %i.fd, double 1.260400e-02, double %i.fb)
  br label %bb.af

bb.y:                                             ; preds = %.lr.ph224.split
  %i.ff = call nsz double @llvm.cos.f64(double %i.eg)
  %i.fg = call nsz double @llvm.fmuladd.f64(double %i.ff, double f0x3FDFD46DAAFE45EC, double f0x3FDB290B26A4AF77)
  %i.fh = fmul ninf nsz double %i.eg, 2.000000e+00
  %i.fi = call nsz double @llvm.cos.f64(double %i.fh)
  %i.fj = call nsz double @llvm.fmuladd.f64(double %i.fi, double 7.827930e-02, double %i.fg)
  br label %bb.af

bb.z:                                             ; preds = %.lr.ph224.split
  %i.fk = call nsz double @llvm.cos.f64(double %i.eg)
  %i.fl = call nsz double @llvm.fmuladd.f64(double %i.fk, double 5.000000e-01, double 4.089700e-01)
  %i.fm = fmul ninf nsz double %i.eg, 2.000000e+00
  %i.fn = call nsz double @llvm.cos.f64(double %i.fm)
  %i.fo = call nsz double @llvm.fmuladd.f64(double %i.fn, double 9.103000e-02, double %i.fl)
  br label %bb.af

bb.aa:                                            ; preds = %.lr.ph224.split
  %i.fp = call nsz double @llvm.cos.f64(double %i.eg)
  %i.fq = call nsz double @llvm.fmuladd.f64(double %i.fp, double 5.000000e-01, double 4.200000e-01)
  %i.fr = fmul ninf nsz double %i.eg, 2.000000e+00
  %i.fs = call nsz double @llvm.cos.f64(double %i.fr)
  %i.ft = call nsz double @llvm.fmuladd.f64(double %i.fs, double 8.000000e-02, double %i.fq)
  br label %bb.af

bb.ab:                                            ; preds = %.lr.ph224.split
  %i.fu = call nsz double @llvm.cos.f64(double %i.eg)
  %i.fv = call nsz double @llvm.fmuladd.f64(double %i.fu, double 4.616400e-01, double 5.383600e-01)
  br label %bb.af

bb.ac:                                            ; preds = %.lr.ph224.split
  %i.fw = call nsz double @llvm.cos.f64(double %i.eg)
  %i.fx = call nsz double @llvm.fmuladd.f64(double %i.fw, double 5.000000e-01, double 5.000000e-01)
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph224.split
  %i.fy = fcmp nsz ugt double %i.eg, f0x3FF921FB54442D18
  br i1 %i.fy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fz = call nsz double @llvm.fmuladd.f64(double %i.eg, double 2.000000e+00, double f0xC00921FB54442D18)
  %i.ga = call nsz double @llvm.cos.f64(double %i.fz)
  %i.gb = call nsz double @llvm.fmuladd.f64(double %i.ga, double 5.000000e-01, double 5.000000e-01)
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph224.split, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.0.peel = phi nsz double [ 1.000000e+00, %.lr.ph224.split ], [ %i.fx, %bb.ac ], [ %i.fv, %bb.ab ], [ %i.ft, %bb.aa ], [ %i.fo, %bb.z ], [ %i.fj, %bb.y ], [ %i.fe, %bb.x ], [ %i.ew, %bb.w ], [ %i.eo, %bb.v ], [ %i.gb, %bb.ae ], [ 1.000000e+00, %bb.ad ]
  %i.gc = fmul nsz double %.0.peel, %i.ec
  %i.gd = load float, ptr %i.ed, align 4, !tbaa !65
  %i.ge = fpext nsz float %i.gd to double
  %i.gf = fmul nsz double %i.gc, %i.ge
  %i.gg = fptrunc nsz double %i.gf to float
  store float %i.gg, ptr %i.ed, align 4, !tbaa !65
  %.off = add i32 %i.dt, 1
  %exitcond.peel.not = icmp ult i32 %.off, 3
  br i1 %exitcond.peel.not, label %._crit_edge225, label %.peel.next

.peel.next:                                       ; preds = %bb.af, %bb.ar
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %bb.ar ], [ 1, %bb.af ] ; 4 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv242 to i32
  %i.gi = uitofp nsz nneg i32 %i.gh to double
  %i.gj = fmul nsz double %i.dw, %i.gi            ; 19 uses
  switch i32 %i.dx, label %bb.ao [
    i32 0, label %bb.ar
    i32 1, label %bb.ag
    i32 2, label %bb.ah
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %bb.ak
    i32 6, label %bb.al
    i32 7, label %bb.am
    i32 8, label %bb.an
  ]

bb.ag:                                            ; preds = %.peel.next
  %i.gk = call nsz double @llvm.cos.f64(double %i.gj)
  %i.gl = call nsz double @llvm.fmuladd.f64(double %i.gk, double 5.000000e-01, double 5.000000e-01)
  br label %bb.ar

bb.ah:                                            ; preds = %.peel.next
  %i.gm = call nsz double @llvm.cos.f64(double %i.gj)
  %i.gn = call nsz double @llvm.fmuladd.f64(double %i.gm, double 4.616400e-01, double 5.383600e-01)
  br label %bb.ar

bb.ai:                                            ; preds = %.peel.next
  %i.go = call nsz double @llvm.cos.f64(double %i.gj)
  %i.gp = call nsz double @llvm.fmuladd.f64(double %i.go, double 5.000000e-01, double 4.200000e-01)
  %i.gq = fmul nsz double %i.gj, 2.000000e+00
  %i.gr = call nsz double @llvm.cos.f64(double %i.gq)
  %i.gs = call nsz double @llvm.fmuladd.f64(double %i.gr, double 8.000000e-02, double %i.gp)
  br label %bb.ar

bb.aj:                                            ; preds = %.peel.next
  %i.gt = call nsz double @llvm.cos.f64(double %i.gj)
  %i.gu = call nsz double @llvm.fmuladd.f64(double %i.gt, double 5.000000e-01, double 4.089700e-01)
  %i.gv = fmul nsz double %i.gj, 2.000000e+00
  %i.gw = call nsz double @llvm.cos.f64(double %i.gv)
  %i.gx = call nsz double @llvm.fmuladd.f64(double %i.gw, double 9.103000e-02, double %i.gu)
  br label %bb.ar

bb.ak:                                            ; preds = %.peel.next
  %i.gy = call nsz double @llvm.cos.f64(double %i.gj)
  %i.gz = call nsz double @llvm.fmuladd.f64(double %i.gy, double f0x3FDFD46DAAFE45EC, double f0x3FDB290B26A4AF77)
  %i.ha = fmul nsz double %i.gj, 2.000000e+00
  %i.hb = call nsz double @llvm.cos.f64(double %i.ha)
  %i.hc = call nsz double @llvm.fmuladd.f64(double %i.hb, double 7.827930e-02, double %i.gz)
  br label %bb.ar

bb.al:                                            ; preds = %.peel.next
  %i.hd = call nsz double @llvm.cos.f64(double %i.gj)
  %i.he = call nsz double @llvm.fmuladd.f64(double %i.hd, double 4.873960e-01, double 3.557680e-01)
  %i.hf = fmul nsz double %i.gj, 2.000000e+00
  %i.hg = call nsz double @llvm.cos.f64(double %i.hf)
  %i.hh = call nsz double @llvm.fmuladd.f64(double %i.hg, double 1.442320e-01, double %i.he)
  %i.hi = fmul nsz double %i.gj, 3.000000e+00
  %i.hj = call nsz double @llvm.cos.f64(double %i.hi)
  %i.hk = call nsz double @llvm.fmuladd.f64(double %i.hj, double 1.260400e-02, double %i.hh)
  br label %bb.ar

bb.am:                                            ; preds = %.peel.next
  %i.hl = call nsz double @llvm.cos.f64(double %i.gj)
  %i.hm = call nsz double @llvm.fmuladd.f64(double %i.hl, double f0x3FDF4EAF251C193B, double f0x3FD744ED047AB904)
  %i.hn = fmul nsz double %i.gj, 2.000000e+00
  %i.ho = call nsz double @llvm.cos.f64(double %i.hn)
  %i.hp = call nsz double @llvm.fmuladd.f64(double %i.ho, double f0x3FC17C17A89331A1, double %i.hm)
  %i.hq = fmul nsz double %i.gj, 3.000000e+00
  %i.hr = call nsz double @llvm.cos.f64(double %i.hq)
  %i.hs = call nsz double @llvm.fmuladd.f64(double %i.hr, double 1.064110e-02, double %i.hp)
  br label %bb.ar

bb.an:                                            ; preds = %.peel.next
  %i.ht = call nsz double @llvm.cos.f64(double %i.gj)
  %i.hu = call nsz double @llvm.fmuladd.f64(double %i.ht, double 4.882900e-01, double 3.587500e-01)
  %i.hv = fmul nsz double %i.gj, 2.000000e+00
  %i.hw = call nsz double @llvm.cos.f64(double %i.hv)
  %i.hx = call nsz double @llvm.fmuladd.f64(double %i.hw, double 1.412800e-01, double %i.hu)
  %i.hy = fmul nsz double %i.gj, 3.000000e+00
  %i.hz = call nsz double @llvm.cos.f64(double %i.hy)
  %i.ia = call nsz double @llvm.fmuladd.f64(double %i.hz, double 1.168000e-02, double %i.hx)
  br label %bb.ar

bb.ao:                                            ; preds = %.peel.next
  %i.ib = fcmp nsz ugt double %i.gj, f0x3FF921FB54442D18
  br i1 %i.ib, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ic = call nsz double @llvm.fmuladd.f64(double %i.gj, double 2.000000e+00, double f0xC00921FB54442D18)
  %i.id = call nsz double @llvm.cos.f64(double %i.ic)
  %i.ie = call nsz double @llvm.fmuladd.f64(double %i.id, double 5.000000e-01, double 5.000000e-01)
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph224
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 680) #14
  call void @abort() #17
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %.peel.next, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.0 = phi nsz double [ 1.000000e+00, %.peel.next ], [ %i.gl, %bb.ag ], [ %i.gn, %bb.ah ], [ %i.gs, %bb.ai ], [ %i.gx, %bb.aj ], [ %i.hc, %bb.ak ], [ %i.hk, %bb.al ], [ %i.hs, %bb.am ], [ %i.ia, %bb.an ], [ %i.ie, %bb.ap ], [ 1.000000e+00, %bb.ao ]
  %i.if = fmul nsz double %.0, %i.ec
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv242 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !65
  %i.ii = fpext nsz float %i.ih to double
  %i.ij = fmul nsz double %i.if, %i.ii
  %i.ik = fptrunc nsz double %i.ij to float       ; 2 uses
  store float %i.ik, ptr %i.ig, align 4, !tbaa !65
  %i.il = sub nsw i64 %i.ee, %indvars.iv242
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.il
  store float %i.ik, ptr %i.im, align 4, !tbaa !65
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge225, label %.peel.next, !llvm.loop !175

._crit_edge225:                                   ; preds = %bb.ar, %bb.af, %.._crit_edge225_crit_edge
  %i.in = phi i32 [ %.pre261, %.._crit_edge225_crit_edge ], [ %i.dz, %bb.af ], [ %i.dz, %bb.ar ]
  %i.io = phi ptr [ %.pre260, %.._crit_edge225_crit_edge ], [ %i.ed, %bb.af ], [ %i.ed, %bb.ar ]
  %i.ip = sext i32 %i.du to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = sub nsw i32 %i.in, %i.dt
  %i.it = sext i32 %i.is to i64
  %i.iu = shl nsw i64 %i.it, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ir, i8 0, i64 %i.iu, i1 false)
  %i.iv = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.iw = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ix = sdiv i32 %i.iw, 2
  %i.iy = sext i32 %i.ix to i64
  %i.iz = shl nsw i64 %i.iy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ch, ptr align 4 %i.iv, i64 %i.iz, i1 false)
  %i.ja = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.jb = sdiv i32 %i.ja, 2
  %i.jc = sext i32 %i.jb to i64                   ; 3 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.jc
  %i.je = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.jf = load i32, ptr %i.ba, align 8, !tbaa !70
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.jg
  %i.ji = sub nsw i64 0, %i.jc
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.ji
  %i.jk = shl nsw i64 %i.jc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jd, ptr align 4 %i.jj, i64 %i.jk, i1 false)
  %i.jl = load i32, ptr %i.bd, align 8, !tbaa !41
  %.not185 = icmp eq i32 %i.jl, 0
  br i1 %.not185, label %generate_min_phase_kernel.exit, label %bb.as

bb.as:                                            ; preds = %._crit_edge225
  %i.jm = load <2 x i32>, ptr %i.aw, align 4, !tbaa !202 ; 3 uses
  %i.jn = extractelement <2 x i32> %i.jm, i64 1   ; 6 uses
  %i.jo = sitofp <2 x i32> %i.jm to <2 x double>
  %i.jp = fdiv nsz <2 x double> <double f0x3E7AD7F29ABCAF48, double 2.000000e+00>, %i.jo ; 5 uses
  %i.jq = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.jr = sext i32 %i.jn to i64                   ; 6 uses
  %i.js = shl nsw i64 %i.jr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jq, i8 0, i64 %i.js, i1 false)
  %i.jt = load ptr, ptr %i.bm, align 8, !tbaa !69
  %i.ju = add nsw i32 %i.jn, 2
  %i.jv = sext i32 %i.ju to i64
  %i.jw = shl nsw i64 %i.jv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jt, i8 0, i64 %i.jw, i1 false)
  %i.jx = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.jy = extractelement <2 x i32> %i.jm, i64 0
  %i.jz = sdiv i32 %i.jy, 2
  %i.ka = sext i32 %i.jz to i64                   ; 3 uses
  %i.kb = shl nsw i64 %i.ka, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jx, ptr align 4 %i.ch, i64 %i.kb, i1 false)
  %i.kc = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.jr
  %i.ke = sub nsw i64 0, %i.ka
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ka
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kf, ptr align 4 %i.kg, i64 %i.kb, i1 false)
  %i.kh = load ptr, ptr %i.bn, align 8, !tbaa !204
  %i.ki = load ptr, ptr %i.bo, align 8, !tbaa !90
  %i.kj = load ptr, ptr %i.bm, align 8, !tbaa !69
  %i.kk = load ptr, ptr %i.bl, align 8, !tbaa !68
  call void %i.kh(ptr noundef %i.ki, ptr noundef %i.kj, ptr noundef %i.kk, i64 noundef 4) #14, !inline_history !176
  %i.kl = icmp sgt i32 %i.jn, -2                  ; 2 uses
  %.pre.i = load ptr, ptr %i.bm, align 8, !tbaa !69 ; 3 uses
  br i1 %i.kl, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.as
  %i.km = add nsw i64 %i.jr, 1                    ; 3 uses
  %min.iters.check333 = icmp ult i64 %i.km, 4
  br i1 %min.iters.check333, label %.lr.ph.i.preheader356, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph.i.preheader
  %i.kn = lshr i64 %i.km, 1
  %i.ko = add nuw i64 %i.kn, 1
  %i.kp = and i64 %i.km, 2
  %.not346 = icmp eq i64 %i.kp, 0
  %.neg = select i1 %.not346, i64 -1, i64 -2
  %n.vec335 = add i64 %.neg, %i.ko                ; 2 uses
  %i.kq = shl i64 %n.vec335, 1
  %broadcast.splat337 = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph334
  %index339 = phi i64 [ 0, %vector.ph334 ], [ %index.next343, %vector.body338 ] ; 2 uses
  %.idx347 = shl nuw i64 %index339, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx347 ; 2 uses
  %wide.vec340 = load <4 x float>, ptr %i.kr, align 4, !tbaa !65
  %strided.vec341 = shufflevector <4 x float> %wide.vec340, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ks = fpext nsz <2 x float> %strided.vec341 to <2 x double> ; 2 uses
  %i.kt = fcmp nsz olt <2 x double> %broadcast.splat337, %i.ks
  %i.ku = select nsz <2 x i1> %i.kt, <2 x double> %i.ks, <2 x double> %broadcast.splat337
  %i.kv = call nsz <2 x double> @llvm.log.v2f64(<2 x double> %i.ku)
  %i.kw = fptrunc nsz <2 x double> %i.kv to <2 x float>
  %interleaved.vec342 = shufflevector <2 x float> %i.kw, <2 x float> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec342, ptr %i.kr, align 4, !tbaa !65
  %index.next343 = add nuw i64 %index339, 2       ; 2 uses
  %i.kx = icmp eq i64 %index.next343, %n.vec335
  br i1 %i.kx, label %.lr.ph.i.preheader356, label %vector.body338, !llvm.loop !177

.lr.ph.i.preheader356:                            ; preds = %vector.body338, %.lr.ph.i.preheader
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.kq, %vector.body338 ]
  %i.ky = extractelement <2 x double> %i.jp, i64 0 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader356, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader356 ] ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i ; 3 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !65
  %i.lb = fpext nsz float %i.la to double         ; 2 uses
  %i.lc = fcmp nsz olt double %i.ky, %i.lb
  %..i = select nsz i1 %i.lc, double %i.lb, double %i.ky
  %i.ld = call nsz double @llvm.log.f64(double %..i)
  %i.le = fptrunc nsz double %i.ld to float
  store float %i.le, ptr %i.kz, align 4, !tbaa !65
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store float 0.000000e+00, ptr %i.lf, align 4, !tbaa !65
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %i.lg = icmp slt i64 %indvars.iv.i, %i.jr
  br i1 %i.lg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !178

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.as
  %i.lh = load ptr, ptr %i.bp, align 8, !tbaa !205
  %i.li = load ptr, ptr %i.bq, align 8, !tbaa !91
  %i.lj = load ptr, ptr %i.bl, align 8, !tbaa !68
  call void %i.lh(ptr noundef %i.li, ptr noundef %i.lj, ptr noundef %.pre.i, i64 noundef 8) #14, !inline_history !176
  %i.lk = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.ll = sdiv i32 %i.jn, 2                       ; 4 uses
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = add nsw i32 %i.ll, -1
  %i.lq = sext i32 %i.lp to i64
  %i.lr = shl nsw i64 %i.lq, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lo, i8 0, i64 %i.lr, i1 false)
  %.not87.i = icmp slt i32 %i.jn, 2
  %.pre103.i = load ptr, ptr %i.bl, align 8, !tbaa !68 ; 3 uses
  br i1 %.not87.i, label %._crit_edge91.i, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %._crit_edge.i
  %i.ls = add nuw nsw i32 %i.ll, 1
  %wide.trip.count.i = zext nneg i32 %i.ls to i64
  %i.lt = zext nneg i32 %i.ll to i64              ; 2 uses
  %min.iters.check321 = icmp ult i32 %i.jn, 16
  br i1 %min.iters.check321, label %scalar.ph320.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph90.i
  %n.vec323 = and i64 %i.lt, 1073741816           ; 3 uses
  %i.lu = or disjoint i64 %n.vec323, 1
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.pre103.i, i64 %index325 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 20 ; 2 uses
  %wide.load326 = load <4 x float>, ptr %i.lw, align 4, !tbaa !65
  %wide.load327 = load <4 x float>, ptr %i.lx, align 4, !tbaa !65
  %i.ly = fmul nsz <4 x float> %wide.load326, splat (float 2.000000e+00)
  %i.lz = fmul nsz <4 x float> %wide.load327, splat (float 2.000000e+00)
  store <4 x float> %i.ly, ptr %i.lw, align 4, !tbaa !65
  store <4 x float> %i.lz, ptr %i.lx, align 4, !tbaa !65
  %index.next328 = add nuw i64 %index325, 8       ; 2 uses
  %i.ma = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.ma, label %middle.block329, label %vector.body324, !llvm.loop !179

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %n.vec323, %i.lt
  br i1 %cmp.n330, label %._crit_edge91.i, label %scalar.ph320.preheader

scalar.ph320.preheader:                           ; preds = %.lr.ph90.i, %middle.block329
  %indvars.iv97.i.ph = phi i64 [ 1, %.lr.ph90.i ], [ %i.lu, %middle.block329 ]
  br label %scalar.ph320

scalar.ph320:                                     ; preds = %scalar.ph320.preheader, %scalar.ph320
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %scalar.ph320 ], [ %indvars.iv97.i.ph, %scalar.ph320.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.pre103.i, i64 %indvars.iv97.i ; 2 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !65
  %i.md = fmul nsz float %i.mc, 2.000000e+00
  store float %i.md, ptr %i.mb, align 4, !tbaa !65
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge91.i, label %scalar.ph320, !llvm.loop !180

._crit_edge91.i:                                  ; preds = %scalar.ph320, %middle.block329, %._crit_edge.i
  %i.me = load ptr, ptr %i.bn, align 8, !tbaa !204
  %i.mf = load ptr, ptr %i.bo, align 8, !tbaa !90
  %i.mg = load ptr, ptr %i.bm, align 8, !tbaa !69
  call void %i.me(ptr noundef %i.mf, ptr noundef %i.mg, ptr noundef %.pre103.i, i64 noundef 4) #14, !inline_history !176
  %.pre104.i = load ptr, ptr %i.bm, align 8, !tbaa !69 ; 3 uses
  br i1 %i.kl, label %.lr.ph94.i.preheader, label %._crit_edge95.i

.lr.ph94.i.preheader:                             ; preds = %._crit_edge91.i
  %i.mh = add nsw i64 %i.jr, 1
  %i.mi = lshr i64 %i.mh, 1                       ; 2 uses
  %i.mj = add nuw i64 %i.mi, 1                    ; 2 uses
  %min.iters.check306 = icmp eq i64 %i.mi, 0
  br i1 %min.iters.check306, label %.lr.ph94.i.preheader355, label %vector.ph307

vector.ph307:                                     ; preds = %.lr.ph94.i.preheader
  %n.vec308 = and i64 %i.mj, -2                   ; 3 uses
  %i.mk = shl i64 %n.vec308, 1
  %broadcast.splat310 = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph307
  %index312 = phi i64 [ 0, %vector.ph307 ], [ %index.next316, %vector.body311 ] ; 2 uses
  %.idx348 = shl nuw i64 %index312, 3
  %i.ml = getelementptr inbounds nuw i8, ptr %.pre104.i, i64 %.idx348 ; 2 uses
  %wide.vec313 = load <4 x float>, ptr %i.ml, align 4, !tbaa !65 ; 2 uses
  %strided.vec314 = shufflevector <4 x float> %wide.vec313, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec315 = shufflevector <4 x float> %wide.vec313, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.mm = fpext nsz <2 x float> %strided.vec314 to <2 x double>
  %i.mn = fmul nsz <2 x double> %broadcast.splat310, %i.mm
  %i.mo = call nsz <2 x double> @llvm.exp.v2f64(<2 x double> %i.mn)
  %i.mp = fmul nsz <2 x double> %broadcast.splat310, %i.mo ; 2 uses
  %i.mq = fpext nsz <2 x float> %strided.vec315 to <2 x double>
  %i.mr = fmul nsz <2 x double> %broadcast.splat310, %i.mq
  %i.ms = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.mr) ; 2 uses
  %i.mt = extractvalue { <2 x double>, <2 x double> } %i.ms, 0
  %i.mu = extractvalue { <2 x double>, <2 x double> } %i.ms, 1
  %i.mv = fmul nsz <2 x double> %i.mp, %i.mu
  %i.mw = fptrunc nsz <2 x double> %i.mv to <2 x float>
  %i.mx = fmul nsz <2 x double> %i.mp, %i.mt
  %i.my = fptrunc nsz <2 x double> %i.mx to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %i.mw, <2 x float> %i.my, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.ml, align 4, !tbaa !65
  %index.next316 = add nuw i64 %index312, 2       ; 2 uses
  %i.mz = icmp eq i64 %index.next316, %n.vec308
  br i1 %i.mz, label %middle.block317, label %vector.body311, !llvm.loop !181

middle.block317:                                  ; preds = %vector.body311
  %cmp.n318 = icmp eq i64 %i.mj, %n.vec308
  br i1 %cmp.n318, label %._crit_edge95.i, label %.lr.ph94.i.preheader355

.lr.ph94.i.preheader355:                          ; preds = %.lr.ph94.i.preheader, %middle.block317
  %indvars.iv100.i.ph = phi i64 [ 0, %.lr.ph94.i.preheader ], [ %i.mk, %middle.block317 ]
  %i.na = extractelement <2 x double> %i.jp, i64 1 ; 2 uses
  br label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %.lr.ph94.i.preheader355, %.lr.ph94.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %.lr.ph94.i ], [ %indvars.iv100.i.ph, %.lr.ph94.i.preheader355 ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.pre104.i, i64 %indvars.iv100.i ; 2 uses
  %i.nc = load <2 x float>, ptr %i.nb, align 4, !tbaa !65
  %i.nd = fpext <2 x float> %i.nc to <2 x double> ; 2 uses
  %i.ne = extractelement <2 x double> %i.nd, i64 0
  %i.nf = fmul nsz double %i.na, %i.ne
  %i.ng = call nsz double @llvm.exp.f64(double %i.nf)
  %i.nh = fmul nsz double %i.na, %i.ng
  %foldExtExtBinop350 = fmul nsz <2 x double> %i.jp, %i.nd
  %i.ni = extractelement <2 x double> %foldExtExtBinop350, i64 1
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.ni) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.nj = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.nm = insertelement <2 x double> %i.nl, double %sin.i, i64 1
  %i.nn = fmul nsz <2 x double> %i.nk, %i.nm
  %i.no = fptrunc <2 x double> %i.nn to <2 x float>
  store <2 x float> %i.no, ptr %i.nb, align 4, !tbaa !65
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 2
  %i.np = icmp slt i64 %indvars.iv100.i, %i.jr
  br i1 %i.np, label %.lr.ph94.i, label %._crit_edge95.i, !llvm.loop !182

._crit_edge95.i:                                  ; preds = %.lr.ph94.i, %middle.block317, %._crit_edge91.i
  %i.nq = load ptr, ptr %i.bp, align 8, !tbaa !205
  %i.nr = load ptr, ptr %i.bq, align 8, !tbaa !91
  %i.ns = load ptr, ptr %i.bl, align 8, !tbaa !68
  call void %i.nq(ptr noundef %i.nr, ptr noundef %i.ns, ptr noundef %.pre104.i, i64 noundef 8) #14, !inline_history !176
  %i.nt = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.nu = sext i32 %i.nt to i64
  %i.nv = shl nsw i64 %i.nu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %i.nv, i1 false)
  %i.nw = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.nx = load i32, ptr %i.bj, align 8, !tbaa !60
  %i.ny = sext i32 %i.nx to i64
  %i.nz = shl nsw i64 %i.ny, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ch, ptr align 4 %i.nw, i64 %i.nz, i1 false)
  %i.oa = load ptr, ptr %i.x, align 8, !tbaa !71
  %.not85.i = icmp eq ptr %i.oa, null
  br i1 %.not85.i, label %generate_min_phase_kernel.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge95.i
  %i.ob = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.oc = load i32, ptr %i.ba, align 8, !tbaa !70
  %i.od = add nsw i32 %i.oc, 2
  %i.oe = sext i32 %i.od to i64
  %i.of = shl nsw i64 %i.oe, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ob, i8 0, i64 %i.of, i1 false)
  %i.og = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.oh = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.oi = load i32, ptr %i.bj, align 8, !tbaa !60
  %i.oj = sext i32 %i.oi to i64
  %i.ok = shl nsw i64 %i.oj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.og, ptr align 4 %i.oh, i64 %i.ok, i1 false)
  br label %generate_min_phase_kernel.exit

generate_min_phase_kernel.exit:                   ; preds = %bb.at, %._crit_edge95.i, %._crit_edge225
  %i.ol = load ptr, ptr %i.br, align 8, !tbaa !84
  %i.om = load ptr, ptr %i.bs, align 8, !tbaa !85
  call void %i.ol(ptr noundef %i.om, ptr noundef %i.cg, ptr noundef %i.ch, i64 noundef 4) #14
  %i.on = load i32, ptr %i.aw, align 4, !tbaa !47 ; 4 uses
  %i.oo = icmp sgt i32 %i.on, -2
  br i1 %i.oo, label %.lr.ph227.preheader, label %._crit_edge228

.lr.ph227.preheader:                              ; preds = %generate_min_phase_kernel.exit
  %i.op = add i32 %i.on, 2
  %wide.trip.count249 = zext i32 %i.op to i64
  br label %.lr.ph227

bb.au:                                            ; preds = %.lr.ph227
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250 = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250, label %._crit_edge228, label %.lr.ph227, !llvm.loop !183

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %bb.au
  %indvars.iv246 = phi i64 [ 0, %.lr.ph227.preheader ], [ %indvars.iv.next247, %bb.au ] ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv246
  %i.or = load float, ptr %i.oq, align 4, !tbaa !65
  %i.os = call float @llvm.fabs.f32(float %i.or)
  %or.cond = fcmp ueq float %i.os, +inf
  br i1 %or.cond, label %bb.av, label %bb.au

bb.av:                                            ; preds = %.lr.ph227
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15) #14
  %i.ot = load ptr, ptr %i.f, align 8, !tbaa !199
  call void @av_expr_free(ptr noundef %i.ot) #14
  br i1 %.not188, label %.thread207, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ou = call i32 @fclose(ptr noundef nonnull %.1157) ; 0 uses
  br label %.thread207

._crit_edge228:                                   ; preds = %bb.au, %generate_min_phase_kernel.exit
  %i.ov = load i32, ptr %i.bd, align 8, !tbaa !41
  %.not186 = icmp ne i32 %i.ov, 0
  %.not187230 = icmp slt i32 %i.on, -1
  %or.cond288 = or i1 %.not186, %.not187230
  br i1 %or.cond288, label %.loopexit, label %.lr.ph232.preheader

.lr.ph232.preheader:                              ; preds = %._crit_edge228
  %i.ow = sdiv i32 %i.on, 2                       ; 2 uses
  %i.ox = add nuw nsw i32 %i.ow, 1
  %wide.trip.count254 = zext nneg i32 %i.ox to i64 ; 3 uses
  %min.iters.check295 = icmp ult i32 %i.ow, 8
  br i1 %min.iters.check295, label %.lr.ph232.preheader354, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph232.preheader
  %i.oy = and i64 %wide.trip.count254, 7          ; 2 uses
  %i.oz = icmp eq i64 %i.oy, 0
  %i.pa = select i1 %i.oz, i64 8, i64 %i.oy
  %n.vec297 = sub nsw i64 %wide.trip.count254, %i.pa ; 2 uses
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph296
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next302, %vector.body298 ] ; 4 uses
  %i.pb = shl nuw nsw i64 %index299, 3
  %i.pc = shl i64 %index299, 3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.pb
  %i.pe = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.pc
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %wide.vec = load <8 x float>, ptr %i.pd, align 4, !tbaa !65
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec300 = load <8 x float>, ptr %i.pf, align 4, !tbaa !65
  %strided.vec301 = shufflevector <8 x float> %wide.vec300, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index299 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store <4 x float> %strided.vec, ptr %i.pg, align 4, !tbaa !65
  store <4 x float> %strided.vec301, ptr %i.ph, align 4, !tbaa !65
  %index.next302 = add nuw i64 %index299, 8       ; 2 uses
  %i.pi = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.pi, label %.lr.ph232.preheader354, label %vector.body298, !llvm.loop !184

.lr.ph232.preheader354:                           ; preds = %vector.body298, %.lr.ph232.preheader
  %indvars.iv251.ph = phi i64 [ 0, %.lr.ph232.preheader ], [ %n.vec297, %vector.body298 ]
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader354, %.lr.ph232
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.lr.ph232 ], [ %indvars.iv251.ph, %.lr.ph232.preheader354 ] ; 3 uses
  %.idx280 = shl nuw nsw i64 %indvars.iv251, 3
  %i.pj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx280
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !65
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv251
  store float %i.pk, ptr %i.pl, align 4, !tbaa !65
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %.loopexit, label %.lr.ph232, !llvm.loop !185

.loopexit:                                        ; preds = %.lr.ph232, %._crit_edge228
  br i1 %.not188, label %dump_fir.exit, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  %.val = load ptr, ptr %i.j, align 8, !tbaa !92
  %.val198 = load ptr, ptr %i.h, align 8, !tbaa !20 ; 19 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !63
  %i.pm = getelementptr i8, ptr %.val.val, i64 64
  %.val.val.val = load i32, ptr %i.pm, align 8, !tbaa !58
  %i.pn = getelementptr inbounds nuw i8, ptr %.val198, i64 328
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !206 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.val198, i64 224 ; 3 uses
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !60 ; 8 uses
  %i.pr = sdiv i32 %i.pq, 2                       ; 5 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.val198, i64 308
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !59
  %.not.i = icmp eq i32 %i.pt, 0
  %i.pu = sitofp nsz i32 %i.pr to double
  %i.pv = sitofp nsz i32 %.val.val.val to double  ; 5 uses
  %i.pw = fdiv nsz double %i.pu, %i.pv
  %i.px = select nsz i1 %.not.i, double %i.pw, double 0.000000e+00 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.val198, i64 336 ; 3 uses
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !41
  %.not99.i = icmp eq i32 %i.pz, 0
  br i1 %.not99.i, label %bb.ay, label %.preheader5.i

.preheader5.i:                                    ; preds = %bb.ax
  %i.qa = icmp sgt i32 %i.pq, 0
  br i1 %i.qa, label %.lr.ph.i200, label %.loopexit4.i

.lr.ph.i200:                                      ; preds = %.preheader5.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.val198, i64 124
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !47
  %i.qd = sdiv i32 %i.qc, 2
  %i.qe = sitofp nsz i32 %i.qd to float           ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.val198, i64 136
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !73 ; 2 uses
  %wide.trip.count.i201 = zext nneg i32 %i.pq to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.pq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i200
  %n.vec = and i64 %wide.trip.count.i201, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.qe, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %index ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.qh, align 4, !tbaa !65
  %wide.load293 = load <4 x float>, ptr %i.qi, align 4, !tbaa !65
  %i.qj = fmul nsz <4 x float> %wide.load, %broadcast.splat
  %i.qk = fmul nsz <4 x float> %wide.load293, %broadcast.splat
  store <4 x float> %i.qj, ptr %i.qh, align 4, !tbaa !65
  store <4 x float> %i.qk, ptr %i.qi, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ql = icmp eq i64 %index.next, %n.vec
  br i1 %i.ql, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i201
  br i1 %cmp.n, label %.loopexit4.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i200, %middle.block
  %indvars.iv.i202.ph = phi i64 [ 0, %.lr.ph.i200 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.ay:                                            ; preds = %bb.ax
  %i.qm = getelementptr inbounds nuw i8, ptr %.val198, i64 124
end_hunk_0
