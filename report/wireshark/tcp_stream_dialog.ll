Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tcp_stream_dialog?download=true
inline.NumInlined: 2777
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7QStringD2Ev:bb.a
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN25QCPErrorBarsNotSelectableC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN12QCPErrorBarsC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTV25QCPErrorBarsNotSelectable, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV25QCPErrorBarsNotSelectable, i64 344), ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QCPErrorBarsC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(248), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QCPErrorBarsD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248)) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN25QCPErrorBarsNotSelectableD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN12QCPErrorBarsD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %0) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N25QCPErrorBarsNotSelectableD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184
  tail call void @_ZN25QCPErrorBarsNotSelectableD1Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN25QCPErrorBarsNotSelectableD0Ev(ptr noundef align 8 dereferenceable_or_null(248) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN25QCPErrorBarsNotSelectableD1Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %0) #28
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 248) #29
  ret void
}

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N25QCPErrorBarsNotSelectableD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184 ; 2 uses
  tail call void @_ZN25QCPErrorBarsNotSelectableD1Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef align 8 dereferenceable_or_null(248) %i.a, i64 noundef 248) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef double @_ZNK25QCPErrorBarsNotSelectable10selectTestERK7QPointFbP8QVariant(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(248) %0, ptr nofree noundef readnone align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #8 align 2 {
bb.a:
  ret double -1.000000e+00
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK25QCPErrorBarsNotSelectable14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QLineF, align 16             ; 6 uses
  %4 = alloca %class.QLineF, align 8              ; 4 uses
  %5 = alloca %class.QLineF, align 16             ; 5 uses
  %6 = alloca %class.QLineF, align 16             ; 6 uses
  %7 = alloca %class.QLineF, align 8              ; 4 uses
  %8 = alloca %class.QLineF, align 16             ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef align 8 dereferenceable_or_null(184) %0, ptr noundef %1)
  %i.d = getelementptr i8, ptr %0, i64 96
  tail call void @_ZN10QCPPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 4        ; 2 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEptEv.exit

_ZNK8QPointerI7QCPAxisEptEv.exit:                 ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.p = load atomic i32, ptr %i.k monotonic, align 4
  %i.q = icmp eq i32 %i.p, 0
  %spec.select = select i1 %i.q, ptr null, ptr %i.o
  %i.r = getelementptr i8, ptr %spec.select, i64 76
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.d:                                             ; preds = %_ZNK8QPointerI7QCPAxisEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load double, ptr %i.y, align 8
  %i.aa = load double, ptr %i.x, align 8
  %i.ab = load <2 x double>, ptr %2, align 8
  %i.ac = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.w, i64 0
  %i.ad = fadd <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.ae = fadd double %i.aa, %i.z
  %i.af = fadd double %i.ae, -2.000000e+00
  store <2 x double> %i.ad, ptr %3, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = extractelement <2 x double> %i.ad, i64 0
  store double %i.ah, ptr %i.ag, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.af, ptr %i.ai, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.aj = getelementptr i8, ptr %0, i64 232
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fcmp une double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.am = load double, ptr %2, align 8
  %i.an = load double, ptr %i.u, align 8
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = load double, ptr %i.x, align 8
  %i.ar = insertelement <4 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <4 x double> %i.ar, double %i.aq, i64 1
  %i.at = shufflevector <4 x double> %i.as, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = fadd <4 x double> %i.at, <double -4.000000e+00, double 2.000000e+00, double 4.000000e+00, double 2.000000e+00>
  store <4 x double> %i.au, ptr %4, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.av = load <2 x double>, ptr %2, align 8
  %i.aw = load <2 x double>, ptr %i.u, align 8
  %i.ax = fmul <2 x double> %i.aw, <double 5.000000e-01, double 1.000000e+00>
  %i.ay = fadd <2 x double> %i.av, %i.ax          ; 2 uses
  %i.az = fadd <2 x double> %i.ay, <double -4.000000e+00, double -2.000000e+00> ; 2 uses
  store <2 x double> %i.az, ptr %5, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = shufflevector <2 x double> %i.ay, <2 x double> %i.az, <2 x i32> <i32 0, i32 3>
  %i.bc = fadd <2 x double> %i.bb, <double 4.000000e+00, double -0.000000e+00>
  store <2 x double> %i.bc, ptr %i.ba, align 16
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.g

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.b, %bb.c, %_ZNK8QPointerI7QCPAxisEptEv.exit, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8
  %i.bh = fmul double %i.bg, 5.000000e-01
  %i.bi = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.bj = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.bh, i64 1
  %i.bk = fadd <2 x double> %i.bi, %i.bj          ; 2 uses
  %i.bl = extractelement <2 x double> %i.bi, i64 0
  %i.bm = fadd double %i.bl, %i.be
  %i.bn = fadd double %i.bm, -2.000000e+00
  store <2 x double> %i.bk, ptr %6, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.bn, ptr %i.bo, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bq = extractelement <2 x double> %i.bk, i64 1
  store double %i.bq, ptr %i.bp, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.br = getelementptr i8, ptr %0, i64 232
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp une double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %9 = load double, ptr %2, align 8
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = load double, ptr %i.bf, align 8
  %i.bx = fmul double %i.bw, 5.000000e-01
  %i.by = fadd double %i.bv, %i.bx
  %10 = insertelement <4 x double> poison, double %9, i64 0
  %i.bz = insertelement <4 x double> %10, double %i.by, i64 1
  %i.ca = shufflevector <4 x double> %i.bz, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cb = fadd <4 x double> %i.ca, <double 2.000000e+00, double -4.000000e+00, double 2.000000e+00, double 4.000000e+00>
  store <4 x double> %i.cb, ptr %7, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cc = load <2 x double>, ptr %2, align 8
  %i.cd = load <2 x double>, ptr %i.bd, align 8
  %i.ce = fmul <2 x double> %i.cd, <double 1.000000e+00, double 5.000000e-01>
  %i.cf = fadd <2 x double> %i.cc, %i.ce          ; 2 uses
  %i.cg = fadd <2 x double> %i.cf, <double -2.000000e+00, double -4.000000e+00> ; 2 uses
  store <2 x double> %i.cg, ptr %8, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ci = shufflevector <2 x double> %i.cg, <2 x double> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.cj = fadd <2 x double> %i.ci, <double -0.000000e+00, double 4.000000e+00>
  store <2 x double> %i.cj, ptr %i.ch, align 16
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, %bb.f, %bb.d, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QCPPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11DupAckGraphC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN8QCPGraphC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 360) (i8, ptr @_ZTV11DupAckGraph, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV11DupAckGraph, i64 392), ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QCPGraphC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(313), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QCPGraphD2Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313)) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11DupAckGraphD2Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN8QCPGraphD2Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %0) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N11DupAckGraphD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184
  tail call void @_ZN11DupAckGraphD1Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11DupAckGraphD0Ev(ptr noundef align 8 dereferenceable_or_null(313) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN11DupAckGraphD1Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %0) #28
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N11DupAckGraphD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184 ; 2 uses
  tail call void @_ZN11DupAckGraphD1Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef align 8 dereferenceable_or_null(313) %i.a, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK11DupAckGraph14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %class.QLineF, align 8              ; 7 uses
  tail call void @_ZNK8QCPGraph14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = load double, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = fadd double %i.a, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load double, ptr %i.h, align 8
  %i.j = fmul double %i.i, 5.000000e-01
  %i.k = fadd double %i.g, %i.j                   ; 2 uses
  %i.l = fadd double %i.e, -4.000000e+00
  %i.m = fadd double %i.e, 4.000000e+00
  store double %i.l, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.k, ptr %i.p, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK8QCPGraph14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(313), ptr noundef, ptr noundef align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15TCPStreamDialogC2EP7QWidgetRK11CaptureFile15tcp_graph_type_(ptr noundef align 8 dereferenceable_or_null(608) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(48) %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %4 = alloca %class.QPointF, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %i.h = alloca { i64, i64 }, align 8             ; 5 uses
  %i.i = alloca { i64, i64 }, align 8             ; 5 uses
  %i.j = alloca { i64, i64 }, align 8             ; 5 uses
  %i.k = alloca { i64, i64 }, align 8             ; 5 uses
  %i.l = alloca { i64, i64 }, align 8             ; 5 uses
  %5 = alloca %class.QIcon, align 8               ; 7 uses
  %6 = alloca %class.QIcon, align 8               ; 7 uses
  %7 = alloca %class.QIcon, align 8               ; 7 uses
  %8 = alloca %class.QIcon, align 8               ; 7 uses
  %9 = alloca %class.QIcon, align 8               ; 7 uses
  %10 = alloca %class.QIcon, align 8              ; 7 uses
  %11 = alloca %class.QIcon, align 8              ; 7 uses
  %12 = alloca %class.QIcon, align 8              ; 7 uses
  %13 = alloca %class.QIcon, align 8              ; 7 uses
  %14 = alloca %class.QString, align 16           ; 5 uses
  %15 = alloca %class.QString, align 8            ; 9 uses
  %16 = alloca %class.QString, align 16           ; 10 uses
  %17 = alloca %class.QString, align 8            ; 9 uses
  %18 = alloca %class.QVariant, align 8           ; 7 uses
  %19 = alloca %class.QString, align 8            ; 9 uses
  %20 = alloca %class.QVariant, align 8           ; 7 uses
  %21 = alloca %class.QString, align 8            ; 9 uses
  %22 = alloca %class.QVariant, align 8           ; 7 uses
  %23 = alloca %class.QString, align 8            ; 9 uses
  %24 = alloca %class.QVariant, align 8           ; 7 uses
  %25 = alloca %class.QString, align 8            ; 9 uses
  %26 = alloca %class.QVariant, align 8           ; 7 uses
  %27 = alloca %class.QString, align 8            ; 9 uses
  %28 = alloca %class.QVariant, align 8           ; 7 uses
  %29 = alloca %class.QString, align 8            ; 9 uses
  %30 = alloca %class.QVariant, align 8           ; 7 uses
  %31 = alloca %class.QString, align 8            ; 9 uses
  %32 = alloca %class.QVariant, align 8           ; 7 uses
  %33 = alloca %class.QString, align 8            ; 9 uses
  %34 = alloca %class.QVariant, align 8           ; 7 uses
  %35 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %36 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %37 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %38 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %39 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %40 = alloca %class.QString, align 8            ; 9 uses
  %41 = alloca %class.QFont, align 8              ; 7 uses
  %42 = alloca %class.QPen, align 8               ; 7 uses
  %43 = alloca %class.QBrush, align 8             ; 7 uses
  %44 = alloca %class.QColor, align 4             ; 5 uses
  %45 = alloca %class.QPen, align 8               ; 7 uses
  %46 = alloca %class.QBrush, align 8             ; 7 uses
  %47 = alloca %class.QColor, align 4             ; 5 uses
  %48 = alloca %class.QString, align 8            ; 9 uses
  %49 = alloca %class.QPen, align 8               ; 7 uses
  %50 = alloca %class.QBrush, align 8             ; 7 uses
  %51 = alloca %class.QColor, align 4             ; 5 uses
  %52 = alloca %class.QString, align 8            ; 9 uses
  %53 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %54 = alloca %class.QString, align 8            ; 9 uses
  %55 = alloca %class.QPen, align 8               ; 7 uses
  %56 = alloca %class.QBrush, align 8             ; 7 uses
  %57 = alloca %class.QColor, align 4             ; 5 uses
  %58 = alloca %class.QString, align 8            ; 9 uses
  %59 = alloca %class.QPen, align 8               ; 7 uses
  %60 = alloca %class.QBrush, align 8             ; 7 uses
  %61 = alloca %class.QColor, align 4             ; 5 uses
  %62 = alloca %class.QString, align 8            ; 9 uses
  %63 = alloca %class.QPainterPath, align 8       ; 8 uses
  %64 = alloca %class.QPen, align 8               ; 9 uses
  %65 = alloca %class.QColor, align 4             ; 5 uses
  %66 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %67 = alloca %class.QBrush, align 8             ; 7 uses
  %68 = alloca %class.QString, align 8            ; 9 uses
  %69 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
end_hunk_0
