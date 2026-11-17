Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Shape?download=true
inline.NumInlined: 510
inline.NumDeleted: 232
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7msdfgen5Shape9normalizeEv:bb.a
  %i.dp = fmul <2 x double> %i.cu, %i.do          ; 2 uses
  %i.dq = fsub <2 x double> %i.dg, %i.dp
  %i.dr = fadd <2 x double> %i.dg, %i.dp
  %i.ds = shufflevector <2 x double> %i.dq, <2 x double> %i.dr, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ds, ptr %i.de, align 8, !tbaa !29
  br label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit

bb.s:                                             ; preds = %bb.p
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit: ; preds = %bb.o, %bb.r
  %i.du = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088) ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef i32 %i.dx(ptr noundef nonnull align 8 dereferenceable(12) %i.du), !inline_history !42
  switch i32 %i.dy, label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58 [
    i32 2, label %bb.t
    i32 3, label %bb.v
  ]

bb.t:                                             ; preds = %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.dz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088)
  %i.ea = call noundef ptr @_ZNK7msdfgen16QuadraticSegment14convertToCubicEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dz)
  store ptr %i.ea, ptr %1, align 8, !tbaa !48
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7msdfgen10EdgeHolderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.u unwind label %bb.w       ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit
  %i.ec = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088) ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %.sroa.09.0.copyload.i = load double, ptr %i.ed, align 8, !tbaa !29
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %.sroa.210.0.copyload.i = load double, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !29
  %i.ef = load <2 x double>, ptr %i.ee, align 8, !tbaa !29 ; 4 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 0
  %i.eh = fsub double %i.eg, %.sroa.09.0.copyload.i ; 2 uses
  %i.ei = extractelement <2 x double> %i.ef, i64 1
  %i.ej = fsub double %i.ei, %.sroa.210.0.copyload.i ; 2 uses
  %i.ek = fmul double %i.ej, %i.ej
  %i.el = call double @llvm.fmuladd.f64(double %i.eh, double %i.eh, double %i.ek)
  %sqrt.i.i57 = call noundef double @llvm.sqrt.f64(double %i.el)
  %i.em = insertelement <2 x double> poison, double %sqrt.i.i57, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.cu, %i.en          ; 2 uses
  %i.ep = fadd <2 x double> %i.ef, %i.eo
  %i.eq = fsub <2 x double> %i.ef, %i.eo
  %i.er = shufflevector <2 x double> %i.ep, <2 x double> %i.eq, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.er, ptr %i.ee, align 8, !tbaa !29
  br label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58

bb.w:                                             ; preds = %bb.t
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %common.resume

_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58: ; preds = %bb.v, %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit, %.lr.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.067.088, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.g, align 8, !tbaa !18
  %.not86 = icmp eq ptr %i.et, %i.eu
  br i1 %.not86, label %.loopexit, label %.lr.ph, !llvm.loop !43

.loopexit:                                        ; preds = %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit36, %bb.n
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.074.091, i64 24 ; 2 uses
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !22
  %.not = icmp eq ptr %i.ev, %i.ew
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef i32 @_ZN7msdfgen23convergentCurveOrderingEPKNS_11EdgeSegmentES2_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN7msdfgen10EdgeHoldercvPNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen5Shape5boundERdS1_S1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNK7msdfgen7Contour5boundERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !22
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1
}

declare void @_ZNK7msdfgen7Contour5boundERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen5Shape11boundMitersERdS1_S1_S1_ddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %5, double noundef %6, i32 noundef %7) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.07.011 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNK7msdfgen7Contour11boundMitersERdS1_S1_S1_ddi(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.011, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %5, double noundef %6, i32 noundef %7)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !22
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2
}

declare void @_ZNK7msdfgen7Contour11boundMitersERdS1_S1_S1_ddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen5Shape9getBoundsEddi(ptr dead_on_unwind noalias writable sret(%"struct.msdfgen::Shape::Bounds") align 8 initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @__const._ZNK7msdfgen5Shape9getBoundsEddi.bounds, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not8.i = icmp eq ptr %i.d, %i.f
  br i1 %.not8.i, label %_ZNK7msdfgen5Shape5boundERdS1_S1_S1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  tail call void @_ZNK7msdfgen7Contour5boundERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09.i, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i, label %_ZNK7msdfgen5Shape5boundERdS1_S1_S1_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNK7msdfgen5Shape5boundERdS1_S1_S1_.exit:        ; preds = %.lr.ph.i, %bb.a
  %i.i = phi ptr [ %i.d, %bb.a ], [ %i.g, %.lr.ph.i ]
  %i.j = fcmp ogt double %2, 0.000000e+00
  br i1 %i.j, label %bb.b, label %_ZNK7msdfgen5Shape11boundMitersERdS1_S1_S1_ddi.exit

bb.b:                                             ; preds = %_ZNK7msdfgen5Shape5boundERdS1_S1_S1_.exit
  %i.k = load <2 x double>, ptr %0, align 8, !tbaa !29
  %i.l = insertelement <2 x double> poison, double %2, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fsub <2 x double> %i.k, %i.m
  store <2 x double> %i.n, ptr %0, align 8, !tbaa !29
  %i.o = load <2 x double>, ptr %i.b, align 8, !tbaa !29
  %i.p = fadd <2 x double> %i.m, %i.o
  store <2 x double> %i.p, ptr %i.b, align 8, !tbaa !29
  %i.q = fcmp ogt double %3, 0.000000e+00
  br i1 %i.q, label %bb.c, label %_ZNK7msdfgen5Shape11boundMitersERdS1_S1_S1_ddi.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %.not10.i = icmp eq ptr %i.r, %i.i
  br i1 %.not10.i, label %_ZNK7msdfgen5Shape11boundMitersERdS1_S1_S1_ddi.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.c, %.lr.ph.i10
  %.sroa.07.011.i = phi ptr [ %i.s, %.lr.ph.i10 ], [ %i.r, %bb.c ] ; 2 uses
  tail call void @_ZNK7msdfgen7Contour11boundMitersERdS1_S1_S1_ddi(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.011.i, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %2, double noundef %3, i32 noundef %4)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !22
  %.not.i11 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i11, label %_ZNK7msdfgen5Shape11boundMitersERdS1_S1_S1_ddi.exit, label %.lr.ph.i10, !llvm.loop !2

_ZNK7msdfgen5Shape11boundMitersERdS1_S1_S1_ddi.exit: ; preds = %.lr.ph.i10, %bb.c, %bb.b, %_ZNK7msdfgen5Shape5boundERdS1_S1_S1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, double noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.8", align 8     ; 12 uses
  %i.a = alloca [3 x double], align 16            ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not42 = icmp eq ptr %i.c, %i.e
  br i1 %.not42, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge46:                                    ; preds = %._crit_edge41, %bb.a
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph45, %._crit_edge41
  %i.h = phi ptr [ %i.e, %.lr.ph45 ], [ %i.o, %._crit_edge41 ]
  %i.i = phi ptr [ null, %.lr.ph45 ], [ %i.p, %._crit_edge41 ] ; 2 uses
  %i.j = phi ptr [ null, %.lr.ph45 ], [ %i.q, %._crit_edge41 ] ; 2 uses
  %i.k = phi ptr [ null, %.lr.ph45 ], [ %i.r, %._crit_edge41 ] ; 2 uses
  %.sroa.028.043 = phi ptr [ %i.c, %.lr.ph45 ], [ %i.s, %._crit_edge41 ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.028.043, align 8, !tbaa !18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.043, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not3237 = icmp eq ptr %i.l, %i.n
  br i1 %.not3237, label %._crit_edge41, label %.lr.ph40

._crit_edge41.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !22
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge41.loopexit, %bb.b
  %i.o = phi ptr [ %.pre, %._crit_edge41.loopexit ], [ %i.h, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.ac, %._crit_edge41.loopexit ], [ %i.i, %bb.b ]
  %i.q = phi ptr [ %i.ad, %._crit_edge41.loopexit ], [ %i.j, %bb.b ]
  %i.r = phi ptr [ %i.ae, %._crit_edge41.loopexit ], [ %i.k, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.028.043, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.o
  br i1 %.not, label %._crit_edge46, label %bb.b, !llvm.loop !49

.lr.ph40:                                         ; preds = %bb.b, %._crit_edge
  %i.t = phi ptr [ %i.ac, %._crit_edge ], [ %i.i, %bb.b ] ; 3 uses
  %i.u = phi ptr [ %i.ad, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.ae, %._crit_edge ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.024.038 = phi ptr [ %i.af, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %i.w = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.038)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.c:                                             ; preds = %.lr.ph40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.preheader:                                       ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit, %.preheader
  %i.ac = phi ptr [ %i.t, %.preheader ], [ %i.bd, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %.preheader ], [ %i.be, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %.preheader ], [ %i.bf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.038, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not32 = icmp eq ptr %i.af, %i.ag
  br i1 %.not32, label %._crit_edge41.loopexit, label %.lr.ph40, !llvm.loop !50

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.ah = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.bd, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %i.ai = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.be, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %4 = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.bf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %4, %i.ai
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store double %i.ak, ptr %4, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !54
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775792
  br i1 %i.ar, label %bb.f, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.as = ashr exact i64 %i.aq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 576460752303423487)
  %i.aw = select i1 %i.au, i64 576460752303423487, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 4
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #20
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.a ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 3 uses
  store double %i.ak, ptr %i.az, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %i.am, ptr %.sroa.6.0..sroa_idx19, align 8, !tbaa !30
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.g, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.ah, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %.noexc14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ay, ptr %3, align 8, !tbaa !55
  store ptr %i.bb, ptr %i.f, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.aw ; 2 uses
  store ptr %i.bc, ptr %i.g, align 8, !tbaa !56
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.bd = phi ptr [ %i.ay, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ah, %bb.d ] ; 2 uses
  %i.be = phi ptr [ %i.bc, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.bf = phi ptr [ %i.bb, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.an, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

bb.i:                                             ; preds = %._crit_edge46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bg = load ptr, ptr %3, align 8, !tbaa !55    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.a:  ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph40, %bb.c
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %._crit_edge46
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  %.pre51.pre = load ptr, ptr %3, align 8, !tbaa !55
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.a
  %i.bm = phi ptr [ %i.ah, %.loopexit.split-lp.loopexit.split-lp.loopexit.a ], [ %i.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.pre51.pre, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.a ], [ %lpad.loopexit47, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp48, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i.i.i16 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not5 = icmp eq ptr %i.a, %i.c
  br i1 %.not5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %.lr.ph ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.02.06 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = load ptr, ptr %.sroa.02.06, align 8, !tbaa !23
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %.07, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen5Shape14orientContoursEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 4 uses
  %i.j = icmp ugt i64 %i.i, 2305843009213693951
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc92

.noexc92:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #20 ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !30
  %i.n = add nsw i64 %i.i, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc92
  %i.p = getelementptr i8, ptr %i.l, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc92, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.m, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc92 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0126.0 = phi ptr [ %i.l, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc92 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %i.w = trunc i64 %i.v to i32
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph242, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit

.preheader:                                       ; preds = %bb.z
  %i.y = trunc i64 %i.gl to i32
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph246, label %._crit_edge247

.lr.ph242:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %bb.z
  %i.aa = phi ptr [ %i.gg, %bb.z ], [ %i.r, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 3 uses
  %i.ab = phi ptr [ %i.gh, %bb.z ], [ %i.q, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 2 uses
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %bb.z ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 6 uses
  %.sroa.0121.0240 = phi ptr [ %.sroa.0121.6, %bb.z ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 5 uses
  %.sroa.21.0239 = phi ptr [ %.sroa.21.5, %bb.z ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 4 uses
  %.sroa.31.0238 = phi ptr [ %.sroa.31.6, %bb.z ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %indvars.iv289
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.b, label %bb.z

bb.b:                                             ; preds = %.lr.ph242
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv289 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = invoke noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke { double, double } %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, double noundef 0.000000e+00)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.ao = extractvalue { double, double } %i.an, 1 ; 6 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv289 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %i.au = icmp ne ptr %i.ar, %i.at
  %i.av = fcmp ord double %i.ao, 0.000000e+00
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ax = phi ptr [ %i.at, %bb.e ], [ %i.bn, %._crit_edge.loopexit ]
  %i.ay = phi ptr [ %i.ap, %bb.e ], [ %i.bk, %._crit_edge.loopexit ]
  %i.az = phi ptr [ %i.ar, %bb.e ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.055.lcssa = phi double [ %i.ao, %bb.e ], [ %i.bi, %._crit_edge.loopexit ] ; 2 uses
  %i.ba = icmp ne ptr %i.az, %i.ax
  %i.bb = fcmp oeq double %i.ao, %.055.lcssa
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %.lr.ph200, label %._crit_edge201

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.sroa.0118.0196 = phi ptr [ %i.bj, %bb.g ], [ %i.ar, %bb.e ] ; 2 uses
  %i.bd = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.0196)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %.lr.ph
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke { double, double } %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.bd, double noundef 1.000000e+00)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.bi = extractvalue { double, double } %i.bh, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0118.0196, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv289 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18 ; 2 uses
  %i.bo = icmp ne ptr %i.bj, %i.bn
  %i.bp = fcmp oeq double %i.ao, %i.bi
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !58

._crit_edge201:                                   ; preds = %bb.i, %._crit_edge
  %i.br = phi ptr [ %i.ay, %._crit_edge ], [ %i.ci, %bb.i ] ; 2 uses
  %.1.lcssa = phi double [ %.055.lcssa, %._crit_edge ], [ %i.cg, %bb.i ]
  %i.bs = fmul double %.1.lcssa, f0x3FE3C6EF372FE950
  %i.bt = call noundef double @llvm.fmuladd.f64(double %i.ao, double f0x3FD8722191A02D60, double %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 24
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph228, label %._crit_edge229

.lr.ph200:                                        ; preds = %._crit_edge, %bb.i
  %.sroa.0113.0198 = phi ptr [ %i.ch, %bb.i ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.cb = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0113.0198)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  tail call void @__clang_call_terminate(ptr %i.ah) #21
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !23
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !20
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #17 ; 0 uses
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #17 ; 0 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #17
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i32 } %i.af, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #17 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #17
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !0

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #18
  invoke void @__cxa_rethrow() #19
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !25}
!1 = distinct !{!1, !25}
!2 = distinct !{!2, !25}
!3 = distinct !{!3, !25}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN7msdfgen7ContourE", !12, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 8}
!16 = !{!14, !13, i64 16}
!17 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!20 = !{!19, !17, i64 16}
!21 = !{!14, !13, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!19, !17, i64 0}
!24 = !{!19, !17, i64 8}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"vtable pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"double", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!9, !9, i64 0}
!31 = !{!"_ZTSZN7msdfgen5Shape14orientContoursEvE12Intersection", !28, i64 0, !9, i64 8, !9, i64 12}
!32 = !{!31, !28, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE12_Vector_implE", !14, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIN7msdfgen7ContourESaIS1_EE", !34, i64 0}
!36 = !{!"bool", !8, i64 0}
!37 = !{!"_ZTSN7msdfgen5ShapeE", !35, i64 0, !36, i64 24}
!38 = !{!37, !36, i64 24}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = distinct !{null}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !12, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"_ZTSN7msdfgen10EdgeHolderE", !45, i64 0}
!48 = !{!47, !45, i64 0}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = !{!"p1 _ZTSN7msdfgen8Scanline12IntersectionE", !12, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!53, !52, i64 8}
!55 = !{!53, !52, i64 0}
!56 = !{!53, !52, i64 16}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = !{!31, !9, i64 8}
!68 = !{!31, !9, i64 12}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = distinct !{!71, i1 true, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_"}
!72 = distinct !{!72, !71, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !71, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, i1 true, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_"}
!75 = distinct !{!75, !74, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!76 = distinct !{!76, !74, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!77 = !{!72}
!78 = !{!73}
!79 = !{!75}
!80 = !{!76}
!81 = distinct !{!81, !25}
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = distinct !{!83, i1 true, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_"}
!84 = distinct !{!84, !83, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !83, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!86 = distinct !{!86, i1 true, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!88 = distinct !{!88, !86, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!89 = !{!84}
!90 = !{!85}
!91 = !{!87}
!92 = !{!88}
!93 = distinct !{!93, i1 true, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_"}
!94 = distinct !{!94, !93, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!95 = distinct !{!95, !93, !"_ZSt19__relocate_object_aIN7msdfgen7ContourES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!96 = !{!94}
!97 = !{!95}
!98 = distinct !{!98, !25}
end_hunk_1
