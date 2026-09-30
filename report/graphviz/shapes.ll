Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@poly_gencode:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.h = load i16, ptr %i.g, align 8
  %i.i = trunc i16 %i.h to i1
  br i1 %i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load i32, ptr %i.j, align 8, !tbaa !135
  %i.l = and i32 %i.k, 4
  %.not194 = icmp eq i32 %i.l, 0
  br i1 %.not194, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !137
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !138
  tail call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %i.s = phi i1 [ true, %bb.c ], [ true, %.thread ], [ false, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !82   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !77   ; 14 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51  ; 36 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %i.ad = add i64 %i.aa, 5                        ; 5 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.ae = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %mul.ov.i = icmp ugt i64 %i.ad, 1152921504606846975
  br i1 %mul.ov.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.5, i64 noundef %i.ad, i64 noundef 16) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 16) #27 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %gv_calloc.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ak = shl nuw i64 %i.ad, 4
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.6, i64 noundef %i.ak) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.g
  %i.am = phi ptr [ %i.ae, %.thread.i ], [ %i.ah, %bb.g ] ; 35 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !11
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !23  ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load double, ptr %i.as, align 8, !tbaa !97
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.av = load double, ptr %i.au, align 8, !tbaa !139
  %i.aw = fadd double %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.az = load double, ptr %i.ay, align 8, !tbaa !96
  %i.ba = load <2 x double>, ptr %i.ax, align 8, !tbaa !10
  %i.bb = fmul <2 x double> %i.ba, splat (double 7.200000e+01)
  %i.bc = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.az, i64 1
  %i.be = fdiv <2 x double> %i.bd, %i.bb          ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %i.bf = call fastcc ptr @checkStyle(ptr noundef nonnull %1, ptr noundef %3) ; 2 uses
  %.not.i213 = icmp eq ptr %i.bf, null
  br i1 %.not.i213, label %bb.j, label %bb.i

bb.i:                                             ; preds = %gv_calloc.exit
  tail call void @gvrender_set_style(ptr noundef nonnull %0, ptr noundef nonnull %i.bf) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %gv_calloc.exit
  %i.bg = load ptr, ptr @N_penwidth, align 8, !tbaa !56 ; 2 uses
  %.not10.i = icmp eq ptr %i.bg, null
  br i1 %.not10.i, label %stylenode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call ptr @agxget(ptr noundef nonnull %1, ptr noundef nonnull %i.bg) #26 ; 2 uses
  %.not11.i = icmp eq ptr %i.bh, null
  br i1 %.not11.i, label %stylenode.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !76
  %.not12.i = icmp eq i8 %i.bi, 0
  br i1 %.not12.i, label %stylenode.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr @N_penwidth, align 8, !tbaa !56
  %i.bk = tail call double @late_double(ptr noundef nonnull %1, ptr noundef %i.bj, double noundef 1.000000e+00, double noundef 0.000000e+00) #26
  tail call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef %i.bk) #26
  br label %stylenode.exit

stylenode.exit:                                   ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bl = load i32, ptr %3, align 4               ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 161
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !140
  %i.bp = zext i8 %i.bo to i32                    ; 4 uses
  %i.bq = and i32 %i.bp, 1
  %.not195 = icmp eq i32 %i.bq, 0
  br i1 %.not195, label %bb.o, label %bb.n

bb.n:                                             ; preds = %stylenode.exit
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.87) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) #26
  br label %bb.ad

bb.o:                                             ; preds = %stylenode.exit
  %i.br = and i32 %i.bp, 2
  %.not196 = icmp eq i32 %i.br, 0
  br i1 %.not196, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.89) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #26
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.bs = and i32 %i.bp, 8
  %.not197 = icmp eq i32 %i.bs, 0
  br i1 %.not197, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.92) #26
  br label %bb.ad

bb.s:                                             ; preds = %bb.q
  %i.bt = and i32 %i.bp, 4
  %.not198 = icmp eq i32 %i.bt, 0
  br i1 %.not198, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.93) #26
  tail call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.94) #26
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.bu = trunc i32 %i.bl to i1
  br i1 %i.bu, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.bv = load ptr, ptr @N_fillcolor, align 8, !tbaa !56
  %i.bw = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.bv, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !76
  %.not.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i, label %bb.w, label %findFill.exit

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr @N_color, align 8, !tbaa !56
  %i.bz = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.by, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !76
  %.not6.i.i = icmp eq i8 %i.ca, 0
  %spec.select.i.i = select i1 %.not6.i.i, ptr @.str.107, ptr %i.bz
  br label %findFill.exit

findFill.exit:                                    ; preds = %bb.v, %bb.w
  %.0.i.i = phi ptr [ %i.bw, %bb.v ], [ %spec.select.i.i, %bb.w ] ; 3 uses
  %i.cb = call zeroext i1 @findStopColor(ptr noundef %.0.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %findFill.exit
  %i.cc = load ptr, ptr %i.a, align 16, !tbaa !84
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %i.cc) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !84 ; 2 uses
  %.not201 = icmp eq ptr %i.ce, null
  %i.cf = load ptr, ptr @N_gradientangle, align 8, !tbaa !56
  %i.cg = call i32 @late_int(ptr noundef nonnull %1, ptr noundef %i.cf, i32 noundef 0, i32 noundef 0) #26
  %i.ch = load double, ptr %i.b, align 8, !tbaa !10
  %.str.95. = select i1 %.not201, ptr @.str.95, ptr %i.ce
  call void @gvrender_set_gradient_vals(ptr noundef nonnull %0, ptr noundef nonnull %.str.95., i32 noundef %i.cg, double noundef %i.ch) #26
  %4 = and i32 %i.bl, 2
  %.not202 = icmp eq i32 %4, 0
  %. = select i1 %.not202, i32 2, i32 3
  br label %bb.z

bb.y:                                             ; preds = %findFill.exit
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %.0.i.i) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0184 = phi i32 [ %., %bb.x ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ac

bb.aa:                                            ; preds = %bb.u
  %i.ci = and i32 %i.bl, 576
  %or.cond211 = icmp eq i32 %i.ci, 0
  br i1 %or.cond211, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = tail call fastcc ptr @findFill(ptr noundef nonnull %1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.1185 = phi i32 [ %.0184, %bb.z ], [ 1, %bb.ab ], [ 0, %bb.aa ]
  %.0181 = phi ptr [ %.0.i.i, %bb.z ], [ %i.cj, %bb.ab ], [ null, %bb.aa ]
  %i.ck = load ptr, ptr @N_color, align 8, !tbaa !56
  %i.cl = call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.ck, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !76
  %.not.i214 = icmp eq i8 %i.cm, 0
  %spec.store.select.i = select i1 %.not.i214, ptr @.str.95, ptr %i.cl ; 2 uses
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select.i) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.p, %bb.t, %bb.ac, %bb.r, %bb.n
  %.2 = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.r ], [ 1, %bb.t ], [ %.1185, %bb.ac ] ; 5 uses
  %.1 = phi ptr [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.r ], [ null, %bb.t ], [ %.0181, %bb.ac ] ; 3 uses
  %.0180 = phi ptr [ @.str.87, %bb.n ], [ @.str.89, %bb.p ], [ @.str.91, %bb.r ], [ @.str.93, %bb.t ], [ %spec.store.select.i, %bb.ac ]
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !38 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !72, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !75
  %i.cu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.cv = icmp eq i32 %i.cu, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cw = phi i1 [ true, %bb.ad ], [ %i.cv, %bb.ae ]
  %i.cx = icmp eq i64 %i.ac, 0
  %i.cy = icmp ne i32 %.2, 0
  %or.cond = and i1 %i.cx, %i.cy
  %or.cond3 = select i1 %or.cond, i1 %i.cw, i1 false
  br i1 %or.cond3, label %.thread278, label %bb.ag

.thread278:                                       ; preds = %bb.af
  call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #26
  br label %.preheader219.lr.ph

bb.ag:                                            ; preds = %bb.af
  %.not250 = icmp eq i64 %i.ac, 0
  br i1 %.not250, label %._crit_edge223, label %.preheader219.lr.ph

.preheader219.lr.ph:                              ; preds = %.thread278, %bb.ag
  %.0179281 = phi i64 [ 1, %.thread278 ], [ %i.ac, %bb.ag ] ; 5 uses
  %.not251 = icmp eq i64 %i.aa, 0                 ; 3 uses
  %i.cz = icmp ult i64 %i.aa, 3
  %i.da = and i32 %i.bl, 1024
  %.not209 = icmp eq i32 %i.da, 0
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.dc = and i32 %i.bl, 520204
  %.not217 = icmp eq i32 %i.dc, 0
  %i.dd = and i32 %i.bl, 512
  %.not385 = icmp eq i32 %i.dd, 0
  %i.de = and i32 %i.bl, 8
  %.not210 = icmp eq i32 %i.de, 0                 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br i1 %i.cz, label %.preheader219.us.peel, label %.preheader219.lr.ph.split

.preheader219.us.peel:                            ; preds = %.preheader219.lr.ph
  br i1 %.not251, label %._crit_edge.us.peel, label %.lr.ph.us.peel

.lr.ph.us.peel:                                   ; preds = %.preheader219.us.peel
  %i.dh = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dj = load <2 x double>, ptr %i.y, align 8, !tbaa !10
  %i.dk = load <2 x double>, ptr %i.di, align 8, !tbaa !10
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.be, <2 x double> %i.dk)
  store <2 x double> %i.dl, ptr %i.am, align 8, !tbaa !10
  %exitcond261.not.peel = icmp eq i64 %i.aa, 1
  br i1 %exitcond261.not.peel, label %._crit_edge.us.peel, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.us.peel
  %gep.us.1.peel = getelementptr i8, ptr %i.y, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.dn = load <2 x double>, ptr %gep.us.1.peel, align 8, !tbaa !10
  %i.do = load <2 x double>, ptr %i.di, align 8, !tbaa !10
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.be, <2 x double> %i.do)
  store <2 x double> %i.dp, ptr %i.dm, align 8, !tbaa !10
  br label %._crit_edge.us.peel

._crit_edge.us.peel:                              ; preds = %.lr.ph.us.peel, %bb.ah, %.preheader219.us.peel
  br i1 %.not385, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.us.peel
  %i.dq = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %.1, i32 noundef 58) #31
  %.not218.us.peel = icmp eq ptr %i.dq, null
  br i1 %.not218.us.peel, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = call i32 @wedgedEllipse(ptr noundef %0, ptr noundef %i.am, ptr noundef nonnull %.1) #26
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dt = call ptr @agnameof(ptr noundef nonnull %1) #26
  %i.du = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.97, ptr noundef %i.dt) #26 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %._crit_edge.us.peel
  %.4.us.peel = phi i32 [ %.2, %._crit_edge.us.peel ], [ %.2, %bb.ai ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  call void @gvrender_ellipse(ptr noundef %0, ptr noundef %i.am, i32 noundef %.4.us.peel) #26
  br i1 %.not210, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val.us.peel = load ptr, ptr %i.t, align 8, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.us.peel, i64 96
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !96
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.us.peel, i64 112
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.us.peel, i64 32
  %i.dz = load double, ptr %i.dx, align 8, !tbaa !139
  %i.ea = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.dw, i64 1
  %i.ec = fmul <2 x double> %i.eb, <double 1.000000e+00, double 7.500000e-01>
  %i.ed = fmul <2 x double> %i.ec, <double 6.614000e-01, double 5.000000e-01> ; 3 uses
  %i.ee = load <2 x double>, ptr %i.dy, align 8
  %i.ef = fadd <2 x double> %i.ed, %i.ee          ; 3 uses
  store <2 x double> %i.ef, ptr %2, align 16, !tbaa !10
  %i.eg = extractelement <2 x double> %i.ef, i64 1
  store double %i.eg, ptr %i.dg, align 8, !tbaa !17
  %i.eh = extractelement <2 x double> %i.ef, i64 0
  %i.ei = extractelement <2 x double> %i.ed, i64 0
  %i.ej = call double @llvm.fmuladd.f64(double %i.ei, double -2.000000e+00, double %i.eh)
  store double %i.ej, ptr %i.df, align 16, !tbaa !18
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 2) #26
  %i.ek = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  %i.el = extractelement <2 x double> %i.ed, i64 1
  %i.em = call double @llvm.fmuladd.f64(double %i.el, double -2.000000e+00, double %i.ek) ; 2 uses
  store double %i.em, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !17
  store double %i.em, ptr %i.dg, align 8, !tbaa !17
  call void @gvrender_polyline(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %exitcond262.not.peel = icmp eq i64 %.0179281, 1
  br i1 %exitcond262.not.peel, label %._crit_edge223, label %.preheader219.us.preheader.peel.newph

.preheader219.us.preheader.peel.newph:            ; preds = %bb.an
  %exitcond261.not = icmp eq i64 %i.aa, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %.preheader219.us

.preheader219.us:                                 ; preds = %.preheader219.us.preheader.peel.newph, %bb.aq
  %.0178222.us = phi i64 [ %i.fj, %bb.aq ], [ 1, %.preheader219.us.preheader.peel.newph ] ; 2 uses
  br i1 %.not251, label %._crit_edge.us, label %.lr.ph.us

bb.ao:                                            ; preds = %.lr.ph.us
  %gep.us.1 = getelementptr i8, ptr %invariant.gep.us, i64 16
  %i.eo = load <2 x double>, ptr %gep.us.1, align 8, !tbaa !10
  %i.ep = load <2 x double>, ptr %i.fm, align 8, !tbaa !10
  %i.eq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.be, <2 x double> %i.ep)
  store <2 x double> %i.eq, ptr %i.en, align 8, !tbaa !10
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.preheader219.us, %bb.ao, %.lr.ph.us
  call void @gvrender_ellipse(ptr noundef %0, ptr noundef %i.am, i32 noundef 0) #26
  br i1 %.not210, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.us
  %.val.us = load ptr, ptr %i.t, align 8, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.er = getelementptr inbounds nuw i8, ptr %.val.us, i64 96
  %i.es = load double, ptr %i.er, align 8, !tbaa !96
  %i.et = getelementptr inbounds nuw i8, ptr %.val.us, i64 112
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.us, i64 32
  %i.ev = load double, ptr %i.et, align 8, !tbaa !139
  %i.ew = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.es, i64 1
  %i.ey = fmul <2 x double> %i.ex, <double 1.000000e+00, double 7.500000e-01>
  %i.ez = fmul <2 x double> %i.ey, <double 6.614000e-01, double 5.000000e-01> ; 3 uses
  %i.fa = load <2 x double>, ptr %i.eu, align 8
  %i.fb = fadd <2 x double> %i.ez, %i.fa          ; 3 uses
  store <2 x double> %i.fb, ptr %2, align 16, !tbaa !10
  %i.fc = extractelement <2 x double> %i.fb, i64 1
end_hunk_0
begin_hunk_1_@record_path:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.am = load double, ptr %i.al, align 8
  call void @flip_rec_boxf(ptr dead_on_unwind nonnull writable sret(%struct.boxf) align 8 %5, ptr noundef nonnull byval(%struct.boxf) align 8 %i.ah, double %i.ak, double %i.am) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre47 = load double, ptr %.phi.trans.insert, align 8, !tbaa !142
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %.pre49 = load double, ptr %.phi.trans.insert48, align 8, !tbaa !96
  %.pre50 = fmul double %.pre49, 5.000000e-01
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !141 ; 2 uses
  %i.aq = fadd double %.037, %i.ap
  store double %i.aq, ptr %3, align 8, !tbaa !250
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !142 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.au = load double, ptr %i.at, align 8, !tbaa !96
  %i.av = fmul double %i.au, 5.000000e-01         ; 2 uses
  %i.aw = fsub double %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.aw, ptr %i.ax, align 8, !tbaa !251
  %i.ay = fadd double %.0, %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.ay, ptr %i.az, align 8, !tbaa !252
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi double [ %i.av, %bb.f ], [ %.pre50, %bb.e ]
  %i.ba = phi double [ %i.as, %bb.f ], [ %.pre47, %bb.e ]
  %i.bb = fadd double %i.ba, %.pre-phi
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.bb, ptr %i.bc, align 8, !tbaa !253
  store i32 1, ptr %4, align 4, !tbaa !254
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !111
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.c, label %.loopexit, !llvm.loop !249

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.g, %bb.a
  %.039 = phi i32 [ 0, %bb.a ], [ %2, %bb.g ], [ %2, %bb.b ], [ %2, %bb.h ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal void @record_gencode(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.graphviz_polygon_style_t, align 4 ; 5 uses
  %3 = alloca %struct.boxf, align 16              ; 8 uses
  %4 = alloca [4 x %struct.pointf_s], align 16    ; 12 uses
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.h = load i16, ptr %i.g, align 8
  %i.i = trunc i16 %i.h to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ %i.i, %bb.b ]  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !tbaa.struct !143
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !10 ; 2 uses
  %i.r = load <2 x double>, ptr %3, align 16, !tbaa !10
  %i.s = fadd <2 x double> %i.q, %i.r
  store <2 x double> %i.s, ptr %3, align 16, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.u = load <2 x double>, ptr %i.t, align 16, !tbaa !10
  %i.v = fadd <2 x double> %i.q, %i.u
  store <2 x double> %i.v, ptr %i.t, align 16, !tbaa !10
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.x = load i32, ptr %i.w, align 8, !tbaa !135
  %i.y = and i32 %i.x, 4
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !137
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138
  tail call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.f, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ae) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 0, ptr %2, align 4
  %i.af = call fastcc ptr @checkStyle(ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @gvrender_set_style(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = load ptr, ptr @N_penwidth, align 8, !tbaa !56 ; 2 uses
  %.not10.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i, label %stylenode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call ptr @agxget(ptr noundef nonnull %1, ptr noundef nonnull %i.ag) #26 ; 2 uses
  %.not11.i = icmp eq ptr %i.ah, null
  br i1 %.not11.i, label %stylenode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !76
  %.not12.i = icmp eq i8 %i.ai, 0
  br i1 %.not12.i, label %stylenode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr @N_penwidth, align 8, !tbaa !56
  %i.ak = tail call double @late_double(ptr noundef nonnull %1, ptr noundef %i.aj, double noundef 1.000000e+00, double noundef 0.000000e+00) #26
  tail call void @gvrender_set_penwidth(ptr noundef nonnull %0, double noundef %i.ak) #26
  br label %stylenode.exit

stylenode.exit:                                   ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.al = load i32, ptr %2, align 4               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.am = load ptr, ptr @N_color, align 8, !tbaa !56
  %i.an = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.am, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !76
  %.not.i53 = icmp eq i8 %i.ao, 0
  %spec.store.select.i = select i1 %.not.i53, ptr @.str.95, ptr %i.an
  tail call void @gvrender_set_pencolor(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ap = trunc i32 %i.al to i1
  br i1 %i.ap, label %bb.l, label %bb.q

bb.l:                                             ; preds = %stylenode.exit
  %i.aq = load ptr, ptr @N_fillcolor, align 8, !tbaa !56
  %i.ar = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.aq, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !76
  %.not.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i, label %bb.m, label %findFill.exit

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr @N_color, align 8, !tbaa !56
  %i.au = tail call ptr @late_nnstring(ptr noundef nonnull %1, ptr noundef %i.at, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !76
  %.not6.i.i = icmp eq i8 %i.av, 0
  %spec.select.i.i = select i1 %.not6.i.i, ptr @.str.107, ptr %i.au
  br label %findFill.exit

findFill.exit:                                    ; preds = %bb.l, %bb.m
  %.0.i.i = phi ptr [ %i.ar, %bb.l ], [ %spec.select.i.i, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aw = call zeroext i1 @findStopColor(ptr noundef %.0.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %findFill.exit
  %i.ax = load ptr, ptr %i.a, align 16, !tbaa !84
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %i.ax) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !84 ; 2 uses
  %.not50 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr @N_gradientangle, align 8, !tbaa !56
  %i.bb = call i32 @late_int(ptr noundef nonnull %1, ptr noundef %i.ba, i32 noundef 0, i32 noundef 0) #26
  %i.bc = load double, ptr %i.b, align 8, !tbaa !10
  %.str.95. = select i1 %.not50, ptr @.str.95, ptr %i.az
  call void @gvrender_set_gradient_vals(ptr noundef nonnull %0, ptr noundef nonnull %.str.95., i32 noundef %i.bb, double noundef %i.bc) #26
  %5 = and i32 %i.al, 2
  %.not51 = icmp eq i32 %5, 0
  %. = select i1 %.not51, i32 2, i32 3
  br label %bb.p

bb.o:                                             ; preds = %findFill.exit
  call void @gvrender_set_fillcolor(ptr noundef nonnull %0, ptr noundef %.0.i.i) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0 = phi i32 [ %., %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.q

bb.q:                                             ; preds = %stylenode.exit, %bb.p
  %.1 = phi i32 [ %.0, %bb.p ], [ 0, %stylenode.exit ] ; 2 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75
  %i.bh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(8) @.str.80) #31
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = or i32 %i.al, 4
  %spec.select = select i1 %i.bi, i32 %i.bj, i32 %i.al ; 2 uses
  %i.bk = and i32 %spec.select, 520204
  %.not54 = icmp eq i32 %i.bk, 0
  br i1 %.not54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !11
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bl, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !11
  %i.bm = load double, ptr %i.bl, align 16, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.bm, ptr %i.bn, align 16, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.bp, ptr %i.bq, align 8, !tbaa !17
  %i.br = load double, ptr %4, align 16, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 48
  store double %i.br, ptr %i.bs, align 16, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 56
  store double %i.bu, ptr %i.bv, align 8, !tbaa !17
  call void @round_corners(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef 4, i32 %spec.select, i32 noundef %.1)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @gvrender_box(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.boxf) align 8 %3, i32 noundef %.1) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call fastcc void @gen_fields(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.n)
  %i.bw = load ptr, ptr %i.a, align 16, !tbaa !84
  call void @free(ptr noundef %i.bw) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !84
  call void @free(ptr noundef %i.by) #26
  br i1 %i.j, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !135
  %i.cb = and i32 %i.ca, 4
  %.not52 = icmp eq i32 %i.cb, 0
  br i1 %.not52, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !136
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !137
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !138
  call void @gvrender_begin_anchor(ptr noundef nonnull %0, ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.ci) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @gvrender_end_anchor(ptr noundef nonnull %0) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @map_rec_port(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.b, ptr noundef nonnull readonly dereferenceable(1) %1) #31
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !255

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = tail call fastcc ptr @map_rec_port(ptr noundef %i.k, ptr noundef %1) ; 2 uses
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %0, %bb.b ], [ null, %bb.c ], [ %i.l, %bb.e ], [ null, %bb.d ]
  ret ptr %.1
}

declare void @flip_rec_boxf(ptr dead_on_unwind writable sret(%struct.boxf) align 8, ptr noundef byval(%struct.boxf) align 8, double, double) local_unnamed_addr #7

declare void @gvrender_box(ptr noundef, ptr noundef byval(%struct.boxf) align 8, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @gen_fields(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.pointf_s], align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load <2 x double>, ptr %i.d, align 8
  %i.j = load <2 x double>, ptr %i.e, align 8
  %i.k = fadd <2 x double> %i.i, %i.j
  %i.l = fmul <2 x double> %i.k, splat (double 5.000000e-01)
  %i.m = load <2 x double>, ptr %i.h, align 8
  %i.n = fadd <2 x double> %i.l, %i.m
  store <2 x double> %i.n, ptr %i.c, align 8, !tbaa !10
  tail call void @emit_label(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %i.b) #26
  %i.o = load ptr, ptr @N_color, align 8, !tbaa !56
  %i.p = tail call ptr @late_nnstring(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @.str.99) #26 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !76
  %.not.i = icmp eq i8 %i.q, 0
  %spec.store.select.i = select i1 %.not.i, ptr @.str.95, ptr %i.p
  tail call void @gvrender_set_pencolor(ptr noundef %0, ptr noundef nonnull %spec.store.select.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !111
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !104
  %.pre47 = load ptr, ptr %.pre, align 8, !tbaa !108
  tail call fastcc void @gen_fields(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.pre47)
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !111
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.d, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 1, %bb.d ] ; 3 uses
  %i.ad = load i8, ptr %i.y, align 8, !tbaa !105
  %.not37 = icmp eq i8 %i.ad, 0
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.next
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
end_hunk_1
