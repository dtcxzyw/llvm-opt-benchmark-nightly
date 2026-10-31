Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/lightroom?download=true
inline.NumInlined: 86
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dt_lightroom_import:bb.a
  %i.ae = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.9) #13
  %.not268 = icmp eq ptr %i.ae, null
  br i1 %.not268, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  tail call void @xmlXPathFreeContext(ptr noundef nonnull %i.n) #12
  tail call void @xmlXPathFreeObject(ptr noundef nonnull %i.q) #12
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.f) #12
  %i.af = load ptr, ptr @xmlFree, align 8, !tbaa !32
  tail call void %i.af(ptr noundef nonnull %i.ac) #12
  %.not269 = icmp eq i32 %2, 0
  br i1 %.not269, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ag = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #12
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ag, ptr noundef nonnull %i.d) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.v
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  br label %bb.cr

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.ah = load ptr, ptr @xmlFree, align 8, !tbaa !32
  tail call void %i.ah(ptr noundef nonnull %i.ac) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s, %bb.r
  %i.ai = phi i1 [ true, %bb.x ], [ false, %bb.s ], [ false, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 816
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 1360
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1524
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 1724
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1752
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 1768
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 1772
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 1776
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 1780
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 1784 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1784) %3, i8 0, i64 1784, i1 false)
  store <4 x double> splat (double +qnan), ptr %i.ax, align 8, !tbaa !148
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 1816 ; 2 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1820 ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 1824 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 1828 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1832
  store <2 x float> splat (float +qnan), ptr %i.bb, align 4, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1836 ; 3 uses
  store i32 0, ptr %i.bd, align 4, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1840 ; 3 uses
  store i32 0, ptr %i.be, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1844 ; 4 uses
  store i32 1, ptr %i.bf, align 4, !tbaa !52
  %i.bg = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #12 ; 0 uses
  %i.bh = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #12 ; 0 uses
  %i.bi = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #12 ; 0 uses
  %i.bj = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #12 ; 0 uses
  %i.bk = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12 ; 0 uses
  %i.bl = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #12 ; 0 uses
  %i.bm = tail call i32 @xmlXPathRegisterNs(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.10) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.12) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.12) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.14) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.14) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 50, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #12 ; 0 uses
  call fastcc void @_handle_xpath(ptr noundef %1, ptr noundef %i.f, i32 noundef %0, ptr noundef %i.n, ptr noundef %i.c, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @xmlXPathFreeObject(ptr noundef nonnull %i.q) #12
  call void @xmlXPathFreeContext(ptr noundef nonnull %i.n) #12
  call void @xmlFreeDoc(ptr noundef nonnull %i.f) #12
  %i.bz = icmp ne ptr %1, null                    ; 12 uses
  %or.cond = and i1 %i.bz, %i.ai
  br i1 %or.cond, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cb = call i32 @dt_image_is_raw(ptr noundef nonnull %i.ca) #12
  %.not271 = icmp eq i32 %i.cb, 0
  br i1 %.not271, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %4, ptr noundef nonnull align 4 dereferenceable(104) @__const.dt_lightroom_import.pci, i64 104, i1 false)
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.25, ptr noundef %4, i32 noundef 104, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.0241 = phi i32 [ 1, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ]
  %i.cc = load i32, ptr %i.aj, align 4
  %i.cd = icmp ne i32 %i.cc, 0
  %or.cond4 = select i1 %i.bz, i1 %i.cd, i1 false
  br i1 %or.cond4, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !52 ; 4 uses
  switch i32 %i.ce, label %bb.ai [
    i32 8, label %bb.ah
    i32 2, label %dt_image_orientation_to_flip_bits.exit
    i32 3, label %dt_image_orientation_to_flip_bits.exit
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 6, label %bb.af
    i32 7, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %dt_image_orientation_to_flip_bits.exit

bb.ae:                                            ; preds = %bb.ac
  br label %dt_image_orientation_to_flip_bits.exit

bb.af:                                            ; preds = %bb.ac
  br label %dt_image_orientation_to_flip_bits.exit

bb.ag:                                            ; preds = %bb.ac
  br label %dt_image_orientation_to_flip_bits.exit

bb.ah:                                            ; preds = %bb.ac
  br label %dt_image_orientation_to_flip_bits.exit

bb.ai:                                            ; preds = %bb.ac
  br label %dt_image_orientation_to_flip_bits.exit

dt_image_orientation_to_flip_bits.exit:           ; preds = %bb.ac, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.not274 = phi i1 [ true, %bb.ai ], [ false, %bb.ah ], [ false, %bb.ag ], [ true, %bb.ac ], [ true, %bb.ad ], [ false, %bb.ae ], [ false, %bb.af ], [ true, %bb.ac ]
  %.0.i = phi i32 [ 0, %bb.ai ], [ 6, %bb.ah ], [ %i.ce, %bb.ag ], [ %i.ce, %bb.ac ], [ 1, %bb.ad ], [ 4, %bb.ae ], [ 5, %bb.af ], [ %i.ce, %bb.ac ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 -2, ptr %i.cf, align 8, !tbaa !149
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i32 -2, ptr %i.cg, align 4, !tbaa !150
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 60
  store <4 x i32> zeroinitializer, ptr %i.ch, align 4, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 36
  store <2 x float> <float 2.000000e-01, float 8.000000e-01>, ptr %i.ci, align 4, !tbaa !49
  store <4 x float> <float 8.000000e-01, float 2.000000e-01, float 8.000000e-01, float 8.000000e-01>, ptr %i.cj, align 4, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.co = load float, ptr %3, align 8, !tbaa !53  ; 2 uses
  %i.cp = fpext reassoc nsz arcp contract afn float %i.co to double
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, f0x3F91DF46A2529D39 ; 2 uses
  %i.cr = fneg reassoc nsz arcp contract afn double %i.cq
  %sincos.i.i = call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %i.cr) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.cs = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cq)
  %i.ct = fneg reassoc nsz arcp contract afn double %i.cs
  %sincos.i = call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %i.ct) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ck, align 4
  %i.cv = load i32, ptr %i.bd, align 4, !tbaa !50 ; 2 uses
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.cv to float
  %i.cx = load float, ptr %i.cl, align 4, !tbaa !54
  %i.cy = insertelement <2 x float> %i.cu, float %i.cx, i64 1
  %i.cz = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, splat (float -5.000000e-01)
  %i.da = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, %i.db
  %i.dd = fpext reassoc nsz arcp contract afn <2 x float> %i.dc to <2 x double> ; 2 uses
  %i.de = load <2 x float>, ptr %i.cm, align 8
  %i.df = load i32, ptr %i.be, align 8, !tbaa !51 ; 3 uses
  %i.dg = sitofp reassoc nsz arcp contract afn i32 %i.df to float
  %i.dh = load float, ptr %i.cn, align 8, !tbaa !55
  %i.di = insertelement <2 x float> %i.de, float %i.dh, i64 1
  %i.dj = fadd reassoc nsz arcp contract afn <2 x float> %i.di, splat (float -5.000000e-01)
  %i.dk = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dl
  %i.dn = fpext reassoc nsz arcp contract afn <2 x float> %i.dm to <2 x double> ; 2 uses
  %i.do = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn <2 x double> %i.dp, %i.dd
  %i.dr = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn <2 x double> %i.ds, %i.dn
  %i.du = fadd reassoc nsz arcp contract afn <2 x double> %i.dt, %i.dq
  %i.dv = fmul reassoc nsz arcp contract afn <2 x double> %i.dp, %i.dn
  %i.dw = fmul reassoc nsz arcp contract afn <2 x double> %i.ds, %i.dd
  %i.dx = fsub reassoc nsz arcp contract afn <2 x double> %i.dv, %i.dw
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %i.cv to double ; 2 uses
  %i.dz = sub nsw i32 0, %i.df
  %i.ea = sitofp reassoc nsz arcp contract afn i32 %i.dz to double
  %i.eb = fmul reassoc nsz arcp contract afn double %cos.i, %i.dy
  %i.ec = fmul reassoc nsz arcp contract afn double %sin.i, %i.ea
  %i.ed = fadd reassoc nsz arcp contract afn double %i.eb, %i.ec
  %i.ee = sitofp reassoc nsz arcp contract afn i32 %i.df to double
  %i.ef = fmul reassoc nsz arcp contract afn double %cos.i, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn double %sin.i, %i.dy
  %i.eh = fsub reassoc nsz arcp contract afn double %i.ef, %i.eg
  %i.ei = fmul reassoc nsz arcp contract afn <2 x double> %i.du, splat (double 1.000000e+05)
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fdiv reassoc nsz arcp contract afn <2 x double> %i.ei, %i.ek
  %i.em = fadd reassoc nsz arcp contract afn <2 x double> %i.el, splat (double 5.000000e+04)
  %i.en = call reassoc nsz arcp contract afn <2 x double> @llvm.round.v2f64(<2 x double> %i.em)
  %i.eo = fmul reassoc nsz arcp contract afn <2 x double> %i.en, splat (double 1.000000e-05)
  %i.ep = fptrunc reassoc nsz arcp contract afn <2 x double> %i.eo to <2 x float> ; 5 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 1
  %i.er = extractelement <2 x float> %i.ep, i64 0
  %i.es = fmul reassoc nsz arcp contract afn <2 x double> %i.dx, splat (double 1.000000e+05)
  %i.et = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fdiv reassoc nsz arcp contract afn <2 x double> %i.es, %i.eu
  %i.ew = fadd reassoc nsz arcp contract afn <2 x double> %i.ev, splat (double 5.000000e+04)
  %i.ex = call reassoc nsz arcp contract afn <2 x double> @llvm.round.v2f64(<2 x double> %i.ew)
  %i.ey = fmul reassoc nsz arcp contract afn <2 x double> %i.ex, splat (double 1.000000e-05)
  %i.ez = fptrunc reassoc nsz arcp contract afn <2 x double> %i.ey to <2 x float> ; 5 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 1
  %i.fb = extractelement <2 x float> %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.ep, <2 x float> %i.ez, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x float> %i.fc, <8 x float> <float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 2.000000e-01, float 2.000000e-01>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.fd, ptr %i.ck, align 4, !tbaa !49
  %i.fe = and i32 %.0.i, 2
  %.not272 = icmp eq i32 %i.fe, 0
  %i.ff = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %.not272, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %dt_image_orientation_to_flip_bits.exit
  %i.fg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ep ; 3 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 1 ; 2 uses
  %i.fi = extractelement <2 x float> %i.fg, i64 0 ; 2 uses
  store float %i.fh, ptr %i.ck, align 4, !tbaa !49
  store float %i.fi, ptr %i.cl, align 4, !tbaa !49
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %dt_image_orientation_to_flip_bits.exit
  %i.fj = phi float [ %i.fi, %bb.aj ], [ %i.eq, %dt_image_orientation_to_flip_bits.exit ] ; 2 uses
  %i.fk = phi float [ %i.fh, %bb.aj ], [ %i.er, %dt_image_orientation_to_flip_bits.exit ] ; 2 uses
  %i.fl = phi <2 x float> [ %i.fg, %bb.aj ], [ %i.ff, %dt_image_orientation_to_flip_bits.exit ]
  %i.fm = and i32 %.0.i, 1
  %.not273 = icmp eq i32 %i.fm, 0
  %i.fn = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %.not273, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fo = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ez ; 3 uses
  %i.fp = extractelement <2 x float> %i.fo, i64 1 ; 2 uses
  %i.fq = extractelement <2 x float> %i.fo, i64 0 ; 2 uses
  store float %i.fp, ptr %i.cm, align 8, !tbaa !49
  store float %i.fq, ptr %i.cn, align 8, !tbaa !49
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fr = phi float [ %i.fq, %bb.al ], [ %i.fa, %bb.ak ] ; 2 uses
  %i.fs = phi float [ %i.fp, %bb.al ], [ %i.fb, %bb.ak ] ; 2 uses
  %i.ft = phi <2 x float> [ %i.fo, %bb.al ], [ %i.fn, %bb.ak ]
  br i1 %.not274, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store float %i.fs, ptr %i.ck, align 4, !tbaa !49
  store float %i.fk, ptr %i.cm, align 8, !tbaa !49
  store float %i.fr, ptr %i.cl, align 4, !tbaa !49
  store float %i.fj, ptr %i.cn, align 8, !tbaa !49
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fu = phi float [ %i.fk, %bb.an ], [ %i.fs, %bb.am ]
  %i.fv = phi float [ %i.fj, %bb.an ], [ %i.fr, %bb.am ]
  %i.fw = phi <2 x float> [ %i.ft, %bb.an ], [ %i.fl, %bb.am ] ; 2 uses
  switch i32 %.0.i, label %bb.aq [
    i32 7, label %bb.ap
    i32 4, label %bb.ap
    i32 2, label %bb.ap
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.fx = fneg reassoc nsz arcp contract afn float %i.co
  store float %i.fx, ptr %3, align 8, !tbaa !53
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %shift = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fw, %shift
  %i.fy = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fz = fsub reassoc nsz arcp contract afn float %i.fv, %i.fu
  %i.ga = fdiv reassoc nsz arcp contract afn float %i.fy, %i.fz
  store float %i.ga, ptr %i.bb, align 4, !tbaa !151
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.26, ptr noundef %3, i32 noundef 84, ptr noundef %i.a, i32 noundef 5, ptr noundef %i.b)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ab
  %.1242 = phi i32 [ 1, %bb.aq ], [ %.0241, %bb.ab ]
  %i.gb = load i32, ptr %i.ak, align 4
  %i.gc = icmp ne i32 %i.gb, 0
  %or.cond13 = select i1 %i.bz, i1 %i.gc, i1 false
  br i1 %or.cond13, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gd = load i32, ptr %i.bf, align 4, !tbaa !52
  %switch.tableidx = add i32 %i.gd, -2            ; 2 uses
  %i.ge = icmp ult i32 %switch.tableidx, 7
  br i1 %i.ge, label %switch.lookup, label %dt_image_orientation_to_flip_bits.exit295

switch.lookup:                                    ; preds = %bb.as
  %i.gf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_lightroom_import, i64 %i.gf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %dt_image_orientation_to_flip_bits.exit295

dt_image_orientation_to_flip_bits.exit295:        ; preds = %bb.as, %switch.lookup
  %.0.i294 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.as ]
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  store i32 %.0.i294, ptr %i.gg, align 8, !tbaa !152
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.27, ptr noundef %i.gg, i32 noundef 4, ptr noundef %i.a, i32 noundef 2, ptr noundef %i.b)
  br label %bb.at

bb.at:                                            ; preds = %dt_image_orientation_to_flip_bits.exit295, %bb.ar
  %.2243 = phi i32 [ 1, %dt_image_orientation_to_flip_bits.exit295 ], [ %.1242, %bb.ar ]
  %i.gh = load i32, ptr %i.al, align 4
  %i.gi = icmp ne i32 %i.gh, 0
  %or.cond16 = select i1 %i.bz, i1 %i.gi, i1 false
  br i1 %or.cond16, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 96
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.28, ptr noundef %i.gj, i32 noundef 12, ptr noundef %i.a, i32 noundef 2, ptr noundef %i.b)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.3244 = phi i32 [ 1, %bb.au ], [ %.2243, %bb.at ]
  %i.gk = load i32, ptr %i.an, align 8
  %i.gl = icmp ne i32 %i.gk, 0
  %or.cond19 = select i1 %i.bz, i1 %i.gl, i1 false
  br i1 %or.cond19, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 2 uses
  store i32 0, ptr %i.gm, align 4, !tbaa !153
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.29, ptr noundef %i.gm, i32 noundef 12, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.4245 = phi i32 [ 1, %bb.aw ], [ %.3244, %bb.av ]
  %i.gn = load i32, ptr %i.am, align 8
  %i.go = icmp ne i32 %i.gn, 0
  %or.cond22 = select i1 %i.bz, i1 %i.go, i1 false
  br i1 %or.cond22, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 0, ptr %i.gq, align 8, !tbaa !154
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 148
  store i32 1, ptr %i.gr, align 4, !tbaa !155
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x float> zeroinitializer, ptr %i.gs, align 8, !tbaa !49
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 144
  store float 1.000000e+00, ptr %i.gt, align 8, !tbaa !156
  %i.gu = load i32, ptr %i.bd, align 4, !tbaa !50 ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  %i.gw = load i32, ptr %i.be, align 8            ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  %or.cond25 = select i1 %i.gv, i1 true, i1 %i.gx
  %i.gy = sitofp reassoc nsz arcp contract afn i32 %i.gu to float
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %i.gw to float
  %i.ha = fmul reassoc nnan nsz arcp contract afn float %i.gy, f0x3F622222
  %i.hb = fdiv reassoc nsz arcp contract afn float %i.ha, %i.gz
  %i.hc = select i1 %or.cond25, float f0x3F622222, float %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 3 uses
  store float %i.hc, ptr %i.hd, align 4, !tbaa !157
  %i.he = load i32, ptr %i.aj, align 4, !tbaa !56
  %.not275 = icmp eq i32 %i.he, 0
  br i1 %.not275, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hf = load float, ptr %i.bb, align 4, !tbaa !151
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %i.hc ; 2 uses
  store float %i.hg, ptr %i.hd, align 4, !tbaa !157
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hh = phi float [ %i.hg, %bb.az ], [ %i.hc, %bb.ay ] ; 3 uses
  %i.hi = load float, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %i.hj = fcmp reassoc nsz arcp contract afn ogt float %i.hi, 0.000000e+00
  br i1 %i.hj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hk = fpext reassoc nsz arcp contract afn float %i.hh to double
  %i.hl = fadd reassoc nsz arcp contract afn float %i.hh, -1.000000e+00
  %i.hm = fpext reassoc nsz arcp contract afn float %i.hl to double
  %i.hn = fpext reassoc nnan nsz arcp contract afn float %i.hi to double
  %i.ho = fmul reassoc nnan nsz arcp contract afn double %i.hn, 1.000000e-02
  %i.hp = fmul reassoc nsz arcp contract afn double %i.ho, %i.hm
  %i.hq = fsub reassoc nsz arcp contract afn double %i.hk, %i.hp
  %i.hr = fptrunc reassoc nsz arcp contract afn double %i.hq to float ; 2 uses
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, 5.000000e-01
  %i.ht = fdiv reassoc nsz arcp contract afn float %i.hs, %i.hh
  %i.hu = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ht
  %i.hv = fpext reassoc nsz arcp contract afn float %i.hu to double
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 1.000000e+02
  %i.hx = load float, ptr %i.gp, align 8, !tbaa !58
  %i.hy = fpext reassoc nsz arcp contract afn float %i.hx to double
  %i.hz = fsub reassoc nsz arcp contract afn double %i.hy, %i.hw
  %i.ia = fptrunc reassoc nsz arcp contract afn double %i.hz to float
  store float %i.ia, ptr %i.gp, align 8, !tbaa !58
  store float %i.hr, ptr %i.hd, align 4, !tbaa !157
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.30, ptr noundef %i.gp, i32 noundef 40, ptr noundef %i.a, i32 noundef 3, ptr noundef %i.b)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %.5246 = phi i32 [ 1, %bb.bc ], [ %.4245, %bb.ax ] ; 2 uses
  %i.ib = load i32, ptr %i.ao, align 8
end_hunk_0
begin_hunk_1_@dt_lightroom_import:bb.a
  br i1 %i.ie, label %.preheader321, label %.thread387

.preheader321:                                    ; preds = %bb.be
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 172
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !59 ; 4 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %.lr.ph, label %.thread387

.lr.ph:                                           ; preds = %.preheader321
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ig to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ij = icmp eq i32 %i.ig, 1
  br i1 %i.ij, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bf ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bf ]
  %i.ik = getelementptr inbounds nuw [20 x i8], ptr %i.ii, i64 %indvars.iv ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !61
  %i.in = load float, ptr %i.ik, align 8, !tbaa !62
  %i.io = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.in
  store float %i.io, ptr %i.il, align 4, !tbaa !61
  store float %i.im, ptr %i.ik, align 8, !tbaa !62
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !63
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.is = load float, ptr %i.ir, align 8, !tbaa !64
  %i.it = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.is
  store float %i.it, ptr %i.ip, align 4, !tbaa !63
  store float %i.iq, ptr %i.ir, align 8, !tbaa !64
  %i.iu = getelementptr inbounds nuw [20 x i8], ptr %i.ii, i64 %indvars.iv ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 20 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 24 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 8, !tbaa !61
  %i.iy = load float, ptr %i.iv, align 4, !tbaa !62
  %i.iz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iy
  store float %i.iz, ptr %i.iw, align 8, !tbaa !61
  store float %i.ix, ptr %i.iv, align 4, !tbaa !62
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 32 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 8, !tbaa !63
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 28 ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !64
  %i.je = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jd
  store float %i.je, ptr %i.ja, align 8, !tbaa !63
  store float %i.jb, ptr %i.jc, align 4, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread387.loopexit.unr-lcssa, label %bb.bf

.thread387.loopexit.unr-lcssa:                    ; preds = %bb.bf
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread387, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread387.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.thread387.loopexit.unr-lcssa ]
  %lcmp.mod396 = trunc i32 %i.ig to i1
  call void @llvm.assume(i1 %lcmp.mod396)
  %i.jf = getelementptr inbounds nuw [20 x i8], ptr %i.ii, i64 %indvars.iv.epil.init ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4 ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !61
  %i.ji = load float, ptr %i.jf, align 4, !tbaa !62
  %i.jj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ji
  store float %i.jj, ptr %i.jg, align 4, !tbaa !61
  store float %i.jh, ptr %i.jf, align 4, !tbaa !62
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !63
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !64
  %i.jo = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jn
  store float %i.jo, ptr %i.jk, align 4, !tbaa !63
  store float %i.jl, ptr %i.jm, align 4, !tbaa !64
  br label %.thread387

.thread387:                                       ; preds = %.epil.preheader, %.thread387.loopexit.unr-lcssa, %bb.be, %.preheader321
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 172
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.31, ptr noundef %i.jp, i32 noundef 644, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  br i1 %i.bz, label %bb.bh, label %.thread309

bb.bh:                                            ; preds = %.thread387, %bb.bg
  %.6389 = phi i32 [ 1, %.thread387 ], [ %.5246, %bb.bg ]
  %i.jq = load i32, ptr %i.ap, align 8, !tbaa !65 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 1332
  %i.js = load <4 x i32>, ptr %i.jr, align 4      ; 3 uses
  %i.jt = insertelement <4 x i32> %i.js, i32 %i.jq, i64 3
  %.fr = freeze <4 x i32> %i.jt
  %i.ju = icmp ne <4 x i32> %.fr, zeroinitializer ; 2 uses
  %i.jv = extractelement <4 x i32> %i.js, i64 3
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = bitcast <4 x i1> %i.ju to i4
  %i.jy = icmp ne i4 %i.jx, 0
  %op.rdx = select i1 %i.jy, i1 true, i1 %i.jw
  br i1 %op.rdx, label %.preheader320.preheader, label %bb.bn

.preheader320.preheader:                          ; preds = %bb.bh
  %i.jz = icmp eq i32 %i.jq, 3                    ; 2 uses
  %i.ka = load i32, ptr %i.aq, align 4
  %i.kb = select i1 %i.jz, i32 %i.ka, i32 6       ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 1300
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !11
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 1304
  store <4 x i32> <i32 7, i32 7, i32 0, i32 0>, ptr %i.kd, align 8, !tbaa !11
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 1320
  store i32 0, ptr %i.ke, align 8, !tbaa !11
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 1324
  store i32 1, ptr %i.kf, align 4, !tbaa !158
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 1328
  store i32 0, ptr %i.kg, align 8, !tbaa !159
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 980
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 1012
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 1028
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %i.kh, align 4, !tbaa !49
  store <4 x float> <float f0x3F333333, float f0x3F333333, float 9.200000e-01, float 9.200000e-01>, ptr %i.ki, align 4, !tbaa !49
  store <2 x float> splat (float 1.000000e+00), ptr %i.kj, align 4, !tbaa !49
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 1140
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 1172
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 1188
  store <8 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-02, float 8.000000e-02, float 3.000000e-01, float 3.000000e-01, float 5.000000e-01, float 5.000000e-01>, ptr %i.kk, align 4, !tbaa !49
  store <4 x float> <float f0x3F333333, float f0x3F333333, float 9.200000e-01, float 9.200000e-01>, ptr %i.kl, align 4, !tbaa !49
  store <2 x float> splat (float 1.000000e+00), ptr %i.km, align 4, !tbaa !49
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 820 ; 5 uses
  %i.ko = extractelement <4 x i1> %i.ju, i64 3
  br i1 %i.ko, label %.preheader317, label %.thread

.preheader317:                                    ; preds = %.preheader320.preheader
  %i.kp = icmp sgt i32 %i.kb, 0
  br i1 %i.kp, label %.lr.ph329, label %._crit_edge

.lr.ph329:                                        ; preds = %.preheader317
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 1364 ; 3 uses
  %wide.trip.count353 = zext nneg i32 %i.kb to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.kb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph329
  %n.vec = and i64 %wide.trip.count353, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.kr = or disjoint i64 %index, 4               ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %index
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kr
  %wide.vec = load <8 x i32>, ptr %i.ks, align 4, !tbaa !11 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec390 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec391 = load <8 x i32>, ptr %i.kt, align 4, !tbaa !11 ; 2 uses
  %strided.vec392 = shufflevector <8 x i32> %wide.vec391, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec393 = shufflevector <8 x i32> %wide.vec391, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ku = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec to <4 x double>
  %i.kv = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec392 to <4 x double>
  %i.kw = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.ku, splat (double f0x3F70101010101010)
  %i.kx = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.kv, splat (double f0x3F70101010101010)
  %i.ky = fptrunc reassoc nsz arcp contract afn <4 x double> %i.kw to <4 x float>
  %i.kz = fptrunc reassoc nsz arcp contract afn <4 x double> %i.kx to <4 x float>
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.kr
  %i.lc = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec390 to <4 x double>
  %i.ld = sitofp reassoc nsz arcp contract afn <4 x i32> %strided.vec393 to <4 x double>
  %i.le = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.lc, splat (double f0x3F70101010101010)
  %i.lf = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.ld, splat (double f0x3F70101010101010)
  %i.lg = fptrunc reassoc nsz arcp contract afn <4 x double> %i.le to <4 x float>
  %i.lh = fptrunc reassoc nsz arcp contract afn <4 x double> %i.lf to <4 x float>
  %interleaved.vec = shufflevector <4 x float> %i.ky, <4 x float> %i.lg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.la, align 4, !tbaa !49
  %interleaved.vec394 = shufflevector <4 x float> %i.kz, <4 x float> %i.lh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec394, ptr %i.lb, align 4, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.li = icmp eq i64 %index.next, %n.vec
  br i1 %i.li, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count353
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph329, %middle.block
  %indvars.iv350.ph = phi i64 [ 0, %.lr.ph329 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.thread:                                          ; preds = %.preheader320.preheader
  store <2 x float> zeroinitializer, ptr %i.kn, align 4, !tbaa !49
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 1348
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 828
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 1352
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 836
  %i.ln = load <2 x float>, ptr %i.lj, align 4, !tbaa !49 ; 2 uses
  %i.lo = extractelement <2 x float> %i.ln, i64 0
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, 5.000000e-01 ; 2 uses
  store float %i.lp, ptr %i.lk, align 4, !tbaa !163
  %i.lq = load <2 x float>, ptr %i.ll, align 8, !tbaa !49 ; 2 uses
  %i.lr = fsub reassoc nsz arcp contract afn <2 x float> %i.lq, %i.ln
  %i.ls = fpext reassoc nsz arcp contract afn <2 x float> %i.lr to <2 x double>
  %i.lt = fmul reassoc nsz arcp contract afn <2 x double> %i.ls, splat (double 5.000000e-01) ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 844
  %i.lv = fpext reassoc nsz arcp contract afn <2 x float> %i.lq to <2 x double> ; 2 uses
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lx = fadd reassoc nsz arcp contract afn <2 x double> %i.lw, %i.lt
  %i.ly = fsub reassoc nsz arcp contract afn <2 x double> %i.lw, %i.lt
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> %i.lx, <2 x i32> <i32 0, i32 3>
  %i.ma = fptrunc reassoc nsz arcp contract afn <2 x double> %i.lz to <2 x float> ; 3 uses
  %i.mb = extractelement <2 x float> %i.ma, i64 0
  store float %i.mb, ptr %i.lm, align 4, !tbaa !163
  %i.mc = extractelement <2 x float> %i.ma, i64 1
  store float %i.mc, ptr %i.lu, align 4, !tbaa !163
  %i.md = extractelement <2 x double> %i.lv, i64 1
  %i.me = fmul reassoc nsz arcp contract afn double %i.md, 5.000000e-01
  %i.mf = fadd reassoc nsz arcp contract afn double %i.me, 5.000000e-01
  %i.mg = fptrunc reassoc nsz arcp contract afn double %i.mf to float ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 852
  store float %i.mg, ptr %i.mh, align 4, !tbaa !163
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 860
  store <2 x float> splat (float 1.000000e+00), ptr %i.mi, align 4, !tbaa !49
  br label %bb.bi

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %scalar.ph ], [ %indvars.iv350.ph, %scalar.ph.preheader ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv350
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv350
  %i.ml = load <2 x i32>, ptr %i.mj, align 4, !tbaa !11
  %i.mm = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ml to <2 x double>
  %i.mn = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.mm, splat (double f0x3F70101010101010)
  %i.mo = fptrunc reassoc nsz arcp contract afn <2 x double> %i.mn to <2 x float>
  store <2 x float> %i.mo, ptr %i.mk, align 4, !tbaa !49
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353
  br i1 %exitcond354.not, label %._crit_edge, label %scalar.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader317
  br i1 %i.jz, label %bb.bm, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 832
  %.phi.trans.insert364 = getelementptr inbounds nuw i8, ptr %3, i64 840
  %.phi.trans.insert366 = getelementptr inbounds nuw i8, ptr %3, i64 848
  %.phi.trans.insert368 = getelementptr inbounds nuw i8, ptr %3, i64 856
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !164
  %i.mp = load <2 x float>, ptr %.phi.trans.insert364, align 8
  %.pre367 = load float, ptr %.phi.trans.insert366, align 8, !tbaa !164
  %.pre369 = load float, ptr %.phi.trans.insert368, align 8, !tbaa !164
  %i.mq = insertelement <2 x float> %i.mp, float %.pre367, i64 1
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge._crit_edge, %.thread
  %i.mr = phi float [ %.pre369, %._crit_edge._crit_edge ], [ %i.mg, %.thread ]
  %i.ms = phi float [ %.pre, %._crit_edge._crit_edge ], [ %i.lp, %.thread ]
  %i.mt = phi <2 x float> [ %i.mq, %._crit_edge._crit_edge ], [ %i.ma, %.thread ]
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 832 ; 2 uses
  %i.mv = insertelement <4 x float> poison, float %i.ms, i64 0
  %i.mw = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.my = insertelement <4 x float> %i.mx, float %i.mr, i64 3
  %i.mz = fpext reassoc nsz arcp contract afn <4 x float> %i.my to <4 x double> ; 2 uses
  %i.na = sitofp reassoc nsz arcp contract afn <4 x i32> %i.js to <4 x float>
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 856
  %i.nc = fpext fast <4 x float> %i.na to <4 x double>
  %i.nd = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.nc, splat (double 1.000000e-02)
  %i.ne = fmul reassoc nsz arcp contract afn <4 x double> %i.nd, %i.mz
  %i.nf = fadd reassoc nsz arcp contract afn <4 x double> %i.ne, %i.mz
  %i.ng = fptrunc reassoc nsz arcp contract afn <4 x double> %i.nf to <4 x float> ; 5 uses
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <7 x i32> <i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3>
  call void @llvm.masked.store.v7f32.p0(<7 x float> %i.nh, ptr align 8 %i.mu, <7 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true>), !tbaa !164
  %i.ni = extractelement <4 x float> %i.ng, i64 0
  %i.nj = extractelement <4 x float> %i.ng, i64 1 ; 2 uses
  %i.nk = fcmp reassoc nsz arcp contract afn ogt float %i.ni, %i.nj
  br i1 %i.nk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store float %i.nj, ptr %i.mu, align 8, !tbaa !164
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.nl = extractelement <4 x float> %i.ng, i64 2 ; 2 uses
  %i.nm = extractelement <4 x float> %i.ng, i64 3
  %i.nn = fcmp reassoc nsz arcp contract afn ogt float %i.nl, %i.nm
  br i1 %i.nn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store float %i.nl, ptr %i.nb, align 8, !tbaa !164
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %._crit_edge
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.32, ptr noundef %i.kn, i32 noundef 512, ptr noundef %i.a, i32 noundef 3, ptr noundef %i.b)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bh, %bb.bm
  %.7 = phi i32 [ 1, %bb.bm ], [ %.6389, %bb.bh ]
  %i.no = load i32, ptr %i.ar, align 4
  %.not314 = icmp eq i32 %i.no, 0
  br i1 %.not314, label %bb.bo, label %.preheader

.preheader:                                       ; preds = %bb.bn
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 1528 ; 2 uses
  store i32 2, ptr %i.np, align 8, !tbaa !165
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 1532
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.nq, align 4, !tbaa !49
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 1564
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.nr, align 4, !tbaa !49
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 1596
  store <8 x float> <float 0.000000e+00, float f0x3E124925, float f0x3E924925, float f0x3EDB6DB7, float f0x3F124925, float f0x3F36DB6E, float f0x3F5B6DB7, float 1.000000e+00>, ptr %i.ns, align 4, !tbaa !49
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.33, ptr noundef %i.np, i32 noundef 196, ptr noundef %i.a, i32 noundef 2, ptr noundef %i.b)
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader, %bb.bn
  %.8 = phi i32 [ 1, %.preheader ], [ %.7, %bb.bn ]
  %i.nt = load i32, ptr %i.as, align 8
  %.not315 = icmp eq i32 %i.nt, 0
  br i1 %.not315, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 1728
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 1748
  store float 5.000000e+01, ptr %i.nv, align 4, !tbaa !166
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.34, ptr noundef %i.nu, i32 noundef 24, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.9 = phi i32 [ 1, %bb.bp ], [ %.8, %bb.bo ]
  %i.nw = load i32, ptr %i.at, align 8
  %.not316 = icmp eq i32 %i.nw, 0
  br i1 %.not316, label %.thread309, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 1756 ; 2 uses
  store <2 x float> splat (float 1.000000e+02), ptr %i.nx, align 4, !tbaa !49
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.35, ptr noundef %i.nx, i32 noundef 12, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %.thread309

.thread309:                                       ; preds = %bb.bg, %bb.br, %bb.bq
  %.10 = phi i32 [ 1, %bb.br ], [ %.9, %bb.bq ], [ %.5246, %bb.bg ]
  %i.ny = load i32, ptr %i.au, align 4, !tbaa !66
  %.not277 = icmp eq i32 %i.ny, 0
  br i1 %.not277, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %.thread309
  %i.nz = load i8, ptr %i.a, align 16, !tbaa !67
  %.not278 = icmp eq i8 %i.nz, 0
  br i1 %.not278, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oa = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ob = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #12
  %i.oc = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.ob, i64 noundef 256) #12 ; 0 uses
  %i.od = load i32, ptr %i.b, align 4, !tbaa !11
  %i.oe = add nsw i32 %i.od, 1
  store i32 %i.oe, ptr %i.b, align 4, !tbaa !11
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread309
  %i.of = load i32, ptr %i.aw, align 4
  %i.og = icmp eq i32 %i.of, 0
  %or.cond56.not = select i1 %i.bz, i1 true, i1 %i.og
  br i1 %or.cond56.not, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oh = load i32, ptr %i.av, align 8, !tbaa !68
  call void @dt_ratings_apply_on_image(i32 noundef %0, i32 noundef %i.oh, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %i.oi = load i8, ptr %i.a, align 16, !tbaa !67
  %.not279 = icmp eq i8 %i.oi, 0
  br i1 %.not279, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oj = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ok = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #12
  %i.ol = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.ok, i64 noundef 256) #12 ; 0 uses
  %i.om = load i32, ptr %i.b, align 4, !tbaa !11
  %i.on = add nsw i32 %i.om, 1
  store i32 %i.on, ptr %i.b, align 4, !tbaa !11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %i.oo = load i32, ptr %i.ay, align 8
  %i.op = icmp eq i32 %i.oo, 0
  %or.cond59.not = select i1 %i.bz, i1 true, i1 %i.op
  br i1 %or.cond59.not, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.oq = load <2 x double>, ptr %i.ax, align 8, !tbaa !148
  %i.or = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.or, ptr %5, align 16, !tbaa !148
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double +qnan, ptr %i.os, align 16, !tbaa !167
  call void @dt_image_set_location(i32 noundef %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #12
  %i.ot = sext i32 %0 to i64
  %i.ou = inttoptr i64 %i.ot to ptr
  %i.ov = call ptr @g_list_prepend(ptr noundef null, ptr noundef %i.ou) #12
  %i.ow = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !113
  %i.ox = trunc i32 %i.ow to i1
  %i.oy = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3356), align 4
  %i.oz = icmp ne i32 %i.oy, 0
  %or.cond61 = select i1 %i.ox, i1 %i.oz, i1 false
  br i1 %or.cond61, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.pa = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !114
  %i.pb = and i32 %i.pa, 1048576
  %.not280 = icmp eq i32 %i.pb, 0
  br i1 %.not280, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1595, ptr noundef nonnull @__FUNCTION__.dt_lightroom_import) #12
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.ca
  %i.pc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !115
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.pc, i32 noundef 10, ptr noundef %i.ov, i32 noundef 0) #12
  %i.pd = load i8, ptr %i.a, align 16, !tbaa !67
  %.not281 = icmp eq i8 %i.pd, 0
  br i1 %.not281, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pe = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.pf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #12
  %i.pg = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.pf, i64 noundef 256) #12 ; 0 uses
  %i.ph = load i32, ptr %i.b, align 4, !tbaa !11
  %i.pi = add nsw i32 %i.ph, 1
  store i32 %i.pi, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.bz
  %i.pj = load i32, ptr %i.ba, align 8
  %i.pk = icmp eq i32 %i.pj, 0
  %or.cond64.not = select i1 %i.bz, i1 true, i1 %i.pk
  br i1 %or.cond64.not, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pl = load i32, ptr %i.az, align 4, !tbaa !47
  call void @dt_colorlabels_set_label(i32 noundef %0, i32 noundef %i.pl) #12
  %i.pm = load i8, ptr %i.a, align 16, !tbaa !67
  %.not282 = icmp eq i8 %i.pm, 0
  br i1 %.not282, label %.thread312, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pn = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, i64 noundef 256) #12 ; 0 uses
  br label %.thread312

.thread312:                                       ; preds = %bb.ch, %bb.ci
  %i.po = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #12
  %i.pp = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef %i.po, i64 noundef 256) #12 ; 0 uses
  br label %bb.cq

bb.cj:                                            ; preds = %bb.cg
  %i.pq = icmp ne i32 %.10, 0
  %or.cond66 = select i1 %i.bz, i1 %i.pq, i1 false
  br i1 %or.cond66, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %i.pr = load i32, ptr %1, align 16, !tbaa !168
  %.not283 = icmp eq i32 %i.pr, 0
end_hunk_1
