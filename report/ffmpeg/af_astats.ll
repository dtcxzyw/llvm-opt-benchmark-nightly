Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_astats?download=true
inline.NumInlined: 96
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 1
begin_hunk_0_@filter_frame:bb.a
  %i.cs = alloca [128 x i8], align 16             ; 4 uses
  %i.ct = alloca [128 x i8], align 16             ; 4 uses
  %i.cu = alloca [128 x i8], align 16             ; 4 uses
  %i.cv = alloca [128 x i8], align 16             ; 4 uses
  %i.cw = alloca [128 x i8], align 16             ; 4 uses
  %i.cx = alloca [128 x i8], align 16             ; 4 uses
  %i.cy = alloca [128 x i8], align 16             ; 4 uses
  %i.cz = alloca [128 x i8], align 16             ; 4 uses
  %i.da = alloca [128 x i8], align 16             ; 4 uses
  %i.db = alloca [128 x i8], align 16             ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !116 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !22 ; 20 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 53 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !117 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 60 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !75 ; 2 uses
  %.not = icmp slt i32 %i.dl, %i.di
  br i1 %.not, label %reset_stats.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !27
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph55.i, label %reset_stats.exit

.lr.ph55.i:                                       ; preds = %bb.c
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph55.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph55.i ], [ %indvars.iv.next59.i, %._crit_edge.i ] ; 2 uses
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw [65864 x i8], ptr %i.dr, i64 %indvars.iv58.i ; 22 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.dt, align 8, !tbaa !34
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.du, align 8, !tbaa !34
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.dv, align 8, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 160
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !76
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.dx, align 8, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.dy, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 136
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 168
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ed, align 8, !tbaa !41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 192
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ds, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, i8 0, i64 40, i1 false)
  store double +qnan, ptr %i.ds, align 8, !tbaa !77
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 65848
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 224
  store i64 0, ptr %i.eh, align 8, !tbaa !58
  store <2 x double> <double +qnan, double 0.000000e+00>, ptr %i.eg, align 8, !tbaa !34
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 65840
  store i32 0, ptr %i.ei, align 8, !tbaa !78
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ds, i64 65832
  store i32 0, ptr %i.ej, align 8, !tbaa !79
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 65836
  store i32 0, ptr %i.ek, align 4, !tbaa !80
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 272
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !81
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !33
  %i.eo = shl i64 %i.en, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.em, i8 0, i64 %i.eo, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ds, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.ep, i8 0, i64 65536, i1 false)
  %i.eq = load i64, ptr %i.dq, align 8, !tbaa !33 ; 5 uses
  %.not.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.er = getelementptr inbounds nuw i8, ptr %i.ds, i64 280
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !82 ; 2 uses
  %min.iters.check = icmp ult i64 %i.eq, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.eq, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.et, align 8, !tbaa !34
  store <2 x double> splat (double -1.000000e+00), ptr %i.eu, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %bb.d
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.ew = load i32, ptr %i.dm, align 8, !tbaa !27
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %indvars.iv.next59.i, %i.ex
  br i1 %i.ey, label %bb.d, label %reset_stats.exit, !llvm.loop !2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.i
  store double -1.000000e+00, ptr %i.ez, align 8, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.eq
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !102

reset_stats.exit:                                 ; preds = %._crit_edge.i, %bb.c, %bb.b
  %i.fa = phi i32 [ %i.dl, %bb.b ], [ 0, %bb.c ], [ 0, %._crit_edge.i ]
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.dk, align 4, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %reset_stats.exit, %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %i.df, i64 52 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !32
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !89
  %i.fh = icmp sgt i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  store i32 %i.fi, ptr %i.fc, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !90
  %i.fl = tail call i32 @ff_filter_get_nb_threads(ptr noundef %i.dd) #12
  %. = tail call i32 @llvm.smin.i32(i32 %i.fk, i32 %i.fl)
  %i.fm = tail call i32 @ff_filter_execute(ptr noundef %i.dd, ptr noundef nonnull @filter_channel, ptr noundef %1, ptr noundef null, i32 noundef %.) #11 ; 0 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !118
  %.not25 = icmp eq i32 %i.fo, 0
  br i1 %.not25, label %set_metadata.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fp = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 12 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !27 ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.i28, label %._crit_edge.i26

.lr.ph.i28:                                       ; preds = %bb.h
  %i.fs = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.df, i64 68 ; 25 uses
  %i.fv = getelementptr i8, ptr %i.df, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.df, i64 76 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.df, i64 80 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread641.thread.i, %.lr.ph.i28
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next.i30, %.thread641.thread.i ] ; 27 uses
  %.0324518.i = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.i28 ], [ %i.is, %.thread641.thread.i ] ; 2 uses
  %.0325517.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.i28 ], [ %i.iq, %.thread641.thread.i ] ; 2 uses
  %.0327515.i = phi double [ 0.000000e+00, %.lr.ph.i28 ], [ %i.iu, %.thread641.thread.i ] ; 2 uses
  %.0331511.i = phi double [ 0.000000e+00, %.lr.ph.i28 ], [ %.1.i, %.thread641.thread.i ] ; 2 uses
  %.0332510.i = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.i28 ], [ %i.ik, %.thread641.thread.i ] ; 2 uses
  %.0333509.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.i28 ], [ %i.ii, %.thread641.thread.i ] ; 2 uses
  %.0334508.i = phi double [ 0.000000e+00, %.lr.ph.i28 ], [ %i.io, %.thread641.thread.i ] ; 2 uses
  %.0335507.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.i28 ], [ %i.im, %.thread641.thread.i ] ; 2 uses
  %.0336506.i = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.i28 ], [ %i.ig, %.thread641.thread.i ] ; 2 uses
  %.0337505.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.i28 ], [ %..0337.i, %.thread641.thread.i ] ; 2 uses
  %.0340502.i = phi i64 [ 0, %.lr.ph.i28 ], [ %i.jh, %.thread641.thread.i ]
  %.0343499.i = phi i64 [ 0, %.lr.ph.i28 ], [ %i.kc, %.thread641.thread.i ]
  %.0344498.i = phi i64 [ 0, %.lr.ph.i28 ], [ %i.iv, %.thread641.thread.i ]
  %.sroa.11.0492.i = phi i64 [ -1, %.lr.ph.i28 ], [ %i.jr, %.thread641.thread.i ]
  %i.fy = phi <2 x i64> [ zeroinitializer, %.lr.ph.i28 ], [ %i.kg, %.thread641.thread.i ]
  %i.fz = phi <4 x double> [ zeroinitializer, %.lr.ph.i28 ], [ %i.jc, %.thread641.thread.i ]
  %i.ga = phi <3 x i64> [ zeroinitializer, %.lr.ph.i28 ], [ %i.jz, %.thread641.thread.i ]
  %i.gb = phi <3 x i64> [ zeroinitializer, %.lr.ph.i28 ], [ %i.jw, %.thread641.thread.i ]
  %i.gc = phi <2 x double> [ zeroinitializer, %.lr.ph.i28 ], [ %i.jk, %.thread641.thread.i ]
  %i.gd = load ptr, ptr %i.fs, align 8, !tbaa !28
  %i.ge = getelementptr inbounds nuw [65864 x i8], ptr %i.gd, i64 %indvars.iv.i29 ; 37 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 240 ; 5 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !31 ; 4 uses
  %i.gh = load i64, ptr %i.ft, align 8, !tbaa !33
  %i.gi = icmp ult i64 %i.gg, %i.gh
  br i1 %i.gi, label %bb.j, label %._crit_edge583.i

._crit_edge583.i:                                 ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !37
  %.phi.trans.insert584.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %.pre585.i = load double, ptr %.phi.trans.insert584.i, align 8, !tbaa !36
  %.phi.trans.insert586.i = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %.pre587.i = load double, ptr %.phi.trans.insert586.i, align 8, !tbaa !35
  %.pre631.i = uitofp nsz i64 %i.gg to double
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !35 ; 2 uses
  %i.gl = uitofp nsz i64 %i.gg to double          ; 2 uses
  %i.gm = fdiv nsz double %i.gk, %i.gl            ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  store double %i.gm, ptr %i.gn, align 8, !tbaa !36
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  store double %i.gm, ptr %i.go, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge583.i
  %.pre-phi.i = phi double [ %.pre631.i, %._crit_edge583.i ], [ %i.gl, %bb.j ] ; 3 uses
  %i.gp = phi double [ %.pre587.i, %._crit_edge583.i ], [ %i.gk, %bb.j ]
  %i.gq = phi double [ %.pre585.i, %._crit_edge583.i ], [ %i.gm, %bb.j ] ; 2 uses
  %i.gr = phi double [ %.pre.i, %._crit_edge583.i ], [ %i.gm, %bb.j ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 64 ; 4 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !51 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 72 ; 3 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !52 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ge, i64 80 ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !55 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ge, i64 88 ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !56 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ge, i64 128 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !53 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 136 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !54 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ge, i64 144 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ge, i64 152
  %i.hg = load <2 x double>, ptr %i.he, align 8, !tbaa !34
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ge, i64 65848 ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !40 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 224 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !58
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ge, i64 288 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %bb.k
  %indvars.iv.i.i = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i.i.1, %bb.p ] ; 3 uses
  %.091.i.i = phi double [ 0.000000e+00, %bb.k ], [ %.1.i.i.1, %bb.p ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.i.i
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !41
  %i.ho = uitofp nsz i64 %i.hn to double
  %i.hp = fdiv nsz double %i.ho, %.pre-phi.i      ; 3 uses
  %i.hq = fcmp nsz ogt double %i.hp, 1.000000e-08
  br i1 %i.hq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hr = call nsz double @llvm.log2.f64(double %i.hp)
  %i.hs = call nsz double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %.091.i.i)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i.i = phi nsz double [ %i.hs, %bb.m ], [ %.091.i.i, %bb.l ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !41
  %i.hw = uitofp nsz i64 %i.hv to double
  %i.hx = fdiv nsz double %i.hw, %.pre-phi.i      ; 3 uses
  %i.hy = fcmp nsz ogt double %i.hx, 1.000000e-08
  br i1 %i.hy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hz = call nsz double @llvm.log2.f64(double %i.hx)
  %i.ia = call nsz double @llvm.fmuladd.f64(double %i.hx, double %i.hz, double %.1.i.i)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i.i.1 = phi nsz double [ %i.ia, %bb.o ], [ %.1.i.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 8192
  br i1 %exitcond.not.i.i.1, label %calc_entropy.exit.i, label %bb.l, !llvm.loop !0

calc_entropy.exit.i:                              ; preds = %bb.p
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.id = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 2 uses
  %i.ie = fcmp nsz ogt double %.0337505.i, %i.gt
  %..0337.i = select nsz i1 %i.ie, double %i.gt, double %.0337505.i ; 2 uses
  %i.if = fcmp nsz ogt double %.0336506.i, %i.gv
  %i.ig = select nsz i1 %i.if, double %.0336506.i, double %i.gv ; 2 uses
  %i.ih = fcmp nsz ogt double %.0333509.i, %i.gx
  %i.ii = select nsz i1 %i.ih, double %i.gx, double %.0333509.i ; 2 uses
  %i.ij = fcmp nsz ogt double %.0332510.i, %i.gz
  %i.ik = select nsz i1 %i.ij, double %.0332510.i, double %i.gz ; 2 uses
  %i.il = fcmp nsz ogt double %.0335507.i, %i.hb
  %i.im = select nsz i1 %i.il, double %i.hb, double %.0335507.i ; 2 uses
  %i.in = fcmp nsz ogt double %.0334508.i, %i.hd
  %i.io = select nsz i1 %i.in, double %.0334508.i, double %i.hd ; 2 uses
  %i.ip = fcmp nsz ogt double %.0325517.i, %i.gr
  %i.iq = select nsz i1 %i.ip, double %i.gr, double %.0325517.i ; 2 uses
  %i.ir = fcmp nsz ogt double %.0324518.i, %i.gq
  %i.is = select nsz i1 %i.ir, double %.0324518.i, double %i.gq ; 2 uses
  %i.it = fcmp nsz ogt double %.0327515.i, %i.hi
  %i.iu = select nsz i1 %i.it, double %.0327515.i, double %i.hi ; 2 uses
  %i.iv = add i64 %i.hk, %.0344498.i              ; 2 uses
  %i.iw = fdiv nsz double %.1.i.i.1, -1.300000e+01 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ge, i64 65856 ; 2 uses
  store double %i.iw, ptr %i.ix, align 8, !tbaa !43
  %i.iy = insertelement <4 x double> poison, double %i.iw, i64 0
  %i.iz = insertelement <4 x double> %i.iy, double %i.gp, i64 1
  %i.ja = shufflevector <2 x double> %i.hg, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.jb = shufflevector <4 x double> %i.iz, <4 x double> %i.ja, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jc = fadd nsz <4 x double> %i.fz, %i.jb      ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ge, i64 200 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ge, i64 208 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ge, i64 216 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !57
  %i.jh = add i64 %i.jg, %.0340502.i              ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ge, i64 112 ; 2 uses
  %i.jj = load <2 x double>, ptr %i.ji, align 8, !tbaa !34
  %i.jk = fadd nsz <2 x double> %i.gc, %i.jj      ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ge, i64 168 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ge, i64 176
  %i.jn = load <2 x i64>, ptr %i.jd, align 8, !tbaa !41
  %i.jo = load <2 x i64>, ptr %i.jl, align 8, !tbaa !41
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ge, i64 184 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !41
  %i.jr = and i64 %i.jq, %.sroa.11.0492.i         ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ge, i64 192 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !41
  %i.ju = shufflevector <2 x i64> %i.jo, <2 x i64> poison, <3 x i32> <i32 poison, i32 1, i32 0>
  %i.jv = insertelement <3 x i64> %i.ju, i64 %i.jt, i64 0
  %i.jw = or <3 x i64> %i.jv, %i.gb               ; 3 uses
  %i.jx = shufflevector <2 x i64> %i.jn, <2 x i64> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.jy = insertelement <3 x i64> %i.jx, i64 %i.gg, i64 2
  %i.jz = add <3 x i64> %i.jy, %i.ga              ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ge, i64 248 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !64
  %i.kc = add i64 %i.kb, %.0343499.i              ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ge, i64 256 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ge, i64 264
  %i.kf = load <2 x i64>, ptr %i.kd, align 8, !tbaa !41
  %i.kg = add <2 x i64> %i.kf, %i.fy              ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !49 ; 3 uses
  %i.kj = call nsz double @llvm.fabs.f64(double %i.ki)
  %i.kk = call nsz double @llvm.fabs.f64(double %.0331511.i)
  %i.kl = fcmp nsz ogt double %i.kj, %i.kk
  %.1.i = select nsz i1 %i.kl, double %i.ki, double %.0331511.i ; 2 uses
  %i.km = load i32, ptr %i.fu, align 4, !tbaa !50 ; 2 uses
  %i.kn = and i32 %i.km, 1
  %.not398.i = icmp eq i32 %i.kn, 0
  br i1 %.not398.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %calc_entropy.exit.i
  %i.ko = fdiv nsz double %i.ki, %.pre-phi.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db) #11
  %i.kp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.da, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.ko) #11 ; 0 uses
  %i.kq = trunc i64 %indvars.iv.i29 to i32
  %i.kr = add i32 %i.kq, 1
  %i.ks = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.db, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.kr, ptr noundef nonnull @.str.3) #11 ; 0 uses
  %i.kt = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.db, ptr noundef nonnull %i.da, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da) #11
  %.pre588.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %calc_entropy.exit.i
  %i.ku = phi i32 [ %.pre588.i, %bb.q ], [ %i.km, %calc_entropy.exit.i ] ; 2 uses
  %i.kv = and i32 %i.ku, 2
  %.not399.i = icmp eq i32 %i.kv, 0
  br i1 %.not399.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kw = load double, ptr %i.gs, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz) #11
  %i.kx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cy, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.kw) #11 ; 0 uses
  %i.ky = trunc i64 %indvars.iv.i29 to i32
  %i.kz = add i32 %i.ky, 1
  %i.la = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cz, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.kz, ptr noundef nonnull @.str.5) #11 ; 0 uses
  %i.lb = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cy, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy) #11
  %.pre589.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.lc = phi i32 [ %.pre589.i, %bb.s ], [ %i.ku, %bb.r ] ; 2 uses
  %i.ld = and i32 %i.lc, 4
  %.not400.i = icmp eq i32 %i.ld, 0
  br i1 %.not400.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.le = load double, ptr %i.gu, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx) #11
  %i.lf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cw, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.le) #11 ; 0 uses
  %i.lg = trunc i64 %indvars.iv.i29 to i32
  %i.lh = add i32 %i.lg, 1
  %i.li = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cx, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.lh, ptr noundef nonnull @.str.6) #11 ; 0 uses
  %i.lj = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cw, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw) #11
  %.pre590.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.lk = phi i32 [ %.pre590.i, %bb.u ], [ %i.lc, %bb.t ] ; 2 uses
  %i.ll = and i32 %i.lk, 8
  %.not401.i = icmp eq i32 %i.ll, 0
  br i1 %.not401.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lm = load double, ptr %i.ha, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv) #11
  %i.ln = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cu, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.lm) #11 ; 0 uses
  %i.lo = trunc i64 %indvars.iv.i29 to i32
  %i.lp = add i32 %i.lo, 1
  %i.lq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cv, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.lp, ptr noundef nonnull @.str.7) #11 ; 0 uses
  %i.lr = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cu, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu) #11
  %.pre591.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ls = phi i32 [ %.pre591.i, %bb.w ], [ %i.lk, %bb.v ] ; 2 uses
  %i.lt = and i32 %i.ls, 16
  %.not402.i = icmp eq i32 %i.lt, 0
  br i1 %.not402.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lu = load double, ptr %i.hc, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct) #11
  %i.lv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cs, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.lu) #11 ; 0 uses
  %i.lw = trunc i64 %indvars.iv.i29 to i32
  %i.lx = add i32 %i.lw, 1
  %i.ly = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ct, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.lx, ptr noundef nonnull @.str.8) #11 ; 0 uses
  %i.lz = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cs, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs) #11
  %.pre592.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ma = phi i32 [ %.pre592.i, %bb.y ], [ %i.ls, %bb.x ] ; 2 uses
  %i.mb = and i32 %i.ma, 32
  %.not403.i = icmp eq i32 %i.mb, 0
  br i1 %.not403.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mc = load double, ptr %i.he, align 8, !tbaa !39
  %i.md = load i64, ptr %i.gf, align 8, !tbaa !31
  %i.me = add i64 %i.md, -1
  %i.mf = uitofp nsz i64 %i.me to double
  %i.mg = fdiv nsz double %i.mc, %i.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr) #11
  %i.mh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cq, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.mg) #11 ; 0 uses
  %i.mi = trunc i64 %indvars.iv.i29 to i32
  %i.mj = add i32 %i.mi, 1
  %i.mk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cr, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.mj, ptr noundef nonnull @.str.9) #11 ; 0 uses
  %i.ml = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cq, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq) #11
  %.pre593.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.mm = phi i32 [ %.pre593.i, %bb.aa ], [ %i.ma, %bb.z ] ; 2 uses
  %i.mn = and i32 %i.mm, 64
  %.not404.i = icmp eq i32 %i.mn, 0
  br i1 %.not404.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mo = load double, ptr %i.hf, align 8, !tbaa !38
  %i.mp = load i64, ptr %i.gf, align 8, !tbaa !31
  %i.mq = add i64 %i.mp, -1
  %i.mr = uitofp nsz i64 %i.mq to double
  %i.ms = fdiv nsz double %i.mo, %i.mr
  %i.mt = call nsz double @llvm.sqrt.f64(double %i.ms)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp) #11
  %i.mu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.co, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.mt) #11 ; 0 uses
  %i.mv = trunc i64 %indvars.iv.i29 to i32
  %i.mw = add i32 %i.mv, 1
  %i.mx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cp, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.mw, ptr noundef nonnull @.str.10) #11 ; 0 uses
  %i.my = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.co, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co) #11
  %.pre594.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.mz = phi i32 [ %.pre594.i, %bb.ac ], [ %i.mm, %bb.ab ] ; 2 uses
  %i.na = and i32 %i.mz, 128
  %.not405.i = icmp eq i32 %i.na, 0
  br i1 %.not405.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nb = load double, ptr %i.gw, align 8, !tbaa !55
  %i.nc = fneg nsz double %i.nb                   ; 2 uses
  %i.nd = load double, ptr %i.gy, align 8, !tbaa !56 ; 2 uses
  %i.ne = fcmp nsz olt double %i.nd, %i.nc
  %..i = select nsz i1 %i.ne, double %i.nc, double %i.nd
  %i.nf = call nsz double @llvm.log10.f64(double %..i)
  %i.ng = fmul nsz double %i.nf, 2.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn) #11
  %i.nh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cm, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.ng) #11 ; 0 uses
  %i.ni = trunc i64 %indvars.iv.i29 to i32
  %i.nj = add i32 %i.ni, 1
  %i.nk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cn, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.nj, ptr noundef nonnull @.str.11) #11 ; 0 uses
  %i.nl = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cm, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm) #11
  %.pre595.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.nm = phi i32 [ %.pre595.i, %bb.ae ], [ %i.mz, %bb.ad ] ; 2 uses
  %i.nn = and i32 %i.nm, 256
  %.not406.i = icmp eq i32 %i.nn, 0
  br i1 %.not406.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.no = load double, ptr %i.id, align 8, !tbaa !35
  %i.np = load i64, ptr %i.gf, align 8, !tbaa !31
  %i.nq = uitofp nsz i64 %i.np to double
  %i.nr = fdiv nsz double %i.no, %i.nq
  %i.ns = call nsz double @llvm.sqrt.f64(double %i.nr)
  %i.nt = call nsz double @llvm.log10.f64(double %i.ns)
  %i.nu = fmul nsz double %i.nt, 2.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #11
  %i.nv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ck, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.nu) #11 ; 0 uses
  %i.nw = trunc i64 %indvars.iv.i29 to i32
  %i.nx = add i32 %i.nw, 1
  %i.ny = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cl, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.nx, ptr noundef nonnull @.str.12) #11 ; 0 uses
  %i.nz = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.ck, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #11
  %.pre596.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.oa = phi i32 [ %.pre596.i, %bb.ag ], [ %i.nm, %bb.af ] ; 2 uses
  %i.ob = and i32 %i.oa, 512
  %.not407.i = icmp eq i32 %i.ob, 0
  br i1 %.not407.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.oc = load double, ptr %i.ic, align 8, !tbaa !36
  %i.od = call nsz double @llvm.sqrt.f64(double %i.oc)
  %i.oe = call nsz double @llvm.log10.f64(double %i.od)
  %i.of = fmul nsz double %i.oe, 2.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #11
  %i.og = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ci, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.of) #11 ; 0 uses
  %i.oh = trunc i64 %indvars.iv.i29 to i32
  %i.oi = add i32 %i.oh, 1
  %i.oj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cj, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.oi, ptr noundef nonnull @.str.13) #11 ; 0 uses
  %i.ok = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ci, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #11
  %.pre597.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ol = phi i32 [ %.pre597.i, %bb.ai ], [ %i.oa, %bb.ah ] ; 2 uses
  %i.om = and i32 %i.ol, 1024
  %.not408.i = icmp eq i32 %i.om, 0
  br i1 %.not408.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.on = load double, ptr %i.ib, align 8, !tbaa !37
  %i.oo = call nsz double @llvm.sqrt.f64(double %i.on)
  %i.op = call nsz double @llvm.log10.f64(double %i.oo)
  %i.oq = fmul nsz double %i.op, 2.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #11
  %i.or = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cg, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.oq) #11 ; 0 uses
  %i.os = trunc i64 %indvars.iv.i29 to i32
  %i.ot = add i32 %i.os, 1
  %i.ou = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ch, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.ot, ptr noundef nonnull @.str.14) #11 ; 0 uses
  %i.ov = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cg, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #11
  %.pre598.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ow = phi i32 [ %.pre598.i, %bb.ak ], [ %i.ol, %bb.aj ] ; 2 uses
  %i.ox = and i32 %i.ow, 2048
  %.not409.i = icmp eq i32 %i.ox, 0
  br i1 %.not409.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.oy = load double, ptr %i.id, align 8, !tbaa !35 ; 2 uses
  %i.oz = fcmp nsz une double %i.oy, 0.000000e+00
  br i1 %i.oz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.pa = load double, ptr %i.gs, align 8, !tbaa !51
  %i.pb = fneg nsz double %i.pa                   ; 2 uses
  %i.pc = load double, ptr %i.gu, align 8, !tbaa !52 ; 2 uses
  %i.pd = fcmp nsz olt double %i.pc, %i.pb
  %.429.i = select nsz i1 %i.pd, double %i.pb, double %i.pc
  %i.pe = load i64, ptr %i.gf, align 8, !tbaa !31
  %i.pf = uitofp nsz i64 %i.pe to double
  %i.pg = fdiv nsz double %i.oy, %i.pf
  %i.ph = call nsz double @llvm.sqrt.f64(double %i.pg)
  %i.pi = fdiv nsz double %.429.i, %i.ph
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.pj = phi nsz double [ %i.pi, %bb.an ], [ 1.000000e+00, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #11
  %i.pk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ce, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.pj) #11 ; 0 uses
  %i.pl = trunc i64 %indvars.iv.i29 to i32
  %i.pm = add i32 %i.pl, 1
  %i.pn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cf, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.pm, ptr noundef nonnull @.str.15) #11 ; 0 uses
  %i.po = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ce, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #11
  %.pre599.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %i.pp = phi i32 [ %.pre599.i, %bb.ao ], [ %i.ow, %bb.al ] ; 2 uses
  %i.pq = and i32 %i.pp, 4096
  %.not410.i = icmp eq i32 %i.pq, 0
  br i1 %.not410.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %2 = load <2 x double>, ptr %i.ji, align 8, !tbaa !34
  %3 = call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %2)
  %i.pr = load i64, ptr %i.jd, align 8, !tbaa !44
  %i.ps = load i64, ptr %i.je, align 8, !tbaa !45
  %i.pt = add i64 %i.ps, %i.pr
  %i.pu = uitofp nsz i64 %i.pt to double
  %i.pv = fdiv nsz double %3, %i.pu
  %i.pw = call nsz double @llvm.log10.f64(double %i.pv)
  %i.px = fmul nsz double %i.pw, 2.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #11
  %i.py = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cc, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.px) #11 ; 0 uses
  %i.pz = trunc i64 %indvars.iv.i29 to i32
  %i.qa = add i32 %i.pz, 1
  %i.qb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cd, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.qa, ptr noundef nonnull @.str.16) #11 ; 0 uses
  %i.qc = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cc, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc) #11
  %.pre600.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.qd = phi i32 [ %.pre600.i, %bb.aq ], [ %i.pp, %bb.ap ] ; 2 uses
  %i.qe = and i32 %i.qd, 8192
  %.not411.i = icmp eq i32 %i.qe, 0
  br i1 %.not411.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qf = load i64, ptr %i.jd, align 8, !tbaa !44
  %i.qg = load i64, ptr %i.je, align 8, !tbaa !45
  %i.qh = add i64 %i.qg, %i.qf
  %i.qi = uitofp nsz i64 %i.qh to float
  %i.qj = fpext nsz float %i.qi to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb) #11
  %i.qk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ca, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.qj) #11 ; 0 uses
  %i.ql = trunc i64 %indvars.iv.i29 to i32
  %i.qm = add i32 %i.ql, 1
  %i.qn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cb, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.qm, ptr noundef nonnull @.str.17) #11 ; 0 uses
  %i.qo = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ca, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca) #11
  %.pre601.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qp = phi i32 [ %.pre601.i, %bb.as ], [ %i.qd, %bb.ar ] ; 2 uses
  %i.qq = and i32 %i.qp, 33554432
  %.not412.i = icmp eq i32 %i.qq, 0
  br i1 %.not412.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qr = load i64, ptr %i.jf, align 8, !tbaa !57
  %i.qs = uitofp nsz i64 %i.qr to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #11
  %i.qt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.by, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.qs) #11 ; 0 uses
  %i.qu = trunc i64 %indvars.iv.i29 to i32
  %i.qv = add i32 %i.qu, 1
  %i.qw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bz, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.qv, ptr noundef nonnull @.str.17) #11 ; 0 uses
  %i.qx = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by) #11
  %.pre602.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.qy = phi i32 [ %.pre602.i, %bb.au ], [ %i.qp, %bb.at ] ; 2 uses
  %i.qz = and i32 %i.qy, 4194304
  %.not413.i = icmp eq i32 %i.qz, 0
  br i1 %.not413.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ra = load double, ptr %i.hh, align 8, !tbaa !40
  %i.rb = call nsz double @llvm.log10.f64(double %i.ra)
  %i.rc = fmul nsz double %i.rb, 2.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx) #11
  %i.rd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bw, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.rc) #11 ; 0 uses
  %i.re = trunc i64 %indvars.iv.i29 to i32
  %i.rf = add i32 %i.re, 1
  %i.rg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bx, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.rf, ptr noundef nonnull @.str.18) #11 ; 0 uses
  %i.rh = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bw, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw) #11
  %.pre603.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ri = phi i32 [ %.pre603.i, %bb.aw ], [ %i.qy, %bb.av ] ; 2 uses
  %i.rj = and i32 %i.ri, 8388608
  %.not414.i = icmp eq i32 %i.rj, 0
  br i1 %.not414.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rk = load i64, ptr %i.hj, align 8, !tbaa !58
  %i.rl = uitofp nsz i64 %i.rk to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv) #11
  %i.rm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bu, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.rl) #11 ; 0 uses
  %i.rn = trunc i64 %indvars.iv.i29 to i32
  %i.ro = add i32 %i.rn, 1
  %i.rp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.ro, ptr noundef nonnull @.str.19) #11 ; 0 uses
  %i.rq = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bu, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu) #11
  %.pre604.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.rr = phi i32 [ %.pre604.i, %bb.ay ], [ %i.ri, %bb.ax ] ; 2 uses
  %i.rs = and i32 %i.rr, 16777216
  %.not415.i = icmp eq i32 %i.rs, 0
  br i1 %.not415.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rt = load double, ptr %i.ix, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt) #11
  %i.ru = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bs, i64 noundef 128, ptr noundef nonnull @.str.4, double noundef %i.rt) #11 ; 0 uses
  %i.rv = trunc i64 %indvars.iv.i29 to i32
  %i.rw = add i32 %i.rv, 1
  %i.rx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bt, i64 noundef 128, ptr noundef nonnull @.str.53, i32 noundef range(i32 -2147483647, -2147483648) %i.rw, ptr noundef nonnull @.str.20) #11 ; 0 uses
  %i.ry = call i32 @av_dict_set(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bs, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs) #11
  %.pre605.i = load i32, ptr %i.fu, align 4, !tbaa !50
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.rz = phi i32 [ %.pre605.i, %bb.ba ], [ %i.rr, %bb.az ] ; 2 uses
  %i.sa = and i32 %i.rz, 16384
  %.not416.i = icmp eq i32 %i.sa, 0
  br i1 %.not416.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val430.i = load i32, ptr %i.fv, align 8, !tbaa !59 ; 7 uses
  %i.sb = load i64, ptr %i.jm, align 8, !tbaa !41 ; 3 uses
  %i.sc = load i64, ptr %i.jp, align 8, !tbaa !41
  %i.sd = xor i64 %i.sc, -1
  %i.se = and i64 %i.sb, %i.sd                    ; 2 uses
  %.not15.i.i = icmp eq i32 %.val430.i, 0
  br i1 %.not15.i.i, label %bit_depth.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bc
  %wide.trip.count.i.i = zext i32 %.val430.i to i64 ; 9 uses
  %i.sf = load i64, ptr %i.jl, align 8, !tbaa !41 ; 2 uses
  %min.iters.check207 = icmp ult i32 %.val430.i, 16
  br i1 %min.iters.check207, label %.lr.ph.i.i.preheader, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec209 = and i64 %wide.trip.count.i.i, 4294967280 ; 3 uses
  %broadcast.splatinsert210 = insertelement <16 x i64> poison, i64 %i.sf, i64 0
  %broadcast.splat211 = shufflevector <16 x i64> %broadcast.splatinsert210, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph208
  %index213 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body212 ]
  %vec.phi214 = phi <16 x i8> [ zeroinitializer, %vector.ph208 ], [ %i.sj, %vector.body212 ]
  %vec.ind215 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph208 ], [ %vec.ind.next217, %vector.body212 ] ; 2 uses
  %i.sg = lshr <16 x i64> %broadcast.splat211, %vec.ind215
  %i.sh = trunc <16 x i64> %i.sg to <16 x i8>
  %i.si = and <16 x i8> %i.sh, splat (i8 1)
  %i.sj = add <16 x i8> %i.si, %vec.phi214        ; 2 uses
  %index.next216 = add nuw i64 %index213, 16      ; 2 uses
  %vec.ind.next217 = add nuw nsw <16 x i64> %vec.ind215, splat (i64 16)
  %i.sk = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.sk, label %middle.block218, label %vector.body212, !llvm.loop !103

middle.block218:                                  ; preds = %vector.body212
  %i.sl = call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %i.sj) ; 2 uses
  %cmp.n219 = icmp eq i64 %n.vec209, %wide.trip.count.i.i
  br i1 %cmp.n219, label %.lr.ph4.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block218
  %.ph284 = phi i8 [ 0, %.lr.ph.preheader.i.i ], [ %i.sl, %middle.block218 ]
  %indvars.iv.i431.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec209, %middle.block218 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.sm = phi i8 [ %i.sq, %.lr.ph.i.i ], [ %.ph284, %.lr.ph.i.i.preheader ]
  %indvars.iv.i431.i = phi i64 [ %indvars.iv.next.i432.i, %.lr.ph.i.i ], [ %indvars.iv.i431.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.sn = lshr i64 %i.sf, %indvars.iv.i431.i
  %i.so = trunc i64 %i.sn to i8
  %i.sp = and i8 %i.so, 1
  %i.sq = add i8 %i.sp, %i.sm                     ; 2 uses
  %indvars.iv.next.i432.i = add nuw nsw i64 %indvars.iv.i431.i, 1 ; 2 uses
  %exitcond.not.i433.i = icmp eq i64 %indvars.iv.next.i432.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i433.i, label %.lr.ph4.i.i.preheader, label %.lr.ph.i.i, !llvm.loop !104

.lr.ph4.i.i.preheader:                            ; preds = %.lr.ph.i.i, %middle.block218
  %.lcssa149 = phi i8 [ %i.sl, %middle.block218 ], [ %i.sq, %.lr.ph.i.i ]
  %min.iters.check191 = icmp ult i32 %.val430.i, 16
  br i1 %min.iters.check191, label %.lr.ph4.i.i.preheader282, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph4.i.i.preheader
  %n.vec193 = and i64 %wide.trip.count.i.i, 4294967280 ; 3 uses
  %broadcast.splatinsert194 = insertelement <16 x i64> poison, i64 %i.sb, i64 0
  %broadcast.splat195 = shufflevector <16 x i64> %broadcast.splatinsert194, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph192
  %index197 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body196 ]
  %vec.phi198 = phi <16 x i8> [ zeroinitializer, %vector.ph192 ], [ %i.su, %vector.body196 ]
  %vec.ind199 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph192 ], [ %vec.ind.next201, %vector.body196 ] ; 2 uses
  %i.sr = lshr <16 x i64> %broadcast.splat195, %vec.ind199
  %i.ss = trunc <16 x i64> %i.sr to <16 x i8>
end_hunk_0
begin_hunk_1_@config_output:bb.a
  store i64 %spec.select, ptr %i.p, align 8, !tbaa !33
  %i.q = load i32, ptr %i.d, align 4, !tbaa !90   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !27
  %.not4651 = icmp sgt i32 %i.q, 0
  br i1 %.not4651, label %.lr.ph, label %.critedge47

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !27
  %i.t = sext i32 %i.s to i64
  %.not46 = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %.not46, label %.lr.ph, label %.critedge47.loopexit, !llvm.loop !173

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw [65864 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.w = load i64, ptr %i.p, align 8, !tbaa !33
  %i.x = tail call noalias ptr @av_calloc(i64 noundef %i.w, i64 noundef 8) #11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  store ptr %i.x, ptr %i.y, align 8, !tbaa !81
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = load i64, ptr %i.p, align 8, !tbaa !33
  %i.aa = tail call noalias ptr @av_calloc(i64 noundef %i.z, i64 noundef 8) #11 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !82
  %.not45.not = icmp eq ptr %i.aa, null
  br i1 %.not45.not, label %.critedge, label %bb.c

.critedge47.loopexit:                             ; preds = %bb.c
  %.pre = load double, ptr %i.i, align 8, !tbaa !177
  %.pre55 = load i32, ptr %i.k, align 8, !tbaa !178
  %.pre56 = sitofp nsz i32 %.pre55 to double
  br label %.critedge47

.critedge47:                                      ; preds = %.critedge47.loopexit, %bb.b
  %.pre-phi = phi double [ %.pre56, %.critedge47.loopexit ], [ %i.m, %bb.b ]
  %i.ac = phi double [ %.pre, %.critedge47.loopexit ], [ %i.j, %bb.b ]
  %i.ad = fdiv nsz double -1.000000e+00, %i.ac
  %i.ae = fdiv nsz double %i.ad, %.pre-phi
  %i.af = tail call nsz double @llvm.exp.f64(double %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.af, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 0, ptr %i.ah, align 4, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !93
  %i.ak = tail call i32 @av_get_bytes_per_sample(i32 noundef %i.aj) #11
  %i.al = shl nsw i32 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.al, ptr %i.am, align 8, !tbaa !59
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ap = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = icmp eq <2 x i32> %i.aq, <i32 3, i32 4>
  %i.as = icmp eq <2 x i32> %i.aq, <i32 8, i32 9>
  %i.at = or <2 x i1> %i.ar, %i.as
  %i.au = zext <2 x i1> %i.at to <2 x i32>
  store <2 x i32> %i.au, ptr %i.ao, align 4, !tbaa !94
  %i.av = load i32, ptr %i.r, align 8, !tbaa !27
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph55.i, label %.critedge

.lr.ph55.i:                                       ; preds = %.critedge47, %._crit_edge.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %._crit_edge.i ], [ 0, %.critedge47 ] ; 2 uses
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw [65864 x i8], ptr %i.ax, i64 %indvars.iv58.i ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.az, align 8, !tbaa !34
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.ba, align 8, !tbaa !34
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.bb, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.bd, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.be, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.bj, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, i8 0, i64 40, i1 false)
  store double +qnan, ptr %i.ay, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 65848
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  store i64 0, ptr %i.bn, align 8, !tbaa !58
  store <2 x double> <double +qnan, double 0.000000e+00>, ptr %i.bm, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 65840
  store i32 0, ptr %i.bo, align 8, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 65832
  store i32 0, ptr %i.bp, align 8, !tbaa !79
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 65836
  store i32 0, ptr %i.bq, align 4, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !81
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !33
  %i.bu = shl i64 %i.bt, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %i.bu, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.bv, i8 0, i64 65536, i1 false)
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !33  ; 5 uses
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph55.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 280
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !82 ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bw, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.bz, align 8, !tbaa !34
  store <2 x double> splat (double -1.000000e+00), ptr %i.ca, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %.lr.ph55.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.cc = load i32, ptr %i.r, align 8, !tbaa !27
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next59.i, %i.cd
  br i1 %i.ce, label %.lr.ph55.i, label %.critedge, !llvm.loop !2

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i
  store double -1.000000e+00, ptr %i.cf, align 8, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bw
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !175

.critedge:                                        ; preds = %bb.d, %.lr.ph, %._crit_edge.i, %.critedge47, %bb.a
  %.3 = phi i32 [ 0, %.critedge47 ], [ -12, %bb.a ], [ 0, %._crit_edge.i ], [ -12, %.lr.ph ], [ -12, %bb.d ]
  ret i32 %.3
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #8

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v16i8(<16 x i8>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { memory(none) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !42}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"override-stack-alignment", i32 16}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!14 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!19 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!20 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!21 = !{!"AVFilterContext", !13, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !18, i64 32, !9, i64 40, !16, i64 48, !18, i64 56, !9, i64 64, !12, i64 72, !19, i64 80, !9, i64 88, !9, i64 92, !15, i64 96, !9, i64 104, !20, i64 112, !9, i64 120}
!22 = !{!21, !12, i64 72}
!23 = !{!"p1 _ZTS12ChannelStats", !12, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!"double", !8, i64 0}
!26 = !{!"AudioStatsContext", !13, i64 0, !23, i64 8, !9, i64 16, !24, i64 24, !25, i64 32, !25, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!27 = !{!26, !9, i64 16}
!28 = !{!26, !23, i64 8}
!29 = !{!"p1 double", !12, i64 0}
!30 = !{!"ChannelStats", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !25, i64 72, !25, i64 80, !25, i64 88, !25, i64 96, !25, i64 104, !25, i64 112, !25, i64 120, !25, i64 128, !25, i64 136, !25, i64 144, !25, i64 152, !25, i64 160, !8, i64 168, !24, i64 200, !24, i64 208, !24, i64 216, !24, i64 224, !24, i64 232, !24, i64 240, !24, i64 248, !24, i64 256, !24, i64 264, !29, i64 272, !29, i64 280, !8, i64 288, !24, i64 65824, !9, i64 65832, !9, i64 65836, !9, i64 65840, !9, i64 65844, !25, i64 65848, !25, i64 65856}
!31 = !{!30, !24, i64 240}
!32 = !{!26, !9, i64 52}
!33 = !{!26, !24, i64 24}
!34 = !{!25, !25, i64 0}
!35 = !{!30, !25, i64 32}
!36 = !{!30, !25, i64 56}
!37 = !{!30, !25, i64 48}
!38 = !{!30, !25, i64 152}
!39 = !{!30, !25, i64 144}
!40 = !{!30, !25, i64 65848}
!41 = !{!24, !24, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!30, !25, i64 65856}
!44 = !{!30, !24, i64 200}
!45 = !{!30, !24, i64 208}
!46 = !{!30, !25, i64 112}
!47 = !{!30, !25, i64 120}
!48 = !{!30, !24, i64 264}
!49 = !{!30, !25, i64 24}
!50 = !{!26, !9, i64 68}
!51 = !{!30, !25, i64 64}
!52 = !{!30, !25, i64 72}
!53 = !{!30, !25, i64 128}
!54 = !{!30, !25, i64 136}
!55 = !{!30, !25, i64 80}
!56 = !{!30, !25, i64 88}
!57 = !{!30, !24, i64 216}
!58 = !{!30, !24, i64 224}
!59 = !{!26, !9, i64 64}
!60 = !{!30, !25, i64 16}
!61 = !{!30, !24, i64 232}
!62 = !{!26, !9, i64 76}
!63 = !{!26, !9, i64 80}
!64 = !{!30, !24, i64 248}
!65 = !{!30, !24, i64 256}
!66 = !{!26, !9, i64 72}
!67 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!68 = !{!"AVRational", !9, i64 0, !9, i64 4}
!69 = !{!"AVChannelLayout", !9, i64 0, !9, i64 4, !8, i64 8, !12, i64 16}
!70 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!71 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!72 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!73 = !{!"AVFilterFormatsConfig", !71, i64 0, !71, i64 8, !72, i64 16, !71, i64 24, !71, i64 32, !71, i64 40}
!74 = !{!"AVFilterLink", !67, i64 0, !16, i64 8, !67, i64 16, !16, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !68, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !69, i64 72, !68, i64 96, !70, i64 104, !9, i64 112, !9, i64 116, !73, i64 120, !73, i64 168}
!75 = !{!26, !9, i64 60}
!76 = !{!30, !25, i64 160}
!77 = !{!30, !25, i64 0}
!78 = !{!30, !9, i64 65840}
!79 = !{!30, !9, i64 65832}
!80 = !{!30, !9, i64 65836}
!81 = !{!30, !29, i64 272}
!82 = !{!30, !29, i64 280}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!"p2 omnipotent char", !17, i64 0}
!86 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!87 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!88 = !{!"AVFrame", !8, i64 0, !8, i64 64, !85, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !68, i64 124, !24, i64 136, !24, i64 144, !68, i64 152, !9, i64 160, !12, i64 168, !9, i64 176, !9, i64 180, !8, i64 184, !86, i64 248, !9, i64 256, !70, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !24, i64 304, !87, i64 312, !9, i64 320, !20, i64 328, !20, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !12, i64 376, !69, i64 384, !24, i64 408, !9, i64 416}
!89 = !{!88, !9, i64 112}
!90 = !{!74, !9, i64 76}
!91 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!74, !9, i64 36}
!94 = !{!9, !9, i64 0}
!95 = !{!26, !25, i64 40}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !42, !83, !84}
!102 = distinct !{!102, !42, !84, !83}
!103 = distinct !{!103, !42, !83, !84}
!104 = distinct !{!104, !42, !84, !83}
!105 = distinct !{!105, !42, !83, !84}
!106 = distinct !{!106, !42, !84, !83}
!107 = distinct !{!107, !42, !83, !84}
!108 = distinct !{!108, !42, !84, !83}
!109 = distinct !{!109, !42}
!110 = distinct !{!110, !42, !83, !84}
!111 = distinct !{!111, !42, !84, !83}
!112 = distinct !{!112, !42, !83, !84}
!113 = distinct !{!113, !42, !84, !83}
!114 = distinct !{!114, !42, !83, !84}
!115 = distinct !{!115, !42, !84, !83}
!116 = !{!74, !67, i64 16}
!117 = !{!26, !9, i64 56}
!118 = !{!26, !9, i64 48}
!119 = !{!21, !18, i64 56}
!120 = distinct !{!120, !42}
!121 = distinct !{!121, !42}
!122 = distinct !{!122, !42}
!123 = distinct !{!123, !42}
!124 = distinct !{!124, !42}
!125 = distinct !{!125, !42}
!126 = distinct !{!126, !42}
!127 = distinct !{!127, !42}
!128 = distinct !{!128, !42}
!129 = distinct !{!129, !42}
!130 = distinct !{!130, !42}
!131 = distinct !{!131, !42}
!132 = distinct !{!132, !42}
!133 = distinct !{!133, !42}
!134 = distinct !{!134, !42}
!135 = distinct !{!135, !42}
!136 = distinct !{!136, !42}
!137 = distinct !{!137, !42}
!138 = distinct !{!138, !42}
!139 = distinct !{!139, !42}
!140 = distinct !{!140, !42}
!141 = distinct !{!141, !42}
!142 = distinct !{!142, !42}
!143 = distinct !{!143, !42}
!144 = distinct !{!144, !42}
!145 = distinct !{!145, !42}
!146 = distinct !{!146, !42}
!147 = distinct !{!147, !42}
!148 = distinct !{!148, !42}
!149 = distinct !{!149, !42}
!150 = distinct !{!150, !42}
!151 = distinct !{!151, !42}
!152 = distinct !{!152, !42}
!153 = distinct !{!153, !42}
!154 = distinct !{!154, !42}
!155 = distinct !{!155, !42}
!156 = distinct !{!156, !42}
!157 = distinct !{!157, !42}
!158 = distinct !{!158, !42}
!159 = distinct !{!159, !42}
!160 = !{!21, !18, i64 32}
!161 = !{!88, !85, i64 96}
!162 = !{!88, !9, i64 388}
!163 = !{!15, !15, i64 0}
!164 = !{!"float", !8, i64 0}
!165 = !{!164, !164, i64 0}
!166 = !{!"short", !8, i64 0}
!167 = !{!166, !166, i64 0}
!168 = !{!30, !25, i64 96}
!169 = !{!30, !25, i64 104}
!170 = !{!30, !25, i64 8}
!171 = !{!30, !24, i64 65824}
!172 = !{!30, !9, i64 65844}
!173 = distinct !{!173, !42}
!174 = distinct !{!174, !42, !83, !84}
!175 = distinct !{!175, !42, !84, !83}
!176 = !{!74, !67, i64 0}
!177 = !{!26, !25, i64 32}
!178 = !{!74, !9, i64 64}
end_hunk_1
