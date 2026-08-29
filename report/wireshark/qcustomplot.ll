Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN12QCPPolarGrid14drawRadialGridEP10QCPPainterRK7QPointFRK5QListIdERK4QPenSB_:bb.a
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fsub <2 x double> %i.av, %i.ax
  store <2 x double> %i.ay, ptr %6, align 16
  store double %i.au, ptr %i.ad, align 16
  store double %i.au, ptr %i.ae, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %i.az = add i32 %.039.us, 1                     ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = load i64, ptr %i.i, align 8
  %i.bc = icmp sgt i64 %i.bb, %i.ba
  br i1 %i.bc, label %.lr.ph.split.us, label %_ZNK8QPointerI18QCPPolarAxisRadialEcvPS0_Ev.exit.thread, !llvm.loop !1507

bb.i:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  resume { ptr, i32 } %i.bd

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %i.be = phi i64 [ %i.cm, %bb.p ], [ 0, %.lr.ph ]
  %.039 = phi i32 [ %i.cl, %bb.p ], [ 0, %.lr.ph ]
  %i.bf = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZNK8QPointerI18QCPPolarAxisRadialEptEv.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load atomic i32, ptr %i.bh monotonic, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZNK8QPointerI18QCPPolarAxisRadialEptEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.g, align 8
  br label %_ZNK8QPointerI18QCPPolarAxisRadialEptEv.exit

_ZNK8QPointerI18QCPPolarAxisRadialEptEv.exit:     ; preds = %.lr.ph.split, %bb.j, %bb.k
  %i.bl = phi ptr [ %i.bk, %bb.k ], [ null, %bb.j ], [ null, %.lr.ph.split ]
  %i.bm = load ptr, ptr %i.m, align 8
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %i.be
  %i.bo = load double, ptr %i.bn, align 8         ; 2 uses
  %i.bp = call noundef double @_ZNK18QCPPolarAxisRadial13coordToRadiusEd(ptr noundef align 8 dereferenceable_or_null(776) %i.bl, double noundef %i.bo) ; 4 uses
  %i.bq = call double @llvm.fabs.f64(double %i.bo)
  %i.br = fcmp olt double %i.bq, %i.x
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNK8QPointerI18QCPPolarAxisRadialEptEv.exit
  %i.bs = load i8, ptr %i.af, align 1, !range !6, !noundef !7
  %i.bt = trunc nuw i8 %i.bs to i1
  call void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef align 8 dereferenceable_or_null(57) %0, ptr noundef %1, i1 noundef zeroext %i.bt, i32 noundef 512)
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %5)
  %i.bu = load i32, ptr %i.y, align 4
  %i.bv = and i32 %i.bu, 4
  %.not.i32 = icmp eq i32 %i.bv, 0
  br i1 %.not.i32, label %_ZN10QCPPainter6setPenERK4QPen.exit33, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit33

_ZN10QCPPainter6setPenERK4QPen.exit33:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  %i.bw = fmul double %i.bp, 2.000000e+00         ; 2 uses
  %i.bx = load <2 x double>, ptr %2, align 8
  %i.by = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fsub <2 x double> %i.bx, %i.bz
  store <2 x double> %i.ca, ptr %7, align 16
  store double %i.bw, ptr %i.ag, align 16
  store double %i.bw, ptr %i.ah, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %4)
  %i.cb = load i32, ptr %i.y, align 4
  %i.cc = and i32 %i.cb, 4
  %.not.i34 = icmp eq i32 %i.cc, 0
  br i1 %.not.i34, label %_ZN10QCPPainter6setPenERK4QPen.exit35, label %bb.n

bb.n:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit33
  call void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  br label %_ZN10QCPPainter6setPenERK4QPen.exit35

_ZN10QCPPainter6setPenERK4QPen.exit35:            ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit33, %bb.n
  %i.cd = load ptr, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef align 8 dereferenceable_or_null(136) %0, ptr noundef %1)
  br label %bb.p

bb.o:                                             ; preds = %_ZNK8QPointerI18QCPPolarAxisRadialEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.cg = fmul double %i.bp, 2.000000e+00         ; 2 uses
  %i.ch = load <2 x double>, ptr %2, align 8
  %i.ci = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fsub <2 x double> %i.ch, %i.cj
  store <2 x double> %i.ck, ptr %6, align 16
  store double %i.cg, ptr %i.ad, align 16
  store double %i.cg, ptr %i.ae, align 8
  call void @_ZN8QPainter11drawEllipseERK6QRectF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN10QCPPainter6setPenERK4QPen.exit35
  %i.cl = add i32 %.039, 1                        ; 2 uses
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = load i64, ptr %i.i, align 8
  %i.co = icmp sgt i64 %i.cn, %i.cm
  br i1 %i.co, label %.lr.ph.split, label %_ZNK8QPointerI18QCPPolarAxisRadialEcvPS0_Ev.exit.thread, !llvm.loop !1507

_ZNK8QPointerI18QCPPolarAxisRadialEcvPS0_Ev.exit.thread: ; preds = %bb.p, %_ZNK8QPointerI18QCPPolarAxisRadialEptEv.exit.us, %_ZN10QCPPainter6setPenERK4QPen.exit, %bb.a, %bb.b, %bb.c, %_ZNK8QPointerI18QCPPolarAxisRadialEcvPS0_Ev.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18QCPPolarLegendItemC2EP9QCPLegendP13QCPPolarGraph(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN21QCPAbstractLegendItemC2EP9QCPLegend(ptr noundef align 8 dereferenceable_or_null(242) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTV18QCPPolarLegendItem, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 56
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN18QCPPolarLegendItem4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.QRect, align 4               ; 7 uses
  %3 = alloca %class.QRect, align 4               ; 7 uses
  %4 = alloca %class.QFont, align 8               ; 7 uses
  %5 = alloca %class.QPen, align 8                ; 7 uses
  %6 = alloca %class.QColor, align 8              ; 6 uses
  %7 = alloca %class.QFontMetrics, align 8        ; 7 uses
  %8 = alloca %class.QString, align 16            ; 10 uses
  %9 = alloca %class.QRectF, align 8              ; 10 uses
  %10 = alloca %class.QString, align 16           ; 10 uses
  %11 = alloca %class.QPen, align 8               ; 7 uses
  %12 = alloca %class.QPen, align 8               ; 7 uses
  %13 = alloca %class.QRect, align 8              ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 248        ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.d = getelementptr i8, ptr %0, i64 241        ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !range !6, !noalias !1508, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  %.v.i = select i1 %i.f, i64 208, i64 176
  %i.g = getelementptr i8, ptr %0, i64 %.v.i
  call void @_ZN5QFontC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(12) %4, ptr noundef align 8 dereferenceable(12) %i.g)
  invoke void @_ZN8QPainter7setFontERK5QFont(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.h = load i8, ptr %i.d, align 1, !range !6, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  %.v.i27 = select i1 %i.i, i64 224, i64 192
  %i.j = getelementptr i8, ptr %0, i64 %.v.i27    ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef nonnull align 4 dereferenceable(14) %6)
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN10QCPPainter6setPenERK4QPen.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit unwind label %bb.o

_ZN10QCPPainter6setPenERK4QPen.exit:              ; preds = %.noexc, %bb.d
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.n = getelementptr i8, ptr %0, i64 168        ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 312
  %.sroa.0.0.copyload.i29 = load i64, ptr %i.p, align 8 ; 2 uses
  %.sroa.063.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i29 to i32
  %.sroa.464.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i29, 32
  %.sroa.464.0.extract.trunc = trunc nuw i64 %.sroa.464.0.extract.shift to i32 ; 3 uses
  %i.q = sitofp i32 %.sroa.063.0.extract.trunc to double ; 2 uses
  %i.r = sitofp i32 %.sroa.464.0.extract.trunc to double
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZNK8QPainter11fontMetricsEv(ptr dead_on_unwind nonnull writable sret(%class.QFontMetrics) align 8 %7, ptr noundef align 8 dereferenceable_or_null(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  %i.t = getelementptr i8, ptr %i.s, i64 160      ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !noalias !1511
  %i.v = load ptr, ptr %i.t, align 8, !noalias !1511 ; 2 uses
  store <2 x ptr> %i.u, ptr %8, align 16, !alias.scope !1511
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = getelementptr i8, ptr %i.s, i64 176
  %i.y = load i64, ptr %i.x, align 8, !noalias !1511
  store i64 %i.y, ptr %i.w, align 16, !alias.scope !1511
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNK13QCPPolarGraph4nameEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit
  %i.z = atomicrmw add ptr %i.v, i32 1 acq_rel, align 4, !noalias !1511 ; 0 uses
  br label %_ZNK13QCPPolarGraph4nameEv.exit

_ZNK13QCPPolarGraph4nameEv.exit:                  ; preds = %_ZN10QCPPainter6setPenERK4QPen.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  store i32 0, ptr %3, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ad = add i32 %.sroa.464.0.extract.trunc, -1
  store i32 %i.ad, ptr %i.ac, align 4
  %i.ae = invoke { i64, i64 } @_ZNK12QFontMetrics12boundingRectERK5QRectiRK7QStringiPi(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0, ptr noundef null)
          to label %bb.f unwind label %bb.p       ; 2 uses

bb.f:                                             ; preds = %_ZNK13QCPPolarGraph4nameEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 2 uses
  %.sroa.055.0.extract.trunc = trunc i64 %i.af to i32
  %.sroa.055.4.extract.shift = lshr i64 %i.af, 32
  %.sroa.055.4.extract.trunc = trunc nuw i64 %.sroa.055.4.extract.shift to i32
  %.sroa.8.8.extract.trunc = trunc i64 %i.ag to i32
  %.sroa.8.12.extract.shift = lshr i64 %i.ag, 32
  %.sroa.8.12.extract.trunc = trunc nuw i64 %.sroa.8.12.extract.shift to i32
  %i.ah = add i32 %.sroa.8.12.extract.trunc, 1
  %i.ai = sub i32 %i.ah, %.sroa.055.4.extract.trunc
  %i.aj = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.f
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i, label %bb.g, label %_ZN7QStringD2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.al = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  %i.am = getelementptr i8, ptr %0, i64 92
  %i.an = load i64, ptr %i.am, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.an to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.an, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 3 uses
  %i.ao = sitofp i32 %.sroa.0.0.extract.trunc to double ; 2 uses
  %i.ap = sitofp i32 %.sroa.4.0.extract.trunc to double
  store double %i.ao, ptr %9, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.q, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 24
  store double %i.r, ptr %i.as, align 8
  %.sroa.speculated69 = call i32 @llvm.smax.i32(i32 %i.ai, i32 %.sroa.464.0.extract.trunc)
  %i.at = fadd double %i.q, %i.ao
  %i.au = load ptr, ptr %i.n, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 320
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fadd double %i.at, %i.ax
  %i.az = fptosi double %i.ay to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.ba = load ptr, ptr %i.b, align 8             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.bb = getelementptr i8, ptr %i.ba, i64 160    ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !noalias !1514
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !1514 ; 2 uses
  store <2 x ptr> %i.bc, ptr %10, align 16, !alias.scope !1514
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bf = getelementptr i8, ptr %i.ba, i64 176
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1514
  store i64 %i.bg, ptr %i.be, align 16, !alias.scope !1514
  %.not.i.i.i.i31 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i31, label %_ZNK13QCPPolarGraph4nameEv.exit32, label %bb.h

bb.h:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.bh = atomicrmw add ptr %i.bd, i32 1 acq_rel, align 4, !noalias !1514 ; 0 uses
  br label %_ZNK13QCPPolarGraph4nameEv.exit32

_ZNK13QCPPolarGraph4nameEv.exit32:                ; preds = %_ZN7QStringD2Ev.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  store i32 %i.az, ptr %2, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.4.0.extract.trunc, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = sub i32 %.sroa.8.8.extract.trunc, %.sroa.055.0.extract.trunc
  %i.bl = add i32 %i.bk, %i.az
  store i32 %i.bl, ptr %i.bj, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bn = add i32 %.sroa.speculated69, -1
  %i.bo = add i32 %i.bn, %.sroa.4.0.extract.trunc
  store i32 %i.bo, ptr %i.bm, align 4
  invoke void @_ZN8QPainter8drawTextERK5QRectiRK7QStringPS0_(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 512, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef null)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZNK13QCPPolarGraph4nameEv.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.bp = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i34, label %_ZN7QStringD2Ev.exit37, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35:    ; preds = %bb.i
  %i.bq = atomicrmw sub ptr %i.bp, i32 1 acq_rel, align 4
  %.not.i.i36 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i36, label %bb.j, label %_ZN7QStringD2Ev.exit37

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35
  %i.br = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit37

_ZN7QStringD2Ev.exit37:                           ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  %i.bs = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.bt = getelementptr i8, ptr %1, i64 12
  %i.bu = load i8, ptr %i.bt, align 4, !range !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bu, ptr %i.a, align 1
  %i.bv = getelementptr i8, ptr %1, i64 32
  %i.bw = load i64, ptr %i.bv, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIbE7emplaceIJRbEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.bs, i64 noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.bx = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.thread.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.i.i.i.i.i.i.i

_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN7QStringD2Ev.exit37
  %i.by = load atomic i32, ptr %i.bx monotonic, align 4
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.thread.i.i.i.i.i.i.i, label %_ZN10QCPPainter4saveEv.exit

_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.i.i.i.i.i.i.i, %_ZN7QStringD2Ev.exit37
  call void @_ZN17QArrayDataPointerIbE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.bs, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN10QCPPainter4saveEv.exit

_ZN10QCPPainter4saveEv.exit:                      ; preds = %_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.i.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIbE11needsDetachEv.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN8QPainter4saveEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  call void @_ZN8QPainter11setClipRectERK6QRectFN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 2)
  %i.ca = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 248
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef align 8 dereferenceable_or_null(280) %i.ca, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @_ZN10QCPPainter7restoreEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.ce = load i8, ptr %i.d, align 1, !range !6, !noalias !1517, !noundef !7
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load ptr, ptr %i.n, align 8, !noalias !1517
  %..i = select i1 %i.cf, i64 344, i64 264
  %i.ch = getelementptr i8, ptr %i.cg, i64 %..i
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %11, ptr noundef align 8 dereferenceable(8) %i.ch) #51
  %i.ci = invoke noundef i32 @_ZNK4QPen5styleEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %11)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZN10QCPPainter4saveEv.exit
  %.not23 = icmp eq i32 %i.ci, 0
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br i1 %.not23, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  %i.cj = load i8, ptr %i.d, align 1, !range !6, !noalias !1520, !noundef !7
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = load ptr, ptr %i.n, align 8, !noalias !1520
  %..i38 = select i1 %i.ck, i64 344, i64 264
  %i.cm = getelementptr i8, ptr %i.cl, i64 %..i38
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %12, ptr noundef align 8 dereferenceable(8) %i.cm) #51
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc40 unwind label %bb.u

.noexc40:                                         ; preds = %bb.l
  %i.cn = load i32, ptr %i.k, align 8
  %i.co = and i32 %i.cn, 4
  %.not.i39 = icmp eq i32 %i.co, 0
  br i1 %.not.i39, label %_ZN10QCPPainter6setPenERK4QPen.exit42, label %bb.m

bb.m:                                             ; preds = %.noexc40
  invoke void @_ZN10QCPPainter15makeNonCosmeticEv(ptr noundef align 8 dereferenceable_or_null(40) %1)
          to label %_ZN10QCPPainter6setPenERK4QPen.exit42 unwind label %bb.u

_ZN10QCPPainter6setPenERK4QPen.exit42:            ; preds = %.noexc40, %bb.m
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %12) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  call void @_ZN8QPainter8setBrushEN2Qt10BrushStyleE(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 0)
  %i.cp = call noundef align 8 dereferenceable(8) ptr @_ZNK8QPainter3penEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
  %i.cq = call noundef double @_ZNK4QPen6widthFEv(ptr noundef align 8 dereferenceable_or_null(8) %i.cp)
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = call double @llvm.ceil.f64(double %i.cr)
  %i.ct = fptosi double %i.cs to i32              ; 2 uses
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  %i.cv = getelementptr i8, ptr %0, i64 108
  %i.cw = xor i32 %i.ct, -1                       ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4
  %i.cy = add i32 %i.cx, %i.cw
  %i.cz = getelementptr i8, ptr %0, i64 112
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = add i32 %i.da, %i.cw
  %i.dc = getelementptr i8, ptr %0, i64 116
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = add i32 %i.dd, %i.cu
  %i.df = getelementptr i8, ptr %0, i64 120
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = add i32 %i.dg, %i.cu
  %.sroa.2.0.insert.ext.i = zext i32 %i.db to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.06.0.insert.ext.i = zext i32 %i.cy to i64
  %.sroa.06.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.06.0.insert.ext.i
  %.sroa.5.8.insert.ext.i = zext i32 %i.dh to i64
  %.sroa.5.8.insert.shift.i = shl nuw i64 %.sroa.5.8.insert.ext.i, 32
  %.sroa.3.8.insert.ext.i = zext i32 %i.de to i64
  %.sroa.3.8.insert.insert.i = or disjoint i64 %.sroa.5.8.insert.shift.i, %.sroa.3.8.insert.ext.i
  store i64 %.sroa.06.0.insert.insert.i, ptr %13, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.3.8.insert.insert.i, ptr %i.di, align 8
  call void @_ZN8QPainter11setClipRectERK5QRectN2Qt13ClipOperationE(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  call void @_ZN8QPainter9drawRectsEPK6QRectFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 1)
  br label %bb.v

bb.n:                                             ; preds = %bb.b
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QFontD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable_or_null(12) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.y

bb.o:                                             ; preds = %bb.d, %bb.c
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.y

bb.p:                                             ; preds = %_ZNK13QCPPolarGraph4nameEv.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i45, label %_ZN7QStringD2Ev.exit48, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46:    ; preds = %bb.p
  %i.dn = atomicrmw sub ptr %i.dm, i32 1 acq_rel, align 4
  %.not.i.i47 = icmp eq i32 %i.dn, 1
  br i1 %.not.i.i47, label %bb.q, label %_ZN7QStringD2Ev.exit48

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46
  %i.do = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.do, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit48

_ZN7QStringD2Ev.exit48:                           ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  call void @_ZN12QFontMetricsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.y

bb.r:                                             ; preds = %_ZNK13QCPPolarGraph4nameEv.exit32
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i49, label %_ZN7QStringD2Ev.exit52, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50:    ; preds = %bb.r
  %i.dr = atomicrmw sub ptr %i.dq, i32 1 acq_rel, align 4
  %.not.i.i51 = icmp eq i32 %i.dr, 1
  br i1 %.not.i.i51, label %bb.s, label %_ZN7QStringD2Ev.exit52

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50
  %i.ds = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ds, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit52

_ZN7QStringD2Ev.exit52:                           ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.x

bb.t:                                             ; preds = %_ZN10QCPPainter4saveEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br label %bb.x

bb.u:                                             ; preds = %bb.m, %bb.l
  %i.du = landingpad { ptr, i32 }
          cleanup
end_hunk_0
