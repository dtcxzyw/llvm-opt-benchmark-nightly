Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/metrics?download=true
inline.NumInlined: 195
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN3jxl6N_SSE419ComputeSumOfSquaresERKNS_11ImageBundleES3_RK15JxlCmsInterfacePd:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.v, align 8, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !85
  %i.af = sext i32 %i.ae to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.ph.shrunk.i = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.e ], [ 0, %bb.d ]
  %.0.i.ph.i = zext i32 %.0.i.ph.shrunk.i to i64  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.not.i5.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i5.i, label %bb.h, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = zext i32 %i.ap to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit:  ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i7.i = phi i64 [ %i.ac, %bb.f ], [ %.0.i.ph.i, %bb.h ], [ %.0.i.ph.i, %bb.i ], [ %.0.i.ph.i, %bb.g ]
  %.0.i4.i = phi i64 [ %i.af, %bb.f ], [ 0, %bb.h ], [ %i.aq, %bb.i ], [ %i.ai, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store i64 %.0.i7.i, ptr %i.ar, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.0.i4.i, ptr %i.as, align 8, !tbaa !88
  %i.at = icmp eq i32 %i.g, 1
  %i.au = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext %i.at) #15
  %i.av = call i32 @_ZNK3jxl11ImageBundle6CopyToERKNS_5RectTImEERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_6Image3IfEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(200) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %4, ptr noundef null) #15
  %i.aw = icmp eq i32 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.aw, label %bb.j, label %bb.u

bb.j:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit
  %.063 = phi ptr [ %i.b, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit ], [ %4, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, i8 0, i64 168, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !47, !range !48, !noundef !49
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %switch.i.i64 = icmp ult i32 %i.bc, 2
  %or.cond6.i.i65 = select i1 %i.ba, i1 %switch.i.i64, i1 false
  br i1 %or.cond6.i.i65, label %bb.k, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !50
  %.not2.i.i67 = icmp eq i32 %i.be, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.bg = load i32, ptr %i.bf, align 4
  %.not3.i.i68 = icmp eq i32 %i.bg, 1
  %or.cond.i.i69 = select i1 %.not2.i.i67, i1 %.not3.i.i68, i1 false
  br i1 %or.cond.i.i69, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread

_ZNK3jxl11ImageBundle6IsSRGBEv.exit71:            ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !51, !range !48, !noundef !49
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp ne i32 %i.bl, 13
  %.not84 = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %.not84, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread, label %bb.s

_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread:     ; preds = %bb.j, %bb.k, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 3 uses
  %.not1.i.i72 = icmp eq ptr %i.bo, null
  br i1 %.not1.i.i72, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %.not.i.i75 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i75, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !59
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !84
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !85
  %i.cb = sext i32 %i.ca to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.ph.shrunk.i76 = phi i32 [ %i.bp, %bb.l ], [ %i.bv, %bb.n ], [ 0, %bb.m ]
  %.0.i.ph.i77 = zext i32 %.0.i.ph.shrunk.i76 to i64 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !15 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.not.i5.i78 = icmp eq i32 %i.cd, 0
  br i1 %.not.i5.i78, label %bb.q, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !59
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !15
  %i.cm = zext i32 %i.cl to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i7.i73 = phi i64 [ %i.by, %bb.o ], [ %.0.i.ph.i77, %bb.q ], [ %.0.i.ph.i77, %bb.r ], [ %.0.i.ph.i77, %bb.p ]
  %.0.i4.i74 = phi i64 [ %i.cb, %bb.o ], [ 0, %bb.q ], [ %i.cm, %bb.r ], [ %i.ce, %bb.p ]
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  store i64 %.0.i7.i73, ptr %i.cn, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.0.i4.i74, ptr %i.co, align 8, !tbaa !88
  %i.cp = icmp eq i32 %i.bc, 1
  %i.cq = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext %i.cp) #15
  %i.cr = call i32 @_ZNK3jxl11ImageBundle6CopyToERKNS_5RectTImEERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_6Image3IfEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(200) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %6, ptr noundef null) #15
  %i.cs = icmp eq i32 %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.cs, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71
  %.062 = phi ptr [ %i.ax, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71 ], [ %6, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79 ] ; 6 uses
  %i.ct = load i32, ptr %.063, align 8, !tbaa !14 ; 3 uses
  %i.cu = load i32, ptr %.062, align 8, !tbaa !14
  %i.cv = icmp eq i32 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.063, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = icmp eq i32 %i.cx, %i.cz
  %i.db = select i1 %i.cv, i1 %i.da, i1 false
  br i1 %i.db, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.dc = zext i32 %i.cx to i64
  %.not = icmp eq i32 %i.cx, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %.062, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dh = zext i32 %i.ct to i64
  %.not96 = icmp eq i32 %i.ct, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.063, i64 40
  %.pre127 = load ptr, ptr %i.di, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %.062, i64 40
  %.pre129 = load ptr, ptr %.phi.trans.insert128, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %.063, i64 96
  %.pre132 = load ptr, ptr %.phi.trans.insert131, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %.062, i64 96
  %.pre135 = load ptr, ptr %.phi.trans.insert134, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %.063, i64 152
  %.pre138 = load ptr, ptr %.phi.trans.insert137, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %.062, i64 152
  %.pre141 = load ptr, ptr %.phi.trans.insert140, align 8, !tbaa !24 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre127, i64 64) ]
  br i1 %.not96, label %.loopexit, label %.lr.ph95.split.us

.lr.ph95.split.us:                                ; preds = %.lr.ph95, %._crit_edge.us
  %i.dj = phi double [ %i.ez, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph95 ]
  %.06193.us = phi i64 [ %i.fb, %._crit_edge.us ], [ 0, %.lr.ph95 ] ; 3 uses
  %i.dk = phi <2 x double> [ %i.ex, %._crit_edge.us ], [ zeroinitializer, %.lr.ph95 ]
  %i.dl = mul i64 %i.de, %.06193.us               ; 3 uses
  %i.dm = mul i64 %i.dg, %.06193.us               ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre127, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dn, i64 64), "align"(ptr %.pre129, i64 64) ]
  %i.do = getelementptr inbounds nuw i8, ptr %.pre129, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64), "align"(ptr %.pre132, i64 64) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre132, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dp, i64 64), "align"(ptr %.pre135, i64 64) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre135, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64), "align"(ptr %.pre138, i64 64) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre138, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dr, i64 64), "align"(ptr %.pre141, i64 64) ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre141, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  br label %.preheader86.us

.preheader86.us:                                  ; preds = %.lr.ph95.split.us, %.preheader86.us
  %i.dt = phi double [ %i.ez, %.preheader86.us ], [ %i.dj, %.lr.ph95.split.us ]
  %.05992.us = phi i64 [ %i.fa, %.preheader86.us ], [ 0, %.lr.ph95.split.us ] ; 7 uses
  %i.du = phi <2 x double> [ %i.ex, %.preheader86.us ], [ %i.dk, %.lr.ph95.split.us ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.05992.us
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !29
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.05992.us
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !29
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.05992.us
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !29
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.05992.us
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !29
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.05992.us
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !29
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.05992.us
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !29
  %i.eh = fsub float %i.dw, %i.dy                 ; 2 uses
  %i.ei = fsub float %i.ea, %i.ec                 ; 2 uses
  %i.ej = fsub float %i.ee, %i.eg                 ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> <float 2.990000e-01, float -1.471300e-01>, <2 x float> zeroinitializer)
  %i.en = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> <float 5.870000e-01, float -2.888600e-01>, <2 x float> %i.em)
  %i.eq = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> <float 1.140000e-01, float 4.360000e-01>, <2 x float> %i.ep)
  %i.et = call float @llvm.fmuladd.f32(float %i.eh, float 6.150000e-01, float 0.000000e+00)
  %i.eu = call float @llvm.fmuladd.f32(float %i.ei, float -5.149900e-01, float %i.et)
  %i.ev = call float @llvm.fmuladd.f32(float %i.ej, float -1.000100e-01, float %i.eu)
  %i.ew = fpext <2 x float> %i.es to <2 x double> ; 2 uses
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ew, <2 x double> %i.du) ; 3 uses
  %i.ey = fpext float %i.ev to double             ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.dt) ; 3 uses
  %i.fa = add nuw nsw i64 %.05992.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.fa, %i.dh
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader86.us, !llvm.loop !95

._crit_edge.us:                                   ; preds = %.preheader86.us
  %i.fb = add nuw nsw i64 %.06193.us, 1           ; 2 uses
  %exitcond98.not = icmp eq i64 %i.fb, %i.dc
  br i1 %exitcond98.not, label %.loopexit.loopexit152, label %.lr.ph95.split.us, !llvm.loop !96

.loopexit.loopexit152:                            ; preds = %._crit_edge.us
  store <2 x double> %i.ex, ptr %3, align 8, !tbaa !20
  store double %i.ez, ptr %i.a, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph95, %.loopexit.loopexit152, %bb.t, %bb.s, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fc) #15
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fd) #15
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fe) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.u

bb.u:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ff) #15
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fg) #15
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fh) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

declare i32 @_ZNK3jxl11ImageBundle6CopyToERKNS_5RectTImEERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_6Image3IfEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3jxl6N_AVX216ComputeDistancePERKNS_5PlaneIfEERKNS_17ButteraugliParamsEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.jxl::StatusOr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree nonnull readnone align 4 captures(none) %2, double noundef %3) #8 {
bb.a:
  %4 = alloca %"class.jxl::StatusOr.1", align 8   ; 6 uses
  %5 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !18
  store double 0.000000e+00, ptr %0, align 8, !tbaa !20
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !18
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.l = mul nuw i64 %i.f, %i.b
  %i.m = uitofp i64 %i.l to double
  %i.n = fdiv double 1.000000e+00, %i.m           ; 6 uses
  %i.o = fadd double %3, -3.000000e+00
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, f0x3EB0C6F7A0B5ED8D
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %4, ptr noundef nonnull %i.j, i64 noundef 96, i64 noundef 0) #15
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !18
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(28) %4) #15
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(96) %i.w, i8 0, i64 96, i1 false)
  %i.z = load i32, ptr %i.d, align 4, !tbaa !15
  %.not205 = icmp eq i32 %i.z, 0
  br i1 %.not205, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i32, ptr %1, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph200, %._crit_edge192
  %i.ac = phi <4 x double> [ zeroinitializer, %.lr.ph200 ], [ %i.ca, %._crit_edge192 ]
  %i.ad = phi <4 x double> [ zeroinitializer, %.lr.ph200 ], [ %i.bz, %._crit_edge192 ]
  %i.ae = phi <4 x double> [ zeroinitializer, %.lr.ph200 ], [ %i.by, %._crit_edge192 ]
  %i.af = phi i32 [ %.pre, %.lr.ph200 ], [ %i.cb, %._crit_edge192 ] ; 2 uses
  %.sroa.0106.0199 = phi double [ 0.000000e+00, %.lr.ph200 ], [ %.sroa.0106.1.lcssa, %._crit_edge192 ] ; 3 uses
  %.sroa.6.0198 = phi double [ 0.000000e+00, %.lr.ph200 ], [ %.sroa.6.1.lcssa, %._crit_edge192 ] ; 3 uses
  %.sroa.9.0197 = phi double [ 0.000000e+00, %.lr.ph200 ], [ %.sroa.9.1.lcssa, %._crit_edge192 ] ; 3 uses
  %.0139196 = phi i64 [ 0, %.lr.ph200 ], [ %i.dn, %._crit_edge192 ] ; 2 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ai = mul i64 %i.ah, %.0139196
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = zext i32 %i.af to i64                   ; 2 uses
  %.not142178 = icmp ult i32 %i.af, 4
  br i1 %.not142178, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.al = add nsw i64 %i.ak, -4                   ; 2 uses
  %i.am = lshr i64 %i.al, 2                       ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter274 = and i64 %i.an, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ap = phi i64 [ 4, %.lr.ph.preheader.new ], [ %i.bl, %.lr.ph ] ; 3 uses
  %.sroa.079.0182 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bg, %.lr.ph ]
  %.sroa.077.0181 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bi, %.lr.ph ]
  %.sroa.075.0180 = phi <4 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bk, %.lr.ph ]
  %.0140179 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ]
  %niter275 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter275.next.1, %.lr.ph ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.0140179
  %i.ar = load <4 x float>, ptr %i.aq, align 32, !tbaa !26
  %i.as = fpext <4 x float> %i.ar to <4 x double> ; 3 uses
  %i.at = fmul <4 x double> %i.as, %i.as
  %i.au = fmul <4 x double> %i.at, %i.as          ; 3 uses
  %i.av = fadd <4 x double> %.sroa.079.0182, %i.au
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX219ComputeSumOfSquaresERKNS_11ImageBundleES3_RK15JxlCmsInterfacePd:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.v, align 8, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !85
  %i.af = sext i32 %i.ae to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.ph.shrunk.i = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.e ], [ 0, %bb.d ]
  %.0.i.ph.i = zext i32 %.0.i.ph.shrunk.i to i64  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.not.i5.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i5.i, label %bb.h, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = zext i32 %i.ap to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit:  ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i7.i = phi i64 [ %i.ac, %bb.f ], [ %.0.i.ph.i, %bb.h ], [ %.0.i.ph.i, %bb.i ], [ %.0.i.ph.i, %bb.g ]
  %.0.i4.i = phi i64 [ %i.af, %bb.f ], [ 0, %bb.h ], [ %i.aq, %bb.i ], [ %i.ai, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store i64 %.0.i7.i, ptr %i.ar, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.0.i4.i, ptr %i.as, align 8, !tbaa !88
  %i.at = icmp eq i32 %i.g, 1
  %i.au = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext %i.at) #15
  %i.av = call i32 @_ZNK3jxl11ImageBundle6CopyToERKNS_5RectTImEERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_6Image3IfEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(200) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %4, ptr noundef null) #15
  %i.aw = icmp eq i32 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.aw, label %bb.j, label %bb.u

bb.j:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit
  %.063 = phi ptr [ %i.b, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit ], [ %4, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, i8 0, i64 168, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !47, !range !48, !noundef !49
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %switch.i.i64 = icmp ult i32 %i.bc, 2
  %or.cond6.i.i65 = select i1 %i.ba, i1 %switch.i.i64, i1 false
  br i1 %or.cond6.i.i65, label %bb.k, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !50
  %.not2.i.i67 = icmp eq i32 %i.be, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.bg = load i32, ptr %i.bf, align 4
  %.not3.i.i68 = icmp eq i32 %i.bg, 1
  %or.cond.i.i69 = select i1 %.not2.i.i67, i1 %.not3.i.i68, i1 false
  br i1 %or.cond.i.i69, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread

_ZNK3jxl11ImageBundle6IsSRGBEv.exit71:            ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !51, !range !48, !noundef !49
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp ne i32 %i.bl, 13
  %.not84 = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %.not84, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread, label %bb.s

_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread:     ; preds = %bb.j, %bb.k, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 3 uses
  %.not1.i.i72 = icmp eq ptr %i.bo, null
  br i1 %.not1.i.i72, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %.not.i.i75 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i75, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !59
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !84
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !85
  %i.cb = sext i32 %i.ca to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.ph.shrunk.i76 = phi i32 [ %i.bp, %bb.l ], [ %i.bv, %bb.n ], [ 0, %bb.m ]
  %.0.i.ph.i77 = zext i32 %.0.i.ph.shrunk.i76 to i64 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !15 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.not.i5.i78 = icmp eq i32 %i.cd, 0
  br i1 %.not.i5.i78, label %bb.q, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !59
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !15
  %i.cm = zext i32 %i.cl to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i7.i73 = phi i64 [ %i.by, %bb.o ], [ %.0.i.ph.i77, %bb.q ], [ %.0.i.ph.i77, %bb.r ], [ %.0.i.ph.i77, %bb.p ]
  %.0.i4.i74 = phi i64 [ %i.cb, %bb.o ], [ 0, %bb.q ], [ %i.cm, %bb.r ], [ %i.ce, %bb.p ]
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  store i64 %.0.i7.i73, ptr %i.cn, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.0.i4.i74, ptr %i.co, align 8, !tbaa !88
  %i.cp = icmp eq i32 %i.bc, 1
  %i.cq = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext %i.cp) #15
  %i.cr = call i32 @_ZNK3jxl11ImageBundle6CopyToERKNS_5RectTImEERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_6Image3IfEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(200) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %6, ptr noundef null) #15
  %i.cs = icmp eq i32 %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.cs, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71
  %.062 = phi ptr [ %i.ax, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71 ], [ %6, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79 ] ; 6 uses
  %i.ct = load i32, ptr %.063, align 8, !tbaa !14 ; 3 uses
  %i.cu = load i32, ptr %.062, align 8, !tbaa !14
  %i.cv = icmp eq i32 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.063, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = icmp eq i32 %i.cx, %i.cz
  %i.db = select i1 %i.cv, i1 %i.da, i1 false
  br i1 %i.db, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.dc = zext i32 %i.cx to i64
  %.not = icmp eq i32 %i.cx, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %.062, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dh = zext i32 %i.ct to i64
  %.not96 = icmp eq i32 %i.ct, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.063, i64 40
  %.pre127 = load ptr, ptr %i.di, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %.062, i64 40
  %.pre129 = load ptr, ptr %.phi.trans.insert128, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %.063, i64 96
  %.pre132 = load ptr, ptr %.phi.trans.insert131, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %.062, i64 96
  %.pre135 = load ptr, ptr %.phi.trans.insert134, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %.063, i64 152
  %.pre138 = load ptr, ptr %.phi.trans.insert137, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %.062, i64 152
  %.pre141 = load ptr, ptr %.phi.trans.insert140, align 8, !tbaa !24 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre127, i64 64) ]
  br i1 %.not96, label %.loopexit, label %.lr.ph95.split.us

.lr.ph95.split.us:                                ; preds = %.lr.ph95, %._crit_edge.us
  %i.dj = phi double [ %i.ez, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph95 ]
  %.06193.us = phi i64 [ %i.fb, %._crit_edge.us ], [ 0, %.lr.ph95 ] ; 3 uses
  %i.dk = phi <2 x double> [ %i.ex, %._crit_edge.us ], [ zeroinitializer, %.lr.ph95 ]
  %i.dl = mul i64 %i.de, %.06193.us               ; 3 uses
  %i.dm = mul i64 %i.dg, %.06193.us               ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre127, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dn, i64 64), "align"(ptr %.pre129, i64 64) ]
  %i.do = getelementptr inbounds nuw i8, ptr %.pre129, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64), "align"(ptr %.pre132, i64 64) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre132, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dp, i64 64), "align"(ptr %.pre135, i64 64) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre135, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64), "align"(ptr %.pre138, i64 64) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre138, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dr, i64 64), "align"(ptr %.pre141, i64 64) ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre141, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  br label %.preheader86.us

.preheader86.us:                                  ; preds = %.lr.ph95.split.us, %.preheader86.us
  %i.dt = phi double [ %i.ez, %.preheader86.us ], [ %i.dj, %.lr.ph95.split.us ]
  %.05992.us = phi i64 [ %i.fa, %.preheader86.us ], [ 0, %.lr.ph95.split.us ] ; 7 uses
  %i.du = phi <2 x double> [ %i.ex, %.preheader86.us ], [ %i.dk, %.lr.ph95.split.us ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.05992.us
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !29
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.05992.us
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !29
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.05992.us
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !29
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.05992.us
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !29
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.05992.us
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !29
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.05992.us
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !29
  %i.eh = fsub float %i.dw, %i.dy                 ; 2 uses
  %i.ei = fsub float %i.ea, %i.ec                 ; 2 uses
  %i.ej = fsub float %i.ee, %i.eg                 ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> <float 2.990000e-01, float -1.471300e-01>, <2 x float> zeroinitializer)
  %i.en = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> <float 5.870000e-01, float -2.888600e-01>, <2 x float> %i.em)
  %i.eq = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> <float 1.140000e-01, float 4.360000e-01>, <2 x float> %i.ep)
  %i.et = call float @llvm.fmuladd.f32(float %i.eh, float 6.150000e-01, float 0.000000e+00)
  %i.eu = call float @llvm.fmuladd.f32(float %i.ei, float -5.149900e-01, float %i.et)
  %i.ev = call float @llvm.fmuladd.f32(float %i.ej, float -1.000100e-01, float %i.eu)
  %i.ew = fpext <2 x float> %i.es to <2 x double> ; 2 uses
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ew, <2 x double> %i.du) ; 3 uses
  %i.ey = fpext float %i.ev to double             ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.dt) ; 3 uses
  %i.fa = add nuw nsw i64 %.05992.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.fa, %i.dh
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader86.us, !llvm.loop !102

._crit_edge.us:                                   ; preds = %.preheader86.us
  %i.fb = add nuw nsw i64 %.06193.us, 1           ; 2 uses
  %exitcond98.not = icmp eq i64 %i.fb, %i.dc
  br i1 %exitcond98.not, label %.loopexit.loopexit152, label %.lr.ph95.split.us, !llvm.loop !103

.loopexit.loopexit152:                            ; preds = %._crit_edge.us
  store <2 x double> %i.ex, ptr %3, align 8, !tbaa !20
  store double %i.ez, ptr %i.a, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph95, %.loopexit.loopexit152, %bb.t, %bb.s, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fc) #15
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fd) #15
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fe) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.u

bb.u:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ff) #15
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fg) #15
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fh) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3jxl6N_SSE216ComputeDistancePERKNS_5PlaneIfEERKNS_17ButteraugliParamsEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.jxl::StatusOr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree nonnull readnone align 4 captures(none) %2, double noundef %3) #10 {
bb.a:
  %4 = alloca %"class.jxl::StatusOr.1", align 8   ; 6 uses
  %5 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !18
  store double 0.000000e+00, ptr %0, align 8, !tbaa !20
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !18
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.l = mul nuw i64 %i.f, %i.b
  %i.m = uitofp i64 %i.l to double
  %i.n = fdiv double 1.000000e+00, %i.m           ; 5 uses
  %i.o = fadd double %3, -3.000000e+00
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, f0x3EB0C6F7A0B5ED8D
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %4, ptr noundef nonnull %i.j, i64 noundef 48, i64 noundef 0) #15
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.u, align 8, !tbaa !18
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(28) %4) #15
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.w, i8 0, i64 48, i1 false)
  %i.z = load i32, ptr %i.d, align 4, !tbaa !15
  %.not202 = icmp eq i32 %i.z, 0
  br i1 %.not202, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %.critedge
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i32, ptr %1, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph197, %._crit_edge189
  %i.ac = phi <2 x double> [ zeroinitializer, %.lr.ph197 ], [ %i.cb, %._crit_edge189 ]
  %i.ad = phi <2 x double> [ zeroinitializer, %.lr.ph197 ], [ %i.ca, %._crit_edge189 ]
  %i.ae = phi <2 x double> [ zeroinitializer, %.lr.ph197 ], [ %i.bz, %._crit_edge189 ]
  %i.af = phi i32 [ %.pre, %.lr.ph197 ], [ %i.cc, %._crit_edge189 ] ; 2 uses
  %.sroa.9.0194 = phi double [ 0.000000e+00, %.lr.ph197 ], [ %.sroa.9.1.lcssa, %._crit_edge189 ] ; 3 uses
  %.0139193 = phi i64 [ 0, %.lr.ph197 ], [ %i.dt, %._crit_edge189 ] ; 2 uses
  %i.ag = phi <2 x double> [ zeroinitializer, %.lr.ph197 ], [ %i.ds, %._crit_edge189 ] ; 3 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.aj = mul i64 %i.ai, %.0139193
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %i.al = zext i32 %i.af to i64                   ; 2 uses
  %.not142175 = icmp ult i32 %i.af, 2
  br i1 %.not142175, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.am = add nsw i64 %i.al, -2                   ; 2 uses
  %i.an = lshr i64 %i.am, 1                       ; 2 uses
  %i.ao = add nuw i64 %i.an, 1                    ; 2 uses
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter267 = and i64 %i.ao, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.aq = phi i64 [ 2, %.lr.ph.preheader.new ], [ %i.bm, %.lr.ph ] ; 3 uses
  %.sroa.079.0179 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bh, %.lr.ph ]
  %.sroa.077.0178 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ]
  %.sroa.075.0177 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bl, %.lr.ph ]
  %.0140176 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ]
  %niter268 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter268.next.1, %.lr.ph ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0140176
  %i.as = load <2 x float>, ptr %i.ar, align 16, !tbaa !26
  %i.at = fpext <2 x float> %i.as to <2 x double> ; 3 uses
  %i.au = fmul <2 x double> %i.at, %i.at
  %i.av = fmul <2 x double> %i.au, %i.at          ; 3 uses
  %i.aw = fadd <2 x double> %.sroa.079.0179, %i.av
  %i.ax = fmul <2 x double> %i.av, %i.av          ; 3 uses
  %i.ay = fadd <2 x double> %.sroa.077.0178, %i.ax
  %i.az = fmul <2 x double> %i.ax, %i.ax
  %i.ba = fadd <2 x double> %.sroa.075.0177, %i.az
  %i.bb = add nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aq
  %i.bd = load <2 x float>, ptr %i.bc, align 8, !tbaa !26
  %i.be = fpext <2 x float> %i.bd to <2 x double> ; 3 uses
  %i.bf = fmul <2 x double> %i.be, %i.be
  %i.bg = fmul <2 x double> %i.bf, %i.be          ; 3 uses
  %i.bh = fadd <2 x double> %i.aw, %i.bg          ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE219ComputeSumOfSquaresERKNS_11ImageBundleES3_RK15JxlCmsInterfacePd:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.v, align 8, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !85
  %i.af = sext i32 %i.ae to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.ph.shrunk.i = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.e ], [ 0, %bb.d ]
  %.0.i.ph.i = zext i32 %.0.i.ph.shrunk.i to i64  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.not.i5.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i5.i, label %bb.h, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !59
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = zext i32 %i.ap to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit

_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit:  ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i7.i = phi i64 [ %i.ac, %bb.f ], [ %.0.i.ph.i, %bb.h ], [ %.0.i.ph.i, %bb.i ], [ %.0.i.ph.i, %bb.g ]
  %.0.i4.i = phi i64 [ %i.af, %bb.f ], [ 0, %bb.h ], [ %i.aq, %bb.i ], [ %i.ai, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store i64 %.0.i7.i, ptr %i.ar, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.0.i4.i, ptr %i.as, align 8, !tbaa !88
  %i.at = icmp eq i32 %i.g, 1
  %i.au = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext %i.at) #15
  %i.av = call i32 @_ZNK3jxl11ImageBundle6CopyToERKNS_5RectTImEERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_6Image3IfEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(200) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %4, ptr noundef null) #15
  %i.aw = icmp eq i32 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.aw, label %bb.j, label %bb.u

bb.j:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit
  %.063 = phi ptr [ %i.b, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit ], [ %4, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %6, i8 0, i64 168, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !47, !range !48, !noundef !49
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %switch.i.i64 = icmp ult i32 %i.bc, 2
  %or.cond6.i.i65 = select i1 %i.ba, i1 %switch.i.i64, i1 false
  br i1 %or.cond6.i.i65, label %bb.k, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !50
  %.not2.i.i67 = icmp eq i32 %i.be, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.bg = load i32, ptr %i.bf, align 4
  %.not3.i.i68 = icmp eq i32 %i.bg, 1
  %or.cond.i.i69 = select i1 %.not2.i.i67, i1 %.not3.i.i68, i1 false
  br i1 %or.cond.i.i69, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread

_ZNK3jxl11ImageBundle6IsSRGBEv.exit71:            ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !51, !range !48, !noundef !49
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp ne i32 %i.bl, 13
  %.not84 = select i1 %i.bj, i1 true, i1 %i.bm
  br i1 %.not84, label %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread, label %bb.s

_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread:     ; preds = %bb.j, %bb.k, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 3 uses
  %.not1.i.i72 = icmp eq ptr %i.bo, null
  br i1 %.not1.i.i72, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %.not.i.i75 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i75, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !58 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !59
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !14
  br label %bb.p

bb.o:                                             ; preds = %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !84
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !85
  %i.cb = sext i32 %i.ca to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0.i.ph.shrunk.i76 = phi i32 [ %i.bp, %bb.l ], [ %i.bv, %bb.n ], [ 0, %bb.m ]
  %.0.i.ph.i77 = zext i32 %.0.i.ph.shrunk.i76 to i64 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !15 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.not.i5.i78 = icmp eq i32 %i.cd, 0
  br i1 %.not.i5.i78, label %bb.q, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !59
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !15
  %i.cm = zext i32 %i.cl to i64
  br label %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79

_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79: ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i7.i73 = phi i64 [ %i.by, %bb.o ], [ %.0.i.ph.i77, %bb.q ], [ %.0.i.ph.i77, %bb.r ], [ %.0.i.ph.i77, %bb.p ]
  %.0.i4.i74 = phi i64 [ %i.cb, %bb.o ], [ 0, %bb.q ], [ %i.cm, %bb.r ], [ %i.ce, %bb.p ]
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  store i64 %.0.i7.i73, ptr %i.cn, align 8, !tbaa !87
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.0.i4.i74, ptr %i.co, align 8, !tbaa !88
  %i.cp = icmp eq i32 %i.bc, 1
  %i.cq = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext %i.cp) #15
  %i.cr = call i32 @_ZNK3jxl11ImageBundle6CopyToERKNS_5RectTImEERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_6Image3IfEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(200) %i.cq, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %6, ptr noundef null) #15
  %i.cs = icmp eq i32 %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.cs, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71
  %.062 = phi ptr [ %i.ax, %_ZNK3jxl11ImageBundle6IsSRGBEv.exit71 ], [ %6, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79 ] ; 6 uses
  %i.ct = load i32, ptr %.063, align 8, !tbaa !14 ; 3 uses
  %i.cu = load i32, ptr %.062, align 8, !tbaa !14
  %i.cv = icmp eq i32 %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.063, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = icmp eq i32 %i.cx, %i.cz
  %i.db = select i1 %i.cv, i1 %i.da, i1 false
  br i1 %i.db, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.dc = zext i32 %i.cx to i64
  %.not = icmp eq i32 %i.cx, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not, label %.loopexit, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %.062, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dh = zext i32 %i.ct to i64
  %.not96 = icmp eq i32 %i.ct, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.063, i64 40
  %.pre127 = load ptr, ptr %i.di, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %.062, i64 40
  %.pre129 = load ptr, ptr %.phi.trans.insert128, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %.063, i64 96
  %.pre132 = load ptr, ptr %.phi.trans.insert131, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %.062, i64 96
  %.pre135 = load ptr, ptr %.phi.trans.insert134, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %.063, i64 152
  %.pre138 = load ptr, ptr %.phi.trans.insert137, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert140 = getelementptr inbounds nuw i8, ptr %.062, i64 152
  %.pre141 = load ptr, ptr %.phi.trans.insert140, align 8, !tbaa !24 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre127, i64 64) ]
  br i1 %.not96, label %.loopexit, label %.lr.ph95.split.us

.lr.ph95.split.us:                                ; preds = %.lr.ph95, %._crit_edge.us
  %i.dj = phi double [ %i.ez, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph95 ]
  %.06193.us = phi i64 [ %i.fb, %._crit_edge.us ], [ 0, %.lr.ph95 ] ; 3 uses
  %i.dk = phi <2 x double> [ %i.ex, %._crit_edge.us ], [ zeroinitializer, %.lr.ph95 ]
  %i.dl = mul i64 %i.de, %.06193.us               ; 3 uses
  %i.dm = mul i64 %i.dg, %.06193.us               ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre127, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dn, i64 64), "align"(ptr %.pre129, i64 64) ]
  %i.do = getelementptr inbounds nuw i8, ptr %.pre129, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64), "align"(ptr %.pre132, i64 64) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre132, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dp, i64 64), "align"(ptr %.pre135, i64 64) ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre135, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64), "align"(ptr %.pre138, i64 64) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre138, i64 %i.dl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dr, i64 64), "align"(ptr %.pre141, i64 64) ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre141, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  br label %.preheader86.us

.preheader86.us:                                  ; preds = %.lr.ph95.split.us, %.preheader86.us
  %i.dt = phi double [ %i.ez, %.preheader86.us ], [ %i.dj, %.lr.ph95.split.us ]
  %.05992.us = phi i64 [ %i.fa, %.preheader86.us ], [ 0, %.lr.ph95.split.us ] ; 7 uses
  %i.du = phi <2 x double> [ %i.ex, %.preheader86.us ], [ %i.dk, %.lr.ph95.split.us ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.05992.us
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !29
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.05992.us
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !29
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.05992.us
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !29
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.05992.us
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !29
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.05992.us
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !29
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.05992.us
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !29
  %i.eh = fsub float %i.dw, %i.dy                 ; 2 uses
  %i.ei = fsub float %i.ea, %i.ec                 ; 2 uses
  %i.ej = fsub float %i.ee, %i.eg                 ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> <float 2.990000e-01, float -1.471300e-01>, <2 x float> zeroinitializer)
  %i.en = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> <float 5.870000e-01, float -2.888600e-01>, <2 x float> %i.em)
  %i.eq = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> <float 1.140000e-01, float 4.360000e-01>, <2 x float> %i.ep)
  %i.et = call float @llvm.fmuladd.f32(float %i.eh, float 6.150000e-01, float 0.000000e+00)
  %i.eu = call float @llvm.fmuladd.f32(float %i.ei, float -5.149900e-01, float %i.et)
  %i.ev = call float @llvm.fmuladd.f32(float %i.ej, float -1.000100e-01, float %i.eu)
  %i.ew = fpext <2 x float> %i.es to <2 x double> ; 2 uses
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ew, <2 x double> %i.du) ; 3 uses
  %i.ey = fpext float %i.ev to double             ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.dt) ; 3 uses
  %i.fa = add nuw nsw i64 %.05992.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.fa, %i.dh
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader86.us, !llvm.loop !109

._crit_edge.us:                                   ; preds = %.preheader86.us
  %i.fb = add nuw nsw i64 %.06193.us, 1           ; 2 uses
  %exitcond98.not = icmp eq i64 %i.fb, %i.dc
  br i1 %exitcond98.not, label %.loopexit.loopexit152, label %.lr.ph95.split.us, !llvm.loop !110

.loopexit.loopexit152:                            ; preds = %._crit_edge.us
  store <2 x double> %i.ex, ptr %3, align 8, !tbaa !20
  store double %i.ez, ptr %i.a, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph95, %.loopexit.loopexit152, %bb.t, %bb.s, %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit79
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fc) #15
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fd) #15
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fe) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.u

bb.u:                                             ; preds = %_ZN3jxl5RectTImEC2INS_11ImageBundleEEERKT_.exit, %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ff) #15
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fg) #15
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fh) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3jxl16ComputeDistancePERKNS_5PlaneIfEERKNS_17ButteraugliParamsEd(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, double noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #15
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = and i64 %i.b, 103425
  %i.d = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.c, i1 true)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL36ComputeDistancePHighwayDispatchTableE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89
  tail call void %i.f(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, double noundef %3) #15
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZN3jxl16ComputeDistance2ERKNS_11ImageBundleES2_RK15JxlCmsInterface(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #15
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = and i64 %i.c, 103425
  %i.e = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.d, i1 true)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL39ComputeSumOfSquaresHighwayDispatchTableE, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a) #15
  %i.h = load double, ptr %i.a, align 16, !tbaa !20
  %i.i = call double @sqrt(double noundef %i.h) #15
  %i.j = call double @llvm.fmuladd.f64(double %i.i, double 7.500000e-01, double 0.000000e+00)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !20
  %i.m = call double @sqrt(double noundef %i.l) #15
  %i.n = call double @llvm.fmuladd.f64(double %i.m, double 1.250000e-01, double %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load double, ptr %i.o, align 16, !tbaa !20
  %i.q = call double @sqrt(double noundef %i.p) #15
  %i.r = call double @llvm.fmuladd.f64(double %i.q, double 1.250000e-01, double %i.n) ; 2 uses
  %i.s = fmul double %i.r, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret double %i.s
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZN3jxl11ComputePSNRERKNS_11ImageBundleES2_RK15JxlCmsInterface(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  %.not1.i.i = icmp eq ptr %i.c, null             ; 2 uses
  br i1 %.not1.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !84
  %i.f = sext i32 %i.e to i64
  br label %_ZNK3jxl11ImageBundle5xsizeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK3jxl11ImageBundle5xsizeEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZNK3jxl11ImageBundle5xsizeEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.k, align 8, !tbaa !14
  %i.p = zext i32 %i.o to i64
  br label %_ZNK3jxl11ImageBundle5xsizeEv.exit.i

_ZNK3jxl11ImageBundle5xsizeEv.exit.i:             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.d ], [ %i.p, %bb.e ], [ %i.i, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 3 uses
  %.not1.i4.i = icmp eq ptr %i.r, null            ; 2 uses
  br i1 %.not1.i4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK3jxl11ImageBundle5xsizeEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !84
  %i.u = sext i32 %i.t to i64
  br label %_ZNK3jxl11ImageBundle5xsizeEv.exit7.i

bb.g:                                             ; preds = %_ZNK3jxl11ImageBundle5xsizeEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !14   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.not.i6.i = icmp eq i32 %i.w, 0
  br i1 %.not.i6.i, label %bb.h, label %_ZNK3jxl11ImageBundle5xsizeEv.exit7.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZNK3jxl11ImageBundle5xsizeEv.exit7.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !14
  %i.ae = zext i32 %i.ad to i64
  br label %_ZNK3jxl11ImageBundle5xsizeEv.exit7.i

_ZNK3jxl11ImageBundle5xsizeEv.exit7.i:            ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.0.i5.i = phi i64 [ %i.u, %bb.f ], [ 0, %bb.h ], [ %i.ae, %bb.i ], [ %i.x, %bb.g ]
  %i.af = icmp eq i64 %.0.i.i, %.0.i5.i
  br i1 %i.af, label %bb.j, label %_ZN3jxl8SameSizeINS_11ImageBundleES1_EEbRKT_RKT0_.exit.thread

bb.j:                                             ; preds = %_ZNK3jxl11ImageBundle5xsizeEv.exit7.i
  br i1 %.not1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !85
end_hunk_2
