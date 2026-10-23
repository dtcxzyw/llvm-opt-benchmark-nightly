Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatoinit?download=true
inline.NumInlined: 111
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@init_nop:bb.a
    i8 0, label %numFields.exit.i.i
    i8 9, label %gv_isspace.exit22.i.i.i.loopexit
    i8 10, label %gv_isspace.exit22.i.i.i.loopexit
    i8 11, label %gv_isspace.exit22.i.i.i.loopexit
    i8 12, label %gv_isspace.exit22.i.i.i.loopexit
    i8 13, label %gv_isspace.exit22.i.i.i.loopexit
    i8 32, label %gv_isspace.exit22.i.i.i.loopexit
    i8 59, label %numFields.exit.i.i
  ], !llvm.loop !109

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %.2.i.i.i, i64 1 ; 2 uses
  %.pre.i.i.i = load i8, ptr %i.cc, align 1, !tbaa !45
  br label %bb.v, !llvm.loop !110

numFields.exit.i.i:                               ; preds = %bb.s, %bb.v, %bb.v
  %.132.i.i.i = phi i64 [ %i.ca, %bb.v ], [ %i.ca, %bb.v ], [ %.011.i.i.i, %bb.s ] ; 11 uses
  %i.cd = icmp ugt i64 %.132.i.i.i, 3
  %i.ce = urem i64 %.132.i.i.i, 3
  %.not.i.i = icmp eq i64 %i.ce, 1
  %or.cond.i.i = and i1 %i.cd, %.not.i.i
  br i1 %or.cond.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %numFields.exit.i.i
  call void @gv_free_splines(ptr noundef nonnull %.01952.i) #21
  %i.cf = atomicrmw xchg ptr @user_spline.warned, i8 1 seq_cst, align 1
  %i.cg = trunc i8 %i.cf to i1
  br i1 %i.cg, label %user_spline.exit.thread29.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = load i32, ptr %.01952.i, align 8
  %i.ci = and i32 %i.ch, 3
  %i.cj = icmp eq i32 %i.ci, 3
  %i.ck = select i1 %i.cj, i64 56, i64 120
  %i.cl = getelementptr inbounds nuw i8, ptr %.01952.i, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !63
  %i.cn = call ptr @agnameof(ptr noundef %i.cm) #21
  %i.co = load i32, ptr %.01952.i, align 8
  %i.cp = and i32 %i.co, 3
  %i.cq = icmp eq i32 %i.cp, 2
  %i.cr = select i1 %i.cq, i64 56, i64 -8
  %i.cs = getelementptr inbounds i8, ptr %.01952.i, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63
  %i.cu = call ptr @agnameof(ptr noundef %i.ct) #21
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.27, ptr noundef %i.cn, ptr noundef %i.cu) #21
  br label %user_spline.exit.thread29.i

bb.z:                                             ; preds = %numFields.exit.i.i
  %mul.ov.i.i.i = icmp ugt i64 %.132.i.i.i, 1152921504606846975
  br i1 %mul.ov.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.20, i64 noundef %.132.i.i.i, i64 noundef 16) #23 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cx = call noalias ptr @calloc(i64 noundef %.132.i.i.i, i64 noundef 16) #22 ; 7 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.ac, label %gv_calloc.exit.preheader.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.da = shl nuw i64 %.132.i.i.i, 4
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.21, i64 noundef %i.da) #23 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit.preheader.i.i:                     ; preds = %bb.ab, %gv_calloc.exit.i.i
  %.085147.i.i = phi ptr [ %i.dz, %gv_calloc.exit.i.i ], [ %i.cx, %bb.ab ] ; 3 uses
  %.090146.i.i = phi i64 [ %i.ea, %gv_calloc.exit.i.i ], [ %.132.i.i.i, %bb.ab ]
  %.394145.i.i = phi ptr [ %i.dw, %gv_calloc.exit.i.i ], [ %.293.i.i, %bb.ab ] ; 2 uses
  %i.dc = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.394145.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.i) #21
  %i.dd = icmp slt i32 %i.dc, 2
  br i1 %i.dd, label %bb.ad, label %gv_calloc.exit.i.i

bb.ad:                                            ; preds = %gv_calloc.exit.preheader.i.i
  %i.de = atomicrmw xchg ptr @user_spline.warned, i8 1 seq_cst, align 1
  %i.df = trunc i8 %i.de to i1
  br i1 %i.df, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load i32, ptr %.01952.i, align 8
  %i.dh = and i32 %i.dg, 3
  %i.di = icmp eq i32 %i.dh, 3
  %i.dj = select i1 %i.di, i64 56, i64 120
  %i.dk = getelementptr inbounds nuw i8, ptr %.01952.i, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !63
  %i.dm = call ptr @agnameof(ptr noundef %i.dl) #21
  %i.dn = load i32, ptr %.01952.i, align 8
  %i.do = and i32 %i.dn, 3
  %i.dp = icmp eq i32 %i.do, 2
  %i.dq = select i1 %i.dp, i64 56, i64 -8
  %i.dr = getelementptr inbounds i8, ptr %.01952.i, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !63
  %i.dt = call ptr @agnameof(ptr noundef %i.ds) #21
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.29, ptr noundef %i.dm, ptr noundef %i.dt) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @free(ptr noundef %i.cx) #21
  call void @gv_free_splines(ptr noundef nonnull %.01952.i) #21
  br label %user_spline.exit.thread29.i

gv_calloc.exit.i.i:                               ; preds = %gv_calloc.exit.preheader.i.i
  %i.du = load i32, ptr %i.i, align 4, !tbaa !55
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %.394145.i.i, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.j, align 8, !tbaa !48
  %i.dy = load double, ptr %i.k, align 8, !tbaa !48
  store double %i.dx, ptr %.085147.i.i, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.085147.i.i, i64 8
  store double %i.dy, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !48
  %i.dz = getelementptr inbounds nuw i8, ptr %.085147.i.i, i64 16
  %i.ea = add nsw i64 %.090146.i.i, -1            ; 2 uses
  %.not110.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not110.i.i, label %.critedge.i.i, label %gv_calloc.exit.preheader.i.i, !llvm.loop !111

.critedge.i.i:                                    ; preds = %gv_calloc.exit.i.i, %bb.ag
  %.495.i.i = phi ptr [ %i.ec, %bb.ag ], [ %i.dw, %gv_calloc.exit.i.i ] ; 3 uses
  %i.eb = load i8, ptr %.495.i.i, align 1, !tbaa !45 ; 2 uses
  switch i8 %i.eb, label %gv_isspace.exit.i.i [
    i8 9, label %bb.ag
    i8 10, label %bb.ag
    i8 11, label %bb.ag
    i8 12, label %bb.ag
    i8 13, label %bb.ag
    i8 32, label %bb.ag
  ]

bb.ag:                                            ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.495.i.i, i64 1
  br label %.critedge.i.i, !llvm.loop !112

gv_isspace.exit.i.i:                              ; preds = %.critedge.i.i
  %i.ed = icmp ne i8 %i.eb, 0                     ; 2 uses
  %.596.idx.i.i = zext i1 %i.ed to i64
  %.596.i.i = getelementptr inbounds nuw i8, ptr %.495.i.i, i64 %.596.idx.i.i
  %i.ee = call ptr @new_spline(ptr noundef nonnull %.01952.i, i64 noundef %.132.i.i.i) #21 ; 9 uses
  br i1 %.187.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %gv_isspace.exit.i.i
  %i.ef = load i32, ptr %i.l, align 4, !tbaa !55
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i32 %i.ef, ptr %i.eg, align 8, !tbaa !123
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store double %.sroa.047.1.i.i, ptr %i.eh, align 8, !tbaa !48
  %.sroa.548.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store double %.sroa.548.1.i.i, ptr %.sroa.548.0..sroa_idx.i.i, align 8, !tbaa !48
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %gv_isspace.exit.i.i
  br i1 %.189.i.i, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.aj, %bb.ai
  %xtraiter = and i64 %.132.i.i.i, 1
  %unroll_iter = and i64 %.132.i.i.i, 1152921504606846974
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load i32, ptr %i.m, align 4, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !124
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store double %.sroa.046.1.i.i, ptr %i.ek, align 8, !tbaa !48
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store double %.sroa.5.1.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !48
  br label %.preheader

.unr-lcssa:                                       ; preds = %bb.al
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.ak, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod243 = trunc i64 %.132.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !125
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ev
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !tbaa.struct !126
  br label %bb.ak

bb.ak:                                            ; preds = %.unr-lcssa, %.epil.preheader
  call void @free(ptr noundef nonnull %i.cx) #21
  br i1 %i.ed, label %bb.n, label %.critedge120.i.i, !llvm.loop !113

bb.al:                                            ; preds = %bb.al, %.preheader
  %.0148.i.i = phi i64 [ 0, %.preheader ], [ %i.ev, %bb.al ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader ], [ %niter.next.1, %bb.al ]
  %i.eo = load ptr, ptr %i.ee, align 8, !tbaa !125
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %.0148.i.i
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.0148.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !126
  %i.er = or disjoint i64 %.0148.i.i, 1           ; 2 uses
  %i.es = load ptr, ptr %i.ee, align 8, !tbaa !125
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.er
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !tbaa.struct !126
  %i.ev = add nuw nsw i64 %.0148.i.i, 2           ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.al, !llvm.loop !114

.critedge120.i.i:                                 ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.01952.i, i64 16 ; 4 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !13 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 120
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !127 ; 4 uses
  %.not111.i.i = icmp eq ptr %i.ez, null
  br i1 %.not111.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.critedge120.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.fa = call ptr @agget(ptr noundef nonnull %.01952.i, ptr noundef nonnull @.str.5) #21 ; 2 uses
  %.not.i121.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i121.i.i, label %set_label.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.fa, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #21
  %i.fc = icmp eq i32 %i.fb, 2
  br i1 %i.fc, label %bb.ao, label %set_label.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fe = load double, ptr %i.g, align 8, !tbaa !48
  %i.ff = load double, ptr %i.h, align 8, !tbaa !48
  store double %i.fe, ptr %i.fd, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 80
  store double %i.ff, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 105
  store i8 1, ptr %i.fg, align 1, !tbaa !59
  br label %set_label.exit.i.i

set_label.exit.i.i:                               ; preds = %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  %.pre.i.i = load ptr, ptr %i.ew, align 8, !tbaa !13
  br label %bb.ap

bb.ap:                                            ; preds = %set_label.exit.i.i, %.critedge120.i.i
  %i.fh = phi ptr [ %.pre.i.i, %set_label.exit.i.i ], [ %i.ex, %.critedge120.i.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !128 ; 4 uses
  %.not112.i.i = icmp eq ptr %i.fj, null
  br i1 %.not112.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %i.fk = call ptr @agget(ptr noundef nonnull %.01952.i, ptr noundef nonnull @.str.11) #21 ; 2 uses
  %.not.i122.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i122.i.i, label %set_label.exit124.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.fk, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #21
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %bb.as, label %set_label.exit124.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.fo = load double, ptr %i.e, align 8, !tbaa !48
  %i.fp = load double, ptr %i.f, align 8, !tbaa !48
  store double %i.fo, ptr %i.fn, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i123.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  store double %i.fp, ptr %.sroa.2.0..sroa_idx.i123.i.i, align 8, !tbaa !48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 105
  store i8 1, ptr %i.fq, align 1, !tbaa !59
  br label %set_label.exit124.i.i

set_label.exit124.i.i:                            ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  %.pre172.i.i = load ptr, ptr %i.ew, align 8, !tbaa !13
  br label %bb.at

bb.at:                                            ; preds = %set_label.exit124.i.i, %bb.ap
  %i.fr = phi ptr [ %.pre172.i.i, %set_label.exit124.i.i ], [ %i.fh, %bb.ap ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !129 ; 4 uses
  %.not113.i.i = icmp eq ptr %i.ft, null
  br i1 %.not113.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.fu = call ptr @agget(ptr noundef nonnull %.01952.i, ptr noundef nonnull @.str.30) #21 ; 2 uses
  %.not.i125.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i125.i.i, label %set_label.exit127.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fv = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.fu, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21
  %i.fw = icmp eq i32 %i.fv, 2
  br i1 %i.fw, label %bb.aw, label %set_label.exit127.i.i

bb.aw:                                            ; preds = %bb.av
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %i.fy = load double, ptr %i.c, align 8, !tbaa !48
  %i.fz = load double, ptr %i.d, align 8, !tbaa !48
  store double %i.fy, ptr %i.fx, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i126.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  store double %i.fz, ptr %.sroa.2.0..sroa_idx.i126.i.i, align 8, !tbaa !48
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 105
  store i8 1, ptr %i.ga, align 1, !tbaa !59
  br label %set_label.exit127.i.i

set_label.exit127.i.i:                            ; preds = %bb.aw, %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.pre173.i.i = load ptr, ptr %i.ew, align 8, !tbaa !13
  br label %bb.ax

bb.ax:                                            ; preds = %set_label.exit127.i.i, %bb.at
  %i.gb = phi ptr [ %.pre173.i.i, %set_label.exit127.i.i ], [ %i.fr, %bb.at ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 136
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !130 ; 4 uses
  %.not114.i.i = icmp eq ptr %i.gd, null
  br i1 %.not114.i.i, label %user_spline.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ge = call ptr @agget(ptr noundef nonnull %.01952.i, ptr noundef nonnull @.str.31) #21 ; 2 uses
  %.not.i128.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i128.i.i, label %set_label.exit130.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gf = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ge, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #21
  %i.gg = icmp eq i32 %i.gf, 2
  br i1 %i.gg, label %bb.ba, label %set_label.exit130.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 72
  %i.gi = load double, ptr %i.a, align 8, !tbaa !48
  %i.gj = load double, ptr %i.b, align 8, !tbaa !48
  store double %i.gi, ptr %i.gh, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.i129.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  store double %i.gj, ptr %.sroa.2.0..sroa_idx.i129.i.i, align 8, !tbaa !48
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 105
  store i8 1, ptr %i.gk, align 1, !tbaa !59
  br label %set_label.exit130.i.i

set_label.exit130.i.i:                            ; preds = %bb.ba, %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %user_spline.exit.i

user_spline.exit.thread29.i:                      ; preds = %bb.af, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  br label %bb.bb

user_spline.exit.i:                               ; preds = %set_label.exit130.i.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  %i.gl = add nsw i32 %.154.i, 1
  br label %bb.bb

bb.bb:                                            ; preds = %user_spline.exit.i, %user_spline.exit.thread29.i, %user_spline.exit.thread.i
  %i.gm = phi i32 [ %i.gl, %user_spline.exit.i ], [ %.154.i, %user_spline.exit.thread29.i ], [ %.154.i, %user_spline.exit.thread.i ] ; 2 uses
  %i.gn = call ptr @agnxtout(ptr noundef nonnull %0, ptr noundef nonnull %.01952.i) #21 ; 2 uses
  %.not25.i = icmp eq ptr %i.gn, null
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %bb.bb, %.lr.ph59.i
  %.1.lcssa.i = phi i32 [ %.057.i, %.lr.ph59.i ], [ %i.gm, %bb.bb ] ; 3 uses
  %i.go = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.02056.i) #21 ; 2 uses
  %.not.i84 = icmp eq ptr %i.go, null
  br i1 %.not.i84, label %._crit_edge60.i, label %.lr.ph59.i, !llvm.loop !116

._crit_edge60.i:                                  ; preds = %._crit_edge.i
  %.not24.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not24.i, label %nop_init_edges.exit, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge60.i
  %i.gp = call i32 @agnedges(ptr noundef nonnull %0) #21
  %i.gq = icmp eq i32 %.1.lcssa.i, %i.gp
  %..i = select i1 %i.gq, i32 2, i32 1
  br label %nop_init_edges.exit

nop_init_edges.exit:                              ; preds = %._crit_edge, %bb.k, %bb.l, %._crit_edge60.i, %bb.bc
  %.122.i = phi i32 [ 2, %._crit_edge ], [ 0, %bb.k ], [ %..i, %bb.bc ], [ 0, %._crit_edge60.i ], [ 0, %bb.l ] ; 2 uses
  %i.gr = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !131 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !133
  %.not75.not = icmp eq ptr %i.gv, null
  br i1 %.not75.not, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %nop_init_edges.exit
  %i.gw = icmp eq i32 %1, 0                       ; 2 uses
  %i.gx = load i32, ptr @Nop, align 4
  %i.gy = icmp ne i32 %i.gx, 1
end_hunk_0
begin_hunk_1_@makeGraphData:bb.a
  %i.my = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv351.epil ; 3 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !85 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store ptr %.3334.us.epil, ptr %i.na, align 8, !tbaa !83
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.3334.us.epil, i64 %i.mz
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store ptr %.7199331.us.epil, ptr %i.nc, align 8, !tbaa !214
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.7199331.us.epil, i64 %i.mz
  %indvars.iv.next352.epil = add nuw nsw i64 %indvars.iv351.epil, 1
  %epil.iter420.next = add i64 %epil.iter420, 1   ; 2 uses
  %epil.iter420.cmp.not = icmp eq i64 %epil.iter420.next, %xtraiter419
  br i1 %epil.iter420.cmp.not, label %.loopexit, label %gv_recalloc.exit246.split.us.split.epil, !llvm.loop !212

.loopexit.loopexit411.unr-lcssa:                  ; preds = %gv_recalloc.exit246.split.split
  %lcmp.mod415.not = icmp eq i64 %xtraiter413, 0
  br i1 %lcmp.mod415.not, label %.loopexit, label %gv_recalloc.exit246.split.split.epil.preheader

gv_recalloc.exit246.split.split.epil.preheader:   ; preds = %.loopexit.loopexit411.unr-lcssa, %gv_recalloc.exit246.split.split.preheader
  %indvars.iv343.epil.init = phi i64 [ 0, %gv_recalloc.exit246.split.split.preheader ], [ %indvars.iv.next344.3, %.loopexit.loopexit411.unr-lcssa ]
  %.3334.epil.init = phi ptr [ %.0.i.i292, %gv_recalloc.exit246.split.split.preheader ], [ %i.mj, %.loopexit.loopexit411.unr-lcssa ]
  %lcmp.mod416 = icmp ne i64 %xtraiter413, 0
  tail call void @llvm.assume(i1 %lcmp.mod416)
  br label %gv_recalloc.exit246.split.split.epil

gv_recalloc.exit246.split.split.epil:             ; preds = %gv_recalloc.exit246.split.split.epil, %gv_recalloc.exit246.split.split.epil.preheader
  %indvars.iv343.epil = phi i64 [ %indvars.iv.next344.epil, %gv_recalloc.exit246.split.split.epil ], [ %indvars.iv343.epil.init, %gv_recalloc.exit246.split.split.epil.preheader ] ; 2 uses
  %.3334.epil = phi ptr [ %i.nh, %gv_recalloc.exit246.split.split.epil ], [ %.3334.epil.init, %gv_recalloc.exit246.split.split.epil.preheader ] ; 2 uses
  %epil.iter414 = phi i64 [ %epil.iter414.next, %gv_recalloc.exit246.split.split.epil ], [ 0, %gv_recalloc.exit246.split.split.epil.preheader ]
  %i.ne = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv343.epil ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !85
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store ptr %.3334.epil, ptr %i.ng, align 8, !tbaa !83
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.3334.epil, i64 %i.nf
  %indvars.iv.next344.epil = add nuw nsw i64 %indvars.iv343.epil, 1
  %epil.iter414.next = add i64 %epil.iter414, 1   ; 2 uses
  %epil.iter414.cmp.not = icmp eq i64 %epil.iter414.next, %xtraiter413
  br i1 %epil.iter414.cmp.not, label %.loopexit, label %gv_recalloc.exit246.split.split.epil, !llvm.loop !213

.loopexit:                                        ; preds = %.loopexit.loopexit411.unr-lcssa, %gv_recalloc.exit246.split.split.epil, %.loopexit.loopexit410.unr-lcssa, %gv_recalloc.exit246.split.us.split.epil, %.loopexit.loopexit409.unr-lcssa, %gv_recalloc.exit246.split.split.us.epil, %.loopexit.loopexit.unr-lcssa, %gv_recalloc.exit246.split.us.split.us.epil, %acyclic.exit
  store i32 %.0201.lcssa, ptr %2, align 4, !tbaa !55
  %.not211 = icmp eq ptr %5, null
  br i1 %.not211, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  store ptr %i.o, ptr %5, align 8, !tbaa !79
  br label %bb.ba

bb.az:                                            ; preds = %.loopexit
  tail call void @free(ptr noundef %i.o) #21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  tail call void @freePM(ptr noundef %i.b) #21
  ret ptr %i.j
}

declare hidden ptr @compute_apsp_artificial_weights(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @freeGraphData(ptr noundef) local_unnamed_addr #1

declare ptr @newPM() local_unnamed_addr #1

declare void @clearPM(ptr noundef) local_unnamed_addr #1

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #16

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @freePM(ptr noundef) local_unnamed_addr #1

declare i32 @insertPM(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dfsCycle(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i32 %2, 3
  %i.b = select i1 %i.a, i8 -1, i8 1
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %3, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store i64 1, ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store i8 1, ptr %i.i, align 8, !tbaa !87
  %i.j = getelementptr inbounds [40 x i8], ptr %0, i64 %i.c ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !85
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store i8 0, ptr %i.p, align 8, !tbaa !87
  ret void

bb.b:                                             ; preds = %.lr.ph45, %bb.i
  %.03844 = phi i64 [ 1, %.lr.ph45 ], [ %i.ar, %bb.i ] ; 3 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.03844 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !45
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.03844
  %i.w = load i32, ptr %i.v, align 4, !tbaa !55   ; 2 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %3, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 232
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !87
  %.not = icmp eq i8 %i.ad, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.b, ptr %i.r, align 1, !tbaa !45
  %i.ae = getelementptr inbounds [40 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !85 ; 3 uses
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.041 = phi i64 [ 1, %.lr.ph ], [ %i.al, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.041
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !55
  %.not40 = icmp eq i32 %i.ak, %1
  br i1 %.not40, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.af
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !217

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa = phi i64 [ 1, %bb.d ], [ %i.af, %bb.f ], [ %.041, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0.lcssa
  store i8 -1, ptr %i.ao, align 1, !tbaa !45
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 224
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !86
  %.not39 = icmp eq i64 %i.aq, 0
  br i1 %.not39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @dfsCycle(ptr noundef nonnull %0, i32 noundef %i.w, i32 noundef %2, ptr noundef nonnull %3)
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h, %bb.g, %bb.b
  %i.ar = add nuw i64 %.03844, 1                  ; 2 uses
  %i.as = load i64, ptr %i.j, align 8, !tbaa !85
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !218
}

declare double @elapsed_sec() local_unnamed_addr #1

declare hidden i32 @stress_majorization_with_hierarchy(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #18

declare hidden void @sepFactor(ptr dead_on_unwind writable sret(%struct.expand_t) align 8, ptr noundef) local_unnamed_addr #1

declare hidden i32 @stress_majorization_cola(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @stress_majorization_kD_mkernel(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { cold nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !8, i64 8}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS7Agrec_s", !10, i64 0}
!12 = !{!"Agobj_s", !9, i64 0, !11, i64 16}
!13 = !{!12, !11, i64 16}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"Agrec_s", !14, i64 0, !11, i64 8}
!16 = !{!"p1 _ZTS8layout_t", !10, i64 0}
!17 = !{!"p1 _ZTS11textlabel_t", !10, i64 0}
!18 = !{!"double", !4, i64 0}
!19 = !{!"pointf_s", !18, i64 0, !18, i64 8}
!20 = !{!"", !19, i64 0, !19, i64 16}
!21 = !{!"_Bool", !4, i64 0}
!22 = !{!"short", !4, i64 0}
!23 = !{!"p1 _ZTS5GVC_s", !10, i64 0}
!24 = !{!"any p2 pointer", !10, i64 0}
!25 = !{!"p2 _ZTS8Agnode_s", !24, i64 0}
!26 = !{!"p2 double", !24, i64 0}
!27 = !{!"any p3 pointer", !24, i64 0}
!28 = !{!"p3 double", !27, i64 0}
!29 = !{!"p2 _ZTS8Agraph_s", !24, i64 0}
!30 = !{!"p1 _ZTS8Agraph_s", !10, i64 0}
!31 = !{!"p1 _ZTS8Agnode_s", !10, i64 0}
!32 = !{!"p1 _ZTS6rank_t", !10, i64 0}
!33 = !{!"nlist_t", !25, i64 0, !8, i64 8}
!34 = !{!"Agraphinfo_t", !15, i64 0, !16, i64 16, !17, i64 24, !20, i64 32, !4, i64 64, !4, i64 128, !4, i64 129, !21, i64 130, !4, i64 131, !5, i64 132, !18, i64 136, !18, i64 144, !22, i64 152, !10, i64 160, !23, i64 168, !10, i64 176, !25, i64 184, !5, i64 192, !26, i64 200, !26, i64 208, !26, i64 216, !28, i64 224, !22, i64 232, !22, i64 234, !5, i64 236, !29, i64 240, !30, i64 248, !31, i64 256, !32, i64 264, !30, i64 272, !5, i64 280, !31, i64 288, !31, i64 296, !33, i64 304, !31, i64 320, !31, i64 328, !5, i64 336, !5, i64 340, !21, i64 344, !4, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !31, i64 360, !31, i64 368, !31, i64 376, !25, i64 384, !21, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !21, i64 396}
!35 = !{!34, !22, i64 232}
!36 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 _ZTS10shape_desc", !10, i64 0}
!39 = !{!"p1 double", !10, i64 0}
!40 = !{!"p2 _ZTS8Agedge_s", !24, i64 0}
!41 = !{!"elist", !40, i64 0, !8, i64 8}
!42 = !{!"p1 _ZTS8Agedge_s", !10, i64 0}
!43 = !{!"Agnodeinfo_t", !15, i64 0, !38, i64 16, !10, i64 24, !19, i64 32, !18, i64 48, !18, i64 56, !20, i64 64, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !17, i64 136, !17, i64 144, !10, i64 152, !4, i64 160, !4, i64 161, !21, i64 162, !4, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !39, i64 176, !18, i64 184, !4, i64 192, !21, i64 193, !31, i64 200, !31, i64 208, !4, i64 216, !8, i64 224, !4, i64 232, !4, i64 233, !4, i64 234, !31, i64 240, !31, i64 248, !41, i64 256, !41, i64 272, !41, i64 288, !41, i64 304, !41, i64 320, !30, i64 336, !5, i64 344, !31, i64 352, !5, i64 360, !5, i64 364, !18, i64 368, !41, i64 376, !41, i64 392, !41, i64 408, !41, i64 424, !42, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !4, i64 464}
!44 = !{!43, !39, i64 176}
!45 = !{!4, !4, i64 0}
!46 = !{!22, !22, i64 0}
!47 = !{!43, !4, i64 163}
!48 = !{!18, !18, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"p1 _ZTS7Agsym_s", !10, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!5, !5, i64 0}
!56 = !{!34, !29, i64 240}
!57 = !{!31, !31, i64 0}
!58 = !{!"textlabel_t", !14, i64 0, !14, i64 8, !14, i64 16, !5, i64 24, !18, i64 32, !19, i64 40, !19, i64 56, !19, i64 72, !4, i64 88, !4, i64 104, !21, i64 105, !21, i64 106}
!59 = !{!58, !21, i64 105}
!60 = !{!"p1 _ZTS9dtlink_s_", !10, i64 0}
!61 = !{!"dtlink_s_", !60, i64 0, !4, i64 8}
!62 = !{!"Agedge_s", !12, i64 0, !61, i64 24, !61, i64 40, !31, i64 56}
!63 = !{!62, !31, i64 56}
!64 = !{!"p1 _ZTS8pointf_s", !10, i64 0}
!65 = !{!"p1 _ZTS7splines", !10, i64 0}
!66 = !{!"port", !19, i64 0, !18, i64 16, !10, i64 24, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !4, i64 36, !4, i64 37, !14, i64 40}
!67 = !{!"Ppoly_t", !64, i64 0, !8, i64 8}
!68 = !{!"Agedgeinfo_t", !15, i64 0, !65, i64 16, !66, i64 24, !66, i64 72, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !4, i64 156, !42, i64 160, !10, i64 168, !18, i64 176, !18, i64 184, !67, i64 192, !4, i64 208, !21, i64 209, !22, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !22, i64 224, !5, i64 228, !42, i64 232}
!69 = !{!34, !17, i64 24}
!70 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 8, !48, i64 24, i64 8, !48}
!71 = !{!8, !8, i64 0}
!72 = !{!"float", !4, i64 0}
!73 = !{!"p1 int", !10, i64 0}
!74 = !{!30, !30, i64 0}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!68, !18, i64 176}
!78 = !{!68, !18, i64 184}
!79 = !{!25, !25, i64 0}
!80 = !{!43, !5, i64 164}
!81 = !{!"p1 float", !10, i64 0}
!82 = !{!"", !8, i64 0, !73, i64 8, !81, i64 16, !81, i64 24, !14, i64 32}
!83 = !{!82, !73, i64 8}
!84 = !{!82, !14, i64 32}
!85 = !{!82, !8, i64 0}
!86 = !{!43, !8, i64 224}
!87 = !{!43, !4, i64 232}
!88 = !{!34, !5, i64 132}
!89 = distinct !{!89, i1 false, !"LVerDomain"}
!90 = distinct !{!90, !89}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !49, !50, !51}
!93 = distinct !{!93, !52}
!94 = distinct !{!94, !49, !50}
!95 = distinct !{!95, i1 false, !"LVerDomain"}
!96 = distinct !{!96, !95}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !49, !50, !51}
!99 = distinct !{!99, !52}
!100 = distinct !{!100, !49, !50}
!101 = !{!90}
!102 = !{!91}
!103 = !{!96}
!104 = !{!97}
!105 = distinct !{!105, !49}
!106 = distinct !{!106, !49}
!107 = distinct !{!107, !49}
!108 = distinct !{!108, !49}
!109 = distinct !{!109, !49}
!110 = distinct !{!110, !49}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !49}
!113 = distinct !{!113, !49}
!114 = distinct !{!114, !49}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = distinct !{!117, !49}
!118 = distinct !{!118, !49}
!119 = distinct !{!119, !49}
!120 = !{!34, !25, i64 184}
!121 = !{!43, !17, i64 144}
!122 = !{!"bezier", !64, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !19, i64 24, !19, i64 40}
!123 = !{!122, !5, i64 16}
!124 = !{!122, !5, i64 20}
!125 = !{!122, !64, i64 0}
!126 = !{i64 0, i64 8, !48, i64 8, i64 8, !48}
!127 = !{!68, !17, i64 120}
!128 = !{!68, !17, i64 144}
!129 = !{!68, !17, i64 128}
!130 = !{!68, !17, i64 136}
!131 = !{!34, !16, i64 16}
!132 = !{!"layout_t", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !19, i64 32, !19, i64 48, !19, i64 64, !21, i64 80, !21, i64 81, !21, i64 82, !5, i64 84, !10, i64 88, !14, i64 96}
!133 = !{!132, !10, i64 88}
!134 = !{!132, !5, i64 84}
!135 = !{!43, !18, i64 32}
!136 = !{!43, !18, i64 40}
!137 = !{!34, !18, i64 32}
!138 = !{!34, !18, i64 40}
!139 = distinct !{!139, !49}
!140 = distinct !{!140, !49}
!141 = distinct !{!141, !49}
!142 = distinct !{!142, !49}
!143 = distinct !{!143, !49}
!144 = !{!"p1 _Bool", !10, i64 0}
!145 = !{!"", !72, i64 0, !5, i64 4, !5, i64 8, !21, i64 12, !5, i64 16, !144, i64 24, !73, i64 32, !5, i64 40}
!146 = !{!145, !5, i64 16}
!147 = !{!21, !21, i64 0}
!148 = !{!145, !5, i64 8}
!149 = !{!145, !144, i64 24}
!150 = !{!145, !21, i64 12}
!151 = distinct !{!151, !49}
!152 = distinct !{!152, !49}
!153 = distinct !{!153, !49}
!154 = !{!"Agdesc_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!155 = !{!"p1 _ZTS5dt_s_", !10, i64 0}
!156 = !{!"p1 _ZTS17graphviz_node_set", !10, i64 0}
!157 = !{!"p1 _ZTS8Agclos_s", !10, i64 0}
!158 = !{!"Agraph_s", !12, i64 0, !154, i64 24, !61, i64 32, !61, i64 48, !155, i64 64, !156, i64 72, !155, i64 80, !155, i64 88, !155, i64 96, !155, i64 104, !30, i64 112, !30, i64 120, !157, i64 128}
end_hunk_1
