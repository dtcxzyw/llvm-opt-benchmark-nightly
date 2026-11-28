Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_checker?download=true
inline.NumInlined: 141
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::message2::data_model::Key" = type { %"class.icu_78::UObject", %"class.std::optional" }
%"class.icu_78::UObject" = type { ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<icu_78::message2::data_model::Literal>::_Storage", i8 }>
%"union.std::_Optional_payload_base<icu_78::message2::data_model::Literal>::_Storage" = type { %"class.icu_78::message2::data_model::Literal" }
%"class.icu_78::message2::data_model::Literal" = type { %"class.icu_78::UObject", i8, %"class.icu_78::UnicodeString" }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::message2::Error" = type { %"class.icu_78::UObject", i32, %"class.icu_78::UnicodeString" }
%"class.icu_78::message2::TypeEnvironment" = type { ptr, %"class.icu_78::LocalPointer", %"class.icu_78::LocalPointer", %"class.icu_78::LocalPointer" }
%"class.icu_78::LocalPointer" = type { %"class.icu_78::LocalPointerBase" }
%"class.icu_78::LocalPointerBase" = type { ptr }

$_ZTIN6icu_787UMemoryE = comdat any

$_ZTSN6icu_787UMemoryE = comdat any

$_ZTVN6icu_788message25ErrorINS0_15StaticErrorTypeEEE = comdat any

$_ZTIN6icu_788message25ErrorINS0_15StaticErrorTypeEEE = comdat any

$_ZTSN6icu_788message25ErrorINS0_15StaticErrorTypeEEE = comdat any

@_ZTVN6icu_788message215TypeEnvironmentE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6icu_788message215TypeEnvironmentE, ptr @_ZN6icu_788message215TypeEnvironmentD1Ev, ptr @_ZN6icu_788message215TypeEnvironmentD0Ev] }, align 8
@_ZTIN6icu_788message215TypeEnvironmentE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_788message215TypeEnvironmentE, ptr @_ZTIN6icu_787UMemoryE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_788message215TypeEnvironmentE = constant [36 x i8] c"N6icu_788message215TypeEnvironmentE\00", align 1
@_ZTIN6icu_787UMemoryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6icu_787UMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_787UMemoryE = linkonce_odr constant [18 x i8] c"N6icu_787UMemoryE\00", comdat, align 1
@_ZTVN6icu_788message210data_model3KeyE = external constant { [5 x ptr] }, align 8
@_ZTIN6icu_787UObjectE = external constant ptr
@_ZTVN6icu_788message210data_model7LiteralE = external constant { [5 x ptr] }, align 8
@_ZTVN6icu_788message25ErrorINS0_15StaticErrorTypeEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6icu_788message25ErrorINS0_15StaticErrorTypeEEE, ptr @_ZN6icu_788message25ErrorINS0_15StaticErrorTypeEED1Ev, ptr @_ZN6icu_788message25ErrorINS0_15StaticErrorTypeEED0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv] }, comdat, align 8
@_ZTIN6icu_788message25ErrorINS0_15StaticErrorTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_788message25ErrorINS0_15StaticErrorTypeEEE, ptr @_ZTIN6icu_787UObjectE }, comdat, align 8
@_ZTSN6icu_788message25ErrorINS0_15StaticErrorTypeEEE = linkonce_odr constant [49 x i8] c"N6icu_788message25ErrorINS0_15StaticErrorTypeEEE\00", comdat, align 1
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8

@_ZN6icu_788message215TypeEnvironmentC1ER10UErrorCode = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_788message215TypeEnvironmentC2ER10UErrorCode
@_ZN6icu_788message215TypeEnvironmentD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_788message215TypeEnvironmentD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message215TypeEnvironmentC2ER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message215TypeEnvironmentE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.d = load i32, ptr %1, align 4, !tbaa !14
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #7 ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.thread.i.i unwind label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %i.h = load i32, ptr %1, align 4, !tbaa !14
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #7
  br label %.body

bb.e:                                             ; preds = %.thread.i.i
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #7, !inline_history !43
  br label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i: ; preds = %.thread.i.i
  %i.n = invoke noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_)
          to label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit unwind label %bb.f ; 0 uses

_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit: ; preds = %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i
  %.pre = load i32, ptr %1, align 4, !tbaa !14
  %i.o = icmp slt i32 %.pre, 1
  br i1 %i.o, label %bb.h, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

bb.f:                                             ; preds = %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i33, %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i23, %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.p, %bb.f, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.af, %bb.k ], [ %i.p, %bb.f ], [ %i.av, %bb.p ]
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #7, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

bb.h:                                             ; preds = %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit.thread, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit.thread: ; preds = %bb.h
  store ptr %i.f, ptr %i.a, align 8, !tbaa !18
  br label %bb.i

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit: ; preds = %bb.h
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #7, !inline_history !44
  %.pre41 = load i32, ptr %1, align 4, !tbaa !14
  %i.aa = icmp slt i32 %.pre41, 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !18
  br i1 %i.aa, label %bb.i, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

bb.i:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit.thread, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit
  %i.ab = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #7 ; 8 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.thread.i.i20 unwind label %bb.k

.thread.i.i20:                                    ; preds = %bb.j
  %i.ad = load i32, ptr %1, align 4, !tbaa !14
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i23, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ab) #7
  br label %.body

bb.l:                                             ; preds = %.thread.i.i20
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #7, !inline_history !43
  br label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i23: ; preds = %.thread.i.i20
  %i.aj = invoke noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_)
          to label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27 unwind label %bb.f ; 0 uses

_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27: ; preds = %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i23
  %.pre42 = load i32, ptr %1, align 4, !tbaa !14
  %i.ak = icmp slt i32 %.pre42, 1
  br i1 %i.ak, label %bb.m, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

bb.m:                                             ; preds = %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit28.thread, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit28

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit28.thread: ; preds = %bb.m
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !18
  br label %bb.n

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit28: ; preds = %bb.m
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.al) #7, !inline_history !44
  %.pre43 = load i32, ptr %1, align 4, !tbaa !14
  %i.aq = icmp slt i32 %.pre43, 1
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !18
  br i1 %i.aq, label %bb.n, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

bb.n:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit28.thread, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit28
  %i.ar = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #7 ; 7 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.thread.i.i30 unwind label %bb.p

.thread.i.i30:                                    ; preds = %bb.o
  %i.at = load i32, ptr %1, align 4, !tbaa !14
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i33, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ar) #7
  br label %.body

bb.q:                                             ; preds = %.thread.i.i30
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #7, !inline_history !43
  br label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i33: ; preds = %.thread.i.i30
  %i.az = invoke noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_)
          to label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit37 unwind label %bb.f ; 0 uses

_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit37: ; preds = %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i33
  %.pre44 = load i32, ptr %1, align 4, !tbaa !14
  %i.ba = icmp slt i32 %.pre44, 1
  br i1 %i.ba, label %bb.r, label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

bb.r:                                             ; preds = %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit37
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !18  ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit38, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %i.bb) #7, !inline_history !44
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit38

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit38: ; preds = %bb.r, %bb.s
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !18
  br label %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread

_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27.thread: ; preds = %bb.n, %bb.q, %bb.i, %bb.l, %bb.e, %bb.b, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit28, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit38, %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit, %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit27, %_ZN6icu_788message225createStringVectorNoAdoptER10UErrorCode.exit37, %bb.a
  ret void

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.g, %.body
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit39, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #7, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit39

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit39: ; preds = %bb.t, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit40, label %bb.u

bb.u:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit39
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #7, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit40

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit40: ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit39, %bb.u
  resume { ptr, i32 } %eh.lpad-body
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788message215TypeEnvironment5knownERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.l = icmp sgt i32 %i.k, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.m = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.l, %bb.c ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZNK6icu_788message215TypeEnvironment3getERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0)
  %i.l = icmp sgt i32 %i.k, -1
  %. = select i1 %i.l, i32 2, i32 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message215TypeEnvironment6extendERKNS_13UnicodeStringENS1_4TypeER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i64 24, i64 8
  %switch.selectcmp9 = icmp eq i32 %2, 1
  %switch.select10 = select i1 %switch.selectcmp9, i64 16, i64 %switch.select
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %switch.select10
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

declare void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message215TypeEnvironmentD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message215TypeEnvironmentE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #7, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #7, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit1

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit1: ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit1
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #7, !inline_history !0
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit2

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit2: ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit1, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message215TypeEnvironmentD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message215TypeEnvironmentD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #7
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4
end_hunk_0
