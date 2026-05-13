inline.NumInlined: 101
inline.NumDeleted: 70
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::operation::distance::GeometryLocation>, std::allocator<std::unique_ptr<geos::operation::distance::GeometryLocation>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<geos::operation::distance::GeometryLocation>, std::allocator<std::unique_ptr<geos::operation::distance::GeometryLocation>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<geos::operation::distance::GeometryLocation>, std::allocator<std::unique_ptr<geos::operation::distance::GeometryLocation>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<geos::operation::distance::GeometryLocation>, std::allocator<std::unique_ptr<geos::operation::distance::GeometryLocation>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.geos::operation::distance::ConnectedElementLocationFilter" = type { %"class.geos::geom::GeometryFilter", %"class.std::vector" }
%"class.geos::geom::GeometryFilter" = type { ptr }

$_ZN4geos9operation8distance30ConnectedElementLocationFilterD2Ev = comdat any

$_ZN4geos9operation8distance30ConnectedElementLocationFilterD0Ev = comdat any

$_ZTIN4geos4geom14GeometryFilterE = comdat any

$_ZTSN4geos4geom14GeometryFilterE = comdat any

@_ZTIN4geos4geom5PointE = external local_unnamed_addr constant ptr
@_ZTIN4geos4geom10LineStringE = external local_unnamed_addr constant ptr
@_ZTIN4geos4geom10LinearRingE = external local_unnamed_addr constant ptr
@_ZTIN4geos4geom7PolygonE = external local_unnamed_addr constant ptr
@_ZTVN4geos9operation8distance30ConnectedElementLocationFilterE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN4geos9operation8distance30ConnectedElementLocationFilterE, ptr @_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_roEPKNS_4geom8GeometryE, ptr @_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_rwEPNS_4geom8GeometryE, ptr @_ZN4geos9operation8distance30ConnectedElementLocationFilterD2Ev, ptr @_ZN4geos9operation8distance30ConnectedElementLocationFilterD0Ev] }, align 8
@_ZTIN4geos9operation8distance30ConnectedElementLocationFilterE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos9operation8distance30ConnectedElementLocationFilterE, ptr @_ZTIN4geos4geom14GeometryFilterE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos9operation8distance30ConnectedElementLocationFilterE = constant [59 x i8] c"N4geos9operation8distance30ConnectedElementLocationFilterE\00", align 1
@_ZTIN4geos4geom14GeometryFilterE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos4geom14GeometryFilterE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4geom14GeometryFilterE = linkonce_odr constant [29 x i8] c"N4geos4geom14GeometryFilterE\00", comdat, align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation8distance30ConnectedElementLocationFilter12getLocationsEPKNS_4geom8GeometryE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::operation::distance::ConnectedElementLocationFilter", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9operation8distance30ConnectedElementLocationFilterE, i64 16), ptr %2, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2)
          to label %_ZN4geos9operation8distance30ConnectedElementLocationFilterD2Ev.exit unwind label %bb.b

_ZN4geos9operation8distance30ConnectedElementLocationFilterD2Ev.exit: ; preds = %bb.a
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !9
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  store ptr %i.h, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4geos9operation8distance30ConnectedElementLocationFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation8distance30ConnectedElementLocationFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9operation8distance30ConnectedElementLocationFilterE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4geos9operation8distance16GeometryLocationEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4geos9operation8distance16GeometryLocationEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #13
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos9operation8distance16GeometryLocationEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #13
  br label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_roEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 12 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom5PointE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.i, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread24, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.m = load i8, ptr %i.j, align 1, !tbaa !23
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.o) #12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread24.thread

_ZNKSt9type_infoeqERKS_.exit.thread24:            ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LineStringE, i64 8), align 8, !tbaa !20
  %i.s = icmp eq ptr %i.i, %i.r
  br i1 %i.s, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit12.thread27

_ZNKSt9type_infoeqERKS_.exit.thread24.thread:     ; preds = %_ZNKSt9type_infoeqERKS_.exit
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LineStringE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.u = icmp eq ptr %i.i, %i.t
  br i1 %i.u, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit12

_ZNKSt9type_infoeqERKS_.exit12:                   ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread24.thread
  %i.v = load i8, ptr %i.t, align 1, !tbaa !23
  %i.w = icmp eq i8 %i.v, 42
  %.idx.i.i10 = zext i1 %i.w to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i10
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.x) #12
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread

_ZNKSt9type_infoeqERKS_.exit12.thread27:          ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread24
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LinearRingE, i64 8), align 8, !tbaa !20
  %i.ab = icmp eq ptr %i.i, %i.aa
  br i1 %i.ab, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit16.thread30

_ZNKSt9type_infoeqERKS_.exit12.thread27.thread:   ; preds = %_ZNKSt9type_infoeqERKS_.exit12
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LinearRingE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.ad = icmp eq ptr %i.i, %i.ac
  br i1 %i.ad, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit16

_ZNKSt9type_infoeqERKS_.exit16:                   ; preds = %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !23
  %i.af = icmp eq i8 %i.ae, 42
  %.idx.i.i14 = zext i1 %i.af to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i14
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.ag) #12
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread

_ZNKSt9type_infoeqERKS_.exit16.thread30:          ; preds = %_ZNKSt9type_infoeqERKS_.exit12.thread27
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom7PolygonE, i64 8), align 8, !tbaa !20
  %i.ak = icmp eq ptr %i.i, %i.aj
  br i1 %i.ak, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

_ZNKSt9type_infoeqERKS_.exit16.thread30.thread:   ; preds = %_ZNKSt9type_infoeqERKS_.exit16
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom7PolygonE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.am = icmp eq ptr %i.i, %i.al
  br i1 %i.am, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit20

_ZNKSt9type_infoeqERKS_.exit20:                   ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread
  %i.an = load i8, ptr %i.al, align 1, !tbaa !23
  %i.ao = icmp eq i8 %i.an, 42
  %.idx.i.i18 = zext i1 %i.ao to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i18
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.ap) #12
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread, %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread, %_ZNKSt9type_infoeqERKS_.exit.thread24.thread, %_ZNKSt9type_infoeqERKS_.exit16.thread30, %_ZNKSt9type_infoeqERKS_.exit12.thread27, %_ZNKSt9type_infoeqERKS_.exit.thread24, %bb.b, %_ZNKSt9type_infoeqERKS_.exit20, %_ZNKSt9type_infoeqERKS_.exit16, %_ZNKSt9type_infoeqERKS_.exit12, %_ZNKSt9type_infoeqERKS_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #14 ; 4 uses
  %2 = load ptr, ptr %1, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  invoke void @_ZN4geos9operation8distance16GeometryLocationC1EPKNS_4geom8GeometryEmRKNS3_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12
  %.not.i21 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !14 ; 12 uses
  %i.bd = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #14 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store ptr %i.at, ptr %i.bo, align 8, !tbaa !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.bp = add i64 %i.bd, -8
  %i.bq = sub i64 %i.bp, %i.be                    ; 3 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bt = add i64 %i.bd, -8
  %i.bu = sub i64 %i.bt, %i.be
  %i.bv = and i64 %i.bu, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bn, i64 %i.bw
  %scevgep44 = getelementptr i8, ptr %i.bc, i64 %i.bw
  %bound0 = icmp ult ptr %i.bn, %scevgep44
  %bound1 = icmp ult ptr %i.bc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i64 %i.bq, 120
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bs, 12
  %n.vec = and i64 %i.bs, 4611686018427387888     ; 4 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bn, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.ca ; 4 uses
  %next.gep46 = getelementptr i8, ptr %i.bc, i64 %i.ca ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.cb = getelementptr i8, ptr %next.gep46, i64 32
  %i.cc = getelementptr i8, ptr %next.gep46, i64 64
  %i.cd = getelementptr i8, ptr %next.gep46, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep46, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  %wide.load47 = load <4 x i64>, ptr %i.cb, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  %wide.load48 = load <4 x i64>, ptr %i.cc, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  %wide.load49 = load <4 x i64>, ptr %i.cd, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  %i.ce = getelementptr i8, ptr %next.gep, i64 32
  %i.cf = getelementptr i8, ptr %next.gep, i64 64
  %i.cg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !16, !alias.scope !32, !noalias !29
  store <4 x i64> %wide.load47, ptr %i.ce, align 8, !tbaa !16, !alias.scope !32, !noalias !29
  store <4 x i64> %wide.load48, ptr %i.cf, align 8, !tbaa !16, !alias.scope !32, !noalias !29
  store <4 x i64> %wide.load49, ptr %i.cg, align 8, !tbaa !16, !alias.scope !32, !noalias !29
  %i.ch = getelementptr i8, ptr %next.gep46, i64 32
  %i.ci = getelementptr i8, ptr %next.gep46, i64 64
  %i.cj = getelementptr i8, ptr %next.gep46, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  store <4 x ptr> splat (ptr null), ptr %i.ch, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  store <4 x ptr> splat (ptr null), ptr %i.ci, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  store <4 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bs, 4611686018427387900   ; 3 uses
  %i.cl = shl i64 %n.vec52, 3                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bn, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bc, i64 %i.cl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.co = shl i64 %index53, 3                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.bn, i64 %i.co
  %next.gep55 = getelementptr i8, ptr %i.bc, i64 %i.co ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %wide.load56 = load <4 x i64>, ptr %next.gep55, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  store <4 x i64> %wide.load56, ptr %next.gep54, align 8, !tbaa !16, !alias.scope !32, !noalias !29
  store <4 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !16, !alias.scope !29, !noalias !24
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.bs, %n.vec52
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %iter.check ], [ %i.bn, %vector.memcheck ], [ %i.by, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bc, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.cq = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !27, !noalias !24
  store i64 %i.cq, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !24, !noalias !27
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !27, !noalias !24
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.ay
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bn, %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cm, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bc) #13
  br label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.bn, ptr %i.as, align 8, !tbaa !14
  store ptr %i.ct, ptr %i.ax, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.cu, ptr %i.az, align 8, !tbaa !12
  br label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

bb.j:                                             ; preds = %bb.d, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.cv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #13
  resume { ptr, i32 } %i.cv

_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30, %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.f, %bb.a, %_ZNKSt9type_infoeqERKS_.exit20
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN4geos9operation8distance16GeometryLocationC1EPKNS_4geom8GeometryEmRKNS3_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation8distance30ConnectedElementLocationFilter9filter_rwEPNS_4geom8GeometryE(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.d, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 12 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom5PointE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.i, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.l, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread24, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.m = load i8, ptr %i.j, align 1, !tbaa !23
  %i.n = icmp eq i8 %i.m, 42
  %.idx.i.i = zext i1 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.o) #12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread24.thread

_ZNKSt9type_infoeqERKS_.exit.thread24:            ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LineStringE, i64 8), align 8, !tbaa !20
  %i.s = icmp eq ptr %i.i, %i.r
  br i1 %i.s, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit12.thread27

_ZNKSt9type_infoeqERKS_.exit.thread24.thread:     ; preds = %_ZNKSt9type_infoeqERKS_.exit
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LineStringE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.u = icmp eq ptr %i.i, %i.t
  br i1 %i.u, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit12

_ZNKSt9type_infoeqERKS_.exit12:                   ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread24.thread
  %i.v = load i8, ptr %i.t, align 1, !tbaa !23
  %i.w = icmp eq i8 %i.v, 42
  %.idx.i.i10 = zext i1 %i.w to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i10
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.x) #12
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread

_ZNKSt9type_infoeqERKS_.exit12.thread27:          ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread24
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LinearRingE, i64 8), align 8, !tbaa !20
  %i.ab = icmp eq ptr %i.i, %i.aa
  br i1 %i.ab, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit16.thread30

_ZNKSt9type_infoeqERKS_.exit12.thread27.thread:   ; preds = %_ZNKSt9type_infoeqERKS_.exit12
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom10LinearRingE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.ad = icmp eq ptr %i.i, %i.ac
  br i1 %i.ad, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit16

_ZNKSt9type_infoeqERKS_.exit16:                   ; preds = %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !23
  %i.af = icmp eq i8 %i.ae, 42
  %.idx.i.i14 = zext i1 %i.af to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i14
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.ag) #12
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread

_ZNKSt9type_infoeqERKS_.exit16.thread30:          ; preds = %_ZNKSt9type_infoeqERKS_.exit12.thread27
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom7PolygonE, i64 8), align 8, !tbaa !20
  %i.ak = icmp eq ptr %i.i, %i.aj
  br i1 %i.ak, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

_ZNKSt9type_infoeqERKS_.exit16.thread30.thread:   ; preds = %_ZNKSt9type_infoeqERKS_.exit16
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTIN4geos4geom7PolygonE, i64 8), align 8, !tbaa !20 ; 3 uses
  %i.am = icmp eq ptr %i.i, %i.al
  br i1 %i.am, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit20

_ZNKSt9type_infoeqERKS_.exit20:                   ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread
  %i.an = load i8, ptr %i.al, align 1, !tbaa !23
  %i.ao = icmp eq i8 %i.an, 42
  %.idx.i.i18 = zext i1 %i.ao to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i18
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.ap) #12
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30.thread, %_ZNKSt9type_infoeqERKS_.exit12.thread27.thread, %_ZNKSt9type_infoeqERKS_.exit.thread24.thread, %_ZNKSt9type_infoeqERKS_.exit16.thread30, %_ZNKSt9type_infoeqERKS_.exit12.thread27, %_ZNKSt9type_infoeqERKS_.exit.thread24, %bb.b, %_ZNKSt9type_infoeqERKS_.exit20, %_ZNKSt9type_infoeqERKS_.exit16, %_ZNKSt9type_infoeqERKS_.exit12, %_ZNKSt9type_infoeqERKS_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #14 ; 4 uses
  %2 = load ptr, ptr %1, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  invoke void @_ZN4geos9operation8distance16GeometryLocationC1EPKNS_4geom8GeometryEmRKNS3_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull %1, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !12
  %.not.i21 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !15
  br label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !14 ; 12 uses
  %i.bd = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #14 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store ptr %i.at, ptr %i.bo, align 8, !tbaa !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.bp = add i64 %i.bd, -8
  %i.bq = sub i64 %i.bp, %i.be                    ; 3 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bt = add i64 %i.bd, -8
  %i.bu = sub i64 %i.bt, %i.be
  %i.bv = and i64 %i.bu, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bn, i64 %i.bw
  %scevgep44 = getelementptr i8, ptr %i.bc, i64 %i.bw
  %bound0 = icmp ult ptr %i.bn, %scevgep44
  %bound1 = icmp ult ptr %i.bc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i64 %i.bq, 120
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bs, 12
  %n.vec = and i64 %i.bs, 4611686018427387888     ; 4 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bn, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.ca ; 4 uses
  %next.gep46 = getelementptr i8, ptr %i.bc, i64 %i.ca ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.cb = getelementptr i8, ptr %next.gep46, i64 32
  %i.cc = getelementptr i8, ptr %next.gep46, i64 64
  %i.cd = getelementptr i8, ptr %next.gep46, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep46, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  %wide.load47 = load <4 x i64>, ptr %i.cb, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  %wide.load48 = load <4 x i64>, ptr %i.cc, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  %wide.load49 = load <4 x i64>, ptr %i.cd, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  %i.ce = getelementptr i8, ptr %next.gep, i64 32
  %i.cf = getelementptr i8, ptr %next.gep, i64 64
  %i.cg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !16, !alias.scope !48, !noalias !45
  store <4 x i64> %wide.load47, ptr %i.ce, align 8, !tbaa !16, !alias.scope !48, !noalias !45
  store <4 x i64> %wide.load48, ptr %i.cf, align 8, !tbaa !16, !alias.scope !48, !noalias !45
  store <4 x i64> %wide.load49, ptr %i.cg, align 8, !tbaa !16, !alias.scope !48, !noalias !45
  %i.ch = getelementptr i8, ptr %next.gep46, i64 32
  %i.ci = getelementptr i8, ptr %next.gep46, i64 64
  %i.cj = getelementptr i8, ptr %next.gep46, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  store <4 x ptr> splat (ptr null), ptr %i.ch, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  store <4 x ptr> splat (ptr null), ptr %i.ci, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  store <4 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bs, 4611686018427387900   ; 3 uses
  %i.cl = shl i64 %n.vec52, 3                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bn, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bc, i64 %i.cl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.co = shl i64 %index53, 3                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.bn, i64 %i.co
  %next.gep55 = getelementptr i8, ptr %i.bc, i64 %i.co ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %wide.load56 = load <4 x i64>, ptr %next.gep55, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  store <4 x i64> %wide.load56, ptr %next.gep54, align 8, !tbaa !16, !alias.scope !48, !noalias !45
  store <4 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !16, !alias.scope !45, !noalias !40
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.bs, %n.vec52
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %iter.check ], [ %i.bn, %vector.memcheck ], [ %i.by, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bc, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.cq = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !43, !noalias !40
  store i64 %i.cq, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !40, !noalias !43
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !16, !alias.scope !43, !noalias !40
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.ay
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !52

_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bn, %_ZNKSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cm, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bc) #13
  br label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.bn, ptr %i.as, align 8, !tbaa !14
  store ptr %i.ct, ptr %i.ax, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.cu, ptr %i.az, align 8, !tbaa !12
  br label %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit

bb.j:                                             ; preds = %bb.d, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.cv = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #13
  resume { ptr, i32 } %i.cv

_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEEvDpOT_.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit16.thread30, %_ZNSt6vectorISt10unique_ptrIN4geos9operation8distance16GeometryLocationESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.f, %bb.a, %_ZNKSt9type_infoeqERKS_.exit20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation8distance30ConnectedElementLocationFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos9operation8distance30ConnectedElementLocationFilterE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
