Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_atrous?download=true
inline.NumInlined: 67
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 53
begin_hunk_0_@area_button_release:bb.a
  %i.n = load float, ptr %i.m, align 4, !tbaa !93
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.l, float noundef %i.n) #18
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = atomicrmw add ptr %i.p, i32 -1 seq_cst, align 4 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144
  tail call void @gtk_widget_queue_draw(ptr noundef %i.s) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @area_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !61  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139  ; 6 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !162
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 5.000000e+00
  %i.i = fptosi double %i.h to i32                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #18
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !165
  %i.l = shl nsw i32 %i.i, 1                      ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to double
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1432
  %i.q = load double, ptr %i.p, align 8, !tbaa !162
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, 5.000000e+00
  %i.s = fsub reassoc nsz arcp contract afn double %i.n, %i.r
  %i.t = fptosi double %i.s to i32                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !164
  %i.w = sub nsw i32 %i.v, %i.l                   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  %i.y = load i32, ptr %i.x, align 4, !tbaa !153
  %.not = icmp eq i32 %i.y, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !313
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.i to double ; 2 uses
  %i.ac = fsub reassoc nsz arcp contract afn double %i.aa, %i.ab ; 3 uses
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.w to double ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt double %i.ac, %i.ad
  %i.af = fcmp reassoc nsz arcp contract afn olt double %i.ac, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.af, double 0.000000e+00, double %i.ac
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ae, double %i.ad, double %spec.select
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.aj = fdiv reassoc nsz arcp contract afn double %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.aj, ptr %i.ak, align 8, !tbaa !167
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi double [ %.pre, %._crit_edge ], [ %i.ab, %bb.b ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !314 ; 2 uses
  %i.an = fsub reassoc nsz arcp contract afn double %i.am, %.pre-phi ; 3 uses
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.t to double ; 3 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.an, %i.ao
  %i.aq = fcmp reassoc nsz arcp contract afn olt double %i.an, 0.000000e+00
  %spec.select126 = select reassoc nsz arcp contract afn i1 %i.aq, double 0.000000e+00, double %i.an
  %i.ar = select reassoc nsz arcp contract afn i1 %i.ap, double %i.ao, double %spec.select126
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.t to float
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = fdiv reassoc nsz arcp contract afn double %i.ar, %i.at
  %i.av = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.au ; 13 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store double %i.av, ptr %i.aw, align 8, !tbaa !166
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !315
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 580 ; 2 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !324
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !145 ; 12 uses
  %i.bb = icmp eq i32 %i.ba, 0
  %spec.store.select = select i1 %i.bb, i32 3, i32 %i.ba
  %i.bc = icmp eq i32 %i.ba, 1
  %spec.store.select1 = select i1 %i.bc, i32 4, i32 %spec.store.select ; 8 uses
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %i.d, ptr noundef nonnull align 4 dereferenceable(248) %i.bd, i64 248, i1 false), !tbaa.struct !141
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !154 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bh = add nsw i32 %i.bf, -1
  %or.cond = icmp ult i32 %i.bh, 4
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !313
  %i.bk = fsub reassoc nsz arcp contract afn double %i.bj, %.pre-phi ; 3 uses
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %i.w to double ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt double %i.bk, %i.bl
  %i.bn = fcmp reassoc nsz arcp contract afn olt double %i.bk, 0.000000e+00
  %spec.select127 = select reassoc nsz arcp contract afn i1 %i.bn, double 0.000000e+00, double %i.bk
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bm, double %i.bl, double %spec.select127
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.bq = fpext reassoc nsz arcp contract afn float %i.bp to double
  %i.br = fdiv reassoc nsz arcp contract afn double %i.bo, %i.bq
  %i.bs = fptrunc reassoc nsz arcp contract afn double %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.az, align 8, !tbaa !145
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.bw, i64 %i.bx ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !65
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, 1.000000e-03
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !65
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, -1.000000e-03
  %i.cf = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cb, float %i.bs)
  %i.cg = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ce, float %i.cf) ; 2 uses
  store float %i.cg, ptr %i.by, align 4, !tbaa !65
  %i.ch = sext i32 %spec.store.select1 to i64
  %i.ci = getelementptr inbounds [24 x i8], ptr %i.bt, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bx
  store float %i.cg, ptr %i.cj, align 4, !tbaa !65
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 324
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !149
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !167
  %i.co = load double, ptr %i.aw, align 8, !tbaa !166
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !151
  %i.cr = fadd reassoc nsz arcp contract afn double %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !146
  call fastcc void @get_params(ptr noundef nonnull %i.d, i32 noundef %i.cl, double noundef %i.cn, double noundef %i.cr, float noundef %i.ct)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  call void @gtk_widget_queue_draw(ptr noundef %0) #18
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !147
  %i.cv = load i32, ptr %i.az, align 8, !tbaa !145
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cw
  call void @dt_dev_add_history_item_target(ptr noundef %i.cu, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.cx) #18
  br label %bb.aa

bb.i:                                             ; preds = %bb.c
  %i.cy = fcmp reassoc nsz arcp contract afn ogt double %i.am, %i.ao
  br i1 %i.cy, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.da = zext i32 %i.ba to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.da ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !167 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.df = sext i32 %i.ba to i64
  %i.dg = getelementptr inbounds [24 x i8], ptr %i.de, i64 %i.df ; 6 uses
  %i.dh = sext i32 %spec.store.select1 to i64
  %i.di = getelementptr inbounds [24 x i8], ptr %i.de, i64 %i.dh ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 324 ; 6 uses
  %i.dk = load float, ptr %i.db, align 4, !tbaa !65
  %i.dl = fpext reassoc nsz arcp contract afn float %i.dk to double
  %i.dm = fsub reassoc nsz arcp contract afn double %i.dl, %i.dd
  %i.dn = fptrunc double %i.dm to float
  %i.do = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dn) ; 2 uses
  %i.dp = fcmp reassoc nsz arcp contract afn olt float %i.do, 1.000000e+06
  br i1 %i.dp, label %.sink.split, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 6 uses
  store i32 0, ptr %i.dq, align 8, !tbaa !154
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ds = zext i32 %i.ba to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.ds ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dv = load double, ptr %i.du, align 8, !tbaa !167 ; 5 uses
  %i.dw = load <2 x float>, ptr %i.dt, align 4, !tbaa !65
  %i.dx = fpext reassoc nsz arcp contract afn <2 x float> %i.dw to <2 x double>
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fsub reassoc nsz arcp contract afn <2 x double> %i.dx, %i.dz
  %i.eb = fptrunc <2 x double> %i.ea to <2 x float>
  %i.ec = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.ee = extractelement <2 x float> %i.ec, i64 1 ; 2 uses
  %i.ef = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.ed
  br i1 %i.ef, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.dq, align 8, !tbaa !154
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.eg = phi i32 [ 1, %bb.k ], [ 0, %bb.j ]
  %.1115 = phi nsz float [ %i.ee, %bb.k ], [ %i.ed, %bb.j ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !65
  %i.ej = fpext reassoc nsz arcp contract afn float %i.ei to double
  %i.ek = fsub reassoc nsz arcp contract afn double %i.ej, %i.dv
  %i.el = fptrunc double %i.ek to float
  %i.em = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.el) ; 2 uses
  %i.en = fcmp reassoc nsz arcp contract afn olt float %i.em, %.1115
  br i1 %i.en, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.dq, align 8, !tbaa !154
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.eo = phi i32 [ 2, %bb.m ], [ %i.eg, %bb.l ]
  %.1115.1 = phi nsz float [ %i.em, %bb.m ], [ %.1115, %bb.l ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !65
  %i.er = fpext reassoc nsz arcp contract afn float %i.eq to double
  %i.es = fsub reassoc nsz arcp contract afn double %i.er, %i.dv
  %i.et = fptrunc double %i.es to float
  %i.eu = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.et) ; 2 uses
  %i.ev = fcmp reassoc nsz arcp contract afn olt float %i.eu, %.1115.1
  br i1 %i.ev, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.dq, align 8, !tbaa !154
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ew = phi i32 [ 3, %bb.o ], [ %i.eo, %bb.n ]
  %.1115.2 = phi nsz float [ %i.eu, %bb.o ], [ %.1115.1, %bb.n ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !65
  %i.ez = fpext reassoc nsz arcp contract afn float %i.ey to double
  %i.fa = fsub reassoc nsz arcp contract afn double %i.ez, %i.dv
  %i.fb = fptrunc double %i.fa to float
  %i.fc = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fb) ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt float %i.fc, %.1115.2
  br i1 %i.fd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.dq, align 8, !tbaa !154
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fe = phi i32 [ 4, %bb.q ], [ %i.ew, %bb.p ]
  %.1115.3 = phi nsz float [ %i.fc, %bb.q ], [ %.1115.2, %bb.p ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !65
  %i.fh = fpext reassoc nsz arcp contract afn float %i.fg to double
  %i.fi = fsub reassoc nsz arcp contract afn double %i.fh, %i.dv
  %i.fj = fptrunc double %i.fi to float
  %i.fk = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fj)
  %i.fl = fcmp reassoc nsz arcp contract afn olt float %i.fk, %.1115.3
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 5, ptr %i.dq, align 8, !tbaa !154
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fm = phi i32 [ 5, %bb.s ], [ %i.fe, %bb.r ]
  %i.fn = add nuw nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.ay, align 4, !tbaa !324
  call void @gtk_widget_queue_draw(ptr noundef %0) #18
  br label %bb.aa

.sink.split:                                      ; preds = %.preheader
  %i.fo = load float, ptr %i.dg, align 4, !tbaa !65
  %i.fp = fpext reassoc nsz arcp contract afn float %i.fo to double
  %i.fq = fsub reassoc nsz arcp contract afn double %i.av, %i.fp
  %i.fr = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fq)
  %i.fs = load float, ptr %i.di, align 4, !tbaa !65
  %i.ft = fpext reassoc nsz arcp contract afn float %i.fs to double
  %i.fu = fsub reassoc nsz arcp contract afn double %i.av, %i.ft
  %i.fv = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fu)
  %i.fw = fcmp reassoc nsz arcp contract afn olt double %i.fr, %i.fv
  %.spec.store.select1 = select i1 %i.fw, i32 %i.ba, i32 %spec.store.select1
  store i32 %.spec.store.select1, ptr %i.dj, align 4, !tbaa !149
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %.preheader
  %.1 = phi nsz float [ 1.000000e+06, %.preheader ], [ %i.do, %.sink.split ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !65
  %i.fz = fpext reassoc nsz arcp contract afn float %i.fy to double
  %i.ga = fsub reassoc nsz arcp contract afn double %i.fz, %i.dd
  %i.gb = fptrunc double %i.ga to float
  %i.gc = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gb) ; 2 uses
  %i.gd = fcmp reassoc nsz arcp contract afn olt float %i.gc, %.1
  br i1 %i.gd, label %.sink.split144, label %bb.v

.sink.split144:                                   ; preds = %bb.u
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !65
  %i.gg = fpext reassoc nsz arcp contract afn float %i.gf to double
  %i.gh = fsub reassoc nsz arcp contract afn double %i.av, %i.gg
  %i.gi = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !65
  %i.gl = fpext reassoc nsz arcp contract afn float %i.gk to double
  %i.gm = fsub reassoc nsz arcp contract afn double %i.av, %i.gl
  %i.gn = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gm)
  %i.go = fcmp reassoc nsz arcp contract afn olt double %i.gi, %i.gn
  %.spec.store.select1154 = select i1 %i.go, i32 %i.ba, i32 %spec.store.select1
  store i32 %.spec.store.select1154, ptr %i.dj, align 4, !tbaa !149
  br label %bb.v

bb.v:                                             ; preds = %.sink.split144, %bb.u
  %.1.1 = phi nsz float [ %.1, %bb.u ], [ %i.gc, %.sink.split144 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !65
  %i.gr = fpext reassoc nsz arcp contract afn float %i.gq to double
  %i.gs = fsub reassoc nsz arcp contract afn double %i.gr, %i.dd
  %i.gt = fptrunc double %i.gs to float
  %i.gu = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gt) ; 2 uses
  %i.gv = fcmp reassoc nsz arcp contract afn olt float %i.gu, %.1.1
  br i1 %i.gv, label %.sink.split146, label %bb.w

.sink.split146:                                   ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !65
  %i.gy = fpext reassoc nsz arcp contract afn float %i.gx to double
  %i.gz = fsub reassoc nsz arcp contract afn double %i.av, %i.gy
  %i.ha = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gz)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !65
  %i.hd = fpext reassoc nsz arcp contract afn float %i.hc to double
  %i.he = fsub reassoc nsz arcp contract afn double %i.av, %i.hd
  %i.hf = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.he)
  %i.hg = fcmp reassoc nsz arcp contract afn olt double %i.ha, %i.hf
  %.spec.store.select1155 = select i1 %i.hg, i32 %i.ba, i32 %spec.store.select1
  store i32 %.spec.store.select1155, ptr %i.dj, align 4, !tbaa !149
  br label %bb.w

bb.w:                                             ; preds = %.sink.split146, %bb.v
  %.1.2 = phi nsz float [ %.1.1, %bb.v ], [ %i.gu, %.sink.split146 ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !65
  %i.hj = fpext reassoc nsz arcp contract afn float %i.hi to double
  %i.hk = fsub reassoc nsz arcp contract afn double %i.hj, %i.dd
  %i.hl = fptrunc double %i.hk to float
  %i.hm = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hl) ; 2 uses
  %i.hn = fcmp reassoc nsz arcp contract afn olt float %i.hm, %.1.2
  br i1 %i.hn, label %.sink.split148, label %bb.x

.sink.split148:                                   ; preds = %bb.w
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !65
  %i.hq = fpext reassoc nsz arcp contract afn float %i.hp to double
  %i.hr = fsub reassoc nsz arcp contract afn double %i.av, %i.hq
  %i.hs = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.hr)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !65
  %i.hv = fpext reassoc nsz arcp contract afn float %i.hu to double
  %i.hw = fsub reassoc nsz arcp contract afn double %i.av, %i.hv
  %i.hx = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.hw)
  %i.hy = fcmp reassoc nsz arcp contract afn olt double %i.hs, %i.hx
  %.spec.store.select1156 = select i1 %i.hy, i32 %i.ba, i32 %spec.store.select1
  store i32 %.spec.store.select1156, ptr %i.dj, align 4, !tbaa !149
  br label %bb.x

bb.x:                                             ; preds = %.sink.split148, %bb.w
  %.1.3 = phi nsz float [ %.1.2, %bb.w ], [ %i.hm, %.sink.split148 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !65
  %i.ib = fpext reassoc nsz arcp contract afn float %i.ia to double
  %i.ic = fsub reassoc nsz arcp contract afn double %i.ib, %i.dd
  %i.id = fptrunc double %i.ic to float
  %i.ie = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.id) ; 2 uses
  %i.if = fcmp reassoc nsz arcp contract afn olt float %i.ie, %.1.3
  br i1 %i.if, label %.sink.split150, label %bb.y

.sink.split150:                                   ; preds = %bb.x
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !65
  %i.ii = fpext reassoc nsz arcp contract afn float %i.ih to double
  %i.ij = fsub reassoc nsz arcp contract afn double %i.av, %i.ii
  %i.ik = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ij)
  %i.il = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.im = load float, ptr %i.il, align 4, !tbaa !65
  %i.in = fpext reassoc nsz arcp contract afn float %i.im to double
end_hunk_0
begin_hunk_1_@introspection_init:bb.a
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !333
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !140
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !140
  store ptr @introspection_init.f8, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 776), align 8, !tbaa !140
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.64) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.65) #20
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.66) #20
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.e, label %sub_0

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

sub_0:                                            ; preds = %bb.d
  %i.f = load i8, ptr %1, align 1                 ; 2 uses
  %.not29 = icmp eq i8 %i.f, 120
  br i1 %.not29, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %.tail.thread

bb.f:                                             ; preds = %.tail
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.k

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.68) #20
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.tail.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %bb.k

bb.h:                                             ; preds = %.tail.thread
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.69) #20
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %bb.i, label %sub_026

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %bb.k

sub_026:                                          ; preds = %bb.h
  %.not30 = icmp eq i8 %i.f, 121
  br i1 %.not30, label %.tail25, label %.tail25.thread

.tail25:                                          ; preds = %sub_026
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.j, label %.tail25.thread

bb.j:                                             ; preds = %.tail25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124
  br label %bb.k

.tail25.thread:                                   ; preds = %sub_026, %.tail25
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.58) #20
  %.not24 = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244
  %spec.select = select i1 %.not24, ptr %i.t, ptr null
  br label %bb.k

bb.k:                                             ; preds = %.tail25.thread, %bb.a, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %.tail25.thread ], [ %i.r, %bb.j ], [ %i.n, %bb.i ], [ %i.l, %bb.g ], [ %i.j, %bb.f ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.64) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.65) #18
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.66) #18
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.67) #18
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.68) #18
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.69) #18
  %.not13 = icmp eq i32 %i.f, 0
  br i1 %.not13, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.70) #18
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.58) #18
  %.not15 = icmp eq i32 %i.h, 0
  %. = select i1 %.not15, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ %., %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @eaw_decompose_and_synthesize(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #12

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @get_params(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, float noundef %4) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [24 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %4, %4
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.g = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.b ; 3 uses
  %i.h = load <4 x float>, ptr %i.c, align 4, !tbaa !65
  %i.i = fpext reassoc nsz arcp contract afn <4 x float> %i.h to <4 x double>
  %i.j = insertelement <4 x double> poison, double %2, i64 0
  %i.k = shufflevector <4 x double> %i.j, <4 x double> poison, <4 x i32> zeroinitializer
  %i.l = fsub reassoc nsz arcp contract afn <4 x double> %i.k, %i.i ; 2 uses
  %i.m = fneg reassoc nsz arcp contract afn <4 x double> %i.l
  %i.n = fmul reassoc nsz arcp contract afn <4 x double> %i.l, %i.m
  %i.o = insertelement <4 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <4 x double> %i.n, %i.p
  %i.r = fptrunc reassoc nsz arcp contract afn <4 x double> %i.q to <4 x float>
  %i.s = tail call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.r) ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.s
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !65
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.u
  %i.w = fpext reassoc nsz arcp contract afn <4 x float> %i.v to <4 x double>
  %i.x = fpext reassoc nsz arcp contract afn <4 x float> %i.s to <4 x double>
  %i.y = insertelement <4 x double> poison, double %3, i64 0
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aa = fmul reassoc nsz arcp contract afn <4 x double> %i.z, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %i.aa, %i.w ; 3 uses
  %i.ac = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.ab, zeroinitializer
  %i.ad = fcmp reassoc nsz arcp contract afn oge <4 x double> %i.ab, splat (double 1.000000e+00)
  %i.ae = select <4 x i1> %i.ad, <4 x double> splat (double 1.000000e+00), <4 x double> %i.ab
  %i.af = fptrunc <4 x double> %i.ae to <4 x float>
  %i.ag = select <4 x i1> %i.ac, <4 x float> zeroinitializer, <4 x float> %i.af
  store <4 x float> %i.ag, ptr %i.g, align 4, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.aj = load <2 x float>, ptr %i.ah, align 4, !tbaa !65
  %i.ak = fpext reassoc nsz arcp contract afn <2 x float> %i.aj to <2 x double>
  %i.al = insertelement <2 x double> poison, double %2, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fsub reassoc nsz arcp contract afn <2 x double> %i.am, %i.ak ; 2 uses
  %i.ao = fneg reassoc nsz arcp contract afn <2 x double> %i.an
  %i.ap = fmul reassoc nsz arcp contract afn <2 x double> %i.an, %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv reassoc nsz arcp contract afn <2 x double> %i.ap, %i.ar
  %i.at = fptrunc reassoc nsz arcp contract afn <2 x double> %i.as to <2 x float>
  %i.au = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.at) ; 2 uses
  %i.av = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.au
  %i.aw = load <2 x float>, ptr %i.ai, align 4, !tbaa !65
  %i.ax = fmul reassoc nsz arcp contract afn <2 x float> %i.av, %i.aw
  %i.ay = fpext reassoc nsz arcp contract afn <2 x float> %i.ax to <2 x double>
  %i.az = fpext reassoc nsz arcp contract afn <2 x float> %i.au to <2 x double>
  %i.ba = insertelement <2 x double> poison, double %3, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul reassoc nsz arcp contract afn <2 x double> %i.bb, %i.az
  %i.bd = fadd reassoc nsz arcp contract afn <2 x double> %i.bc, %i.ay ; 3 uses
  %i.be = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.bd, zeroinitializer
  %i.bf = fcmp reassoc nsz arcp contract afn oge <2 x double> %i.bd, splat (double 1.000000e+00)
  %i.bg = select <2 x i1> %i.bf, <2 x double> splat (double 1.000000e+00), <2 x double> %i.bd
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float>
  %i.bi = select <2 x i1> %i.be, <2 x float> zeroinitializer, <2 x float> %i.bh
  store <2 x float> %i.bi, ptr %i.ai, align 4, !tbaa !65
  ret void
}

declare void @dt_dev_add_history_item_target(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_action_widget_toast(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #3

declare i32 @gtk_style_context_lookup_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gdk_cairo_set_source_rgba(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_save(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_restore(ptr noundef) local_unnamed_addr #3

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rel_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_set_font_size(ptr noundef, double noundef) local_unnamed_addr #3

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #3

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @CurveDataSample(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #3

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f64.p0(<4 x double>, ptr captures(none), <4 x i1>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"p1 _ZTS15dt_iop_module_t", !12, i64 0}
!16 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !12, i64 0}
!17 = !{!"p1 _ZTS18dt_histogram_roi_t", !12, i64 0}
!18 = !{!"dt_dev_histogram_collection_params_t", !17, i64 0, !8, i64 8}
!19 = !{!"p1 int", !12, i64 0}
end_hunk_1
