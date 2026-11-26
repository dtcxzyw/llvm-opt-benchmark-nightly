Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Shape?download=true
inline.NumInlined: 510
inline.NumDeleted: 232
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7msdfgen5Shape9normalizeEv:bb.a
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
  %3 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %i.a = alloca [3 x double], align 16            ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not44 = icmp eq ptr %i.c, %i.e
  br i1 %.not44, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge48:                                    ; preds = %._crit_edge43, %bb.a
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph47, %._crit_edge43
  %i.h = phi ptr [ %i.e, %.lr.ph47 ], [ %i.n, %._crit_edge43 ]
  %i.i = phi ptr [ null, %.lr.ph47 ], [ %i.o, %._crit_edge43 ] ; 2 uses
  %i.j = phi ptr [ null, %.lr.ph47 ], [ %i.p, %._crit_edge43 ] ; 2 uses
  %.promoted57 = phi ptr [ null, %.lr.ph47 ], [ %.promoted58, %._crit_edge43 ] ; 2 uses
  %.sroa.028.045 = phi ptr [ %i.c, %.lr.ph47 ], [ %i.q, %._crit_edge43 ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.028.045, align 8, !tbaa !18 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.028.045, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %.not3239 = icmp eq ptr %i.k, %i.m
  br i1 %.not3239, label %._crit_edge43, label %.lr.ph42

._crit_edge43.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !22
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %bb.b
  %i.n = phi ptr [ %.pre, %._crit_edge43.loopexit ], [ %i.h, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.z, %._crit_edge43.loopexit ], [ %i.i, %bb.b ]
  %i.p = phi ptr [ %i.aa, %._crit_edge43.loopexit ], [ %i.j, %bb.b ]
  %.promoted58 = phi ptr [ %.lcssa, %._crit_edge43.loopexit ], [ %.promoted57, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.028.045, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.n
  br i1 %.not, label %._crit_edge48, label %bb.b, !llvm.loop !49

.lr.ph42:                                         ; preds = %bb.b, %._crit_edge
  %i.r = phi ptr [ %i.z, %._crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.aa, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %.promoted = phi ptr [ %.lcssa, %._crit_edge ], [ %.promoted57, %bb.b ] ; 3 uses
  %.sroa.024.040 = phi ptr [ %i.ab, %._crit_edge ], [ %i.k, %bb.b ] ; 2 uses
  %i.t = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.040)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.c:                                             ; preds = %.lr.ph42
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.preheader:                                       ; preds = %bb.c
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit, %.preheader
  %i.z = phi ptr [ %i.r, %.preheader ], [ %i.ba, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.aa = phi ptr [ %i.s, %.preheader ], [ %i.bb, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.lcssa = phi ptr [ %.promoted, %.preheader ], [ %i.bc, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  store ptr %.lcssa, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.024.040, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !18
  %.not32 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not32, label %._crit_edge43.loopexit, label %.lr.ph42, !llvm.loop !50

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.ad = phi ptr [ %i.r, %.lr.ph.preheader ], [ %i.ba, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.ae = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.bb, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.af = phi ptr [ %.promoted, %.lr.ph.preheader ], [ %i.bc, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store double %i.ah, ptr %i.ae, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !54
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775792
  br i1 %i.ao, label %bb.f, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.af, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ap = ashr exact i64 %i.an, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 576460752303423487)
  %i.at = select i1 %i.ar, i64 576460752303423487, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 4
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #20
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 3 uses
  store double %i.ah, ptr %i.aw, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.aj, ptr %.sroa.6.0..sroa_idx19, align 8, !tbaa !30
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.g, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.af, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %.noexc14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %4 = ptrtoint ptr %i.ad to i64
  %5 = sub i64 %4, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %5) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ay, ptr %i.f, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.at ; 2 uses
  store ptr %i.az, ptr %i.g, align 8, !tbaa !55
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d
  %i.ba = phi ptr [ %i.az, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.bb = phi ptr [ %i.ay, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ak, %bb.d ] ; 2 uses
  %i.bc = phi ptr [ %i.av, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.af, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

bb.i:                                             ; preds = %._crit_edge48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bd = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.af, ptr %3, align 8
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.c, %.lr.ph42
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge48, %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre59.pre = load ptr, ptr %3, align 8, !tbaa !56
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %i.bj = phi ptr [ %i.af, %.loopexit ], [ %.promoted, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.pre59.pre, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit49, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i.i.i16 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !55
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #18
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

bb.h:                                             ; preds = %.lr.ph200
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke { double, double } %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.cb, double noundef f0x3FE3C6EF372FE950)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.cg = extractvalue { double, double } %i.cf, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0113.0198, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %indvars.iv289
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.cm = icmp ne ptr %i.ch, %i.cl
  %i.cn = fcmp oeq double %i.ao, %i.cg
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %.lr.ph200, label %._crit_edge201, !llvm.loop !59

.loopexit:                                        ; preds = %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %.lr.ph200, %bb.f, %.lr.ph, %bb.d, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge229:                                   ; preds = %._crit_edge219, %._crit_edge201
  %.sroa.31.1.lcssa = phi ptr [ %.sroa.31.0238, %._crit_edge201 ], [ %.sroa.31.2.lcssa, %._crit_edge219 ] ; 2 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.0239, %._crit_edge201 ], [ %.sroa.21.2.lcssa, %._crit_edge219 ] ; 3 uses
  %.sroa.0121.1.lcssa = phi ptr [ %.sroa.0121.0240, %._crit_edge201 ], [ %.sroa.0121.2.lcssa, %._crit_edge219 ] ; 11 uses
  %i.cp = icmp eq ptr %.sroa.0121.1.lcssa, %.sroa.21.1.lcssa
  br i1 %i.cp, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit, label %bb.q

.lr.ph228:                                        ; preds = %._crit_edge201, %._crit_edge219
  %i.cq = phi ptr [ %i.cy, %._crit_edge219 ], [ %i.br, %._crit_edge201 ] ; 2 uses
  %i.cr = phi ptr [ %i.cz, %._crit_edge219 ], [ %i.bu, %._crit_edge201 ]
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %._crit_edge219 ], [ 0, %._crit_edge201 ] ; 5 uses
  %.sroa.0121.1225 = phi ptr [ %.sroa.0121.2.lcssa, %._crit_edge219 ], [ %.sroa.0121.0240, %._crit_edge201 ] ; 2 uses
  %.sroa.21.1224 = phi ptr [ %.sroa.21.2.lcssa, %._crit_edge219 ], [ %.sroa.21.0239, %._crit_edge201 ] ; 2 uses
  %.sroa.31.1223 = phi ptr [ %.sroa.31.2.lcssa, %._crit_edge219 ], [ %.sroa.31.0238, %._crit_edge201 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %indvars.iv276 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !18 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18
  %.not132212 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not132212, label %._crit_edge219, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %.lr.ph228
  %i.cw = trunc nuw nsw i64 %indvars.iv276 to i32
  %i.cx = trunc nuw nsw i64 %indvars.iv276 to i32
  br label %.lr.ph218

._crit_edge219.loopexit:                          ; preds = %._crit_edge208
  %.pre295 = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge219

._crit_edge219:                                   ; preds = %._crit_edge219.loopexit, %.lr.ph228
  %i.cy = phi ptr [ %i.cq, %.lr.ph228 ], [ %i.do, %._crit_edge219.loopexit ] ; 2 uses
  %i.cz = phi ptr [ %i.cr, %.lr.ph228 ], [ %.pre295, %._crit_edge219.loopexit ] ; 2 uses
  %.sroa.31.2.lcssa = phi ptr [ %.sroa.31.1223, %.lr.ph228 ], [ %.sroa.31.3.lcssa, %._crit_edge219.loopexit ] ; 2 uses
  %.sroa.21.2.lcssa = phi ptr [ %.sroa.21.1224, %.lr.ph228 ], [ %.sroa.21.3.lcssa, %._crit_edge219.loopexit ] ; 2 uses
  %.sroa.0121.2.lcssa = phi ptr [ %.sroa.0121.1225, %.lr.ph228 ], [ %.sroa.0121.3.lcssa, %._crit_edge219.loopexit ] ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 24
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 32
  %i.dg = icmp slt i64 %indvars.iv.next277, %i.df
  br i1 %i.dg, label %.lr.ph228, label %._crit_edge229, !llvm.loop !60

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %._crit_edge208
  %.sroa.0108.0216 = phi ptr [ %i.dn, %._crit_edge208 ], [ %i.ct, %.lr.ph218.preheader ] ; 2 uses
  %.sroa.0121.2215 = phi ptr [ %.sroa.0121.3.lcssa, %._crit_edge208 ], [ %.sroa.0121.1225, %.lr.ph218.preheader ] ; 3 uses
  %.sroa.21.2214 = phi ptr [ %.sroa.21.3.lcssa, %._crit_edge208 ], [ %.sroa.21.1224, %.lr.ph218.preheader ] ; 2 uses
  %.sroa.31.2213 = phi ptr [ %.sroa.31.3.lcssa, %._crit_edge208 ], [ %.sroa.31.1223, %.lr.ph218.preheader ] ; 3 uses
  %i.dh = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0108.0216)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %.lr.ph218
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %i.bt)
          to label %.preheader133 unwind label %bb.k ; 2 uses

.preheader133:                                    ; preds = %bb.j
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph207.preheader, label %._crit_edge208

.lr.ph207.preheader:                              ; preds = %.preheader133
  %wide.trip.count = zext nneg i32 %i.dl to i64
  br label %.lr.ph207

._crit_edge208:                                   ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit, %.preheader133
  %.sroa.31.3.lcssa = phi ptr [ %.sroa.31.2213, %.preheader133 ], [ %.sroa.31.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.21.3.lcssa = phi ptr [ %.sroa.21.2214, %.preheader133 ], [ %.sroa.21.6, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.0121.3.lcssa = phi ptr [ %.sroa.0121.2215, %.preheader133 ], [ %.sroa.0121.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0108.0216, i64 8 ; 2 uses
  %i.do = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %indvars.iv276
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !18
  %.not132 = icmp eq ptr %i.dn, %i.dr
  br i1 %.not132, label %._crit_edge219.loopexit, label %.lr.ph218, !llvm.loop !61

bb.k:                                             ; preds = %bb.j, %.lr.ph218
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph207.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.0121.3205 = phi ptr [ %.sroa.0121.2215, %.lr.ph207.preheader ], [ %.sroa.0121.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %.sroa.21.3204 = phi ptr [ %.sroa.21.2214, %.lr.ph207.preheader ], [ %.sroa.21.6, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %.sroa.31.3203 = phi ptr [ %.sroa.31.2213, %.lr.ph207.preheader ], [ %.sroa.31.8, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.du = load double, ptr %i.dt, align 8, !tbaa !29 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.21.3204, %.sroa.31.3203
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph207
  store double %i.du, ptr %.sroa.21.3204, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.21.3204, i64 8
  store i32 %i.dw, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.21.3204, i64 12
  store i32 %i.cw, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !30
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %.lr.ph207
  %i.dx = ptrtoint ptr %.sroa.21.3204 to i64
  %i.dy = ptrtoint ptr %.sroa.0121.3205 to i64    ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 5 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775792
  br i1 %i.ea, label %bb.n, label %_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc93 unwind label %.loopexit.split-lp135.loopexit.split-lp

.noexc93:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.eb = ashr exact i64 %i.dz, 4                 ; 3 uses
  %i.ec = icmp eq ptr %.sroa.21.3204, %.sroa.0121.3205
  %.sroa.speculated.i.i.i = select i1 %i.ec, i64 1, i64 %i.eb
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i, %i.eb ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.eb
  %i.ef = call i64 @llvm.umin.i64(i64 %i.ed, i64 576460752303423487)
  %i.eg = select i1 %i.ee, i64 576460752303423487, i64 %i.ef ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.eg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.eh = shl nuw nsw i64 %i.eg, 4
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #20
          to label %.noexc94 unwind label %.loopexit.split-lp135.loopexit.split-lp ; 4 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.dz ; 4 uses
  store double %i.du, ptr %i.ej, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %i.dw, ptr %.sroa.6.0..sroa_idx102, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 %i.cx, ptr %.sroa.7.0..sroa_idx104, align 4, !tbaa !30
  %i.ek = icmp sgt i64 %i.dz, 0
  br i1 %i.ek, label %bb.o, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i

bb.o:                                             ; preds = %.noexc94
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %.sroa.0121.3205, i64 %i.dz, i1 false)
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i: ; preds = %bb.o, %.noexc94
  %.not.i21.i.i = icmp eq ptr %.sroa.0121.3205, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i
  %1 = ptrtoint ptr %.sroa.31.3203 to i64
  %2 = sub i64 %1, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.3205, i64 noundef %2) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit20.i.i
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eg
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %.sroa.31.8 = phi ptr [ %i.el, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.31.3203, %bb.l ] ; 2 uses
  %.pn = phi ptr [ %i.ej, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.21.3204, %bb.l ]
  %.sroa.0121.8 = phi ptr [ %i.ei, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0121.3205, %bb.l ] ; 2 uses
  %.sroa.21.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge208, label %.lr.ph207, !llvm.loop !62

.loopexit.split-lp135.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.n
  %lpad.loopexit.split-lp395 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %._crit_edge229
  %i.em = ptrtoint ptr %.sroa.21.1.lcssa to i64
  %i.en = ptrtoint ptr %.sroa.0121.1.lcssa to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 4                 ; 4 uses
  invoke void @qsort(ptr noundef nonnull %.sroa.0121.1.lcssa, i64 noundef %i.ep, i64 noundef 16, ptr noundef nonnull @_ZZN7msdfgen5Shape14orientContoursEvEN12Intersection7compareEPKvS3_)
          to label %.preheader140 unwind label %bb.s

.preheader140:                                    ; preds = %bb.q
  %i.eq = trunc i64 %i.ep to i32                  ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %.lr.ph234.preheader, label %.preheader139

.lr.ph234.preheader:                              ; preds = %.preheader140
  %wide.trip.count282 = and i64 %i.ep, 2147483647 ; 2 uses
  %i.es = add nsw i64 %wide.trip.count282, -1     ; 3 uses
  %xtraiter = and i64 %i.es, 1
  %i.et = icmp eq i64 %wide.trip.count282, 2
  br i1 %i.et, label %.lr.ph234.epil.preheader, label %.lr.ph234.preheader.new

.lr.ph234.preheader.new:                          ; preds = %.lr.ph234.preheader
  %unroll_iter = and i64 %i.es, -2
  br label %.lr.ph234

.preheader139.loopexit.unr-lcssa:                 ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader139, label %.lr.ph234.epil.preheader

.lr.ph234.epil.preheader:                         ; preds = %.preheader139.loopexit.unr-lcssa, %.lr.ph234.preheader
  %indvars.iv279.epil.init = phi i64 [ 1, %.lr.ph234.preheader ], [ %indvars.iv.next280.1, %.preheader139.loopexit.unr-lcssa ]
  %lcmp.mod440 = trunc i64 %i.es to i1
  call void @llvm.assume(i1 %lcmp.mod440)
  %i.eu = getelementptr [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv279.epil.init ; 4 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !32
  %i.ew = getelementptr i8, ptr %i.eu, i64 -16
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !32
  %i.ey = fcmp oeq double %i.ev, %i.ex
  br i1 %i.ey, label %bb.r, label %.preheader139

bb.r:                                             ; preds = %.lr.ph234.epil.preheader
  %i.ez = getelementptr i8, ptr %i.eu, i64 -8
  store i32 0, ptr %i.ez, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 0, ptr %i.fa, align 8, !tbaa !67
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.loopexit.unr-lcssa, %bb.r, %.lr.ph234.epil.preheader, %.preheader140
  %i.fb = icmp sgt i32 %i.eq, 0
  br i1 %i.fb, label %.lr.ph237.preheader, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit

.lr.ph237.preheader:                              ; preds = %.preheader139
  %wide.trip.count287 = and i64 %i.ep, 2147483647
  br label %.lr.ph237

bb.s:                                             ; preds = %bb.q
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph234:                                        ; preds = %bb.v, %.lr.ph234.preheader.new
  %indvars.iv279 = phi i64 [ 1, %.lr.ph234.preheader.new ], [ %indvars.iv.next280.1, %bb.v ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph234.preheader.new ], [ %niter.next.1, %bb.v ]
  %i.fd = getelementptr [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv279 ; 4 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !32 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fd, i64 -16
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !32
  %i.fh = fcmp oeq double %i.fe, %i.fg
  br i1 %i.fh, label %bb.t, label %.lr.ph234.1

bb.t:                                             ; preds = %.lr.ph234
  %i.fi = getelementptr i8, ptr %i.fd, i64 -8
  store i32 0, ptr %i.fi, align 8, !tbaa !67
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 0, ptr %i.fj, align 8, !tbaa !67
  br label %.lr.ph234.1

.lr.ph234.1:                                      ; preds = %.lr.ph234, %bb.t
  %i.fk = getelementptr [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv279 ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !32
  %i.fn = fcmp oeq double %i.fm, %i.fe
  br i1 %i.fn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph234.1
  %i.fo = getelementptr i8, ptr %i.fk, i64 8
  store i32 0, ptr %i.fo, align 8, !tbaa !67
  %i.fp = getelementptr i8, ptr %i.fk, i64 24
  store i32 0, ptr %i.fp, align 8, !tbaa !67
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph234.1
  %indvars.iv.next280.1 = add nuw nsw i64 %indvars.iv279, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader139.loopexit.unr-lcssa, label %.lr.ph234, !llvm.loop !63

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %bb.x
  %indvars.iv284 = phi i64 [ 0, %.lr.ph237.preheader ], [ %indvars.iv.next285, %bb.x ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0121.1.lcssa, i64 %indvars.iv284 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !67 ; 2 uses
  %.not65 = icmp eq i32 %i.fs, 0
  br i1 %.not65, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph237
  %i.ft = trunc nuw nsw i64 %indvars.iv284 to i32
  %i.fu = and i32 %i.ft, 1
  %i.fv = icmp sgt i32 %i.fs, 0
  %i.fw = zext i1 %i.fv to i32
  %i.fx = xor i32 %i.fu, %i.fw
  %i.fy = shl nuw nsw i32 %i.fx, 1
  %i.fz = add nsw i32 %i.fy, -1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !68
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !30
  %i.gf = add nsw i32 %i.fz, %i.ge
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !30
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph237, %bb.w
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit, label %.lr.ph237, !llvm.loop !64

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit: ; preds = %bb.x, %.preheader139, %._crit_edge229
  %.sroa.21.4 = phi ptr [ %.sroa.21.1.lcssa, %._crit_edge229 ], [ %.sroa.0121.1.lcssa, %.preheader139 ], [ %.sroa.0121.1.lcssa, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre296 = load ptr, ptr %i.c, align 8, !tbaa !15
  %.pre297 = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.z

bb.y:                                             ; preds = %.loopexit.split-lp135.loopexit.split-lp, %bb.k, %bb.s
  %.sroa.31.5 = phi ptr [ %.sroa.31.1.lcssa, %bb.s ], [ %.sroa.31.2213, %bb.k ], [ %.sroa.31.3203, %.loopexit.split-lp135.loopexit.split-lp ]
  %.sroa.0121.5 = phi ptr [ %.sroa.0121.1.lcssa, %bb.s ], [ %.sroa.0121.2215, %bb.k ], [ %.sroa.0121.3205, %.loopexit.split-lp135.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.s ], [ %i.ds, %bb.k ], [ %lpad.loopexit.split-lp395, %.loopexit.split-lp135.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %.lr.ph242, %bb.b, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit
  %i.gg = phi ptr [ %i.aa, %bb.b ], [ %.pre297, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %i.aa, %.lr.ph242 ] ; 3 uses
  %i.gh = phi ptr [ %i.ab, %bb.b ], [ %.pre296, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %i.ab, %.lr.ph242 ] ; 3 uses
  %.sroa.31.6 = phi ptr [ %.sroa.31.0238, %bb.b ], [ %.sroa.31.1.lcssa, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.31.0238, %.lr.ph242 ] ; 3 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.0239, %bb.b ], [ %.sroa.21.4, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.21.0239, %.lr.ph242 ]
  %.sroa.0121.6 = phi ptr [ %.sroa.0121.0240, %bb.b ], [ %.sroa.0121.1.lcssa, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.0121.0240, %.lr.ph242 ] ; 5 uses
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 24                ; 2 uses
  %sext = shl i64 %i.gl, 32
  %i.gm = ashr exact i64 %sext, 32
  %i.gn = icmp slt i64 %indvars.iv.next290, %i.gm
  br i1 %i.gn, label %.lr.ph242, label %.preheader, !llvm.loop !65

._crit_edge247:                                   ; preds = %bb.ad, %.preheader
  %.not.i.i.i95 = icmp eq ptr %.sroa.0121.6, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge247
  %i.go = ptrtoint ptr %.sroa.31.6 to i64
  %i.gp = ptrtoint ptr %.sroa.0121.6 to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.6, i64 noundef %i.gq) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %._crit_edge247, %bb.aa
  %.not.i.i.i96 = icmp eq ptr %.sroa.0126.0, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit
  %i.gr = ptrtoint ptr %.sroa.12.0 to i64
  %i.gs = ptrtoint ptr %.sroa.0126.0 to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0, i64 noundef %i.gt) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit, %bb.ab
  ret void

.lr.ph246:                                        ; preds = %.preheader, %bb.ad
  %i.gu = phi ptr [ %i.ha, %bb.ad ], [ %i.gg, %.preheader ] ; 2 uses
  %i.gv = phi ptr [ %i.hb, %bb.ad ], [ %i.gh, %.preheader ]
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %bb.ad ], [ 0, %.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %indvars.iv292
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !30
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph246
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %indvars.iv292
  invoke void @_ZN7msdfgen7Contour7reverseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %._crit_edge298 unwind label %.loopexit

._crit_edge298:                                   ; preds = %bb.ac
  %.pre299 = load ptr, ptr %i.c, align 8, !tbaa !15
  %.pre300 = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge298, %.lr.ph246
  %i.ha = phi ptr [ %.pre300, %._crit_edge298 ], [ %i.gu, %.lr.ph246 ] ; 2 uses
  %i.hb = phi ptr [ %.pre299, %._crit_edge298 ], [ %i.gv, %.lr.ph246 ] ; 2 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = sdiv exact i64 %i.he, 24
  %i.hg = shl i64 %i.hf, 32
  %i.hh = ashr exact i64 %i.hg, 32
  %i.hi = icmp slt i64 %indvars.iv.next293, %i.hh
  br i1 %i.hi, label %.lr.ph246, label %._crit_edge247, !llvm.loop !66

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit, %bb.y
  %.sroa.31.7 = phi ptr [ %.sroa.31.5, %bb.y ], [ %.sroa.31.6, %.loopexit ], [ %.sroa.31.0238, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0121.7 = phi ptr [ %.sroa.0121.5, %bb.y ], [ %.sroa.0121.6, %.loopexit ], [ %.sroa.0121.0240, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.y ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i97 = icmp eq ptr %.sroa.0121.7, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp
  %i.hj = ptrtoint ptr %.sroa.31.7 to i64
  %i.hk = ptrtoint ptr %.sroa.0121.7 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.7, i64 noundef %i.hl) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98: ; preds = %.loopexit.split-lp, %bb.ae
  %.not.i.i.i99 = icmp eq ptr %.sroa.0126.0, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIiSaIiEED2Ev.exit100, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98
  %i.hm = ptrtoint ptr %.sroa.12.0 to i64
  %i.hn = ptrtoint ptr %.sroa.0126.0 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0, i64 noundef %i.ho) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit100

_ZNSt6vectorIiSaIiEED2Ev.exit100:                 ; preds = %bb.af, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98
  resume { ptr, i32 } %.pn68.pn.pn
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZZN7msdfgen5Shape14orientContoursEvEN12Intersection7compareEPKvS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !32
  %i.b = load double, ptr %1, align 8, !tbaa !32
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = fcmp ogt double %i.c, 0.000000e+00
  %i.e = zext i1 %i.d to i32
  %i.f = fcmp olt double %i.c, 0.000000e+00
  %.neg.i = sext i1 %i.f to i32
  %i.g = add nsw i32 %.neg.i, %i.e
  ret i32 %i.g
}

declare void @_ZN7msdfgen7Contour7reverseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 2) i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !38, !range !69, !noundef !70
  %i.c = zext nneg i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7msdfgen5Shape19setYAxisOrientationENS_16YAxisOrientationE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(25) initializes((24, 25)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZNK7msdfgen16QuadraticSegment14convertToCubicEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN7msdfgen10EdgeHolderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !78
  store <2 x ptr> %i.r, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !77
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
end_hunk_0
