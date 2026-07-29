inline.NumInlined: 1656
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement2DE:bb.a
  %i.aj = load <2 x double>, ptr %2, align 16
  %.pre11 = load double, ptr %i.ag, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.ak = phi double [ %.pre11, %bb.d ], [ 0.000000e+00, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit ]
  %i.al = phi <2 x double> [ %i.aj, %bb.d ], [ <double 1.000000e+00, double 0.000000e+00>, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit ] ; 3 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = fneg double %i.am
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.08.0..sroa.08.0..sroa.08.0..sroa.08.0. = load double, ptr %.sroa.08, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.08.0..sroa.08.0..sroa.08.0..sroa.08.0., ptr %i.ap, align 8
  %.sroa.69.0..sroa.69.0..sroa.69.0..sroa.69.8. = load double, ptr %.sroa.69, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.69.0..sroa.69.0..sroa.69.0..sroa.69.8., ptr %i.aq, align 8
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load double, ptr %.sroa.8, align 8
  store double %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = extractelement <2 x double> %i.al, i64 1
  store double %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ak, ptr %i.at, align 8
  store <2 x double> %i.al, ptr %0, align 8
  store double %i.an, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 0.000000e+00, ptr %i.av, align 8
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20ConvertAxisPlacementER10aiVector3tIdES3_RKNS0_10Schema_2x317IfcAxis1PlacementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN10aiVector3tIdEixEj.exit.i, %.lr.ph.i
  %i.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.o, %_ZN10aiVector3tIdEixEj.exit.i ]
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %_ZN10aiVector3tIdEixEj.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.07.i
  %i.k = load double, ptr %i.j, align 8
  %i.l = trunc i64 %.07.i to i32
  switch i32 %i.l, label %_ZN10aiVector3tIdEixEj.exit.i [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN10aiVector3tIdEixEj.exit.i

bb.d:                                             ; preds = %bb.b
  br label %_ZN10aiVector3tIdEixEj.exit.i

_ZN10aiVector3tIdEixEj.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %1, %bb.b ]
  store double %i.k, ptr %.0.i.i, align 8
  %i.m = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %bb.b, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, !llvm.loop !189

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit: ; preds = %_ZN10aiVector3tIdEixEj.exit.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.v = load i8, ptr %i.u, align 8, !range !192, !noundef !187
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.y = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  tail call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.y)
  br label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !187, !align !188
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 noundef %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  %.pre.i.i.i = load ptr, ptr %i.h, align 8
  br label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %.pre.i.i.i, %bb.c ], [ %i.i, %bb.b ]
  %i.k = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.j, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcAxis2Placement3DE, i64 -1) #25 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit
  tail call void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement3DE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread: ; preds = %bb.a, %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit
  %i.l = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE, ptr nonnull @_ZTIN6Assimp4STEP7EXPRESS6ENTITYE, i64 0) #25 ; 2 uses
  %.not.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i12, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread
  %i.m = load ptr, ptr %i.b, align 8, !nonnull !187, !align !188
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %i.m, i64 noundef %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i13, label %bb.f, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
  %.pre.i.i.i15 = load ptr, ptr %i.q, align 8
  br label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit: ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %.pre.i.i.i15, %bb.f ], [ %i.r, %bb.e ]
  %i.t = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.s, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x319IfcAxis2Placement2DE, i64 -1) #25 ; 2 uses
  %.not11 = icmp eq ptr %i.t, null
  br i1 %.not11, label %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit
  tail call void @_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS0_10Schema_2x319IfcAxis2Placement2DE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.t)
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit

_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread: ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement3DEEEPKT_RKNS0_2DBE.exit.thread, %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit
  %i.u = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.u, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread
  %i.v = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.w = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.w, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA42_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(42) @.str.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA42_KcEEEvDpOT_.exit: ; preds = %bb.h, %_ZNK6Assimp4STEP7EXPRESS8DataType16ResolveSelectPtrINS_3IFC10Schema_2x319IfcAxis2Placement2DEEEPKT_RKNS0_2DBE.exit.thread, %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC24ConvertTransformOperatorER12aiMatrix4x4tIdERKNS0_10Schema_2x334IfcCartesianTransformationOperatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.0101 = alloca double, align 8            ; 9 uses
  %.sroa.6102 = alloca double, align 8            ; 6 uses
  %.sroa.8103 = alloca double, align 8            ; 6 uses
  %2 = alloca %class.aiVector3t, align 16         ; 7 uses
  %3 = alloca %class.aiVector3t, align 16         ; 7 uses
  %4 = alloca %class.aiVector3t, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0101)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8103)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  store double 0.000000e+00, ptr %.sroa.0101, align 8
  store double 0.000000e+00, ptr %.sroa.6102, align 8
  store double 0.000000e+00, ptr %.sroa.8103, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i
  %i.m = load double, ptr %i.l, align 8
  store double %i.m, ptr %.sroa.0101, align 8
  %i.n = or disjoint i64 %.07.i, 1                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load double, ptr %i.o, align 8
  %i.q = trunc i64 %i.n to i32
  %cond123 = icmp eq i32 %i.q, 1
  %spec.select124 = select i1 %cond123, ptr %.sroa.6102, ptr %.sroa.0101
  store double %i.p, ptr %spec.select124, align 8
  %i.r = or disjoint i64 %.07.i, 2                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r
  %i.t = load double, ptr %i.s, align 8
  %i.u = trunc i64 %i.r to i32
  %cond = icmp eq i32 %i.u, 2
  %spec.select = select i1 %cond, ptr %.sroa.8103, ptr %.sroa.0101
  store double %i.t, ptr %spec.select, align 8
  %i.v = or disjoint i64 %.07.i, 3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load double, ptr %i.w, align 8
  store double %i.x, ptr %.sroa.0101, align 8
  %i.y = add nuw i64 %.07.i, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !189

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %_ZN10aiVector3tIdEixEj.exit.i.epil, %.lr.ph.i.epil.preheader
  %.07.i.epil = phi i64 [ %i.ac, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ %.07.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i.epil
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = trunc i64 %.07.i.epil to i32
  switch i32 %i.ab, label %_ZN10aiVector3tIdEixEj.exit.i.epil [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

bb.c:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

_ZN10aiVector3tIdEixEj.exit.i.epil:               ; preds = %bb.c, %bb.b, %.lr.ph.i.epil
  %.0.i.i.epil = phi ptr [ %.sroa.6102, %bb.b ], [ %.sroa.8103, %bb.c ], [ %.sroa.0101, %.lr.ph.i.epil ]
  store double %i.aa, ptr %.0.i.i.epil, align 8
  %i.ac = add nuw i64 %.07.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil, !llvm.loop !194

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit: ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %_ZN10aiVector3tIdEixEj.exit.i.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store double 1.000000e+00, ptr %2, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %3, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store double 0.000000e+00, ptr %i.ag, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !range !192, !noundef !187
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.am)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i8, ptr %i.an, align 8, !range !192, !noundef !187
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ar)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %1, i64 %i.au
  %i.aw = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.av, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x336IfcCartesianTransformationOperator3DE, i64 -1) #25 ; 3 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.ay = load i8, ptr %i.ax, align 8, !range !192, !noundef !187
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.bb = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bb)
  %i.bc = load <2 x double>, ptr %4, align 16
  %.pre105 = load double, ptr %i.ah, align 16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bd = phi double [ 1.000000e+00, %bb.h ], [ %.pre105, %bb.i ], [ 1.000000e+00, %bb.g ] ; 4 uses
  %i.be = phi <2 x double> [ zeroinitializer, %bb.h ], [ %i.bc, %bb.i ], [ zeroinitializer, %bb.g ] ; 4 uses
  %.sroa.0101.0..sroa.0101.0..sroa.0101.0..sroa.0101.0. = load double, ptr %.sroa.0101, align 8 ; 2 uses
  %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8. = load double, ptr %.sroa.6102, align 8 ; 3 uses
  %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16. = load double, ptr %.sroa.8103, align 8 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load double, ptr %i.ae, align 16        ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store double %i.bf, ptr %6, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %7 = load <2 x double>, ptr %2, align 16        ; 4 uses
  %i.bh = load double, ptr %i.ad, align 8         ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0      ; 2 uses
  store double %8, ptr %0, align 8
  store double %i.bh, ptr %5, align 8
  %9 = load <2 x double>, ptr %3, align 16        ; 4 uses
  %i.bi = load double, ptr %i.af, align 8         ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0     ; 2 uses
  store double %10, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bi, ptr %i.bj, align 8
  %i.bk = load double, ptr %i.ag, align 16        ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  store double %i.bn, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bp = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  store double %i.bp, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store double %i.bd, ptr %i.bq, align 8
  %i.br = load ptr, ptr %1, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt
  %i.bv = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.bu, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x346IfcCartesianTransformationOperator3DnonUniformE, i64 -1) #25 ; 6 uses
  %.not26 = icmp eq ptr %i.bv, null
  br i1 %.not26, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.bx = load i8, ptr %i.bw, align 8, !range !192, !noundef !187
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ca = load double, ptr %i.bz, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cb = phi double [ %i.ca, %bb.l ], [ 1.000000e+00, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  %i.cd = load i8, ptr %i.cc, align 8, !range !192, !noundef !187
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 152
  %i.cg = load double, ptr %i.cf, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ch = phi double [ %i.cg, %bb.n ], [ 1.000000e+00, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.cj = load i8, ptr %i.ci, align 8, !range !192, !noundef !187
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  %i.cm = load double, ptr %i.cl, align 8
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.co = load i8, ptr %i.cn, align 8, !range !192, !noundef !187
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cr = load double, ptr %i.cq, align 8         ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.985.0 = phi double [ 1.000000e+00, %bb.o ], [ %i.cm, %bb.p ], [ %i.cr, %bb.r ], [ 1.000000e+00, %bb.q ] ; 4 uses
  %.sroa.684.0 = phi double [ %i.ch, %bb.o ], [ %i.ch, %bb.p ], [ %i.cr, %bb.r ], [ 1.000000e+00, %bb.q ]
  %.sroa.083.0 = phi double [ %i.cb, %bb.o ], [ %i.cb, %bb.p ], [ %i.cr, %bb.r ], [ 1.000000e+00, %bb.q ]
  %11 = shufflevector <2 x double> %7, <2 x double> %9, <2 x i32> <i32 1, i32 3>
  %12 = fmul <2 x double> %11, zeroinitializer    ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %7, %12
  %13 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %i.bf, double 0.000000e+00, double %13)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8         ; 4 uses
  %shift = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop111 = fadd <2 x double> %9, %shift
  %i.cu = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ct, i64 0
  %i.cv = insertelement <2 x double> poison, double %.sroa.0101.0..sroa.0101.0..sroa.0101.0..sroa.0101.0., i64 0 ; 2 uses
  %15 = insertelement <2 x double> %i.cv, double %i.bk, i64 1
  %i.cw = insertelement <2 x double> poison, double %14, i64 0
  %16 = shufflevector <2 x double> %i.cw, <2 x double> %foldExtExtBinop111, <2 x i32> <i32 0, i32 2>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %15, <2 x double> %16) ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cy = load double, ptr %i.cx, align 8         ; 3 uses
  %i.cz = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.bd, i64 1
  %i.db = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.0101.0..sroa.0101.0..sroa.0101.0..sroa.0101.0., i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8         ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %19 = load double, ptr %i.df, align 8           ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8         ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dj = tail call double @llvm.fmuladd.f64(double %8, double 0.000000e+00, double %i.bh)
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.bf, double 0.000000e+00, double %i.dj)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.ct, double %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8., double %i.dk) ; 2 uses
  %i.dm = tail call double @llvm.fmuladd.f64(double %10, double 0.000000e+00, double %i.bi)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bk, double 0.000000e+00, double %i.dm)
  %i.do = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dp = insertelement <2 x double> %i.do, double %i.cy, i64 0 ; 2 uses
  %i.dq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8., i64 0
  %i.dr = insertelement <2 x double> %i.be, double %i.dn, i64 0
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dq, <2 x double> %i.dr) ; 2 uses
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.de, double 0.000000e+00, double %19)
  %i.du = fmul double %i.bp, 0.000000e+00         ; 2 uses
  %i.dv = fadd double %i.bn, %i.du
  %i.dw = insertelement <2 x double> %18, double %i.dv, i64 1
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.db, <2 x double> %i.dw) ; 2 uses
  %21 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16., i64 0 ; 2 uses
  %i.dx = fmul double %19, 0.000000e+00           ; 2 uses
  %i.dy = fadd double %i.de, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dh, double 0.000000e+00, double %i.dy)
  %22 = shufflevector <2 x double> %7, <2 x double> %9, <2 x i32> <i32 0, i32 2>
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> zeroinitializer, <2 x double> %12) ; 3 uses
  %23 = extractelement <2 x double> %i.ea, i64 0
  %i.eb = fadd double %i.bf, %23
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.ct, double %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16., double %i.eb) ; 2 uses
  %24 = extractelement <2 x double> %i.ea, i64 1
  %i.ed = fadd double %i.bk, %24
  %i.ee = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.du, i64 1
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %21, <2 x double> %i.ef) ; 3 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1
  %i.ei = fadd double %i.bd, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.dx, i64 1
  %i.el = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.bk, i64 1
  %25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> zeroinitializer, <2 x double> %i.ea) ; 2 uses
  %26 = extractelement <2 x double> %25, i64 0
  %27 = fadd double %26, %i.ct                    ; 2 uses
  %i.en = extractelement <2 x double> %25, i64 1
  %i.eo = fadd double %i.en, %i.cy
  %28 = insertelement <2 x double> poison, double %i.bd, i64 0
  %29 = insertelement <2 x double> %28, double %i.dh, i64 1 ; 2 uses
  %i.ep = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.sroa.684.0, i64 1 ; 4 uses
  %i.eq = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.ep, %i.eq          ; 2 uses
  %i.es = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.083.0, i64 0 ; 4 uses
  %i.et = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.et, <2 x double> %i.er)
  %i.ev = extractelement <2 x double> %i.er, i64 0
  %i.ew = extractelement <2 x double> %17, i64 0
  %i.ex = load <2 x double>, ptr %i.dc, align 8   ; 5 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 1
  %i.ez = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fb = insertelement <2 x double> %i.fa, double %i.dz, i64 1
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ez, <2 x double> %i.fb) ; 5 uses
  %30 = insertelement <2 x double> %i.ex, double %i.de, i64 1
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %21, <2 x double> %i.ek) ; 4 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 1
  %i.ff = fadd double %i.dh, %i.fe
  %31 = tail call double @llvm.fmuladd.f64(double %i.ey, double %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16., double %i.ff) ; 3 uses
  %32 = shufflevector <2 x double> %i.eg, <2 x double> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> zeroinitializer, <2 x double> %32)
  %i.fh = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> zeroinitializer, <2 x double> %i.eu)
  %i.fj = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> zeroinitializer, <2 x double> %i.fi)
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.ew, double 0.000000e+00, double %i.ev) ; 2 uses
  %i.fm = extractelement <2 x double> %i.fc, i64 0
  %i.fn = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %i.fm, double %i.fl)
  %i.fo = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fn, i64 1
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> zeroinitializer, <2 x double> %i.fp) ; 2 uses
  %shift113 = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop114 = fadd <2 x double> %i.fq, %shift113
  %i.fr = extractelement <2 x double> %foldExtExtBinop114, i64 0
  store <2 x double> %i.fk, ptr %0, align 8
  %i.fs = extractelement <2 x double> %i.fq, i64 1
  store double %i.fs, ptr %i.bm, align 8
  store double %i.fr, ptr %i.dd, align 8
  %i.ft = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x double> %i.ep, %i.ft          ; 2 uses
  %i.fv = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.fw, <2 x double> %i.fu)
  %33 = extractelement <2 x double> %i.fu, i64 0
  %34 = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %35 = insertelement <2 x double> %34, double %i.dt, i64 1
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> zeroinitializer, <2 x double> %35)
  %36 = insertelement <2 x double> poison, double %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8., i64 0
  %37 = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> zeroinitializer
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %37, <2 x double> %i.fy) ; 5 uses
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> zeroinitializer, <2 x double> %i.fx)
  %41 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> zeroinitializer, <2 x double> %40)
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.dl, double 0.000000e+00, double %33) ; 2 uses
  %42 = extractelement <2 x double> %38, i64 0
  %i.gb = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %42, double %i.ga)
  %i.gc = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.gb, i64 1
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> zeroinitializer, <2 x double> %i.gd) ; 2 uses
  %shift116 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop117 = fadd <2 x double> %43, %shift116
  %44 = extractelement <2 x double> %foldExtExtBinop117, i64 0
  store <2 x double> %i.fz, ptr %5, align 8
  %i.ge = extractelement <2 x double> %43, i64 1
  store double %i.ge, ptr %i.bo, align 8
  store double %44, ptr %i.df, align 8
  %i.gf = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x double> %i.ep, %i.gf          ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.gi, <2 x double> %i.gg)
  %i.gk = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> zeroinitializer, <2 x double> %i.gj)
  %45 = insertelement <2 x double> poison, double %31, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %46, <2 x double> zeroinitializer, <2 x double> %i.gl)
  %i.gm = extractelement <2 x double> %i.gg, i64 0
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.ec, double 0.000000e+00, double %i.gm) ; 2 uses
  %48 = extractelement <2 x double> %i.fd, i64 0  ; 2 uses
  %49 = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %48, double %i.gn)
  %50 = tail call double @llvm.fmuladd.f64(double %31, double 0.000000e+00, double %49)
  %51 = tail call double @llvm.fmuladd.f64(double %48, double 0.000000e+00, double %i.gn)
  %52 = fadd double %51, %31
  store <2 x double> %47, ptr %6, align 8
  store double %50, ptr %i.bq, align 8
  store double %52, ptr %i.dg, align 8
  %i.go = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x double> %i.ep, %i.gp          ; 2 uses
  %i.gr = insertelement <2 x double> poison, double %27, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.gs, <2 x double> %i.gq)
  %i.gu = extractelement <2 x double> %i.gq, i64 0
  %i.gv = fadd <2 x double> %i.fg, %i.ex          ; 5 uses
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> zeroinitializer, <2 x double> %i.gt)
  %i.gy = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> zeroinitializer, <2 x double> %i.gx)
  %i.ha = tail call double @llvm.fmuladd.f64(double %27, double 0.000000e+00, double %i.gu) ; 2 uses
  %i.hb = extractelement <2 x double> %i.gv, i64 0
  %i.hc = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %i.hb, double %i.ha)
  %i.hd = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.hc, i64 1
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> zeroinitializer, <2 x double> %i.he) ; 2 uses
  %shift119 = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop120 = fadd <2 x double> %i.hf, %shift119
  %i.hg = extractelement <2 x double> %foldExtExtBinop120, i64 0
  store <2 x double> %i.gz, ptr %i.cs, align 8
  %i.hh = extractelement <2 x double> %i.hf, i64 1
  store double %i.hh, ptr %i.dc, align 8
  store double %i.hg, ptr %i.di, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0101)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8103)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !195

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_0
