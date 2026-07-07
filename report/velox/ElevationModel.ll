inline.NumInlined: 146
inline.NumDeleted: 91
begin_hunk_0_@_ZN4geos9operation9overlayng14ElevationModel6createERKNS_4geom8GeometryES6_:bb.a
_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.q

bb.o:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit12
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.as) #16
  br label %bb.u

bb.p:                                             ; preds = %bb.s, %bb.n, %bb.q, %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4geos9operation9overlayng14ElevationModelESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  br label %bb.u

bb.q:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit, %bb.m
  %i.be = load ptr, ptr %2, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  br i1 %i.bh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEE6Filter, i64 16), ptr %3, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.as, ptr %i.bi, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.bj, align 8, !tbaa !19
  %i.bk = load ptr, ptr %2, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 336
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit13 unwind label %bb.p, !inline_history !23

_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit13: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.t

bb.t:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit13, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

bb.u:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.bc, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.Filter, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEE6Filter, i64 16), ptr %2, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.b, align 8, !tbaa !19
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN4geos9operation9overlayng14ElevationModelESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN4geos9operation9overlayng14ElevationModelEEclEPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNKSt14default_deleteIN4geos9operation9overlayng14ElevationModelEEclEPS3_.exit

_ZNKSt14default_deleteIN4geos9operation9overlayng14ElevationModelEEclEPS3_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #16
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN4geos9operation9overlayng14ElevationModelEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng14ElevationModel6createERKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.Filter, align 8              ; 6 uses
  %3 = alloca %"class.geos::geom::Envelope", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store <4 x double> splat (double +qnan), ptr %3, align 8, !tbaa !7
  %i.a = load ptr, ptr %1, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.i = load <4 x double>, ptr %i.h, align 8, !tbaa !7
  store <4 x double> %i.i, ptr %3, align 8, !tbaa !7
  br label %_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit

_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit: ; preds = %bb.b, %bb.a
  %i.j = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #15 ; 4 uses
  invoke void @_ZN4geos9operation9overlayng14ElevationModelC1ERKNS_4geom8EnvelopeEii(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3, i32 noundef 3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !16
  %i.k = load ptr, ptr %1, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEE6Filter, i64 16), ptr %2, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.p, align 8, !tbaa !19
  %i.q = load ptr, ptr %1, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit unwind label %bb.g, !inline_history !23

_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.h

bb.f:                                             ; preds = %_ZN4geos4geom8Envelope15expandToIncludeEPKS1_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.j) #16
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4geos9operation9overlayng14ElevationModelESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  br label %bb.i

bb.h:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng14ElevationModelC2ERKNS_4geom8EnvelopeEii(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 82), (88, 96)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %2, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %3, ptr %i.b, align 4, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.c, i8 0, i64 26, i1 false)
  store double +qnan, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = insertelement <2 x i32> poison, i32 %2, i64 0
  %5 = insertelement <2 x i32> %4, i32 %3, i64 1
  %6 = sitofp <2 x i32> %5 to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load <4 x double>, ptr %0, align 8         ; 2 uses
  %8 = load double, ptr %i.e, align 8, !tbaa !14
  %9 = fcmp uno double %8, 0.000000e+00
  %10 = shufflevector <4 x double> %7, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %11 = shufflevector <4 x double> %7, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %12 = fsub <2 x double> %10, %11
  %13 = insertelement <2 x i1> poison, i1 %9, i64 0
  %14 = shufflevector <2 x i1> %13, <2 x i1> poison, <2 x i32> zeroinitializer
  %15 = select <2 x i1> %14, <2 x double> zeroinitializer, <2 x double> %12
  %16 = fdiv <2 x double> %15, %6                 ; 3 uses
  store <2 x double> %16, ptr %i.f, align 8, !tbaa !7
  %17 = extractelement <2 x double> %16, i64 0
  %i.g = fcmp ugt double %17, 0.000000e+00
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !28
  br label %bb.e

bb.c:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #16
  br label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EED2Ev.exit

_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EED2Ev.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 1, %bb.b ], [ %2, %bb.a ]
  %18 = extractelement <2 x double> %16, i64 1
  %i.k = fcmp ugt double %18, 0.000000e+00
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.b, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = phi i32 [ 1, %bb.f ], [ %3, %bb.e ]
  %i.m = sext i32 %i.j to i64
  %i.n = sext i32 %i.l to i64
  %i.o = mul nsw i64 %i.n, %i.m
  invoke void @_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.o)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 384307168202282325, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4geos9operation9overlayng14ElevationModel13ElevationCellEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN4geos9operation9overlayng14ElevationModel13ElevationCellEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 24                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !35
  br label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 384307168202282325
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 384307168202282325) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #15 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !37, !alias.scope !38
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE13_M_deallocateEPS4_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE13_M_deallocateEPS4_m.exit36.i

_ZNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE13_M_deallocateEPS4_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !36
  br label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.g
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN4geos9operation9overlayng14ElevationModel13ElevationCellES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4geos9operation9overlayng14ElevationModel13ElevationCellES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !35
  br label %_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit

_ZNSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN4geos9operation9overlayng14ElevationModel13ElevationCellES4_EvT_S6_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE13_M_deallocateEPS4_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN4geos9operation9overlayng14ElevationModel13ElevationCellEmS4_ET_S6_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom24CoordinateSequenceFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9operation9overlayng14ElevationModel3addEddd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp uno double %3, 0.000000e+00
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 1, ptr %i.b, align 1, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %0, align 8, !tbaa !11
  %i.g = fsub double %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !45
  %i.j = fdiv double %i.g, %i.i
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = add nsw i32 %i.d, -1
  %i.m = icmp slt i32 %i.k, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.k)
  %i.n = select i1 %i.m, i32 0, i32 %..i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !15
  %i.t = fsub double %2, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load double, ptr %i.u, align 8, !tbaa !46
  %i.w = fdiv double %i.t, %i.v
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %i.y = add nsw i32 %i.p, -1
  %i.z = icmp slt i32 %i.x, 0
  %..i9.i = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.x)
  %i.aa = select i1 %i.z, i32 0, i32 %..i9.i
  %i.ab = mul nsw i32 %i.aa, %i.d
  br label %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit

_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit: ; preds = %bb.d, %bb.e
  %.017.i = phi i32 [ %i.ab, %bb.e ], [ 0, %bb.d ]
  %i.ac = add nsw i32 %.017.i, %.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = sext i32 %i.ac to i64
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !47
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !49
  %i.al = fadd double %3, %i.ak
  store double %i.al, ptr %i.aj, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos9operation9overlayng14ElevationModel7getCellEdd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, double noundef %1, double noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8, !tbaa !11
  %i.e = fsub double %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %i.f, align 8, !tbaa !45
  %i.h = fdiv double %i.e, %i.g
  %i.i = fptosi double %i.h to i32                ; 2 uses
  %i.j = add nsw i32 %i.b, -1
  %i.k = icmp slt i32 %i.i, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.i)
  %i.l = select i1 %i.k, i32 0, i32 %..i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !33   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !15
  %i.r = fsub double %2, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load double, ptr %i.s, align 8, !tbaa !46
  %i.u = fdiv double %i.r, %i.t
  %i.v = fptosi double %i.u to i32                ; 2 uses
  %i.w = add nsw i32 %i.n, -1
  %i.x = icmp slt i32 %i.v, 0
  %..i9 = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.v)
  %i.y = select i1 %i.x, i32 0, i32 %..i9
  %i.z = mul nsw i32 %i.y, %i.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.017 = phi i32 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.aa = add nsw i32 %.017, %.0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = sext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9operation9overlayng14ElevationModel4initEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((80, 81)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.not15 = icmp eq ptr %i.c, %i.e
  br i1 %.not15, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %i.f = icmp sgt i32 %.1, 0
  %i.g = uitofp nneg i32 %.1 to double
  %i.h = fdiv double %.111, %i.g
  %spec.select = select i1 %i.f, double %i.h, double +qnan
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.i = phi double [ +qnan, %bb.a ], [ %spec.select, %._crit_edge ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.i, ptr %i.j, align 8, !tbaa !34
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.018 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]    ; 2 uses
  %.01017 = phi double [ %.111, %bb.d ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.012.016 = phi ptr [ %i.v, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %i.k = load i32, ptr %.sroa.012.016, align 8, !tbaa !47 ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 16 ; 2 uses
  store double +qnan, ptr %i.m, align 8, !tbaa !52
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %bb.c, label %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !49
  %i.q = uitofp nneg i32 %i.k to double
  %i.r = fdiv double %i.p, %i.q                   ; 2 uses
  store double %i.r, ptr %i.m, align 8, !tbaa !52
  %i.s = fadd double %.01017, %i.r
  br label %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit

_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit: ; preds = %bb.b, %bb.c
  %i.t = phi double [ +qnan, %bb.b ], [ %i.s, %bb.c ]
  %i.u = add i32 %.018, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit, %.lr.ph
  %.111 = phi double [ %.01017, %.lr.ph ], [ %i.t, %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit ] ; 2 uses
  %.1 = phi i32 [ %.018, %.lr.ph ], [ %i.u, %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN4geos9operation9overlayng14ElevationModel4getZEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, double noundef %1, double noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !50, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %.not15.i = icmp eq ptr %i.e, %i.g
  br i1 %.not15.i, label %_ZN4geos9operation9overlayng14ElevationModel4initEv.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e
  %i.h = icmp sgt i32 %.1.i, 0
  %i.i = uitofp nneg i32 %.1.i to double
  %i.j = fdiv double %.111.i, %i.i
  %spec.select.i = select i1 %i.h, double %i.j, double +qnan
  br label %_ZN4geos9operation9overlayng14ElevationModel4initEv.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.018.i = phi i32 [ %.1.i, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.01017.i = phi double [ %.111.i, %bb.e ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %i.v, %bb.e ], [ %i.e, %bb.b ] ; 4 uses
  %i.k = load i32, ptr %.sroa.012.016.i, align 8, !tbaa !47 ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 16 ; 2 uses
  store double +qnan, ptr %i.m, align 8, !tbaa !52
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %bb.d, label %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !49
  %i.q = uitofp nneg i32 %i.k to double
  %i.r = fdiv double %i.p, %i.q                   ; 2 uses
  store double %i.r, ptr %i.m, align 8, !tbaa !52
  %i.s = fadd double %.01017.i, %i.r
  br label %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i

_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i: ; preds = %bb.d, %bb.c
  %i.t = phi double [ +qnan, %bb.c ], [ %i.s, %bb.d ]
  %i.u = add i32 %.018.i, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i, %.lr.ph.i
  %.111.i = phi double [ %.01017.i, %.lr.ph.i ], [ %i.t, %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.018.i, %.lr.ph.i ], [ %i.u, %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4geos9operation9overlayng14ElevationModel4initEv.exit: ; preds = %bb.b, %._crit_edge.i
  %i.w = phi double [ +qnan, %bb.b ], [ %spec.select.i, %._crit_edge.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.w, ptr %i.x, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel4initEv.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load double, ptr %0, align 8, !tbaa !11
  %i.ac = fsub double %1, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !45
  %i.af = fdiv double %i.ac, %i.ae
  %i.ag = fptosi double %i.af to i32              ; 2 uses
  %i.ah = add nsw i32 %i.z, -1
  %i.ai = icmp slt i32 %i.ag, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag)
  %i.aj = select i1 %i.ai, i32 0, i32 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.aj, %bb.g ], [ 0, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.i, label %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !15
  %i.ap = fsub double %2, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46
  %i.as = fdiv double %i.ap, %i.ar
  %i.at = fptosi double %i.as to i32              ; 2 uses
  %i.au = add nsw i32 %i.al, -1
  %i.av = icmp slt i32 %i.at, 0
  %..i9.i = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.at)
  %i.aw = select i1 %i.av, i32 0, i32 %..i9.i
  %i.ax = mul nsw i32 %i.aw, %i.z
  br label %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit

_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit: ; preds = %bb.h, %bb.i
  %.017.i = phi i32 [ %i.ax, %bb.i ], [ 0, %bb.h ]
  %i.ay = add nsw i32 %.017.i, %.0.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = sext i32 %i.ay to i64
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !47
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.0.in = select i1 %i.be, ptr %i.bf, ptr %i.bg
  %.0 = load double, ptr %.0.in, align 8, !tbaa !7
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation9overlayng14ElevationModel9populateZERNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.Filter.10, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.b = load i8, ptr %i.a, align 1, !tbaa !44, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !50, !range !53, !noundef !54
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %.not15.i = icmp eq ptr %i.h, %i.j
  br i1 %.not15.i, label %_ZN4geos9operation9overlayng14ElevationModel4initEv.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f
  %i.k = icmp sgt i32 %.1.i, 0
  %i.l = uitofp nneg i32 %.1.i to double
  %i.m = fdiv double %.111.i, %i.l
  %spec.select.i = select i1 %i.k, double %i.m, double +qnan
  br label %_ZN4geos9operation9overlayng14ElevationModel4initEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.018.i = phi i32 [ %.1.i, %bb.f ], [ 0, %bb.c ] ; 2 uses
  %.01017.i = phi double [ %.111.i, %bb.f ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %i.y, %bb.f ], [ %i.h, %bb.c ] ; 4 uses
  %i.n = load i32, ptr %.sroa.012.016.i, align 8, !tbaa !47 ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 16 ; 2 uses
  store double +qnan, ptr %i.p, align 8, !tbaa !52
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %bb.e, label %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !49
  %i.t = uitofp nneg i32 %i.n to double
  %i.u = fdiv double %i.s, %i.t                   ; 2 uses
  store double %i.u, ptr %i.p, align 8, !tbaa !52
  %i.v = fadd double %.01017.i, %i.u
  br label %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i

_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i: ; preds = %bb.e, %bb.d
  %i.w = phi double [ +qnan, %bb.d ], [ %i.v, %bb.e ]
  %i.x = add i32 %.018.i, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i, %.lr.ph.i
  %.111.i = phi double [ %.01017.i, %.lr.ph.i ], [ %i.w, %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i ] ; 2 uses
  %.1.i = phi i32 [ %.018.i, %.lr.ph.i ], [ %i.x, %_ZN4geos9operation9overlayng14ElevationModel13ElevationCell7computeEv.exit.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.j
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4geos9operation9overlayng14ElevationModel4initEv.exit: ; preds = %bb.c, %._crit_edge.i
  %i.z = phi double [ +qnan, %bb.c ], [ %spec.select.i, %._crit_edge.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.z, ptr %i.aa, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %_ZN4geos9operation9overlayng14ElevationModel4initEv.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN4geos9operation9overlayng14ElevationModel9populateZERNS_4geom8GeometryEE6Filter, i64 16), ptr %2, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.ab, align 8, !tbaa !16
  %i.ac = load ptr, ptr %1, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom16CoordinateFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEEN6FilterD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom24CoordinateSequenceFilter9filter_rwERNS0_18CoordinateSequenceEm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEEN6Filter9filter_roERKNS3_18CoordinateSequenceEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !55
  %i.e = icmp ugt i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !19
  br label %_ZN4geos9operation9overlayng14ElevationModel3addEddd.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56, !nonnull !54, !align !57 ; 8 uses
  %i.m = load double, ptr %i.j, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !61 ; 2 uses
  %i.r = fcmp uno double %i.q, 0.000000e+00
  br i1 %i.r, label %_ZN4geos9operation9overlayng14ElevationModel3addEddd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 81
  store i8 1, ptr %i.s, align 1, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !28   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load double, ptr %i.l, align 8, !tbaa !11
  %i.x = fsub double %i.m, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !45
  %i.aa = fdiv double %i.x, %i.z
  %i.ab = fptosi double %i.aa to i32              ; 2 uses
  %i.ac = add nsw i32 %i.u, -1
  %i.ad = icmp slt i32 %i.ab, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.ab)
  %i.ae = select i1 %i.ad, i32 0, i32 %..i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !33 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !15
  %i.ak = fsub double %i.o, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.am = load double, ptr %i.al, align 8, !tbaa !46
  %i.an = fdiv double %i.ak, %i.am
  %i.ao = fptosi double %i.an to i32              ; 2 uses
  %i.ap = add nsw i32 %i.ag, -1
  %i.aq = icmp slt i32 %i.ao, 0
  %..i9.i.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ao)
  %i.ar = select i1 %i.aq, i32 0, i32 %..i9.i.i
  %i.as = mul nsw i32 %i.ar, %i.u
  br label %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit.i

_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit.i: ; preds = %bb.g, %bb.f
  %.017.i.i = phi i32 [ %i.as, %bb.g ], [ 0, %bb.f ]
  %i.at = add nsw i32 %.017.i.i, %.0.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.av = sext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.av ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !47
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !49
  %i.bc = fadd double %i.q, %i.bb
  store double %i.bc, ptr %i.ba, align 8, !tbaa !49
  br label %_ZN4geos9operation9overlayng14ElevationModel3addEddd.exit

_ZN4geos9operation9overlayng14ElevationModel3addEddd.exit: ; preds = %_ZN4geos9operation9overlayng14ElevationModel7getCellEdd.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEENK6Filter6isDoneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !19, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEENK6Filter17isGeometryChangedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4geos9operation9overlayng14ElevationModel9populateZERNS_4geom8GeometryEEN6FilterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN4geos9operation9overlayng14ElevationModel9populateZERNS_4geom8GeometryEENK6Filter9filter_rwEPNS3_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !61
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62, !nonnull !54, !align !57
  %i.f = load double, ptr %1, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !60
  %i.i = tail call noundef double @_ZN4geos9operation9overlayng14ElevationModel4getZEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.e, double noundef %i.f, double noundef %i.h)
  store double %i.i, ptr %i.a, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom16CoordinateFilter9filter_roEPKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !6, i64 0}
!11 = !{!12, !8, i64 0}
!12 = !{!"_ZTSN4geos4geom8EnvelopeE", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!13 = !{!12, !8, i64 24}
!14 = !{!12, !8, i64 8}
!15 = !{!12, !8, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSN4geos9operation9overlayng14ElevationModelE", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!20, !22, i64 16}
!20 = !{!"_ZTSZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryEE6Filter", !21, i64 0, !17, i64 8, !22, i64 16}
!21 = !{!"_ZTSN4geos4geom24CoordinateSequenceFilterE"}
!22 = !{!"bool", !5, i64 0}
!23 = !{ptr @_ZN4geos9operation9overlayng14ElevationModel3addERKNS_4geom8GeometryE}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN4geos9operation9overlayng14ElevationModel13ElevationCellE", !18, i64 0}
!27 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 24, i64 8, !7}
!28 = !{!29, !4, i64 32}
!29 = !{!"_ZTSN4geos9operation9overlayng14ElevationModelE", !12, i64 0, !4, i64 32, !4, i64 36, !8, i64 40, !8, i64 48, !30, i64 56, !22, i64 80, !22, i64 81, !8, i64 88}
!30 = !{!"_ZTSSt6vectorIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN4geos9operation9overlayng14ElevationModel13ElevationCellESaIS4_EE12_Vector_implE", !25, i64 0}
!33 = !{!29, !4, i64 36}
!34 = !{!29, !8, i64 88}
!35 = !{!25, !26, i64 8}
!36 = !{!25, !26, i64 16}
!37 = !{i64 0, i64 4, !3, i64 8, i64 8, !7, i64 16, i64 8, !7}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"_ZSt19__relocate_object_aIN4geos9operation9overlayng14ElevationModel13ElevationCellES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!40 = distinct !{!40, !"_ZSt19__relocate_object_aIN4geos9operation9overlayng14ElevationModel13ElevationCellES4_SaIS4_EEvPT_PT0_RT1_"}
!41 = distinct !{!41, !40, !"_ZSt19__relocate_object_aIN4geos9operation9overlayng14ElevationModel13ElevationCellES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!29, !22, i64 81}
!45 = !{!29, !8, i64 40}
!46 = !{!29, !8, i64 48}
!47 = !{!48, !4, i64 0}
!48 = !{!"_ZTSN4geos9operation9overlayng14ElevationModel13ElevationCellE", !4, i64 0, !8, i64 8, !8, i64 16}
!49 = !{!48, !8, i64 8}
!50 = !{!29, !22, i64 80}
!51 = !{!26, !26, i64 0}
!52 = !{!48, !8, i64 16}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = distinct !{null}
!56 = !{!20, !17, i64 8}
!57 = !{i64 8}
!58 = !{!59, !8, i64 0}
!59 = !{!"_ZTSN4geos4geom10CoordinateE", !8, i64 0, !8, i64 8, !8, i64 16}
!60 = !{!59, !8, i64 8}
!61 = !{!59, !8, i64 16}
!62 = !{!63, !17, i64 8}
!63 = !{!"_ZTSZN4geos9operation9overlayng14ElevationModel9populateZERNS_4geom8GeometryEE6Filter", !64, i64 0, !17, i64 8}
!64 = !{!"_ZTSN4geos4geom16CoordinateFilterE"}
end_hunk_0
