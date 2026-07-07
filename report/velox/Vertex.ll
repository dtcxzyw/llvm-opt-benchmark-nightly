inline.NumInlined: 164
inline.NumDeleted: 83
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.geos::algorithm::HCoordinate" = type { double, double, double }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZTIN4geos9algorithm25NotRepresentableExceptionE = comdat any

$_ZTSN4geos9algorithm25NotRepresentableExceptionE = comdat any

$_ZTIN4geos4util13GEOSExceptionE = comdat any

$_ZTSN4geos4util13GEOSExceptionE = comdat any

@_ZTIN4geos9algorithm25NotRepresentableExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9algorithm25NotRepresentableExceptionE, ptr @_ZTIN4geos4util13GEOSExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9algorithm25NotRepresentableExceptionE = linkonce_odr constant [45 x i8] c"N4geos9algorithm25NotRepresentableExceptionE\00", comdat, align 1
@_ZTIN4geos4util13GEOSExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4util13GEOSExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4geos4util13GEOSExceptionE = linkonce_odr constant [28 x i8] c"N4geos4util13GEOSExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr

@_ZN4geos11triangulate8quadedge6VertexC1Edd = unnamed_addr alias void (ptr, double, double), ptr @_ZN4geos11triangulate8quadedge6VertexC2Edd
@_ZN4geos11triangulate8quadedge6VertexC1Eddd = unnamed_addr alias void (ptr, double, double, double), ptr @_ZN4geos11triangulate8quadedge6VertexC2Eddd
@_ZN4geos11triangulate8quadedge6VertexC1ERKNS_4geom10CoordinateE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos11triangulate8quadedge6VertexC2ERKNS_4geom10CoordinateE
@_ZN4geos11triangulate8quadedge6VertexC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos11triangulate8quadedge6VertexC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate8quadedge6VertexC2Edd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double +qnan, ptr %i.b, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate8quadedge6VertexC2Eddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos11triangulate8quadedge6VertexC2ERKNS_4geom10CoordinateE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos11triangulate8quadedge6VertexC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 7) i32 @_ZN4geos11triangulate8quadedge6Vertex8classifyERKS2_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13, !noalias !14 ; 5 uses
  %i.b = load double, ptr %2, align 8, !tbaa !17, !noalias !14
  %i.c = load double, ptr %1, align 8, !tbaa !17, !noalias !14
  %i.d = fsub double %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !19, !noalias !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !19, !noalias !14
  %i.i = fsub double %i.f, %i.h
  invoke void @_ZN4geos11triangulate8quadedge6VertexC1Edd(ptr noundef nonnull align 8 dereferenceable(24) %i.a, double noundef %i.d, double noundef %i.i)
          to label %_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_.exit unwind label %bb.b, !noalias !14

common.resume:                                    ; preds = %bb.c, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.s, %bb.c ], [ %i.y, %bb.e ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #14
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_.exit: ; preds = %bb.a
  %i.k = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13
          to label %.noexc unwind label %bb.e     ; 5 uses

.noexc:                                           ; preds = %_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_.exit
  %i.l = load double, ptr %0, align 8, !tbaa !17, !noalias !20
  %i.m = load double, ptr %1, align 8, !tbaa !17, !noalias !20
  %i.n = fsub double %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !19, !noalias !20
  %i.q = load double, ptr %i.g, align 8, !tbaa !19, !noalias !20
  %i.r = fsub double %i.p, %i.q
  invoke void @_ZN4geos11triangulate8quadedge6VertexC1Edd(ptr noundef nonnull align 8 dereferenceable(24) %i.k, double noundef %i.n, double noundef %i.r)
          to label %bb.d unwind label %bb.c, !noalias !20

bb.c:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #14, !noalias !20
  br label %common.resume

bb.d:                                             ; preds = %.noexc
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load <2 x double>, ptr %i.a, align 8, !tbaa !13 ; 4 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !19 ; 2 uses
  %5 = load <2 x double>, ptr %i.k, align 8, !tbaa !13 ; 4 uses
  %6 = load double, ptr %3, align 8, !tbaa !19    ; 2 uses
  %7 = extractelement <2 x double> %4, i64 0
  %8 = fmul double %7, %6
  %9 = extractelement <2 x double> %5, i64 0
  %i.v = fmul double %i.u, %9
  %i.w = fsub double %8, %i.v                     ; 2 uses
  %i.x = fcmp ogt double %i.w, 0.000000e+00
  br i1 %i.x, label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit25, label %bb.f

bb.e:                                             ; preds = %_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.d
  %i.z = fcmp olt double %i.w, 0.000000e+00
  br i1 %i.z, label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop = fmul <2 x double> %4, %5
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aa = fcmp olt double %10, 0.000000e+00
  %i.ab = fmul double %6, %i.u
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  %or.cond = or i1 %i.ac, %i.aa
  br i1 %or.cond, label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %11 = shufflevector <2 x double> %4, <2 x double> %5, <2 x i32> <i32 0, i32 3> ; 2 uses
  %12 = fmul <2 x double> %11, %11
  %13 = shufflevector <2 x double> %4, <2 x double> %5, <2 x i32> <i32 1, i32 2> ; 2 uses
  %14 = fmul <2 x double> %13, %13
  %15 = fadd <2 x double> %12, %14
  %16 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %15) ; 2 uses
  %shift = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %17 = fcmp olt <2 x double> %16, %shift
  %18 = extractelement <2 x i1> %17, i64 0
  br i1 %18, label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load double, ptr %1, align 8, !tbaa !7
  %i.ae = load double, ptr %0, align 8, !tbaa !7  ; 2 uses
  %i.af = fcmp oeq double %i.ad, %i.ae
  %i.ag = load double, ptr %i.g, align 8
  %i.ah = load double, ptr %i.o, align 8          ; 2 uses
  %i.ai = fcmp oeq double %i.ag, %i.ah
  %.0.i.i = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %.0.i.i, label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit25, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load double, ptr %2, align 8, !tbaa !7
  %i.ak = fcmp oeq double %i.aj, %i.ae
  %i.al = load double, ptr %i.e, align 8
  %i.am = fcmp oeq double %i.al, %i.ah
  %.0.i.i19 = select i1 %i.ak, i1 %i.am, i1 false
  %. = select i1 %.0.i.i19, i32 6, i32 4
  br label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit25

_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit25: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ 5, %bb.i ], [ 0, %bb.d ], [ 1, %bb.f ], [ 3, %bb.g ], [ 2, %bb.h ], [ %., %bb.j ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #14
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos11triangulate8quadedge6Vertex7rightOfERKNS1_8QuadEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(35) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp slt i8 %i.b, 2
  %.v.i.i = select i1 %i.c, i64 80, i64 -80
  %i.d = getelementptr inbounds i8, ptr %1, i64 %.v.i.i
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !13 ; 2 uses
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !13
  %i.g = fsub <2 x double> %i.f, %i.e
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !13
  %i.i = fsub <2 x double> %i.h, %i.e
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fmul <2 x double> %i.g, %i.j             ; 2 uses
  %shift = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.l = fcmp ogt <2 x double> %i.k, %shift
  %i.m = extractelement <2 x i1> %i.l, i64 0
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4geos11triangulate8quadedge6Vertex6leftOfERKNS1_8QuadEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(35) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23
  %i.c = icmp slt i8 %i.b, 2
  %.v.i.i = select i1 %i.c, i64 80, i64 -80
  %i.d = getelementptr inbounds i8, ptr %1, i64 %.v.i.i
  %i.e = load <2 x double>, ptr %0, align 8, !tbaa !13 ; 2 uses
  %i.f = load <2 x double>, ptr %1, align 8, !tbaa !13
  %i.g = fsub <2 x double> %i.f, %i.e
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !13
  %i.i = fsub <2 x double> %i.h, %i.e
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fmul <2 x double> %i.g, %i.j             ; 2 uses
  %shift = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.l = fcmp ogt <2 x double> %i.k, %shift
  %i.m = extractelement <2 x i1> %i.l, i64 0
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate8quadedge6Vertex8bisectorERKS2_S4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.2") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.geos::algorithm::HCoordinate", align 8 ; 4 uses
  %4 = alloca %"class.geos::algorithm::HCoordinate", align 8 ; 4 uses
  %i.a = load double, ptr %2, align 8, !tbaa !17
  %i.b = load double, ptr %1, align 8, !tbaa !17  ; 2 uses
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !19 ; 2 uses
  %i.h = fsub double %i.e, %i.g                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.i = fmul double %i.c, 5.000000e-01           ; 2 uses
  %i.j = fadd double %i.b, %i.i
  %i.k = fmul double %i.h, 5.000000e-01           ; 2 uses
  %i.l = fadd double %i.g, %i.k
  call void @_ZN4geos9algorithm11HCoordinateC1Eddd(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %i.j, double noundef %i.l, double noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.m = load double, ptr %1, align 8, !tbaa !17
  %i.n = fsub double %i.m, %i.h
  %i.o = fadd double %i.i, %i.n
  %i.p = load double, ptr %i.f, align 8, !tbaa !19
  %i.q = fadd double %i.c, %i.p
  %i.r = fadd double %i.k, %i.q
  call void @_ZN4geos9algorithm11HCoordinateC1Eddd(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.o, double noundef %i.r, double noundef 1.000000e+00)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.s = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13, !noalias !28 ; 3 uses
  invoke void @_ZN4geos9algorithm11HCoordinateC1ERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit unwind label %bb.b, !noalias !28

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.s) #14, !noalias !28
  resume { ptr, i32 } %i.t

_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.s, ptr %0, align 8, !tbaa !31, !alias.scope !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

declare void @_ZN4geos9algorithm11HCoordinateC1Eddd(ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, double noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos11triangulate8quadedge6Vertex17circumRadiusRatioERKS2_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZNK4geos11triangulate8quadedge6Vertex12circleCenterERKS2_S4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !33     ; 3 uses
  %i.b = load double, ptr %1, align 8, !tbaa !17  ; 3 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !17
  %i.d = fsub double %i.b, %i.c
  %i.e = tail call double @pow(double noundef %i.d, double noundef 2.000000e+00) #15, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !19
  %i.j = fsub double %i.g, %i.i
  %i.k = tail call double @pow(double noundef %i.j, double noundef 2.000000e+00) #15, !tbaa !3
  %i.l = fadd double %i.e, %i.k
  %i.m = tail call noundef double @sqrt(double noundef %i.l) #15, !tbaa !3
  %i.n = load double, ptr %0, align 8, !tbaa !17  ; 2 uses
  %i.o = fsub double %i.b, %i.n
  %i.p = tail call double @pow(double noundef %i.o, double noundef 2.000000e+00) #15, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !19 ; 2 uses
  %i.s = fsub double %i.g, %i.r
  %i.t = tail call double @pow(double noundef %i.s, double noundef 2.000000e+00) #15, !tbaa !3
  %i.u = fadd double %i.p, %i.t
  %i.v = tail call noundef double @sqrt(double noundef %i.u) #15, !tbaa !3 ; 2 uses
  %i.w = load double, ptr %2, align 8, !tbaa !17  ; 2 uses
  %i.x = fsub double %i.w, %i.b
  %i.y = tail call double @pow(double noundef %i.x, double noundef 2.000000e+00) #15, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !19 ; 2 uses
  %i.ab = fsub double %i.aa, %i.g
  %i.ac = tail call double @pow(double noundef %i.ab, double noundef 2.000000e+00) #15, !tbaa !3
  %i.ad = fadd double %i.y, %i.ac
  %i.ae = tail call noundef double @sqrt(double noundef %i.ad) #15, !tbaa !3 ; 2 uses
  %i.af = fcmp olt double %i.ae, %i.v
  %.0 = select i1 %i.af, double %i.ae, double %i.v ; 2 uses
  %i.ag = fsub double %i.n, %i.w
  %i.ah = tail call double @pow(double noundef %i.ag, double noundef 2.000000e+00) #15, !tbaa !3
  %i.ai = fsub double %i.r, %i.aa
  %i.aj = tail call double @pow(double noundef %i.ai, double noundef 2.000000e+00) #15, !tbaa !3
  %i.ak = fadd double %i.ah, %i.aj
  %i.al = tail call noundef double @sqrt(double noundef %i.ak) #15, !tbaa !3 ; 2 uses
  %i.am = fcmp olt double %i.al, %.0
  %.1 = select i1 %i.am, double %i.al, double %.0
  %i.an = fdiv double %i.m, %.1
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret double %i.an
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos11triangulate8quadedge6Vertex12circleCenterERKS2_S4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.2", align 8 ; 6 uses
  %5 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  %i.a = load double, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13, !noalias !35 ; 4 uses
  invoke void @_ZN4geos11triangulate8quadedge6VertexC1Edd(ptr noundef nonnull align 8 dereferenceable(24) %i.d, double noundef %i.a, double noundef %i.c)
          to label %_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit unwind label %bb.b, !noalias !35

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit38, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.merged, %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit38 ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #14
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN4geos11triangulate8quadedge6Vertex8bisectorERKS2_S4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZN4geos11triangulate8quadedge6Vertex8bisectorERKS2_S4_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %4, align 8, !tbaa !31     ; 4 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !31     ; 4 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13
          to label %.noexc unwind label %.body    ; 5 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4geos9algorithm11HCoordinateC1ERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit unwind label %bb.e, !noalias !38

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31.sink.split

_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit: ; preds = %.noexc
  store ptr null, ptr %0, align 8, !tbaa !41
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13
          to label %bb.f unwind label %bb.k       ; 3 uses

bb.f:                                             ; preds = %_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit
  %i.k = invoke noundef double @_ZNK4geos9algorithm11HCoordinate4getXEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef double @_ZNK4geos9algorithm11HCoordinate4getYEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4geos11triangulate8quadedge6VertexC1Edd(ptr noundef nonnull align 8 dereferenceable(24) %i.j, double noundef %i.k, double noundef %i.l)
          to label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EE5resetEPS3_.exit unwind label %bb.l

_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.h
  store ptr %i.j, ptr %0, align 8, !tbaa !33
  br label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit

bb.i:                                             ; preds = %_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit38

bb.j:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %4, align 8, !tbaa !31
  br label %_ZNSt10unique_ptrIN4geos9algorithm11HCoordinateESt14default_deleteIS2_EED2Ev.exit32

bb.k:                                             ; preds = %_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos9algorithm25NotRepresentableExceptionE
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4geos9algorithm25NotRepresentableExceptionE
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.l ], [ %i.o, %bb.k ] ; 3 uses
  %.08 = extractvalue { ptr, i32 } %.pn, 1
  %i.q = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4geos9algorithm25NotRepresentableExceptionE) #15
  %i.r = icmp eq i32 %.08, %i.q
  br i1 %i.r, label %bb.n, label %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31.sink.split

bb.n:                                             ; preds = %bb.m
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %.0) #15 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31.sink.split

_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EE5resetEPS3_.exit, %bb.n
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #14
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #14
  ret void

.body:                                            ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i30 = icmp eq ptr %i.g, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN4geos9algorithm11HCoordinateESt14default_deleteIS2_EED2Ev.exit32, label %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31.sink.split: ; preds = %bb.o, %bb.m, %bb.e
  %.merged1548.ph = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.t, %bb.o ], [ %.pn, %bb.m ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #14
  br label %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31

_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31: ; preds = %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31.sink.split, %.body
  %.merged1548 = phi { ptr, i32 } [ %i.u, %.body ], [ %.merged1548.ph, %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31.sink.split ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #14
  br label %_ZNSt10unique_ptrIN4geos9algorithm11HCoordinateESt14default_deleteIS2_EED2Ev.exit32

_ZNSt10unique_ptrIN4geos9algorithm11HCoordinateESt14default_deleteIS2_EED2Ev.exit32: ; preds = %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31, %.body, %bb.j
  %i.v = phi ptr [ %.pre, %bb.j ], [ %i.f, %.body ], [ %i.f, %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31 ] ; 2 uses
  %.merged14 = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.u, %.body ], [ %.merged1548, %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i31 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not.i33 = icmp eq ptr %i.v, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit38, label %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i34

_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i34: ; preds = %_ZNSt10unique_ptrIN4geos9algorithm11HCoordinateESt14default_deleteIS2_EED2Ev.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #14
  br label %_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit38

_ZNSt10unique_ptrIN4geos11triangulate8quadedge6VertexESt14default_deleteIS3_EED2Ev.exit38: ; preds = %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i34, %_ZNSt10unique_ptrIN4geos9algorithm11HCoordinateESt14default_deleteIS2_EED2Ev.exit32, %bb.i
  %.merged = phi { ptr, i32 } [ %i.m, %bb.i ], [ %.merged14, %_ZNSt10unique_ptrIN4geos9algorithm11HCoordinateESt14default_deleteIS2_EED2Ev.exit32 ], [ %.merged14, %_ZNKSt14default_deleteIN4geos9algorithm11HCoordinateEEclEPS2_.exit.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate8quadedge6Vertex8midPointERKS2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !17
  %i.b = load double, ptr %2, align 8, !tbaa !17
  %i.c = fadd double %i.a, %i.b
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !19
  %i.i = fadd double %i.f, %i.h
  %i.j = fmul double %i.i, 5.000000e-01
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !43
  %i.o = fadd double %i.l, %i.n
  %i.p = fmul double %i.o, 5.000000e-01
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13, !noalias !44 ; 3 uses
  invoke void @_ZN4geos11triangulate8quadedge6VertexC1Eddd(ptr noundef nonnull align 8 dereferenceable(24) %i.q, double noundef %i.d, double noundef %i.j, double noundef %i.p)
          to label %_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJRdS5_S5_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit unwind label %bb.b, !noalias !44

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #14, !noalias !44
  resume { ptr, i32 } %i.r

_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJRdS5_S5_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.q, ptr %0, align 8, !tbaa !33, !alias.scope !44
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare noundef double @_ZNK4geos9algorithm11HCoordinate4getXEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef double @_ZNK4geos9algorithm11HCoordinate4getYEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK4geos11triangulate8quadedge6Vertex17interpolateZValueERKS2_S4_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load double, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = load double, ptr %6, align 8, !tbaa !43
  %8 = load <2 x double>, ptr %1, align 8, !tbaa !13 ; 4 uses
  %9 = load <2 x double>, ptr %2, align 8, !tbaa !13 ; 2 uses
  %10 = load <2 x double>, ptr %3, align 8, !tbaa !13 ; 2 uses
  %11 = shufflevector <2 x double> %9, <2 x double> %10, <2 x i32> <i32 0, i32 3>
  %12 = fsub <2 x double> %11, %8                 ; 3 uses
  %shift = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %12, %shift
  %13 = load <2 x double>, ptr %0, align 8, !tbaa !13 ; 3 uses
  %14 = shufflevector <2 x double> %13, <2 x double> %10, <2 x i32> <i32 0, i32 2>
  %15 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fsub <2 x double> %14, %15                ; 2 uses
  %17 = shufflevector <2 x double> %9, <2 x double> %13, <2 x i32> <i32 1, i32 3>
  %18 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %19 = fsub <2 x double> %17, %18                ; 2 uses
  %shift36 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop37 = fmul <2 x double> %shift36, %19
  %foldExtExtBinop39 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop37
  %20 = fsub <2 x double> %13, %8
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %22 = fmul <2 x double> %12, %21
  %23 = fmul <2 x double> %16, %19
  %24 = fsub <2 x double> %22, %23
  %25 = shufflevector <2 x double> %foldExtExtBinop39, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fdiv <2 x double> %24, %25
  %27 = insertelement <2 x double> poison, double %7, i64 0
  %28 = insertelement <2 x double> %27, double %5, i64 1
  %29 = insertelement <2 x double> poison, double %i.b, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = fsub <2 x double> %28, %30
  %32 = fmul <2 x double> %26, %31                ; 2 uses
  %33 = extractelement <2 x double> %32, i64 1
  %34 = fadd double %i.b, %33
  %35 = extractelement <2 x double> %32, i64 0
  %i.c = fadd double %35, %34
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos11triangulate8quadedge6Vertex12interpolateZERKNS_4geom10CoordinateES6_S6_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load double, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = load double, ptr %6, align 8, !tbaa !11
  %8 = load <2 x double>, ptr %1, align 8, !tbaa !13 ; 4 uses
  %9 = load <2 x double>, ptr %2, align 8, !tbaa !13 ; 2 uses
  %10 = load <2 x double>, ptr %3, align 8, !tbaa !13 ; 2 uses
  %11 = shufflevector <2 x double> %9, <2 x double> %10, <2 x i32> <i32 0, i32 3>
  %12 = fsub <2 x double> %11, %8                 ; 3 uses
  %shift = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %12, %shift
  %13 = load <2 x double>, ptr %0, align 8, !tbaa !13 ; 3 uses
  %14 = shufflevector <2 x double> %13, <2 x double> %10, <2 x i32> <i32 0, i32 2>
  %15 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fsub <2 x double> %14, %15                ; 2 uses
  %17 = shufflevector <2 x double> %9, <2 x double> %13, <2 x i32> <i32 1, i32 3>
  %18 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %19 = fsub <2 x double> %17, %18                ; 2 uses
  %shift37 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop38 = fmul <2 x double> %shift37, %19
  %foldExtExtBinop40 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop38
  %20 = fsub <2 x double> %13, %8
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %22 = fmul <2 x double> %12, %21
  %23 = fmul <2 x double> %16, %19
  %24 = fsub <2 x double> %22, %23
  %25 = shufflevector <2 x double> %foldExtExtBinop40, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = fdiv <2 x double> %24, %25
  %27 = insertelement <2 x double> poison, double %7, i64 0
  %28 = insertelement <2 x double> %27, double %5, i64 1
  %29 = insertelement <2 x double> poison, double %i.b, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = fsub <2 x double> %28, %30
  %32 = fmul <2 x double> %26, %31                ; 2 uses
  %33 = extractelement <2 x double> %32, i64 1
  %34 = fadd double %i.b, %33
  %35 = extractelement <2 x double> %32, i64 0
  %i.c = fadd double %35, %34
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos11triangulate8quadedge6Vertex12interpolateZERKNS_4geom10CoordinateES6_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !13 ; 4 uses
  %i.b = load <2 x double>, ptr %2, align 8, !tbaa !13 ; 2 uses
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !13 ; 2 uses
  %4 = shufflevector <2 x double> %3, <2 x double> %i.a, <2 x i32> <i32 0, i32 2>
  %5 = shufflevector <2 x double> %i.a, <2 x double> %i.b, <2 x i32> <i32 0, i32 2>
  %6 = fsub <2 x double> %4, %5                   ; 2 uses
  %7 = shufflevector <2 x double> %3, <2 x double> %i.a, <2 x i32> <i32 1, i32 3>
  %8 = shufflevector <2 x double> %i.a, <2 x double> %i.b, <2 x i32> <i32 1, i32 3>
  %i.c = fsub <2 x double> %7, %8                 ; 2 uses
  %i.d = fmul <2 x double> %6, %6
  %9 = fmul <2 x double> %i.c, %i.c
  %foldExtExtBinop14 = fadd <2 x double> %i.d, %9
  %10 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %foldExtExtBinop14) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.i = fsub double %i.f, %i.h
  %shift = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv <2 x double> %10, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.j = fmul double %i.i, %11
  %i.k = fadd double %i.h, %i.j
  ret double %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_ZN4geos9algorithm11HCoordinateC1ERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 8}
!11 = !{!8, !9, i64 16}
!12 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 8, !13}
!13 = !{!9, !9, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_: argument 0"}
!16 = distinct !{!16, !"_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_"}
!17 = !{!18, !9, i64 0}
!18 = !{!"_ZTSN4geos11triangulate8quadedge6VertexE", !8, i64 0}
!19 = !{!18, !9, i64 8}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_: argument 0"}
!22 = distinct !{!22, !"_ZNK4geos11triangulate8quadedge6Vertex3subERKS2_"}
!23 = !{!24, !5, i64 32}
!24 = !{!"_ZTSN4geos11triangulate8quadedge8QuadEdgeE", !18, i64 0, !25, i64 24, !5, i64 32, !27, i64 33, !27, i64 34}
!25 = !{!"p1 _ZTSN4geos11triangulate8quadedge8QuadEdgeE", !26, i64 0}
!26 = !{!"any pointer", !5, i64 0}
!27 = !{!"bool", !5, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!30 = distinct !{!30, !"_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSN4geos9algorithm11HCoordinateE", !26, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSN4geos11triangulate8quadedge6VertexE", !26, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!37 = distinct !{!37, !"_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJddEEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!40 = distinct !{!40, !"_ZN4geos6detail11make_uniqueINS_9algorithm11HCoordinateEJRS3_S4_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
!41 = !{!42, !34, i64 0}
!42 = !{!"_ZTSSt10_Head_baseILm0EPN4geos11triangulate8quadedge6VertexELb0EE", !34, i64 0}
!43 = !{!18, !9, i64 16}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJRdS5_S5_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_: argument 0"}
!46 = distinct !{!46, !"_ZN4geos6detail11make_uniqueINS_11triangulate8quadedge6VertexEJRdS5_S5_EEENS0_10_Unique_ifIT_E14_Single_objectEDpOT0_"}
end_hunk_0
