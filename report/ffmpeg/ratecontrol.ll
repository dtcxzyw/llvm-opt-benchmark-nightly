Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ratecontrol?download=true
inline.NumInlined: 25
inline.NumDeleted: 11
begin_hunk_0_@ff_rate_control_init:bb.a
.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.0158235 = phi ptr [ %i.bq, %.lr.ph ], [ %i.bo, %bb.n ]
  %.0161234 = phi i32 [ %i.br, %.lr.ph ], [ -1, %bb.n ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0158235, i64 1
  %i.bq = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bp, i32 noundef 59) #13 ; 2 uses
  %i.br = add nsw i32 %.0161234, 1                ; 2 uses
  %.not185 = icmp eq ptr %i.bq, null
  br i1 %.not185, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %bb.n
  %.0161.lcssa = phi i32 [ -1, %bb.n ], [ %i.br, %.lr.ph ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 9864 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !155
  %i.bu = add nsw i32 %i.bt, %.0161.lcssa         ; 6 uses
  %i.bv = add i32 %i.bu, -29826161
  %or.cond = icmp ult i32 %i.bv, -29826160
  br i1 %or.cond, label %.thread207, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %narrow = mul nuw nsw i32 %i.bu, 72
  %i.bw = zext nneg i32 %narrow to i64
  %i.bx = tail call noalias ptr @av_mallocz(i64 noundef %i.bw) #12 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 10472 ; 9 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !87
  %.not186 = icmp eq ptr %i.bx, null
  br i1 %.not186, label %.thread207, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.o
  store i32 %i.bu, ptr %i.d, align 8, !tbaa !88
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !89 ; 2 uses
  %i.cb = add nsw i32 %i.ca, 10
  %i.cc = mul nsw i32 %i.ca, 100
  %i.cd = sext i32 %i.cc to i64
  %wide.trip.count = zext nneg i32 %i.bu to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph238, %bb.p
  %indvars.iv261 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next262, %bb.p ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [72 x i8], ptr %i.bx, i64 %indvars.iv261 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store i32 2, ptr %i.cf, align 8, !tbaa !91
  store i32 2, ptr %i.ce, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 52
  store float 2.360000e+02, ptr %i.cg, align 4, !tbaa !93
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store float 2.360000e+02, ptr %i.ch, align 4, !tbaa !94
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store i32 %i.cb, ptr %i.ci, align 8, !tbaa !95
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  store i64 %i.cd, ptr %i.cj, align 8, !tbaa !96
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count
  br i1 %exitcond264.not, label %._crit_edge239, label %bb.p, !llvm.loop !140

._crit_edge239:                                   ; preds = %bb.p
  %i.ck = load i32, ptr %i.bs, align 8, !tbaa !155
  %i.cl = icmp sgt i32 %i.bu, %i.ck
  br i1 %i.cl, label %.lr.ph243.preheader, label %._crit_edge244

.lr.ph243.preheader:                              ; preds = %._crit_edge239
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !154
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.x
  %.1159241 = phi ptr [ %.0, %bb.x ], [ %i.cm, %.lr.ph243.preheader ] ; 3 uses
  %.2163240 = phi i32 [ %i.dk, %bb.x ], [ 0, %.lr.ph243.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.cn = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1159241, i32 noundef 59) #13 ; 3 uses
  %.not187 = icmp eq ptr %i.cn, null
  br i1 %.not187, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph243
  store i8 0, ptr %i.cn, align 1, !tbaa !97
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph243
  %.0 = phi ptr [ %i.co, %bb.q ], [ null, %.lr.ph243 ]
  %i.cp = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.1159241, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.c) #12
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !78  ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 611) #12
  call void @abort() #14
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cs = load i32, ptr %i.d, align 8, !tbaa !88
  %i.ct = icmp slt i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef 612) #12
  call void @abort() #14
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.cv = zext nneg i32 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [72 x i8], ptr %i.cu, i64 %i.cv ; 12 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.di = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.1159241, ptr noundef nonnull @.str.30, ptr noundef %i.cw, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh) #12
  %i.dj = add nsw i32 %i.di, %i.cp                ; 2 uses
  %.not188 = icmp eq i32 %i.dj, 13
  br i1 %.not188, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.f, i32 noundef 16, ptr noundef nonnull @.str.31, i32 noundef %.2163240, i32 noundef %i.dj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread207

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.dk = add nuw nsw i32 %.2163240, 1            ; 2 uses
  %i.dl = load i32, ptr %i.d, align 8, !tbaa !88  ; 2 uses
  %i.dm = load i32, ptr %i.bs, align 8, !tbaa !155
  %i.dn = sub nsw i32 %i.dl, %i.dm
  %i.do = icmp slt i32 %i.dk, %i.dn
  br i1 %i.do, label %.lr.ph243, label %._crit_edge244, !llvm.loop !141

._crit_edge244:                                   ; preds = %bb.x, %._crit_edge239
  %.lcssa224 = phi i32 [ %i.bu, %._crit_edge239 ], [ %i.dl, %bb.x ] ; 3 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !45  ; 13 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 100 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !76
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %._crit_edge244
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !77
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i.i196 = load i64, ptr %i.dq, align 4, !tbaa !78
  br label %get_fpsQ.exit.i

bb.aa:                                            ; preds = %bb.y, %._crit_edge244
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 84
  %i.dx = load i64, ptr %i.dw, align 4            ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i194 = call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  br label %get_fpsQ.exit.i

get_fpsQ.exit.i:                                  ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i195 = phi i64 [ %.sroa.0.0.copyload.i.i196, %bb.z ], [ %.sroa.01.0.insert.insert.i.i.i194, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 10400 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 16, !tbaa !98
  %.sroa.0.0.insert.ext.i = zext i32 %.lcssa224 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  %i.ea = call i64 @av_rescale_q(i64 noundef %i.dz, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.0.0.i.i195) #15 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 432 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !99
  %i.ed = fmul nsz float %i.ec, 4.000000e+00
  %i.ee = fptosi float %i.ed to i32
  %.fr284.i = freeze i32 %i.ee                    ; 3 uses
  %i.ef = or i32 %.fr284.i, 1                     ; 2 uses
  %i.eg = icmp sgt i32 %.lcssa224, 0
  br i1 %i.eg, label %.lr.ph.i, label %get_fpsQ.exit.i.._crit_edge.thread.i_crit_edge

get_fpsQ.exit.i.._crit_edge.thread.i_crit_edge:   ; preds = %get_fpsQ.exit.i
  %.pre266 = sext i32 %.lcssa224 to i64
  br label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %get_fpsQ.exit.i
  %i.eh = load ptr, ptr %i.by, align 8, !tbaa !87
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [72 x i8], ptr %i.eh, i64 %indvars.iv.i ; 7 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !92 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48 ; 2 uses
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !91
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !94 ; 3 uses
  %i.eo = sext i32 %i.ej to i64                   ; 4 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !83
  %i.er = uitofp nsz i64 %i.eq to float
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.et = load <2 x i32>, ptr %i.el, align 8, !tbaa !78
  %i.eu = sitofp nsz <2 x i32> %i.et to <2 x float> ; 2 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  %i.ew = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.en, float %i.er)
  %i.ex = fptoui float %i.ew to i64
  store i64 %i.ex, ptr %i.ep, align 8, !tbaa !83
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.eo ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !83
  %i.fa = uitofp nsz i64 %i.ez to float
  %i.fb = extractelement <2 x float> %i.eu, i64 1
  %i.fc = call nsz float @llvm.fmuladd.f32(float %i.fb, float %i.en, float %i.fa)
  %i.fd = fptoui float %i.fc to i64
  store i64 %i.fd, ptr %i.ey, align 8, !tbaa !83
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 20 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !100
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.eo ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !83
  %i.fj = add i64 %i.fi, %i.fg
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !83
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.eo ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !78
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !78
  %i.fn = load i32, ptr %i.el, align 8, !tbaa !101
  %i.fo = load i32, ptr %i.es, align 4, !tbaa !102
  %i.fp = add nsw i32 %i.fo, %i.fn
  %i.fq = sitofp nsz i32 %i.fp to double
  %i.fr = fpext nsz float %i.en to double
  %i.fs = load i32, ptr %i.ek, align 8, !tbaa !91
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ft ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !80
  %i.fw = call nsz double @llvm.fmuladd.f64(double %i.fq, double %i.fr, double %i.fv)
  store double %i.fw, ptr %i.fu, align 8, !tbaa !80
  %i.fx = load i32, ptr %i.fe, align 4, !tbaa !100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !95
  %i.ga = add nsw i32 %i.fz, %i.fx
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ft ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !83
  %i.ge = add i64 %i.gd, %i.gb
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !83
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gf = load i32, ptr %i.d, align 16, !tbaa !88
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = icmp slt i64 %indvars.iv.next.i, %i.gg
  br i1 %i.gh, label %bb.ab, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %bb.ab
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !83
  %.phi.trans.insert331.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre332.i = load i64, ptr %.phi.trans.insert331.i, align 16, !tbaa !83
  %.phi.trans.insert333.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre334.i = load i64, ptr %.phi.trans.insert333.i, align 8, !tbaa !83
  %i.gi = add i64 %.pre332.i, %.pre.i
  %i.gj = add i64 %i.gi, %.pre334.i
  %i.gk = icmp ult i64 %i.ea, %i.gj
  br i1 %i.gk, label %bb.ac, label %._crit_edge.thread.i

bb.ac:                                            ; preds = %._crit_edge.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.dp, i32 noundef 16, ptr noundef nonnull @.str.43) #12
  br label %.thread211

._crit_edge.thread.i:                             ; preds = %get_fpsQ.exit.i.._crit_edge.thread.i_crit_edge, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre266, %get_fpsQ.exit.i.._crit_edge.thread.i_crit_edge ], [ %i.gg, %._crit_edge.i ]
  %i.gl = call ptr @av_malloc_array(i64 noundef %.pre-phi, i64 noundef 8) #12 ; 9 uses
  %i.gm = load i32, ptr %i.d, align 16, !tbaa !88
  %i.gn = sext i32 %i.gm to i64
  %i.go = call ptr @av_malloc_array(i64 noundef %i.gn, i64 noundef 8) #12 ; 6 uses
  %i.gp = icmp ne ptr %i.gl, null
  %i.gq = icmp ne ptr %i.go, null
  %or.cond.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.i, label %.preheader226.i, label %bb.bs

.preheader226.i:                                  ; preds = %._crit_edge.thread.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dp, i64 448 ; 2 uses
  %i.gs = and i32 %i.ef, -2147483647
  %i.gt = icmp eq i32 %i.gs, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 10664 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 10884 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 10656 ; 2 uses
  %i.gx = icmp sgt i32 %.fr284.i, -1
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ha = uitofp nsz i64 %i.ea to double          ; 3 uses
  br i1 %i.gt, label %.preheader226.split.us.preheader.i, label %.preheader226.split.i

.preheader226.split.us.preheader.i:               ; preds = %.preheader226.i
  %i.hb = lshr i32 %.fr284.i, 1
  %.pre335.i = load i32, ptr %i.d, align 16, !tbaa !88
  %wide.trip.count311.i = zext nneg i32 %i.ef to i64 ; 2 uses
  br label %.preheader226.split.us.i

.preheader226.split.us.i:                         ; preds = %._crit_edge268.us.i, %.preheader226.split.us.preheader.i
  %i.hc = phi i32 [ %i.qp, %._crit_edge268.us.i ], [ %.pre335.i, %.preheader226.split.us.preheader.i ] ; 2 uses
  %.0186272.us.i = phi i32 [ %.1187.us.i, %._crit_edge268.us.i ], [ 0, %.preheader226.split.us.preheader.i ]
  %.0191271.us.i = phi double [ %i.qt, %._crit_edge268.us.i ], [ 6.553600e+04, %.preheader226.split.us.preheader.i ] ; 3 uses
  %.0192270.us.i = phi double [ %.1193.us.i, %._crit_edge268.us.i ], [ 0.000000e+00, %.preheader226.split.us.preheader.i ]
  %i.hd = fadd nsz double %.0191271.us.i, %.0192270.us.i ; 3 uses
  %i.he = load i32, ptr %i.gr, align 8, !tbaa !75
  %i.hf = sdiv i32 %i.he, 2
  %i.hg = sitofp nsz i32 %i.hf to double
  store double %i.hg, ptr %i.be, align 16, !tbaa !85
  %i.hh = icmp sgt i32 %i.hc, 0
  br i1 %i.hh, label %.lr.ph233.us.i, label %._crit_edge234.us.i

.lr.ph233.us.i:                                   ; preds = %.preheader226.split.us.i, %.lr.ph233.us.i
  %indvars.iv294.i = phi i64 [ %indvars.iv.next295.i, %.lr.ph233.us.i ], [ 0, %.preheader226.split.us.i ] ; 4 uses
  %i.hi = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.hj = getelementptr inbounds nuw [72 x i8], ptr %i.hi, i64 %indvars.iv294.i ; 2 uses
  %i.hk = trunc nuw nsw i64 %indvars.iv294.i to i32
  %i.hl = call nsz fastcc double @get_qscale(ptr noundef nonnull %0, ptr noundef %i.hj, double noundef %i.hd, i32 noundef %i.hk) ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv294.i
  store double %i.hl, ptr %i.hm, align 8, !tbaa !80
  %i.hn = load i32, ptr %i.hj, align 8, !tbaa !92
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ho
  store double %i.hl, ptr %i.hp, align 8, !tbaa !80
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1 ; 2 uses
  %i.hq = load i32, ptr %i.d, align 16, !tbaa !88 ; 2 uses
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next295.i, %i.hr
  br i1 %i.hs, label %.lr.ph233.us.i, label %._crit_edge234.us.i, !llvm.loop !143

._crit_edge234.us.i:                              ; preds = %.lr.ph233.us.i, %.preheader226.split.us.i
  %i.ht = phi i32 [ %i.hc, %.preheader226.split.us.i ], [ %i.hq, %.lr.ph233.us.i ] ; 8 uses
  %i.hu = call i32 @llvm.smax.i32(i32 %i.ht, i32 300) ; 2 uses
  %spec.select.us.i = add nsw i32 %i.hu, -300
  %i.hv = icmp slt i32 %spec.select.us.i, %i.ht
  br i1 %i.hv, label %.lr.ph238.us.i, label %.preheader225.us.i

.lr.ph238.us.i:                                   ; preds = %._crit_edge234.us.i
  %i.hw = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.hx = load ptr, ptr %i.e, align 8, !tbaa !45  ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 204
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 208
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 212
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 216
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 444
  %i.id = zext nneg i32 %i.hu to i64
  %i.ie = add nsw i64 %i.id, -300
  %wide.trip.count.i = zext nneg i32 %i.ht to i64
  %.pre336.i = load i32, ptr %i.gv, align 4, !tbaa !103
  br label %bb.ad

bb.ad:                                            ; preds = %get_diff_limited_q.exit.us.i, %.lr.ph238.us.i
  %i.if = phi i32 [ %i.jq, %get_diff_limited_q.exit.us.i ], [ %.pre336.i, %.lr.ph238.us.i ] ; 4 uses
  %indvars.iv297.i = phi i64 [ %indvars.iv.next298.i, %get_diff_limited_q.exit.us.i ], [ %i.ie, %.lr.ph238.us.i ] ; 3 uses
  %i.ig = getelementptr inbounds [72 x i8], ptr %i.hw, i64 %indvars.iv297.i
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %indvars.iv297.i ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !80 ; 3 uses
  %i.ij = getelementptr i8, ptr %i.ig, i64 48
  %.val205.us.i = load i32, ptr %i.ij, align 8, !tbaa !91 ; 6 uses
  %i.ik = load double, ptr %i.gu, align 8, !tbaa !80
  %i.il = sext i32 %i.if to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !80
  switch i32 %.val205.us.i, label %bb.ai [
    i32 1, label %bb.ag
    i32 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.io = load float, ptr %i.hy, align 4, !tbaa !104 ; 2 uses
  %i.ip = fcmp nsz ogt float %i.io, 0.000000e+00
  br i1 %i.ip, label %bb.af, label %.thread.i.us.i

bb.af:                                            ; preds = %bb.ae
  %i.iq = fpext nsz float %i.io to double
  %i.ir = load float, ptr %i.hz, align 8, !tbaa !105
  %i.is = fpext nsz float %i.ir to double
  %i.it = call nsz double @llvm.fmuladd.f64(double %i.in, double %i.iq, double %i.is)
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.af, %bb.ae
  %.0.ph.i.us.i = phi double [ %i.ii, %bb.ae ], [ %i.it, %bb.af ] ; 2 uses
  %i.iu = fcmp nsz olt double %.0.ph.i.us.i, 1.000000e+00
  %spec.store.select2.i.us.i = select i1 %i.iu, double 1.000000e+00, double %.0.ph.i.us.i
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  %i.iv = load float, ptr %i.ia, align 4, !tbaa !106 ; 2 uses
  %i.iw = fcmp nsz ogt float %i.iv, 0.000000e+00
  %i.ix = icmp eq i32 %i.if, 2
  %or.cond50.i.us.i = or i1 %i.ix, %i.iw
  br i1 %or.cond50.i.us.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.iy = call nsz float @llvm.fabs.f32(float %i.iv)
  %i.iz = fpext nsz float %i.iy to double
  %i.ja = load float, ptr %i.ib, align 8, !tbaa !107
  %i.jb = fpext nsz float %i.ja to double
  %i.jc = call nsz double @llvm.fmuladd.f64(double %i.ik, double %i.iz, double %i.jb)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ad
  %.0.i206.us.i = phi nsz double [ %i.jc, %bb.ah ], [ %i.ii, %bb.ad ], [ %i.ii, %bb.ag ] ; 2 uses
  %i.jd = fcmp nsz olt double %.0.i206.us.i, 1.000000e+00
  %spec.store.select.i.us.i = select i1 %i.jd, double 1.000000e+00, double %.0.i206.us.i ; 3 uses
end_hunk_0
begin_hunk_1_@ff_rate_control_init:bb.a
  store double %.2.i211.us.i, ptr %i.lc, align 8, !tbaa !80
  %.not.i212.us.i = icmp eq i32 %.val.us.i, 3
  br i1 %.not.i212.us.i, label %get_diff_limited_q.exit220.us.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread5.i219.us.i
  %.28.i213.us.i = phi double [ %spec.store.select.i217.us.i, %.thread5.i219.us.i ], [ %.2.i211.us.i, %bb.ax ]
  store i32 %.val.us.i, ptr %i.gv, align 4, !tbaa !103
  br label %get_diff_limited_q.exit220.us.i

get_diff_limited_q.exit220.us.i:                  ; preds = %bb.ay, %bb.ax
  %i.ll = phi i32 [ %.val.us.i, %bb.ay ], [ %i.ka, %bb.ax ]
  %.29.i214.us.i = phi double [ %.28.i213.us.i, %bb.ay ], [ %.2.i211.us.i, %bb.ax ]
  store double %.29.i214.us.i, ptr %i.kc, align 8, !tbaa !80
  %i.lm = icmp samesign ugt i64 %indvars.iv300.i, 1
  br i1 %i.lm, label %bb.ao, label %.preheader224.us.i, !llvm.loop !145

.preheader224.us.i:                               ; preds = %get_diff_limited_q.exit220.us.i
  br i1 %i.gx, label %.lr.ph252.split.us.us.i, label %.lr.ph252.split.us273.i

.lr.ph252.split.us273.i:                          ; preds = %.preheader224.us.i, %.lr.ph252.split.us273.i
  %indvars.iv303.i = phi i64 [ %indvars.iv.next304.i, %.lr.ph252.split.us273.i ], [ 0, %.preheader224.us.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv303.i
  store double +qnan, ptr %i.ln, align 8, !tbaa !80
  %indvars.iv.next304.i = add nuw nsw i64 %indvars.iv303.i, 1 ; 2 uses
  %exitcond307.not.i = icmp eq i64 %indvars.iv.next304.i, %i.jz
  br i1 %exitcond307.not.i, label %.lr.ph267.us.i.preheader, label %.lr.ph252.split.us273.i, !llvm.loop !146

.lr.ph252.split.us.us.i:                          ; preds = %.preheader224.us.i
  %i.lo = load float, ptr %i.eb, align 8, !tbaa !99 ; 3 uses
  %i.lp = fcmp nsz oeq float %i.lo, 0.000000e+00
  %i.lq = fmul nsz float %i.lo, %i.lo
  %i.lr = fpext nsz float %i.lq to double
  br label %.lr.ph245.us.us.i

.lr.ph245.us.us.i:                                ; preds = %._crit_edge246.us.us.i, %.lr.ph252.split.us.us.i
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i, %._crit_edge246.us.us.i ], [ 0, %.lr.ph252.split.us.us.i ] ; 4 uses
  %i.ls = getelementptr inbounds nuw [72 x i8], ptr %i.js, i64 %indvars.iv318.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !91 ; 2 uses
  %i.lv = trunc i64 %indvars.iv318.i to i32       ; 2 uses
  %i.lw = sub i32 %i.lv, %i.hb                    ; 2 uses
  br i1 %i.lp, label %.lr.ph245.split.us.us.us.i, label %.lr.ph245.split.us253.us.i

.lr.ph245.split.us253.us.i:                       ; preds = %.lr.ph245.us.us.i, %bb.bb
  %indvars.iv308.i = phi i64 [ %indvars.iv.next309.i, %bb.bb ], [ 0, %.lr.ph245.us.us.i ] ; 2 uses
  %.0180243.us254.us.i = phi double [ %.1.us261.us.i, %bb.bb ], [ 0.000000e+00, %.lr.ph245.us.us.i ] ; 3 uses
  %.0181242.us255.us.i = phi double [ %.1182.us260.us.i, %bb.bb ], [ 0.000000e+00, %.lr.ph245.us.us.i ] ; 3 uses
  %i.lx = trunc nuw nsw i64 %indvars.iv308.i to i32
  %i.ly = add i32 %i.lw, %i.lx                    ; 3 uses
  %i.lz = sub nsw i32 %i.ly, %i.lv
  %i.ma = sitofp nsz i32 %i.lz to double          ; 2 uses
  %i.mb = fneg nsz double %i.ma
  %i.mc = fmul nnan nsz double %i.mb, %i.ma
  %i.md = fdiv nsz double %i.mc, %i.lr
  %i.me = call nsz double @llvm.exp.f64(double %i.md) ; 2 uses
  %or.cond223.us258.us.i = icmp ult i32 %i.ly, %i.ht
  br i1 %or.cond223.us258.us.i, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.lr.ph245.split.us253.us.i
  %i.mf = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mg = getelementptr inbounds nuw [72 x i8], ptr %i.js, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !91
  %.not204.us259.us.i = icmp eq i32 %i.lu, %i.mi
  br i1 %.not204.us259.us.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.mf
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !80
  %i.ml = call nsz double @llvm.fmuladd.f64(double %i.mk, double %i.me, double %.0181242.us255.us.i)
  %i.mm = fadd nsz double %.0180243.us254.us.i, %i.me
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.lr.ph245.split.us253.us.i
  %.1182.us260.us.i = phi nsz double [ %i.ml, %bb.ba ], [ %.0181242.us255.us.i, %.lr.ph245.split.us253.us.i ], [ %.0181242.us255.us.i, %bb.az ] ; 2 uses
  %.1.us261.us.i = phi nsz double [ %i.mm, %bb.ba ], [ %.0180243.us254.us.i, %.lr.ph245.split.us253.us.i ], [ %.0180243.us254.us.i, %bb.az ] ; 2 uses
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 1 ; 2 uses
  %exitcond312.not.i = icmp eq i64 %indvars.iv.next309.i, %wide.trip.count311.i
  br i1 %exitcond312.not.i, label %._crit_edge246.us.us.i, label %.lr.ph245.split.us253.us.i, !llvm.loop !147

.lr.ph245.split.us.us.us.i:                       ; preds = %.lr.ph245.us.us.i, %bb.be
  %indvars.iv313.i = phi i64 [ %indvars.iv.next314.i, %bb.be ], [ 0, %.lr.ph245.us.us.i ] ; 2 uses
  %.0180243.us.us.us.i = phi double [ %.1.us.us.us.i, %bb.be ], [ 0.000000e+00, %.lr.ph245.us.us.i ] ; 3 uses
  %.0181242.us.us.us.i = phi double [ %.1182.us.us.us.i, %bb.be ], [ 0.000000e+00, %.lr.ph245.us.us.i ] ; 3 uses
  %i.mn = trunc nuw nsw i64 %indvars.iv313.i to i32
  %i.mo = add i32 %i.lw, %i.mn                    ; 2 uses
  %or.cond223.us.us.us.i = icmp ult i32 %i.mo, %i.ht
  br i1 %or.cond223.us.us.us.i, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.lr.ph245.split.us.us.us.i
  %i.mp = zext nneg i32 %i.mo to i64              ; 2 uses
  %i.mq = getelementptr inbounds nuw [72 x i8], ptr %i.js, i64 %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !91
  %.not204.us.us.us.i = icmp eq i32 %i.lu, %i.ms
  br i1 %.not204.us.us.us.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.mp
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !80
  %i.mv = fadd nsz double %.0181242.us.us.us.i, %i.mu
  %i.mw = fadd nsz double %.0180243.us.us.us.i, 1.000000e+00
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.lr.ph245.split.us.us.us.i
  %.1182.us.us.us.i = phi nsz double [ %i.mv, %bb.bd ], [ %.0181242.us.us.us.i, %.lr.ph245.split.us.us.us.i ], [ %.0181242.us.us.us.i, %bb.bc ] ; 2 uses
  %.1.us.us.us.i = phi nsz double [ %i.mw, %bb.bd ], [ %.0180243.us.us.us.i, %.lr.ph245.split.us.us.us.i ], [ %.0180243.us.us.us.i, %bb.bc ] ; 2 uses
  %indvars.iv.next314.i = add nuw nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %exitcond317.not.i = icmp eq i64 %indvars.iv.next314.i, %wide.trip.count311.i
  br i1 %exitcond317.not.i, label %._crit_edge246.us.us.i, label %.lr.ph245.split.us.us.us.i, !llvm.loop !147

._crit_edge246.us.us.i:                           ; preds = %bb.bb, %bb.be
  %.us-phi.us.us.i = phi double [ %.1182.us.us.us.i, %bb.be ], [ %.1182.us260.us.i, %bb.bb ]
  %.us-phi249.us.us.i = phi double [ %.1.us.us.us.i, %bb.be ], [ %.1.us261.us.i, %bb.bb ]
  %i.mx = fdiv nsz double %.us-phi.us.us.i, %.us-phi249.us.us.i
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv318.i
  store double %i.mx, ptr %i.my, align 8, !tbaa !80
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1 ; 2 uses
  %exitcond322.not.i = icmp eq i64 %indvars.iv.next319.i, %i.jz
  br i1 %exitcond322.not.i, label %.lr.ph267.us.i.preheader, label %.lr.ph245.us.us.i, !llvm.loop !146

.lr.ph267.us.i.preheader:                         ; preds = %.lr.ph252.split.us273.i, %._crit_edge246.us.us.i
  br label %.lr.ph267.us.i

.lr.ph267.us.i:                                   ; preds = %.lr.ph267.us.i.preheader, %ff_vbv_update.exit.us.i
  %indvars.iv323.i = phi i64 [ %indvars.iv.next324.i, %ff_vbv_update.exit.us.i ], [ 0, %.lr.ph267.us.i.preheader ] ; 4 uses
  %.1190265.us.i = phi double [ %i.ql, %ff_vbv_update.exit.us.i ], [ 0.000000e+00, %.lr.ph267.us.i.preheader ] ; 2 uses
  %i.mz = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.na = getelementptr inbounds nuw [72 x i8], ptr %i.mz, i64 %indvars.iv323.i ; 8 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv323.i
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !80
  %i.nd = trunc nuw nsw i64 %indvars.iv323.i to i32
  %i.ne = call nsz fastcc double @modify_qscale(ptr noundef nonnull %0, ptr noundef %i.na, double noundef %i.nc, i32 noundef %i.nd) ; 2 uses
  %i.nf = fptrunc nsz double %i.ne to float       ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 52
  store float %i.nf, ptr %i.ng, align 4, !tbaa !93
  %i.nh = fpext nsz float %i.nf to double
  %i.ni = fcmp nsz ugt double %i.ne, f0x3690000000000000
  br i1 %i.ni, label %qp2bits.exit.us.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph267.us.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.42) #12
  br label %qp2bits.exit.us.i

qp2bits.exit.us.i:                                ; preds = %bb.bf, %.lr.ph267.us.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !94
  %i.nl = fpext nsz float %i.nk to double
  %i.nm = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !101
  %i.no = getelementptr inbounds nuw i8, ptr %i.na, i64 28
  %i.np = load i32, ptr %i.no, align 4, !tbaa !102
  %i.nq = add i32 %i.nn, 1
  %i.nr = add i32 %i.nq, %i.np
  %i.ns = sitofp nsz i32 %i.nr to double
  %i.nt = fmul nsz double %i.nl, %i.ns
  %i.nu = fdiv nsz double %i.nt, %i.nh
  %i.nv = getelementptr inbounds nuw i8, ptr %i.na, i64 20
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !100
  %i.nx = sitofp nsz i32 %i.nw to double
  %i.ny = fadd nsz double %i.nu, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !95
  %i.ob = sitofp nsz i32 %i.oa to double
  %i.oc = fadd nsz double %i.ny, %i.ob            ; 2 uses
  %i.od = fptosi double %i.oc to i32
  %i.oe = load ptr, ptr %i.e, align 8, !tbaa !45  ; 10 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 100 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !76
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %qp2bits.exit.us.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 104
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !77
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %qp2bits.exit.us.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 84
  %i.om = load i64, ptr %i.ol, align 4            ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i.i.us.i = call i64 @llvm.fshl.i64(i64 %i.om, i64 %i.om, i64 32)
  br label %get_fps.exit.i.us.i

bb.bi:                                            ; preds = %bb.bg
  %.sroa.0.0.copyload.i.i.i.us.i = load i64, ptr %i.of, align 4, !tbaa !78
  br label %get_fps.exit.i.us.i

get_fps.exit.i.us.i:                              ; preds = %bb.bi, %bb.bh
  %.sroa.0.0.i.i.i.us.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.us.i, %bb.bi ], [ %.sroa.01.0.insert.insert.i.i.i.i.us.i, %bb.bh ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.us.i = trunc i64 %.sroa.0.0.i.i.i.us.i to i32
  %.sroa.2.0.extract.shift.i.i.i.us.i = lshr i64 %.sroa.0.0.i.i.i.us.i, 32
  %.sroa.2.0.extract.trunc.i.i.i.us.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.us.i to i32
  %i.on = sitofp nsz i32 %.sroa.0.0.extract.trunc.i.i.i.us.i to double
  %i.oo = sitofp nsz i32 %.sroa.2.0.extract.trunc.i.i.i.us.i to double
  %i.op = fdiv nsz double %i.on, %i.oo            ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oe, i64 448
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !75 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oe, i64 464
  %i.ot = load <2 x i64>, ptr %i.os, align 8, !tbaa !83
  %i.ou = sitofp nsz <2 x i64> %i.ot to <2 x double> ; 2 uses
  %i.ov = extractelement <2 x double> %i.ou, i64 1
  %i.ow = fdiv nsz double %i.ov, %i.op
  %i.ox = extractelement <2 x double> %i.ou, i64 0
  %i.oy = fdiv nsz double %i.ox, %i.op            ; 2 uses
  %.not.i221.us.i = icmp eq i32 %i.or, 0
  br i1 %.not.i221.us.i, label %ff_vbv_update.exit.us.i, label %bb.bj

bb.bj:                                            ; preds = %get_fps.exit.i.us.i
  %i.oz = sitofp nsz i32 %i.od to double          ; 2 uses
  %i.pa = load double, ptr %i.be, align 16, !tbaa !85
  %i.pb = fsub nsz double %i.pa, %i.oz            ; 3 uses
  store double %i.pb, ptr %i.be, align 16, !tbaa !85
  %i.pc = fcmp nsz olt double %i.pb, 0.000000e+00
  br i1 %i.pc, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.oe, i32 noundef 16, ptr noundef nonnull @.str.33) #12
  %i.pd = fcmp nsz olt double %i.oy, %i.oz
  br i1 %i.pd, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.pe = load i32, ptr %i.gy, align 8, !tbaa !109
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oe, i64 440
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !110
  %i.ph = icmp eq i32 %i.pe, %i.pg
  br i1 %i.ph, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.oe, i32 noundef 16, ptr noundef nonnull @.str.34) #12
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %i.pi = phi double [ %i.pb, %bb.bj ], [ 0.000000e+00, %bb.bm ], [ 0.000000e+00, %bb.bl ], [ 0.000000e+00, %bb.bk ] ; 2 uses
  %i.pj = sitofp nsz i32 %i.or to double          ; 3 uses
  %i.pk = fsub nsz double %i.pj, %i.pi
  %i.pl = fadd nsz double %i.pk, -1.000000e+00
  %i.pm = fptosi double %i.pl to i32              ; 2 uses
  %i.pn = fptosi double %i.ow to i32              ; 2 uses
  %i.po = fptosi double %i.oy to i32
  %i.pp = icmp slt i32 %i.pm, %i.pn
  %..i.i.us.i = call i32 @llvm.smin.i32(i32 %i.pm, i32 %i.po)
  %.0.i.i.us.i = select i1 %i.pp, i32 %i.pn, i32 %..i.i.us.i
  %i.pq = sitofp nsz i32 %.0.i.i.us.i to double
  %i.pr = fadd nsz double %i.pi, %i.pq            ; 4 uses
  store double %i.pr, ptr %i.be, align 16, !tbaa !85
  %i.ps = fcmp nsz ule double %i.pr, %i.pj
  br i1 %i.ps, label %ff_vbv_update.exit.us.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pt = fsub nsz double %i.pr, %i.pj
  %i.pu = fmul nsz double %i.pt, 1.250000e-01
  %i.pv = call nsz double @llvm.ceil.f64(double %i.pu)
  %i.pw = fptosi double %i.pv to i32              ; 3 uses
  %i.px = icmp slt i32 %i.pw, 4
  br i1 %i.px, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.py = load i32, ptr %i.gz, align 16, !tbaa !111
  %i.pz = icmp eq i32 %i.py, 12
  %spec.select.i.us.i = select i1 %i.pz, i32 4, i32 %i.pw
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.039.i.us.i = phi i32 [ %i.pw, %bb.bo ], [ %spec.select.i.us.i, %bb.bp ] ; 4 uses
  %i.qa = shl nsw i32 %.039.i.us.i, 3
  %i.qb = sitofp nsz i32 %i.qa to double
  %i.qc = fsub nsz double %i.pr, %i.qb
  store double %i.qc, ptr %i.be, align 16, !tbaa !85
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oe, i64 524
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !112
  %i.qf = and i32 %i.qe, 2
  %.not46.i.us.i = icmp eq i32 %i.qf, 0
  br i1 %.not46.i.us.i, label %ff_vbv_update.exit.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.oe, i32 noundef 48, ptr noundef nonnull @.str.35, i32 noundef %.039.i.us.i) #12
  br label %ff_vbv_update.exit.us.i

ff_vbv_update.exit.us.i:                          ; preds = %bb.br, %bb.bq, %bb.bn, %get_fps.exit.i.us.i
  %.1.i.us.i = phi i32 [ 0, %get_fps.exit.i.us.i ], [ 0, %bb.bn ], [ %.039.i.us.i, %bb.bq ], [ %.039.i.us.i, %bb.br ]
  %i.qg = shl nsw i32 %.1.i.us.i, 3
  %i.qh = sitofp nsz i32 %i.qg to double
  %i.qi = fadd nsz double %i.oc, %i.qh
  %i.qj = fptoui double %.1190265.us.i to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  store i64 %i.qj, ptr %i.qk, align 8, !tbaa !113
  %i.ql = fadd nsz double %.1190265.us.i, %i.qi   ; 2 uses
  %indvars.iv.next324.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %i.qm = load i32, ptr %i.d, align 16, !tbaa !88 ; 2 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = icmp slt i64 %indvars.iv.next324.i, %i.qn
  br i1 %i.qo, label %.lr.ph267.us.i, label %._crit_edge268.us.i, !llvm.loop !148

._crit_edge268.us.i:                              ; preds = %ff_vbv_update.exit.us.i, %.preheader225.us.i
  %i.qp = phi i32 [ %i.ht, %.preheader225.us.i ], [ %i.qm, %ff_vbv_update.exit.us.i ]
  %.1190.lcssa.us.i = phi double [ 0.000000e+00, %.preheader225.us.i ], [ %i.ql, %ff_vbv_update.exit.us.i ] ; 3 uses
  %i.qq = fcmp nsz ogt double %.1190.lcssa.us.i, %i.ha ; 2 uses
  %i.qr = fsub nsz double %i.hd, %.0191271.us.i
  %.1193.us.i = select nsz i1 %i.qq, double %i.qr, double %i.hd
  %i.qs = zext i1 %i.qq to i32
  %.1187.us.i = add nuw nsw i32 %.0186272.us.i, %i.qs ; 3 uses
  %i.qt = fmul nnan nsz double %.0191271.us.i, 5.000000e-01 ; 2 uses
  %i.qu = fcmp nsz ogt double %i.qt, f0x3E7AD7F29ABCAF48
  br i1 %i.qu, label %.preheader226.split.us.i, label %.split.us.i, !llvm.loop !149

bb.bs:                                            ; preds = %._crit_edge.thread.i
  call void @av_free(ptr noundef %i.gl) #12
  call void @av_free(ptr noundef %i.go) #12
  br label %.thread211

.preheader226.split.i:                            ; preds = %.preheader226.i
  %i.qv = load i32, ptr %i.gr, align 8, !tbaa !75
  %i.qw = sdiv i32 %i.qv, 2
  %i.qx = sitofp nsz i32 %i.qw to double
  store double %i.qx, ptr %i.be, align 16, !tbaa !85
  %i.qy = load i32, ptr %i.d, align 16, !tbaa !88
  %i.qz = icmp sgt i32 %i.qy, 0
  br i1 %i.qz, label %.lr.ph233.i, label %._crit_edge234.i

.lr.ph233.i:                                      ; preds = %.preheader226.split.i, %.lr.ph233.i
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %.lr.ph233.i ], [ 0, %.preheader226.split.i ] ; 4 uses
  %i.ra = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.rb = getelementptr inbounds nuw [72 x i8], ptr %i.ra, i64 %indvars.iv291.i ; 2 uses
  %i.rc = trunc nuw nsw i64 %indvars.iv291.i to i32
  %i.rd = call nsz fastcc double @get_qscale(ptr noundef nonnull %0, ptr noundef %i.rb, double noundef 6.553600e+04, i32 noundef %i.rc) ; 2 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv291.i
  store double %i.rd, ptr %i.re, align 8, !tbaa !80
  %i.rf = load i32, ptr %i.rb, align 8, !tbaa !92
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.rg
  store double %i.rd, ptr %i.rh, align 8, !tbaa !80
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %i.ri = load i32, ptr %i.d, align 16, !tbaa !88
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv.next292.i, %i.rj
  br i1 %i.rk, label %.lr.ph233.i, label %._crit_edge234.i, !llvm.loop !143

._crit_edge234.i:                                 ; preds = %.lr.ph233.i, %.preheader226.split.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.28, i32 noundef 398) #12
  call void @abort() #14
  unreachable

.split.us.i:                                      ; preds = %._crit_edge268.us.i
  call void @av_free(ptr noundef nonnull %i.gl) #12
  call void @av_free(ptr noundef nonnull %i.go) #12
  %i.rl = load i32, ptr %i.d, align 16, !tbaa !88 ; 2 uses
  %i.rm = icmp sgt i32 %i.rl, 0
  br i1 %i.rm, label %.lr.ph280.i, label %._crit_edge281.i

.lr.ph280.i:                                      ; preds = %.split.us.i
  %i.rn = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.ro = getelementptr inbounds nuw i8, ptr %i.dp, i64 436
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !156 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.dp, i64 440
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !110
  %wide.trip.count329.i = zext nneg i32 %i.rl to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %.lr.ph280.i
  %indvars.iv326.i = phi i64 [ 0, %.lr.ph280.i ], [ %indvars.iv.next327.i, %bb.bt ] ; 2 uses
  %.0188277.i = phi double [ 0.000000e+00, %.lr.ph280.i ], [ %i.rz, %bb.bt ]
  %i.rs = getelementptr inbounds nuw [72 x i8], ptr %i.rn, i64 %indvars.iv326.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 52
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !93
  %i.rv = fdiv nsz float %i.ru, 1.180000e+02
  %i.rw = fptosi float %i.rv to i32               ; 2 uses
  %i.rx = icmp sgt i32 %i.rp, %i.rw
  %..i.i = call i32 @llvm.smin.i32(i32 %i.rr, i32 %i.rw)
  %.0.i.i = select i1 %i.rx, i32 %i.rp, i32 %..i.i
  %i.ry = sitofp nsz i32 %.0.i.i to double
  %i.rz = fadd nsz double %.0188277.i, %i.ry      ; 2 uses
  %indvars.iv.next327.i = add nuw nsw i64 %indvars.iv326.i, 1 ; 2 uses
  %exitcond330.not.i = icmp eq i64 %indvars.iv.next327.i, %wide.trip.count329.i
  br i1 %exitcond330.not.i, label %._crit_edge281.loopexit.i, label %bb.bt, !llvm.loop !150

._crit_edge281.loopexit.i:                        ; preds = %bb.bt
  %i.sa = fptrunc nsz double %i.rz to float
  br label %._crit_edge281.i

._crit_edge281.i:                                 ; preds = %._crit_edge281.loopexit.i, %.split.us.i
  %.0188.lcssa.i = phi float [ 0.000000e+00, %.split.us.i ], [ %i.sa, %._crit_edge281.loopexit.i ]
  %i.sb = icmp samesign ult i32 %.1187.us.i, 41
  br i1 %i.sb, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge281.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.28, i32 noundef 470) #12
  call void @abort() #14
  unreachable

bb.bv:                                            ; preds = %._crit_edge281.i
  %i.sc = load i64, ptr %i.dy, align 16, !tbaa !98 ; 2 uses
  %i.sd = sitofp nsz i64 %i.sc to double
  %i.se = fdiv nsz double %i.ha, %i.sd
  %i.sf = fdiv nsz double %.1190.lcssa.us.i, %i.se
  %i.sg = fptosi double %i.sf to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dp, i32 noundef 48, ptr noundef nonnull @.str.46, i64 noundef %i.sc, i64 noundef %i.sg) #12
  %i.sh = load i32, ptr %i.d, align 16, !tbaa !88
  %i.si = sitofp nsz i32 %i.sh to float
  %i.sj = fdiv nsz float %.0188.lcssa.i, %i.si
  %i.sk = fpext nsz float %i.sj to double
end_hunk_1
begin_hunk_2_@ff_rate_control_init:bb.a
  %i.ur = sitofp nsz i32 %i.uq to float
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  store i32 0, ptr %i.tn, align 8, !tbaa !115
  store i32 0, ptr %i.tj, align 8, !tbaa !101
  %i.us = fmul nsz double %i.ub, 9.000000e-01
  %i.ut = fptosi double %i.us to i32              ; 2 uses
  store i32 %i.ut, ptr %i.tk, align 4, !tbaa !102
  %i.uu = fmul nsz double %i.ub, 1.000000e-01
  %i.uv = fptosi double %i.uu to i32
  %i.uw = sitofp nsz i32 %i.ut to float
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ux = phi i32 [ %i.uv, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %i.uy = phi float [ %i.uw, %bb.cj ], [ 0.000000e+00, %bb.ci ]
  %i.uz = phi float [ 0.000000e+00, %bb.cj ], [ %i.ur, %bb.ci ]
  store i32 %i.ux, ptr %i.tl, align 4, !tbaa !100
  %i.va = zext nneg i32 %.sink to i64             ; 4 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.va ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !83
  %i.vd = uitofp nsz i64 %i.vc to float
  %i.ve = call nsz float @llvm.fmuladd.f32(float %i.uz, float 2.360000e+02, float %i.vd)
  %i.vf = fptoui float %i.ve to i64
  store i64 %i.vf, ptr %i.vb, align 8, !tbaa !83
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.va ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !83
  %i.vi = uitofp nsz i64 %i.vh to float
  %i.vj = call nsz float @llvm.fmuladd.f32(float %i.uy, float 2.360000e+02, float %i.vi)
  %i.vk = fptoui float %i.vj to i64
  store i64 %i.vk, ptr %i.vg, align 8, !tbaa !83
  %i.vl = sext i32 %i.ux to i64
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.va ; 2 uses
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !83
  %i.vo = add i64 %i.vn, %i.vl
  store i64 %i.vo, ptr %i.vm, align 8, !tbaa !83
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.va ; 2 uses
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !78
  %i.vr = add nsw i32 %i.vq, 1
  store i32 %i.vr, ptr %i.vp, align 4, !tbaa !78
  %i.vs = load double, ptr %i.ss, align 16, !tbaa !116
  %i.vt = fdiv nsz double %i.ts, %i.vs
  %i.vu = call nsz fastcc double @get_qscale(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef %i.vt, i32 noundef %.1168246) ; 0 uses
  %i.vv = load i64, ptr %i.to, align 16, !tbaa !98
  %i.vw = sitofp nsz i64 %i.vv to double
  %i.vx = load i32, ptr %i.tp, align 4, !tbaa !76
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.vz = load i32, ptr %i.tq, align 8, !tbaa !77
  %i.wa = icmp sgt i32 %i.vz, 0
  br i1 %i.wa, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %.sroa.0.0.copyload.i.i203 = load i64, ptr %i.tp, align 4, !tbaa !78
  br label %get_fps.exit204

bb.cn:                                            ; preds = %bb.cl, %bb.ck
  %i.wb = load i64, ptr %i.tr, align 4            ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i197 = call i64 @llvm.fshl.i64(i64 %i.wb, i64 %i.wb, i64 32)
  br label %get_fps.exit204

get_fps.exit204:                                  ; preds = %bb.cm, %bb.cn
  %.sroa.0.0.i.i199 = phi i64 [ %.sroa.0.0.copyload.i.i203, %bb.cm ], [ %.sroa.01.0.insert.insert.i.i.i197, %bb.cn ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i200 = trunc i64 %.sroa.0.0.i.i199 to i32
  %.sroa.2.0.extract.shift.i.i201 = lshr i64 %.sroa.0.0.i.i199, 32
  %.sroa.2.0.extract.trunc.i.i202 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i201 to i32
  %i.wc = sitofp nsz i32 %.sroa.0.0.extract.trunc.i.i200 to double
  %i.wd = sitofp nsz i32 %.sroa.2.0.extract.trunc.i.i202 to double
  %i.we = fdiv nsz double %i.wc, %i.wd
  %i.wf = fdiv nsz double %i.vw, %i.we
  %i.wg = load double, ptr %i.st, align 8, !tbaa !117
  %i.wh = fadd nsz double %i.wg, %i.wf            ; 2 uses
  store double %i.wh, ptr %i.st, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.wi = add nuw nsw i32 %.1168246, 1            ; 2 uses
  %exitcond265.not = icmp eq i32 %i.wi, 1800
  br i1 %exitcond265.not, label %.loopexit, label %bb.cf, !llvm.loop !151

.loopexit:                                        ; preds = %get_fps.exit204, %bb.ce, %bb.cb
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.wk = load i32, ptr %i.wj, align 16, !tbaa !118
  %.not191 = icmp eq i32 %i.wk, 0
  br i1 %.not191, label %.thread207, label %bb.co

bb.co:                                            ; preds = %.loopexit
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !119
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !159
  %i.wp = mul nsw i32 %i.wo, %i.wm
  %i.wq = zext i32 %i.wp to i64                   ; 2 uses
  %i.wr = call ptr @av_malloc_array(i64 noundef %i.wq, i64 noundef 8) #12 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 10928
  store ptr %i.wr, ptr %i.ws, align 16, !tbaa !120
  %.not192.not = icmp eq ptr %i.wr, null
  br i1 %.not192.not, label %.thread207, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %i.wq
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 10936
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !121
  br label %.thread207

.thread207:                                       ; preds = %bb.co, %bb.o, %bb.w, %._crit_edge, %.loopexit, %bb.cp, %.thread211, %bb.cd, %bb.i
  %.5 = phi i32 [ %i.aj, %bb.i ], [ 0, %.loopexit ], [ -1, %._crit_edge ], [ -1, %bb.cd ], [ %.0.i.ph, %.thread211 ], [ 0, %bb.cp ], [ -12, %bb.o ], [ -1, %bb.w ], [ -12, %bb.co ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal double @bits2qp_cb(ptr nofree noundef readonly captures(none) %0, double noundef %1) #4 {
bb.a:
  %i.a = fcmp nsz olt double %1, 9.000000e-01
  br i1 %i.a, label %bb.b, label %bits2qp.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.41) #12
  br label %bits2qp.exit

bits2qp.exit:                                     ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !94
  %i.d = fpext nsz float %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !102
  %i.i = add i32 %i.f, 1
  %i.j = add i32 %i.i, %i.h
  %i.k = sitofp nsz i32 %i.j to double
  %i.l = fmul nsz double %i.d, %i.k
  %i.m = fdiv nsz double %i.l, %1
  ret double %i.m
}

; Function Attrs: nounwind uwtable
define internal double @qp2bits_cb(ptr nofree noundef readonly captures(none) %0, double noundef %1) #4 {
bb.a:
  %i.a = fcmp nsz ugt double %1, 0.000000e+00
  br i1 %i.a, label %qp2bits.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.42) #12
  br label %qp2bits.exit

qp2bits.exit:                                     ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !94
  %i.d = fpext nsz float %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !102
  %i.i = add i32 %i.f, 1
  %i.j = add i32 %i.i, %i.h
  %i.k = sitofp nsz i32 %i.j to double
  %i.l = fmul nsz double %i.d, %i.k
  %i.m = fdiv nsz double %i.l, %1
  ret double %i.m
}

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind uwtable
define internal fastcc double @get_qscale(ptr nofree noundef captures(none) %0, ptr noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [21 x double], align 16           ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89
  %i.h = sitofp nsz i32 %i.g to double            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store <2 x double> <double f0x400921FB54442D18, double f0x4005BF0A8B145769>, ptr %i.a, align 16, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !94 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.n = load <2 x i32>, ptr %i.j, align 8, !tbaa !78 ; 2 uses
  %i.o = sitofp nsz <2 x i32> %i.n to <2 x float>
  %i.p = insertelement <2 x float> poison, float %i.l, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul nsz <2 x float> %i.q, %i.o
  %i.s = fpext nsz <2 x float> %i.r to <2 x double>
  store <2 x double> %i.s, ptr %i.i, align 16, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.n)
  %i.v = sitofp nsz i32 %i.u to double
  %i.w = fpext nsz float %i.l to double
  %i.x = fmul nsz double %i.w, %i.v
  store double %i.x, ptr %i.t, align 16, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100
  %i.ab = sitofp nsz i32 %i.aa to double
  %i.ac = fdiv nsz double %i.ab, %i.h
  store double %i.ac, ptr %i.y, align 8, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = load i32, ptr %1, align 8, !tbaa !92    ; 3 uses
  %i.af = icmp eq i32 %i.ae, 3                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !161 ; 2 uses
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !162
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = sitofp nsz i32 %i.ak to double
  %i.am = fmul nnan nsz double %i.al, 5.000000e-01
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.an = sitofp nsz i32 %i.ah to double
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi nsz double [ %i.am, %bb.b ], [ %i.an, %bb.c ]
  store double %i.ao, ptr %i.ad, align 16, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !115
  %i.as = sitofp nsz i32 %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !114
  %i.av = sitofp nsz i64 %i.au to double
  %i.aw = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = insertelement <2 x double> poison, double %i.h, i64 0 ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv nsz <2 x double> %i.ax, %i.az
  store <2 x double> %i.ba, ptr %i.ap, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bf = icmp eq i32 %i.ae, 1
  %i.bg = uitofp i1 %i.bf to double
  store double %i.bg, ptr %i.be, align 16, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bi = icmp eq i32 %i.ae, 2
  %i.bj = uitofp i1 %i.bi to double
  store double %i.bj, ptr %i.bh, align 8, !tbaa !80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bl = uitofp i1 %i.af to double
  store double %i.bl, ptr %i.bk, align 16, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 10824
  %i.bo = sext i32 %i.e to i64                    ; 4 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !83
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10864
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !78
  %i.bu = sitofp nsz i32 %i.bt to double          ; 2 uses
  %i.bv = sitofp nsz i64 %i.bd to double
  %i.bw = uitofp nsz i64 %i.bq to double
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = insertelement <2 x double> %i.ay, double %i.bu, i64 1
  %i.ca = fdiv nsz <2 x double> %i.by, %i.bz      ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  store double %i.cb, ptr %i.bb, align 8, !tbaa !80
  %i.cc = extractelement <2 x double> %i.ca, i64 1
  store double %i.cc, ptr %i.bm, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 428
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !163
  %i.cg = fpext nsz float %i.cf to double
  store double %i.cg, ptr %i.cd, align 16, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10704
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 10712
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 10868
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !tbaa !83
  %i.cm = uitofp nsz <2 x i64> %i.cl to <2 x double>
  %i.cn = load <2 x i32>, ptr %i.ck, align 4, !tbaa !78
  %i.co = sitofp nsz <2 x i32> %i.cn to <2 x double> ; 2 uses
  %i.cp = fdiv nsz <2 x double> %i.cm, %i.co
  store <2 x double> %i.cp, ptr %i.ch, align 8, !tbaa !80
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 10744
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 10760
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 10876
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !78
  %i.cv = load <2 x i64>, ptr %i.cs, align 8, !tbaa !83
  %i.cw = uitofp nsz <2 x i64> %i.cv to <2 x double>
  %i.cx = sitofp nsz i32 %i.cu to double
  %i.cy = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x double> %i.cy, double %i.cx, i64 1
  %i.da = fdiv nsz <2 x double> %i.cw, %i.cz
  store <2 x double> %i.da, ptr %i.cq, align 8, !tbaa !80
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.bo
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !83
  %i.de = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.bo
  %i.df = load i64, ptr %i.de, align 8, !tbaa !83
  %i.dg = add i64 %i.df, %i.dd
  %i.dh = uitofp nsz i64 %i.dg to double
  %i.di = fdiv nsz double %i.dh, %i.bu
  store double %i.di, ptr %i.db, align 8, !tbaa !80
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store double 0.000000e+00, ptr %i.dj, align 16, !tbaa !80
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 10920
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !122
  %i.dm = call nsz double @av_expr_eval(ptr noundef %i.dl, ptr noundef nonnull %i.a, ptr noundef nonnull %1) #12 ; 3 uses
  %i.dn = fcmp uno double %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 10912
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.51, ptr noundef %i.dp) #12
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 10624 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !116
  %i.ds = fadd nsz double %i.dm, %i.dr
  store double %i.ds, ptr %i.dq, align 8, !tbaa !116
  %i.dt = fmul nsz double %2, %i.dm               ; 2 uses
  %i.du = fcmp nsz olt double %i.dt, 0.000000e+00
  %spec.store.select = select i1 %i.du, double 0.000000e+00, double %i.dt
  %i.dv = fadd nsz double %spec.store.select, 1.000000e+00 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 452 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !164 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.pre100 = phi i32 [ %i.dx, %.lr.ph ], [ %.pre101, %bb.m ] ; 4 uses
  %i.ea = phi i32 [ %i.dx, %.lr.ph ], [ %i.ez, %bb.m ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.09097 = phi double [ %i.dv, %.lr.ph ], [ %.2, %bb.m ] ; 3 uses
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !165
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %indvars.iv ; 4 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !167
  %i.ee = icmp sgt i32 %i.ed, %3
  br i1 %i.ee, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !168
  %i.eh = icmp slt i32 %i.eg, %3
  br i1 %i.eh, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !169 ; 3 uses
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ek = sitofp nsz i32 %i.ej to double
  %i.el = icmp sgt i32 %i.ej, 0
  br i1 %i.el, label %qp2bits.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.42) #12
  %.pre.pre = load i32, ptr %i.dw, align 4, !tbaa !164
  br label %qp2bits.exit

qp2bits.exit:                                     ; preds = %bb.j, %bb.k
  %.pre = phi i32 [ %.pre100, %bb.j ], [ %.pre.pre, %bb.k ] ; 2 uses
  %i.em = load float, ptr %i.k, align 4, !tbaa !94
  %i.en = fpext nsz float %i.em to double
  %i.eo = load i32, ptr %i.j, align 8, !tbaa !101
  %i.ep = load i32, ptr %i.m, align 4, !tbaa !102
  %i.eq = add i32 %i.eo, 1
  %i.er = add i32 %i.eq, %i.ep
  %i.es = sitofp nsz i32 %i.er to double
  %i.et = fmul nsz double %i.en, %i.es
  %i.eu = fdiv nsz double %i.et, %i.ek
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !170
  %i.ex = fpext nsz float %i.ew to double
  %i.ey = fmul nsz double %.09097, %i.ex
  br label %bb.m

bb.m:                                             ; preds = %qp2bits.exit, %bb.l, %bb.h, %bb.g
  %.pre101 = phi i32 [ %.pre100, %bb.h ], [ %.pre100, %bb.g ], [ %.pre, %qp2bits.exit ], [ %.pre100, %bb.l ]
  %i.ez = phi i32 [ %i.ea, %bb.h ], [ %i.ea, %bb.g ], [ %.pre, %qp2bits.exit ], [ %i.ea, %bb.l ] ; 2 uses
  %.2 = phi nsz double [ %.09097, %bb.h ], [ %.09097, %bb.g ], [ %i.eu, %qp2bits.exit ], [ %i.ey, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = icmp slt i64 %indvars.iv.next, %i.fa
  br i1 %i.fb, label %bb.g, label %._crit_edge, !llvm.loop !160

._crit_edge:                                      ; preds = %bb.m, %bb.f
  %.090.lcssa = phi double [ %i.dv, %bb.f ], [ %.2, %bb.m ] ; 2 uses
  %i.fc = fcmp nsz olt double %.090.lcssa, 9.000000e-01
  br i1 %i.fc, label %bb.n, label %bits2qp.exit

bb.n:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.41) #12
  br label %bits2qp.exit

bits2qp.exit:                                     ; preds = %._crit_edge, %bb.n
  %i.fd = load float, ptr %i.k, align 4, !tbaa !94
  %i.fe = fpext nsz float %i.fd to double
  %i.ff = load i32, ptr %i.j, align 8, !tbaa !101
  %i.fg = load i32, ptr %i.m, align 4, !tbaa !102
  %i.fh = add i32 %i.ff, 1
  %i.fi = add i32 %i.fh, %i.fg
  %i.fj = sitofp nsz i32 %i.fi to double
  %i.fk = fmul nsz double %i.fe, %i.fj
  %i.fl = fdiv nsz double %i.fk, %.090.lcssa      ; 4 uses
  switch i32 %i.e, label %bb.q [
    i32 1, label %bb.o
    i32 3, label %bb.p
  ]

bb.o:                                             ; preds = %bits2qp.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !106 ; 2 uses
  %i.fo = fcmp nsz olt float %i.fn, 0.000000e+00
  br i1 %i.fo, label %.sink.split, label %bb.q

bb.p:                                             ; preds = %bits2qp.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !104 ; 2 uses
  %i.fr = fcmp nsz olt float %i.fq, 0.000000e+00
  br i1 %i.fr, label %.sink.split, label %bb.q

.sink.split:                                      ; preds = %bb.p, %bb.o
  %.sink = phi float [ %i.fn, %bb.o ], [ %i.fq, %bb.p ]
  %.sink112 = phi i64 [ 216, %bb.o ], [ 208, %bb.p ]
  %i.fs = fpext nsz float %.sink to double
  %i.ft = fneg nsz double %i.fl
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink112
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !123
  %i.fw = fpext nsz float %i.fv to double
  %i.fx = call nsz double @llvm.fmuladd.f64(double %i.ft, double %i.fs, double %i.fw)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o, %bits2qp.exit, %bb.p
  %.091 = phi nsz double [ %i.fl, %bits2qp.exit ], [ %i.fl, %bb.o ], [ %i.fl, %bb.p ], [ %i.fx, %.sink.split ] ; 2 uses
  %i.fy = fcmp nsz olt double %.091, 1.000000e+00
  %spec.store.select1 = select i1 %i.fy, double 1.000000e+00, double %.091
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.e
  %.092 = phi nsz double [ -1.000000e+00, %bb.e ], [ %spec.store.select1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret double %.092
}

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind optsize uwtable
define void @ff_rate_control_uninit(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  tail call void @av_expr_free(ptr noundef %i.b) #12
  store ptr null, ptr %i.a, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @av_freep(ptr noundef nonnull %i.d) #12
  ret void
}

declare void @av_expr_free(ptr noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @ff_vbv_update(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 4, !tbaa !78
  br label %get_fps.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.j = load i64, ptr %i.i, align 4              ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 32)
  br label %get_fps.exit

get_fps.exit:                                     ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.01.0.insert.insert.i.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.i.i to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.k = sitofp nsz i32 %.sroa.0.0.extract.trunc.i.i to double
  %i.l = sitofp nsz i32 %.sroa.2.0.extract.trunc.i.i to double
  %i.m = fdiv nsz double %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.o = load i32, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.q = load <2 x i64>, ptr %i.p, align 8, !tbaa !83
  %i.r = sitofp nsz <2 x i64> %i.q to <2 x double>
  %i.s = insertelement <2 x double> poison, double %i.m, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fdiv nsz <2 x double> %i.r, %i.t         ; 3 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %get_fps.exit
  %i.v = sitofp nsz i32 %1 to double              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 10480 ; 4 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !85
  %i.y = fsub nsz double %i.x, %i.v               ; 3 uses
  store double %i.y, ptr %i.w, align 8, !tbaa !85
  %i.z = fcmp nsz olt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.33) #12
  %i.aa = extractelement <2 x double> %i.u, i64 0
  %i.ab = fcmp nsz olt double %i.aa, %i.v
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !110
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.34) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %i.ah = phi double [ %i.y, %bb.e ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.ai = sitofp nsz i32 %i.o to double           ; 3 uses
  %i.aj = fsub nsz double %i.ai, %i.ah
  %i.ak = fadd nsz double %i.aj, -1.000000e+00
  %i.al = fptosi double %i.ak to i32              ; 2 uses
  %i.am = extractelement <2 x double> %i.u, i64 1
  %i.an = fptosi double %i.am to i32              ; 2 uses
  %i.ao = extractelement <2 x double> %i.u, i64 0
  %i.ap = fptosi double %i.ao to i32
  %i.aq = icmp slt i32 %i.al, %i.an
  %..i = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.ap)
  %.0.i = select i1 %i.aq, i32 %i.an, i32 %..i
  %i.ar = sitofp nsz i32 %.0.i to double
  %i.as = fadd nsz double %i.ah, %i.ar            ; 4 uses
  store double %i.as, ptr %i.w, align 8, !tbaa !85
  %i.at = fcmp nsz ule double %i.as, %i.ai
  br i1 %i.at, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = fsub nsz double %i.as, %i.ai
  %i.av = fmul nsz double %i.au, 1.250000e-01
  %i.aw = tail call nsz double @llvm.ceil.f64(double %i.av)
  %i.ax = fptosi double %i.aw to i32              ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 4
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ba = load i32, ptr %i.az, align 16, !tbaa !111
  %i.bb = icmp eq i32 %i.ba, 12
  %spec.select = select i1 %i.bb, i32 4, i32 %i.ax
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.039 = phi i32 [ %i.ax, %bb.j ], [ %spec.select, %bb.k ] ; 4 uses
  %i.bc = shl nsw i32 %.039, 3
  %i.bd = sitofp nsz i32 %i.bc to double
  %i.be = fsub nsz double %i.as, %i.bd
  store double %i.be, ptr %i.w, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 524
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !112
  %i.bh = and i32 %i.bg, 2
  %.not46 = icmp eq i32 %i.bh, 0
  br i1 %.not46, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 48, ptr noundef nonnull @.str.35, i32 noundef %.039) #12
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %get_fps.exit, %bb.i
  %.1 = phi i32 [ 0, %get_fps.exit ], [ 0, %bb.i ], [ %.039, %bb.l ], [ %.039, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_get_2pass_fcode(ptr nofree noundef captures(none) initializes((5896, 5904)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.d = load i32, ptr %i.c, align 8, !tbaa !124
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [72 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.i = load <2 x i32>, ptr %i.g, align 4, !tbaa !78
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define float @ff_rate_estimate_qscale(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.RateControlEntry, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10464
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.e = load i32, ptr %i.d, align 8, !tbaa !124  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.g = load i32, ptr %i.f, align 16, !tbaa !60  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10344
  %i.i = load <2 x i32>, ptr %i.h, align 8, !tbaa !78 ; 4 uses
  %shift = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = icmp sgt <2 x i32> %i.i, %shift
  %.not.i = extractelement <2 x i1> %i.j, i64 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.28, i32 noundef 144) #12
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i32 %i.g, label %get_qminmax.exit [
    i32 3, label %.sink.split.i
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink66.i = phi i64 [ 212, %bb.d ], [ 204, %bb.c ]
  %.sink60.i = phi i64 [ 216, %bb.d ], [ 208, %bb.c ]
  %i.k = sitofp nsz <2 x i32> %i.i to <2 x float>
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink66.i
  %i.m = load float, ptr %i.l, align 4, !tbaa !123 ; 3 uses
  %i.n = fcmp nsz ult float %i.m, 0.000000e+00
  %i.o = fneg nsz float %i.m
  %i.p = select nsz i1 %i.n, float %i.o, float %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink60.i
  %i.r = load float, ptr %i.q, align 8, !tbaa !123
  %i.s = insertelement <2 x float> poison, float %i.p, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.t, <2 x float> %i.v)
  %i.x = fpext nsz <2 x float> %i.w to <2 x double>
  %i.y = fadd nsz <2 x double> %i.x, splat (double 5.000000e-01)
  %i.z = fptosi <2 x double> %i.y to <2 x i32>
  br label %get_qminmax.exit

get_qminmax.exit:                                 ; preds = %bb.c, %.sink.split.i
  %i.aa = phi <2 x i32> [ %i.i, %bb.c ], [ %i.z, %.sink.split.i ] ; 2 uses
  %i.ab = extractelement <2 x i32> %i.aa, i64 0
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 1)
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 32767) ; 3 uses
  %i.ae = extractelement <2 x i32> %i.aa, i64 1
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 32767)
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 %i.ad) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !76
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %get_qminmax.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !77
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 4, !tbaa !78
  br label %get_fps.exit

bb.g:                                             ; preds = %bb.e, %get_qminmax.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ao = load i64, ptr %i.an, align 4            ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 32)
  br label %get_fps.exit

get_fps.exit:                                     ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.f ], [ %.sroa.01.0.insert.insert.i.i.i, %bb.g ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.i.i to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.ap = sitofp nsz i32 %.sroa.0.0.extract.trunc.i.i to double
  %i.aq = sitofp nsz i32 %.sroa.2.0.extract.trunc.i.i to double
  %i.ar = fdiv nsz double %i.ap, %i.aq            ; 3 uses
  %i.as = icmp slt i32 %i.e, 3
  %i.at = icmp ne i32 %1, 0                       ; 2 uses
  %or.cond = or i1 %i.at, %i.as
  br i1 %or.cond, label %update_predictor.exit, label %bb.h

bb.h:                                             ; preds = %get_fps.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 10456
  %i.av = load i32, ptr %i.au, align 8, !tbaa !174 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 1
  %.in.v = select i1 %i.aw, i64 10696, i64 10688
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.ax = load i64, ptr %.in, align 8, !tbaa !83
  %i.ay = sitofp nsz i64 %i.ax to double
  %i.az = tail call nsz double @llvm.sqrt.f64(double %i.ay) ; 2 uses
  %i.ba = fcmp nsz olt double %i.az, 1.000000e+01
  br i1 %i.ba, label %update_predictor.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 10416
  %i.bc = load i32, ptr %i.bb, align 16, !tbaa !175
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 10424
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !176
  %i.bf = sub nsw i32 %i.bc, %i.be
  %i.bg = sitofp nsz i32 %i.bf to double
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 10640
  %i.bi = load double, ptr %i.bh, align 16, !tbaa !177
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10488
  %i.bk = sext i32 %i.av to i64
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = fmul nsz double %i.bi, %i.bg
  %i.bn = fadd nsz double %i.az, 1.000000e+00
  %i.bo = fdiv nsz double %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !82
  %i.br = load <2 x double>, ptr %i.bl, align 8, !tbaa !80
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul nsz <2 x double> %i.bt, %i.br
  %i.bv = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bo, i64 0
  %i.bw = fadd nsz <2 x double> %i.bu, %i.bv
  store <2 x double> %i.bw, ptr %i.bl, align 8, !tbaa !80
  br label %update_predictor.exit

update_predictor.exit:                            ; preds = %bb.i, %bb.h, %get_fps.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !86 ; 3 uses
  %i.bz = and i32 %i.by, 1024
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %update_predictor.exit
  %i.ca = icmp sgt i32 %i.e, -1
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 943) #12
  tail call void @abort() #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cb = load i32, ptr %i.a, align 16, !tbaa !88
  %.not182 = icmp slt i32 %i.e, %i.cb
  br i1 %.not182, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.36) #12
  br label %bb.cd

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 10472
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = zext nneg i32 %i.e to i64
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !113
  br label %bb.x

bb.o:                                             ; preds = %update_predictor.exit
  %i.ci = icmp eq i32 %i.g, 3
  br i1 %i.ci, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3776
  %i.ck = load i32, ptr %i.cj, align 16, !tbaa !178
  %.not180 = icmp eq i32 %i.ck, 0
  %spec.select = select i1 %.not180, i64 816, i64 1056
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink234 = phi i64 [ 1056, %bb.o ], [ %spec.select, %bb.p ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink234
  %.0163 = load ptr, ptr %i.cl, align 16, !tbaa !179 ; 2 uses
  %.not181 = icmp eq ptr %.0163, null
  br i1 %.not181, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %.0163, align 8, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !180 ; 2 uses
  %i.cp = icmp eq i64 %i.co, -9223372036854775808
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !98
  %i.cs = sitofp nsz i64 %i.cr to double
  %i.ct = sitofp nsz i32 %i.e to double
  %i.cu = fmul nnan nsz double %i.ct, %i.cs
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.cw = load i64, ptr %i.cv, align 16, !tbaa !98
  %i.cx = sitofp nsz i64 %i.cw to double
  %i.cy = sitofp nsz i64 %i.co to double
  %i.cz = fmul nnan nsz double %i.cy, %i.cx
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi double [ %i.cu, %bb.s ], [ %i.cz, %bb.t ]
  %.0 = fdiv nsz double %.pn, %i.ar               ; 2 uses
  %i.da = fcmp nsz ogt double %.0, f0x43E0000000000000
  br i1 %i.da, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 24, ptr noundef nonnull @.str.37) #12
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !45  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre209 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !86
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.db = fptosi double %.0 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.n
  %i.dc = phi i32 [ %i.by, %bb.n ], [ %.pre209, %bb.v ], [ %i.by, %bb.w ]
  %i.dd = phi ptr [ %i.c, %bb.n ], [ %.pre, %bb.v ], [ %i.c, %bb.w ]
  %.1 = phi i64 [ %i.ch, %bb.n ], [ 9223372036854775807, %bb.v ], [ %i.db, %bb.w ] ; 2 uses
  %.0164 = phi ptr [ %i.cf, %bb.n ], [ %2, %bb.v ], [ %2, %bb.w ] ; 14 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 10408 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !181
  %i.dg = sub nsw i64 %i.df, %.1
  %i.dh = sitofp nsz i64 %i.dg to double
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !182
  %i.dk = sitofp nsz i32 %i.dj to double          ; 2 uses
  %i.dl = fsub nsz double %i.dk, %i.dh
  %i.dm = fdiv nsz double %i.dl, %i.dk            ; 2 uses
  %i.dn = fptrunc nsz double %i.dm to float
  %i.do = fcmp nsz ole double %i.dm, f0x3690000000000000
  %spec.store.select = select i1 %i.do, float 1.000000e-03, float %i.dn ; 3 uses
  %i.dp = icmp eq i32 %i.g, 1                     ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 10952 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 10960 ; 2 uses
  %i.ds = and i32 %i.dc, 1024
  %.not184 = icmp eq i32 %i.ds, 0
  br i1 %.not184, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.dp, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %.0164, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !91
  %i.dv = icmp eq i32 %i.g, %i.du
  br i1 %i.dv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.28, i32 noundef 984) #12
  tail call void @abort() #14
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %.0164, i64 52
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !93
  %i.dy = fdiv nsz float %i.dx, %spec.store.select
  br label %bb.bb

bb.ac:                                            ; preds = %bb.x
  %.in183 = select i1 %i.dp, ptr %i.dq, ptr %i.dr
  %i.dz = load i64, ptr %.in183, align 8, !tbaa !83
  %i.ea = getelementptr inbounds nuw i8, ptr %.0164, i64 48 ; 2 uses
  store i32 %i.g, ptr %i.ea, align 8, !tbaa !91
  store i32 %i.g, ptr %.0164, align 8, !tbaa !92
  %i.eb = getelementptr inbounds nuw i8, ptr %.0164, i64 56
  %i.ec = load <2 x i64>, ptr %i.dq, align 8, !tbaa !83
  %i.ed = shufflevector <2 x i64> %i.ec, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ed, ptr %i.eb, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %.0164, i64 4
  store float 2.360000e+02, ptr %i.ee, align 4, !tbaa !94
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.eg = getelementptr inbounds nuw i8, ptr %.0164, i64 12
  %i.eh = load <2 x i32>, ptr %i.ef, align 8, !tbaa !78
  store <2 x i32> %i.eh, ptr %i.eg, align 4, !tbaa !78
  %i.ei = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  store i32 1, ptr %i.ei, align 8, !tbaa !95
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 10488
  %i.ek = sext i32 %i.g to i64                    ; 5 uses
  %i.el = getelementptr inbounds [24 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %i.em = sitofp nsz i64 %i.dz to double
  %i.en = tail call ninf nsz double @llvm.sqrt.f64(double %i.em)
  %.val = load double, ptr %i.el, align 8, !tbaa !183
  %i.eo = getelementptr i8, ptr %i.el, i64 8
  %.val189 = load double, ptr %i.eo, align 8, !tbaa !184
  %i.ep = fmul nsz double %i.en, %.val
  %i.eq = fmul nsz double %.val189, 2.360000e+02
  %i.er = fdiv nsz double %i.ep, %i.eq            ; 3 uses
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.et = load i32, ptr %i.es, align 4, !tbaa !89
  %i.eu = fptosi double %i.er to i32
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ev = fmul nsz double %i.er, 9.000000e-01
  %i.ew = fptosi double %i.ev to i32
  %i.ex = fmul nsz double %i.er, 1.000000e-01
  %i.ey = fptosi double %i.ex to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink208 = phi i32 [ %i.et, %bb.ad ], [ 0, %bb.ae ]
  %.sink207 = phi i32 [ %i.eu, %bb.ad ], [ 0, %bb.ae ] ; 2 uses
  %.sink206 = phi i32 [ 0, %bb.ad ], [ %i.ew, %bb.ae ] ; 2 uses
  %.sink = phi i32 [ 0, %bb.ad ], [ %i.ey, %bb.ae ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0164, i64 8
  store i32 %.sink208, ptr %i.ez, align 8, !tbaa !115
  %i.fa = getelementptr inbounds nuw i8, ptr %.0164, i64 24
  store i32 %.sink207, ptr %i.fa, align 8, !tbaa !101
  %i.fb = getelementptr inbounds nuw i8, ptr %.0164, i64 28
  store i32 %.sink206, ptr %i.fb, align 4, !tbaa !102
  %i.fc = getelementptr inbounds nuw i8, ptr %.0164, i64 20
  store i32 %.sink, ptr %i.fc, align 4, !tbaa !100
  %i.fd = insertelement <2 x i32> poison, i32 %.sink207, i64 0
  %i.fe = insertelement <2 x i32> %i.fd, i32 %.sink206, i64 1
  %i.ff = sitofp nsz <2 x i32> %i.fe to <2 x float>
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 10704
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.ek ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !83
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 10744
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.ek ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !83
  %i.fm = uitofp nsz i64 %i.fi to float
  %i.fn = uitofp nsz i64 %i.fl to float
  %i.fo = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fn, i64 1
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> splat (float 2.360000e+02), <2 x float> %i.fp) ; 2 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0
  %i.fs = fptoui float %i.fr to i64
  store i64 %i.fs, ptr %i.fh, align 8, !tbaa !83
  %i.ft = extractelement <2 x float> %i.fq, i64 1
  %i.fu = fptoui float %i.ft to i64
  store i64 %i.fu, ptr %i.fk, align 8, !tbaa !83
  %i.fv = sext i32 %.sink to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 10784
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.ek ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !83
  %i.fz = add i64 %i.fy, %i.fv
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !83
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 10864
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.ek ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !78
  %i.gd = add nsw i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !78
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 10632 ; 3 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !117
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 10624
  %i.gh = load double, ptr %i.gg, align 16, !tbaa !116
  %i.gi = fdiv nsz double %i.gf, %i.gh
  %i.gj = fpext nsz float %spec.store.select to double
  %i.gk = fmul nsz double %i.gi, %i.gj
  %i.gl = call nsz fastcc double @get_qscale(ptr noundef nonnull %0, ptr noundef nonnull %.0164, double noundef %i.gk, i32 noundef %i.e) ; 3 uses
  %i.gm = fcmp nsz olt double %i.gl, f0xB690000000000000
  br i1 %i.gm, label %bb.cd, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = fcmp nsz ogt double %i.gl, f0x3690000000000000
  br i1 %i.gn, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.28, i32 noundef 1023) #12
  call void @abort() #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.go = fptrunc nsz double %i.gl to float
  %i.gp = fpext nsz float %i.go to double         ; 3 uses
  %.0164.val = load i32, ptr %i.ea, align 8, !tbaa !91 ; 5 uses
  %i.gq = load ptr, ptr %i.b, align 8, !tbaa !45  ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 10648 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 10664
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !80
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 10884 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !103 ; 3 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !80
  switch i32 %.0164.val, label %bb.an [
    i32 1, label %bb.aj
    i32 3, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 212
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !106 ; 2 uses
  %i.hb = fcmp nsz ogt float %i.ha, 0.000000e+00
  %i.hc = icmp eq i32 %i.gv, 2
  %or.cond50.i = or i1 %i.hc, %i.hb
  br i1 %or.cond50.i, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.hd = call nsz float @llvm.fabs.f32(float %i.ha)
  %i.he = fpext nsz float %i.hd to double
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gq, i64 216
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !107
  %i.hh = fpext nsz float %i.hg to double
  %i.hi = call nsz double @llvm.fmuladd.f64(double %i.gt, double %i.he, double %i.hh)
  br label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gq, i64 204
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !104 ; 2 uses
  %i.hl = fcmp nsz ogt float %i.hk, 0.000000e+00
  br i1 %i.hl, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  %i.hm = fpext nsz float %i.hk to double
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gq, i64 208
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !105
  %i.hp = fpext nsz float %i.ho to double
  %i.hq = call nsz double @llvm.fmuladd.f64(double %i.gy, double %i.hm, double %i.hp)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.am, %bb.al
  %.0.ph.i = phi double [ %i.gp, %bb.al ], [ %i.hq, %bb.am ] ; 2 uses
  %i.hr = fcmp nsz olt double %.0.ph.i, 1.000000e+00
  %spec.store.select2.i = select i1 %i.hr, double 1.000000e+00, double %.0.ph.i
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.0.i193 = phi nsz double [ %i.hi, %bb.ak ], [ %i.gp, %bb.ai ], [ %i.gp, %bb.aj ] ; 2 uses
  %i.hs = fcmp nsz olt double %.0.i193, 1.000000e+00
  %spec.store.select.i = select i1 %i.hs, double 1.000000e+00, double %.0.i193 ; 3 uses
  %i.ht = icmp ne i32 %.0164.val, 1
  %i.hu = icmp eq i32 %i.gv, 1
  %or.cond.i = or i1 %i.ht, %i.hu
  br i1 %or.cond.i, label %bb.ao, label %.thread5.i

.thread5.i:                                       ; preds = %bb.an
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 10656
  store double %spec.store.select.i, ptr %i.hv, align 16, !tbaa !80
  br label %bb.as

bb.ao:                                            ; preds = %bb.an, %.thread.i
  %spec.store.select4.i = phi double [ %spec.store.select2.i, %.thread.i ], [ %spec.store.select.i, %bb.an ] ; 3 uses
  %i.hw = sext i32 %.0164.val to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.hw ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !80 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gq, i64 444
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !108
  %i.ib = mul nsw i32 %i.ia, 118
  %i.ic = sitofp nsz i32 %i.ib to double          ; 2 uses
  %i.id = fadd nsz double %i.hy, %i.ic            ; 2 uses
  %i.ie = fcmp nsz ogt double %spec.store.select4.i, %i.id
  br i1 %i.ie, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.if = fsub nsz double %i.hy, %i.ic            ; 2 uses
  %i.ig = fcmp nsz olt double %spec.store.select4.i, %i.if
  br i1 %i.ig, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.2.i = phi nsz double [ %i.id, %bb.ao ], [ %spec.store.select4.i, %bb.ap ], [ %i.if, %bb.aq ] ; 3 uses
  store double %.2.i, ptr %i.hx, align 8, !tbaa !80
  %.not.i192 = icmp eq i32 %.0164.val, 3
  br i1 %.not.i192, label %get_diff_limited_q.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.thread5.i
  %.28.i = phi double [ %spec.store.select.i, %.thread5.i ], [ %.2.i, %bb.ar ]
  store i32 %.0164.val, ptr %i.gu, align 4, !tbaa !103
  br label %get_diff_limited_q.exit

get_diff_limited_q.exit:                          ; preds = %bb.ar, %bb.as
  %.29.i = phi double [ %.28.i, %bb.as ], [ %.2.i, %bb.ar ] ; 2 uses
  %i.ih = fptrunc nsz double %.29.i to float      ; 2 uses
  %i.ii = fpext nsz float %i.ih to double
  %i.ij = fcmp nsz ogt double %.29.i, f0x3690000000000000
  br i1 %i.ij, label %bb.au, label %bb.at

bb.at:                                            ; preds = %get_diff_limited_q.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.28, i32 noundef 1025) #12
  call void @abort() #14
  unreachable

bb.au:                                            ; preds = %get_diff_limited_q.exit
  %i.ik = icmp eq i32 %i.g, 2
  br i1 %i.ik, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 9856
  %i.im = load i32, ptr %i.il, align 16, !tbaa !185
  %.not185 = icmp eq i32 %i.im, 0
  br i1 %.not185, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.io = load float, ptr %i.in, align 8, !tbaa !99
  %i.ip = fpext nsz float %i.io to double         ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 10608 ; 2 uses
  %i.ir = load double, ptr %i.iq, align 16, !tbaa !186
  %i.is = fmul nsz double %i.ir, %i.ip
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 10616 ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !187
  %i.iv = fmul nsz double %i.iu, %i.ip
  %i.iw = fadd nsz double %i.is, %i.ii            ; 2 uses
  store double %i.iw, ptr %i.iq, align 16, !tbaa !186
  %i.ix = fadd nsz double %i.iv, 1.000000e+00     ; 2 uses
  store double %i.ix, ptr %i.it, align 8, !tbaa !187
  %i.iy = fdiv nsz double %i.iw, %i.ix            ; 2 uses
  %i.iz = fptrunc nsz double %i.iy to float
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.0168 = phi nsz float [ %i.iz, %bb.aw ], [ %i.ih, %bb.av ] ; 2 uses
  %.0166 = phi nsz double [ %i.iy, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.ja = fcmp nsz ogt float %.0168, 0.000000e+00
  br i1 %i.ja, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.28, i32 noundef 1036) #12
  call void @abort() #14
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.jb = fpext nsz float %.0168 to double
  %i.jc = call nsz fastcc double @modify_qscale(ptr noundef nonnull %0, ptr noundef nonnull %.0164, double noundef %i.jb, i32 noundef %i.e) ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.je = load i64, ptr %i.jd, align 16, !tbaa !98
  %i.jf = sitofp nsz i64 %i.je to double
  %i.jg = fdiv nsz double %i.jf, %i.ar
  %i.jh = load double, ptr %i.ge, align 8, !tbaa !117
  %i.ji = fadd nsz double %i.jh, %i.jg
  store double %i.ji, ptr %i.ge, align 8, !tbaa !117
  %i.jj = fcmp nsz ogt double %i.jc, f0x3690000000000000
  br i1 %i.jj, label %._crit_edge, label %bb.ba

._crit_edge:                                      ; preds = %bb.az
  %i.jk = fptrunc nsz double %i.jc to float
  %.pre210 = load ptr, ptr %i.b, align 8, !tbaa !45
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.28, i32 noundef 1042) #12
  call void @abort() #14
  unreachable

bb.bb:                                            ; preds = %._crit_edge, %bb.ab
  %i.jl = phi ptr [ %i.dd, %bb.ab ], [ %.pre210, %._crit_edge ] ; 2 uses
  %.1169 = phi nsz float [ %i.dy, %bb.ab ], [ %i.jk, %._crit_edge ] ; 4 uses
  %.1167 = phi nsz double [ 0.000000e+00, %bb.ab ], [ %.0166, %._crit_edge ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 524
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !112
  %i.jo = and i32 %i.jn, 2
  %.not187 = icmp eq i32 %i.jo, 0
  br i1 %.not187, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jp = call signext i8 @av_get_picture_type_char(i32 noundef %i.g) #12
  %i.jq = sext i8 %i.jp to i32
  %i.jr = fpext nsz float %.1169 to double
  %i.js = sdiv i64 %.1, 1000
  %i.jt = load i64, ptr %i.de, align 8, !tbaa !181
  %i.ju = sdiv i64 %i.jt, 1000
  %i.jv = fpext nsz float %spec.store.select to double
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 10416
  %i.jx = load i32, ptr %i.jw, align 16, !tbaa !175
  %i.jy = load i64, ptr %i.dq, align 8, !tbaa !73
  %i.jz = load i64, ptr %i.dr, align 16, !tbaa !72
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.kb = load i64, ptr %i.ka, align 16, !tbaa !98
  %i.kc = sdiv i64 %i.kb, 1000
  %i.kd = fptosi double %i.ar to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.jl, i32 noundef 48, ptr noundef nonnull @.str.40, i32 noundef %i.jq, i32 noundef %i.ad, double noundef %i.jr, i32 noundef %spec.select.i, i32 noundef %i.e, i64 noundef %i.js, i64 noundef %i.ju, double noundef %i.jv, double noundef %.1167, i32 noundef %i.jx, i64 noundef %i.jy, i64 noundef %i.jz, i64 noundef %i.kc, i32 noundef %i.kd) #12
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ke = uitofp nneg i32 %i.ad to float          ; 2 uses
  %i.kf = fcmp nsz olt float %.1169, %i.ke
  br i1 %i.kf, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kg = uitofp nneg i32 %spec.select.i to float ; 2 uses
  %i.kh = fcmp nsz ogt float %.1169, %i.kg
  br i1 %i.kh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf
  %.2 = phi nsz float [ %.1169, %bb.be ], [ %i.kg, %bb.bf ], [ %i.ke, %bb.bd ] ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.kj = load i32, ptr %i.ki, align 16, !tbaa !118
  %.not188 = icmp eq i32 %i.kj, 0
  %i.kk = fpext nsz float %.2 to double           ; 3 uses
  br i1 %.not188, label %bb.cb, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kl = getelementptr i8, ptr %0, i64 10928
  %.val190 = load ptr, ptr %i.kl, align 16, !tbaa !120 ; 3 uses
  %i.km = getelementptr i8, ptr %0, i64 10936
  %.val191 = load ptr, ptr %i.km, align 8, !tbaa !121 ; 3 uses
  %i.kn = load ptr, ptr %i.b, align 8, !tbaa !45  ; 6 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 220
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !188
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 236
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !189
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 10340
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !190
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 316
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !191 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 320
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !192 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !89 ; 2 uses
  %i.la = icmp sgt i32 %i.kz, 0                   ; 2 uses
  br i1 %i.la, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.bh
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kn, i64 232
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !193
  %i.le = getelementptr inbounds nuw i8, ptr %i.kn, i64 224
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !194
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 6072
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !195
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 6088
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !196
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !119 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %i.lo = load ptr, ptr %i.ln, align 16, !tbaa !197
  %i.lp = fadd nsz float %i.ld, 1.000000e+00
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %i.lr = load <2 x float>, ptr %i.le, align 8, !tbaa !123
  %i.ls = fneg nsz <2 x float> %i.lr
  %i.lt = fpext nsz <2 x float> %i.ls to <2 x double> ; 2 uses
  %i.lu = load <2 x i32>, ptr %i.lb, align 4, !tbaa !78
  %i.lv = shufflevector <2 x i32> %i.lu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lw = shl nsw <4 x i32> %i.lv, <i32 0, i32 0, i32 2, i32 2>
  %i.lx = sdiv <4 x i32> %i.lw, splat (i32 5)     ; 4 uses
  %i.ly = extractelement <4 x i32> %i.lx, i64 0   ; 3 uses
  %i.lz = sitofp nsz i32 %i.ly to float           ; 2 uses
  %i.ma = extractelement <4 x i32> %i.lx, i64 1   ; 3 uses
  %i.mb = sitofp nsz i32 %i.ma to float           ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.kz to i64 ; 2 uses
  %i.mc = extractelement <4 x i32> %i.lx, i64 2   ; 2 uses
  %i.md = extractelement <4 x i32> %i.lx, i64 3   ; 2 uses
  %i.me = extractelement <2 x double> %i.lt, i64 0
  %i.mf = extractelement <2 x double> %i.lt, i64 1
  br label %bb.bi

._crit_edge.i:                                    ; preds = %bb.bs
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !198
  %i.mi = and i32 %i.mh, 16
  %.not.i199 = icmp eq i32 %i.mi, 0
  br i1 %.not.i199, label %bb.bz, label %bb.bt

._crit_edge.thread.i:                             ; preds = %bb.bh
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !198
  %i.ml = and i32 %i.mk, 16
  %.not42.i = icmp eq i32 %i.ml, 0
  br i1 %.not42.i, label %adaptive_quantization.exit, label %._crit_edge12.i

bb.bi:                                            ; preds = %bb.bs, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bs ] ; 4 uses
  %.01673.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.pe, %bb.bs ]
  %.01692.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.pf, %bb.bs ]
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %indvars.iv.i
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !78 ; 3 uses
  %i.mo = sext i32 %i.mn to i64                   ; 4 uses
  %i.mp = getelementptr inbounds [2 x i8], ptr %i.li, i64 %i.mo
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !199
  %i.mr = uitofp nsz i16 %i.mq to double
  %i.ms = call nsz double @llvm.sqrt.f64(double %i.mr)
  %i.mt = fptrunc nsz double %i.ms to float       ; 2 uses
  %i.mu = getelementptr inbounds i8, ptr %i.lk, i64 %i.mo
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !97  ; 2 uses
  %i.mw = zext i8 %i.mv to i32                    ; 2 uses
  %i.mx = srem i32 %i.mn, %i.lm                   ; 4 uses
  %i.my = sdiv i32 %i.mn, %i.lm                   ; 4 uses
  %i.mz = fcmp nsz olt float %i.mt, 4.000000e+00
  %spec.store.select.i198 = select i1 %i.mz, float 4.000000e+00, float %i.mt ; 2 uses
  %i.na = getelementptr inbounds [2 x i8], ptr %i.lo, i64 %i.mo
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !199
  %i.nc = and i16 %i.nb, 1
  %.not192.i = icmp eq i16 %i.nc, 0
  br i1 %.not192.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nd = load ptr, ptr %i.lq, align 16, !tbaa !200
  %i.ne = getelementptr inbounds [2 x i8], ptr %i.nd, i64 %i.mo
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !199
  %i.ng = uitofp nsz i16 %i.nf to double
  %i.nh = call nsz double @llvm.sqrt.f64(double %i.ng)
  %i.ni = fptrunc nsz double %i.nh to float       ; 2 uses
  %i.nj = fcmp nsz olt float %i.ni, 4.000000e+00
  %spec.store.select3.i = select i1 %i.nj, float 4.000000e+00, float %i.ni ; 2 uses
  %i.nk = fpext nsz float %spec.store.select3.i to double
  %i.nl = call nsz double @llvm.pow.f64(double %i.nk, double %i.me)
  %i.nm = fptrunc nsz double %i.nl to float
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0165.i = phi nsz float [ %spec.store.select3.i, %bb.bj ], [ %spec.store.select.i198, %bb.bi ] ; 3 uses
  %.0163.i = phi nsz float [ %i.nm, %bb.bj ], [ %i.lp, %bb.bi ]
  %i.nn = fpext nsz float %spec.store.select.i198 to double
  %i.no = call nsz double @llvm.pow.f64(double %i.nn, double %i.mf)
  %i.np = fpext nsz float %.0163.i to double
  %i.nq = fmul nsz double %i.no, %i.np
  %i.nr = fptrunc nsz double %i.nq to float
  %i.ns = icmp slt i8 %i.mv, 0                    ; 2 uses
  %i.nt = fpext nsz float %i.nr to double
  %i.nu = or disjoint i32 %i.mw, -128             ; 2 uses
  %i.nv = mul nsw i32 %i.nu, %i.nu
  %i.nw = add nsw i32 %i.mw, -128                 ; 2 uses
  %i.nx = mul nuw nsw i32 %i.nw, %i.nw
  %.sink.i = select i1 %i.ns, i32 %i.nx, i32 %i.nv
  %.sink52.v.i = select i1 %i.ns, float %i.kp, float %i.kr
  %.sink52.i = fmul nsz float %.sink52.v.i, f0x38800000
  %i.ny = uitofp nneg i32 %.sink.i to float
  %i.nz = fmul nsz float %.sink52.i, %i.ny
  %i.oa = fpext nsz float %i.nz to double
  %i.ob = fsub nsz double 1.000000e+00, %i.oa
  %i.oc = fmul nsz double %i.ob, %i.nt
  %.1164.i = fptrunc double %i.oc to float
  %i.od = icmp slt i32 %i.mx, %i.ly
  br i1 %i.od, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.oe = sub nsw i32 %i.ly, %i.mx
  %i.of = sitofp nsz i32 %i.oe to float
  %i.og = fdiv nsz float %i.of, %i.lz
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.oh = icmp sgt i32 %i.mx, %i.mc
  br i1 %i.oh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.oi = sub nsw i32 %i.mx, %i.mc
  %i.oj = sitofp nsz i32 %i.oi to float
  %i.ok = fdiv nsz float %i.oj, %i.lz
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.0162.i = phi nsz float [ %i.og, %bb.bl ], [ %i.ok, %bb.bn ], [ 0.000000e+00, %bb.bm ] ; 5 uses
  %i.ol = icmp slt i32 %i.my, %i.ma
  br i1 %i.ol, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.om = sub nsw i32 %i.ma, %i.my
  %i.on = sitofp nsz i32 %i.om to float
  %i.oo = fdiv nsz float %i.on, %i.mb             ; 2 uses
  %i.op = fcmp nsz ogt float %.0162.i, %i.oo
  %.0162..i = select nsz i1 %i.op, float %.0162.i, float %i.oo
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.oq = icmp sgt i32 %i.my, %i.md
  br i1 %i.oq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.or = sub nsw i32 %i.my, %i.md
  %i.os = sitofp nsz i32 %i.or to float
  %i.ot = fdiv nsz float %i.os, %i.mb             ; 2 uses
  %i.ou = fcmp nsz ogt float %.0162.i, %i.ot
  %.0162.193.i = select nsz i1 %i.ou, float %.0162.i, float %i.ot
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.1.i = phi nsz float [ %.0162..i, %bb.bp ], [ %.0162.193.i, %bb.br ], [ %.0162.i, %bb.bq ]
  %i.ov = fmul nsz float %i.kt, %.1.i
  %i.ow = fpext nsz float %i.ov to double
  %i.ox = fsub nsz double 1.000000e+00, %i.ow
  %i.oy = fpext nsz float %.1164.i to double
  %i.oz = fmul nsz double %i.ox, %i.oy
  %i.pa = fptrunc nsz double %i.oz to float       ; 2 uses
  %i.pb = fpext nsz float %i.pa to double
  %i.pc = fcmp nsz olt double %i.pb, 1.000000e-05
  %spec.store.select1.i = select i1 %i.pc, float f0x3727C5AC, float %i.pa
  %i.pd = fmul nsz float %.0165.i, %spec.store.select1.i ; 2 uses
  %i.pe = fadd nsz float %.01673.i, %.0165.i      ; 4 uses
  %i.pf = fadd nsz float %.01692.i, %i.pd         ; 4 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.val190, i64 %indvars.iv.i
  store float %.0165.i, ptr %i.pg, align 4, !tbaa !123
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.val191, i64 %indvars.iv.i
  store float %i.pd, ptr %i.ph, align 4, !tbaa !123
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bi, !llvm.loop !171

bb.bt:                                            ; preds = %._crit_edge.i
  %i.pi = fdiv nsz float %i.pf, %i.pe
  %i.pj = sitofp nsz i32 %i.kx to float
  %i.pk = sitofp nsz i32 %i.kv to float
  %i.pl = sitofp nsz i32 %i.kv to double
  %i.pm = sitofp nsz i32 %i.kx to double
  br label %bb.bu

._crit_edge12.i:                                  ; preds = %bb.by, %._crit_edge.thread.i
  %i.pn = phi ptr [ %i.mj, %._crit_edge.thread.i ], [ %i.mg, %bb.by ]
  %.1170.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.thread.i ], [ %.2171.i, %bb.by ] ; 2 uses
  %.1168.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.thread.i ], [ %.2.i200, %bb.by ] ; 2 uses
  %i.po = fpext nsz float %.1170.lcssa.i to double
  %i.pp = fcmp nsz olt double %i.po, 1.000000e-03
  %spec.store.select4.i194 = select i1 %i.pp, float 1.000000e-03, float %.1170.lcssa.i
  %i.pq = fpext nsz float %.1168.lcssa.i to double
  %i.pr = fcmp nsz olt double %i.pq, 1.000000e-03
  %spec.store.select2.i195 = select i1 %i.pr, float 1.000000e-03, float %.1168.lcssa.i
  br label %bb.bz

bb.bu:                                            ; preds = %bb.by, %bb.bt
  %indvars.iv21.i = phi i64 [ 0, %bb.bt ], [ %indvars.iv.next22.i, %bb.by ] ; 3 uses
  %.11688.i = phi float [ %i.pe, %bb.bt ], [ %.2.i200, %bb.by ] ; 3 uses
  %.11707.i = phi float [ %i.pf, %bb.bt ], [ %.2171.i, %bb.by ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.val190, i64 %indvars.iv21.i
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !123
  %i.pu = fpext nsz float %i.pt to double
  %i.pv = fmul nsz double %i.kk, %i.pu            ; 3 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.val191, i64 %indvars.iv21.i
  %i.px = load float, ptr %i.pw, align 4, !tbaa !123 ; 3 uses
  %i.py = fpext nsz float %i.px to double
  %i.pz = fdiv nsz double %i.pv, %i.py
  %i.qa = fptrunc nsz double %i.pz to float
  %i.qb = fmul nsz float %i.pi, %i.qa             ; 2 uses
  %i.qc = fcmp nsz ogt float %i.qb, %i.pj
  br i1 %i.qc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.qd = fsub nsz float %.11707.i, %i.px
  %i.qe = fdiv nsz double %i.pv, %i.pm
  %i.qf = fpext nsz float %.11688.i to double
  %i.qg = fsub nsz double %i.qf, %i.qe
  %i.qh = fptrunc nsz double %i.qg to float
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.qi = fcmp nsz olt float %i.qb, %i.pk
  br i1 %i.qi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.qj = fsub nsz float %.11707.i, %i.px
  %i.qk = fdiv nsz double %i.pv, %i.pl
  %i.ql = fpext nsz float %.11688.i to double
  %i.qm = fsub nsz double %i.ql, %i.qk
  %i.qn = fptrunc nsz double %i.qm to float
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.2171.i = phi nsz float [ %i.qd, %bb.bv ], [ %i.qj, %bb.bx ], [ %.11707.i, %bb.bw ] ; 2 uses
  %.2.i200 = phi nsz float [ %i.qh, %bb.bv ], [ %i.qn, %bb.bx ], [ %.11688.i, %bb.bw ] ; 2 uses
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count.i
  br i1 %exitcond25.not.i, label %._crit_edge12.i, label %bb.bu, !llvm.loop !172

bb.bz:                                            ; preds = %._crit_edge12.i, %._crit_edge.i
  %i.qo = phi ptr [ %i.pn, %._crit_edge12.i ], [ %i.mg, %._crit_edge.i ]
  %.3172.i = phi nsz float [ %spec.store.select4.i194, %._crit_edge12.i ], [ %i.pf, %._crit_edge.i ]
  %.3.i = phi nsz float [ %spec.store.select2.i195, %._crit_edge12.i ], [ %i.pe, %._crit_edge.i ]
  br i1 %i.la, label %.lr.ph17.i, label %adaptive_quantization.exit

.lr.ph17.i:                                       ; preds = %bb.bz
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !194
  %i.qr = fdiv nsz float %.3172.i, %.3.i
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !201
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.lr.ph17.i
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next27.i, %bb.ca ] ; 4 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %indvars.iv26.i
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !78
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.val190, i64 %indvars.iv26.i
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !123
  %i.qy = fpext nsz float %i.qx to double
  %i.qz = fmul nsz double %i.kk, %i.qy
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.val191, i64 %indvars.iv26.i
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !123
  %i.rc = fpext nsz float %i.rb to double
  %i.rd = fdiv nsz double %i.qz, %i.rc
  %i.re = fptrunc nsz double %i.rd to float       ; 2 uses
  %i.rf = load i32, ptr %i.qo, align 8, !tbaa !198
  %i.rg = and i32 %i.rf, 16
  %.not191.i = icmp eq i32 %i.rg, 0
  %i.rh = fmul nsz float %i.qr, %i.re
  %.0159.i = select nsz i1 %.not191.i, float %i.re, float %i.rh
  %i.ri = fpext nsz float %.0159.i to double
  %i.rj = fadd nsz double %i.ri, 5.000000e-01
  %i.rk = fptosi double %i.rj to i32              ; 2 uses
  %i.rl = icmp slt i32 %i.kx, %i.rk
  %spec.select.i196 = call i32 @llvm.smax.i32(i32 %i.kv, i32 %i.rk)
  %.0.i197 = select i1 %i.rl, i32 %i.kx, i32 %spec.select.i196
  %i.rm = sext i32 %i.qv to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.rm
  store i32 %.0.i197, ptr %i.rn, align 4, !tbaa !78
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.ro = load i32, ptr %i.ky, align 4, !tbaa !89
  %i.rp = sext i32 %i.ro to i64
  %i.rq = icmp slt i64 %indvars.iv.next27.i, %i.rp
  br i1 %i.rq, label %bb.ca, label %adaptive_quantization.exit, !llvm.loop !173

bb.cb:                                            ; preds = %bb.bg
  %i.rr = fadd nsz double %i.kk, 5.000000e-01
  %i.rs = fptosi double %i.rr to i32
  %i.rt = sitofp nsz i32 %i.rs to float
  br label %adaptive_quantization.exit

adaptive_quantization.exit:                       ; preds = %bb.ca, %bb.bz, %._crit_edge.thread.i, %bb.cb
  %.3 = phi nsz float [ %i.rt, %bb.cb ], [ %.2, %._crit_edge.thread.i ], [ %.2, %bb.bz ], [ %.2, %bb.ca ] ; 3 uses
  br i1 %i.at, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %adaptive_quantization.exit
  %i.ru = fpext nsz float %.3 to double
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 10640
  store double %i.ru, ptr %i.rv, align 16, !tbaa !177
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 10688
  %i.rx = load <2 x i64>, ptr %i.dq, align 8, !tbaa !83
  %i.ry = shufflevector <2 x i64> %i.rx, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ry, ptr %i.rw, align 16, !tbaa !83
  br label %bb.cd

bb.cd:                                            ; preds = %adaptive_quantization.exit, %bb.cc, %bb.af, %bb.m
  %.0170 = phi nsz float [ -1.000000e+00, %bb.m ], [ -1.000000e+00, %bb.af ], [ %.3, %bb.cc ], [ %.3, %adaptive_quantization.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret float %.0170
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nounwind uwtable
define internal fastcc double @modify_qscale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load i32, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = sitofp nsz i32 %i.d to double            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !76
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 4, !tbaa !78
  br label %get_fps.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.m = load i64, ptr %i.l, align 4              ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  br label %get_fps.exit

get_fps.exit:                                     ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %.sroa.01.0.insert.insert.i.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.i.i to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.sroa.0.0.i.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.n = sitofp nsz i32 %.sroa.0.0.extract.trunc.i.i to double
  %i.o = sitofp nsz i32 %.sroa.2.0.extract.trunc.i.i to double
  %i.p = fdiv nsz double %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.r = load <2 x i64>, ptr %i.q, align 8, !tbaa !83
  %i.s = sitofp nsz <2 x i64> %i.r to <2 x double>
  %i.t = insertelement <2 x double> poison, double %i.p, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fdiv nsz <2 x double> %i.s, %i.u         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !91   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10344
  %i.z = load <2 x i32>, ptr %i.y, align 8, !tbaa !78 ; 4 uses
  %shift = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = icmp sgt <2 x i32> %i.z, %shift
  %.not.i = extractelement <2 x i1> %i.aa, i64 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %get_fps.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.28, i32 noundef 144) #12
  tail call void @abort() #14
  unreachable

bb.f:                                             ; preds = %get_fps.exit
  switch i32 %i.x, label %get_qminmax.exit [
    i32 3, label %.sink.split.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.sink66.i = phi i64 [ 212, %bb.g ], [ 204, %bb.f ]
  %.sink60.i = phi i64 [ 216, %bb.g ], [ 208, %bb.f ]
  %i.ab = sitofp nsz <2 x i32> %i.z to <2 x float>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink66.i
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !123 ; 3 uses
  %i.ae = fcmp nsz ult float %i.ad, 0.000000e+00
  %i.af = fneg nsz float %i.ad
  %i.ag = select nsz i1 %i.ae, float %i.af, float %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink60.i
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !123
  %i.aj = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ak, <2 x float> %i.am)
  %i.ao = fpext nsz <2 x float> %i.an to <2 x double>
  %i.ap = fadd nsz <2 x double> %i.ao, splat (double 5.000000e-01)
  %i.aq = fptosi <2 x double> %i.ap to <2 x i32>
  br label %get_qminmax.exit

get_qminmax.exit:                                 ; preds = %bb.f, %.sink.split.i
  %i.ar = phi <2 x i32> [ %i.z, %bb.f ], [ %i.aq, %.sink.split.i ] ; 2 uses
  %i.as = extractelement <2 x i32> %i.ar, i64 0
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1) ; 2 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.at, i32 32767) ; 2 uses
  %i.av = extractelement <2 x i32> %i.ar, i64 1
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 32767) ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.ax, i32 %i.au) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10896
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !202 ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %get_qminmax.exit
  %i.ba = srem i32 %3, %i.az
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = icmp eq i32 %i.x, 2
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 10892
  %i.be = load float, ptr %i.bd, align 4, !tbaa !203
  %i.bf = fpext nsz float %i.be to double
  %i.bg = fmul nsz double %2, %i.bf
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %get_qminmax.exit
  %.0 = phi nsz double [ %i.bg, %bb.i ], [ %2, %bb.h ], [ %2, %get_qminmax.exit ] ; 3 uses
  %.not100 = icmp eq i32 %i.d, 0
  br i1 %.not100, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 10480 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !85 ; 3 uses
  %i.bj = extractelement <2 x double> %i.v, i64 1 ; 2 uses
  %i.bk = fcmp nsz une double %i.bj, 0.000000e+00
  br i1 %i.bk, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bl = fsub nsz double %i.e, %i.bi
  %i.bm = fmul nsz double %i.bl, 2.000000e+00
  %i.bn = fdiv nsz double %i.bm, %i.e             ; 3 uses
  %i.bo = fcmp nsz ogt double %i.bn, 1.000000e+00
  %i.bp = fcmp nsz olt double %i.bn, 1.000000e-04
  %spec.store.select = select i1 %i.bp, double 1.000000e-04, double %i.bn
  %.082 = select nsz i1 %i.bo, double 1.000000e+00, double %spec.store.select
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 10904
  %i.br = load float, ptr %i.bq, align 8, !tbaa !204
  %i.bs = fpext nsz float %i.br to double
  %i.bt = fdiv nsz double 1.000000e+00, %i.bs
  %i.bu = tail call nsz double @llvm.pow.f64(double %.082, double %i.bt)
  %i.bv = fmul nsz double %.0, %i.bu              ; 3 uses
  %i.bw = fsub nsz double %i.bj, %i.e
  %i.bx = fadd nsz double %i.bw, %i.bi
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 484
  %i.bz = load float, ptr %i.by, align 4, !tbaa !205
  %i.ca = fpext nsz float %i.bz to double
  %i.cb = fmul nsz double %i.bx, %i.ca            ; 2 uses
  %i.cc = fcmp nsz ogt double %i.cb, 1.000000e+00
  %i.cd = select nsz i1 %i.cc, double %i.cb, double 1.000000e+00 ; 2 uses
  %i.ce = fcmp nsz olt double %i.cd, 9.000000e-01
  br i1 %i.ce, label %bb.m, label %bits2qp.exit

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.41) #12
  br label %bits2qp.exit

bits2qp.exit:                                     ; preds = %bb.l, %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !94
  %i.ch = fpext nsz float %i.cg to double
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !101
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !102
  %i.cm = add i32 %i.cj, 1
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = sitofp nsz i32 %i.cn to double
  %i.cp = fmul nsz double %i.ch, %i.co
  %i.cq = fdiv nsz double %i.cp, %i.cd            ; 4 uses
  %i.cr = fcmp nsz ogt double %i.bv, %i.cq
  br i1 %i.cr, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bits2qp.exit
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 524
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !112
  %i.cv = and i32 %i.cu, 2
  %.not101 = icmp eq i32 %i.cv, 0
  br i1 %.not101, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.cs, i32 noundef 48, ptr noundef nonnull @.str.53, double noundef %i.bv, double noundef %i.cq) #12
  br label %bb.p

bb.p:                                             ; preds = %bits2qp.exit, %bb.o, %bb.n, %bb.k
  %.2 = phi nsz double [ %.0, %bb.k ], [ %i.bv, %bits2qp.exit ], [ %i.cq, %bb.o ], [ %i.cq, %bb.n ] ; 2 uses
  %i.cw = extractelement <2 x double> %i.v, i64 0
  %i.cx = fcmp nsz une double %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cy = fmul nsz double %i.bi, 2.000000e+00
  %i.cz = fdiv nsz double %i.cy, %i.e             ; 3 uses
  %i.da = fcmp nsz ogt double %i.cz, 1.000000e+00
  %i.db = fcmp nsz olt double %i.cz, 1.000000e-04
  %spec.store.select2 = select i1 %i.db, double 1.000000e-04, double %i.cz
  %.081 = select nsz i1 %i.da, double 1.000000e+00, double %spec.store.select2
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 10904
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !204
  %i.de = fpext nsz float %i.dd to double
  %i.df = fdiv nsz double 1.000000e+00, %i.de
  %i.dg = tail call nsz double @llvm.pow.f64(double %.081, double %i.df)
  %i.dh = fdiv nsz double %.2, %i.dg              ; 3 uses
  %i.di = load double, ptr %i.bh, align 8, !tbaa !85
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 480
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !74
  %i.dm = fpext nsz float %i.dl to double
  %i.dn = fmul nsz double %i.di, %i.dm            ; 2 uses
  %i.do = fcmp nsz ogt double %i.dn, 1.000000e+00
  %i.dp = select nsz i1 %i.do, double %i.dn, double 1.000000e+00 ; 2 uses
  %i.dq = fcmp nsz olt double %i.dp, 9.000000e-01
  br i1 %i.dq, label %bb.r, label %bits2qp.exit103

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.41) #12
  br label %bits2qp.exit103

bits2qp.exit103:                                  ; preds = %bb.q, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !94
  %i.dt = fpext nsz float %i.ds to double
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !101
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !102
  %i.dy = add i32 %i.dv, 1
  %i.dz = add i32 %i.dy, %i.dx
  %i.ea = sitofp nsz i32 %i.dz to double
  %i.eb = fmul nsz double %i.dt, %i.ea
  %i.ec = fdiv nsz double %i.eb, %i.dp            ; 4 uses
  %i.ed = fcmp nsz olt double %i.dh, %i.ec
  br i1 %i.ed, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bits2qp.exit103
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 524
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !112
  %i.eh = and i32 %i.eg, 2
  %.not102 = icmp eq i32 %i.eh, 0
  br i1 %.not102, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.ee, i32 noundef 48, ptr noundef nonnull @.str.53, double noundef %i.dh, double noundef %i.ec) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.s, %bb.t, %bits2qp.exit103, %bb.j
  %.5 = phi nsz double [ %.0, %bb.j ], [ %.2, %bb.p ], [ %i.dh, %bits2qp.exit103 ], [ %i.ec, %bb.t ], [ %i.ec, %bb.s ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 10888
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !206
  %i.ek = fcmp nsz oeq float %i.ej, 0.000000e+00
  %i.el = icmp samesign uge i32 %i.at, %i.ax
  %or.cond107 = select i1 %i.ek, i1 true, i1 %i.el
  %i.em = uitofp nneg i32 %i.au to double         ; 3 uses
  br i1 %or.cond107, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.en = fcmp nsz olt double %.5, %i.em
  br i1 %i.en, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = uitofp nneg i32 %spec.select.i to double ; 2 uses
  %i.ep = fcmp nsz ogt double %.5, %i.eo
  br i1 %i.ep, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.eq = tail call nsz double @llvm.log.f64(double %i.em) ; 3 uses
  %i.er = uitofp nneg i32 %spec.select.i to double
  %i.es = tail call nsz double @llvm.log.f64(double %i.er)
  %i.et = tail call nsz double @llvm.log.f64(double %.5)
  %i.eu = fsub nsz double %i.et, %i.eq
  %i.ev = fsub nsz double %i.es, %i.eq            ; 2 uses
  %i.ew = fdiv nsz double %i.eu, %i.ev
  %i.ex = fadd nsz double %i.ew, -5.000000e-01
  %i.ey = fmul nsz double %i.ex, -4.000000e+00
  %i.ez = tail call nsz double @llvm.exp.f64(double %i.ey)
  %i.fa = fadd nsz double %i.ez, 1.000000e+00
  %i.fb = fdiv nsz double 1.000000e+00, %i.fa
  %i.fc = tail call nsz double @llvm.fmuladd.f64(double %i.fb, double %i.ev, double %i.eq)
  %i.fd = tail call nsz double @llvm.exp.f64(double %i.fc)
end_hunk_2
