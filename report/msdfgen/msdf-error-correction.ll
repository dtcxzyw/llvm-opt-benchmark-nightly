Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/msdf-error-correction?download=true
inline.NumInlined: 211
inline.NumDeleted: 66
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.msdfgen::BitmapSection.1" = type { ptr, i32, i32, i32, i32 }
%"class.msdfgen::MSDFErrorCorrection" = type { %"struct.msdfgen::BitmapSection.1", %"class.msdfgen::SDFTransformation", double, double }
%"class.msdfgen::SDFTransformation" = type { %"class.msdfgen::Projection", %"class.msdfgen::DistanceMapping" }
%"class.msdfgen::Projection" = type { %"struct.msdfgen::Vector2", %"struct.msdfgen::Vector2" }
%"struct.msdfgen::Vector2" = type { double, double }
%"class.msdfgen::DistanceMapping" = type { double, double }
%"struct.msdfgen::BitmapConstSection" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapSection" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapConstSection.2" = type { ptr, i32, i32, i32, i32 }
%"struct.msdfgen::BitmapSection.0" = type { ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen19msdfErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7msdfgenL24msdfErrorCorrectionInnerILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL24msdfErrorCorrectionInnerILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.msdfgen::BitmapSection.1", align 8 ; 8 uses
  %5 = alloca %"class.msdfgen::MSDFErrorCorrection", align 8 ; 14 uses
  %6 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 6 uses
  %7 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 6 uses
  %8 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 3 uses
  %9 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #8
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit:               ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.sroa.040.0 = phi ptr [ null, %bb.b ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 8, !tbaa !24
  %i.q = load i32, ptr %i.n, align 8, !tbaa !19
  store <2 x i32> %i.p, ptr %i.o, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !27
  %.not33 = icmp eq ptr %i.m, null
  %spec.select = select i1 %.not33, ptr %.sroa.040.0, ptr %i.m
  store ptr %spec.select, ptr %4, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  invoke void @_ZN7msdfgen19MSDFErrorCorrectionC1ERKNS_13BitmapSectionIhLi1EEERKNS_17SDFTransformationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !29
  invoke void @_ZN7msdfgen19MSDFErrorCorrection20setMinDeviationRatioEd(ptr noundef nonnull align 8 dereferenceable(88) %5, double noundef %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !30
  invoke void @_ZN7msdfgen19MSDFErrorCorrection18setMinImproveRatioEd(ptr noundef nonnull align 8 dereferenceable(88) %5, double noundef %i.w)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.a, align 8, !tbaa !8
  switch i32 %i.x, label %bb.m [
    i32 3, label %bb.l
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.q, %bb.l, %bb.h, %bb.e, %bb.d, %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen19MSDFErrorCorrection14protectCornersERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.z = load ptr, ptr %0, align 8, !tbaa !34, !noalias !31
  store ptr %i.z, ptr %6, align 8, !tbaa !35, !alias.scope !31
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !31
  store <4 x i32> %i.ab, ptr %i.aa, align 8, !tbaa !37, !alias.scope !31
  invoke void @_ZN7msdfgen19MSDFErrorCorrection12protectEdgesILi3EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.y

bb.l:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38 ; 2 uses
  switch i32 %i.ae, label %bb.s [
    i32 0, label %bb.o
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr %i.a, align 8, !tbaa !8
  %.not34 = icmp eq i32 %i.af, 3
  br i1 %.not34, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !34, !noalias !39
  store ptr %i.ag, ptr %7, align 8, !tbaa !35, !alias.scope !39
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !39
  store <4 x i32> %i.ai, ptr %i.ah, align 8, !tbaa !37, !alias.scope !39
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsILi3EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !38 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %._crit_edge unwind label %bb.g

._crit_edge:                                      ; preds = %bb.q
  %.pre49 = load i32, ptr %i.ad, align 4, !tbaa !38
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge, %bb.m, %bb.p
  %i.am = phi i32 [ %.pre49, %._crit_edge ], [ %i.ae, %bb.m ], [ %i.aj, %bb.p ]
  %.off = add i32 %i.am, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.n, %bb.s
  %i.an = load i8, ptr %3, align 8, !tbaa !42, !range !43, !noundef !44
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !34, !noalias !45
  store ptr %i.ap, ptr %8, align 8, !tbaa !35, !alias.scope !45
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !45
  store <4 x i32> %i.ar, ptr %i.aq, align 8, !tbaa !37, !alias.scope !45
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.v unwind label %bb.g

bb.u:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.as = load ptr, ptr %0, align 8, !tbaa !34, !noalias !48
  store ptr %i.as, ptr %9, align 8, !tbaa !35, !alias.scope !48
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !48
  store <4 x i32> %i.au, ptr %i.at, align 8, !tbaa !37, !alias.scope !48
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection") align 8 %9, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.v unwind label %bb.g

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  invoke void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi3EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %0)
          to label %bb.w unwind label %bb.g

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.av = icmp eq ptr %.sroa.040.0, null
  br i1 %i.av, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.sroa.040.0) #10
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37:             ; preds = %bb.x, %bb.w, %bb.a
  ret void

bb.y:                                             ; preds = %bb.g, %bb.k, %bb.r
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.al, %bb.r ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.aw = icmp eq ptr %.sroa.040.0, null
  br i1 %i.aw, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit38, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %.sroa.040.0) #10
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit38

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit38:             ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen19msdfErrorCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7msdfgenL24msdfErrorCorrectionInnerILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL24msdfErrorCorrectionInnerILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.msdfgen::BitmapSection.1", align 8 ; 8 uses
  %5 = alloca %"class.msdfgen::MSDFErrorCorrection", align 8 ; 14 uses
  %6 = alloca %"struct.msdfgen::BitmapConstSection.2", align 8 ; 6 uses
  %7 = alloca %"struct.msdfgen::BitmapConstSection.2", align 8 ; 6 uses
  %8 = alloca %"struct.msdfgen::BitmapConstSection.2", align 8 ; 3 uses
  %9 = alloca %"struct.msdfgen::BitmapConstSection.2", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53
  %i.j = mul nsw i32 %i.i, %i.g
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #8
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit:               ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %.sroa.040.0 = phi ptr [ null, %bb.b ], [ %i.l, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 8, !tbaa !24
  %i.q = load i32, ptr %i.n, align 8, !tbaa !51
  store <2 x i32> %i.p, ptr %i.o, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !27
  %.not33 = icmp eq ptr %i.m, null
  %spec.select = select i1 %.not33, ptr %.sroa.040.0, ptr %i.m
  store ptr %spec.select, ptr %4, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  invoke void @_ZN7msdfgen19MSDFErrorCorrectionC1ERKNS_13BitmapSectionIhLi1EEERKNS_17SDFTransformationE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !29
  invoke void @_ZN7msdfgen19MSDFErrorCorrection20setMinDeviationRatioEd(ptr noundef nonnull align 8 dereferenceable(88) %5, double noundef %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !30
  invoke void @_ZN7msdfgen19MSDFErrorCorrection18setMinImproveRatioEd(ptr noundef nonnull align 8 dereferenceable(88) %5, double noundef %i.w)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.a, align 8, !tbaa !8
  switch i32 %i.x, label %bb.m [
    i32 3, label %bb.l
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.q, %bb.l, %bb.h, %bb.e, %bb.d, %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen19MSDFErrorCorrection14protectCornersERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.z = load ptr, ptr %0, align 8, !tbaa !57, !noalias !54
  store ptr %i.z, ptr %6, align 8, !tbaa !58, !alias.scope !54
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !54
  store <4 x i32> %i.ab, ptr %i.aa, align 8, !tbaa !37, !alias.scope !54
  invoke void @_ZN7msdfgen19MSDFErrorCorrection12protectEdgesILi4EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.y

bb.l:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.m unwind label %bb.g

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38 ; 2 uses
  switch i32 %i.ae, label %bb.s [
    i32 0, label %bb.o
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr %i.a, align 8, !tbaa !8
  %.not34 = icmp eq i32 %i.af, 3
  br i1 %.not34, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !57, !noalias !60
  store ptr %i.ag, ptr %7, align 8, !tbaa !58, !alias.scope !60
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !60
  store <4 x i32> %i.ai, ptr %i.ah, align 8, !tbaa !37, !alias.scope !60
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsILi4EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !38 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %._crit_edge unwind label %bb.g

._crit_edge:                                      ; preds = %bb.q
  %.pre49 = load i32, ptr %i.ad, align 4, !tbaa !38
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge, %bb.m, %bb.p
  %i.am = phi i32 [ %.pre49, %._crit_edge ], [ %i.ae, %bb.m ], [ %i.aj, %bb.p ]
  %.off = add i32 %i.am, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.n, %bb.s
  %i.an = load i8, ptr %3, align 8, !tbaa !42, !range !43, !noundef !44
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !57, !noalias !63
  store ptr %i.ap, ptr %8, align 8, !tbaa !58, !alias.scope !63
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !63
  store <4 x i32> %i.ar, ptr %i.aq, align 8, !tbaa !37, !alias.scope !63
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.2") align 8 %8, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.v unwind label %bb.g

bb.u:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.as = load ptr, ptr %0, align 8, !tbaa !57, !noalias !66
  store ptr %i.as, ptr %9, align 8, !tbaa !58, !alias.scope !66
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.au = load <4 x i32>, ptr %i.n, align 8, !tbaa !37, !noalias !66
  store <4 x i32> %i.au, ptr %i.at, align 8, !tbaa !37, !alias.scope !66
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull byval(%"struct.msdfgen::BitmapConstSection.2") align 8 %9, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.v unwind label %bb.g

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  invoke void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi4EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.0") align 8 %0)
          to label %bb.w unwind label %bb.g

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.av = icmp eq ptr %.sroa.040.0, null
  br i1 %i.av, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.sroa.040.0) #10
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit37:             ; preds = %bb.x, %bb.w, %bb.a
  ret void

bb.y:                                             ; preds = %bb.g, %bb.k, %bb.r
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.al, %bb.r ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.aw = icmp eq ptr %.sroa.040.0, null
  br i1 %i.aw, label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit38, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %.sroa.040.0) #10
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit38

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit38:             ; preds = %bb.y, %bb.z
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen19msdfErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_5ShapeERKNS_10ProjectionENS_5RangeERKNS_19MSDFGeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, double %3, double %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %7 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %7, double %3, double %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL24msdfErrorCorrectionInnerILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16), double, double) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen19msdfErrorCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_5ShapeERKNS_10ProjectionENS_5RangeERKNS_19MSDFGeneratorConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, double %3, double %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %7 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %7, double %3, double %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL24msdfErrorCorrectionInnerILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_5ShapeERKNS_17SDFTransformationERKNS_19MSDFGeneratorConfigE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen31msdfFastDistanceErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_17SDFTransformationEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.msdfgen::MSDFErrorCorrection", align 8 ; 8 uses
  %5 = alloca %"struct.msdfgen::BitmapSection.1", align 8 ; 9 uses
  %6 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %i.g, ptr %5, align 8, !tbaa !28, !alias.scope !72
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.b, ptr %i.h, align 8, !tbaa !75, !alias.scope !72
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.d, ptr %i.i, align 4, !tbaa !76, !alias.scope !72
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.b, ptr %i.j, align 8, !tbaa !25, !alias.scope !72
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !27, !alias.scope !72
  invoke void @_ZN7msdfgen19MSDFErrorCorrectionC1ERKNS_13BitmapSectionIhLi1EEERKNS_17SDFTransformationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  invoke void @_ZN7msdfgen19MSDFErrorCorrection20setMinDeviationRatioEd(ptr noundef nonnull align 8 dereferenceable(88) %4, double noundef %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10

bb.f:                                             ; preds = %bb.h, %bb.d, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10

bb.g:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.n = load ptr, ptr %0, align 8, !tbaa !34, !noalias !77
  store ptr %i.n, ptr %6, align 8, !tbaa !35, !alias.scope !77
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load <4 x i32>, ptr %i.a, align 8, !tbaa !37, !noalias !77
  store <4 x i32> %i.p, ptr %i.o, align 8, !tbaa !37, !alias.scope !77
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsILi3EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  invoke void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi3EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection") align 8 %0)
          to label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit unwind label %bb.f

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit:               ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZdaPv(ptr noundef nonnull %i.g) #10
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10:             ; preds = %bb.i, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.q, %bb.i ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZdaPv(ptr noundef nonnull %i.g) #10
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen31msdfFastDistanceErrorCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_17SDFTransformationEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.msdfgen::MSDFErrorCorrection", align 8 ; 8 uses
  %5 = alloca %"struct.msdfgen::BitmapSection.1", align 8 ; 9 uses
  %6 = alloca %"struct.msdfgen::BitmapConstSection.2", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !53   ; 2 uses
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %i.g, ptr %5, align 8, !tbaa !28, !alias.scope !80
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.b, ptr %i.h, align 8, !tbaa !75, !alias.scope !80
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.d, ptr %i.i, align 4, !tbaa !76, !alias.scope !80
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.b, ptr %i.j, align 8, !tbaa !25, !alias.scope !80
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !27, !alias.scope !80
  invoke void @_ZN7msdfgen19MSDFErrorCorrectionC1ERKNS_13BitmapSectionIhLi1EEERKNS_17SDFTransformationE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  invoke void @_ZN7msdfgen19MSDFErrorCorrection20setMinDeviationRatioEd(ptr noundef nonnull align 8 dereferenceable(88) %4, double noundef %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10

bb.f:                                             ; preds = %bb.h, %bb.d, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10

bb.g:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.n = load ptr, ptr %0, align 8, !tbaa !57, !noalias !83
  store ptr %i.n, ptr %6, align 8, !tbaa !58, !alias.scope !83
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load <4 x i32>, ptr %i.a, align 8, !tbaa !37, !noalias !83
  store <4 x i32> %i.p, ptr %i.o, align 8, !tbaa !37, !alias.scope !83
  invoke void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsILi4EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  invoke void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi4EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull byval(%"struct.msdfgen::BitmapSection.0") align 8 %0)
          to label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit unwind label %bb.f

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit:               ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZdaPv(ptr noundef nonnull %i.g) #10
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10

_ZN7msdfgen6BitmapIhLi1EED2Ev.exit10:             ; preds = %bb.i, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.q, %bb.i ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZdaPv(ptr noundef nonnull %i.g) #10
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen31msdfFastDistanceErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_10ProjectionENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, double %2, double %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %2, double %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen31msdfFastDistanceErrorCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_10ProjectionENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, double %2, double %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %2, double %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen31msdfFastDistanceErrorCorrectionERKNS_13BitmapSectionIfLi3EEENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double %1, double %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %5 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen10ProjectionC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %1, double %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, double noundef %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

declare void @_ZN7msdfgen10ProjectionC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen31msdfFastDistanceErrorCorrectionERKNS_13BitmapSectionIfLi4EEENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double %1, double %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %5 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen10ProjectionC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %1, double %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, double noundef %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen27msdfFastEdgeErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_17SDFTransformationEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen27msdfFastEdgeErrorCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_17SDFTransformationEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, double noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen27msdfFastEdgeErrorCorrectionERKNS_13BitmapSectionIfLi3EEERKNS_10ProjectionENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, double %2, double %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %2, double %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %4, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen27msdfFastEdgeErrorCorrectionERKNS_13BitmapSectionIfLi4EEERKNS_10ProjectionENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, double %2, double %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %2, double %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %5, double noundef %4, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen27msdfFastEdgeErrorCorrectionERKNS_13BitmapSectionIfLi3EEENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double %1, double %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %5 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen10ProjectionC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %1, double %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, double noundef %3, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen27msdfFastEdgeErrorCorrectionERKNS_13BitmapSectionIfLi4EEENS_5RangeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double %1, double %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 5 uses
  %5 = alloca %"class.msdfgen::Projection", align 8 ; 4 uses
  %6 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen10ProjectionC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN7msdfgen15DistanceMappingC1ENS_5RangeE(ptr noundef nonnull align 8 dereferenceable(16) %6, double %1, double %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !69
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !71
  call fastcc void @_ZN7msdfgenL28msdfErrorCorrectionShapelessILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_17SDFTransformationEdb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, double noundef %3, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen26msdfErrorCorrection_legacyERKNS_13BitmapSectionIfLi3EEERKNS_7Vector2E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader279.lr.ph.i, label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit

.preheader279.lr.ph.i:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  br i1 %i.f, label %.preheader279.us.preheader.i, label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit

.preheader279.us.preheader.i:                     ; preds = %.preheader279.lr.ph.i
  %i.i = add nsw i32 %i.d, -1
  %i.j = add nsw i32 %i.b, -1
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %wide.trip.count380.i = zext nneg i32 %i.d to i64 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  br label %.preheader279.us.i

.preheader279.us.i:                               ; preds = %._crit_edge.us.i, %.preheader279.us.preheader.i
  %indvars.iv377.i = phi i64 [ 0, %.preheader279.us.preheader.i ], [ %indvars.iv.next378.i, %._crit_edge.us.i ] ; 6 uses
  %.sroa.0244.0323.us.i = phi ptr [ null, %.preheader279.us.preheader.i ], [ %.sroa.0244.2.us.i, %._crit_edge.us.i ]
  %.sroa.13.0322.us.i = phi ptr [ null, %.preheader279.us.preheader.i ], [ %.sroa.13.2.us.i, %._crit_edge.us.i ]
  %.sroa.25.0321.us.i = phi ptr [ null, %.preheader279.us.preheader.i ], [ %.sroa.25.2.us.i, %._crit_edge.us.i ]
  %.not276.us.i = icmp eq i64 %indvars.iv377.i, 0
  %i.m = add nsw i64 %indvars.iv377.i, -1
  %i.n = icmp samesign ult i64 %indvars.iv377.i, %i.l
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 3 uses
  %.sroa.2.0.insert.shift.i.us.i = shl nuw nsw i64 %indvars.iv377.i, 32
  %i.o = trunc nuw nsw i64 %indvars.iv377.i to i32 ; 4 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next378.i to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, %.preheader279.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader279.us.i ], [ %indvars.iv.next.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 10 uses
  %.sroa.0244.1316.us.i = phi ptr [ %.sroa.0244.0323.us.i, %.preheader279.us.i ], [ %.sroa.0244.2.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 14 uses
  %.sroa.13.1315.us.i = phi ptr [ %.sroa.13.0322.us.i, %.preheader279.us.i ], [ %.sroa.13.2.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 12 uses
  %.sroa.25.1314.us.i = phi ptr [ %.sroa.25.0321.us.i, %.preheader279.us.i ], [ %.sroa.25.2.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 6 uses
  %.not275.us.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not275.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !34
  %i.r = load i32, ptr %i.g, align 8, !tbaa !86
  %i.s = mul nsw i32 %i.r, %i.o
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i ; 3 uses
  %i.w = mul nuw nsw i64 %indvars.iv.i, 3
  %i.x = add nuw nsw i64 %i.w, 4294967293
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.y ; 3 uses
  %i.aa = load double, ptr %1, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !89 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !89 ; 4 uses
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !89 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.v, align 4, !tbaa !89 ; 2 uses
  %i.aj = load float, ptr %i.ae, align 4, !tbaa !89 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.z, align 4, !tbaa !89 ; 2 uses
  %i.al = fsub <2 x float> %i.ak, %i.ai
  %i.am = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.al) ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.ao = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.ap = fcmp olt float %i.an, %i.ao
  %i.aq = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ar = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi53.i.us.i = phi float [ %i.an, %bb.d ], [ %i.ao, %bb.c ] ; 2 uses
  %.051.i.us.i = phi float [ %i.ah, %bb.d ], [ %i.ar, %bb.c ]
  %.049.i.us.i = phi float [ %i.ar, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %.046.i.us.i = phi float [ %i.aj, %bb.d ], [ %i.aq, %bb.c ] ; 4 uses
  %.045.i.us.i = phi float [ %i.aq, %bb.d ], [ %i.aj, %bb.c ] ; 3 uses
  %i.as = fsub float %i.ag, %i.ad
  %i.at = tail call float @llvm.fabs.f32(float %i.as) ; 3 uses
  %i.au = fcmp olt float %.pre-phi53.i.us.i, %i.at
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = fsub float %.046.i.us.i, %.051.i.us.i
  %i.aw = tail call float @llvm.fabs.f32(float %i.av) ; 2 uses
  %i.ax = fcmp olt float %i.aw, %i.at
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pre-phi55.i.us.i = phi float [ %i.at, %bb.f ], [ %i.aw, %bb.g ], [ %.pre-phi53.i.us.i, %bb.e ]
  %.048.i.us.i = phi float [ %.049.i.us.i, %bb.f ], [ %.049.i.us.i, %bb.g ], [ %i.ad, %bb.e ]
  %.147.i.us.i = phi float [ %.046.i.us.i, %bb.f ], [ %i.ag, %bb.g ], [ %.046.i.us.i, %bb.e ] ; 2 uses
  %.1.i.us.i = phi float [ %i.ag, %bb.f ], [ %.046.i.us.i, %bb.g ], [ %.045.i.us.i, %bb.e ]
  %.0.i.us.i = phi float [ %.045.i.us.i, %bb.f ], [ %.045.i.us.i, %bb.g ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ay = fpext float %.pre-phi55.i.us.i to double
  %i.az = fcmp ugt double %i.aa, %i.ay
  br i1 %i.az, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = fcmp oeq float %.147.i.us.i, %.1.i.us.i
  %i.bb = fcmp oeq float %.147.i.us.i, %.0.i.us.i
  %or.cond.i.us.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i:      ; preds = %bb.i
  %i.bc = fadd float %.048.i.us.i, -5.000000e-01
  %i.bd = tail call float @llvm.fabs.f32(float %i.bc)
  %i.be = fadd float %.0.i.us.i, -5.000000e-01
  %i.bf = tail call float @llvm.fabs.f32(float %i.be)
  %i.bg = fcmp ult float %i.bd, %i.bf
  br i1 %i.bg, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %bb.ae

_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i, %bb.i, %bb.h, %bb.b
  %i.bh = icmp samesign ult i64 %indvars.iv.i, %i.k
  br i1 %i.bh, label %bb.j, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i

bb.j:                                             ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i
  %i.bi = load ptr, ptr %0, align 8, !tbaa !34
  %i.bj = load i32, ptr %i.g, align 8, !tbaa !86
  %i.bk = mul nsw i32 %i.bj, %i.o
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %.idx428.i.a = mul nuw nsw i64 %indvars.iv.i, 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx428.i.a ; 3 uses
  %i.bo = mul i64 %indvars.iv.i, 12884901888
  %sext.i = add i64 %i.bo, 12884901888
  %i.bp = ashr exact i64 %sext.i, 30
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.bp ; 3 uses
  %i.br = load double, ptr %1, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !89 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !89 ; 4 uses
  %i.by = load float, ptr %i.bs, align 4, !tbaa !89 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bn, align 4, !tbaa !89 ; 2 uses
  %i.ca = load float, ptr %i.bv, align 4, !tbaa !89 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bq, align 4, !tbaa !89 ; 2 uses
  %i.cc = fsub <2 x float> %i.cb, %i.bz
  %i.cd = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cc) ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0 ; 2 uses
  %i.cf = extractelement <2 x float> %i.cd, i64 1 ; 2 uses
  %i.cg = fcmp olt float %i.ce, %i.cf
  %i.ch = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.ci = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi53.i84.us.i = phi float [ %i.ce, %bb.k ], [ %i.cf, %bb.j ] ; 2 uses
  %.051.i85.us.i = phi float [ %i.by, %bb.k ], [ %i.ci, %bb.j ]
  %.049.i86.us.i = phi float [ %i.ci, %bb.k ], [ %i.by, %bb.j ] ; 2 uses
  %.046.i87.us.i = phi float [ %i.ca, %bb.k ], [ %i.ch, %bb.j ] ; 4 uses
  %.045.i88.us.i = phi float [ %i.ch, %bb.k ], [ %i.ca, %bb.j ] ; 3 uses
  %i.cj = fsub float %i.bx, %i.bu
  %i.ck = tail call float @llvm.fabs.f32(float %i.cj) ; 3 uses
  %i.cl = fcmp olt float %.pre-phi53.i84.us.i, %i.ck
  br i1 %i.cl, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cm = fsub float %.046.i87.us.i, %.051.i85.us.i
  %i.cn = tail call float @llvm.fabs.f32(float %i.cm) ; 2 uses
  %i.co = fcmp olt float %i.cn, %i.ck
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.pre-phi55.i89.us.i = phi float [ %i.ck, %bb.m ], [ %i.cn, %bb.n ], [ %.pre-phi53.i84.us.i, %bb.l ]
  %.048.i90.us.i = phi float [ %.049.i86.us.i, %bb.m ], [ %.049.i86.us.i, %bb.n ], [ %i.bu, %bb.l ]
  %.147.i91.us.i = phi float [ %.046.i87.us.i, %bb.m ], [ %i.bx, %bb.n ], [ %.046.i87.us.i, %bb.l ] ; 2 uses
  %.1.i92.us.i = phi float [ %i.bx, %bb.m ], [ %.046.i87.us.i, %bb.n ], [ %.045.i88.us.i, %bb.l ]
  %.0.i93.us.i = phi float [ %.045.i88.us.i, %bb.m ], [ %.045.i88.us.i, %bb.n ], [ %i.bx, %bb.l ] ; 2 uses
  %i.cp = fpext float %.pre-phi55.i89.us.i to double
  %i.cq = fcmp ugt double %i.br, %i.cp
  br i1 %i.cq, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = fcmp oeq float %.147.i91.us.i, %.1.i92.us.i
  %i.cs = fcmp oeq float %.147.i91.us.i, %.0.i93.us.i
  %or.cond.i94.us.i = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i94.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i:    ; preds = %bb.p
  %i.ct = fadd float %.048.i90.us.i, -5.000000e-01
  %i.cu = tail call float @llvm.fabs.f32(float %i.ct)
  %i.cv = fadd float %.0.i93.us.i, -5.000000e-01
  %i.cw = tail call float @llvm.fabs.f32(float %i.cv)
  %i.cx = fcmp ult float %i.cu, %i.cw
  br i1 %i.cx, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i, label %bb.ae

_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i, %bb.p, %bb.o, %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i
  br i1 %.not276.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %bb.q

bb.q:                                             ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i
  %i.cy = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.cz = load i32, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.da = mul nsw i32 %i.cz, %i.o
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.db
  %i.dd = mul nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dd ; 3 uses
  %i.df = sext i32 %i.cz to i64
  %i.dg = mul nsw i64 %i.m, %i.df
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dd ; 3 uses
  %i.dj = load double, ptr %i.h, align 8, !tbaa !91
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !89 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !89 ; 4 uses
  %i.dq = load float, ptr %i.dk, align 4, !tbaa !89 ; 2 uses
  %i.dr = load <2 x float>, ptr %i.de, align 4, !tbaa !89 ; 2 uses
  %i.ds = load float, ptr %i.dn, align 4, !tbaa !89 ; 2 uses
  %i.dt = load <2 x float>, ptr %i.di, align 4, !tbaa !89 ; 2 uses
  %i.du = fsub <2 x float> %i.dt, %i.dr
  %i.dv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du) ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.dx = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.dy = fcmp olt float %i.dw, %i.dx
  %i.dz = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  %i.ea = extractelement <2 x float> %i.dr, i64 0 ; 2 uses
  br i1 %i.dy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi53.i96.us.i = phi float [ %i.dw, %bb.r ], [ %i.dx, %bb.q ] ; 2 uses
  %.051.i97.us.i = phi float [ %i.dq, %bb.r ], [ %i.ea, %bb.q ]
  %.049.i98.us.i = phi float [ %i.ea, %bb.r ], [ %i.dq, %bb.q ] ; 2 uses
  %.046.i99.us.i = phi float [ %i.ds, %bb.r ], [ %i.dz, %bb.q ] ; 4 uses
  %.045.i100.us.i = phi float [ %i.dz, %bb.r ], [ %i.ds, %bb.q ] ; 3 uses
  %i.eb = fsub float %i.dp, %i.dm
  %i.ec = tail call float @llvm.fabs.f32(float %i.eb) ; 3 uses
  %i.ed = fcmp olt float %.pre-phi53.i96.us.i, %i.ec
  br i1 %i.ed, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ee = fsub float %.046.i99.us.i, %.051.i97.us.i
  %i.ef = tail call float @llvm.fabs.f32(float %i.ee) ; 2 uses
  %i.eg = fcmp olt float %i.ef, %i.ec
  br i1 %i.eg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.pre-phi55.i101.us.i = phi float [ %i.ec, %bb.t ], [ %i.ef, %bb.u ], [ %.pre-phi53.i96.us.i, %bb.s ]
  %.048.i102.us.i = phi float [ %.049.i98.us.i, %bb.t ], [ %.049.i98.us.i, %bb.u ], [ %i.dm, %bb.s ]
  %.147.i103.us.i = phi float [ %.046.i99.us.i, %bb.t ], [ %i.dp, %bb.u ], [ %.046.i99.us.i, %bb.s ] ; 2 uses
  %.1.i104.us.i = phi float [ %i.dp, %bb.t ], [ %.046.i99.us.i, %bb.u ], [ %.045.i100.us.i, %bb.s ]
  %.0.i105.us.i = phi float [ %.045.i100.us.i, %bb.t ], [ %.045.i100.us.i, %bb.u ], [ %i.dp, %bb.s ] ; 2 uses
  %i.eh = fpext float %.pre-phi55.i101.us.i to double
  %i.ei = fcmp ugt double %i.dj, %i.eh
  br i1 %i.ei, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = fcmp oeq float %.147.i103.us.i, %.1.i104.us.i
  %i.ek = fcmp oeq float %.147.i103.us.i, %.0.i105.us.i
  %or.cond.i106.us.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i106.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i:   ; preds = %bb.w
  %i.el = fadd float %.048.i102.us.i, -5.000000e-01
  %i.em = tail call float @llvm.fabs.f32(float %i.el)
  %i.en = fadd float %.0.i105.us.i, -5.000000e-01
  %i.eo = tail call float @llvm.fabs.f32(float %i.en)
  %i.ep = fcmp ult float %i.em, %i.eo
  br i1 %i.ep, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %bb.ae

_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i, %bb.w, %bb.v, %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i
  br i1 %i.n, label %bb.x, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

bb.x:                                             ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i
  %i.eq = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.er = load i32, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.es = mul nsw i32 %i.er, %i.o
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.et
  %i.ev = mul nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ev ; 3 uses
  %i.ex = mul nsw i32 %i.er, %i.p
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ev ; 3 uses
  %i.fb = load double, ptr %i.h, align 8, !tbaa !91
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !89 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !89 ; 4 uses
  %i.fi = load float, ptr %i.fc, align 4, !tbaa !89 ; 2 uses
  %i.fj = load <2 x float>, ptr %i.ew, align 4, !tbaa !89 ; 2 uses
  %i.fk = load float, ptr %i.ff, align 4, !tbaa !89 ; 2 uses
  %i.fl = load <2 x float>, ptr %i.fa, align 4, !tbaa !89 ; 2 uses
  %i.fm = fsub <2 x float> %i.fl, %i.fj
  %i.fn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fm) ; 2 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %i.fp = extractelement <2 x float> %i.fn, i64 1 ; 2 uses
  %i.fq = fcmp olt float %i.fo, %i.fp
  %i.fr = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  %i.fs = extractelement <2 x float> %i.fj, i64 0 ; 2 uses
  br i1 %i.fq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi53.i108.us.i = phi float [ %i.fo, %bb.y ], [ %i.fp, %bb.x ] ; 2 uses
  %.051.i109.us.i = phi float [ %i.fi, %bb.y ], [ %i.fs, %bb.x ]
  %.049.i110.us.i = phi float [ %i.fs, %bb.y ], [ %i.fi, %bb.x ] ; 2 uses
  %.046.i111.us.i = phi float [ %i.fk, %bb.y ], [ %i.fr, %bb.x ] ; 4 uses
  %.045.i112.us.i = phi float [ %i.fr, %bb.y ], [ %i.fk, %bb.x ] ; 3 uses
  %i.ft = fsub float %i.fh, %i.fe
  %i.fu = tail call float @llvm.fabs.f32(float %i.ft) ; 3 uses
  %i.fv = fcmp olt float %.pre-phi53.i108.us.i, %i.fu
  br i1 %i.fv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fw = fsub float %.046.i111.us.i, %.051.i109.us.i
  %i.fx = tail call float @llvm.fabs.f32(float %i.fw) ; 2 uses
  %i.fy = fcmp olt float %i.fx, %i.fu
  br i1 %i.fy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.pre-phi55.i113.us.i = phi float [ %i.fu, %bb.aa ], [ %i.fx, %bb.ab ], [ %.pre-phi53.i108.us.i, %bb.z ]
  %.048.i114.us.i = phi float [ %.049.i110.us.i, %bb.aa ], [ %.049.i110.us.i, %bb.ab ], [ %i.fe, %bb.z ]
  %.147.i115.us.i = phi float [ %.046.i111.us.i, %bb.aa ], [ %i.fh, %bb.ab ], [ %.046.i111.us.i, %bb.z ] ; 2 uses
  %.1.i116.us.i = phi float [ %i.fh, %bb.aa ], [ %.046.i111.us.i, %bb.ab ], [ %.045.i112.us.i, %bb.z ]
  %.0.i117.us.i = phi float [ %.045.i112.us.i, %bb.aa ], [ %.045.i112.us.i, %bb.ab ], [ %i.fh, %bb.z ] ; 2 uses
  %i.fz = fpext float %.pre-phi55.i113.us.i to double
  %i.ga = fcmp ugt double %i.fb, %i.fz
  br i1 %i.ga, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = fcmp oeq float %.147.i115.us.i, %.1.i116.us.i
  %i.gc = fcmp oeq float %.147.i115.us.i, %.0.i117.us.i
  %or.cond.i118.us.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond.i118.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i:   ; preds = %bb.ad
  %i.gd = fadd float %.048.i114.us.i, -5.000000e-01
  %i.ge = tail call float @llvm.fabs.f32(float %i.gd)
  %i.gf = fadd float %.0.i117.us.i, -5.000000e-01
  %i.gg = tail call float @llvm.fabs.f32(float %i.gf)
  %i.gh = fcmp ult float %i.ge, %i.gg
  br i1 %i.gh, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i
  %.sroa.0.0.insert.insert.i.us.i = add nuw nsw i64 %indvars.iv.i, %.sroa.2.0.insert.shift.i.us.i ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %.sroa.13.1315.us.i, %.sroa.25.1314.us.i
  br i1 %.not.i.i.us.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %.sroa.13.1315.us.i, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.13.1315.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

bb.ag:                                            ; preds = %bb.ae
  %i.gj = ptrtoint ptr %.sroa.13.1315.us.i to i64 ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.0244.1316.us.i to i64 ; 3 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 4 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %.split.us.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i: ; preds = %bb.ag
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i.us.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = tail call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #8
          to label %.noexc120.us.i unwind label %.loopexit280.split.us.i ; 8 uses

.noexc120.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %i.gu, align 4
  %.not10.i.i.i.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, %.sroa.13.1315.us.i
  br i1 %.not10.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i.preheader

.lr.ph.i.i.i.i.i.i.us.i.preheader:                ; preds = %.noexc120.us.i
  %i.gv = ptrtoaddr ptr %i.gt to i64
  %i.gw = add i64 %i.gj, -8
  %i.gx = sub i64 %i.gw, %i.gk                    ; 2 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gx, 24
  %i.ha = sub i64 %i.gk, %i.gv
  %diff.check = icmp ugt i64 %i.ha, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.us.i.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.us.i.preheader
  %n.vec = and i64 %i.gz, 4611686018427387900     ; 3 uses
  %i.hb = shl i64 %n.vec, 3                       ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gt, i64 %i.hb  ; 2 uses
  %i.hd = getelementptr i8, ptr %.sroa.0244.1316.us.i, i64 %i.hb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gt, i64 %i.he ; 2 uses
  %next.gep73 = getelementptr i8, ptr %.sroa.0244.1316.us.i, i64 %i.he ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.hf = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep73, align 4, !alias.scope !95, !noalias !92
  %wide.load74 = load <2 x i64>, ptr %i.hf, align 4, !alias.scope !95, !noalias !92
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !92, !noalias !95
  store <2 x i64> %wide.load74, ptr %i.hg, align 4, !alias.scope !92, !noalias !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i.preheader99

.lr.ph.i.i.i.i.i.i.us.i.preheader99:              ; preds = %.lr.ph.i.i.i.i.i.i.us.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.us.i.ph = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.us.i.preheader ], [ %i.hc, %middle.block ]
  %.0911.i.i.i.i.i.i.us.i.ph = phi ptr [ %.sroa.0244.1316.us.i, %.lr.ph.i.i.i.i.i.i.us.i.preheader ], [ %i.hd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.us.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.us.i.preheader99, %.lr.ph.i.i.i.i.i.i.us.i
  %.012.i.i.i.i.i.i.us.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.us.i ], [ %.012.i.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.i.us.i.preheader99 ] ; 2 uses
  %.0911.i.i.i.i.i.i.us.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i.us.i ], [ %.0911.i.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.i.us.i.preheader99 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.hi = load i64, ptr %.0911.i.i.i.i.i.i.us.i, align 4, !alias.scope !95, !noalias !92
  store i64 %i.hi, ptr %.012.i.i.i.i.i.i.us.i, align 4, !alias.scope !92, !noalias !95
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.us.i = icmp eq ptr %i.hj, %.sroa.13.1315.us.i
  br i1 %.not.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i, !llvm.loop !101

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.i, %middle.block, %.noexc120.us.i
  %.0.lcssa.i.i.i.i.i.i.us.i = phi ptr [ %i.gt, %.noexc120.us.i ], [ %i.hc, %middle.block ], [ %i.hk, %.lr.ph.i.i.i.i.i.i.us.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.us.i, i64 8
  %.not.i23.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, null
  br i1 %.not.i23.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.1316.us.i, i64 noundef %i.gl) #10
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i: ; preds = %bb.ah, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, %bb.af, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %bb.ad, %bb.ac, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i
  %.sroa.25.2.us.i = phi ptr [ %.sroa.25.1314.us.i, %bb.af ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.hm, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.25.1314.us.i, %bb.ad ], [ %.sroa.25.1314.us.i, %bb.ac ] ; 3 uses
  %.sroa.13.2.us.i = phi ptr [ %i.gi, %bb.af ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.hl, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.13.1315.us.i, %bb.ad ], [ %.sroa.13.1315.us.i, %bb.ac ] ; 5 uses
  %.sroa.0244.2.us.i = phi ptr [ %.sroa.0244.1316.us.i, %bb.af ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.gt, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.0244.1316.us.i, %bb.ad ], [ %.sroa.0244.1316.us.i, %bb.ac ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !102

._crit_edge.us.i:                                 ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.preheader278.i, label %.preheader279.us.i, !llvm.loop !103

.loopexit280.split.us.i:                          ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %lpad.loopexit282.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader278.i:                                  ; preds = %._crit_edge.us.i
  %.not335.i = icmp eq ptr %.sroa.0244.2.us.i, %.sroa.13.2.us.i
  br i1 %.not335.i, label %.preheader277.us.i.preheader, label %.lr.ph.i

.preheader277.us.i.preheader:                     ; preds = %bb.bp, %.preheader278.i
  %.sroa.13.3346.us.i.ph = phi ptr [ %.sroa.13.2.us.i, %.preheader278.i ], [ %.sroa.0244.2.us.i, %bb.bp ]
  br label %.preheader277.us.i

.lr.ph.i:                                         ; preds = %.preheader278.i
  %i.hn = load ptr, ptr %0, align 8, !tbaa !34
  %i.ho = load i32, ptr %i.g, align 8, !tbaa !86
  br label %bb.bp

.split.us.i:                                      ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc.i unwind label %.loopexit.split-lp281.i

.noexc.i:                                         ; preds = %.split.us.i
  unreachable

.loopexit.split-lp281.i:                          ; preds = %.split.us.i
  %lpad.loopexit.split-lp283.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader277.us.i:                               ; preds = %.preheader277.us.i.preheader, %._crit_edge.us352.i
  %indvars.iv387.i = phi i64 [ %indvars.iv.next388.i, %._crit_edge.us352.i ], [ 0, %.preheader277.us.i.preheader ] ; 6 uses
  %.sroa.0244.3347.us.i = phi ptr [ %.sroa.0244.5.us.i, %._crit_edge.us352.i ], [ %.sroa.0244.2.us.i, %.preheader277.us.i.preheader ]
  %.sroa.13.3346.us.i = phi ptr [ %.sroa.13.5.us.i, %._crit_edge.us352.i ], [ %.sroa.13.3346.us.i.ph, %.preheader277.us.i.preheader ]
  %.sroa.25.3345.us.i = phi ptr [ %.sroa.25.5.us.i, %._crit_edge.us352.i ], [ %.sroa.25.2.us.i, %.preheader277.us.i.preheader ]
  %i.hp = icmp ne i64 %indvars.iv387.i, 0         ; 2 uses
  %i.hq = add nsw i64 %indvars.iv387.i, -1        ; 2 uses
  %i.hr = icmp samesign ult i64 %indvars.iv387.i, %i.l ; 2 uses
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 1 ; 3 uses
  %.sroa.2.0.insert.shift.i171.us.i = shl nuw nsw i64 %indvars.iv387.i, 32
  %i.hs = trunc nuw nsw i64 %indvars.iv387.i to i32 ; 4 uses
  %i.ht = trunc nuw nsw i64 %indvars.iv.next388.i to i32 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, %.preheader277.us.i
  %indvars.iv382.i = phi i64 [ 0, %.preheader277.us.i ], [ %indvars.iv.next383.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.0244.4339.us.i = phi ptr [ %.sroa.0244.3347.us.i, %.preheader277.us.i ], [ %.sroa.0244.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 14 uses
  %.sroa.13.4338.us.i = phi ptr [ %.sroa.13.3346.us.i, %.preheader277.us.i ], [ %.sroa.13.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.25.4337.us.i = phi ptr [ %.sroa.25.3345.us.i, %.preheader277.us.i ], [ %.sroa.25.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 6 uses
  %i.hu = icmp ne i64 %indvars.iv382.i, 0         ; 2 uses
  %or.cond.us.i = and i1 %i.hp, %i.hu
  br i1 %or.cond.us.i, label %bb.aj, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i

bb.aj:                                            ; preds = %bb.ai
  %i.hv = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.hw = load i32, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.hx = mul nsw i32 %i.hw, %i.hs
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hy
  %.idx429.i.a = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.idx429.i.a ; 3 uses
  %i.ib = sext i32 %i.hw to i64
  %i.ic = mul nsw i64 %i.hq, %i.ib
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.ic
  %i.ie = mul i64 %indvars.iv382.i, 3
  %i.if = add i64 %i.ie, 4294967293
  %i.ig = and i64 %i.if, 4294967295
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ig ; 3 uses
  %i.ii = load double, ptr %1, align 8, !tbaa !87
  %i.ij = load double, ptr %i.h, align 8, !tbaa !91
  %i.ik = fadd double %i.ii, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.in = load float, ptr %i.im, align 4, !tbaa !89 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !89 ; 4 uses
  %i.ir = load float, ptr %i.il, align 4, !tbaa !89 ; 2 uses
  %i.is = load <2 x float>, ptr %i.ia, align 4, !tbaa !89 ; 2 uses
  %i.it = load float, ptr %i.io, align 4, !tbaa !89 ; 2 uses
  %i.iu = load <2 x float>, ptr %i.ih, align 4, !tbaa !89 ; 2 uses
  %i.iv = fsub <2 x float> %i.iu, %i.is
  %i.iw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iv) ; 2 uses
  %i.ix = extractelement <2 x float> %i.iw, i64 0 ; 2 uses
  %i.iy = extractelement <2 x float> %i.iw, i64 1 ; 2 uses
  %i.iz = fcmp olt float %i.ix, %i.iy
  %i.ja = extractelement <2 x float> %i.iu, i64 0 ; 2 uses
  %i.jb = extractelement <2 x float> %i.is, i64 0 ; 2 uses
  br i1 %i.iz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi53.i122.us.i = phi float [ %i.ix, %bb.ak ], [ %i.iy, %bb.aj ] ; 2 uses
  %.051.i123.us.i = phi float [ %i.ir, %bb.ak ], [ %i.jb, %bb.aj ]
  %.049.i124.us.i = phi float [ %i.jb, %bb.ak ], [ %i.ir, %bb.aj ] ; 2 uses
  %.046.i125.us.i = phi float [ %i.it, %bb.ak ], [ %i.ja, %bb.aj ] ; 4 uses
  %.045.i126.us.i = phi float [ %i.ja, %bb.ak ], [ %i.it, %bb.aj ] ; 3 uses
  %i.jc = fsub float %i.iq, %i.in
  %i.jd = tail call float @llvm.fabs.f32(float %i.jc) ; 3 uses
  %i.je = fcmp olt float %.pre-phi53.i122.us.i, %i.jd
  br i1 %i.je, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.jf = fsub float %.046.i125.us.i, %.051.i123.us.i
  %i.jg = tail call float @llvm.fabs.f32(float %i.jf) ; 2 uses
  %i.jh = fcmp olt float %i.jg, %i.jd
  br i1 %i.jh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.pre-phi55.i127.us.i = phi float [ %i.jd, %bb.am ], [ %i.jg, %bb.an ], [ %.pre-phi53.i122.us.i, %bb.al ]
  %.048.i128.us.i = phi float [ %.049.i124.us.i, %bb.am ], [ %.049.i124.us.i, %bb.an ], [ %i.in, %bb.al ]
  %.147.i129.us.i = phi float [ %.046.i125.us.i, %bb.am ], [ %i.iq, %bb.an ], [ %.046.i125.us.i, %bb.al ] ; 2 uses
  %.1.i130.us.i = phi float [ %i.iq, %bb.am ], [ %.046.i125.us.i, %bb.an ], [ %.045.i126.us.i, %bb.al ]
  %.0.i131.us.i = phi float [ %.045.i126.us.i, %bb.am ], [ %.045.i126.us.i, %bb.an ], [ %i.iq, %bb.al ] ; 2 uses
  %i.ji = fpext float %.pre-phi55.i127.us.i to double
  %i.jj = fcmp ugt double %i.ik, %i.ji
  br i1 %i.jj, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jk = fcmp oeq float %.147.i129.us.i, %.1.i130.us.i
  %i.jl = fcmp oeq float %.147.i129.us.i, %.0.i131.us.i
  %or.cond.i132.us.i = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond.i132.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i:   ; preds = %bb.ap
  %i.jm = fadd float %.048.i128.us.i, -5.000000e-01
  %i.jn = tail call float @llvm.fabs.f32(float %i.jm)
  %i.jo = fadd float %.0.i131.us.i, -5.000000e-01
  %i.jp = tail call float @llvm.fabs.f32(float %i.jo)
  %i.jq = fcmp ult float %i.jn, %i.jp
  br i1 %i.jq, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i, %bb.ap, %bb.ao, %bb.ai
  %i.jr = icmp samesign ult i64 %indvars.iv382.i, %i.k ; 2 uses
  %or.cond3.us.i = and i1 %i.hp, %i.jr
  br i1 %or.cond3.us.i, label %bb.aq, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i

bb.aq:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %i.js = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.jt = load i32, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.ju = mul nsw i32 %i.jt, %i.hs
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.jv
  %.idx430.i = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx430.i ; 3 uses
  %i.jy = sext i32 %i.jt to i64
  %i.jz = mul nsw i64 %i.hq, %i.jy
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.jz
  %i.kb = mul i64 %indvars.iv382.i, 12884901888
  %sext431.i = add i64 %i.kb, 12884901888
  %i.kc = ashr exact i64 %sext431.i, 30
  %i.kd = getelementptr inbounds i8, ptr %i.ka, i64 %i.kc ; 3 uses
  %i.ke = load double, ptr %1, align 8, !tbaa !87
  %i.kf = load double, ptr %i.h, align 8, !tbaa !91
  %i.kg = fadd double %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !89 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.km = load float, ptr %i.kl, align 4, !tbaa !89 ; 4 uses
  %i.kn = load float, ptr %i.kh, align 4, !tbaa !89 ; 2 uses
  %i.ko = load <2 x float>, ptr %i.jx, align 4, !tbaa !89 ; 2 uses
  %i.kp = load float, ptr %i.kk, align 4, !tbaa !89 ; 2 uses
  %i.kq = load <2 x float>, ptr %i.kd, align 4, !tbaa !89 ; 2 uses
  %i.kr = fsub <2 x float> %i.kq, %i.ko
  %i.ks = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kr) ; 2 uses
  %i.kt = extractelement <2 x float> %i.ks, i64 0 ; 2 uses
  %i.ku = extractelement <2 x float> %i.ks, i64 1 ; 2 uses
  %i.kv = fcmp olt float %i.kt, %i.ku
  %i.kw = extractelement <2 x float> %i.kq, i64 0 ; 2 uses
  %i.kx = extractelement <2 x float> %i.ko, i64 0 ; 2 uses
  br i1 %i.kv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre-phi53.i134.us.i = phi float [ %i.kt, %bb.ar ], [ %i.ku, %bb.aq ] ; 2 uses
  %.051.i135.us.i = phi float [ %i.kn, %bb.ar ], [ %i.kx, %bb.aq ]
  %.049.i136.us.i = phi float [ %i.kx, %bb.ar ], [ %i.kn, %bb.aq ] ; 2 uses
  %.046.i137.us.i = phi float [ %i.kp, %bb.ar ], [ %i.kw, %bb.aq ] ; 4 uses
  %.045.i138.us.i = phi float [ %i.kw, %bb.ar ], [ %i.kp, %bb.aq ] ; 3 uses
  %i.ky = fsub float %i.km, %i.kj
  %i.kz = tail call float @llvm.fabs.f32(float %i.ky) ; 3 uses
  %i.la = fcmp olt float %.pre-phi53.i134.us.i, %i.kz
  br i1 %i.la, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.lb = fsub float %.046.i137.us.i, %.051.i135.us.i
  %i.lc = tail call float @llvm.fabs.f32(float %i.lb) ; 2 uses
  %i.ld = fcmp olt float %i.lc, %i.kz
  br i1 %i.ld, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.pre-phi55.i139.us.i = phi float [ %i.kz, %bb.at ], [ %i.lc, %bb.au ], [ %.pre-phi53.i134.us.i, %bb.as ]
  %.048.i140.us.i = phi float [ %.049.i136.us.i, %bb.at ], [ %.049.i136.us.i, %bb.au ], [ %i.kj, %bb.as ]
  %.147.i141.us.i = phi float [ %.046.i137.us.i, %bb.at ], [ %i.km, %bb.au ], [ %.046.i137.us.i, %bb.as ] ; 2 uses
  %.1.i142.us.i = phi float [ %i.km, %bb.at ], [ %.046.i137.us.i, %bb.au ], [ %.045.i138.us.i, %bb.as ]
  %.0.i143.us.i = phi float [ %.045.i138.us.i, %bb.at ], [ %.045.i138.us.i, %bb.au ], [ %i.km, %bb.as ] ; 2 uses
  %i.le = fpext float %.pre-phi55.i139.us.i to double
  %i.lf = fcmp ugt double %i.kg, %i.le
  br i1 %i.lf, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lg = fcmp oeq float %.147.i141.us.i, %.1.i142.us.i
  %i.lh = fcmp oeq float %.147.i141.us.i, %.0.i143.us.i
  %or.cond.i144.us.i = select i1 %i.lg, i1 %i.lh, i1 false
  br i1 %or.cond.i144.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i:   ; preds = %bb.aw
  %i.li = fadd float %.048.i140.us.i, -5.000000e-01
end_hunk_0
begin_hunk_1_@_ZN7msdfgen26msdfErrorCorrection_legacyERKNS_13BitmapSectionIfLi3EEERKNS_7Vector2E:bb.a

_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %bb.aw, %bb.av, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %or.cond271.us.i = select i1 %i.hu, i1 %i.hr, i1 false
  br i1 %or.cond271.us.i, label %bb.ax, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i

bb.ax:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %i.ln = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.lo = load i32, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.lp = mul nsw i32 %i.lo, %i.hs
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lq
  %.idx432.i.a = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.idx432.i.a ; 3 uses
  %i.lt = mul nsw i32 %i.lo, %i.ht
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lu
  %i.lw = mul i64 %indvars.iv382.i, 3
  %i.lx = add i64 %i.lw, 4294967293
  %i.ly = and i64 %i.lx, 4294967295
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ly ; 3 uses
  %i.ma = load double, ptr %1, align 8, !tbaa !87
  %i.mb = load double, ptr %i.h, align 8, !tbaa !91
  %i.mc = fadd double %i.ma, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mf = load float, ptr %i.me, align 4, !tbaa !89 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !89 ; 4 uses
  %i.mj = load float, ptr %i.md, align 4, !tbaa !89 ; 2 uses
  %i.mk = load <2 x float>, ptr %i.ls, align 4, !tbaa !89 ; 2 uses
  %i.ml = load float, ptr %i.mg, align 4, !tbaa !89 ; 2 uses
  %i.mm = load <2 x float>, ptr %i.lz, align 4, !tbaa !89 ; 2 uses
  %i.mn = fsub <2 x float> %i.mm, %i.mk
  %i.mo = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mn) ; 2 uses
  %i.mp = extractelement <2 x float> %i.mo, i64 0 ; 2 uses
  %i.mq = extractelement <2 x float> %i.mo, i64 1 ; 2 uses
  %i.mr = fcmp olt float %i.mp, %i.mq
  %i.ms = extractelement <2 x float> %i.mm, i64 0 ; 2 uses
  %i.mt = extractelement <2 x float> %i.mk, i64 0 ; 2 uses
  br i1 %i.mr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pre-phi53.i146.us.i = phi float [ %i.mp, %bb.ay ], [ %i.mq, %bb.ax ] ; 2 uses
  %.051.i147.us.i = phi float [ %i.mj, %bb.ay ], [ %i.mt, %bb.ax ]
  %.049.i148.us.i = phi float [ %i.mt, %bb.ay ], [ %i.mj, %bb.ax ] ; 2 uses
  %.046.i149.us.i = phi float [ %i.ml, %bb.ay ], [ %i.ms, %bb.ax ] ; 4 uses
  %.045.i150.us.i = phi float [ %i.ms, %bb.ay ], [ %i.ml, %bb.ax ] ; 3 uses
  %i.mu = fsub float %i.mi, %i.mf
  %i.mv = tail call float @llvm.fabs.f32(float %i.mu) ; 3 uses
  %i.mw = fcmp olt float %.pre-phi53.i146.us.i, %i.mv
  br i1 %i.mw, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.mx = fsub float %.046.i149.us.i, %.051.i147.us.i
  %i.my = tail call float @llvm.fabs.f32(float %i.mx) ; 2 uses
  %i.mz = fcmp olt float %i.my, %i.mv
  br i1 %i.mz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.pre-phi55.i151.us.i = phi float [ %i.mv, %bb.ba ], [ %i.my, %bb.bb ], [ %.pre-phi53.i146.us.i, %bb.az ]
  %.048.i152.us.i = phi float [ %.049.i148.us.i, %bb.ba ], [ %.049.i148.us.i, %bb.bb ], [ %i.mf, %bb.az ]
  %.147.i153.us.i = phi float [ %.046.i149.us.i, %bb.ba ], [ %i.mi, %bb.bb ], [ %.046.i149.us.i, %bb.az ] ; 2 uses
  %.1.i154.us.i = phi float [ %i.mi, %bb.ba ], [ %.046.i149.us.i, %bb.bb ], [ %.045.i150.us.i, %bb.az ]
  %.0.i155.us.i = phi float [ %.045.i150.us.i, %bb.ba ], [ %.045.i150.us.i, %bb.bb ], [ %i.mi, %bb.az ] ; 2 uses
  %i.na = fpext float %.pre-phi55.i151.us.i to double
  %i.nb = fcmp ugt double %i.mc, %i.na
  br i1 %i.nb, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nc = fcmp oeq float %.147.i153.us.i, %.1.i154.us.i
  %i.nd = fcmp oeq float %.147.i153.us.i, %.0.i155.us.i
  %or.cond.i156.us.i = select i1 %i.nc, i1 %i.nd, i1 false
  br i1 %or.cond.i156.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i:   ; preds = %bb.bd
  %i.ne = fadd float %.048.i152.us.i, -5.000000e-01
  %i.nf = tail call float @llvm.fabs.f32(float %i.ne)
  %i.ng = fadd float %.0.i155.us.i, -5.000000e-01
  %i.nh = tail call float @llvm.fabs.f32(float %i.ng)
  %i.ni = fcmp ult float %i.nf, %i.nh
  br i1 %i.ni, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %bb.bd, %bb.bc, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %or.cond273.us.i = select i1 %i.jr, i1 %i.hr, i1 false
  br i1 %or.cond273.us.i, label %bb.be, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.be:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i
  %i.nj = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.nk = load i32, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.nl = mul nsw i32 %i.nk, %i.hs
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.nm
  %.idx433.i = mul nuw nsw i64 %indvars.iv382.i, 12
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.idx433.i ; 3 uses
  %i.np = mul nsw i32 %i.nk, %i.ht
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.nq
  %i.ns = mul i64 %indvars.iv382.i, 12884901888
  %sext434.i = add i64 %i.ns, 12884901888
  %i.nt = ashr exact i64 %sext434.i, 30
  %i.nu = getelementptr inbounds i8, ptr %i.nr, i64 %i.nt ; 3 uses
  %i.nv = load double, ptr %1, align 8, !tbaa !87
  %i.nw = load double, ptr %i.h, align 8, !tbaa !91
  %i.nx = fadd double %i.nv, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !89 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.od = load float, ptr %i.oc, align 4, !tbaa !89 ; 4 uses
  %i.oe = load float, ptr %i.ny, align 4, !tbaa !89 ; 2 uses
  %i.of = load <2 x float>, ptr %i.no, align 4, !tbaa !89 ; 2 uses
  %i.og = load float, ptr %i.ob, align 4, !tbaa !89 ; 2 uses
  %i.oh = load <2 x float>, ptr %i.nu, align 4, !tbaa !89 ; 2 uses
  %i.oi = fsub <2 x float> %i.oh, %i.of
  %i.oj = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oi) ; 2 uses
  %i.ok = extractelement <2 x float> %i.oj, i64 0 ; 2 uses
  %i.ol = extractelement <2 x float> %i.oj, i64 1 ; 2 uses
  %i.om = fcmp olt float %i.ok, %i.ol
  %i.on = extractelement <2 x float> %i.oh, i64 0 ; 2 uses
  %i.oo = extractelement <2 x float> %i.of, i64 0 ; 2 uses
  br i1 %i.om, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre-phi53.i158.us.i = phi float [ %i.ok, %bb.bf ], [ %i.ol, %bb.be ] ; 2 uses
  %.051.i159.us.i = phi float [ %i.oe, %bb.bf ], [ %i.oo, %bb.be ]
  %.049.i160.us.i = phi float [ %i.oo, %bb.bf ], [ %i.oe, %bb.be ] ; 2 uses
  %.046.i161.us.i = phi float [ %i.og, %bb.bf ], [ %i.on, %bb.be ] ; 4 uses
  %.045.i162.us.i = phi float [ %i.on, %bb.bf ], [ %i.og, %bb.be ] ; 3 uses
  %i.op = fsub float %i.od, %i.oa
  %i.oq = tail call float @llvm.fabs.f32(float %i.op) ; 3 uses
  %i.or = fcmp olt float %.pre-phi53.i158.us.i, %i.oq
  br i1 %i.or, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.os = fsub float %.046.i161.us.i, %.051.i159.us.i
  %i.ot = tail call float @llvm.fabs.f32(float %i.os) ; 2 uses
  %i.ou = fcmp olt float %i.ot, %i.oq
  br i1 %i.ou, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pre-phi55.i163.us.i = phi float [ %i.oq, %bb.bh ], [ %i.ot, %bb.bi ], [ %.pre-phi53.i158.us.i, %bb.bg ]
  %.048.i164.us.i = phi float [ %.049.i160.us.i, %bb.bh ], [ %.049.i160.us.i, %bb.bi ], [ %i.oa, %bb.bg ]
  %.147.i165.us.i = phi float [ %.046.i161.us.i, %bb.bh ], [ %i.od, %bb.bi ], [ %.046.i161.us.i, %bb.bg ] ; 2 uses
  %.1.i166.us.i = phi float [ %i.od, %bb.bh ], [ %.046.i161.us.i, %bb.bi ], [ %.045.i162.us.i, %bb.bg ]
  %.0.i167.us.i = phi float [ %.045.i162.us.i, %bb.bh ], [ %.045.i162.us.i, %bb.bi ], [ %i.od, %bb.bg ] ; 2 uses
  %i.ov = fpext float %.pre-phi55.i163.us.i to double
  %i.ow = fcmp ugt double %i.nx, %i.ov
  br i1 %i.ow, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ox = fcmp oeq float %.147.i165.us.i, %.1.i166.us.i
  %i.oy = fcmp oeq float %.147.i165.us.i, %.0.i167.us.i
  %or.cond.i168.us.i = select i1 %i.ox, i1 %i.oy, i1 false
  br i1 %or.cond.i168.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i:   ; preds = %bb.bk
  %i.oz = fadd float %.048.i164.us.i, -5.000000e-01
  %i.pa = tail call float @llvm.fabs.f32(float %i.oz)
  %i.pb = fadd float %.0.i167.us.i, -5.000000e-01
  %i.pc = tail call float @llvm.fabs.f32(float %i.pb)
  %i.pd = fcmp ult float %i.pa, %i.pc
  br i1 %i.pd, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i
  %.sroa.0.0.insert.insert.i173.us.i = add nuw nsw i64 %indvars.iv382.i, %.sroa.2.0.insert.shift.i171.us.i ; 2 uses
  %.not.i.i174.us.i = icmp eq ptr %.sroa.13.4338.us.i, %.sroa.25.4337.us.i
  br i1 %.not.i.i174.us.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %.sroa.13.4338.us.i, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.13.4338.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.bn:                                            ; preds = %bb.bl
  %i.pf = ptrtoint ptr %.sroa.13.4338.us.i to i64 ; 2 uses
  %i.pg = ptrtoint ptr %.sroa.0244.4339.us.i to i64 ; 3 uses
  %i.ph = sub i64 %i.pf, %i.pg                    ; 4 uses
  %i.pi = icmp eq i64 %i.ph, 9223372036854775800
  br i1 %i.pi, label %.split.us354.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i: ; preds = %bb.bn
  %i.pj = ashr exact i64 %i.ph, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i176.us.i = tail call i64 @llvm.umax.i64(i64 %i.pj, i64 1)
  %i.pk = add nsw i64 %.sroa.speculated.i.i.i.i176.us.i, %i.pj ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.pj
  %i.pm = tail call i64 @llvm.umin.i64(i64 %i.pk, i64 1152921504606846975)
  %i.pn = select i1 %i.pl, i64 1152921504606846975, i64 %i.pm ; 2 uses
  %i.po = shl nuw nsw i64 %i.pn, 3
  %i.pp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.po) #8
          to label %.noexc188.us.i unwind label %.loopexit.split.us.i ; 8 uses

.noexc188.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ph
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %i.pq, align 4
  %.not10.i.i.i.i.i.i178.us.i = icmp eq ptr %.sroa.0244.4339.us.i, %.sroa.13.4338.us.i
  br i1 %.not10.i.i.i.i.i.i178.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i.preheader

.lr.ph.i.i.i.i.i.i179.us.i.preheader:             ; preds = %.noexc188.us.i
  %i.pr = ptrtoaddr ptr %i.pp to i64
  %i.ps = add i64 %i.pf, -8
  %i.pt = sub i64 %i.ps, %i.pg                    ; 2 uses
  %i.pu = lshr i64 %i.pt, 3
  %i.pv = add nuw nsw i64 %i.pu, 1                ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.pt, 24
  %i.pw = sub i64 %i.pg, %i.pr
  %diff.check77 = icmp ugt i64 %i.pw, -32
  %or.cond93 = or i1 %min.iters.check79, %diff.check77
  br i1 %or.cond93, label %.lr.ph.i.i.i.i.i.i179.us.i.preheader94, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.i.i.i.i.i.i179.us.i.preheader
  %n.vec81 = and i64 %i.pv, 4611686018427387900   ; 3 uses
  %i.px = shl i64 %n.vec81, 3                     ; 2 uses
  %i.py = getelementptr i8, ptr %i.pp, i64 %i.px  ; 2 uses
  %i.pz = getelementptr i8, ptr %.sroa.0244.4339.us.i, i64 %i.px
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %i.qa = shl i64 %index83, 3                     ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.pp, i64 %i.qa ; 2 uses
  %next.gep85 = getelementptr i8, ptr %.sroa.0244.4339.us.i, i64 %i.qa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.qb = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load86 = load <2 x i64>, ptr %next.gep85, align 4, !alias.scope !107, !noalias !104
  %wide.load87 = load <2 x i64>, ptr %i.qb, align 4, !alias.scope !107, !noalias !104
  %i.qc = getelementptr i8, ptr %next.gep84, i64 16
  store <2 x i64> %wide.load86, ptr %next.gep84, align 4, !alias.scope !104, !noalias !107
  store <2 x i64> %wide.load87, ptr %i.qc, align 4, !alias.scope !104, !noalias !107
  %index.next88 = add nuw i64 %index83, 4         ; 2 uses
  %i.qd = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.qd, label %middle.block89, label %vector.body82, !llvm.loop !109

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %i.pv, %n.vec81
  br i1 %cmp.n90, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i.preheader94

.lr.ph.i.i.i.i.i.i179.us.i.preheader94:           ; preds = %.lr.ph.i.i.i.i.i.i179.us.i.preheader, %middle.block89
  %.012.i.i.i.i.i.i180.us.i.ph = phi ptr [ %i.pp, %.lr.ph.i.i.i.i.i.i179.us.i.preheader ], [ %i.py, %middle.block89 ]
  %.0911.i.i.i.i.i.i181.us.i.ph = phi ptr [ %.sroa.0244.4339.us.i, %.lr.ph.i.i.i.i.i.i179.us.i.preheader ], [ %i.pz, %middle.block89 ]
  br label %.lr.ph.i.i.i.i.i.i179.us.i

.lr.ph.i.i.i.i.i.i179.us.i:                       ; preds = %.lr.ph.i.i.i.i.i.i179.us.i.preheader94, %.lr.ph.i.i.i.i.i.i179.us.i
  %.012.i.i.i.i.i.i180.us.i = phi ptr [ %i.qg, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %.012.i.i.i.i.i.i180.us.i.ph, %.lr.ph.i.i.i.i.i.i179.us.i.preheader94 ] ; 2 uses
  %.0911.i.i.i.i.i.i181.us.i = phi ptr [ %i.qf, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %.0911.i.i.i.i.i.i181.us.i.ph, %.lr.ph.i.i.i.i.i.i179.us.i.preheader94 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.qe = load i64, ptr %.0911.i.i.i.i.i.i181.us.i, align 4, !alias.scope !107, !noalias !104
  store i64 %i.qe, ptr %.012.i.i.i.i.i.i180.us.i, align 4, !alias.scope !104, !noalias !107
  %i.qf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i181.us.i, i64 8 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i180.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i182.us.i = icmp eq ptr %i.qf, %.sroa.13.4338.us.i
  br i1 %.not.i.i.i.i.i.i182.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i, !llvm.loop !110

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i: ; preds = %.lr.ph.i.i.i.i.i.i179.us.i, %middle.block89, %.noexc188.us.i
  %.0.lcssa.i.i.i.i.i.i184.us.i = phi ptr [ %i.pp, %.noexc188.us.i ], [ %i.py, %middle.block89 ], [ %i.qg, %.lr.ph.i.i.i.i.i.i179.us.i ]
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i184.us.i, i64 8
  %.not.i23.i.i.i185.us.i = icmp eq ptr %.sroa.0244.4339.us.i, null
  br i1 %.not.i23.i.i.i185.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.4339.us.i, i64 noundef %i.ph) #10
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i: ; preds = %bb.bo, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pn
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i, %bb.bm, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i, %bb.bk, %bb.bj, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i
  %.sroa.25.5.us.i = phi ptr [ %.sroa.25.4337.us.i, %bb.bm ], [ %.sroa.25.4337.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i ], [ %.sroa.25.4337.us.i, %bb.bj ], [ %.sroa.25.4337.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i ], [ %i.qi, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i ], [ %.sroa.25.4337.us.i, %bb.bk ] ; 3 uses
  %.sroa.13.5.us.i = phi ptr [ %i.pe, %bb.bm ], [ %.sroa.13.4338.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i ], [ %.sroa.13.4338.us.i, %bb.bj ], [ %.sroa.13.4338.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i ], [ %i.qh, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i ], [ %.sroa.13.4338.us.i, %bb.bk ] ; 4 uses
  %.sroa.0244.5.us.i = phi ptr [ %.sroa.0244.4339.us.i, %bb.bm ], [ %.sroa.0244.4339.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i ], [ %.sroa.0244.4339.us.i, %bb.bj ], [ %.sroa.0244.4339.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i ], [ %i.pp, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i ], [ %.sroa.0244.4339.us.i, %bb.bk ] ; 7 uses
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %exitcond386.not.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count.i
  br i1 %exitcond386.not.i, label %._crit_edge.us352.i, label %bb.ai, !llvm.loop !111

._crit_edge.us352.i:                              ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next388.i, %wide.trip.count380.i
  br i1 %exitcond391.not.i, label %.preheader.i, label %.preheader277.us.i, !llvm.loop !112

.loopexit.split.us.i:                             ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i
  %.sroa.0219.0336.i = phi ptr [ %.sroa.0244.2.us.i, %.lr.ph.i ], [ %i.rf, %bb.bp ] ; 3 uses
  %i.qj = load i32, ptr %.sroa.0219.0336.i, align 4, !tbaa !113
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0219.0336.i, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !115
  %i.qm = mul nsw i32 %i.ql, %i.ho
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.qn
  %i.qp = mul nsw i32 %i.qj, 3
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.qo, i64 %i.qq ; 4 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !89 ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 4 ; 2 uses
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !89 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 2 uses
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !89 ; 2 uses
  %i.qx = fcmp olt float %i.qu, %i.qs
  %i.qy = select i1 %i.qx, float %i.qu, float %i.qs ; 2 uses
  %i.qz = fcmp olt float %i.qs, %i.qu
  %i.ra = select i1 %i.qz, float %i.qu, float %i.qs ; 2 uses
  %i.rb = fcmp olt float %i.qw, %i.ra
  %i.rc = select i1 %i.rb, float %i.qw, float %i.ra ; 2 uses
  %i.rd = fcmp olt float %i.qy, %i.rc
  %i.re = select i1 %i.rd, float %i.rc, float %i.qy ; 3 uses
  store float %i.re, ptr %i.qr, align 4, !tbaa !89
  store float %i.re, ptr %i.qt, align 4, !tbaa !89
  store float %i.re, ptr %i.qv, align 4, !tbaa !89
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0219.0336.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.rf, %.sroa.13.2.us.i
  br i1 %.not.i, label %.preheader277.us.i.preheader, label %bb.bp, !llvm.loop !116

.preheader.i:                                     ; preds = %._crit_edge.us352.i
  %.not274362.i = icmp eq ptr %.sroa.0244.5.us.i, %.sroa.13.5.us.i
  br i1 %.not274362.i, label %._crit_edge.i, label %.lr.ph364.i

.lr.ph364.i:                                      ; preds = %.preheader.i
  %i.rg = load ptr, ptr %0, align 8, !tbaa !34
  %i.rh = load i32, ptr %i.g, align 8, !tbaa !86
  br label %bb.br

.split.us354.i:                                   ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc187.i unwind label %.loopexit.split-lp.i

.noexc187.i:                                      ; preds = %.split.us354.i
  unreachable

.loopexit.split-lp.i:                             ; preds = %.split.us354.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

._crit_edge.i:                                    ; preds = %bb.br, %.preheader.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0244.5.us.i, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i
  %i.ri = ptrtoint ptr %.sroa.25.5.us.i to i64
  %i.rj = ptrtoint ptr %.sroa.0244.5.us.i to i64
  %i.rk = sub i64 %i.ri, %i.rj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.5.us.i, i64 noundef %i.rk) #10
  br label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit

bb.br:                                            ; preds = %bb.br, %.lr.ph364.i
  %.sroa.0193.0363.i = phi ptr [ %.sroa.0244.5.us.i, %.lr.ph364.i ], [ %i.sh, %bb.br ] ; 3 uses
  %i.rl = load i32, ptr %.sroa.0193.0363.i, align 4, !tbaa !113
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0193.0363.i, i64 4
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !115
  %i.ro = mul nsw i32 %i.rn, %i.rh
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.rp
  %i.rr = mul nsw i32 %i.rl, 3
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rs ; 4 uses
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !89 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 4 ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !89 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 2 uses
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !89 ; 2 uses
  %i.rz = fcmp olt float %i.rw, %i.ru
  %i.sa = select i1 %i.rz, float %i.rw, float %i.ru ; 2 uses
  %i.sb = fcmp olt float %i.ru, %i.rw
  %i.sc = select i1 %i.sb, float %i.rw, float %i.ru ; 2 uses
  %i.sd = fcmp olt float %i.ry, %i.sc
  %i.se = select i1 %i.sd, float %i.ry, float %i.sc ; 2 uses
  %i.sf = fcmp olt float %i.sa, %i.se
  %i.sg = select i1 %i.sf, float %i.se, float %i.sa ; 3 uses
  store float %i.sg, ptr %i.rt, align 4, !tbaa !89
  store float %i.sg, ptr %i.rv, align 4, !tbaa !89
  store float %i.sg, ptr %i.rx, align 4, !tbaa !89
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.0193.0363.i, i64 8 ; 2 uses
  %.not274.i = icmp eq ptr %i.sh, %.sroa.13.5.us.i
  br i1 %.not274.i, label %._crit_edge.i, label %bb.br, !llvm.loop !117

bb.bs:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.split.us.i, %.loopexit.split-lp281.i, %.loopexit280.split.us.i
  %.sroa.25.6.i = phi ptr [ %.sroa.13.1315.us.i, %.loopexit.split-lp281.i ], [ %.sroa.13.1315.us.i, %.loopexit280.split.us.i ], [ %.sroa.13.4338.us.i, %.loopexit.split.us.i ], [ %.sroa.13.4338.us.i, %.loopexit.split-lp.i ]
  %.sroa.0244.6.i = phi ptr [ %.sroa.0244.1316.us.i, %.loopexit.split-lp281.i ], [ %.sroa.0244.1316.us.i, %.loopexit280.split.us.i ], [ %.sroa.0244.4339.us.i, %.loopexit.split.us.i ], [ %.sroa.0244.4339.us.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp283.i, %.loopexit.split-lp281.i ], [ %lpad.loopexit282.us.i, %.loopexit280.split.us.i ], [ %lpad.loopexit.us.i, %.loopexit.split.us.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.not.i.i.i190.i = icmp eq ptr %.sroa.0244.6.i, null
  br i1 %.not.i.i.i190.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit191.i, label %.thread.i

.thread.i:                                        ; preds = %bb.bs
  %i.si = ptrtoint ptr %.sroa.25.6.i to i64
  %i.sj = ptrtoint ptr %.sroa.0244.6.i to i64
  %i.sk = sub i64 %i.si, %i.sj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.6.i, i64 noundef %i.sk) #10
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit191.i

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit191.i:   ; preds = %.thread.i, %bb.bs
  resume { ptr, i32 } %.pn.i

_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi3EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit: ; preds = %bb.a, %.preheader279.lr.ph.i, %._crit_edge.i, %bb.bq
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen26msdfErrorCorrection_legacyERKNS_13BitmapSectionIfLi4EEERKNS_7Vector2E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !53   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader279.lr.ph.i, label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit

.preheader279.lr.ph.i:                            ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  br i1 %i.f, label %.preheader279.us.preheader.i, label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit

.preheader279.us.preheader.i:                     ; preds = %.preheader279.lr.ph.i
  %i.i = add nsw i32 %i.d, -1
  %i.j = add nsw i32 %i.b, -1
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %wide.trip.count380.i = zext nneg i32 %i.d to i64 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  br label %.preheader279.us.i

.preheader279.us.i:                               ; preds = %._crit_edge.us.i, %.preheader279.us.preheader.i
  %indvars.iv377.i = phi i64 [ 0, %.preheader279.us.preheader.i ], [ %indvars.iv.next378.i, %._crit_edge.us.i ] ; 6 uses
  %.sroa.0244.0323.us.i = phi ptr [ null, %.preheader279.us.preheader.i ], [ %.sroa.0244.2.us.i, %._crit_edge.us.i ]
  %.sroa.13.0322.us.i = phi ptr [ null, %.preheader279.us.preheader.i ], [ %.sroa.13.2.us.i, %._crit_edge.us.i ]
  %.sroa.25.0321.us.i = phi ptr [ null, %.preheader279.us.preheader.i ], [ %.sroa.25.2.us.i, %._crit_edge.us.i ]
  %.not276.us.i = icmp eq i64 %indvars.iv377.i, 0
  %i.m = add nsw i64 %indvars.iv377.i, -1
  %i.n = icmp samesign ult i64 %indvars.iv377.i, %i.l
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 3 uses
  %.sroa.2.0.insert.shift.i.us.i = shl nuw nsw i64 %indvars.iv377.i, 32
  %i.o = trunc nuw nsw i64 %indvars.iv377.i to i32 ; 4 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next378.i to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, %.preheader279.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader279.us.i ], [ %indvars.iv.next.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 10 uses
  %.sroa.0244.1316.us.i = phi ptr [ %.sroa.0244.0323.us.i, %.preheader279.us.i ], [ %.sroa.0244.2.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 14 uses
  %.sroa.13.1315.us.i = phi ptr [ %.sroa.13.0322.us.i, %.preheader279.us.i ], [ %.sroa.13.2.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 12 uses
  %.sroa.25.1314.us.i = phi ptr [ %.sroa.25.0321.us.i, %.preheader279.us.i ], [ %.sroa.25.2.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i ] ; 6 uses
  %.not275.us.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not275.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !57
  %i.r = load i32, ptr %i.g, align 8, !tbaa !118
  %i.s = mul nsw i32 %i.r, %i.o
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i ; 3 uses
  %i.w = shl nuw nsw i64 %indvars.iv.i, 2
  %i.x = add nuw nsw i64 %i.w, 4294967292
  %i.y = and i64 %i.x, 4294967292
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.y ; 3 uses
  %i.aa = load double, ptr %1, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !89 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !89 ; 4 uses
  %i.ah = load float, ptr %i.ab, align 4, !tbaa !89 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.v, align 4, !tbaa !89 ; 2 uses
  %i.aj = load float, ptr %i.ae, align 4, !tbaa !89 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.z, align 4, !tbaa !89 ; 2 uses
  %i.al = fsub <2 x float> %i.ak, %i.ai
  %i.am = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.al) ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.ao = extractelement <2 x float> %i.am, i64 1 ; 2 uses
  %i.ap = fcmp olt float %i.an, %i.ao
  %i.aq = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.ar = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi53.i.us.i = phi float [ %i.an, %bb.d ], [ %i.ao, %bb.c ] ; 2 uses
  %.051.i.us.i = phi float [ %i.ah, %bb.d ], [ %i.ar, %bb.c ]
  %.049.i.us.i = phi float [ %i.ar, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %.046.i.us.i = phi float [ %i.aj, %bb.d ], [ %i.aq, %bb.c ] ; 4 uses
  %.045.i.us.i = phi float [ %i.aq, %bb.d ], [ %i.aj, %bb.c ] ; 3 uses
  %i.as = fsub float %i.ag, %i.ad
  %i.at = tail call float @llvm.fabs.f32(float %i.as) ; 3 uses
  %i.au = fcmp olt float %.pre-phi53.i.us.i, %i.at
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = fsub float %.046.i.us.i, %.051.i.us.i
  %i.aw = tail call float @llvm.fabs.f32(float %i.av) ; 2 uses
  %i.ax = fcmp olt float %i.aw, %i.at
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pre-phi55.i.us.i = phi float [ %i.at, %bb.f ], [ %i.aw, %bb.g ], [ %.pre-phi53.i.us.i, %bb.e ]
  %.048.i.us.i = phi float [ %.049.i.us.i, %bb.f ], [ %.049.i.us.i, %bb.g ], [ %i.ad, %bb.e ]
  %.147.i.us.i = phi float [ %.046.i.us.i, %bb.f ], [ %i.ag, %bb.g ], [ %.046.i.us.i, %bb.e ] ; 2 uses
  %.1.i.us.i = phi float [ %i.ag, %bb.f ], [ %.046.i.us.i, %bb.g ], [ %.045.i.us.i, %bb.e ]
  %.0.i.us.i = phi float [ %.045.i.us.i, %bb.f ], [ %.045.i.us.i, %bb.g ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ay = fpext float %.pre-phi55.i.us.i to double
  %i.az = fcmp ugt double %i.aa, %i.ay
  br i1 %i.az, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = fcmp oeq float %.147.i.us.i, %.1.i.us.i
  %i.bb = fcmp oeq float %.147.i.us.i, %.0.i.us.i
  %or.cond.i.us.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond.i.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i:      ; preds = %bb.i
  %i.bc = fadd float %.048.i.us.i, -5.000000e-01
  %i.bd = tail call float @llvm.fabs.f32(float %i.bc)
  %i.be = fadd float %.0.i.us.i, -5.000000e-01
  %i.bf = tail call float @llvm.fabs.f32(float %i.be)
  %i.bg = fcmp ult float %i.bd, %i.bf
  br i1 %i.bg, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i, label %bb.ae

_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i, %bb.i, %bb.h, %bb.b
  %i.bh = icmp samesign ult i64 %indvars.iv.i, %i.k
  br i1 %i.bh, label %bb.j, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i

bb.j:                                             ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i
  %i.bi = load ptr, ptr %0, align 8, !tbaa !57
  %i.bj = load i32, ptr %i.g, align 8, !tbaa !118
  %i.bk = mul nsw i32 %i.bj, %i.o
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %.idx428.i.a = shl nuw nsw i64 %indvars.iv.i, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx428.i.a ; 3 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bp = shl i32 %i.bo, 2
  %i.bq = add i32 %i.bp, 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.br ; 3 uses
  %i.bt = load double, ptr %1, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !89 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !89 ; 4 uses
  %i.ca = load float, ptr %i.bu, align 4, !tbaa !89 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bn, align 4, !tbaa !89 ; 2 uses
  %i.cc = load float, ptr %i.bx, align 4, !tbaa !89 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.bs, align 4, !tbaa !89 ; 2 uses
  %i.ce = fsub <2 x float> %i.cd, %i.cb
  %i.cf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ce) ; 2 uses
  %i.cg = extractelement <2 x float> %i.cf, i64 0 ; 2 uses
  %i.ch = extractelement <2 x float> %i.cf, i64 1 ; 2 uses
  %i.ci = fcmp olt float %i.cg, %i.ch
  %i.cj = extractelement <2 x float> %i.cd, i64 0 ; 2 uses
  %i.ck = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi53.i84.us.i = phi float [ %i.cg, %bb.k ], [ %i.ch, %bb.j ] ; 2 uses
  %.051.i85.us.i = phi float [ %i.ca, %bb.k ], [ %i.ck, %bb.j ]
  %.049.i86.us.i = phi float [ %i.ck, %bb.k ], [ %i.ca, %bb.j ] ; 2 uses
  %.046.i87.us.i = phi float [ %i.cc, %bb.k ], [ %i.cj, %bb.j ] ; 4 uses
  %.045.i88.us.i = phi float [ %i.cj, %bb.k ], [ %i.cc, %bb.j ] ; 3 uses
  %i.cl = fsub float %i.bz, %i.bw
  %i.cm = tail call float @llvm.fabs.f32(float %i.cl) ; 3 uses
  %i.cn = fcmp olt float %.pre-phi53.i84.us.i, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.co = fsub float %.046.i87.us.i, %.051.i85.us.i
  %i.cp = tail call float @llvm.fabs.f32(float %i.co) ; 2 uses
  %i.cq = fcmp olt float %i.cp, %i.cm
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.pre-phi55.i89.us.i = phi float [ %i.cm, %bb.m ], [ %i.cp, %bb.n ], [ %.pre-phi53.i84.us.i, %bb.l ]
  %.048.i90.us.i = phi float [ %.049.i86.us.i, %bb.m ], [ %.049.i86.us.i, %bb.n ], [ %i.bw, %bb.l ]
  %.147.i91.us.i = phi float [ %.046.i87.us.i, %bb.m ], [ %i.bz, %bb.n ], [ %.046.i87.us.i, %bb.l ] ; 2 uses
  %.1.i92.us.i = phi float [ %i.bz, %bb.m ], [ %.046.i87.us.i, %bb.n ], [ %.045.i88.us.i, %bb.l ]
end_hunk_1
begin_hunk_2_@_ZN7msdfgen26msdfErrorCorrection_legacyERKNS_13BitmapSectionIfLi4EEERKNS_7Vector2E:bb.a
  %i.ct = fcmp oeq float %.147.i91.us.i, %.1.i92.us.i
  %i.cu = fcmp oeq float %.147.i91.us.i, %.0.i93.us.i
  %or.cond.i94.us.i = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond.i94.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i:    ; preds = %bb.p
  %i.cv = fadd float %.048.i90.us.i, -5.000000e-01
  %i.cw = tail call float @llvm.fabs.f32(float %i.cv)
  %i.cx = fadd float %.0.i93.us.i, -5.000000e-01
  %i.cy = tail call float @llvm.fabs.f32(float %i.cx)
  %i.cz = fcmp ult float %i.cw, %i.cy
  br i1 %i.cz, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i, label %bb.ae

_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i, %bb.p, %bb.o, %_ZN7msdfgenL11detectClashEPKfS1_d.exit.thread.us.i
  br i1 %.not276.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %bb.q

bb.q:                                             ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i
  %i.da = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.db = load i32, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.dc = mul nsw i32 %i.db, %i.o
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dd
  %i.df = shl nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = sext i32 %i.db to i64
  %i.di = mul nsw i64 %i.m, %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.df ; 3 uses
  %i.dl = load double, ptr %i.h, align 8, !tbaa !91
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !89 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !89 ; 4 uses
  %i.ds = load float, ptr %i.dm, align 4, !tbaa !89 ; 2 uses
  %i.dt = load <2 x float>, ptr %i.dg, align 4, !tbaa !89 ; 2 uses
  %i.du = load float, ptr %i.dp, align 4, !tbaa !89 ; 2 uses
  %i.dv = load <2 x float>, ptr %i.dk, align 4, !tbaa !89 ; 2 uses
  %i.dw = fsub <2 x float> %i.dv, %i.dt
  %i.dx = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dw) ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.dz = extractelement <2 x float> %i.dx, i64 1 ; 2 uses
  %i.ea = fcmp olt float %i.dy, %i.dz
  %i.eb = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.ec = extractelement <2 x float> %i.dt, i64 0 ; 2 uses
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre-phi53.i96.us.i = phi float [ %i.dy, %bb.r ], [ %i.dz, %bb.q ] ; 2 uses
  %.051.i97.us.i = phi float [ %i.ds, %bb.r ], [ %i.ec, %bb.q ]
  %.049.i98.us.i = phi float [ %i.ec, %bb.r ], [ %i.ds, %bb.q ] ; 2 uses
  %.046.i99.us.i = phi float [ %i.du, %bb.r ], [ %i.eb, %bb.q ] ; 4 uses
  %.045.i100.us.i = phi float [ %i.eb, %bb.r ], [ %i.du, %bb.q ] ; 3 uses
  %i.ed = fsub float %i.dr, %i.do
  %i.ee = tail call float @llvm.fabs.f32(float %i.ed) ; 3 uses
  %i.ef = fcmp olt float %.pre-phi53.i96.us.i, %i.ee
  br i1 %i.ef, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.eg = fsub float %.046.i99.us.i, %.051.i97.us.i
  %i.eh = tail call float @llvm.fabs.f32(float %i.eg) ; 2 uses
  %i.ei = fcmp olt float %i.eh, %i.ee
  br i1 %i.ei, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.pre-phi55.i101.us.i = phi float [ %i.ee, %bb.t ], [ %i.eh, %bb.u ], [ %.pre-phi53.i96.us.i, %bb.s ]
  %.048.i102.us.i = phi float [ %.049.i98.us.i, %bb.t ], [ %.049.i98.us.i, %bb.u ], [ %i.do, %bb.s ]
  %.147.i103.us.i = phi float [ %.046.i99.us.i, %bb.t ], [ %i.dr, %bb.u ], [ %.046.i99.us.i, %bb.s ] ; 2 uses
  %.1.i104.us.i = phi float [ %i.dr, %bb.t ], [ %.046.i99.us.i, %bb.u ], [ %.045.i100.us.i, %bb.s ]
  %.0.i105.us.i = phi float [ %.045.i100.us.i, %bb.t ], [ %.045.i100.us.i, %bb.u ], [ %i.dr, %bb.s ] ; 2 uses
  %i.ej = fpext float %.pre-phi55.i101.us.i to double
  %i.ek = fcmp ugt double %i.dl, %i.ej
  br i1 %i.ek, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = fcmp oeq float %.147.i103.us.i, %.1.i104.us.i
  %i.em = fcmp oeq float %.147.i103.us.i, %.0.i105.us.i
  %or.cond.i106.us.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i106.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i:   ; preds = %bb.w
  %i.en = fadd float %.048.i102.us.i, -5.000000e-01
  %i.eo = tail call float @llvm.fabs.f32(float %i.en)
  %i.ep = fadd float %.0.i105.us.i, -5.000000e-01
  %i.eq = tail call float @llvm.fabs.f32(float %i.ep)
  %i.er = fcmp ult float %i.eo, %i.eq
  br i1 %i.er, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i, label %bb.ae

_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i, %bb.w, %bb.v, %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.thread.us.i
  br i1 %i.n, label %bb.x, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

bb.x:                                             ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i
  %i.es = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.et = load i32, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.eu = mul nsw i32 %i.et, %i.o
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ev
  %i.ex = shl nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex ; 3 uses
  %i.ez = mul nsw i32 %i.et, %i.p
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ex ; 3 uses
  %i.fd = load double, ptr %i.h, align 8, !tbaa !91
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !89 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !89 ; 4 uses
  %i.fk = load float, ptr %i.fe, align 4, !tbaa !89 ; 2 uses
  %i.fl = load <2 x float>, ptr %i.ey, align 4, !tbaa !89 ; 2 uses
  %i.fm = load float, ptr %i.fh, align 4, !tbaa !89 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fc, align 4, !tbaa !89 ; 2 uses
  %i.fo = fsub <2 x float> %i.fn, %i.fl
  %i.fp = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 0 ; 2 uses
  %i.fr = extractelement <2 x float> %i.fp, i64 1 ; 2 uses
  %i.fs = fcmp olt float %i.fq, %i.fr
  %i.ft = extractelement <2 x float> %i.fn, i64 0 ; 2 uses
  %i.fu = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi53.i108.us.i = phi float [ %i.fq, %bb.y ], [ %i.fr, %bb.x ] ; 2 uses
  %.051.i109.us.i = phi float [ %i.fk, %bb.y ], [ %i.fu, %bb.x ]
  %.049.i110.us.i = phi float [ %i.fu, %bb.y ], [ %i.fk, %bb.x ] ; 2 uses
  %.046.i111.us.i = phi float [ %i.fm, %bb.y ], [ %i.ft, %bb.x ] ; 4 uses
  %.045.i112.us.i = phi float [ %i.ft, %bb.y ], [ %i.fm, %bb.x ] ; 3 uses
  %i.fv = fsub float %i.fj, %i.fg
  %i.fw = tail call float @llvm.fabs.f32(float %i.fv) ; 3 uses
  %i.fx = fcmp olt float %.pre-phi53.i108.us.i, %i.fw
  br i1 %i.fx, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fy = fsub float %.046.i111.us.i, %.051.i109.us.i
  %i.fz = tail call float @llvm.fabs.f32(float %i.fy) ; 2 uses
  %i.ga = fcmp olt float %i.fz, %i.fw
  br i1 %i.ga, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.pre-phi55.i113.us.i = phi float [ %i.fw, %bb.aa ], [ %i.fz, %bb.ab ], [ %.pre-phi53.i108.us.i, %bb.z ]
  %.048.i114.us.i = phi float [ %.049.i110.us.i, %bb.aa ], [ %.049.i110.us.i, %bb.ab ], [ %i.fg, %bb.z ]
  %.147.i115.us.i = phi float [ %.046.i111.us.i, %bb.aa ], [ %i.fj, %bb.ab ], [ %.046.i111.us.i, %bb.z ] ; 2 uses
  %.1.i116.us.i = phi float [ %i.fj, %bb.aa ], [ %.046.i111.us.i, %bb.ab ], [ %.045.i112.us.i, %bb.z ]
  %.0.i117.us.i = phi float [ %.045.i112.us.i, %bb.aa ], [ %.045.i112.us.i, %bb.ab ], [ %i.fj, %bb.z ] ; 2 uses
  %i.gb = fpext float %.pre-phi55.i113.us.i to double
  %i.gc = fcmp ugt double %i.fd, %i.gb
  br i1 %i.gc, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gd = fcmp oeq float %.147.i115.us.i, %.1.i116.us.i
  %i.ge = fcmp oeq float %.147.i115.us.i, %.0.i117.us.i
  %or.cond.i118.us.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond.i118.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i:   ; preds = %bb.ad
  %i.gf = fadd float %.048.i114.us.i, -5.000000e-01
  %i.gg = tail call float @llvm.fabs.f32(float %i.gf)
  %i.gh = fadd float %.0.i117.us.i, -5.000000e-01
  %i.gi = tail call float @llvm.fabs.f32(float %i.gh)
  %i.gj = fcmp ult float %i.gg, %i.gi
  br i1 %i.gj, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit95.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit.us.i
  %.sroa.0.0.insert.insert.i.us.i = add nuw nsw i64 %indvars.iv.i, %.sroa.2.0.insert.shift.i.us.i ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %.sroa.13.1315.us.i, %.sroa.25.1314.us.i
  br i1 %.not.i.i.us.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %.sroa.13.1315.us.i, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.13.1315.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

bb.ag:                                            ; preds = %bb.ae
  %i.gl = ptrtoint ptr %.sroa.13.1315.us.i to i64 ; 2 uses
  %i.gm = ptrtoint ptr %.sroa.0244.1316.us.i to i64 ; 3 uses
  %i.gn = sub i64 %i.gl, %i.gm                    ; 4 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %.split.us.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i: ; preds = %bb.ag
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i.us.i, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 2 uses
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #8
          to label %.noexc120.us.i unwind label %.loopexit280.split.us.i ; 8 uses

.noexc120.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn
  store i64 %.sroa.0.0.insert.insert.i.us.i, ptr %i.gw, align 4
  %.not10.i.i.i.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, %.sroa.13.1315.us.i
  br i1 %.not10.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i.preheader

.lr.ph.i.i.i.i.i.i.us.i.preheader:                ; preds = %.noexc120.us.i
  %i.gx = ptrtoaddr ptr %i.gv to i64
  %i.gy = add i64 %i.gl, -8
  %i.gz = sub i64 %i.gy, %i.gm                    ; 2 uses
  %i.ha = lshr i64 %i.gz, 3
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gz, 24
  %i.hc = sub i64 %i.gm, %i.gx
  %diff.check = icmp ugt i64 %i.hc, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.us.i.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.us.i.preheader
  %n.vec = and i64 %i.hb, 4611686018427387900     ; 3 uses
  %i.hd = shl i64 %n.vec, 3                       ; 2 uses
  %i.he = getelementptr i8, ptr %i.gv, i64 %i.hd  ; 2 uses
  %i.hf = getelementptr i8, ptr %.sroa.0244.1316.us.i, i64 %i.hd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gv, i64 %i.hg ; 2 uses
  %next.gep73 = getelementptr i8, ptr %.sroa.0244.1316.us.i, i64 %i.hg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.hh = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep73, align 4, !alias.scope !122, !noalias !119
  %wide.load74 = load <2 x i64>, ptr %i.hh, align 4, !alias.scope !122, !noalias !119
  %i.hi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !119, !noalias !122
  store <2 x i64> %wide.load74, ptr %i.hi, align 4, !alias.scope !119, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i.preheader99

.lr.ph.i.i.i.i.i.i.us.i.preheader99:              ; preds = %.lr.ph.i.i.i.i.i.i.us.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.us.i.ph = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.us.i.preheader ], [ %i.he, %middle.block ]
  %.0911.i.i.i.i.i.i.us.i.ph = phi ptr [ %.sroa.0244.1316.us.i, %.lr.ph.i.i.i.i.i.i.us.i.preheader ], [ %i.hf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.i.us.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.us.i.preheader99, %.lr.ph.i.i.i.i.i.i.us.i
  %.012.i.i.i.i.i.i.us.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.us.i ], [ %.012.i.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.i.us.i.preheader99 ] ; 2 uses
  %.0911.i.i.i.i.i.i.us.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.us.i ], [ %.0911.i.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.i.us.i.preheader99 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.hk = load i64, ptr %.0911.i.i.i.i.i.i.us.i, align 4, !alias.scope !122, !noalias !119
  store i64 %i.hk, ptr %.012.i.i.i.i.i.i.us.i, align 4, !alias.scope !119, !noalias !122
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.us.i = icmp eq ptr %i.hl, %.sroa.13.1315.us.i
  br i1 %.not.i.i.i.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i, label %.lr.ph.i.i.i.i.i.i.us.i, !llvm.loop !125

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.us.i, %middle.block, %.noexc120.us.i
  %.0.lcssa.i.i.i.i.i.i.us.i = phi ptr [ %i.gv, %.noexc120.us.i ], [ %i.he, %middle.block ], [ %i.hm, %.lr.ph.i.i.i.i.i.i.us.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.us.i, i64 8
  %.not.i23.i.i.i.us.i = icmp eq ptr %.sroa.0244.1316.us.i, null
  br i1 %.not.i23.i.i.i.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.1316.us.i, i64 noundef %i.gn) #10
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i: ; preds = %bb.ah, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.us.i
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i, %bb.af, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i, %bb.ad, %bb.ac, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i
  %.sroa.25.2.us.i = phi ptr [ %.sroa.25.1314.us.i, %bb.af ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.25.1314.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.ho, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.25.1314.us.i, %bb.ad ], [ %.sroa.25.1314.us.i, %bb.ac ] ; 3 uses
  %.sroa.13.2.us.i = phi ptr [ %i.gk, %bb.af ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.13.1315.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.hn, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.13.1315.us.i, %bb.ad ], [ %.sroa.13.1315.us.i, %bb.ac ] ; 5 uses
  %.sroa.0244.2.us.i = phi ptr [ %.sroa.0244.1316.us.i, %bb.af ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit119.us.i ], [ %.sroa.0244.1316.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit107.thread.us.i ], [ %i.gv, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.us.i ], [ %.sroa.0244.1316.us.i, %bb.ad ], [ %.sroa.0244.1316.us.i, %bb.ac ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !126

._crit_edge.us.i:                                 ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit.us.i
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next378.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %.preheader278.i, label %.preheader279.us.i, !llvm.loop !127

.loopexit280.split.us.i:                          ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.us.i
  %lpad.loopexit282.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader278.i:                                  ; preds = %._crit_edge.us.i
  %.not335.i = icmp eq ptr %.sroa.0244.2.us.i, %.sroa.13.2.us.i
  br i1 %.not335.i, label %.preheader277.us.i.preheader, label %.lr.ph.i

.preheader277.us.i.preheader:                     ; preds = %bb.bp, %.preheader278.i
  %.sroa.13.3346.us.i.ph = phi ptr [ %.sroa.13.2.us.i, %.preheader278.i ], [ %.sroa.0244.2.us.i, %bb.bp ]
  br label %.preheader277.us.i

.lr.ph.i:                                         ; preds = %.preheader278.i
  %i.hp = load ptr, ptr %0, align 8, !tbaa !57
  %i.hq = load i32, ptr %i.g, align 8, !tbaa !118
  br label %bb.bp

.split.us.i:                                      ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc.i unwind label %.loopexit.split-lp281.i

.noexc.i:                                         ; preds = %.split.us.i
  unreachable

.loopexit.split-lp281.i:                          ; preds = %.split.us.i
  %lpad.loopexit.split-lp283.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.preheader277.us.i:                               ; preds = %.preheader277.us.i.preheader, %._crit_edge.us352.i
  %indvars.iv387.i = phi i64 [ %indvars.iv.next388.i, %._crit_edge.us352.i ], [ 0, %.preheader277.us.i.preheader ] ; 6 uses
  %.sroa.0244.3347.us.i = phi ptr [ %.sroa.0244.5.us.i, %._crit_edge.us352.i ], [ %.sroa.0244.2.us.i, %.preheader277.us.i.preheader ]
  %.sroa.13.3346.us.i = phi ptr [ %.sroa.13.5.us.i, %._crit_edge.us352.i ], [ %.sroa.13.3346.us.i.ph, %.preheader277.us.i.preheader ]
  %.sroa.25.3345.us.i = phi ptr [ %.sroa.25.5.us.i, %._crit_edge.us352.i ], [ %.sroa.25.2.us.i, %.preheader277.us.i.preheader ]
  %i.hr = icmp ne i64 %indvars.iv387.i, 0         ; 2 uses
  %i.hs = add nsw i64 %indvars.iv387.i, -1        ; 2 uses
  %i.ht = icmp samesign ult i64 %indvars.iv387.i, %i.l ; 2 uses
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 1 ; 3 uses
  %.sroa.2.0.insert.shift.i171.us.i = shl nuw nsw i64 %indvars.iv387.i, 32
  %i.hu = trunc nuw nsw i64 %indvars.iv387.i to i32 ; 4 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv.next388.i to i32 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, %.preheader277.us.i
  %indvars.iv382.i = phi i64 [ 0, %.preheader277.us.i ], [ %indvars.iv.next383.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.0244.4339.us.i = phi ptr [ %.sroa.0244.3347.us.i, %.preheader277.us.i ], [ %.sroa.0244.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 14 uses
  %.sroa.13.4338.us.i = phi ptr [ %.sroa.13.3346.us.i, %.preheader277.us.i ], [ %.sroa.13.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 12 uses
  %.sroa.25.4337.us.i = phi ptr [ %.sroa.25.3345.us.i, %.preheader277.us.i ], [ %.sroa.25.5.us.i, %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i ] ; 6 uses
  %i.hw = icmp ne i64 %indvars.iv382.i, 0         ; 2 uses
  %or.cond.us.i = and i1 %i.hr, %i.hw
  br i1 %or.cond.us.i, label %bb.aj, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i

bb.aj:                                            ; preds = %bb.ai
  %i.hx = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.hy = load i32, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.hz = mul nsw i32 %i.hy, %i.hu
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ia
  %.idx429.i.a = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx429.i.a ; 3 uses
  %i.id = sext i32 %i.hy to i64
  %i.ie = mul nsw i64 %i.hs, %i.id
  %i.if = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.ie
  %i.ig = shl i64 %indvars.iv382.i, 2
  %i.ih = add i64 %i.ig, 4294967292
  %i.ii = and i64 %i.ih, 4294967292
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ii ; 3 uses
  %i.ik = load double, ptr %1, align 8, !tbaa !87
  %i.il = load double, ptr %i.h, align 8, !tbaa !91
  %i.im = fadd double %i.ik, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !89 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.is = load float, ptr %i.ir, align 4, !tbaa !89 ; 4 uses
  %i.it = load float, ptr %i.in, align 4, !tbaa !89 ; 2 uses
  %i.iu = load <2 x float>, ptr %i.ic, align 4, !tbaa !89 ; 2 uses
  %i.iv = load float, ptr %i.iq, align 4, !tbaa !89 ; 2 uses
  %i.iw = load <2 x float>, ptr %i.ij, align 4, !tbaa !89 ; 2 uses
  %i.ix = fsub <2 x float> %i.iw, %i.iu
  %i.iy = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ix) ; 2 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 0 ; 2 uses
  %i.ja = extractelement <2 x float> %i.iy, i64 1 ; 2 uses
  %i.jb = fcmp olt float %i.iz, %i.ja
  %i.jc = extractelement <2 x float> %i.iw, i64 0 ; 2 uses
  %i.jd = extractelement <2 x float> %i.iu, i64 0 ; 2 uses
  br i1 %i.jb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre-phi53.i122.us.i = phi float [ %i.iz, %bb.ak ], [ %i.ja, %bb.aj ] ; 2 uses
  %.051.i123.us.i = phi float [ %i.it, %bb.ak ], [ %i.jd, %bb.aj ]
  %.049.i124.us.i = phi float [ %i.jd, %bb.ak ], [ %i.it, %bb.aj ] ; 2 uses
  %.046.i125.us.i = phi float [ %i.iv, %bb.ak ], [ %i.jc, %bb.aj ] ; 4 uses
  %.045.i126.us.i = phi float [ %i.jc, %bb.ak ], [ %i.iv, %bb.aj ] ; 3 uses
  %i.je = fsub float %i.is, %i.ip
  %i.jf = tail call float @llvm.fabs.f32(float %i.je) ; 3 uses
  %i.jg = fcmp olt float %.pre-phi53.i122.us.i, %i.jf
  br i1 %i.jg, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.jh = fsub float %.046.i125.us.i, %.051.i123.us.i
  %i.ji = tail call float @llvm.fabs.f32(float %i.jh) ; 2 uses
  %i.jj = fcmp olt float %i.ji, %i.jf
  br i1 %i.jj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.pre-phi55.i127.us.i = phi float [ %i.jf, %bb.am ], [ %i.ji, %bb.an ], [ %.pre-phi53.i122.us.i, %bb.al ]
  %.048.i128.us.i = phi float [ %.049.i124.us.i, %bb.am ], [ %.049.i124.us.i, %bb.an ], [ %i.ip, %bb.al ]
  %.147.i129.us.i = phi float [ %.046.i125.us.i, %bb.am ], [ %i.is, %bb.an ], [ %.046.i125.us.i, %bb.al ] ; 2 uses
  %.1.i130.us.i = phi float [ %i.is, %bb.am ], [ %.046.i125.us.i, %bb.an ], [ %.045.i126.us.i, %bb.al ]
  %.0.i131.us.i = phi float [ %.045.i126.us.i, %bb.am ], [ %.045.i126.us.i, %bb.an ], [ %i.is, %bb.al ] ; 2 uses
  %i.jk = fpext float %.pre-phi55.i127.us.i to double
  %i.jl = fcmp ugt double %i.im, %i.jk
  br i1 %i.jl, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jm = fcmp oeq float %.147.i129.us.i, %.1.i130.us.i
  %i.jn = fcmp oeq float %.147.i129.us.i, %.0.i131.us.i
  %or.cond.i132.us.i = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %or.cond.i132.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i:   ; preds = %bb.ap
  %i.jo = fadd float %.048.i128.us.i, -5.000000e-01
  %i.jp = tail call float @llvm.fabs.f32(float %i.jo)
  %i.jq = fadd float %.0.i131.us.i, -5.000000e-01
  %i.jr = tail call float @llvm.fabs.f32(float %i.jq)
  %i.js = fcmp ult float %i.jp, %i.jr
  br i1 %i.js, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i, %bb.ap, %bb.ao, %bb.ai
  %i.jt = icmp samesign ult i64 %indvars.iv382.i, %i.k ; 2 uses
  %or.cond3.us.i = and i1 %i.hr, %i.jt
  br i1 %or.cond3.us.i, label %bb.aq, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i

bb.aq:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %i.ju = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.jv = load i32, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.jw = mul nsw i32 %i.jv, %i.hu
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.jx
  %.idx430.i.a = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.idx430.i.a ; 3 uses
  %i.ka = sext i32 %i.jv to i64
  %i.kb = mul nsw i64 %i.hs, %i.ka
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.kb
  %i.kd = trunc nuw nsw i64 %indvars.iv382.i to i32
  %i.ke = shl i32 %i.kd, 2
  %i.kf = add i32 %i.ke, 4
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.kg ; 3 uses
  %i.ki = load double, ptr %1, align 8, !tbaa !87
  %i.kj = load double, ptr %i.h, align 8, !tbaa !91
  %i.kk = fadd double %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !89 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !89 ; 4 uses
  %i.kr = load float, ptr %i.kl, align 4, !tbaa !89 ; 2 uses
  %i.ks = load <2 x float>, ptr %i.jz, align 4, !tbaa !89 ; 2 uses
  %i.kt = load float, ptr %i.ko, align 4, !tbaa !89 ; 2 uses
  %i.ku = load <2 x float>, ptr %i.kh, align 4, !tbaa !89 ; 2 uses
  %i.kv = fsub <2 x float> %i.ku, %i.ks
  %i.kw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kv) ; 2 uses
  %i.kx = extractelement <2 x float> %i.kw, i64 0 ; 2 uses
  %i.ky = extractelement <2 x float> %i.kw, i64 1 ; 2 uses
  %i.kz = fcmp olt float %i.kx, %i.ky
  %i.la = extractelement <2 x float> %i.ku, i64 0 ; 2 uses
  %i.lb = extractelement <2 x float> %i.ks, i64 0 ; 2 uses
  br i1 %i.kz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre-phi53.i134.us.i = phi float [ %i.kx, %bb.ar ], [ %i.ky, %bb.aq ] ; 2 uses
  %.051.i135.us.i = phi float [ %i.kr, %bb.ar ], [ %i.lb, %bb.aq ]
  %.049.i136.us.i = phi float [ %i.lb, %bb.ar ], [ %i.kr, %bb.aq ] ; 2 uses
  %.046.i137.us.i = phi float [ %i.kt, %bb.ar ], [ %i.la, %bb.aq ] ; 4 uses
  %.045.i138.us.i = phi float [ %i.la, %bb.ar ], [ %i.kt, %bb.aq ] ; 3 uses
  %i.lc = fsub float %i.kq, %i.kn
  %i.ld = tail call float @llvm.fabs.f32(float %i.lc) ; 3 uses
  %i.le = fcmp olt float %.pre-phi53.i134.us.i, %i.ld
  br i1 %i.le, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.lf = fsub float %.046.i137.us.i, %.051.i135.us.i
  %i.lg = tail call float @llvm.fabs.f32(float %i.lf) ; 2 uses
  %i.lh = fcmp olt float %i.lg, %i.ld
  br i1 %i.lh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.pre-phi55.i139.us.i = phi float [ %i.ld, %bb.at ], [ %i.lg, %bb.au ], [ %.pre-phi53.i134.us.i, %bb.as ]
  %.048.i140.us.i = phi float [ %.049.i136.us.i, %bb.at ], [ %.049.i136.us.i, %bb.au ], [ %i.kn, %bb.as ]
  %.147.i141.us.i = phi float [ %.046.i137.us.i, %bb.at ], [ %i.kq, %bb.au ], [ %.046.i137.us.i, %bb.as ] ; 2 uses
  %.1.i142.us.i = phi float [ %i.kq, %bb.at ], [ %.046.i137.us.i, %bb.au ], [ %.045.i138.us.i, %bb.as ]
  %.0.i143.us.i = phi float [ %.045.i138.us.i, %bb.at ], [ %.045.i138.us.i, %bb.au ], [ %i.kq, %bb.as ] ; 2 uses
  %i.li = fpext float %.pre-phi55.i139.us.i to double
  %i.lj = fcmp ugt double %i.kk, %i.li
  br i1 %i.lj, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lk = fcmp oeq float %.147.i141.us.i, %.1.i142.us.i
  %i.ll = fcmp oeq float %.147.i141.us.i, %.0.i143.us.i
  %or.cond.i144.us.i = select i1 %i.lk, i1 %i.ll, i1 false
  br i1 %or.cond.i144.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i:   ; preds = %bb.aw
end_hunk_2
begin_hunk_3_@_ZN7msdfgen26msdfErrorCorrection_legacyERKNS_13BitmapSectionIfLi4EEERKNS_7Vector2E:bb.a
_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %bb.aw, %bb.av, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.thread.us.i
  %or.cond271.us.i = select i1 %i.hw, i1 %i.ht, i1 false
  br i1 %or.cond271.us.i, label %bb.ax, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i

bb.ax:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %i.lr = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.ls = load i32, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.hu
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.lu
  %.idx431.i.a = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %.idx431.i.a ; 3 uses
  %i.lx = mul nsw i32 %i.ls, %i.hv
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ly
  %i.ma = shl i64 %indvars.iv382.i, 2
  %i.mb = add i64 %i.ma, 4294967292
  %i.mc = and i64 %i.mb, 4294967292
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.mc ; 3 uses
  %i.me = load double, ptr %1, align 8, !tbaa !87
  %i.mf = load double, ptr %i.h, align 8, !tbaa !91
  %i.mg = fadd double %i.me, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !89 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !89 ; 4 uses
  %i.mn = load float, ptr %i.mh, align 4, !tbaa !89 ; 2 uses
  %i.mo = load <2 x float>, ptr %i.lw, align 4, !tbaa !89 ; 2 uses
  %i.mp = load float, ptr %i.mk, align 4, !tbaa !89 ; 2 uses
  %i.mq = load <2 x float>, ptr %i.md, align 4, !tbaa !89 ; 2 uses
  %i.mr = fsub <2 x float> %i.mq, %i.mo
  %i.ms = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mr) ; 2 uses
  %i.mt = extractelement <2 x float> %i.ms, i64 0 ; 2 uses
  %i.mu = extractelement <2 x float> %i.ms, i64 1 ; 2 uses
  %i.mv = fcmp olt float %i.mt, %i.mu
  %i.mw = extractelement <2 x float> %i.mq, i64 0 ; 2 uses
  %i.mx = extractelement <2 x float> %i.mo, i64 0 ; 2 uses
  br i1 %i.mv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pre-phi53.i146.us.i = phi float [ %i.mt, %bb.ay ], [ %i.mu, %bb.ax ] ; 2 uses
  %.051.i147.us.i = phi float [ %i.mn, %bb.ay ], [ %i.mx, %bb.ax ]
  %.049.i148.us.i = phi float [ %i.mx, %bb.ay ], [ %i.mn, %bb.ax ] ; 2 uses
  %.046.i149.us.i = phi float [ %i.mp, %bb.ay ], [ %i.mw, %bb.ax ] ; 4 uses
  %.045.i150.us.i = phi float [ %i.mw, %bb.ay ], [ %i.mp, %bb.ax ] ; 3 uses
  %i.my = fsub float %i.mm, %i.mj
  %i.mz = tail call float @llvm.fabs.f32(float %i.my) ; 3 uses
  %i.na = fcmp olt float %.pre-phi53.i146.us.i, %i.mz
  br i1 %i.na, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.nb = fsub float %.046.i149.us.i, %.051.i147.us.i
  %i.nc = tail call float @llvm.fabs.f32(float %i.nb) ; 2 uses
  %i.nd = fcmp olt float %i.nc, %i.mz
  br i1 %i.nd, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.pre-phi55.i151.us.i = phi float [ %i.mz, %bb.ba ], [ %i.nc, %bb.bb ], [ %.pre-phi53.i146.us.i, %bb.az ]
  %.048.i152.us.i = phi float [ %.049.i148.us.i, %bb.ba ], [ %.049.i148.us.i, %bb.bb ], [ %i.mj, %bb.az ]
  %.147.i153.us.i = phi float [ %.046.i149.us.i, %bb.ba ], [ %i.mm, %bb.bb ], [ %.046.i149.us.i, %bb.az ] ; 2 uses
  %.1.i154.us.i = phi float [ %i.mm, %bb.ba ], [ %.046.i149.us.i, %bb.bb ], [ %.045.i150.us.i, %bb.az ]
  %.0.i155.us.i = phi float [ %.045.i150.us.i, %bb.ba ], [ %.045.i150.us.i, %bb.bb ], [ %i.mm, %bb.az ] ; 2 uses
  %i.ne = fpext float %.pre-phi55.i151.us.i to double
  %i.nf = fcmp ugt double %i.mg, %i.ne
  br i1 %i.nf, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ng = fcmp oeq float %.147.i153.us.i, %.1.i154.us.i
  %i.nh = fcmp oeq float %.147.i153.us.i, %.0.i155.us.i
  %or.cond.i156.us.i = select i1 %i.ng, i1 %i.nh, i1 false
  br i1 %or.cond.i156.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i:   ; preds = %bb.bd
  %i.ni = fadd float %.048.i152.us.i, -5.000000e-01
  %i.nj = tail call float @llvm.fabs.f32(float %i.ni)
  %i.nk = fadd float %.0.i155.us.i, -5.000000e-01
  %i.nl = tail call float @llvm.fabs.f32(float %i.nk)
  %i.nm = fcmp ult float %i.nj, %i.nl
  br i1 %i.nm, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i, label %bb.bl

_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i: ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %bb.bd, %bb.bc, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.thread.us.i
  %or.cond273.us.i = select i1 %i.jt, i1 %i.ht, i1 false
  br i1 %or.cond273.us.i, label %bb.be, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.be:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i
  %i.nn = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.no = load i32, ptr %i.g, align 8, !tbaa !118 ; 2 uses
  %i.np = mul nsw i32 %i.no, %i.hu
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.nq
  %.idx432.i = shl nuw nsw i64 %indvars.iv382.i, 4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.idx432.i ; 3 uses
  %i.nt = mul nsw i32 %i.no, %i.hv
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.nu
  %i.nw = trunc nuw nsw i64 %indvars.iv382.i to i32
  %i.nx = shl i32 %i.nw, 2
  %i.ny = add i32 %i.nx, 4
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.nz ; 3 uses
  %i.ob = load double, ptr %1, align 8, !tbaa !87
  %i.oc = load double, ptr %i.h, align 8, !tbaa !91
  %i.od = fadd double %i.ob, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.og = load float, ptr %i.of, align 4, !tbaa !89 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !89 ; 4 uses
  %i.ok = load float, ptr %i.oe, align 4, !tbaa !89 ; 2 uses
  %i.ol = load <2 x float>, ptr %i.ns, align 4, !tbaa !89 ; 2 uses
  %i.om = load float, ptr %i.oh, align 4, !tbaa !89 ; 2 uses
  %i.on = load <2 x float>, ptr %i.oa, align 4, !tbaa !89 ; 2 uses
  %i.oo = fsub <2 x float> %i.on, %i.ol
  %i.op = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oo) ; 2 uses
  %i.oq = extractelement <2 x float> %i.op, i64 0 ; 2 uses
  %i.or = extractelement <2 x float> %i.op, i64 1 ; 2 uses
  %i.os = fcmp olt float %i.oq, %i.or
  %i.ot = extractelement <2 x float> %i.on, i64 0 ; 2 uses
  %i.ou = extractelement <2 x float> %i.ol, i64 0 ; 2 uses
  br i1 %i.os, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pre-phi53.i158.us.i = phi float [ %i.oq, %bb.bf ], [ %i.or, %bb.be ] ; 2 uses
  %.051.i159.us.i = phi float [ %i.ok, %bb.bf ], [ %i.ou, %bb.be ]
  %.049.i160.us.i = phi float [ %i.ou, %bb.bf ], [ %i.ok, %bb.be ] ; 2 uses
  %.046.i161.us.i = phi float [ %i.om, %bb.bf ], [ %i.ot, %bb.be ] ; 4 uses
  %.045.i162.us.i = phi float [ %i.ot, %bb.bf ], [ %i.om, %bb.be ] ; 3 uses
  %i.ov = fsub float %i.oj, %i.og
  %i.ow = tail call float @llvm.fabs.f32(float %i.ov) ; 3 uses
  %i.ox = fcmp olt float %.pre-phi53.i158.us.i, %i.ow
  br i1 %i.ox, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.oy = fsub float %.046.i161.us.i, %.051.i159.us.i
  %i.oz = tail call float @llvm.fabs.f32(float %i.oy) ; 2 uses
  %i.pa = fcmp olt float %i.oz, %i.ow
  br i1 %i.pa, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pre-phi55.i163.us.i = phi float [ %i.ow, %bb.bh ], [ %i.oz, %bb.bi ], [ %.pre-phi53.i158.us.i, %bb.bg ]
  %.048.i164.us.i = phi float [ %.049.i160.us.i, %bb.bh ], [ %.049.i160.us.i, %bb.bi ], [ %i.og, %bb.bg ]
  %.147.i165.us.i = phi float [ %.046.i161.us.i, %bb.bh ], [ %i.oj, %bb.bi ], [ %.046.i161.us.i, %bb.bg ] ; 2 uses
  %.1.i166.us.i = phi float [ %i.oj, %bb.bh ], [ %.046.i161.us.i, %bb.bi ], [ %.045.i162.us.i, %bb.bg ]
  %.0.i167.us.i = phi float [ %.045.i162.us.i, %bb.bh ], [ %.045.i162.us.i, %bb.bi ], [ %i.oj, %bb.bg ] ; 2 uses
  %i.pb = fpext float %.pre-phi55.i163.us.i to double
  %i.pc = fcmp ugt double %i.od, %i.pb
  br i1 %i.pc, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pd = fcmp oeq float %.147.i165.us.i, %.1.i166.us.i
  %i.pe = fcmp oeq float %.147.i165.us.i, %.0.i167.us.i
  %or.cond.i168.us.i = select i1 %i.pd, i1 %i.pe, i1 false
  br i1 %or.cond.i168.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i

_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i:   ; preds = %bb.bk
  %i.pf = fadd float %.048.i164.us.i, -5.000000e-01
  %i.pg = tail call float @llvm.fabs.f32(float %i.pf)
  %i.ph = fadd float %.0.i167.us.i, -5.000000e-01
  %i.pi = tail call float @llvm.fabs.f32(float %i.ph)
  %i.pj = fcmp ult float %i.pg, %i.pi
  br i1 %i.pj, label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit145.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit133.us.i
  %.sroa.0.0.insert.insert.i173.us.i = add nuw nsw i64 %indvars.iv382.i, %.sroa.2.0.insert.shift.i171.us.i ; 2 uses
  %.not.i.i174.us.i = icmp eq ptr %.sroa.13.4338.us.i, %.sroa.25.4337.us.i
  br i1 %.not.i.i174.us.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %.sroa.13.4338.us.i, align 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.13.4338.us.i, i64 8
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

bb.bn:                                            ; preds = %bb.bl
  %i.pl = ptrtoint ptr %.sroa.13.4338.us.i to i64 ; 2 uses
  %i.pm = ptrtoint ptr %.sroa.0244.4339.us.i to i64 ; 3 uses
  %i.pn = sub i64 %i.pl, %i.pm                    ; 4 uses
  %i.po = icmp eq i64 %i.pn, 9223372036854775800
  br i1 %i.po, label %.split.us354.i, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i: ; preds = %bb.bn
  %i.pp = ashr exact i64 %i.pn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i176.us.i = tail call i64 @llvm.umax.i64(i64 %i.pp, i64 1)
  %i.pq = add nsw i64 %.sroa.speculated.i.i.i.i176.us.i, %i.pp ; 2 uses
  %i.pr = icmp ult i64 %i.pq, %i.pp
  %i.ps = tail call i64 @llvm.umin.i64(i64 %i.pq, i64 1152921504606846975)
  %i.pt = select i1 %i.pr, i64 1152921504606846975, i64 %i.ps ; 2 uses
  %i.pu = shl nuw nsw i64 %i.pt, 3
  %i.pv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pu) #8
          to label %.noexc188.us.i unwind label %.loopexit.split.us.i ; 8 uses

.noexc188.us.i:                                   ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pn
  store i64 %.sroa.0.0.insert.insert.i173.us.i, ptr %i.pw, align 4
  %.not10.i.i.i.i.i.i178.us.i = icmp eq ptr %.sroa.0244.4339.us.i, %.sroa.13.4338.us.i
  br i1 %.not10.i.i.i.i.i.i178.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i.preheader

.lr.ph.i.i.i.i.i.i179.us.i.preheader:             ; preds = %.noexc188.us.i
  %i.px = ptrtoaddr ptr %i.pv to i64
  %i.py = add i64 %i.pl, -8
  %i.pz = sub i64 %i.py, %i.pm                    ; 2 uses
  %i.qa = lshr i64 %i.pz, 3
  %i.qb = add nuw nsw i64 %i.qa, 1                ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.pz, 24
  %i.qc = sub i64 %i.pm, %i.px
  %diff.check77 = icmp ugt i64 %i.qc, -32
  %or.cond93 = or i1 %min.iters.check79, %diff.check77
  br i1 %or.cond93, label %.lr.ph.i.i.i.i.i.i179.us.i.preheader94, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph.i.i.i.i.i.i179.us.i.preheader
  %n.vec81 = and i64 %i.qb, 4611686018427387900   ; 3 uses
  %i.qd = shl i64 %n.vec81, 3                     ; 2 uses
  %i.qe = getelementptr i8, ptr %i.pv, i64 %i.qd  ; 2 uses
  %i.qf = getelementptr i8, ptr %.sroa.0244.4339.us.i, i64 %i.qd
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %i.qg = shl i64 %index83, 3                     ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.pv, i64 %i.qg ; 2 uses
  %next.gep85 = getelementptr i8, ptr %.sroa.0244.4339.us.i, i64 %i.qg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.qh = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load86 = load <2 x i64>, ptr %next.gep85, align 4, !alias.scope !131, !noalias !128
  %wide.load87 = load <2 x i64>, ptr %i.qh, align 4, !alias.scope !131, !noalias !128
  %i.qi = getelementptr i8, ptr %next.gep84, i64 16
  store <2 x i64> %wide.load86, ptr %next.gep84, align 4, !alias.scope !128, !noalias !131
  store <2 x i64> %wide.load87, ptr %i.qi, align 4, !alias.scope !128, !noalias !131
  %index.next88 = add nuw i64 %index83, 4         ; 2 uses
  %i.qj = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.qj, label %middle.block89, label %vector.body82, !llvm.loop !133

middle.block89:                                   ; preds = %vector.body82
  %cmp.n90 = icmp eq i64 %i.qb, %n.vec81
  br i1 %cmp.n90, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i.preheader94

.lr.ph.i.i.i.i.i.i179.us.i.preheader94:           ; preds = %.lr.ph.i.i.i.i.i.i179.us.i.preheader, %middle.block89
  %.012.i.i.i.i.i.i180.us.i.ph = phi ptr [ %i.pv, %.lr.ph.i.i.i.i.i.i179.us.i.preheader ], [ %i.qe, %middle.block89 ]
  %.0911.i.i.i.i.i.i181.us.i.ph = phi ptr [ %.sroa.0244.4339.us.i, %.lr.ph.i.i.i.i.i.i179.us.i.preheader ], [ %i.qf, %middle.block89 ]
  br label %.lr.ph.i.i.i.i.i.i179.us.i

.lr.ph.i.i.i.i.i.i179.us.i:                       ; preds = %.lr.ph.i.i.i.i.i.i179.us.i.preheader94, %.lr.ph.i.i.i.i.i.i179.us.i
  %.012.i.i.i.i.i.i180.us.i = phi ptr [ %i.qm, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %.012.i.i.i.i.i.i180.us.i.ph, %.lr.ph.i.i.i.i.i.i179.us.i.preheader94 ] ; 2 uses
  %.0911.i.i.i.i.i.i181.us.i = phi ptr [ %i.ql, %.lr.ph.i.i.i.i.i.i179.us.i ], [ %.0911.i.i.i.i.i.i181.us.i.ph, %.lr.ph.i.i.i.i.i.i179.us.i.preheader94 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.qk = load i64, ptr %.0911.i.i.i.i.i.i181.us.i, align 4, !alias.scope !131, !noalias !128
  store i64 %i.qk, ptr %.012.i.i.i.i.i.i180.us.i, align 4, !alias.scope !128, !noalias !131
  %i.ql = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i181.us.i, i64 8 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i180.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i182.us.i = icmp eq ptr %i.ql, %.sroa.13.4338.us.i
  br i1 %.not.i.i.i.i.i.i182.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i, label %.lr.ph.i.i.i.i.i.i179.us.i, !llvm.loop !134

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i: ; preds = %.lr.ph.i.i.i.i.i.i179.us.i, %middle.block89, %.noexc188.us.i
  %.0.lcssa.i.i.i.i.i.i184.us.i = phi ptr [ %i.pv, %.noexc188.us.i ], [ %i.qe, %middle.block89 ], [ %i.qm, %.lr.ph.i.i.i.i.i.i179.us.i ]
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i184.us.i, i64 8
  %.not.i23.i.i.i185.us.i = icmp eq ptr %.sroa.0244.4339.us.i, null
  br i1 %.not.i23.i.i.i185.us.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.4339.us.i, i64 noundef %i.pn) #10
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i: ; preds = %bb.bo, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i183.us.i
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.pt
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i

_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i, %bb.bm, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i, %bb.bk, %bb.bj, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i
  %.sroa.25.5.us.i = phi ptr [ %.sroa.25.4337.us.i, %bb.bm ], [ %.sroa.25.4337.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i ], [ %.sroa.25.4337.us.i, %bb.bj ], [ %.sroa.25.4337.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i ], [ %i.qo, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i ], [ %.sroa.25.4337.us.i, %bb.bk ] ; 3 uses
  %.sroa.13.5.us.i = phi ptr [ %i.pk, %bb.bm ], [ %.sroa.13.4338.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i ], [ %.sroa.13.4338.us.i, %bb.bj ], [ %.sroa.13.4338.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i ], [ %i.qn, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i ], [ %.sroa.13.4338.us.i, %bb.bk ] ; 4 uses
  %.sroa.0244.5.us.i = phi ptr [ %.sroa.0244.4339.us.i, %bb.bm ], [ %.sroa.0244.4339.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit169.us.i ], [ %.sroa.0244.4339.us.i, %bb.bj ], [ %.sroa.0244.4339.us.i, %_ZN7msdfgenL11detectClashEPKfS1_d.exit157.thread.us.i ], [ %i.pv, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i186.us.i ], [ %.sroa.0244.4339.us.i, %bb.bk ] ; 7 uses
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %exitcond386.not.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count.i
  br i1 %exitcond386.not.i, label %._crit_edge.us352.i, label %bb.ai, !llvm.loop !135

._crit_edge.us352.i:                              ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE9push_backEOS1_.exit189.us.i
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next388.i, %wide.trip.count380.i
  br i1 %exitcond391.not.i, label %.preheader.i, label %.preheader277.us.i, !llvm.loop !136

.loopexit.split.us.i:                             ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i175.us.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i
  %.sroa.0219.0336.i = phi ptr [ %.sroa.0244.2.us.i, %.lr.ph.i ], [ %i.rl, %bb.bp ] ; 3 uses
  %i.qp = load i32, ptr %.sroa.0219.0336.i, align 4, !tbaa !113
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0219.0336.i, i64 4
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !115
  %i.qs = mul nsw i32 %i.qr, %i.hq
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.qt
  %i.qv = shl nsw i32 %i.qp, 2
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qw ; 4 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !89 ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qx, i64 4 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !89 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 2 uses
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !89 ; 2 uses
  %i.rd = fcmp olt float %i.ra, %i.qy
  %i.re = select i1 %i.rd, float %i.ra, float %i.qy ; 2 uses
  %i.rf = fcmp olt float %i.qy, %i.ra
  %i.rg = select i1 %i.rf, float %i.ra, float %i.qy ; 2 uses
  %i.rh = fcmp olt float %i.rc, %i.rg
  %i.ri = select i1 %i.rh, float %i.rc, float %i.rg ; 2 uses
  %i.rj = fcmp olt float %i.re, %i.ri
  %i.rk = select i1 %i.rj, float %i.ri, float %i.re ; 3 uses
  store float %i.rk, ptr %i.qx, align 4, !tbaa !89
  store float %i.rk, ptr %i.qz, align 4, !tbaa !89
  store float %i.rk, ptr %i.rb, align 4, !tbaa !89
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0219.0336.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.rl, %.sroa.13.2.us.i
  br i1 %.not.i, label %.preheader277.us.i.preheader, label %bb.bp, !llvm.loop !137

.preheader.i:                                     ; preds = %._crit_edge.us352.i
  %.not274362.i = icmp eq ptr %.sroa.0244.5.us.i, %.sroa.13.5.us.i
  br i1 %.not274362.i, label %._crit_edge.i, label %.lr.ph364.i

.lr.ph364.i:                                      ; preds = %.preheader.i
  %i.rm = load ptr, ptr %0, align 8, !tbaa !57
  %i.rn = load i32, ptr %i.g, align 8, !tbaa !118
  br label %bb.br

.split.us354.i:                                   ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc187.i unwind label %.loopexit.split-lp.i

.noexc187.i:                                      ; preds = %.split.us354.i
  unreachable

.loopexit.split-lp.i:                             ; preds = %.split.us354.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

._crit_edge.i:                                    ; preds = %bb.br, %.preheader.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0244.5.us.i, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i
  %i.ro = ptrtoint ptr %.sroa.25.5.us.i to i64
  %i.rp = ptrtoint ptr %.sroa.0244.5.us.i to i64
  %i.rq = sub i64 %i.ro, %i.rp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.5.us.i, i64 noundef %i.rq) #10
  br label %_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit

bb.br:                                            ; preds = %bb.br, %.lr.ph364.i
  %.sroa.0193.0363.i = phi ptr [ %.sroa.0244.5.us.i, %.lr.ph364.i ], [ %i.sn, %bb.br ] ; 3 uses
  %i.rr = load i32, ptr %.sroa.0193.0363.i, align 4, !tbaa !113
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0193.0363.i, i64 4
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !115
  %i.ru = mul nsw i32 %i.rt, %i.rn
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.rv
  %i.rx = shl nsw i32 %i.rr, 2
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.ry ; 4 uses
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !89 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 4 ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !89 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 8 ; 2 uses
  %i.se = load float, ptr %i.sd, align 4, !tbaa !89 ; 2 uses
  %i.sf = fcmp olt float %i.sc, %i.sa
  %i.sg = select i1 %i.sf, float %i.sc, float %i.sa ; 2 uses
  %i.sh = fcmp olt float %i.sa, %i.sc
  %i.si = select i1 %i.sh, float %i.sc, float %i.sa ; 2 uses
  %i.sj = fcmp olt float %i.se, %i.si
  %i.sk = select i1 %i.sj, float %i.se, float %i.si ; 2 uses
  %i.sl = fcmp olt float %i.sg, %i.sk
  %i.sm = select i1 %i.sl, float %i.sk, float %i.sg ; 3 uses
  store float %i.sm, ptr %i.rz, align 4, !tbaa !89
  store float %i.sm, ptr %i.sb, align 4, !tbaa !89
  store float %i.sm, ptr %i.sd, align 4, !tbaa !89
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0193.0363.i, i64 8 ; 2 uses
  %.not274.i = icmp eq ptr %i.sn, %.sroa.13.5.us.i
  br i1 %.not274.i, label %._crit_edge.i, label %bb.br, !llvm.loop !138

bb.bs:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.split.us.i, %.loopexit.split-lp281.i, %.loopexit280.split.us.i
  %.sroa.25.6.i = phi ptr [ %.sroa.13.1315.us.i, %.loopexit.split-lp281.i ], [ %.sroa.13.1315.us.i, %.loopexit280.split.us.i ], [ %.sroa.13.4338.us.i, %.loopexit.split.us.i ], [ %.sroa.13.4338.us.i, %.loopexit.split-lp.i ]
  %.sroa.0244.6.i = phi ptr [ %.sroa.0244.1316.us.i, %.loopexit.split-lp281.i ], [ %.sroa.0244.1316.us.i, %.loopexit280.split.us.i ], [ %.sroa.0244.4339.us.i, %.loopexit.split.us.i ], [ %.sroa.0244.4339.us.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp283.i, %.loopexit.split-lp281.i ], [ %lpad.loopexit282.us.i, %.loopexit280.split.us.i ], [ %lpad.loopexit.us.i, %.loopexit.split.us.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.not.i.i.i190.i = icmp eq ptr %.sroa.0244.6.i, null
  br i1 %.not.i.i.i190.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit191.i, label %.thread.i

.thread.i:                                        ; preds = %bb.bs
  %i.so = ptrtoint ptr %.sroa.25.6.i to i64
  %i.sp = ptrtoint ptr %.sroa.0244.6.i to i64
  %i.sq = sub i64 %i.so, %i.sp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.6.i, i64 noundef %i.sq) #10
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit191.i

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit191.i:   ; preds = %.thread.i, %bb.bs
  resume { ptr, i32 } %.pn.i

_ZN7msdfgenL31msdfErrorCorrectionInner_legacyILi4EEEvRKNS_13BitmapSectionIfXT_EEERKNS_7Vector2E.exit: ; preds = %bb.a, %.preheader279.lr.ph.i, %._crit_edge.i, %bb.bq
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7msdfgen19MSDFErrorCorrectionC1ERKNS_13BitmapSectionIhLi1EEERKNS_17SDFTransformationE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection20setMinDeviationRatioEd(ptr noundef nonnull align 8 dereferenceable(88), double noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection18setMinImproveRatioEd(ptr noundef nonnull align 8 dereferenceable(88), double noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection14protectCornersERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection12protectEdgesILi3EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsILi3EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef byval(%"struct.msdfgen::BitmapConstSection") align 8, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi3EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef byval(%"struct.msdfgen::BitmapConstSection") align 8, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi3EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef byval(%"struct.msdfgen::BitmapSection") align 8) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

declare void @_ZN7msdfgen19MSDFErrorCorrection12protectEdgesILi4EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsILi4EEEvRKNS_18BitmapConstSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_26OverlappingContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef byval(%"struct.msdfgen::BitmapConstSection.2") align 8, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZN7msdfgen19MSDFErrorCorrection10findErrorsINS_21SimpleContourCombinerELi4EEEvNS_18BitmapConstSectionIfXT0_EEERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef byval(%"struct.msdfgen::BitmapConstSection.2") align 8, ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

declare void @_ZNK7msdfgen19MSDFErrorCorrection5applyILi4EEEvNS_13BitmapSectionIfXT_EEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef byval(%"struct.msdfgen::BitmapSection.0") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 8}
!9 = !{!"_ZTSN7msdfgen19MSDFGeneratorConfigE", !10, i64 0, !12, i64 8}
!10 = !{!"_ZTSN7msdfgen15GeneratorConfigE", !11, i64 0}
!11 = !{!"bool", !6, i64 0}
!12 = !{!"_ZTSN7msdfgen21ErrorCorrectionConfigE", !13, i64 0, !14, i64 4, !15, i64 8, !15, i64 16, !16, i64 24}
!13 = !{!"_ZTSN7msdfgen21ErrorCorrectionConfig4ModeE", !6, i64 0}
!14 = !{!"_ZTSN7msdfgen21ErrorCorrectionConfig17DistanceCheckModeE", !6, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!9, !16, i64 32}
!19 = !{!20, !5, i64 8}
!20 = !{!"_ZTSN7msdfgen13BitmapSectionIfLi3EEE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !22, i64 20}
!21 = !{!"p1 float", !17, i64 0}
!22 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !6, i64 0}
!23 = !{!20, !5, i64 12}
!24 = !{!5, !5, i64 0}
!25 = !{!26, !5, i64 16}
!26 = !{!"_ZTSN7msdfgen13BitmapSectionIhLi1EEE", !16, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !22, i64 20}
!27 = !{!26, !22, i64 20}
!28 = !{!26, !16, i64 0}
!29 = !{!9, !15, i64 16}
!30 = !{!9, !15, i64 24}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv: argument 0"}
!33 = distinct !{!33, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv"}
!34 = !{!20, !21, i64 0}
!35 = !{!36, !21, i64 0}
!36 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi3EEE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !22, i64 20}
!37 = !{!6, !6, i64 0}
!38 = !{!9, !14, i64 12}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv: argument 0"}
!41 = distinct !{!41, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv"}
!42 = !{!10, !11, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv: argument 0"}
!47 = distinct !{!47, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv: argument 0"}
!50 = distinct !{!50, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv"}
!51 = !{!52, !5, i64 8}
!52 = !{!"_ZTSN7msdfgen13BitmapSectionIfLi4EEE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !22, i64 20}
!53 = !{!52, !5, i64 12}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv: argument 0"}
!56 = distinct !{!56, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv"}
!57 = !{!52, !21, i64 0}
!58 = !{!59, !21, i64 0}
!59 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi4EEE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !22, i64 20}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv: argument 0"}
!62 = distinct !{!62, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv: argument 0"}
!65 = distinct !{!65, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv: argument 0"}
!68 = distinct !{!68, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv"}
!69 = !{i64 0, i64 8, !70, i64 8, i64 8, !70, i64 16, i64 8, !70, i64 24, i64 8, !70}
!70 = !{!15, !15, i64 0}
!71 = !{i64 0, i64 8, !70, i64 8, i64 8, !70}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN7msdfgen6BitmapIhLi1EEcvNS_13BitmapSectionIhLi1EEEEv: argument 0"}
!74 = distinct !{!74, !"_ZN7msdfgen6BitmapIhLi1EEcvNS_13BitmapSectionIhLi1EEEEv"}
!75 = !{!26, !5, i64 8}
!76 = !{!26, !5, i64 12}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv: argument 0"}
!79 = distinct !{!79, !"_ZNK7msdfgen13BitmapSectionIfLi3EEcvNS_18BitmapConstSectionIfLi3EEEEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN7msdfgen6BitmapIhLi1EEcvNS_13BitmapSectionIhLi1EEEEv: argument 0"}
!82 = distinct !{!82, !"_ZN7msdfgen6BitmapIhLi1EEcvNS_13BitmapSectionIhLi1EEEEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv: argument 0"}
!85 = distinct !{!85, !"_ZNK7msdfgen13BitmapSectionIfLi4EEcvNS_18BitmapConstSectionIfLi4EEEEv"}
!86 = !{!20, !5, i64 16}
!87 = !{!88, !15, i64 0}
!88 = !{!"_ZTSN7msdfgen7Vector2E", !15, i64 0, !15, i64 8}
!89 = !{!90, !90, i64 0}
!90 = !{!"float", !6, i64 0}
!91 = !{!88, !15, i64 8}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!95 = !{!96}
!96 = distinct !{!96, !94, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!97 = distinct !{!97, !98, !99, !100}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !98, !99}
!102 = distinct !{!102, !98}
!103 = distinct !{!103, !98}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!106 = distinct !{!106, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!109 = distinct !{!109, !98, !99, !100}
!110 = distinct !{!110, !98, !99}
!111 = distinct !{!111, !98}
!112 = distinct !{!112, !98}
!113 = !{!114, !5, i64 0}
!114 = !{!"_ZTSSt4pairIiiE", !5, i64 0, !5, i64 4}
!115 = !{!114, !5, i64 4}
!116 = distinct !{!116, !98}
!117 = distinct !{!117, !98}
!118 = !{!52, !5, i64 16}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!121 = distinct !{!121, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!122 = !{!123}
!123 = distinct !{!123, !121, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!124 = distinct !{!124, !98, !99, !100}
!125 = distinct !{!125, !98, !99}
!126 = distinct !{!126, !98}
!127 = distinct !{!127, !98}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!130 = distinct !{!130, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !98, !99, !100}
!134 = distinct !{!134, !98, !99}
!135 = distinct !{!135, !98}
!136 = distinct !{!136, !98}
!137 = distinct !{!137, !98}
!138 = distinct !{!138, !98}
end_hunk_3
