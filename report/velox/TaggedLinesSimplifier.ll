inline.NumInlined: 87
inline.NumDeleted: 77
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt10unique_ptrIN4geos8simplify16LineSegmentIndexESt14default_deleteIS2_EED2Ev = comdat any

$_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev = comdat any

$_ZN4geos5index8quadtree4RootD0Ev = comdat any

$_ZNK4geos5index8quadtree4Root13isSearchMatchERKNS_4geom8EnvelopeE = comdat any

$_ZN4geos8simplify16LineSegmentIndexD2Ev = comdat any

$_ZTVN4geos5index8quadtree4RootE = comdat any

$_ZTIN4geos5index8quadtree4RootE = comdat any

$_ZTSN4geos5index8quadtree4RootE = comdat any

@_ZTVN4geos5index8quadtree8QuadtreeE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4geos5index8quadtree4RootE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN4geos5index8quadtree4RootE, ptr @_ZN4geos5index8quadtree8NodeBaseD2Ev, ptr @_ZN4geos5index8quadtree4RootD0Ev, ptr @_ZNK4geos5index8quadtree8NodeBase26addAllItemsFromOverlappingERKNS_4geom8EnvelopeERSt6vectorIPvSaIS8_EE, ptr @_ZNK4geos5index8quadtree8NodeBase8toStringB5cxx11Ev, ptr @_ZN4geos5index8quadtree8NodeBase5visitEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE, ptr @_ZNK4geos5index8quadtree4Root13isSearchMatchERKNS_4geom8EnvelopeE] }, comdat, align 8
@_ZTIN4geos5index8quadtree4RootE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos5index8quadtree4RootE, ptr @_ZTIN4geos5index8quadtree8NodeBaseE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index8quadtree4RootE = linkonce_odr constant [28 x i8] c"N4geos5index8quadtree4RootE\00", comdat, align 1
@_ZTIN4geos5index8quadtree8NodeBaseE = external constant ptr

@_ZN4geos8simplify21TaggedLinesSimplifierC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos8simplify21TaggedLinesSimplifierC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4geos8simplify21TaggedLinesSimplifierC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, i8 0, i64 96, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree8QuadtreeE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void @_ZN4geos5index8quadtree8NodeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #9
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #10
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree4RootE, i64 16), ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #8
          to label %bb.c unwind label %bb.g       ; 8 uses

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, i8 0, i64 96, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree8QuadtreeE, i64 16), ptr %i.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  invoke void @_ZN4geos5index8quadtree8NodeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %bb.d unwind label %.body8

.body8:                                           ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #9
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #10
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree4RootE, i64 16), ptr %i.l, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store ptr %i.i, ptr %i.h, align 8, !tbaa !27
  %i.p = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #8
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !27
  %1 = load ptr, ptr %i.h, align 8, !tbaa !27
  invoke void @_ZN4geos8simplify26TaggedLineStringSimplifierC1EPNS0_16LineSegmentIndexES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.q, ptr noundef %1)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.r, align 8, !tbaa !29
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.t, %bb.h ]
  tail call void @_ZNSt10unique_ptrIN4geos8simplify16LineSegmentIndexESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.body8, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.m, %.body8 ], [ %i.s, %bb.g ]
  tail call void @_ZNSt10unique_ptrIN4geos8simplify16LineSegmentIndexESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.e, %.body ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

declare void @_ZN4geos8simplify26TaggedLineStringSimplifierC1EPNS0_16LineSegmentIndexES3_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN4geos8simplify16LineSegmentIndexESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN4geos8simplify16LineSegmentIndexEEclEPS2_.exit

_ZNKSt14default_deleteIN4geos8simplify16LineSegmentIndexEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN4geos8simplify16LineSegmentIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #9
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #10
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN4geos8simplify16LineSegmentIndexEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos8simplify21TaggedLinesSimplifier20setDistanceToleranceEd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %1, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos8simplify21TaggedLinesSimplifier8simplifyERNS0_16TaggedLineStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @_ZN4geos8simplify26TaggedLineStringSimplifier8simplifyEPNS0_16TaggedLineStringE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %1)
  ret void
}

declare void @_ZN4geos8simplify26TaggedLineStringSimplifier8simplifyEPNS0_16TaggedLineStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #10
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !46

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #10
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN4geos5index8quadtree8NodeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index8quadtree4RootD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

declare void @_ZNK4geos5index8quadtree8NodeBase26addAllItemsFromOverlappingERKNS_4geom8EnvelopeERSt6vectorIPvSaIS8_EE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZNK4geos5index8quadtree8NodeBase8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

declare void @_ZN4geos5index8quadtree8NodeBase5visitEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 1) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4geos5index8quadtree4Root13isSearchMatchERKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos8simplify16LineSegmentIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #10
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #10
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree8QuadtreeE, i64 16), ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
end_hunk_0
