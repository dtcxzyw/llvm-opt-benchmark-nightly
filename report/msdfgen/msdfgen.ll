Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/msdfgen?download=true
begin_hunk_0
%"struct.msdfgen::ErrorCorrectionConfig" = type { i32, i32, double, double, ptr }
%struct.anon = type { %"class.msdfgen::SignedDistance", ptr, double }
%struct.anon.8 = type { %"class.msdfgen::SignedDistance", ptr, double }

$_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_21MultiDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_28MultiAndTrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE = comdat any

$_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEED2Ev = comdat any

$_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EEC2EmRKS3_ = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev = comdat any

$_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_ = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev = comdat any

$_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEED2Ev = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEED2Ev = comdat any

$_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEEEED2Ev = comdat any

$_ZN7msdfgen26OverlappingContourCombinerINS_28MultiAndTrueDistanceSelectorEED2Ev = comdat any

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11generateSDFERKNS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_15GeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !8, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.21", align 1 ; 4 uses
  %4 = alloca %"class.msdfgen::DistancePixelConversion", align 16 ; 5 uses
  %5 = alloca %"class.msdfgen::ShapeDistanceFinder", align 8 ; 14 uses
  %6 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  %7 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !13
  store <2 x double> %i.b, ptr %4, align 16, !tbaa !13
  %i.c = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.e, %i.c
  br i1 %.not.i, label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  %i.j = add nsw i32 %i.i, -1
  %i.k = mul nsw i32 %i.j, %i.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !22
  %i.o = sub nsw i32 0, %i.g
  store i32 %i.o, ptr %i.f, align 8, !tbaa !20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !15
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %1, ptr %5, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.q = invoke noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.s = sext i32 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  invoke void @_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEEC2ERKNS_5ShapeE.exit unwind label %bb.e

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.f

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.t, %bb.d ]
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.p) #11
  br label %common.resume

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEEC2ERKNS_5ShapeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEEC2ERKNS_5ShapeE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph39.split, label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge, %.lr.ph39, %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEEC2ERKNS_5ShapeE.exit
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge40
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #12
  br label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %._crit_edge40
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #12
  br label %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #12
  br label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen20TrueDistanceSelectorESaIS1_EED2Ev.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

.lr.ph39.split:                                   ; preds = %.lr.ph39, %._crit_edge
  %i.ay = phi i32 [ %i.bi, %._crit_edge ], [ %i.w, %.lr.ph39 ]
  %i.az = phi i32 [ %i.bj, %._crit_edge ], [ %i.ac, %.lr.ph39 ] ; 3 uses
  %.038 = phi i32 [ %i.bk, %._crit_edge ], [ 1, %.lr.ph39 ] ; 3 uses
  %.02237 = phi i32 [ %i.bl, %._crit_edge ], [ 0, %.lr.ph39 ] ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph39.split
  %i.bb = icmp slt i32 %.038, 0
  %i.bc = add nsw i32 %i.az, -1
  %i.bd = select i1 %i.bb, i32 %i.bc, i32 0
  %i.be = uitofp nneg i32 %.02237 to double
  %i.bf = fadd double %i.be, 5.000000e-01
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = sext i32 %.038 to i64
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load i32, ptr %i.v, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph39.split
  %i.bi = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %.lr.ph39.split ] ; 2 uses
  %i.bj = phi i32 [ %i.dp, %._crit_edge.loopexit ], [ %i.az, %.lr.ph39.split ]
  %i.bk = sub nsw i32 0, %.038
  %i.bl = add nuw nsw i32 %.02237, 1              ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bi
  br i1 %i.bm, label %.lr.ph39.split, label %._crit_edge40, !llvm.loop !38

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.bg, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.02036 = phi i32 [ 0, %.lr.ph ], [ %i.do, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bn = trunc nsw i64 %indvars.iv to i32
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = fadd double %i.bo, 5.000000e-01
  store double %i.bp, ptr %7, align 8, !tbaa !41
  store double %i.bf, ptr %i.z, align 8, !tbaa !43
  %i.bq = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.br = extractvalue { double, double } %i.bq, 0
  store double %i.br, ptr %6, align 8
  %i.bs = extractvalue { double, double } %i.bq, 1
  store double %i.bs, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  invoke void @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  %i.bt = load ptr, ptr %5, align 8, !tbaa !44, !nonnull !12, !align !56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57
  %.not35.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %.noexc
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !26
  br label %.lr.ph38.i

._crit_edge.i:                                    ; preds = %.loopexit.i, %.noexc
  %i.by = invoke noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph38.i:                                       ; preds = %.loopexit.i, %.lr.ph38.preheader.i
  %i.bz = phi ptr [ %i.dd, %.loopexit.i ], [ %i.bt, %.lr.ph38.preheader.i ]
  %.037.i = phi ptr [ %.2.i, %.loopexit.i ], [ %i.bx, %.lr.ph38.preheader.i ] ; 3 uses
  %.sroa.019.036.i = phi ptr [ %i.dc, %.loopexit.i ], [ %i.bu, %.lr.ph38.preheader.i ] ; 6 uses
  %i.ca = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 8 ; 5 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.cf = ptrtoint ptr %.sroa.019.036.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 24
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_20TrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i32 noundef %i.cj)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %bb.l
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !61 ; 2 uses
  %i.cm = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !63 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ugt i64 %i.cp, 8
  %i.cr = getelementptr inbounds i8, ptr %i.cl, i64 -16
  %spec.select.i = select i1 %i.cq, ptr %i.cr, ptr %i.cm
  %i.cs = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %.noexc26
  %i.ct = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit

.noexc28:                                         ; preds = %.noexc27
  %i.cw = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59 ; 2 uses
  %i.cx = load ptr, ptr %i.cb, align 8, !tbaa !59
  %.not2930.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not2930.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc28, %.noexc30
  %.134.i = phi ptr [ %i.cz, %.noexc30 ], [ %.037.i, %.noexc28 ] ; 2 uses
  %.0933.i = phi ptr [ %i.cy, %.noexc30 ], [ %i.cv, %.noexc28 ] ; 2 uses
  %.01032.i = phi ptr [ %.0933.i, %.noexc30 ], [ %i.cs, %.noexc28 ]
  %.sroa.011.031.i = phi ptr [ %i.da, %.noexc30 ], [ %i.cw, %.noexc28 ] ; 2 uses
  %i.cy = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.031.i)
          to label %.noexc29 unwind label %.loopexit ; 2 uses

.noexc29:                                         ; preds = %.lr.ph.i
  invoke void @_ZN7msdfgen20TrueDistanceSelector7addEdgeERNS0_9EdgeCacheEPKNS_11EdgeSegmentES5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %.134.i, ptr noundef %.01032.i, ptr noundef %.0933.i, ptr noundef %i.cy)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc29
  %i.cz = getelementptr inbounds nuw i8, ptr %.134.i, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.011.031.i, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.cb, align 8, !tbaa !59
  %.not29.i = icmp eq ptr %i.da, %i.db
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !64

.loopexit.i:                                      ; preds = %.noexc30, %.noexc28, %.lr.ph38.i
  %.2.i = phi ptr [ %.037.i, %.lr.ph38.i ], [ %.037.i, %.noexc28 ], [ %i.cz, %.noexc30 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %5, align 8, !tbaa !44, !nonnull !12, !align !56 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  %.not.i24 = icmp eq ptr %i.dc, %i.df
  br i1 %.not.i24, label %._crit_edge.i, label %.lr.ph38.i, !llvm.loop !65

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit: ; preds = %._crit_edge.i
  %i.dg = load ptr, ptr %0, align 8, !tbaa !22
  %i.dh = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.di = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %i.by)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit
  %i.dj = mul nsw i32 %i.dh, %.02237
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dk
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv
  %i.dn = fptrunc double %i.di to float
  store float %i.dn, ptr %i.dm, align 4, !tbaa !66
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.do = add nuw nsw i32 %.02036, 1              ; 2 uses
  %i.dp = load i32, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.dq = icmp slt i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !68

bb.n:                                             ; preds = %bb.j
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc27, %.noexc26, %bb.l
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit, %._crit_edge.i, %bb.k
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit32, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_20TrueDistanceSelectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.21", align 1 ; 3 uses
  %4 = alloca %"class.msdfgen::DistancePixelConversion", align 16 ; 5 uses
  %5 = alloca %"class.msdfgen::ShapeDistanceFinder.24", align 8 ; 10 uses
  %6 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  %7 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !13
  store <2 x double> %i.b, ptr %4, align 16, !tbaa !13
  %i.c = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.e, %i.c
  br i1 %.not.i, label %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  %i.k = mul nsw i32 %i.j, %i.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !22
  %i.o = sub nsw i32 0, %i.g
  store i32 %i.o, ptr %i.f, align 8, !tbaa !20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !15
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.p = phi i32 [ %.pre, %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %1, ptr %5, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.s = call noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.t = sext i32 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt6vectorIN7msdfgen20TrueDistanceSelector9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = icmp sgt i32 %i.p, 0
  br i1 %i.v, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph41.split, label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge, %.lr.ph41, %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge42
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #12
  br label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit

_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit: ; preds = %._crit_edge42, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

.lr.ph41.split:                                   ; preds = %.lr.ph41, %._crit_edge
  %i.ai = phi i32 [ %i.as, %._crit_edge ], [ %i.p, %.lr.ph41 ]
  %i.aj = phi i32 [ %i.at, %._crit_edge ], [ %i.aa, %.lr.ph41 ] ; 3 uses
  %.040 = phi i32 [ %i.au, %._crit_edge ], [ 1, %.lr.ph41 ] ; 3 uses
  %.02239 = phi i32 [ %i.av, %._crit_edge ], [ 0, %.lr.ph41 ] ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph41.split
  %i.al = icmp slt i32 %.040, 0
  %i.am = add nsw i32 %i.aj, -1
  %i.an = select i1 %i.al, i32 %i.am, i32 0
  %i.ao = uitofp nneg i32 %.02239 to double
  %i.ap = fadd double %i.ao, 5.000000e-01
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = sext i32 %.040 to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre45 = load i32, ptr %i.u, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph41.split
  %i.as = phi i32 [ %.pre45, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph41.split ] ; 2 uses
  %i.at = phi i32 [ %i.cz, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph41.split ]
  %i.au = sub nsw i32 0, %.040
  %i.av = add nuw nsw i32 %.02239, 1              ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.as
  br i1 %i.aw, label %.lr.ph41.split, label %._crit_edge42, !llvm.loop !69

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.02038 = phi i32 [ 0, %.lr.ph ], [ %i.cy, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ax = trunc nsw i64 %indvars.iv to i32
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fadd double %i.ay, 5.000000e-01
  store double %i.az, ptr %7, align 8, !tbaa !41
  store double %i.ap, ptr %i.x, align 8, !tbaa !43
  %i.ba = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.bb = extractvalue { double, double } %i.ba, 0
  store double %i.bb, ptr %6, align 8
  %i.bc = extractvalue { double, double } %i.ba, 1
  store double %i.bc, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  invoke void @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.bd = load ptr, ptr %5, align 8, !tbaa !70, !nonnull !12, !align !56 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %.not35.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %.noexc
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !26
  br label %.lr.ph38.i

._crit_edge.i:                                    ; preds = %.loopexit.i, %.noexc
  %i.bi = invoke noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph38.i:                                       ; preds = %.loopexit.i, %.lr.ph38.preheader.i
  %i.bj = phi ptr [ %i.cn, %.loopexit.i ], [ %i.bd, %.lr.ph38.preheader.i ]
  %.037.i = phi ptr [ %.2.i, %.loopexit.i ], [ %i.bh, %.lr.ph38.preheader.i ] ; 3 uses
  %.sroa.019.036.i = phi ptr [ %i.cm, %.loopexit.i ], [ %i.be, %.lr.ph38.preheader.i ] ; 6 uses
  %i.bk = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 8 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bp = ptrtoint ptr %.sroa.019.036.i to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7msdfgen21SimpleContourCombinerINS_20TrueDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef %i.bt)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !63 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ugt i64 %i.bz, 8
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 -16
  %spec.select.i = select i1 %i.ca, ptr %i.cb, ptr %i.bw
  %i.cc = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %.noexc26
  %i.cd = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.cf = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit

.noexc28:                                         ; preds = %.noexc27
  %i.cg = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59 ; 2 uses
  %i.ch = load ptr, ptr %i.bl, align 8, !tbaa !59
  %.not2930.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not2930.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc28, %.noexc30
  %.134.i = phi ptr [ %i.cj, %.noexc30 ], [ %.037.i, %.noexc28 ] ; 2 uses
  %.0933.i = phi ptr [ %i.ci, %.noexc30 ], [ %i.cf, %.noexc28 ] ; 2 uses
  %.01032.i = phi ptr [ %.0933.i, %.noexc30 ], [ %i.cc, %.noexc28 ]
  %.sroa.011.031.i = phi ptr [ %i.ck, %.noexc30 ], [ %i.cg, %.noexc28 ] ; 2 uses
  %i.ci = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.031.i)
          to label %.noexc29 unwind label %.loopexit ; 2 uses

.noexc29:                                         ; preds = %.lr.ph.i
  invoke void @_ZN7msdfgen20TrueDistanceSelector7addEdgeERNS0_9EdgeCacheEPKNS_11EdgeSegmentES5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %.134.i, ptr noundef %.01032.i, ptr noundef %.0933.i, ptr noundef %i.ci)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc29
  %i.cj = getelementptr inbounds nuw i8, ptr %.134.i, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.011.031.i, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.bl, align 8, !tbaa !59
  %.not29.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !75

.loopexit.i:                                      ; preds = %.noexc30, %.noexc28, %.lr.ph38.i
  %.2.i = phi ptr [ %.037.i, %.lr.ph38.i ], [ %.037.i, %.noexc28 ], [ %i.cj, %.noexc30 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !70, !nonnull !12, !align !56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %.not.i24 = icmp eq ptr %i.cm, %i.cp
  br i1 %.not.i24, label %._crit_edge.i, label %.lr.ph38.i, !llvm.loop !76

_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit: ; preds = %._crit_edge.i
  %i.cq = load ptr, ptr %0, align 8, !tbaa !22
  %i.cr = load i32, ptr %i.z, align 8, !tbaa !20
  %i.cs = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %i.bi)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit
  %i.ct = mul nsw i32 %i.cr, %.02239
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cx = fptrunc double %i.cs to float
  store float %i.cx, ptr %i.cw, align 4, !tbaa !66
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.cy = add nuw nsw i32 %.02038, 1              ; 2 uses
  %i.cz = load i32, ptr %i.w, align 8, !tbaa !25  ; 2 uses
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !77

bb.h:                                             ; preds = %bb.d
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc27, %.noexc26, %bb.f
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit, %._crit_edge.i, %bb.e
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.h
  %.pn = phi { ptr, i32 } [ %i.db, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit34, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i32, label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit33, label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #12
  br label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit33

_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_20TrueDistanceSelectorEEEED2Ev.exit33: ; preds = %.loopexit.split-lp, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen12generatePSDFERKNS_13BitmapSectionIfLi1EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_15GeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !8, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.34", align 1 ; 4 uses
  %4 = alloca %"class.msdfgen::DistancePixelConversion", align 16 ; 5 uses
  %5 = alloca %"class.msdfgen::ShapeDistanceFinder.25", align 8 ; 14 uses
  %6 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  %7 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !13
  store <2 x double> %i.b, ptr %4, align 16, !tbaa !13
  %i.c = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.e, %i.c
  br i1 %.not.i, label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  %i.j = add nsw i32 %i.i, -1
  %i.k = mul nsw i32 %i.j, %i.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !22
  %i.o = sub nsw i32 0, %i.g
  store i32 %i.o, ptr %i.f, align 8, !tbaa !20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !15
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %1, ptr %5, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.q = invoke noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.s = sext i32 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  invoke void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit unwind label %bb.e

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.f

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.t, %bb.d ]
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.p) #11
  br label %common.resume

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph39.split, label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge, %.lr.ph39, %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEC2ERKNS_5ShapeE.exit
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge40
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #12
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %._crit_edge40
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #12
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #12
  br label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

.lr.ph39.split:                                   ; preds = %.lr.ph39, %._crit_edge
  %i.ay = phi i32 [ %i.bi, %._crit_edge ], [ %i.w, %.lr.ph39 ]
  %i.az = phi i32 [ %i.bj, %._crit_edge ], [ %i.ac, %.lr.ph39 ] ; 3 uses
  %.038 = phi i32 [ %i.bk, %._crit_edge ], [ 1, %.lr.ph39 ] ; 3 uses
  %.02237 = phi i32 [ %i.bl, %._crit_edge ], [ 0, %.lr.ph39 ] ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph39.split
  %i.bb = icmp slt i32 %.038, 0
  %i.bc = add nsw i32 %i.az, -1
  %i.bd = select i1 %i.bb, i32 %i.bc, i32 0
  %i.be = uitofp nneg i32 %.02237 to double
  %i.bf = fadd double %i.be, 5.000000e-01
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = sext i32 %.038 to i64
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load i32, ptr %i.v, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph39.split
  %i.bi = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %.lr.ph39.split ] ; 2 uses
  %i.bj = phi i32 [ %i.dp, %._crit_edge.loopexit ], [ %i.az, %.lr.ph39.split ]
  %i.bk = sub nsw i32 0, %.038
  %i.bl = add nuw nsw i32 %.02237, 1              ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bi
  br i1 %i.bm, label %.lr.ph39.split, label %._crit_edge40, !llvm.loop !86

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.bg, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.02036 = phi i32 [ 0, %.lr.ph ], [ %i.do, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bn = trunc nsw i64 %indvars.iv to i32
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = fadd double %i.bo, 5.000000e-01
  store double %i.bp, ptr %7, align 8, !tbaa !41
  store double %i.bf, ptr %i.z, align 8, !tbaa !43
  %i.bq = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.br = extractvalue { double, double } %i.bq, 0
  store double %i.br, ptr %6, align 8
  %i.bs = extractvalue { double, double } %i.bq, 1
  store double %i.bs, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  invoke void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  %i.bt = load ptr, ptr %5, align 8, !tbaa !87, !nonnull !12, !align !56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57
  %.not35.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %.noexc
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !78
  br label %.lr.ph38.i

._crit_edge.i:                                    ; preds = %.loopexit.i, %.noexc
  %i.by = invoke noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph38.i:                                       ; preds = %.loopexit.i, %.lr.ph38.preheader.i
  %i.bz = phi ptr [ %i.dd, %.loopexit.i ], [ %i.bt, %.lr.ph38.preheader.i ]
  %.037.i = phi ptr [ %.2.i, %.loopexit.i ], [ %i.bx, %.lr.ph38.preheader.i ] ; 3 uses
  %.sroa.019.036.i = phi ptr [ %i.dc, %.loopexit.i ], [ %i.bu, %.lr.ph38.preheader.i ] ; 6 uses
  %i.ca = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 8 ; 5 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.cf = ptrtoint ptr %.sroa.019.036.i to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 24
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i32 noundef %i.cj)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %bb.l
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !61 ; 2 uses
  %i.cm = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !63 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ugt i64 %i.cp, 8
  %i.cr = getelementptr inbounds i8, ptr %i.cl, i64 -16
  %spec.select.i = select i1 %i.cq, ptr %i.cr, ptr %i.cm
  %i.cs = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %.noexc26
  %i.ct = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit

.noexc28:                                         ; preds = %.noexc27
  %i.cw = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59 ; 2 uses
  %i.cx = load ptr, ptr %i.cb, align 8, !tbaa !59
  %.not2930.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not2930.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc28, %.noexc30
  %.134.i = phi ptr [ %i.cz, %.noexc30 ], [ %.037.i, %.noexc28 ] ; 2 uses
  %.0933.i = phi ptr [ %i.cy, %.noexc30 ], [ %i.cv, %.noexc28 ] ; 2 uses
  %.01032.i = phi ptr [ %.0933.i, %.noexc30 ], [ %i.cs, %.noexc28 ]
  %.sroa.011.031.i = phi ptr [ %i.da, %.noexc30 ], [ %i.cw, %.noexc28 ] ; 2 uses
  %i.cy = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.031.i)
          to label %.noexc29 unwind label %.loopexit ; 2 uses

.noexc29:                                         ; preds = %.lr.ph.i
  invoke void @_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %.134.i, ptr noundef %.01032.i, ptr noundef %.0933.i, ptr noundef %i.cy)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc29
  %i.cz = getelementptr inbounds nuw i8, ptr %.134.i, i64 56 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.011.031.i, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.cb, align 8, !tbaa !59
  %.not29.i = icmp eq ptr %i.da, %i.db
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !96

.loopexit.i:                                      ; preds = %.noexc30, %.noexc28, %.lr.ph38.i
  %.2.i = phi ptr [ %.037.i, %.lr.ph38.i ], [ %.037.i, %.noexc28 ], [ %i.cz, %.noexc30 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %5, align 8, !tbaa !87, !nonnull !12, !align !56 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  %.not.i24 = icmp eq ptr %i.dc, %i.df
  br i1 %.not.i24, label %._crit_edge.i, label %.lr.ph38.i, !llvm.loop !97

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit: ; preds = %._crit_edge.i
  %i.dg = load ptr, ptr %0, align 8, !tbaa !22
  %i.dh = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.di = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %i.by)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit
  %i.dj = mul nsw i32 %i.dh, %.02237
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dk
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv
  %i.dn = fptrunc double %i.di to float
  store float %i.dn, ptr %i.dm, align 4, !tbaa !66
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.do = add nuw nsw i32 %.02036, 1              ; 2 uses
  %i.dp = load i32, ptr %i.y, align 8, !tbaa !25  ; 2 uses
  %i.dq = icmp slt i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !98

bb.n:                                             ; preds = %bb.j
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc27, %.noexc26, %bb.l
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit, %._crit_edge.i, %bb.k
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit32, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef byval(%"struct.msdfgen::BitmapSection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.34", align 1 ; 3 uses
  %4 = alloca %"class.msdfgen::DistancePixelConversion", align 16 ; 5 uses
  %5 = alloca %"class.msdfgen::ShapeDistanceFinder.37", align 8 ; 10 uses
  %6 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  %7 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !13
  store <2 x double> %i.b, ptr %4, align 16, !tbaa !13
  %i.c = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %.not.i = icmp eq i32 %i.e, %i.c
  br i1 %.not.i, label %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, label %bb.b

._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  %i.k = mul nsw i32 %i.j, %i.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !22
  %i.o = sub nsw i32 0, %i.g
  store i32 %i.o, ptr %i.f, align 8, !tbaa !20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !15
  br label %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge, %bb.b
  %i.p = phi i32 [ %.pre, %._ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit_crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %1, ptr %5, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 4 uses
  %i.s = call noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.t = sext i32 %i.s to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = icmp sgt i32 %i.p, 0
  br i1 %i.v, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph41.split, label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge, %.lr.ph41, %_ZN7msdfgen13BitmapSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge42
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #12
  br label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit

_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit: ; preds = %._crit_edge42, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

.lr.ph41.split:                                   ; preds = %.lr.ph41, %._crit_edge
  %i.ai = phi i32 [ %i.as, %._crit_edge ], [ %i.p, %.lr.ph41 ]
  %i.aj = phi i32 [ %i.at, %._crit_edge ], [ %i.aa, %.lr.ph41 ] ; 3 uses
  %.040 = phi i32 [ %i.au, %._crit_edge ], [ 1, %.lr.ph41 ] ; 3 uses
  %.02239 = phi i32 [ %i.av, %._crit_edge ], [ 0, %.lr.ph41 ] ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph41.split
  %i.al = icmp slt i32 %.040, 0
  %i.am = add nsw i32 %i.aj, -1
  %i.an = select i1 %i.al, i32 %i.am, i32 0
  %i.ao = uitofp nneg i32 %.02239 to double
  %i.ap = fadd double %i.ao, 5.000000e-01
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = sext i32 %.040 to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre45 = load i32, ptr %i.u, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph41.split
  %i.as = phi i32 [ %.pre45, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph41.split ] ; 2 uses
  %i.at = phi i32 [ %i.cz, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph41.split ]
  %i.au = sub nsw i32 0, %.040
  %i.av = add nuw nsw i32 %.02239, 1              ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.as
  br i1 %i.aw, label %.lr.ph41.split, label %._crit_edge42, !llvm.loop !99

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.02038 = phi i32 [ 0, %.lr.ph ], [ %i.cy, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.ax = trunc nsw i64 %indvars.iv to i32
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fadd double %i.ay, 5.000000e-01
  store double %i.az, ptr %7, align 8, !tbaa !41
  store double %i.ap, ptr %i.x, align 8, !tbaa !43
  %i.ba = invoke { double, double } @_ZNK7msdfgen10Projection9unprojectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.bb = extractvalue { double, double } %i.ba, 0
  store double %i.bb, ptr %6, align 8
  %i.bc = extractvalue { double, double } %i.ba, 1
  store double %i.bc, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  invoke void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.bd = load ptr, ptr %5, align 8, !tbaa !100, !nonnull !12, !align !56 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !57
  %.not35.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not35.i, label %._crit_edge.i, label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %.noexc
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !78
  br label %.lr.ph38.i

._crit_edge.i:                                    ; preds = %.loopexit.i, %.noexc
  %i.bi = invoke noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph38.i:                                       ; preds = %.loopexit.i, %.lr.ph38.preheader.i
  %i.bj = phi ptr [ %i.cn, %.loopexit.i ], [ %i.bd, %.lr.ph38.preheader.i ]
  %.037.i = phi ptr [ %.2.i, %.loopexit.i ], [ %i.bh, %.lr.ph38.preheader.i ] ; 3 uses
  %.sroa.019.036.i = phi ptr [ %i.cm, %.loopexit.i ], [ %i.be, %.lr.ph38.preheader.i ] ; 6 uses
  %i.bk = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 8 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bp = ptrtoint ptr %.sroa.019.036.i to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %i.q, i32 noundef %i.bt)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit

.noexc26:                                         ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !63 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ugt i64 %i.bz, 8
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 -16
  %spec.select.i = select i1 %i.ca, ptr %i.cb, ptr %i.bw
  %i.cc = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

.noexc27:                                         ; preds = %.noexc26
  %i.cd = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.cf = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit

.noexc28:                                         ; preds = %.noexc27
  %i.cg = load ptr, ptr %.sroa.019.036.i, align 8, !tbaa !59 ; 2 uses
  %i.ch = load ptr, ptr %i.bl, align 8, !tbaa !59
  %.not2930.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not2930.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc28, %.noexc30
  %.134.i = phi ptr [ %i.cj, %.noexc30 ], [ %.037.i, %.noexc28 ] ; 2 uses
  %.0933.i = phi ptr [ %i.ci, %.noexc30 ], [ %i.cf, %.noexc28 ] ; 2 uses
  %.01032.i = phi ptr [ %.0933.i, %.noexc30 ], [ %i.cc, %.noexc28 ]
  %.sroa.011.031.i = phi ptr [ %i.ck, %.noexc30 ], [ %i.cg, %.noexc28 ] ; 2 uses
  %i.ci = invoke noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.031.i)
          to label %.noexc29 unwind label %.loopexit ; 2 uses

.noexc29:                                         ; preds = %.lr.ph.i
  invoke void @_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %.134.i, ptr noundef %.01032.i, ptr noundef %.0933.i, ptr noundef %i.ci)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.noexc29
  %i.cj = getelementptr inbounds nuw i8, ptr %.134.i, i64 56 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.011.031.i, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.bl, align 8, !tbaa !59
  %.not29.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.noexc30, %.noexc28, %.lr.ph38.i
  %.2.i = phi ptr [ %.037.i, %.lr.ph38.i ], [ %.037.i, %.noexc28 ], [ %i.cj, %.noexc30 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.036.i, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !100, !nonnull !12, !align !56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %.not.i24 = icmp eq ptr %i.cm, %i.cp
  br i1 %.not.i24, label %._crit_edge.i, label %.lr.ph38.i, !llvm.loop !107

_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit: ; preds = %._crit_edge.i
  %i.cq = load ptr, ptr %0, align 8, !tbaa !22
  %i.cr = load i32, ptr %i.z, align 8, !tbaa !20
  %i.cs = invoke noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %4, double noundef %i.bi)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit
  %i.ct = mul nsw i32 %i.cr, %.02239
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cx = fptrunc double %i.cs to float
  store float %i.cx, ptr %i.cw, align 4, !tbaa !66
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.cy = add nuw nsw i32 %.02038, 1              ; 2 uses
  %i.cz = load i32, ptr %i.w, align 8, !tbaa !25  ; 2 uses
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !108

bb.h:                                             ; preds = %bb.d
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc29
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc27, %.noexc26, %bb.f
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E.exit, %._crit_edge.i, %bb.e
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.h
  %.pn = phi { ptr, i32 } [ %i.db, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit34, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i32, label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit33, label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !81
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #12
  br label %_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit33

_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev.exit33: ; preds = %.loopexit.split-lp, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen12generateMSDFERKNS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %3, align 8, !tbaa !8, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7msdfgen21generateDistanceFieldINS_21SimpleContourCombinerINS_21MultiDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN7msdfgen19msdfErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen21generateDistanceFieldINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEEEvNS_23DistancePixelConversionINT_12DistanceTypeEE17BitmapSectionTypeERKNS_5ShapeERKNS_17SDFTransformationE(ptr noundef byval(%"struct.msdfgen::BitmapSection.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator.34", align 1 ; 4 uses
  %4 = alloca %"class.msdfgen::DistancePixelConversion.39", align 16 ; 7 uses
  %5 = alloca %"class.msdfgen::ShapeDistanceFinder.40", align 8 ; 14 uses
  %6 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  %7 = alloca %"struct.msdfgen::Vector2", align 8 ; 6 uses
  %8 = alloca %"struct.msdfgen::MultiDistance", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !13
  store <2 x double> %i.b, ptr %4, align 16, !tbaa !13
  %i.c = tail call noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !109
  %.not.i = icmp eq i32 %i.e, %i.c
  br i1 %.not.i, label %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !111  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !112
  %i.j = add nsw i32 %i.i, -1
  %i.k = mul nsw i32 %i.j, %i.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !113
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !113
  %i.o = sub nsw i32 0, %i.g
  store i32 %i.o, ptr %i.f, align 8, !tbaa !111
  store i32 %i.c, ptr %i.d, align 4, !tbaa !109
  br label %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr %1, ptr %5, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.q = invoke noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.s = sext i32 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  invoke void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.s, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEEC2ERKNS_5ShapeE.exit unwind label %bb.e

bb.d:                                             ; preds = %_ZN7msdfgen13BitmapSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.f

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.t, %bb.d ]
  call void @_ZN7msdfgen26OverlappingContourCombinerINS_21MultiDistanceSelectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.p) #11
  br label %common.resume

_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEEC2ERKNS_5ShapeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !112  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEEC2ERKNS_5ShapeE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !114 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph40.split, label %._crit_edge41

._crit_edge41:                                    ; preds = %._crit_edge, %.lr.ph40, %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEEC2ERKNS_5ShapeE.exit
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !78  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge41
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #12
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i: ; preds = %bb.g, %._crit_edge41
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !118
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #12
  br label %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_21MultiDistanceSelectorEEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7msdfgen21MultiDistanceSelectorESaIS1_EED2Ev.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 40
end_hunk_0
