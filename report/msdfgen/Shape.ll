Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Shape?download=true
inline.NumInlined: 510
inline.NumDeleted: 232
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7msdfgen5Shape5boundERdS1_S1_S1_:bb.a

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
  %.not39 = icmp eq ptr %i.c, %i.e
  br i1 %.not39, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge43:                                    ; preds = %._crit_edge38, %bb.a
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.l

bb.b:                                             ; preds = %.lr.ph42, %._crit_edge38
  %i.h = phi ptr [ %i.e, %.lr.ph42 ], [ %i.o, %._crit_edge38 ]
  %i.i = phi ptr [ null, %.lr.ph42 ], [ %i.p, %._crit_edge38 ] ; 2 uses
  %i.j = phi ptr [ null, %.lr.ph42 ], [ %i.q, %._crit_edge38 ] ; 2 uses
  %i.k = phi ptr [ null, %.lr.ph42 ], [ %i.r, %._crit_edge38 ] ; 2 uses
  %.sroa.028.040 = phi ptr [ %i.c, %.lr.ph42 ], [ %i.s, %._crit_edge38 ] ; 3 uses
  %i.l = load ptr, ptr %.sroa.028.040, align 8, !tbaa !18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.040, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not3234 = icmp eq ptr %i.l, %i.n
  br i1 %.not3234, label %._crit_edge38, label %.lr.ph37

._crit_edge38.loopexit:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !22
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %bb.b
  %i.o = phi ptr [ %.pre, %._crit_edge38.loopexit ], [ %i.h, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.ac, %._crit_edge38.loopexit ], [ %i.i, %bb.b ]
  %i.q = phi ptr [ %i.ad, %._crit_edge38.loopexit ], [ %i.j, %bb.b ]
  %i.r = phi ptr [ %i.ae, %._crit_edge38.loopexit ], [ %i.k, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.028.040, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.o
  br i1 %.not, label %._crit_edge43, label %bb.b, !llvm.loop !49

.lr.ph37:                                         ; preds = %bb.b, %._crit_edge
  %i.t = phi ptr [ %i.ac, %._crit_edge ], [ %i.i, %bb.b ] ; 3 uses
  %i.u = phi ptr [ %i.ad, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.ae, %._crit_edge ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.024.035 = phi ptr [ %i.af, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %i.w = invoke noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.024.035)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %.lr.ph37
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %2)
          to label %.preheader unwind label %bb.d ; 2 uses

.preheader:                                       ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit, %.preheader
  %i.ac = phi ptr [ %i.t, %.preheader ], [ %i.be, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %.preheader ], [ %i.bf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ae = phi ptr [ %i.v, %.preheader ], [ %i.bg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.024.035, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !18
  %.not32 = icmp eq ptr %i.af, %i.ag
  br i1 %.not32, label %._crit_edge38.loopexit, label %.lr.ph37, !llvm.loop !50

bb.d:                                             ; preds = %bb.c, %.lr.ph37
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit
  %i.ai = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.be, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.aj = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.bf, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.ak = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.bg, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.am = load double, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store double %i.am, ptr %i.ak, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.ao, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !54
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 7 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.g, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.au = ashr exact i64 %i.as, 4
  %mul2.i.i = ashr exact i64 %i.as, 3
  %4 = call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.av = icmp ult i64 %4, %i.au
  %i.aw = call i64 @llvm.umin.i64(i64 %4, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #20
          to label %.noexc14 unwind label %.loopexit ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.as ; 3 uses
  store double %i.am, ptr %i.ba, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.ao, ptr %.sroa.6.0..sroa_idx19, align 8, !tbaa !30
  %i.bb = icmp sgt i64 %i.as, 0
  br i1 %i.bb, label %bb.h, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.h:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ai, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.h, %.noexc14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.as) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.az, ptr %3, align 8, !tbaa !55
  store ptr %i.bc, ptr %i.f, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax ; 2 uses
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !56
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e
  %i.be = phi ptr [ %i.az, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ai, %bb.e ] ; 2 uses
  %i.bf = phi ptr [ %i.bd, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.aj, %bb.e ] ; 2 uses
  %i.bg = phi ptr [ %i.bc, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ap, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bh = load ptr, ptr %3, align 8, !tbaa !55    ; 3 uses
  %.not.i.i.i15.a = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i15.a, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.l:                                             ; preds = %._crit_edge43
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %.pre45 = load ptr, ptr %3, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d, %bb.l
  %i.bo = phi ptr [ %.pre45, %bb.l ], [ %i.t, %bb.d ], [ %i.ai, %.loopexit ], [ %i.ai, %.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %i.ah, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i.i.i16 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #18
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit17: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn
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
  br i1 %i.x, label %.lr.ph226, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit

.preheader:                                       ; preds = %bb.ac
  %i.y = trunc i64 %i.gn to i32
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph230, label %._crit_edge231

.lr.ph226:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %bb.ac
  %i.aa = phi ptr [ %i.gi, %bb.ac ], [ %i.r, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 3 uses
  %i.ab = phi ptr [ %i.gj, %bb.ac ], [ %i.q, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 2 uses
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %bb.ac ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 6 uses
  %.sroa.0121.0224 = phi ptr [ %.sroa.0121.6, %bb.ac ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 7 uses
  %.sroa.21.0223 = phi ptr [ %.sroa.21.5, %bb.ac ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 4 uses
  %.sroa.31.0222 = phi ptr [ %.sroa.31.6, %bb.ac ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ] ; 7 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %indvars.iv273
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %.lr.ph226
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv273 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7msdfgen5Shape14orientContoursEv:bb.a
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !68
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !30
  %i.gh = add nsw i32 %i.gb, %i.gg
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !30
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph221, %bb.z
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit, label %.lr.ph221, !llvm.loop !64

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit: ; preds = %bb.aa, %.preheader134, %._crit_edge213
  %.sroa.21.4 = phi ptr [ %.sroa.21.1.lcssa, %._crit_edge213 ], [ %.sroa.0121.1.lcssa, %.preheader134 ], [ %.sroa.0121.1.lcssa, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre280 = load ptr, ptr %i.c, align 8, !tbaa !15
  %.pre281 = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.v
  %.sroa.31.5 = phi ptr [ %.sroa.31.1.lcssa, %bb.v ], [ %.sroa.31.2197, %bb.n ], [ %.sroa.21.3188, %.loopexit ], [ %.sroa.21.3188, %.loopexit.split-lp ]
  %.sroa.0121.5 = phi ptr [ %.sroa.0121.1.lcssa, %bb.v ], [ %.sroa.0121.2199, %bb.n ], [ %.sroa.0121.3189, %.loopexit ], [ %.sroa.0121.3189, %.loopexit.split-lp ]
  %.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.v ], [ %i.du, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ai

bb.ac:                                            ; preds = %.lr.ph226, %bb.b, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit
  %i.gi = phi ptr [ %i.aa, %bb.b ], [ %.pre281, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %i.aa, %.lr.ph226 ] ; 3 uses
  %i.gj = phi ptr [ %i.ab, %bb.b ], [ %.pre280, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %i.ab, %.lr.ph226 ] ; 3 uses
  %.sroa.31.6 = phi ptr [ %.sroa.31.0222, %bb.b ], [ %.sroa.31.1.lcssa, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.31.0222, %.lr.ph226 ] ; 3 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.0223, %bb.b ], [ %.sroa.21.4, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.21.0223, %.lr.ph226 ]
  %.sroa.0121.6 = phi ptr [ %.sroa.0121.0224, %bb.b ], [ %.sroa.0121.1.lcssa, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EE5clearEv.exit ], [ %.sroa.0121.0224, %.lr.ph226 ] ; 5 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = sdiv exact i64 %i.gm, 24                ; 2 uses
  %sext304 = shl i64 %i.gn, 32
  %i.go = ashr exact i64 %sext304, 32
  %i.gp = icmp slt i64 %indvars.iv.next274, %i.go
  br i1 %i.gp, label %.lr.ph226, label %.preheader, !llvm.loop !65

._crit_edge231:                                   ; preds = %bb.ah, %.preheader
  %.not.i.i.i95 = icmp eq ptr %.sroa.0121.6, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge231
  %i.gq = ptrtoint ptr %.sroa.31.6 to i64
  %i.gr = ptrtoint ptr %.sroa.0121.6 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.6, i64 noundef %i.gs) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %._crit_edge231, %bb.ad
  %.not.i.i.i96 = icmp eq ptr %.sroa.0126.0, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit
  %i.gt = ptrtoint ptr %.sroa.12.0 to i64
  %i.gu = ptrtoint ptr %.sroa.0126.0 to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0, i64 noundef %i.gv) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit, %bb.ae
  ret void

.lr.ph230:                                        ; preds = %.preheader, %bb.ah
  %i.gw = phi ptr [ %i.hd, %bb.ah ], [ %i.gi, %.preheader ] ; 2 uses
  %i.gx = phi ptr [ %i.he, %bb.ah ], [ %i.gj, %.preheader ]
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %bb.ah ], [ 0, %.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.0, i64 %indvars.iv276
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !30
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph230
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %indvars.iv276
  invoke void @_ZN7msdfgen7Contour7reverseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %._crit_edge282 unwind label %bb.ag

._crit_edge282:                                   ; preds = %bb.af
  %.pre283 = load ptr, ptr %i.c, align 8, !tbaa !15
  %.pre284 = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge282, %.lr.ph230
  %i.hd = phi ptr [ %.pre284, %._crit_edge282 ], [ %i.gw, %.lr.ph230 ] ; 2 uses
  %i.he = phi ptr [ %.pre283, %._crit_edge282 ], [ %i.gx, %.lr.ph230 ] ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = sdiv exact i64 %i.hh, 24
  %sext305 = shl i64 %i.hi, 32
  %i.hj = ashr exact i64 %sext305, 32
  %i.hk = icmp slt i64 %indvars.iv.next277, %i.hj
  br i1 %i.hk, label %.lr.ph230, label %._crit_edge231, !llvm.loop !66

bb.ai:                                            ; preds = %bb.f, %bb.ab, %bb.l, %bb.i, %bb.ag
  %.sroa.31.7 = phi ptr [ %.sroa.31.0222, %bb.i ], [ %.sroa.31.0222, %bb.l ], [ %.sroa.31.5, %bb.ab ], [ %.sroa.31.0222, %bb.f ], [ %.sroa.31.6, %bb.ag ]
  %.sroa.0121.7 = phi ptr [ %.sroa.0121.0224, %bb.i ], [ %.sroa.0121.0224, %bb.l ], [ %.sroa.0121.5, %bb.ab ], [ %.sroa.0121.0224, %bb.f ], [ %.sroa.0121.6, %bb.ag ] ; 3 uses
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.i ], [ %i.cr, %bb.l ], [ %.pn.pn, %bb.ab ], [ %i.bd, %bb.f ], [ %i.hc, %bb.ag ]
  %.not.i.i.i97 = icmp eq ptr %.sroa.0121.7, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hl = ptrtoint ptr %.sroa.31.7 to i64
  %i.hm = ptrtoint ptr %.sroa.0121.7 to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.7, i64 noundef %i.hn) #18
  br label %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98

_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98: ; preds = %bb.ai, %bb.aj
  %.not.i.i.i99 = icmp eq ptr %.sroa.0126.0, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIiSaIiEED2Ev.exit100, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98
  %i.ho = ptrtoint ptr %.sroa.12.0 to i64
  %i.hp = ptrtoint ptr %.sroa.0126.0 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0, i64 noundef %i.hq) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit100

_ZNSt6vectorIiSaIiEED2Ev.exit100:                 ; preds = %bb.ak, %_ZNSt6vectorIZN7msdfgen5Shape14orientContoursEvE12IntersectionSaIS2_EED2Ev.exit98
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
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 24                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.q = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !78, !noalias !77
  store <2 x ptr> %i.q, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !77, !noalias !78
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20, !alias.scope !78, !noalias !77
  store ptr %i.t, ptr %i.r, align 8, !tbaa !20, !alias.scope !77, !noalias !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !78, !noalias !77
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7msdfgen7ContourEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.ac, %.lr.ph.i.i.i27 ], [ %i.w, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i29 = phi ptr [ %i.ab, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i29, align 8, !tbaa !18, !alias.scope !80, !noalias !79
  store <2 x ptr> %i.x, ptr %.012.i.i.i28, align 8, !tbaa !18, !alias.scope !79, !noalias !80
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20, !alias.scope !80, !noalias !79
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !20, !alias.scope !79, !noalias !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !80, !noalias !79
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !3

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.w, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ac, %.lr.ph.i.i.i27 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ag) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !21
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !16
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #17 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #18
  invoke void @__cxa_rethrow() #19
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ai

bb.g:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #21
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7msdfgen10EdgeHolderEE8allocateEmPKv.exit.i.i.i, !prof !82

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIN7msdfgen10EdgeHolderEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7msdfgen10EdgeHolderEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7msdfgen10EdgeHolderEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen10EdgeHolderESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen10EdgeHolderESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !81

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #17 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #17
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #19
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen10EdgeHolderESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !24
  ret void

.body:                                            ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.u
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 24
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !18
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  store ptr %i.t, ptr %i.r, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !90, !noalias !89
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !89, !noalias !90
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20, !alias.scope !90, !noalias !89
  store ptr %i.x, ptr %i.v, align 8, !tbaa !20, !alias.scope !89, !noalias !90
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !90, !noalias !89
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.z, %.lr.ph.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %i.aa, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.af, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.ab = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !92, !noalias !91
  store <2 x ptr> %i.ab, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !91, !noalias !92
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20, !alias.scope !92, !noalias !91
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !20, !alias.scope !91, !noalias !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !92, !noalias !91
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aa, %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ag, %.lr.ph.i.i.i17 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ak) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !21
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN7msdfgen7ContourEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN7msdfgen7ContourEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !15
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
  unreachable

_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !97, !noalias !96
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !96, !noalias !97
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20, !alias.scope !97, !noalias !96
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !20, !alias.scope !96, !noalias !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !97, !noalias !96
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN7msdfgen7ContourESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN7msdfgen7ContourESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7msdfgen7ContourEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3
  %mul2 = ashr exact i64 %i.f, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.k = select i1 %i.i, i64 1152921504606846975, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !98

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #17 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.o, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #17
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #19
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #21
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN7msdfgen10EdgeHolderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.r, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.z, %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN7msdfgen10EdgeHolderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(8) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN7msdfgen10EdgeHolderEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 8 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !98

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #17 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i34) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ad, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #19
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit.i.i.i.i.i36
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #21
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
  %.05.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN7msdfgen10EdgeHolderES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderEEvT_S3_.exit, %bb.k
  store ptr %i.o, ptr %0, align 8, !tbaa !23
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !20
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE12_M_check_lenEmPKc.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %i.ao) #17 ; 0 uses
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.aq = extractvalue { ptr, i32 } %i.w, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.aq) #17 ; 0 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #17
  br label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.as = extractvalue { ptr, i32 } %i.ae, 0
  %i.at = tail call ptr @__cxa_begin_catch(ptr %i.as) #17 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.o, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.au, %.lr.ph.i.i46 ], [ %i.o, %bb.l ] ; 3 uses
  tail call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #17
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !0

bb.m:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #18
  invoke void @__cxa_rethrow() #19
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.av

bb.o:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #21
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_1
