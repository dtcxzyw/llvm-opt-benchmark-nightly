Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lte_rlc_graph_dialog?download=true
inline.NumInlined: 1241
inline.NumDeleted: 467
begin_hunk_0_@_ZN17LteRlcGraphDialog13keyPressEventEP9QKeyEvent:bb.a
  br i1 %i.cd, label %_ZNK11CaptureFile7capFileEv.exit.i, label %_ZN17LteRlcGraphDialog9zoomYAxisEb.exit

_ZNK11CaptureFile7capFileEv.exit.i:               ; preds = %bb.t
  %i.ce = getelementptr i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %_ZN17LteRlcGraphDialog9zoomYAxisEb.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK11CaptureFile7capFileEv.exit.i
  %i.cg = getelementptr i8, ptr %0, i64 272
  %i.ch = load i32, ptr %i.cg, align 8            ; 2 uses
  %.not1.i = icmp eq i32 %i.ch, 0
  br i1 %.not1.i, label %_ZN17LteRlcGraphDialog9zoomYAxisEb.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN17LteRlcGraphDialog10goToPacketEi(ptr noundef align 8 dereferenceable_or_null(276) %0, i32 noundef %i.ch)
  br label %_ZN17LteRlcGraphDialog9zoomYAxisEb.exit

bb.w:                                             ; preds = %bb.a
  %i.ci = getelementptr i8, ptr %0, i64 152
  %i.cj = load i8, ptr %i.ci, align 8, !range !7, !noundef !8
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr i8, ptr %0, i64 144
  %i.cm = load ptr, ptr %i.cl, align 8
  %..i = select i1 %i.ck, i64 216, i64 208
  %i.cn = getelementptr i8, ptr %i.cm, i64 %..i
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void @_ZN15QAbstractButton6toggleEv(ptr noundef align 8 dereferenceable_or_null(40) %i.co)
  br label %_ZN17LteRlcGraphDialog9zoomYAxisEb.exit

bb.x:                                             ; preds = %bb.a
  %i.cp = getelementptr i8, ptr %0, i64 209       ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1
  %.not.i21 = icmp eq i8 %i.cq, 0
  %i.cr = zext i1 %.not.i21 to i8
  %i.cs = getelementptr i8, ptr %0, i64 200
  store i8 1, ptr %i.cs, align 8
  store i8 %i.cr, ptr %i.cp, align 1
  tail call void @_ZN17LteRlcGraphDialog13completeGraphEb(ptr noundef align 8 dereferenceable_or_null(276) %0, i1 noundef zeroext true)
  br label %_ZN17LteRlcGraphDialog9zoomYAxisEb.exit

_ZN17LteRlcGraphDialog9zoomYAxisEb.exit:          ; preds = %bb.v, %bb.u, %_ZNK11CaptureFile7capFileEv.exit.i, %bb.t, %bb.s, %bb.i, %bb.h, %bb.j, %bb.e, %bb.f, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.c, %bb.b, %bb.a
  tail call void @_ZN7QDialog13keyPressEventEP9QKeyEvent(ptr noundef align 8 dereferenceable_or_null(141) %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @_ZNK9QKeyEvent9modifiersEv(ptr noundef align 8 dereferenceable_or_null(82)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog8zoomAxesEb(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(276) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = tail call noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 0)
  %i.f = tail call noundef double @_ZN11QCPAxisRect15rangeZoomFactorEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(432) %i.e, i32 noundef 1) ; 2 uses
  %i.g = tail call noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 0)
  %i.h = tail call noundef double @_ZN11QCPAxisRect15rangeZoomFactorEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(432) %i.g, i32 noundef 2) ; 2 uses
  %i.i = insertelement <2 x double> poison, double %i.f, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.h, i64 1
  %i.k = fdiv <2 x double> splat (double 1.000000e+00), %i.j ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %.015 = select i1 %1, double %i.f, double %i.l
  %i.m = extractelement <2 x double> %i.k, i64 1
  %.0 = select i1 %1, double %i.h, double %i.m
  %i.n = getelementptr i8, ptr %i.d, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 304
  %.sroa.0.0.copyload.i = load double, ptr %i.p, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.o, i64 312
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.q = fsub double %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = fcmp olt double %i.q, 1.000000e+01
  br i1 %i.r, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = fcmp ogt double %i.q, 6.554600e+04
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr i8, ptr %i.d, i64 40
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 304
  %i.w = load <2 x double>, ptr %i.v, align 8
  %i.x = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.w)
  %i.y = fmul double %i.x, 5.000000e-01
  tail call void @_ZN7QCPAxis10scaleRangeEdd(ptr noundef align 8 dereferenceable_or_null(472) %i.u, double noundef %.015, double noundef %i.y)
  %i.z = getelementptr i8, ptr %i.d, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 304
  %i.ac = load <2 x double>, ptr %i.ab, align 8
  %i.ad = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ac)
  %i.ae = fmul double %i.ad, 5.000000e-01
  tail call void @_ZN7QCPAxis10scaleRangeEdd(ptr noundef align 8 dereferenceable_or_null(472) %i.aa, double noundef %.0, double noundef %i.ae)
  tail call void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog9zoomXAxisEb(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(276) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = tail call noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 0)
  %i.f = tail call noundef double @_ZN11QCPAxisRect15rangeZoomFactorEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(432) %i.e, i32 noundef 1) ; 2 uses
  %reciprocal = fdiv double 1.000000e+00, %i.f
  %.0 = select i1 %1, double %i.f, double %reciprocal
  %i.g = getelementptr i8, ptr %i.d, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 304
  %i.j = load <2 x double>, ptr %i.i, align 8
  %i.k = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.j)
  %i.l = fmul double %i.k, 5.000000e-01
  tail call void @_ZN7QCPAxis10scaleRangeEdd(ptr noundef align 8 dereferenceable_or_null(472) %i.h, double noundef %.0, double noundef %i.l)
  tail call void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 3)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog9zoomYAxisEb(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(276) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = tail call noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 0)
  %i.f = tail call noundef double @_ZN11QCPAxisRect15rangeZoomFactorEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(432) %i.e, i32 noundef 2) ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 304
  %.sroa.0.0.copyload.i = load double, ptr %i.i, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.h, i64 312
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.j = fsub double %.sroa.2.0.copyload.i, %.sroa.0.0.copyload.i ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp olt double %i.j, 1.000000e+01
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = fcmp ogt double %i.j, 6.554600e+04
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %reciprocal = fdiv double 1.000000e+00, %i.f
  %.0 = select i1 %1, double %i.f, double %reciprocal
  %i.m = fadd double %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.n = fmul double %i.m, 5.000000e-01
  tail call void @_ZN7QCPAxis10scaleRangeEdd(ptr noundef align 8 dereferenceable_or_null(472) %i.h, double noundef %.0, double noundef %i.n)
  tail call void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog7panAxesEii(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(276) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.g, i64 312
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.h = fcmp ogt double %.sroa.2.0.copyload.i, 6.553600e+04
  br i1 %i.h, label %.critedge, label %.critedge2

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %2, 0
  br i1 %i.i, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 304
  %.sroa.0.0.copyload.i28 = load double, ptr %i.l, align 8
  %i.m = fcmp olt double %.sroa.0.0.copyload.i28, 0.000000e+00
  br i1 %i.m, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %bb.b, %bb.c, %bb.d
  %i.n = icmp slt i32 %1, 0
  %i.o = getelementptr i8, ptr %i.d, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 304
  %.sroa.0.0.copyload.i33 = load double, ptr %i.q, align 8 ; 2 uses
  %i.r = fcmp olt double %.sroa.0.0.copyload.i33, 0.000000e+00
  %or.cond = select i1 %i.n, i1 %i.r, i1 false
  br i1 %or.cond, label %.critedge, label %.critedge4

.critedge4:                                       ; preds = %.critedge2
  %.sroa.2.0..sroa_idx.i39 = getelementptr i8, ptr %i.p, i64 312
  %.sroa.2.0.copyload.i40 = load double, ptr %.sroa.2.0..sroa_idx.i39, align 8
  %i.s = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %2, i64 1
  %i.u = sitofp <2 x i32> %i.t to <2 x double>
  %i.v = getelementptr i8, ptr %i.p, i64 64
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 92
  %i.y = getelementptr i8, ptr %i.w, i64 100
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = load i32, ptr %i.x, align 4
  %i.ab = getelementptr i8, ptr %i.d, i64 48      ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 304
  %i.ae = getelementptr i8, ptr %i.ac, i64 64
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 104
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr i8, ptr %i.af, i64 96
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = load <2 x double>, ptr %i.ad, align 8   ; 2 uses
  %3 = insertelement <2 x double> %i.ak, double %.sroa.2.0.copyload.i40, i64 0
  %4 = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %5 = insertelement <2 x double> %4, double %.sroa.0.0.copyload.i33, i64 0
  %i.al = fsub <2 x double> %3, %5
  %i.am = fmul <2 x double> %i.al, %i.u
  %i.an = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %i.ah, i64 1
  %i.ap = add <2 x i32> %i.ao, splat (i32 1)
  %i.aq = insertelement <2 x i32> poison, i32 %i.aa, i64 0
  %i.ar = insertelement <2 x i32> %i.aq, i32 %i.aj, i64 1
  %i.as = sub <2 x i32> %i.ap, %i.ar
  %i.at = sitofp <2 x i32> %i.as to <2 x double>
  %i.au = fdiv <2 x double> %i.am, %i.at          ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0 ; 2 uses
  %i.aw = fcmp une double %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge4
  tail call void @_ZN7QCPAxis9moveRangeEd(ptr noundef align 8 dereferenceable_or_null(472) %i.p, double noundef %i.av)
  tail call void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge4
  %i.ax = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.ay = fcmp une double %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr %i.ab, align 8
  tail call void @_ZN7QCPAxis9moveRangeEd(ptr noundef align 8 dereferenceable_or_null(472) %i.az, double noundef %i.ax)
  tail call void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513) %i.d, i32 noundef 3)
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %bb.f, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog29on_actionGoToPacket_triggeredEv(ptr noundef align 8 dereferenceable_or_null(276) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNK11CaptureFile7capFileEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !align !9   ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZNK11CaptureFile7isValidEv(ptr noundef align 8 dereferenceable_or_null(48) %i.g)
  br i1 %i.h, label %_ZNK11CaptureFile7capFileEv.exit, label %_ZNK11CaptureFile7capFileEv.exit.thread

_ZNK11CaptureFile7capFileEv.exit:                 ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNK11CaptureFile7capFileEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK11CaptureFile7capFileEv.exit
  %i.k = getelementptr i8, ptr %0, i64 272
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %.not1 = icmp eq i32 %i.l, 0
  br i1 %.not1, label %_ZNK11CaptureFile7capFileEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN17LteRlcGraphDialog10goToPacketEi(ptr noundef align 8 dereferenceable_or_null(276) %0, i32 noundef %i.l)
  br label %_ZNK11CaptureFile7capFileEv.exit.thread

_ZNK11CaptureFile7capFileEv.exit.thread:          ; preds = %bb.b, %bb.d, %bb.c, %_ZNK11CaptureFile7capFileEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog27on_actionDragZoom_triggeredEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(276) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %. = select i1 %i.c, i64 216, i64 208
  %i.f = getelementptr i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN15QAbstractButton6toggleEv(ptr noundef align 8 dereferenceable_or_null(40) %i.g)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog34on_actionSwitchDirection_triggeredEv(ptr noundef align 8 dereferenceable_or_null(276) initializes((200, 201)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 209        ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 0
  %i.c = zext i1 %.not to i8
  %i.d = getelementptr i8, ptr %0, i64 200
  store i8 1, ptr %i.d, align 8
  store i8 %i.c, ptr %i.a, align 1
  tail call void @_ZN17LteRlcGraphDialog13completeGraphEb(ptr noundef align 8 dereferenceable_or_null(276) %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noundef double @_ZN11QCPAxisRect15rangeZoomFactorEN2Qt11OrientationE(ptr noundef align 8 dereferenceable_or_null(432), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QCPAxis10scaleRangeEdd(ptr noundef align 8 dereferenceable_or_null(472), double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QCustomPlot6replotENS_15RefreshPriorityE(ptr noundef align 8 dereferenceable_or_null(513), i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QCPAxis9moveRangeEd(ptr noundef align 8 dereferenceable_or_null(472), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17LteRlcGraphDialog13getZoomRangesE5QRect(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.QRectF) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(276) %1, i64 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.QRect, align 8               ; 3 uses
  %5 = alloca %class.QRect, align 8               ; 6 uses
  %6 = alloca %class.QRect, align 16              ; 7 uses
  store i64 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) dereferenceable_or_null(32) %0, i8 0, i64 32, i1 false)
  %i.b = trunc i64 %3 to i32
  %i.c = trunc i64 %2 to i32
  %i.d = add i32 %i.b, 1
  %i.e = sub i32 %i.d, %i.c
  %i.f = icmp slt i32 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %2, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = lshr i64 %3, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = add i32 %i.j, 1
  %i.l = sub i32 %i.k, %i.h
  %i.m = icmp slt i32 %i.l, 20
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr i8, ptr %1, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.r = call { i64, i64 } @_ZNK5QRect10normalizedEv(ptr noundef nonnull align 4 dereferenceable_or_null(16) %4) #19 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  store i64 %i.s, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractvalue { i64, i64 } %i.r, 1
  store i64 %i.u, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.v = call noundef ptr @_ZNK11QCustomPlot8axisRectEi(ptr noundef align 8 dereferenceable_or_null(513) %i.q, i32 noundef 0)
  %i.w = getelementptr i8, ptr %i.v, i64 92
  %i.x = load <2 x i64>, ptr %i.w, align 4
  store <2 x i64> %i.x, ptr %6, align 16
  %i.y = call noundef zeroext i1 @_ZNK5QRect10intersectsERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5) #19
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = call { i64, i64 } @_ZNK5QRectanERKS_(ptr noundef nonnull align 4 dereferenceable_or_null(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5) #19 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.q, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr i8, ptr %i.q, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 304
  %.sroa.6.12.extract.shift = lshr i64 %i.ac, 32
  %i.ak = load <2 x double>, ptr %i.af, align 8   ; 2 uses
  %i.al = load <2 x double>, ptr %i.aj, align 8   ; 2 uses
  %i.am = shufflevector <2 x double> %i.ak, <2 x double> %i.al, <2 x i32> <i32 1, i32 3>
  %i.an = shufflevector <2 x double> %i.ak, <2 x double> %i.al, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ao = fsub <2 x double> %i.am, %i.an          ; 2 uses
  %i.ap = load <2 x i32>, ptr %i.z, align 8       ; 2 uses
  %i.aq = load <2 x i32>, ptr %6, align 16        ; 2 uses
  %i.ar = add <2 x i32> %i.ap, <i32 0, i32 1>
  %i.as = sub <2 x i32> %i.ar, %i.aq
  %i.at = add <2 x i32> %i.as, <i32 1, i32 0>
  %i.au = sitofp <2 x i32> %i.at to <2 x double>  ; 2 uses
  %.sroa.046.4.extract.shift = lshr i64 %i.ab, 32
  %.sroa.046.0.extract.trunc = trunc i64 %i.ab to i32 ; 2 uses
  %.sroa.6.8.extract.trunc = trunc i64 %i.ac to i32
  %i.av = add i32 %.sroa.6.8.extract.trunc, 1
  %i.aw = sub i32 %i.av, %.sroa.046.0.extract.trunc
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32 ; 2 uses
  %i.ax = insertelement <2 x i32> %i.ap, i32 %.sroa.046.0.extract.trunc, i64 0
  %i.ay = insertelement <2 x i32> %i.aq, i32 %.sroa.6.12.extract.trunc, i64 1
  %i.az = sub <2 x i32> %i.ax, %i.ay
  %i.ba = sitofp <2 x i32> %i.az to <2 x double>
  %i.bb = fmul <2 x double> %i.ao, %i.ba
  %i.bc = fdiv <2 x double> %i.bb, %i.au
  %i.bd = fadd <2 x double> %i.an, %i.bc
  %i.be = fadd <2 x double> %i.bd, zeroinitializer
  store <2 x double> %i.be, ptr %0, align 8
  %.sroa.046.4.extract.trunc = trunc nuw i64 %.sroa.046.4.extract.shift to i32
end_hunk_0
