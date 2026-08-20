inline.NumInlined: 86
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dt_lightroom_import:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @xmlXPathFreeContext(ptr noundef nonnull %i.n) #12
  tail call void @g_free(ptr noundef nonnull %i.d) #12
  tail call void @xmlFreeDoc(ptr noundef nonnull %i.f) #12
  br label %bb.cr

bb.r:                                             ; preds = %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 3 uses
  %.not266 = icmp eq ptr %i.u, null
  br i1 %.not266, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = load i32, ptr %i.u, align 8, !tbaa !25
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = tail call ptr @xmlNodeListGetString(ptr noundef nonnull %i.f, ptr noundef %i.ab, i32 noundef 1) #12 ; 4 uses
  %i.ad = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.8) #13
  %.not267 = icmp eq ptr %i.ad, null
  br i1 %.not267, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
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
  store <4 x double> splat (double +qnan), ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 1816 ; 2 uses
  store i32 0, ptr %i.ay, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 1820 ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 1824 ; 2 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 1828 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1832
  store <2 x float> splat (float +qnan), ptr %i.bb, align 4, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1836 ; 3 uses
  store i32 0, ptr %i.bd, align 4, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1840 ; 3 uses
  store i32 0, ptr %i.be, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1844 ; 4 uses
  store i32 1, ptr %i.bf, align 4, !tbaa !53
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
  %i.bz = icmp ne ptr %1, null                    ; 9 uses
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
  %i.ce = load i32, ptr %i.bf, align 4, !tbaa !53 ; 4 uses
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
  store i32 -2, ptr %i.cf, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i32 -2, ptr %i.cg, align 4, !tbaa !55
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 60
  store <4 x i32> zeroinitializer, ptr %i.ch, align 4, !tbaa !11
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 36
  store <2 x float> <float 2.000000e-01, float 8.000000e-01>, ptr %6, align 4, !tbaa !50
  store <4 x float> <float 8.000000e-01, float 2.000000e-01, float 8.000000e-01, float 8.000000e-01>, ptr %i.ci, align 4, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cn = load float, ptr %3, align 8, !tbaa !56  ; 2 uses
  %i.co = fpext reassoc nsz arcp contract afn float %i.cn to double
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, f0x3F91DF46A2529D39 ; 2 uses
  %i.cq = fneg reassoc nsz arcp contract afn double %i.cp
  %sincos.i.i = call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %i.cq) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1
  %i.cr = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cp)
  %i.cs = fneg reassoc nsz arcp contract afn double %i.cr
  %sincos.i = call reassoc nsz arcp contract afn { double, double } @llvm.sincos.f64(double %i.cs) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.ct = load float, ptr %i.cm, align 8, !tbaa !57
  %i.cu = load float, ptr %i.ck, align 4, !tbaa !58
  %i.cv = load <4 x float>, ptr %i.cl, align 8
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cx = load <4 x float>, ptr %i.cj, align 4
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cz = insertelement <2 x float> %i.cy, float %i.cu, i64 1
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cz, splat (float -5.000000e-01)
  %i.db = load i32, ptr %i.be, align 8, !tbaa !52 ; 3 uses
  %i.dc = load i32, ptr %i.bd, align 4, !tbaa !51 ; 2 uses
  %i.dd = sitofp reassoc nsz arcp contract afn i32 %i.db to float
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.dc to float
  %i.df = insertelement <2 x float> %i.cw, float %i.ct, i64 1
  %i.dg = fadd reassoc nsz arcp contract afn <2 x float> %i.df, splat (float -5.000000e-01)
  %i.dh = insertelement <2 x float> poison, float %i.de, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul reassoc nsz arcp contract afn <2 x float> %i.da, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, %i.dl
  %i.dn = fpext <2 x float> %i.dj to <2 x double> ; 2 uses
  %i.do = fpext <2 x float> %i.dm to <2 x double> ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = fmul reassoc nsz arcp contract afn <2 x double> %i.dq, %i.dn
  %i.ds = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fmul reassoc nsz arcp contract afn <2 x double> %i.dt, %i.do
  %i.dv = fadd reassoc nsz arcp contract afn <2 x double> %i.du, %i.dr
  %i.dw = fmul reassoc nsz arcp contract afn <2 x double> %i.dq, %i.do
  %i.dx = fmul reassoc nsz arcp contract afn <2 x double> %i.dt, %i.dn
  %i.dy = fsub reassoc nsz arcp contract afn <2 x double> %i.dw, %i.dx
  %i.dz = sitofp reassoc nsz arcp contract afn i32 %i.dc to double ; 2 uses
  %i.ea = sub nsw i32 0, %i.db
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.ea to double
  %i.ec = fmul reassoc nsz arcp contract afn double %cos.i, %i.dz
  %i.ed = fmul reassoc nsz arcp contract afn double %sin.i, %i.eb
  %i.ee = fadd reassoc nsz arcp contract afn double %i.ec, %i.ed
  %i.ef = sitofp reassoc nsz arcp contract afn i32 %i.db to double
  %i.eg = fmul reassoc nsz arcp contract afn double %cos.i, %i.ef
  %i.eh = fmul reassoc nsz arcp contract afn double %sin.i, %i.dz
  %i.ei = fsub reassoc nsz arcp contract afn double %i.eg, %i.eh
  %i.ej = fmul reassoc nsz arcp contract afn <2 x double> %i.dv, splat (double 1.000000e+05)
  %i.ek = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fdiv reassoc nsz arcp contract afn <2 x double> %i.ej, %i.el
  %i.en = fadd reassoc nsz arcp contract afn <2 x double> %i.em, splat (double 5.000000e+04)
  %i.eo = call reassoc nsz arcp contract afn <2 x double> @llvm.round.v2f64(<2 x double> %i.en)
  %i.ep = fmul reassoc nsz arcp contract afn <2 x double> %i.eo, splat (double 1.000000e-05)
  %i.eq = fptrunc <2 x double> %i.ep to <2 x float> ; 5 uses
  %i.er = extractelement <2 x float> %i.eq, i64 1
  %i.es = extractelement <2 x float> %i.eq, i64 0
  %i.et = fmul reassoc nsz arcp contract afn <2 x double> %i.dy, splat (double 1.000000e+05)
  %i.eu = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fdiv reassoc nsz arcp contract afn <2 x double> %i.et, %i.ev
  %i.ex = fadd reassoc nsz arcp contract afn <2 x double> %i.ew, splat (double 5.000000e+04)
  %i.ey = call reassoc nsz arcp contract afn <2 x double> @llvm.round.v2f64(<2 x double> %i.ex)
  %i.ez = fmul reassoc nsz arcp contract afn <2 x double> %i.ey, splat (double 1.000000e-05)
  %i.fa = fptrunc <2 x double> %i.ez to <2 x float> ; 5 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 1
  %i.fc = extractelement <2 x float> %i.fa, i64 0
  %7 = shufflevector <2 x float> %i.eq, <2 x float> %i.fa, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x float> %7, <8 x float> <float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 2.000000e-01, float 2.000000e-01>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %8, ptr %i.cj, align 4, !tbaa !50
  %i.fd = and i32 %.0.i, 2
  %.not272 = icmp eq i32 %i.fd, 0
  %i.fe = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %.not272, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %dt_image_orientation_to_flip_bits.exit
  %i.ff = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.eq ; 3 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fh = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  store float %i.fg, ptr %i.cj, align 4, !tbaa !50
  store float %i.fh, ptr %i.ck, align 4, !tbaa !50
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %dt_image_orientation_to_flip_bits.exit
  %i.fi = phi float [ %i.fh, %bb.aj ], [ %i.er, %dt_image_orientation_to_flip_bits.exit ] ; 2 uses
  %i.fj = phi float [ %i.fg, %bb.aj ], [ %i.es, %dt_image_orientation_to_flip_bits.exit ] ; 2 uses
  %i.fk = phi <2 x float> [ %i.ff, %bb.aj ], [ %i.fe, %dt_image_orientation_to_flip_bits.exit ]
  %i.fl = and i32 %.0.i, 1
  %.not273 = icmp eq i32 %i.fl, 0
  %i.fm = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %.not273, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fn = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fa ; 3 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 1 ; 2 uses
  %i.fp = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  store float %i.fo, ptr %i.cl, align 8, !tbaa !50
  store float %i.fp, ptr %i.cm, align 8, !tbaa !50
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fq = phi float [ %i.fp, %bb.al ], [ %i.fb, %bb.ak ] ; 2 uses
  %i.fr = phi float [ %i.fo, %bb.al ], [ %i.fc, %bb.ak ] ; 2 uses
  %i.fs = phi <2 x float> [ %i.fn, %bb.al ], [ %i.fm, %bb.ak ]
  br i1 %.not274, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store float %i.fr, ptr %i.cj, align 4, !tbaa !50
  store float %i.fj, ptr %i.cl, align 8, !tbaa !50
  store float %i.fq, ptr %i.ck, align 4, !tbaa !50
  store float %i.fi, ptr %i.cm, align 8, !tbaa !50
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ft = phi float [ %i.fj, %bb.an ], [ %i.fr, %bb.am ]
  %i.fu = phi float [ %i.fi, %bb.an ], [ %i.fq, %bb.am ]
  %i.fv = phi <2 x float> [ %i.fs, %bb.an ], [ %i.fk, %bb.am ] ; 2 uses
  switch i32 %.0.i, label %bb.aq [
    i32 7, label %bb.ap
    i32 4, label %bb.ap
    i32 2, label %bb.ap
    i32 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.fw = fneg reassoc nsz arcp contract afn float %i.cn
  store float %i.fw, ptr %3, align 8, !tbaa !56
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %shift = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fv, %shift
  %i.fx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fy = fsub reassoc nsz arcp contract afn float %i.fu, %i.ft
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fx, %i.fy
  store float %i.fz, ptr %i.bb, align 4, !tbaa !59
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.26, ptr noundef %3, i32 noundef 84, ptr noundef %i.a, i32 noundef 5, ptr noundef %i.b)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ab
  %.1242 = phi i32 [ 1, %bb.aq ], [ %.0241, %bb.ab ]
  %i.ga = load i32, ptr %i.ak, align 4
  %i.gb = icmp ne i32 %i.ga, 0
  %or.cond13 = select i1 %i.bz, i1 %i.gb, i1 false
  br i1 %or.cond13, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = load i32, ptr %i.bf, align 4, !tbaa !53
  %switch.tableidx = add i32 %i.gc, -2            ; 2 uses
  %i.gd = icmp ult i32 %switch.tableidx, 7
  br i1 %i.gd, label %switch.lookup, label %dt_image_orientation_to_flip_bits.exit295

switch.lookup:                                    ; preds = %bb.as
  %i.ge = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_lightroom_import, i64 %i.ge
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %dt_image_orientation_to_flip_bits.exit295

dt_image_orientation_to_flip_bits.exit295:        ; preds = %bb.as, %switch.lookup
  %.0.i294 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.as ]
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  store i32 %.0.i294, ptr %i.gf, align 8, !tbaa !60
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.27, ptr noundef %i.gf, i32 noundef 4, ptr noundef %i.a, i32 noundef 2, ptr noundef %i.b)
  br label %bb.at

bb.at:                                            ; preds = %dt_image_orientation_to_flip_bits.exit295, %bb.ar
  %.2243 = phi i32 [ 1, %dt_image_orientation_to_flip_bits.exit295 ], [ %.1242, %bb.ar ]
  %i.gg = load i32, ptr %i.al, align 4
  %i.gh = icmp ne i32 %i.gg, 0
  %or.cond16 = select i1 %i.bz, i1 %i.gh, i1 false
  br i1 %or.cond16, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 96
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.28, ptr noundef %i.gi, i32 noundef 12, ptr noundef %i.a, i32 noundef 2, ptr noundef %i.b)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.3244 = phi i32 [ 1, %bb.au ], [ %.2243, %bb.at ]
  %i.gj = load i32, ptr %i.an, align 8
  %i.gk = icmp ne i32 %i.gj, 0
  %or.cond19 = select i1 %i.bz, i1 %i.gk, i1 false
  br i1 %or.cond19, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 156 ; 2 uses
  store i32 0, ptr %i.gl, align 4, !tbaa !61
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.29, ptr noundef %i.gl, i32 noundef 12, ptr noundef %i.a, i32 noundef 1, ptr noundef %i.b)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.4245 = phi i32 [ 1, %bb.aw ], [ %.3244, %bb.av ]
  %i.gm = load i32, ptr %i.am, align 8
  %i.gn = icmp ne i32 %i.gm, 0
  %or.cond22 = select i1 %i.bz, i1 %i.gn, i1 false
  br i1 %or.cond22, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 0, ptr %i.gp, align 8, !tbaa !62
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 148
  store i32 1, ptr %i.gq, align 4, !tbaa !63
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x float> zeroinitializer, ptr %i.gr, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 144
  store float 1.000000e+00, ptr %i.gs, align 8, !tbaa !64
  %i.gt = load i32, ptr %i.bd, align 4, !tbaa !51 ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  %i.gv = load i32, ptr %i.be, align 8            ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  %or.cond25 = select i1 %i.gu, i1 true, i1 %i.gw
  %i.gx = sitofp reassoc nsz arcp contract afn i32 %i.gt to float
  %i.gy = sitofp reassoc nsz arcp contract afn i32 %i.gv to float
  %i.gz = fmul reassoc nnan nsz arcp contract afn float %i.gx, f0x3F622222
  %i.ha = fdiv reassoc nsz arcp contract afn float %i.gz, %i.gy
  %i.hb = select i1 %or.cond25, float f0x3F622222, float %i.ha ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 3 uses
  store float %i.hb, ptr %i.hc, align 4, !tbaa !65
  %i.hd = load i32, ptr %i.aj, align 4, !tbaa !66
  %.not275 = icmp eq i32 %i.hd, 0
  br i1 %.not275, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.he = load float, ptr %i.bb, align 4, !tbaa !59
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %i.hb ; 2 uses
  store float %i.hf, ptr %i.hc, align 4, !tbaa !65
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hg = phi float [ %i.hf, %bb.az ], [ %i.hb, %bb.ay ] ; 3 uses
  %i.hh = load float, ptr %i.bc, align 8, !tbaa !67 ; 2 uses
  %i.hi = fcmp reassoc nsz arcp contract afn ogt float %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hj = fpext reassoc nsz arcp contract afn float %i.hg to double
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hg, -1.000000e+00
  %i.hl = fpext reassoc nsz arcp contract afn float %i.hk to double
  %i.hm = fpext reassoc nnan nsz arcp contract afn float %i.hh to double
  %i.hn = fmul reassoc nnan nsz arcp contract afn double %i.hm, 1.000000e-02
  %i.ho = fmul reassoc nsz arcp contract afn double %i.hn, %i.hl
  %i.hp = fsub reassoc nsz arcp contract afn double %i.hj, %i.ho
  %i.hq = fptrunc reassoc nsz arcp contract afn double %i.hp to float ; 2 uses
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, 5.000000e-01
  %i.hs = fdiv reassoc nsz arcp contract afn float %i.hr, %i.hg
  %i.ht = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.hs
  %i.hu = fpext reassoc nsz arcp contract afn float %i.ht to double
  %i.hv = fmul reassoc nsz arcp contract afn double %i.hu, 1.000000e+02
  %i.hw = load float, ptr %i.go, align 8, !tbaa !68
  %i.hx = fpext reassoc nsz arcp contract afn float %i.hw to double
  %i.hy = fsub reassoc nsz arcp contract afn double %i.hx, %i.hv
  %i.hz = fptrunc reassoc nsz arcp contract afn double %i.hy to float
  store float %i.hz, ptr %i.go, align 8, !tbaa !68
  store float %i.hq, ptr %i.hc, align 4, !tbaa !65
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call fastcc void @dt_add_hist(i32 noundef %0, ptr noundef nonnull @.str.30, ptr noundef %i.go, i32 noundef 40, ptr noundef %i.a, i32 noundef 3, ptr noundef %i.b)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ax
  %.5246 = phi i32 [ 1, %bb.bc ], [ %.4245, %bb.ax ] ; 2 uses
  %i.ia = load i32, ptr %i.ao, align 8
  %i.ib = icmp ne i32 %i.ia, 0
  %or.cond28 = select i1 %i.bz, i1 %i.ib, i1 false
  br i1 %or.cond28, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
end_hunk_0
